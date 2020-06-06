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
	<23.916931, 34.713066, 35.133675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220747, 34.932693, 34.994179>,  <24.403036, 35.064472, 34.910480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220747, 34.932693, 34.994179>,  <23.916931, 34.713066, 35.133675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.220747, 34.932693, 34.994179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649385, -0.670939, 0.357965,
		-0.037437, -0.498357, -0.866163,
		0.759537, 0.549072, -0.348744,
		24.448608, 35.097416, 34.889557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.390268, 34.162426, 34.970261>,  <23.916931, 34.713066, 35.133675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.390268, 34.162426, 34.970261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560602, 34.517078, 35.042423>,  <24.662802, 34.729870, 35.085720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560602, 34.517078, 35.042423>,  <24.390268, 34.162426, 34.970261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560602, 34.517078, 35.042423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660312, -0.440847, 0.607982,
		0.618589, -0.139773, -0.773182,
		0.425835, 0.886633, 0.180409,
		24.688353, 34.783070, 35.096546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010014, 34.022095, 35.218647>,  <24.390268, 34.162426, 34.970261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010014, 34.022095, 35.218647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323124, 34.259544, 35.293346>,  <25.510990, 34.402016, 35.338165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323124, 34.259544, 35.293346>,  <25.010014, 34.022095, 35.218647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323124, 34.259544, 35.293346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083707, -0.196931, 0.976838,
		0.616650, -0.780276, -0.104462,
		0.782775, 0.593623, 0.186752,
		25.557957, 34.437630, 35.349373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622892, 33.667877, 35.585201>,  <25.010014, 34.022095, 35.218647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622892, 33.667877, 35.585201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690481, 34.052380, 35.672325>,  <25.731035, 34.283081, 35.724602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690481, 34.052380, 35.672325>,  <25.622892, 33.667877, 35.585201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690481, 34.052380, 35.672325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034932, -0.215013, 0.975986,
		0.985002, -0.172523, -0.002753,
		0.168972, 0.961252, 0.217814,
		25.741173, 34.340755, 35.737671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176003, 33.613361, 36.109009>,  <25.622892, 33.667877, 35.585201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176003, 33.613361, 36.109009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991440, 33.966312, 36.145927>,  <25.880703, 34.178082, 36.168079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991440, 33.966312, 36.145927>,  <26.176003, 33.613361, 36.109009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991440, 33.966312, 36.145927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017603, -0.113115, 0.993426,
		0.887014, 0.456748, 0.067724,
		-0.461406, 0.882375, 0.092295,
		25.853018, 34.231026, 36.173615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644058, 34.107944, 36.522911>,  <26.176003, 33.613361, 36.109009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644058, 34.107944, 36.522911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244816, 34.132549, 36.522266>,  <26.005270, 34.147312, 36.521877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244816, 34.132549, 36.522266>,  <26.644058, 34.107944, 36.522911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244816, 34.132549, 36.522266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012523, -0.177354, 0.984067,
		0.060245, 0.982223, 0.177788,
		-0.998105, 0.061512, -0.001616,
		25.945385, 34.151001, 36.521782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510807, 34.647430, 36.949924>,  <26.644058, 34.107944, 36.522911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510807, 34.647430, 36.949924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206680, 34.387623, 36.952663>,  <26.024204, 34.231739, 36.954308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206680, 34.387623, 36.952663>,  <26.510807, 34.647430, 36.949924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206680, 34.387623, 36.952663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238191, -0.268989, 0.933226,
		-0.604303, 0.711179, 0.359225,
		-0.760318, -0.649515, 0.006845,
		25.978584, 34.192768, 36.954716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092768, 34.803272, 37.557552>,  <26.510807, 34.647430, 36.949924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092768, 34.803272, 37.557552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024015, 34.427410, 37.439228>,  <25.982763, 34.201893, 37.368233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024015, 34.427410, 37.439228>,  <26.092768, 34.803272, 37.557552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024015, 34.427410, 37.439228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111167, -0.316860, 0.941935,
		-0.978825, 0.129018, 0.158921,
		-0.171882, -0.939656, -0.295808,
		25.972450, 34.145512, 37.350487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748209, 34.503845, 38.101681>,  <26.092768, 34.803272, 37.557552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748209, 34.503845, 38.101681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867016, 34.180630, 37.898170>,  <25.938299, 33.986702, 37.776062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867016, 34.180630, 37.898170>,  <25.748209, 34.503845, 38.101681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867016, 34.180630, 37.898170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009902, -0.535403, 0.844538,
		-0.954821, -0.245803, -0.167025,
		0.297016, -0.808037, -0.508781,
		25.956121, 33.938217, 37.745537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255957, 33.869789, 38.245377>,  <25.748209, 34.503845, 38.101681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255957, 33.869789, 38.245377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629658, 33.758892, 38.155659>,  <25.853878, 33.692352, 38.101830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629658, 33.758892, 38.155659>,  <25.255957, 33.869789, 38.245377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629658, 33.758892, 38.155659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021998, -0.582954, 0.812207,
		-0.355930, -0.763741, -0.538529,
		0.934254, -0.277243, -0.224292,
		25.909933, 33.675720, 38.088371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288568, 33.170837, 38.352108>,  <25.255957, 33.869789, 38.245377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288568, 33.170837, 38.352108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671307, 33.286949, 38.357552>,  <25.900949, 33.356617, 38.360817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671307, 33.286949, 38.357552>,  <25.288568, 33.170837, 38.352108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671307, 33.286949, 38.357552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100827, -0.375551, 0.921301,
		0.272545, -0.880170, -0.388612,
		0.956846, 0.290278, 0.013609,
		25.958361, 33.374031, 38.361633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868668, 32.596161, 38.356216>,  <25.288568, 33.170837, 38.352108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868668, 32.596161, 38.356216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948332, 32.946033, 38.532974>,  <25.996130, 33.155956, 38.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948332, 32.946033, 38.532974>,  <25.868668, 32.596161, 38.356216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948332, 32.946033, 38.532974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104415, -0.467300, 0.877911,
		0.974388, -0.128706, -0.184398,
		0.199161, 0.874680, 0.441893,
		26.008080, 33.208439, 38.665543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553543, 32.625488, 38.696354>,  <25.868668, 32.596161, 38.356216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553543, 32.625488, 38.696354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294571, 32.875576, 38.870682>,  <26.139187, 33.025627, 38.975277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294571, 32.875576, 38.870682>,  <26.553543, 32.625488, 38.696354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294571, 32.875576, 38.870682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042549, -0.541299, 0.839753,
		0.760936, 0.562225, 0.323851,
		-0.647430, 0.625219, 0.435816,
		26.100342, 33.063141, 39.001427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811356, 32.821491, 39.321075>,  <26.553543, 32.625488, 38.696354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811356, 32.821491, 39.321075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414824, 32.819565, 39.268555>,  <26.176905, 32.818409, 39.237041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414824, 32.819565, 39.268555>,  <26.811356, 32.821491, 39.321075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414824, 32.819565, 39.268555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084681, -0.740684, 0.666496,
		-0.100467, 0.671837, 0.733854,
		-0.991330, -0.004817, -0.131306,
		26.117424, 32.818119, 39.229164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794149, 33.573498, 39.533745>,  <26.811356, 32.821491, 39.321075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794149, 33.573498, 39.533745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726889, 33.682659, 39.912636>,  <26.686533, 33.748158, 40.139973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726889, 33.682659, 39.912636>,  <26.794149, 33.573498, 39.533745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726889, 33.682659, 39.912636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445431, 0.836183, -0.319983,
		-0.879384, -0.475732, -0.019046,
		-0.168152, 0.272904, 0.947232,
		26.676443, 33.764530, 40.196804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116983, 33.726864, 38.933346>,  <26.794149, 33.573498, 39.533745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116983, 33.726864, 38.933346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829254, 33.474834, 38.816330>,  <26.656616, 33.323616, 38.746120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829254, 33.474834, 38.816330>,  <27.116983, 33.726864, 38.933346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829254, 33.474834, 38.816330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236613, 0.618158, -0.749597,
		0.653143, -0.469980, -0.593737,
		-0.719319, -0.630079, -0.292542,
		26.613457, 33.285812, 38.728569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231829, 33.544197, 38.237610>,  <27.116983, 33.726864, 38.933346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231829, 33.544197, 38.237610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838423, 33.478683, 38.268272>,  <26.602379, 33.439373, 38.286671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838423, 33.478683, 38.268272>,  <27.231829, 33.544197, 38.237610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838423, 33.478683, 38.268272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133982, 0.375255, -0.917187,
		0.121457, -0.912336, -0.391012,
		-0.983513, -0.163787, 0.076659,
		26.543369, 33.429546, 38.291271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026472, 33.324684, 37.531860>,  <27.231829, 33.544197, 38.237610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026472, 33.324684, 37.531860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678846, 33.417309, 37.706722>,  <26.470270, 33.472885, 37.811638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678846, 33.417309, 37.706722>,  <27.026472, 33.324684, 37.531860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678846, 33.417309, 37.706722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367198, 0.290202, -0.883713,
		-0.331496, -0.928527, -0.167176,
		-0.869066, 0.231561, 0.437153,
		26.418127, 33.486778, 37.837868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589796, 33.090446, 37.063778>,  <27.026472, 33.324684, 37.531860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589796, 33.090446, 37.063778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358696, 33.334408, 37.280746>,  <26.220036, 33.480785, 37.410927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358696, 33.334408, 37.280746>,  <26.589796, 33.090446, 37.063778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358696, 33.334408, 37.280746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337259, 0.426787, -0.839112,
		-0.743276, -0.667735, -0.040882,
		-0.577753, 0.609904, 0.542420,
		26.185369, 33.517380, 37.443474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948063, 32.953175, 36.861599>,  <26.589796, 33.090446, 37.063778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948063, 32.953175, 36.861599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955776, 33.324249, 37.010746>,  <25.960403, 33.546894, 37.100235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955776, 33.324249, 37.010746>,  <25.948063, 32.953175, 36.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955776, 33.324249, 37.010746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458365, 0.339641, -0.821307,
		-0.888555, -0.155075, 0.431767,
		0.019282, 0.927683, 0.372871,
		25.961561, 33.602554, 37.122608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224710, 33.195881, 36.804729>,  <25.948063, 32.953175, 36.861599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224710, 33.195881, 36.804729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487478, 33.496906, 36.823086>,  <25.645140, 33.677521, 36.834099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487478, 33.496906, 36.823086>,  <25.224710, 33.195881, 36.804729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487478, 33.496906, 36.823086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412462, 0.409658, -0.813668,
		-0.631136, 0.515586, 0.579515,
		0.656919, 0.752563, 0.045890,
		25.684553, 33.722675, 36.836853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804846, 33.735661, 36.842121>,  <25.224710, 33.195881, 36.804729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804846, 33.735661, 36.842121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170572, 33.831539, 36.711540>,  <25.390009, 33.889065, 36.633190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170572, 33.831539, 36.711540>,  <24.804846, 33.735661, 36.842121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170572, 33.831539, 36.711540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399728, 0.404436, -0.822587,
		-0.065137, 0.882598, 0.465594,
		0.914316, 0.239692, -0.326456,
		25.444868, 33.903446, 36.613602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706450, 34.409031, 36.421413>,  <24.804846, 33.735661, 36.842121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706450, 34.409031, 36.421413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043737, 34.258022, 36.268333>,  <25.246111, 34.167419, 36.176483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043737, 34.258022, 36.268333>,  <24.706450, 34.409031, 36.421413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043737, 34.258022, 36.268333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126970, 0.551904, -0.824185,
		0.522359, 0.743561, 0.417443,
		0.843220, -0.377517, -0.382702,
		25.296703, 34.144768, 36.153522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068460, 35.066536, 36.749958>,  <24.706450, 34.409031, 36.421413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068460, 35.066536, 36.749958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407358, 34.861206, 36.695293>,  <25.610697, 34.738007, 36.662495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407358, 34.861206, 36.695293>,  <25.068460, 35.066536, 36.749958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407358, 34.861206, 36.695293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029154, 0.211942, -0.976847,
		0.530403, 0.831612, 0.164601,
		0.847244, -0.513324, -0.136659,
		25.661531, 34.707211, 36.654297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493183, 35.512737, 36.289932>,  <25.068460, 35.066536, 36.749958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493183, 35.512737, 36.289932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610128, 35.131943, 36.253613>,  <25.680296, 34.903465, 36.231823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610128, 35.131943, 36.253613>,  <25.493183, 35.512737, 36.289932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610128, 35.131943, 36.253613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057808, 0.112363, -0.991984,
		0.954559, 0.284771, 0.087884,
		0.292363, -0.951988, -0.090795,
		25.697838, 34.846348, 36.226376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110561, 35.545620, 35.954384>,  <25.493183, 35.512737, 36.289932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110561, 35.545620, 35.954384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994308, 35.167850, 35.892937>,  <25.924557, 34.941189, 35.856068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994308, 35.167850, 35.892937>,  <26.110561, 35.545620, 35.954384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994308, 35.167850, 35.892937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033933, 0.150272, -0.988062,
		0.956233, -0.292374, -0.011626,
		-0.290631, -0.944423, -0.153616,
		25.907120, 34.884525, 35.846851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535437, 35.335487, 35.437649>,  <26.110561, 35.545620, 35.954384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535437, 35.335487, 35.437649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233810, 35.074192, 35.410328>,  <26.052835, 34.917416, 35.393936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233810, 35.074192, 35.410328>,  <26.535437, 35.335487, 35.437649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233810, 35.074192, 35.410328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022175, 0.078607, -0.996659,
		0.656427, -0.753059, -0.044789,
		-0.754064, -0.653240, -0.068299,
		26.007591, 34.878220, 35.389839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813026, 34.806976, 35.012756>,  <26.535437, 35.335487, 35.437649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813026, 34.806976, 35.012756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414682, 34.842289, 35.004089>,  <26.175676, 34.863476, 34.998890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414682, 34.842289, 35.004089>,  <26.813026, 34.806976, 35.012756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414682, 34.842289, 35.004089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022656, 0.010183, -0.999691,
		-0.088037, -0.996043, -0.012141,
		-0.995859, 0.088284, -0.021669,
		26.115925, 34.868774, 34.997589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325329, 34.392456, 34.568832>,  <26.813026, 34.806976, 35.012756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325329, 34.392456, 34.568832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973196, 34.216091, 34.498844>,  <26.761917, 34.110271, 34.456852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973196, 34.216091, 34.498844>,  <27.325329, 34.392456, 34.568832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973196, 34.216091, 34.498844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333894, -0.837964, 0.431660,
		-0.336944, 0.321582, 0.884904,
		-0.880332, -0.440910, -0.174972,
		26.709097, 34.083817, 34.446354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061216, 34.061157, 35.255806>,  <27.325329, 34.392456, 34.568832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061216, 34.061157, 35.255806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922863, 33.878262, 34.928074>,  <26.839851, 33.768524, 34.731434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922863, 33.878262, 34.928074>,  <27.061216, 34.061157, 35.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922863, 33.878262, 34.928074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297298, -0.881640, 0.366503,
		-0.889933, -0.116818, 0.440878,
		-0.345882, -0.457235, -0.819330,
		26.819099, 33.741093, 34.682274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655891, 33.482452, 35.407867>,  <27.061216, 34.061157, 35.255806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655891, 33.482452, 35.407867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848970, 33.439560, 35.060188>,  <26.964819, 33.413822, 34.851582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848970, 33.439560, 35.060188>,  <26.655891, 33.482452, 35.407867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848970, 33.439560, 35.060188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432856, -0.833568, 0.343220,
		-0.761339, -0.541909, -0.355947,
		0.482700, -0.107233, -0.869197,
		26.993780, 33.407391, 34.799431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462244, 32.882504, 35.129303>,  <26.655891, 33.482452, 35.407867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462244, 32.882504, 35.129303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850801, 32.957577, 35.071102>,  <27.083937, 33.002621, 35.036182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850801, 32.957577, 35.071102>,  <26.462244, 32.882504, 35.129303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850801, 32.957577, 35.071102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227149, -0.913041, 0.338763,
		-0.069266, -0.362122, -0.929554,
		0.971394, 0.187682, -0.145498,
		27.142220, 33.013882, 35.027454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644535, 32.232555, 34.834461>,  <26.462244, 32.882504, 35.129303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644535, 32.232555, 34.834461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970291, 32.419724, 34.971760>,  <27.165745, 32.532024, 35.054138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970291, 32.419724, 34.971760>,  <26.644535, 32.232555, 34.834461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970291, 32.419724, 34.971760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383023, -0.877756, 0.287817,
		0.435960, -0.102926, -0.894061,
		0.814391, 0.467923, 0.343243,
		27.214609, 32.560101, 35.074734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281651, 31.984570, 34.500134>,  <26.644535, 32.232555, 34.834461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281651, 31.984570, 34.500134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379028, 32.130764, 34.859501>,  <27.437456, 32.218479, 35.075123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379028, 32.130764, 34.859501>,  <27.281651, 31.984570, 34.500134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379028, 32.130764, 34.859501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624919, -0.767501, 0.142892,
		0.741762, 0.526652, -0.415244,
		0.243445, 0.365485, 0.898418,
		27.452063, 32.240410, 35.129025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953274, 31.908564, 34.578247>,  <27.281651, 31.984570, 34.500134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953274, 31.908564, 34.578247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807394, 31.895546, 34.950470>,  <27.719866, 31.887735, 35.173805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807394, 31.895546, 34.950470>,  <27.953274, 31.908564, 34.578247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807394, 31.895546, 34.950470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670548, -0.702576, 0.238227,
		0.646033, 0.710864, 0.278054,
		-0.364701, -0.032546, 0.930556,
		27.697983, 31.885782, 35.229637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663002, 32.081028, 34.833408>,  <27.953274, 31.908564, 34.578247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663002, 32.081028, 34.833408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455740, 31.943171, 35.146519>,  <28.331383, 31.860455, 35.334385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455740, 31.943171, 35.146519>,  <28.663002, 32.081028, 34.833408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455740, 31.943171, 35.146519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695261, -0.702757, 0.150812,
		0.498122, 0.622375, 0.603758,
		-0.518157, -0.344647, 0.782772,
		28.300293, 31.839777, 35.381351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135645, 32.018208, 35.378872>,  <28.663002, 32.081028, 34.833408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135645, 32.018208, 35.378872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824854, 31.786633, 35.477779>,  <28.638380, 31.647688, 35.537125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824854, 31.786633, 35.477779>,  <29.135645, 32.018208, 35.378872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824854, 31.786633, 35.477779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607613, -0.792394, 0.054021,
		0.164659, 0.192217, 0.967440,
		-0.776977, -0.578934, 0.247268,
		28.591761, 31.612953, 35.551960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409306, 31.671097, 35.935547>,  <29.135645, 32.018208, 35.378872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409306, 31.671097, 35.935547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093819, 31.469519, 35.794712>,  <28.904528, 31.348572, 35.710209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093819, 31.469519, 35.794712>,  <29.409306, 31.671097, 35.935547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093819, 31.469519, 35.794712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526243, -0.849525, 0.037084,
		-0.317798, -0.156037, 0.935231,
		-0.788715, -0.503944, -0.352091,
		28.857204, 31.318335, 35.689083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056013, 31.111950, 36.462822>,  <29.409306, 31.671097, 35.935547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056013, 31.111950, 36.462822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031309, 31.045334, 36.069183>,  <29.016487, 31.005363, 35.833000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031309, 31.045334, 36.069183>,  <29.056013, 31.111950, 36.462822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031309, 31.045334, 36.069183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597373, -0.796048, 0.097226,
		-0.799582, -0.581869, 0.148652,
		-0.061761, -0.166541, -0.984098,
		29.012781, 30.995371, 35.773952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986948, 30.441406, 36.266651>,  <29.056013, 31.111950, 36.462822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986948, 30.441406, 36.266651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147329, 30.587080, 35.930412>,  <29.243559, 30.674484, 35.728668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147329, 30.587080, 35.930412>,  <28.986948, 30.441406, 36.266651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147329, 30.587080, 35.930412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497233, -0.857176, -0.134196,
		-0.769413, -0.364167, -0.524773,
		0.400953, 0.364187, -0.840598,
		29.267614, 30.696337, 35.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710360, 30.016823, 35.626507>,  <28.986948, 30.441406, 36.266651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710360, 30.016823, 35.626507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080492, 30.161140, 35.579884>,  <29.302572, 30.247730, 35.551910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080492, 30.161140, 35.579884>,  <28.710360, 30.016823, 35.626507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080492, 30.161140, 35.579884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360730, -0.932402, -0.022396,
		-0.116762, -0.021323, -0.992931,
		0.925333, 0.360795, -0.116561,
		29.358091, 30.269379, 35.544914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695547, 30.436760, 34.932880>,  <28.710360, 30.016823, 35.626507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695547, 30.436760, 34.932880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742638, 30.524921, 35.320190>,  <28.770891, 30.577818, 35.552578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742638, 30.524921, 35.320190>,  <28.695547, 30.436760, 34.932880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742638, 30.524921, 35.320190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404743, 0.901044, -0.155892,
		-0.906821, -0.373551, 0.195284,
		0.117726, 0.220406, 0.968278,
		28.777956, 30.591043, 35.610672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074673, 30.481470, 35.307362>,  <28.695547, 30.436760, 34.932880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074673, 30.481470, 35.307362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298107, 30.739471, 35.515957>,  <28.432167, 30.894272, 35.641113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298107, 30.739471, 35.515957>,  <28.074673, 30.481470, 35.307362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298107, 30.739471, 35.515957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716643, 0.691854, -0.088096,
		-0.417618, -0.324514, 0.848697,
		0.558586, 0.645002, 0.521491,
		28.465683, 30.932972, 35.672405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708391, 30.705555, 35.952057>,  <28.074673, 30.481470, 35.307362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708391, 30.705555, 35.952057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963312, 30.987131, 35.826641>,  <28.116264, 31.156076, 35.751392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963312, 30.987131, 35.826641>,  <27.708391, 30.705555, 35.952057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963312, 30.987131, 35.826641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740044, 0.672534, 0.005716,
		0.214891, 0.228392, 0.949557,
		0.637304, 0.703943, -0.313542,
		28.154503, 31.198315, 35.732578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402298, 31.325079, 36.220581>,  <27.708391, 30.705555, 35.952057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402298, 31.325079, 36.220581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667013, 31.476784, 35.961906>,  <27.825842, 31.567806, 35.806702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667013, 31.476784, 35.961906>,  <27.402298, 31.325079, 36.220581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667013, 31.476784, 35.961906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487983, 0.872764, 0.012471,
		0.569130, 0.307317, 0.762658,
		0.661788, 0.379262, -0.646682,
		27.865549, 31.590563, 35.767902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520529, 32.038994, 36.456924>,  <27.402298, 31.325079, 36.220581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520529, 32.038994, 36.456924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627998, 32.022903, 36.071968>,  <27.692480, 32.013248, 35.840996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627998, 32.022903, 36.071968>,  <27.520529, 32.038994, 36.456924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627998, 32.022903, 36.071968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323286, 0.937408, -0.129432,
		0.907359, 0.345902, 0.238854,
		0.268674, -0.040223, -0.962391,
		27.708601, 32.010838, 35.783249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819080, 32.736866, 36.210037>,  <27.520529, 32.038994, 36.456924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819080, 32.736866, 36.210037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734171, 32.567036, 35.857975>,  <27.683226, 32.465137, 35.646736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734171, 32.567036, 35.857975>,  <27.819080, 32.736866, 36.210037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734171, 32.567036, 35.857975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260668, 0.892647, -0.367739,
		0.941803, 0.151367, -0.300160,
		-0.212273, -0.424580, -0.880155,
		27.670488, 32.439663, 35.593929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210493, 33.117783, 35.753464>,  <27.819080, 32.736866, 36.210037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210493, 33.117783, 35.753464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930317, 32.939766, 35.530277>,  <27.762211, 32.832954, 35.396366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930317, 32.939766, 35.530277>,  <28.210493, 33.117783, 35.753464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930317, 32.939766, 35.530277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012735, 0.789444, -0.613691,
		0.713597, -0.422749, -0.558626,
		-0.700440, -0.445042, -0.557961,
		27.720184, 32.806252, 35.362888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382742, 33.128304, 35.090843>,  <28.210493, 33.117783, 35.753464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382742, 33.128304, 35.090843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982742, 33.128586, 35.089912>,  <27.742743, 33.128754, 35.089352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982742, 33.128586, 35.089912>,  <28.382742, 33.128304, 35.090843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982742, 33.128586, 35.089912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001724, 0.879964, -0.475038,
		0.001717, -0.475041, -0.879962,
		-0.999997, 0.000702, -0.002330,
		27.682743, 33.128796, 35.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694277, 33.788128, 34.712200>,  <28.382742, 33.128304, 35.090843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694277, 33.788128, 34.712200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947376, 33.694565, 35.007473>,  <29.099236, 33.638428, 35.184639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947376, 33.694565, 35.007473>,  <28.694277, 33.788128, 34.712200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947376, 33.694565, 35.007473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490633, 0.858622, -0.148485,
		-0.599091, 0.456131, 0.658053,
		0.632747, -0.233906, 0.738186,
		29.137201, 33.624393, 35.228928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543583, 34.287460, 35.259388>,  <28.694277, 33.788128, 34.712200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543583, 34.287460, 35.259388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899647, 34.146866, 35.375366>,  <29.113285, 34.062508, 35.444954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899647, 34.146866, 35.375366>,  <28.543583, 34.287460, 35.259388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899647, 34.146866, 35.375366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351884, 0.934564, 0.052614,
		-0.289465, 0.055192, 0.955596,
		0.890162, -0.351489, 0.289944,
		29.166695, 34.041420, 35.462349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778410, 34.698608, 35.747532>,  <28.543583, 34.287460, 35.259388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778410, 34.698608, 35.747532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101358, 34.511833, 35.603245>,  <29.295128, 34.399769, 35.516674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101358, 34.511833, 35.603245>,  <28.778410, 34.698608, 35.747532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101358, 34.511833, 35.603245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456091, 0.881732, -0.120542,
		0.374341, -0.067197, 0.924853,
		0.807372, -0.466941, -0.360716,
		29.343571, 34.371750, 35.495029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357702, 34.665035, 36.109570>,  <28.778410, 34.698608, 35.747532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357702, 34.665035, 36.109570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512915, 34.709297, 35.743580>,  <29.606043, 34.735855, 35.523987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512915, 34.709297, 35.743580>,  <29.357702, 34.665035, 36.109570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512915, 34.709297, 35.743580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310104, 0.919207, 0.242680,
		0.867909, -0.377907, 0.322368,
		0.388033, 0.110657, -0.914979,
		29.629324, 34.742493, 35.469086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871855, 34.657536, 36.526653>,  <29.357702, 34.665035, 36.109570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871855, 34.657536, 36.526653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242208, 34.745602, 36.649464>,  <30.464420, 34.798439, 36.723148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242208, 34.745602, 36.649464>,  <29.871855, 34.657536, 36.526653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242208, 34.745602, 36.649464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351270, 0.202474, 0.914119,
		0.139090, -0.954219, 0.264804,
		0.925885, 0.220163, 0.307027,
		30.519974, 34.811649, 36.741573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865042, 34.413376, 37.214481>,  <29.871855, 34.657536, 36.526653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865042, 34.413376, 37.214481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144188, 34.696819, 37.172802>,  <30.311676, 34.866886, 37.147793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144188, 34.696819, 37.172802>,  <29.865042, 34.413376, 37.214481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144188, 34.696819, 37.172802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166626, 0.302119, 0.938595,
		0.696577, -0.637651, 0.328911,
		0.697866, 0.708609, -0.104200,
		30.353548, 34.909401, 37.141541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144882, 34.418968, 37.869045>,  <29.865042, 34.413376, 37.214481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144882, 34.418968, 37.869045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223640, 34.763893, 37.682430>,  <30.270895, 34.970848, 37.570461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223640, 34.763893, 37.682430>,  <30.144882, 34.418968, 37.869045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223640, 34.763893, 37.682430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114037, 0.492761, 0.862660,
		0.973770, -0.116651, 0.195357,
		0.196895, 0.862310, -0.466534,
		30.282709, 35.022587, 37.542469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634874, 34.701820, 38.230724>,  <30.144882, 34.418968, 37.869045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634874, 34.701820, 38.230724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465677, 35.002987, 38.029049>,  <30.364159, 35.183685, 37.908043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465677, 35.002987, 38.029049>,  <30.634874, 34.701820, 38.230724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465677, 35.002987, 38.029049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032383, 0.543497, 0.838786,
		0.905554, 0.371127, -0.205514,
		-0.422992, 0.752912, -0.504184,
		30.338779, 35.228859, 37.877792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965963, 35.247818, 38.591599>,  <30.634874, 34.701820, 38.230724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965963, 35.247818, 38.591599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631332, 35.383152, 38.419239>,  <30.430553, 35.464352, 38.315823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631332, 35.383152, 38.419239>,  <30.965963, 35.247818, 38.591599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631332, 35.383152, 38.419239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082185, 0.700118, 0.709281,
		0.541653, 0.628780, -0.557896,
		-0.836575, 0.338333, -0.430897,
		30.380360, 35.484653, 38.289970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987013, 36.001575, 38.544899>,  <30.965963, 35.247818, 38.591599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987013, 36.001575, 38.544899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599739, 35.901566, 38.548954>,  <30.367374, 35.841560, 38.551388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599739, 35.901566, 38.548954>,  <30.987013, 36.001575, 38.544899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599739, 35.901566, 38.548954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167735, 0.678534, 0.715162,
		-0.185689, 0.690709, -0.698886,
		-0.968186, -0.250025, 0.010141,
		30.309282, 35.826557, 38.551994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729689, 35.835041, 39.143185>,  <30.987013, 36.001575, 38.544899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729689, 35.835041, 39.143185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666903, 36.092670, 39.442657>,  <30.629230, 36.247250, 39.622341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666903, 36.092670, 39.442657>,  <30.729689, 35.835041, 39.143185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666903, 36.092670, 39.442657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291273, 0.694173, -0.658244,
		-0.943675, -0.321395, 0.078639,
		-0.156967, 0.644073, 0.748686,
		30.619812, 36.285892, 39.667263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991402, 35.582294, 39.000069>,  <30.729689, 35.835041, 39.143185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991402, 35.582294, 39.000069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093584, 35.926159, 38.823105>,  <30.154894, 36.132477, 38.716927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093584, 35.926159, 38.823105>,  <29.991402, 35.582294, 39.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093584, 35.926159, 38.823105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196687, -0.494233, -0.846787,
		-0.946602, 0.129302, -0.295339,
		0.255457, 0.859660, -0.442410,
		30.170221, 36.184055, 38.690380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525116, 35.676590, 38.416553>,  <29.991402, 35.582294, 39.000069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525116, 35.676590, 38.416553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869394, 35.868309, 38.347881>,  <30.075962, 35.983341, 38.306679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869394, 35.868309, 38.347881>,  <29.525116, 35.676590, 38.416553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869394, 35.868309, 38.347881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168317, -0.586134, -0.792538,
		-0.480489, 0.653239, -0.585158,
		0.860697, 0.479297, -0.171680,
		30.127604, 36.012096, 38.296379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429138, 35.991066, 37.730331>,  <29.525116, 35.676590, 38.416553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429138, 35.991066, 37.730331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804127, 35.920162, 37.850147>,  <30.029119, 35.877621, 37.922039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804127, 35.920162, 37.850147>,  <29.429138, 35.991066, 37.730331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804127, 35.920162, 37.850147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167526, -0.524562, -0.834728,
		0.305094, 0.832714, -0.462066,
		0.937472, -0.177262, 0.299542,
		30.085369, 35.866985, 37.940010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999540, 36.287212, 37.207432>,  <29.429138, 35.991066, 37.730331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999540, 36.287212, 37.207432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135651, 35.978279, 37.421986>,  <30.217318, 35.792919, 37.550720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135651, 35.978279, 37.421986>,  <29.999540, 36.287212, 37.207432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135651, 35.978279, 37.421986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142201, -0.521603, -0.841255,
		0.929510, 0.362535, -0.067664,
		0.340278, -0.772333, 0.536388,
		30.237734, 35.746578, 37.582901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535198, 36.172218, 36.889870>,  <29.999540, 36.287212, 37.207432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535198, 36.172218, 36.889870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441051, 35.834991, 37.083294>,  <30.384563, 35.632656, 37.199348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441051, 35.834991, 37.083294>,  <30.535198, 36.172218, 36.889870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441051, 35.834991, 37.083294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161754, -0.524581, -0.835853,
		0.958352, -0.118515, 0.259840,
		-0.235368, -0.843072, 0.483562,
		30.370441, 35.582069, 37.228363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131296, 35.891056, 36.774738>,  <30.535198, 36.172218, 36.889870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131296, 35.891056, 36.774738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871864, 35.600765, 36.866535>,  <30.716206, 35.426590, 36.921612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871864, 35.600765, 36.866535>,  <31.131296, 35.891056, 36.774738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871864, 35.600765, 36.866535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315761, -0.530876, -0.786426,
		0.692562, -0.437595, 0.573471,
		-0.648578, -0.725728, 0.229489,
		30.677290, 35.383045, 36.935383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513477, 35.294903, 36.765335>,  <31.131296, 35.891056, 36.774738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513477, 35.294903, 36.765335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121616, 35.225536, 36.724922>,  <30.886499, 35.183914, 36.700672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121616, 35.225536, 36.724922>,  <31.513477, 35.294903, 36.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121616, 35.225536, 36.724922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188535, -0.622531, -0.759545,
		0.068822, -0.763139, 0.642560,
		-0.979652, -0.173418, -0.101035,
		30.827721, 35.173512, 36.694611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313940, 34.502918, 36.712559>,  <31.513477, 35.294903, 36.765335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313940, 34.502918, 36.712559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047962, 34.725407, 36.513172>,  <30.888376, 34.858898, 36.393539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047962, 34.725407, 36.513172>,  <31.313940, 34.502918, 36.712559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047962, 34.725407, 36.513172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053707, -0.630049, -0.774696,
		-0.744959, -0.541901, 0.389075,
		-0.664945, 0.556221, -0.498464,
		30.848478, 34.892273, 36.363632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741713, 34.161285, 36.716606>,  <31.313940, 34.502918, 36.712559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741713, 34.161285, 36.716606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710224, 34.414421, 36.408497>,  <30.691330, 34.566303, 36.223633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710224, 34.414421, 36.408497>,  <30.741713, 34.161285, 36.716606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710224, 34.414421, 36.408497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123854, -0.772891, -0.622334,
		-0.989173, 0.046409, 0.139223,
		-0.078722, 0.632840, -0.770271,
		30.686607, 34.604275, 36.177414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319328, 33.781513, 36.264008>,  <30.741713, 34.161285, 36.716606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319328, 33.781513, 36.264008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500187, 34.064140, 36.046261>,  <30.608702, 34.233715, 35.915615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500187, 34.064140, 36.046261>,  <30.319328, 33.781513, 36.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500187, 34.064140, 36.046261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073595, -0.637783, -0.766692,
		-0.888902, 0.306595, -0.340371,
		0.452147, 0.706564, -0.544363,
		30.635832, 34.276108, 35.882954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985819, 33.700661, 35.597481>,  <30.319328, 33.781513, 36.264008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985819, 33.700661, 35.597481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328276, 33.899815, 35.542160>,  <30.533751, 34.019306, 35.508968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328276, 33.899815, 35.542160>,  <29.985819, 33.700661, 35.597481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328276, 33.899815, 35.542160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074342, -0.383541, -0.920527,
		-0.511361, 0.777822, -0.365380,
		0.856144, 0.497885, -0.138303,
		30.585119, 34.049179, 35.500668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932859, 33.908028, 34.936749>,  <29.985819, 33.700661, 35.597481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932859, 33.908028, 34.936749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321129, 33.923206, 35.031700>,  <30.554090, 33.932312, 35.088673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321129, 33.923206, 35.031700>,  <29.932859, 33.908028, 34.936749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321129, 33.923206, 35.031700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233819, -0.378411, -0.895619,
		0.055843, 0.924860, -0.376186,
		0.970675, 0.037946, 0.237381,
		30.612331, 33.934589, 35.102913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153759, 33.952049, 34.245850>,  <29.932859, 33.908028, 34.936749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153759, 33.952049, 34.245850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477674, 33.891510, 34.472595>,  <30.672024, 33.855186, 34.608643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477674, 33.891510, 34.472595>,  <30.153759, 33.952049, 34.245850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477674, 33.891510, 34.472595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519480, -0.264160, -0.812626,
		0.272733, 0.952530, -0.135291,
		0.809789, -0.151349, 0.566865,
		30.720612, 33.846104, 34.642654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691896, 34.249676, 33.915287>,  <30.153759, 33.952049, 34.245850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691896, 34.249676, 33.915287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804583, 33.938610, 34.140095>,  <30.872194, 33.751968, 34.274979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804583, 33.938610, 34.140095>,  <30.691896, 34.249676, 33.915287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804583, 33.938610, 34.140095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558793, -0.343188, -0.754965,
		0.779991, 0.526740, 0.337874,
		0.281716, -0.777668, 0.562022,
		30.889097, 33.705311, 34.308701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492929, 34.043526, 33.746094>,  <30.691896, 34.249676, 33.915287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492929, 34.043526, 33.746094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366106, 33.717552, 33.940147>,  <31.290012, 33.521969, 34.056580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366106, 33.717552, 33.940147>,  <31.492929, 34.043526, 33.746094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366106, 33.717552, 33.940147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538969, -0.575724, -0.614861,
		0.780376, 0.066529, 0.621761,
		-0.317057, -0.814933, 0.485139,
		31.270988, 33.473072, 34.085690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066372, 33.586296, 33.802834>,  <31.492929, 34.043526, 33.746094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066372, 33.586296, 33.802834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751305, 33.348854, 33.868820>,  <31.562265, 33.206390, 33.908413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751305, 33.348854, 33.868820>,  <32.066372, 33.586296, 33.802834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751305, 33.348854, 33.868820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373479, -0.672995, -0.638428,
		0.489995, -0.441258, 0.751795,
		-0.787666, -0.593607, 0.164963,
		31.515005, 33.170773, 33.918308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374435, 32.932728, 33.900200>,  <32.066372, 33.586296, 33.802834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374435, 32.932728, 33.900200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993721, 32.886314, 33.786606>,  <31.765293, 32.858467, 33.718449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993721, 32.886314, 33.786606>,  <32.374435, 32.932728, 33.900200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993721, 32.886314, 33.786606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297496, -0.575051, -0.762110,
		-0.074877, -0.809848, 0.581842,
		-0.951782, -0.116032, -0.283985,
		31.708187, 32.851505, 33.701412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325466, 32.298386, 33.729687>,  <32.374435, 32.932728, 33.900200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325466, 32.298386, 33.729687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031738, 32.477699, 33.525799>,  <31.855501, 32.585289, 33.403465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031738, 32.477699, 33.525799>,  <32.325466, 32.298386, 33.729687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031738, 32.477699, 33.525799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197282, -0.577553, -0.792157,
		-0.649500, -0.682257, 0.335671,
		-0.734322, 0.448284, -0.509718,
		31.811441, 32.612183, 33.372883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981674, 31.682886, 33.286133>,  <32.325466, 32.298386, 33.729687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981674, 31.682886, 33.286133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870356, 32.028999, 33.119358>,  <31.803564, 32.236668, 33.019295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870356, 32.028999, 33.119358>,  <31.981674, 31.682886, 33.286133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870356, 32.028999, 33.119358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031560, -0.425610, -0.904356,
		-0.959976, -0.264839, 0.091138,
		-0.278298, 0.865284, -0.416934,
		31.786867, 32.288586, 32.994278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536495, 31.481634, 32.790375>,  <31.981674, 31.682886, 33.286133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536495, 31.481634, 32.790375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609472, 31.856106, 32.670185>,  <31.653259, 32.080788, 32.598072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609472, 31.856106, 32.670185>,  <31.536495, 31.481634, 32.790375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609472, 31.856106, 32.670185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099677, -0.286421, -0.952905,
		-0.978151, 0.203800, 0.041060,
		0.182442, 0.936177, -0.300477,
		31.664206, 32.136959, 32.580040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010801, 31.595306, 32.305519>,  <31.536495, 31.481634, 32.790375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010801, 31.595306, 32.305519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278400, 31.880617, 32.221916>,  <31.438959, 32.051804, 32.171757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278400, 31.880617, 32.221916>,  <31.010801, 31.595306, 32.305519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278400, 31.880617, 32.221916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158500, -0.137824, -0.977692,
		-0.726170, 0.687199, 0.020851,
		0.668996, 0.713276, -0.209004,
		31.479099, 32.094601, 32.159214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740273, 32.037964, 31.719225>,  <31.010801, 31.595306, 32.305519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740273, 32.037964, 31.719225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135151, 32.101257, 31.727285>,  <31.372078, 32.139233, 31.732122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135151, 32.101257, 31.727285>,  <30.740273, 32.037964, 31.719225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135151, 32.101257, 31.727285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039204, -0.118217, -0.992214,
		-0.154622, 0.980299, -0.122907,
		0.987195, 0.158237, 0.020153,
		31.431309, 32.148727, 31.733332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811605, 32.549458, 31.283104>,  <30.740273, 32.037964, 31.719225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811605, 32.549458, 31.283104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178032, 32.392361, 31.315533>,  <31.397888, 32.298103, 31.334990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178032, 32.392361, 31.315533>,  <30.811605, 32.549458, 31.283104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178032, 32.392361, 31.315533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092438, 0.010080, -0.995667,
		0.390225, 0.919593, 0.045538,
		0.916067, -0.392744, 0.081071,
		31.452852, 32.274536, 31.339853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198475, 33.025539, 30.825550>,  <30.811605, 32.549458, 31.283104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198475, 33.025539, 30.825550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426952, 32.700348, 30.870813>,  <31.564039, 32.505234, 30.897972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426952, 32.700348, 30.870813>,  <31.198475, 33.025539, 30.825550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426952, 32.700348, 30.870813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032003, -0.159813, -0.986628,
		0.820190, 0.559936, -0.117302,
		0.571195, -0.812977, 0.113158,
		31.598310, 32.456455, 30.904760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722969, 33.030167, 30.300997>,  <31.198475, 33.025539, 30.825550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722969, 33.030167, 30.300997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723021, 32.645294, 30.409962>,  <31.723051, 32.414371, 30.475342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723021, 32.645294, 30.409962>,  <31.722969, 33.030167, 30.300997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723021, 32.645294, 30.409962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120329, -0.270450, -0.955185,
		0.992734, -0.032657, -0.115813,
		0.000128, -0.962180, 0.272414,
		31.723059, 32.356640, 30.491686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307476, 32.726524, 29.828489>,  <31.722969, 33.030167, 30.300997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307476, 32.726524, 29.828489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039188, 32.459557, 29.957907>,  <31.878216, 32.299374, 30.035557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039188, 32.459557, 29.957907>,  <32.307476, 32.726524, 29.828489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039188, 32.459557, 29.957907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103402, -0.347812, -0.931845,
		0.734466, -0.658464, 0.164272,
		-0.670722, -0.667422, 0.323543,
		31.837973, 32.259331, 30.054970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424118, 32.074310, 29.417812>,  <32.307476, 32.726524, 29.828489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424118, 32.074310, 29.417812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052406, 32.061668, 29.565025>,  <31.829380, 32.054085, 29.653353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052406, 32.061668, 29.565025>,  <32.424118, 32.074310, 29.417812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052406, 32.061668, 29.565025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333967, -0.353853, -0.873644,
		0.157841, -0.934767, 0.318272,
		-0.929276, -0.031605, 0.368034,
		31.773624, 32.052189, 29.675436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234447, 31.427364, 29.238480>,  <32.424118, 32.074310, 29.417812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234447, 31.427364, 29.238480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910942, 31.653990, 29.301605>,  <31.716839, 31.789965, 29.339479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910942, 31.653990, 29.301605>,  <32.234447, 31.427364, 29.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910942, 31.653990, 29.301605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360321, -0.265247, -0.894323,
		-0.464833, -0.780159, 0.418667,
		-0.808764, 0.566565, 0.157812,
		31.668312, 31.823959, 29.348949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743496, 31.041754, 28.980680>,  <32.234447, 31.427364, 29.238480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743496, 31.041754, 28.980680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579767, 31.406670, 28.975298>,  <31.481531, 31.625620, 28.972069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579767, 31.406670, 28.975298>,  <31.743496, 31.041754, 28.980680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579767, 31.406670, 28.975298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485797, -0.230402, -0.843158,
		-0.772307, -0.338583, 0.537497,
		-0.409320, 0.912292, -0.013459,
		31.456972, 31.680357, 28.971260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074293, 30.983614, 28.774050>,  <31.743496, 31.041754, 28.980680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074293, 30.983614, 28.774050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122953, 31.376738, 28.718506>,  <31.152149, 31.612612, 28.685179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122953, 31.376738, 28.718506>,  <31.074293, 30.983614, 28.774050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122953, 31.376738, 28.718506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356679, -0.087271, -0.930142,
		-0.926272, 0.162683, 0.339932,
		0.121652, 0.982811, -0.138862,
		31.159449, 31.671581, 28.676847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508461, 31.199041, 28.307579>,  <31.074293, 30.983614, 28.774050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508461, 31.199041, 28.307579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798985, 31.472521, 28.279202>,  <30.973299, 31.636608, 28.262175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798985, 31.472521, 28.279202>,  <30.508461, 31.199041, 28.307579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798985, 31.472521, 28.279202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141033, 0.047212, -0.988878,
		-0.672745, 0.728236, 0.130715,
		0.726308, 0.683699, -0.070944,
		31.016876, 31.677631, 28.257919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219442, 31.642731, 27.806900>,  <30.508461, 31.199041, 28.307579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219442, 31.642731, 27.806900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613331, 31.706602, 27.834686>,  <30.849665, 31.744925, 27.851358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613331, 31.706602, 27.834686>,  <30.219442, 31.642731, 27.806900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613331, 31.706602, 27.834686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076460, -0.038068, -0.996346,
		-0.156448, 0.986435, -0.049696,
		0.984722, 0.159676, 0.069467,
		30.908747, 31.754505, 27.855526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442265, 32.119770, 27.229456>,  <30.219442, 31.642731, 27.806900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442265, 32.119770, 27.229456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803120, 31.973902, 27.321678>,  <31.019632, 31.886379, 27.377012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803120, 31.973902, 27.321678>,  <30.442265, 32.119770, 27.229456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803120, 31.973902, 27.321678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281768, 0.093311, -0.954934,
		0.326727, 0.926448, 0.186933,
		0.902140, -0.364675, 0.230556,
		31.073761, 31.864500, 27.390844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960129, 32.611786, 26.873009>,  <30.442265, 32.119770, 27.229456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960129, 32.611786, 26.873009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145376, 32.272331, 26.975246>,  <31.256525, 32.068657, 27.036589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145376, 32.272331, 26.975246>,  <30.960129, 32.611786, 26.873009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145376, 32.272331, 26.975246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319564, -0.109099, -0.941263,
		0.826679, 0.517597, 0.220669,
		0.463120, -0.848641, 0.255595,
		31.284311, 32.017738, 27.051926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743025, 32.627384, 26.640528>,  <30.960129, 32.611786, 26.873009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743025, 32.627384, 26.640528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638739, 32.242153, 26.667366>,  <31.576168, 32.011013, 26.683470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638739, 32.242153, 26.667366>,  <31.743025, 32.627384, 26.640528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638739, 32.242153, 26.667366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310137, -0.149367, -0.938885,
		0.914245, -0.223971, 0.337629,
		-0.260713, -0.963082, 0.067096,
		31.560524, 31.953228, 26.687494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365051, 32.224636, 26.561512>,  <31.743025, 32.627384, 26.640528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365051, 32.224636, 26.561512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063034, 31.987150, 26.450218>,  <31.881824, 31.844658, 26.383442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063034, 31.987150, 26.450218>,  <32.365051, 32.224636, 26.561512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063034, 31.987150, 26.450218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438997, -0.142558, -0.887107,
		0.487025, -0.791946, 0.368277,
		-0.755042, -0.593716, -0.278232,
		31.836521, 31.809036, 26.366749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757481, 31.686329, 26.208271>,  <32.365051, 32.224636, 26.561512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757481, 31.686329, 26.208271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368835, 31.697151, 26.114254>,  <32.135651, 31.703644, 26.057844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368835, 31.697151, 26.114254>,  <32.757481, 31.686329, 26.208271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368835, 31.697151, 26.114254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226338, -0.183031, -0.956698,
		-0.068903, -0.982735, 0.171711,
		-0.971609, 0.027054, -0.235042,
		32.077354, 31.705267, 26.043741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652031, 31.107477, 25.669134>,  <32.757481, 31.686329, 26.208271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652031, 31.107477, 25.669134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361267, 31.381899, 25.656858>,  <32.186810, 31.546551, 25.649492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361267, 31.381899, 25.656858>,  <32.652031, 31.107477, 25.669134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361267, 31.381899, 25.656858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075799, 0.035734, -0.996482,
		-0.682542, -0.726674, -0.077978,
		-0.726905, 0.686052, -0.030691,
		32.143196, 31.587715, 25.647652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155998, 30.906448, 25.145775>,  <32.652031, 31.107477, 25.669134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155998, 30.906448, 25.145775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104626, 31.299463, 25.199631>,  <32.073803, 31.535273, 25.231945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104626, 31.299463, 25.199631>,  <32.155998, 30.906448, 25.145775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104626, 31.299463, 25.199631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065368, 0.127082, -0.989736,
		-0.989562, -0.135910, 0.047906,
		-0.128427, 0.982537, 0.134639,
		32.066097, 31.594225, 25.240023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697432, 31.085474, 24.567549>,  <32.155998, 30.906448, 25.145775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697432, 31.085474, 24.567549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866804, 31.422291, 24.701218>,  <31.968428, 31.624380, 24.781420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866804, 31.422291, 24.701218>,  <31.697432, 31.085474, 24.567549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866804, 31.422291, 24.701218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178536, 0.284076, -0.942033,
		-0.888162, 0.458547, -0.030048,
		0.423430, 0.842042, 0.334172,
		31.993834, 31.674904, 24.801470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393564, 31.633080, 24.224308>,  <31.697432, 31.085474, 24.567549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393564, 31.633080, 24.224308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743248, 31.782976, 24.347809>,  <31.953058, 31.872913, 24.421909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743248, 31.782976, 24.347809>,  <31.393564, 31.633080, 24.224308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743248, 31.782976, 24.347809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149051, 0.398065, -0.905167,
		-0.462107, 0.837325, 0.292137,
		0.874209, 0.374741, 0.308753,
		32.005512, 31.895399, 24.440435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417364, 32.297497, 23.841196>,  <31.393564, 31.633080, 24.224308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417364, 32.297497, 23.841196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788315, 32.240536, 23.979582>,  <32.010887, 32.206360, 24.062614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788315, 32.240536, 23.979582>,  <31.417364, 32.297497, 23.841196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788315, 32.240536, 23.979582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370359, 0.480371, -0.795033,
		-0.052974, 0.865427, 0.498226,
		0.927377, -0.142407, 0.345966,
		32.066528, 32.197815, 24.083372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722692, 32.963528, 23.913204>,  <31.417364, 32.297497, 23.841196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722692, 32.963528, 23.913204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014427, 32.693130, 23.871052>,  <32.189468, 32.530891, 23.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014427, 32.693130, 23.871052>,  <31.722692, 32.963528, 23.913204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014427, 32.693130, 23.871052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400764, 0.546971, -0.734991,
		0.554486, 0.493824, 0.669838,
		0.729338, -0.675989, -0.105381,
		32.233227, 32.490334, 23.839437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357609, 33.382507, 23.820639>,  <31.722692, 32.963528, 23.913204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357609, 33.382507, 23.820639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451664, 33.012005, 23.702818>,  <32.508099, 32.789703, 23.632126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451664, 33.012005, 23.702818>,  <32.357609, 33.382507, 23.820639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451664, 33.012005, 23.702818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530690, 0.376241, -0.759481,
		0.814295, 0.022270, 0.580024,
		0.235142, -0.926254, -0.294553,
		32.522205, 32.734127, 23.614452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110130, 33.345997, 23.788115>,  <32.357609, 33.382507, 23.820639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110130, 33.345997, 23.788115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932091, 33.095242, 23.532333>,  <32.825268, 32.944786, 23.378864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932091, 33.095242, 23.532333>,  <33.110130, 33.345997, 23.788115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932091, 33.095242, 23.532333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536966, 0.384620, -0.750823,
		0.716630, -0.677551, 0.165427,
		-0.445095, -0.626891, -0.639452,
		32.798561, 32.907173, 23.340498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679779, 33.289722, 23.309341>,  <33.110130, 33.345997, 23.788115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679779, 33.289722, 23.309341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346958, 33.144535, 23.141556>,  <33.147266, 33.057423, 23.040884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346958, 33.144535, 23.141556>,  <33.679779, 33.289722, 23.309341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346958, 33.144535, 23.141556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375735, 0.187513, -0.907559,
		0.408067, -0.912741, -0.019641,
		-0.832048, -0.362965, -0.419466,
		33.097343, 33.035645, 23.015717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950798, 32.877754, 22.802689>,  <33.679779, 33.289722, 23.309341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950798, 32.877754, 22.802689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575539, 32.918865, 22.670439>,  <33.350384, 32.943531, 22.591089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575539, 32.918865, 22.670439>,  <33.950798, 32.877754, 22.802689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575539, 32.918865, 22.670439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346182, 0.262880, -0.900584,
		-0.005643, -0.959339, -0.282200,
		-0.938151, 0.102775, -0.330623,
		33.294094, 32.949699, 22.571253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995419, 32.612450, 22.202711>,  <33.950798, 32.877754, 22.802689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995419, 32.612450, 22.202711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678955, 32.856842, 22.191595>,  <33.489075, 33.003475, 22.184925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678955, 32.856842, 22.191595>,  <33.995419, 32.612450, 22.202711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678955, 32.856842, 22.191595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311270, 0.363122, -0.878210,
		-0.526475, -0.703456, -0.477466,
		-0.791160, 0.610977, -0.027790,
		33.441608, 33.040134, 22.183258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677101, 32.548470, 21.508858>,  <33.995419, 32.612450, 22.202711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677101, 32.548470, 21.508858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546955, 32.887234, 21.677088>,  <33.468868, 33.090492, 21.778027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546955, 32.887234, 21.677088>,  <33.677101, 32.548470, 21.508858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546955, 32.887234, 21.677088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240962, 0.504355, -0.829194,
		-0.914370, -0.168451, -0.368173,
		-0.325368, 0.846906, 0.420577,
		33.449345, 33.141304, 21.803261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196392, 32.901283, 20.995037>,  <33.677101, 32.548470, 21.508858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196392, 32.901283, 20.995037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305157, 33.193909, 21.245117>,  <33.370415, 33.369484, 21.395166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305157, 33.193909, 21.245117>,  <33.196392, 32.901283, 20.995037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305157, 33.193909, 21.245117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181124, 0.599164, -0.779870,
		-0.945124, 0.325293, 0.030414,
		0.271909, 0.731565, 0.625202,
		33.386730, 33.413380, 21.432678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905914, 33.612675, 20.725437>,  <33.196392, 32.901283, 20.995037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905914, 33.612675, 20.725437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241207, 33.668774, 20.936226>,  <33.442383, 33.702435, 21.062698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241207, 33.668774, 20.936226>,  <32.905914, 33.612675, 20.725437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241207, 33.668774, 20.936226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261324, 0.744861, -0.613915,
		-0.478623, 0.652313, 0.587714,
		0.838230, 0.140251, 0.526973,
		33.492676, 33.710850, 21.094318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192505, 34.261444, 21.055399>,  <32.905914, 33.612675, 20.725437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192505, 34.261444, 21.055399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444630, 34.539597, 20.917332>,  <33.595905, 34.706490, 20.834492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444630, 34.539597, 20.917332>,  <33.192505, 34.261444, 21.055399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444630, 34.539597, 20.917332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145050, -0.331294, -0.932311,
		-0.762668, 0.637717, -0.107954,
		0.630315, 0.695385, -0.345169,
		33.633724, 34.748211, 20.813782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876926, 34.516129, 20.402262>,  <33.192505, 34.261444, 21.055399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876926, 34.516129, 20.402262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270054, 34.589561, 20.409962>,  <33.505928, 34.633621, 20.414581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270054, 34.589561, 20.409962>,  <32.876926, 34.516129, 20.402262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270054, 34.589561, 20.409962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060809, -0.223532, -0.972798,
		-0.174282, 0.957252, -0.230855,
		0.982816, 0.183580, 0.019252,
		33.564899, 34.644634, 20.415737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966682, 35.148724, 19.974949>,  <32.876926, 34.516129, 20.402262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966682, 35.148724, 19.974949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312912, 34.948536, 19.981958>,  <33.520649, 34.828423, 19.986164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312912, 34.948536, 19.981958>,  <32.966682, 35.148724, 19.974949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312912, 34.948536, 19.981958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027007, -0.081593, -0.996300,
		0.500048, 0.861900, -0.084141,
		0.865576, -0.500470, 0.017523,
		33.572586, 34.798393, 19.987215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374882, 35.383232, 19.440668>,  <32.966682, 35.148724, 19.974949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374882, 35.383232, 19.440668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457821, 35.002270, 19.530045>,  <33.507584, 34.773693, 19.583670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457821, 35.002270, 19.530045>,  <33.374882, 35.383232, 19.440668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457821, 35.002270, 19.530045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041409, -0.236744, -0.970689,
		0.977391, 0.192017, -0.088526,
		0.207347, -0.952408, 0.223441,
		33.520023, 34.716549, 19.597076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932171, 35.111137, 18.992546>,  <33.374882, 35.383232, 19.440668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932171, 35.111137, 18.992546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714500, 34.803089, 19.125690>,  <33.583900, 34.618259, 19.205578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714500, 34.803089, 19.125690>,  <33.932171, 35.111137, 18.992546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714500, 34.803089, 19.125690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050560, -0.426131, -0.903247,
		0.837449, -0.474692, 0.270825,
		-0.544171, -0.770117, 0.332863,
		33.551250, 34.572056, 19.225550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211212, 34.473480, 19.106161>,  <33.932171, 35.111137, 18.992546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211212, 34.473480, 19.106161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834316, 34.416496, 18.984905>,  <33.608181, 34.382305, 18.912151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834316, 34.416496, 18.984905>,  <34.211212, 34.473480, 19.106161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834316, 34.416496, 18.984905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324364, -0.613798, -0.719750,
		-0.083528, -0.776503, 0.624553,
		-0.942237, -0.142463, -0.303139,
		33.551643, 34.373756, 18.893963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738037, 34.496906, 19.690338>,  <34.211212, 34.473480, 19.106161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738037, 34.496906, 19.690338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359650, 34.522327, 19.817528>,  <34.132618, 34.537579, 19.893841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359650, 34.522327, 19.817528>,  <34.738037, 34.496906, 19.690338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359650, 34.522327, 19.817528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299223, 0.548940, 0.780468,
		-0.124949, 0.833442, -0.538296,
		-0.945967, 0.063552, 0.317975,
		34.075859, 34.541393, 19.912920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767147, 35.002785, 20.255339>,  <34.738037, 34.496906, 19.690338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767147, 35.002785, 20.255339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397438, 34.863804, 20.318575>,  <34.175613, 34.780415, 20.356516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397438, 34.863804, 20.318575>,  <34.767147, 35.002785, 20.255339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397438, 34.863804, 20.318575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100212, 0.620480, 0.777793,
		-0.368334, 0.703054, -0.608314,
		-0.924277, -0.347448, 0.158090,
		34.120155, 34.759571, 20.366001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343304, 35.626530, 20.280087>,  <34.767147, 35.002785, 20.255339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343304, 35.626530, 20.280087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112556, 35.352180, 20.457535>,  <33.974110, 35.187572, 20.564003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112556, 35.352180, 20.457535>,  <34.343304, 35.626530, 20.280087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112556, 35.352180, 20.457535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089647, 0.592975, 0.800215,
		-0.811903, 0.421849, -0.403555,
		-0.576868, -0.685874, 0.443621,
		33.939495, 35.146420, 20.590622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781261, 35.974316, 20.647511>,  <34.343304, 35.626530, 20.280087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781261, 35.974316, 20.647511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825409, 35.611523, 20.810091>,  <33.851898, 35.393848, 20.907639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825409, 35.611523, 20.810091>,  <33.781261, 35.974316, 20.647511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825409, 35.611523, 20.810091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065707, 0.414714, 0.907577,
		-0.991717, -0.073459, 0.105365,
		0.110366, -0.906982, 0.406452,
		33.858521, 35.339428, 20.932026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400833, 36.134892, 21.162622>,  <33.781261, 35.974316, 20.647511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400833, 36.134892, 21.162622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604515, 35.804348, 21.258823>,  <33.726723, 35.606022, 21.316544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604515, 35.804348, 21.258823>,  <33.400833, 36.134892, 21.162622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604515, 35.804348, 21.258823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136692, 0.198245, 0.970574,
		-0.849723, -0.527092, -0.012011,
		0.509201, -0.826361, 0.240503,
		33.757275, 35.556438, 21.330975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970463, 35.887020, 21.831823>,  <33.400833, 36.134892, 21.162622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970463, 35.887020, 21.831823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306744, 35.672955, 21.864851>,  <33.508514, 35.544518, 21.884668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306744, 35.672955, 21.864851>,  <32.970463, 35.887020, 21.831823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306744, 35.672955, 21.864851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038657, 0.092781, 0.994936,
		-0.540112, -0.839639, 0.057314,
		0.840705, -0.535161, 0.082570,
		33.558956, 35.512405, 21.889622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871056, 35.310974, 22.366669>,  <32.970463, 35.887020, 21.831823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871056, 35.310974, 22.366669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249092, 35.430565, 22.313877>,  <33.475914, 35.502319, 22.282202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249092, 35.430565, 22.313877>,  <32.871056, 35.310974, 22.366669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249092, 35.430565, 22.313877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077266, 0.187977, 0.979129,
		0.317545, -0.935563, 0.154555,
		0.945090, 0.298976, -0.131979,
		33.532619, 35.520256, 22.274284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314434, 34.957581, 22.852350>,  <32.871056, 35.310974, 22.366669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314434, 34.957581, 22.852350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554192, 35.262093, 22.753416>,  <33.698048, 35.444801, 22.694056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554192, 35.262093, 22.753416>,  <33.314434, 34.957581, 22.852350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554192, 35.262093, 22.753416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243579, 0.120869, 0.962320,
		0.762493, -0.637055, -0.112984,
		0.599395, 0.761283, -0.247335,
		33.734009, 35.490479, 22.679216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950237, 34.870560, 23.205097>,  <33.314434, 34.957581, 22.852350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950237, 34.870560, 23.205097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935829, 35.258385, 23.108232>,  <33.927185, 35.491081, 23.050114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935829, 35.258385, 23.108232>,  <33.950237, 34.870560, 23.205097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935829, 35.258385, 23.108232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350947, 0.239158, 0.905339,
		0.935702, -0.052373, -0.348882,
		-0.036022, 0.969567, -0.242161,
		33.925022, 35.549255, 23.035583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567223, 35.140427, 23.423405>,  <33.950237, 34.870560, 23.205097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567223, 35.140427, 23.423405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340260, 35.467731, 23.386530>,  <34.204082, 35.664112, 23.364405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340260, 35.467731, 23.386530>,  <34.567223, 35.140427, 23.423405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340260, 35.467731, 23.386530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296146, 0.307249, 0.904376,
		0.768338, 0.485851, -0.416660,
		-0.567410, 0.818259, -0.092189,
		34.170036, 35.713207, 23.358873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935810, 35.788677, 23.660797>,  <34.567223, 35.140427, 23.423405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935810, 35.788677, 23.660797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559242, 35.923504, 23.656332>,  <34.333302, 36.004398, 23.653654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559242, 35.923504, 23.656332>,  <34.935810, 35.788677, 23.660797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559242, 35.923504, 23.656332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133730, 0.403476, 0.905165,
		0.309602, 0.850644, -0.424914,
		-0.941415, 0.337064, -0.011160,
		34.276817, 36.024624, 23.652985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860672, 36.521877, 24.007360>,  <34.935810, 35.788677, 23.660797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860672, 36.521877, 24.007360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499069, 36.350883, 24.009171>,  <34.282108, 36.248287, 24.010258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499069, 36.350883, 24.009171>,  <34.860672, 36.521877, 24.007360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499069, 36.350883, 24.009171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142415, 0.311118, 0.939640,
		-0.403093, 0.848799, -0.342134,
		-0.904010, -0.427487, 0.004528,
		34.227867, 36.222637, 24.010529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302082, 37.074604, 24.322750>,  <34.860672, 36.521877, 24.007360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302082, 37.074604, 24.322750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164776, 36.701248, 24.364613>,  <34.082394, 36.477234, 24.389730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164776, 36.701248, 24.364613>,  <34.302082, 37.074604, 24.322750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164776, 36.701248, 24.364613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143972, 0.162400, 0.976165,
		-0.928139, 0.320015, -0.190128,
		-0.343264, -0.933390, 0.104656,
		34.061798, 36.421230, 24.396009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710201, 37.122482, 24.769646>,  <34.302082, 37.074604, 24.322750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710201, 37.122482, 24.769646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782837, 36.729134, 24.769222>,  <33.826420, 36.493122, 24.768969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782837, 36.729134, 24.769222>,  <33.710201, 37.122482, 24.769646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782837, 36.729134, 24.769222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196396, -0.037321, 0.979814,
		-0.963563, -0.177715, -0.199908,
		0.181589, -0.983374, -0.001058,
		33.837315, 36.434120, 24.768906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080944, 36.830372, 25.110918>,  <33.710201, 37.122482, 24.769646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080944, 36.830372, 25.110918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398106, 36.588745, 25.142937>,  <33.588402, 36.443771, 25.162148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398106, 36.588745, 25.142937>,  <33.080944, 36.830372, 25.110918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398106, 36.588745, 25.142937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238693, -0.187035, 0.952913,
		-0.560650, -0.774676, -0.292487,
		0.792904, -0.604065, 0.080049,
		33.635979, 36.407524, 25.166952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855892, 36.423187, 25.581450>,  <33.080944, 36.830372, 25.110918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855892, 36.423187, 25.581450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242199, 36.324432, 25.549604>,  <33.473984, 36.265179, 25.530499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242199, 36.324432, 25.549604>,  <32.855892, 36.423187, 25.581450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242199, 36.324432, 25.549604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041013, -0.157717, 0.986632,
		-0.256148, -0.956122, -0.142192,
		0.965767, -0.246892, -0.079612,
		33.531929, 36.250366, 25.525721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943161, 35.868542, 26.022266>,  <32.855892, 36.423187, 25.581450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943161, 35.868542, 26.022266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311264, 36.024097, 26.004892>,  <33.532127, 36.117432, 25.994469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311264, 36.024097, 26.004892>,  <32.943161, 35.868542, 26.022266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311264, 36.024097, 26.004892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097898, -0.121340, 0.987771,
		0.378862, -0.913259, -0.149736,
		0.920260, 0.388888, -0.043435,
		33.587341, 36.140762, 25.991861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347603, 35.356354, 26.208948>,  <32.943161, 35.868542, 26.022266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347603, 35.356354, 26.208948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552528, 35.690620, 26.288143>,  <33.675484, 35.891178, 26.335661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552528, 35.690620, 26.288143>,  <33.347603, 35.356354, 26.208948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552528, 35.690620, 26.288143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048798, -0.258497, 0.964779,
		0.857409, -0.484610, -0.173211,
		0.512316, 0.835663, 0.197990,
		33.706223, 35.941319, 26.347540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811573, 35.174286, 26.702888>,  <33.347603, 35.356354, 26.208948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811573, 35.174286, 26.702888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805195, 35.573254, 26.730904>,  <33.801369, 35.812634, 26.747713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805195, 35.573254, 26.730904>,  <33.811573, 35.174286, 26.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805195, 35.573254, 26.730904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004271, -0.069977, 0.997540,
		0.999864, 0.016206, -0.003144,
		-0.015947, 0.997417, 0.070036,
		33.800411, 35.872478, 26.751915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307648, 35.328281, 27.171289>,  <33.811573, 35.174286, 26.702888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307648, 35.328281, 27.171289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061985, 35.643616, 27.156679>,  <33.914589, 35.832817, 27.147913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061985, 35.643616, 27.156679>,  <34.307648, 35.328281, 27.171289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061985, 35.643616, 27.156679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123511, -0.050302, 0.991068,
		0.779461, 0.613180, 0.128262,
		-0.614155, 0.788340, -0.036526,
		33.877739, 35.880119, 27.145721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515324, 35.573074, 27.769489>,  <34.307648, 35.328281, 27.171289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515324, 35.573074, 27.769489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159573, 35.733757, 27.682184>,  <33.946121, 35.830166, 27.629801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159573, 35.733757, 27.682184>,  <34.515324, 35.573074, 27.769489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159573, 35.733757, 27.682184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215331, 0.053070, 0.975098,
		0.403290, 0.914228, 0.039301,
		-0.889376, 0.401710, -0.218264,
		33.892761, 35.854271, 27.616705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402321, 36.191463, 28.281675>,  <34.515324, 35.573074, 27.769489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402321, 36.191463, 28.281675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029968, 36.126934, 28.150564>,  <33.806557, 36.088219, 28.071898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029968, 36.126934, 28.150564>,  <34.402321, 36.191463, 28.281675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029968, 36.126934, 28.150564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361978, 0.286086, 0.887202,
		-0.049350, 0.944527, -0.324706,
		-0.930879, -0.161320, -0.327780,
		33.750706, 36.078537, 28.052231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970684, 36.802177, 28.469164>,  <34.402321, 36.191463, 28.281675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970684, 36.802177, 28.469164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733952, 36.488873, 28.393023>,  <33.591911, 36.300892, 28.347338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733952, 36.488873, 28.393023>,  <33.970684, 36.802177, 28.469164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733952, 36.488873, 28.393023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524765, 0.195147, 0.828577,
		-0.611844, 0.590273, -0.526522,
		-0.591835, -0.783260, -0.190355,
		33.556400, 36.253895, 28.335917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275589, 37.055149, 28.373489>,  <33.970684, 36.802177, 28.469164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275589, 37.055149, 28.373489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251427, 36.674297, 28.493359>,  <33.236931, 36.445786, 28.565281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251427, 36.674297, 28.493359>,  <33.275589, 37.055149, 28.373489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251427, 36.674297, 28.493359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587021, 0.276701, 0.760817,
		-0.807316, -0.129960, -0.575632,
		-0.060403, -0.952127, 0.299674,
		33.233307, 36.388660, 28.583261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581966, 36.925064, 28.464619>,  <33.275589, 37.055149, 28.373489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581966, 36.925064, 28.464619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766949, 36.647060, 28.684835>,  <32.877937, 36.480259, 28.816965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766949, 36.647060, 28.684835>,  <32.581966, 36.925064, 28.464619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766949, 36.647060, 28.684835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563579, 0.248930, 0.787663,
		-0.684480, -0.674532, -0.276575,
		0.462455, -0.695012, 0.550540,
		32.905685, 36.438557, 28.849997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016029, 36.626072, 28.871426>,  <32.581966, 36.925064, 28.464619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016029, 36.626072, 28.871426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356018, 36.543446, 29.065283>,  <32.560013, 36.493870, 29.181597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356018, 36.543446, 29.065283>,  <32.016029, 36.626072, 28.871426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356018, 36.543446, 29.065283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469985, 0.118334, 0.874706,
		-0.238033, -0.971251, 0.003498,
		0.849973, -0.206565, 0.484641,
		32.611012, 36.481476, 29.210674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774679, 36.174843, 29.342922>,  <32.016029, 36.626072, 28.871426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774679, 36.174843, 29.342922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126232, 36.302494, 29.484751>,  <32.337166, 36.379086, 29.569847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126232, 36.302494, 29.484751>,  <31.774679, 36.174843, 29.342922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126232, 36.302494, 29.484751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355955, -0.056113, 0.932817,
		0.317584, -0.946049, 0.064278,
		0.878884, 0.319127, 0.354572,
		32.389896, 36.398232, 29.591122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784895, 35.802074, 29.859999>,  <31.774679, 36.174843, 29.342922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784895, 35.802074, 29.859999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053482, 36.087841, 29.938728>,  <32.214634, 36.259300, 29.985966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053482, 36.087841, 29.938728>,  <31.784895, 35.802074, 29.859999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053482, 36.087841, 29.938728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355341, 0.077339, 0.931532,
		0.650278, -0.695435, 0.305792,
		0.671470, 0.714415, 0.196824,
		32.254925, 36.302166, 29.997776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039829, 35.668198, 30.565363>,  <31.784895, 35.802074, 29.859999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039829, 35.668198, 30.565363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119160, 36.053833, 30.494701>,  <32.166759, 36.285213, 30.452305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119160, 36.053833, 30.494701>,  <32.039829, 35.668198, 30.565363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119160, 36.053833, 30.494701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206484, 0.217287, 0.954018,
		0.958139, -0.152732, 0.242162,
		0.198328, 0.964084, -0.176655,
		32.178658, 36.343060, 30.441706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365772, 35.847328, 31.137848>,  <32.039829, 35.668198, 30.565363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365772, 35.847328, 31.137848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239128, 36.206749, 31.016285>,  <32.163143, 36.422401, 30.943346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239128, 36.206749, 31.016285>,  <32.365772, 35.847328, 31.137848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239128, 36.206749, 31.016285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024810, 0.328125, 0.944309,
		0.948233, 0.291434, -0.126179,
		-0.316606, 0.898555, -0.303908,
		32.144146, 36.476315, 30.925112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786251, 36.284813, 31.429924>,  <32.365772, 35.847328, 31.137848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786251, 36.284813, 31.429924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449139, 36.482670, 31.345024>,  <32.246872, 36.601383, 31.294085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449139, 36.482670, 31.345024>,  <32.786251, 36.284813, 31.429924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449139, 36.482670, 31.345024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040791, 0.334497, 0.941513,
		0.536711, 0.802146, -0.261731,
		-0.842779, 0.494645, -0.212248,
		32.196304, 36.631062, 31.281349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793369, 36.787865, 31.971045>,  <32.786251, 36.284813, 31.429924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793369, 36.787865, 31.971045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428448, 36.816338, 31.809731>,  <32.209496, 36.833424, 31.712942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428448, 36.816338, 31.809731>,  <32.793369, 36.787865, 31.971045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428448, 36.816338, 31.809731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345019, 0.396891, 0.850553,
		0.220607, 0.915101, -0.337524,
		-0.912302, 0.071186, -0.403284,
		32.154758, 36.837692, 31.688745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576401, 37.422279, 32.138195>,  <32.793369, 36.787865, 31.971045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576401, 37.422279, 32.138195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233871, 37.224052, 32.080055>,  <32.028355, 37.105118, 32.045170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233871, 37.224052, 32.080055>,  <32.576401, 37.422279, 32.138195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233871, 37.224052, 32.080055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286799, 0.222269, 0.931849,
		-0.429487, 0.839649, -0.332462,
		-0.856322, -0.495567, -0.145348,
		31.976974, 37.075382, 32.036449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063614, 37.910923, 32.384293>,  <32.576401, 37.422279, 32.138195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063614, 37.910923, 32.384293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912491, 37.541115, 32.404385>,  <31.821817, 37.319229, 32.416439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912491, 37.541115, 32.404385>,  <32.063614, 37.910923, 32.384293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912491, 37.541115, 32.404385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363509, 0.198005, 0.910305,
		-0.851541, 0.325662, -0.410879,
		-0.377808, -0.924520, 0.050229,
		31.799149, 37.263760, 32.419453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422293, 38.037987, 32.627754>,  <32.063614, 37.910923, 32.384293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422293, 38.037987, 32.627754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521038, 37.654526, 32.684399>,  <31.580284, 37.424450, 32.718384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521038, 37.654526, 32.684399>,  <31.422293, 38.037987, 32.627754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521038, 37.654526, 32.684399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305354, 0.061733, 0.950236,
		-0.919684, -0.277818, -0.277487,
		0.246862, -0.958648, 0.141608,
		31.595097, 37.366932, 32.726879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795902, 37.738350, 32.998142>,  <31.422293, 38.037987, 32.627754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795902, 37.738350, 32.998142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114616, 37.510262, 33.078125>,  <31.305845, 37.373409, 33.126114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114616, 37.510262, 33.078125>,  <30.795902, 37.738350, 32.998142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114616, 37.510262, 33.078125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320543, -0.118342, 0.939812,
		-0.512234, -0.812925, -0.277072,
		0.796787, -0.570217, 0.199959,
		31.353653, 37.339195, 33.138111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616688, 37.394154, 33.547363>,  <30.795902, 37.738350, 32.998142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616688, 37.394154, 33.547363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002726, 37.300694, 33.594692>,  <31.234348, 37.244617, 33.623089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002726, 37.300694, 33.594692>,  <30.616688, 37.394154, 33.547363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002726, 37.300694, 33.594692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181033, -0.268671, 0.946067,
		-0.189256, -0.934465, -0.301591,
		0.965095, -0.233647, 0.118322,
		31.292253, 37.230598, 33.630188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622334, 36.713848, 33.830410>,  <30.616688, 37.394154, 33.547363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622334, 36.713848, 33.830410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960085, 36.910313, 33.915997>,  <31.162735, 37.028191, 33.967350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960085, 36.910313, 33.915997>,  <30.622334, 36.713848, 33.830410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960085, 36.910313, 33.915997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157159, -0.154735, 0.975376,
		0.512177, -0.857214, -0.053464,
		0.844379, 0.491163, 0.213970,
		31.213398, 37.057663, 33.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707766, 36.441788, 34.455078>,  <30.622334, 36.713848, 33.830410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707766, 36.441788, 34.455078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992601, 36.721912, 34.475063>,  <31.163504, 36.889988, 34.487057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992601, 36.721912, 34.475063>,  <30.707766, 36.441788, 34.455078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992601, 36.721912, 34.475063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020576, -0.050321, 0.998521,
		0.701788, -0.712064, -0.021424,
		0.712089, 0.700309, 0.049966,
		31.206228, 36.932007, 34.490051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235157, 36.113205, 34.851086>,  <30.707766, 36.441788, 34.455078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235157, 36.113205, 34.851086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233406, 36.512463, 34.875378>,  <31.232355, 36.752018, 34.889954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233406, 36.512463, 34.875378>,  <31.235157, 36.113205, 34.851086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233406, 36.512463, 34.875378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131637, -0.059628, 0.989503,
		0.991288, 0.012328, -0.131132,
		-0.004379, 0.998144, 0.060731,
		31.232092, 36.811905, 34.893597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734102, 36.207752, 35.331764>,  <31.235157, 36.113205, 34.851086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734102, 36.207752, 35.331764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542114, 36.558556, 35.340576>,  <31.426922, 36.769039, 35.345863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542114, 36.558556, 35.340576>,  <31.734102, 36.207752, 35.331764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542114, 36.558556, 35.340576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298172, 0.139469, 0.944268,
		0.825059, 0.459787, -0.328440,
		-0.479970, 0.877009, 0.022026,
		31.398123, 36.821659, 35.347183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239571, 36.670273, 35.635994>,  <31.734102, 36.207752, 35.331764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239571, 36.670273, 35.635994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875557, 36.830021, 35.680435>,  <31.657148, 36.925869, 35.707100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875557, 36.830021, 35.680435>,  <32.239571, 36.670273, 35.635994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875557, 36.830021, 35.680435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079953, -0.093876, 0.992368,
		0.406754, 0.911970, 0.053499,
		-0.910032, 0.399372, 0.111099,
		31.602547, 36.949833, 35.713764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810745, 36.901947, 35.374397>,  <32.239571, 36.670273, 35.635994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810745, 36.901947, 35.374397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184311, 36.845715, 35.505875>,  <33.408451, 36.811974, 35.584763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184311, 36.845715, 35.505875>,  <32.810745, 36.901947, 35.374397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184311, 36.845715, 35.505875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315355, -0.109129, -0.942678,
		0.168397, 0.984036, -0.057583,
		0.933913, -0.140585, 0.328698,
		33.464485, 36.803539, 35.604485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279743, 37.253941, 34.846035>,  <32.810745, 36.901947, 35.374397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279743, 37.253941, 34.846035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474815, 36.967899, 35.046349>,  <33.591858, 36.796272, 35.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474815, 36.967899, 35.046349>,  <33.279743, 37.253941, 34.846035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474815, 36.967899, 35.046349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457581, -0.279143, -0.844215,
		0.743495, 0.640860, 0.191086,
		0.487683, -0.715107, 0.500786,
		33.621120, 36.753368, 35.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906166, 37.367817, 34.681973>,  <33.279743, 37.253941, 34.846035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906166, 37.367817, 34.681973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911705, 36.980186, 34.780521>,  <33.915028, 36.747608, 34.839653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911705, 36.980186, 34.780521>,  <33.906166, 37.367817, 34.681973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911705, 36.980186, 34.780521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524119, -0.202802, -0.827146,
		0.851532, 0.140585, 0.505103,
		0.013849, -0.969076, 0.246376,
		33.915859, 36.689465, 34.854435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628532, 37.106487, 34.652367>,  <33.906166, 37.367817, 34.681973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628532, 37.106487, 34.652367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400475, 36.778446, 34.632889>,  <34.263638, 36.581623, 34.621204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400475, 36.778446, 34.632889>,  <34.628532, 37.106487, 34.652367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400475, 36.778446, 34.632889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453593, -0.264824, -0.850953,
		0.684971, -0.507254, 0.522979,
		-0.570147, -0.820099, -0.048690,
		34.229431, 36.532417, 34.618282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083424, 36.643105, 34.495583>,  <34.628532, 37.106487, 34.652367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083424, 36.643105, 34.495583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722752, 36.505386, 34.390949>,  <34.506348, 36.422756, 34.328171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722752, 36.505386, 34.390949>,  <35.083424, 36.643105, 34.495583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722752, 36.505386, 34.390949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387273, -0.373969, -0.842714,
		0.192320, -0.861166, 0.470539,
		-0.901683, -0.344298, -0.261584,
		34.452248, 36.402096, 34.312473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258694, 36.030075, 34.189602>,  <35.083424, 36.643105, 34.495583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258694, 36.030075, 34.189602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881752, 36.082455, 34.066425>,  <34.655586, 36.113884, 33.992519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881752, 36.082455, 34.066425>,  <35.258694, 36.030075, 34.189602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881752, 36.082455, 34.066425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253445, -0.321577, -0.912334,
		-0.218498, -0.937785, 0.269849,
		-0.942350, 0.130952, -0.307941,
		34.599049, 36.121742, 33.974045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176800, 35.363636, 33.814255>,  <35.258694, 36.030075, 34.189602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176800, 35.363636, 33.814255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912094, 35.637215, 33.691425>,  <34.753273, 35.801361, 33.617725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912094, 35.637215, 33.691425>,  <35.176800, 35.363636, 33.814255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912094, 35.637215, 33.691425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170703, -0.261374, -0.950023,
		-0.730023, -0.681107, 0.056216,
		-0.661761, 0.683942, -0.307077,
		34.713566, 35.842396, 33.599304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782745, 35.090042, 33.230927>,  <35.176800, 35.363636, 33.814255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782745, 35.090042, 33.230927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731472, 35.485935, 33.205658>,  <34.700706, 35.723473, 33.190495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731472, 35.485935, 33.205658>,  <34.782745, 35.090042, 33.230927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731472, 35.485935, 33.205658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229916, -0.032307, -0.972674,
		-0.964732, -0.139208, -0.223415,
		-0.128186, 0.989736, -0.063174,
		34.693016, 35.782856, 33.186707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436314, 35.163212, 32.648655>,  <34.782745, 35.090042, 33.230927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436314, 35.163212, 32.648655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590935, 35.527672, 32.705757>,  <34.683708, 35.746349, 32.740017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590935, 35.527672, 32.705757>,  <34.436314, 35.163212, 32.648655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590935, 35.527672, 32.705757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116642, 0.105247, -0.987582,
		-0.914862, 0.398403, -0.065595,
		0.386552, 0.911152, 0.142757,
		34.706902, 35.801018, 32.748585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122601, 35.457802, 32.123608>,  <34.436314, 35.163212, 32.648655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122601, 35.457802, 32.123608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417877, 35.708923, 32.222347>,  <34.595043, 35.859596, 32.281590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417877, 35.708923, 32.222347>,  <34.122601, 35.457802, 32.123608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417877, 35.708923, 32.222347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148098, 0.206173, -0.967243,
		-0.658135, 0.750567, 0.059219,
		0.738191, 0.627806, 0.246847,
		34.639336, 35.897266, 32.296402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993034, 36.148083, 31.832026>,  <34.122601, 35.457802, 32.123608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993034, 36.148083, 31.832026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387081, 36.119843, 31.894711>,  <34.623508, 36.102898, 31.932322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387081, 36.119843, 31.894711>,  <33.993034, 36.148083, 31.832026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387081, 36.119843, 31.894711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168158, 0.207041, -0.963772,
		0.035600, 0.975781, 0.215833,
		0.985117, -0.070605, 0.156714,
		34.682617, 36.098660, 31.941725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381878, 36.785423, 31.713247>,  <33.993034, 36.148083, 31.832026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381878, 36.785423, 31.713247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665401, 36.506077, 31.673510>,  <34.835514, 36.338467, 31.649666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665401, 36.506077, 31.673510>,  <34.381878, 36.785423, 31.713247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665401, 36.506077, 31.673510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173083, 0.308718, -0.935273,
		0.683835, 0.645736, 0.339698,
		0.708810, -0.698368, -0.099346,
		34.878044, 36.296566, 31.643705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868351, 37.167866, 31.329842>,  <34.381878, 36.785423, 31.713247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868351, 37.167866, 31.329842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961933, 36.780334, 31.297272>,  <35.018082, 36.547813, 31.277729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961933, 36.780334, 31.297272>,  <34.868351, 37.167866, 31.329842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961933, 36.780334, 31.297272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249319, 0.140733, -0.958141,
		0.939737, 0.203860, 0.274474,
		0.233954, -0.968832, -0.081426,
		35.032120, 36.489685, 31.272844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571125, 37.154060, 31.051098>,  <34.868351, 37.167866, 31.329842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571125, 37.154060, 31.051098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415367, 36.793617, 30.974800>,  <35.321911, 36.577351, 30.929022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415367, 36.793617, 30.974800>,  <35.571125, 37.154060, 31.051098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415367, 36.793617, 30.974800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493658, -0.029342, -0.869161,
		0.777607, -0.432610, 0.456262,
		-0.389395, -0.901103, -0.190745,
		35.298550, 36.523285, 30.917576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179672, 36.758953, 30.785498>,  <35.571125, 37.154060, 31.051098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179672, 36.758953, 30.785498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860279, 36.543098, 30.678747>,  <35.668644, 36.413586, 30.614697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860279, 36.543098, 30.678747>,  <36.179672, 36.758953, 30.785498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860279, 36.543098, 30.678747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423982, -0.189354, -0.885655,
		0.427399, -0.820327, 0.379991,
		-0.798479, -0.539638, -0.266874,
		35.620735, 36.381207, 30.598684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461979, 36.161823, 30.339191>,  <36.179672, 36.758953, 30.785498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461979, 36.161823, 30.339191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089577, 36.250828, 30.223454>,  <35.866135, 36.304230, 30.154011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089577, 36.250828, 30.223454>,  <36.461979, 36.161823, 30.339191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089577, 36.250828, 30.223454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288587, -0.036644, -0.956752,
		-0.223489, -0.974242, -0.030098,
		-0.931005, 0.222509, -0.289343,
		35.810276, 36.317581, 30.136650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304344, 35.679352, 29.849907>,  <36.461979, 36.161823, 30.339191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304344, 35.679352, 29.849907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055828, 35.984798, 29.779602>,  <35.906719, 36.168064, 29.737419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055828, 35.984798, 29.779602>,  <36.304344, 35.679352, 29.849907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055828, 35.984798, 29.779602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160270, -0.095728, -0.982420,
		-0.767014, -0.638539, -0.062909,
		-0.621291, 0.763613, -0.175764,
		35.869442, 36.213882, 29.726873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007763, 35.480156, 29.316263>,  <36.304344, 35.679352, 29.849907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007763, 35.480156, 29.316263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945045, 35.874809, 29.334009>,  <35.907413, 36.111603, 29.344656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945045, 35.874809, 29.334009>,  <36.007763, 35.480156, 29.316263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945045, 35.874809, 29.334009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178304, 0.072460, -0.981304,
		-0.971403, -0.145950, -0.187282,
		-0.156792, 0.986635, 0.044365,
		35.898006, 36.170799, 29.347319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582806, 35.597778, 28.756416>,  <36.007763, 35.480156, 29.316263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582806, 35.597778, 28.756416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708866, 35.975494, 28.794334>,  <35.784504, 36.202126, 28.817085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708866, 35.975494, 28.794334>,  <35.582806, 35.597778, 28.756416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708866, 35.975494, 28.794334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131407, 0.055506, -0.989773,
		-0.939899, 0.324387, -0.106594,
		0.315153, 0.944295, 0.094797,
		35.803413, 36.258781, 28.822773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260670, 35.940002, 28.259171>,  <35.582806, 35.597778, 28.756416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260670, 35.940002, 28.259171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560650, 36.185883, 28.356918>,  <35.740639, 36.333412, 28.415567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560650, 36.185883, 28.356918>,  <35.260670, 35.940002, 28.259171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560650, 36.185883, 28.356918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231792, 0.101804, -0.967424,
		-0.619555, 0.782162, -0.066135,
		0.749950, 0.614702, 0.244372,
		35.785633, 36.370293, 28.430229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148315, 36.600426, 27.848993>,  <35.260670, 35.940002, 28.259171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148315, 36.600426, 27.848993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531010, 36.587734, 27.964687>,  <35.760624, 36.580120, 28.034103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531010, 36.587734, 27.964687>,  <35.148315, 36.600426, 27.848993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531010, 36.587734, 27.964687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289279, 0.210702, -0.933768,
		-0.031312, 0.977035, 0.210764,
		0.956733, -0.031731, 0.289233,
		35.818031, 36.578217, 28.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425426, 37.118408, 27.387024>,  <35.148315, 36.600426, 27.848993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425426, 37.118408, 27.387024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714371, 36.887920, 27.539949>,  <35.887737, 36.749626, 27.631704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714371, 36.887920, 27.539949>,  <35.425426, 37.118408, 27.387024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714371, 36.887920, 27.539949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355570, -0.164680, -0.920028,
		0.593099, 0.800531, 0.085929,
		0.722360, -0.576221, 0.382316,
		35.931080, 36.715054, 27.654644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186558, 37.333984, 27.265633>,  <35.425426, 37.118408, 27.387024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186558, 37.333984, 27.265633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209694, 36.936146, 27.300135>,  <36.223576, 36.697445, 27.320835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209694, 36.936146, 27.300135>,  <36.186558, 37.333984, 27.265633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209694, 36.936146, 27.300135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131026, -0.078087, -0.988299,
		0.989690, 0.068468, 0.125800,
		0.057844, -0.994592, 0.086253,
		36.227047, 36.637768, 27.326010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687626, 36.998508, 26.803505>,  <36.186558, 37.333984, 27.265633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687626, 36.998508, 26.803505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493805, 36.665562, 26.911118>,  <36.377514, 36.465794, 26.975685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493805, 36.665562, 26.911118>,  <36.687626, 36.998508, 26.803505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493805, 36.665562, 26.911118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300734, -0.447309, -0.842303,
		0.821444, -0.327231, 0.467064,
		-0.484550, -0.832367, 0.269029,
		36.348438, 36.415852, 26.991827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146294, 36.527225, 26.639887>,  <36.687626, 36.998508, 26.803505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146294, 36.527225, 26.639887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787689, 36.350494, 26.652908>,  <36.572525, 36.244457, 26.660721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787689, 36.350494, 26.652908>,  <37.146294, 36.527225, 26.639887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787689, 36.350494, 26.652908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277400, -0.617127, -0.736345,
		0.345423, -0.651111, 0.675823,
		-0.896511, -0.441824, 0.032552,
		36.518738, 36.217949, 26.662674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245869, 35.914368, 26.279053>,  <37.146294, 36.527225, 26.639887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245869, 35.914368, 26.279053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846878, 35.939030, 26.265028>,  <36.607483, 35.953827, 26.256613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846878, 35.939030, 26.265028>,  <37.245869, 35.914368, 26.279053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846878, 35.939030, 26.265028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001405, -0.477023, -0.878890,
		-0.070916, -0.876725, 0.475735,
		-0.997481, 0.061659, -0.035061,
		36.547634, 35.957527, 26.254509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046913, 35.267632, 26.111305>,  <37.245869, 35.914368, 26.279053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046913, 35.267632, 26.111305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743736, 35.510345, 26.015528>,  <36.561829, 35.655972, 25.958061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743736, 35.510345, 26.015528>,  <37.046913, 35.267632, 26.111305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743736, 35.510345, 26.015528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124445, -0.494828, -0.860034,
		-0.640338, -0.622060, 0.450564,
		-0.757945, 0.606783, -0.239445,
		36.516354, 35.692379, 25.943695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529392, 34.825073, 25.934263>,  <37.046913, 35.267632, 26.111305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529392, 34.825073, 25.934263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446293, 35.154636, 25.723354>,  <36.396435, 35.352375, 25.596809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446293, 35.154636, 25.723354>,  <36.529392, 34.825073, 25.934263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446293, 35.154636, 25.723354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090187, -0.552868, -0.828374,
		-0.974016, -0.124539, 0.189162,
		-0.207746, 0.823909, -0.527271,
		36.383968, 35.401810, 25.565172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990620, 34.633804, 25.452744>,  <36.529392, 34.825073, 25.934263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990620, 34.633804, 25.452744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132256, 34.968304, 25.285267>,  <36.217236, 35.169003, 25.184780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132256, 34.968304, 25.285267>,  <35.990620, 34.633804, 25.452744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132256, 34.968304, 25.285267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063833, -0.425043, -0.902920,
		-0.933030, 0.346442, -0.097124,
		0.354091, 0.836251, -0.418692,
		36.238483, 35.219177, 25.159658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594391, 34.638519, 24.862968>,  <35.990620, 34.633804, 25.452744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594391, 34.638519, 24.862968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883202, 34.899014, 24.769529>,  <36.056488, 35.055309, 24.713467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883202, 34.899014, 24.769529>,  <35.594391, 34.638519, 24.862968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883202, 34.899014, 24.769529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024297, -0.361292, -0.932136,
		-0.691440, 0.667350, -0.276686,
		0.722026, 0.651238, -0.233597,
		36.099808, 35.094383, 24.699450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468819, 34.911804, 24.204741>,  <35.594391, 34.638519, 24.862968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468819, 34.911804, 24.204741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861275, 34.976768, 24.246672>,  <36.096748, 35.015747, 24.271832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861275, 34.976768, 24.246672>,  <35.468819, 34.911804, 24.204741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861275, 34.976768, 24.246672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135241, -0.189248, -0.972571,
		-0.138120, 0.968404, -0.207643,
		0.981139, 0.162413, 0.104829,
		36.155617, 35.025494, 24.278120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771648, 35.475620, 23.671717>,  <35.468819, 34.911804, 24.204741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771648, 35.475620, 23.671717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085644, 35.248558, 23.770964>,  <36.274040, 35.112320, 23.830511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085644, 35.248558, 23.770964>,  <35.771648, 35.475620, 23.671717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085644, 35.248558, 23.770964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200753, -0.145810, -0.968730,
		0.586079, 0.810254, -0.000502,
		0.784990, -0.567652, 0.248117,
		36.321140, 35.078262, 23.845398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207512, 35.570862, 23.145630>,  <35.771648, 35.475620, 23.671717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207512, 35.570862, 23.145630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338863, 35.232929, 23.314590>,  <36.417675, 35.030170, 23.415966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338863, 35.232929, 23.314590>,  <36.207512, 35.570862, 23.145630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338863, 35.232929, 23.314590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274385, -0.342594, -0.898522,
		0.903814, 0.410957, 0.119309,
		0.328380, -0.844833, 0.422402,
		36.437378, 34.979481, 23.441311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838238, 35.473770, 22.745626>,  <36.207512, 35.570862, 23.145630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838238, 35.473770, 22.745626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773270, 35.119812, 22.920250>,  <36.734287, 34.907436, 23.025024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773270, 35.119812, 22.920250>,  <36.838238, 35.473770, 22.745626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773270, 35.119812, 22.920250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403894, -0.463293, -0.788815,
		0.900272, 0.048203, 0.432651,
		-0.162421, -0.884893, 0.436559,
		36.724545, 34.854343, 23.051218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382519, 35.160610, 22.611511>,  <36.838238, 35.473770, 22.745626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382519, 35.160610, 22.611511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143867, 34.851295, 22.697367>,  <37.000675, 34.665707, 22.748880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143867, 34.851295, 22.697367>,  <37.382519, 35.160610, 22.611511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143867, 34.851295, 22.697367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423221, -0.530420, -0.734533,
		0.681850, -0.347402, 0.643732,
		-0.596627, -0.773282, 0.214639,
		36.964878, 34.619312, 22.761759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836769, 34.560280, 22.645313>,  <37.382519, 35.160610, 22.611511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836769, 34.560280, 22.645313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461823, 34.447758, 22.563133>,  <37.236855, 34.380245, 22.513826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461823, 34.447758, 22.563133>,  <37.836769, 34.560280, 22.645313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461823, 34.447758, 22.563133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340488, -0.615402, -0.710878,
		0.073539, -0.736308, 0.672639,
		-0.937368, -0.281303, -0.205448,
		37.180611, 34.363365, 22.501499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881081, 33.896290, 22.472719>,  <37.836769, 34.560280, 22.645313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881081, 33.896290, 22.472719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520859, 33.969894, 22.315163>,  <37.304726, 34.014057, 22.220629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520859, 33.969894, 22.315163>,  <37.881081, 33.896290, 22.472719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520859, 33.969894, 22.315163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222089, -0.584167, -0.780657,
		-0.373745, -0.790500, 0.485206,
		-0.900551, 0.184007, -0.393891,
		37.250694, 34.025097, 22.196995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725693, 33.232536, 22.229593>,  <37.881081, 33.896290, 22.472719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725693, 33.232536, 22.229593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501858, 33.507172, 22.043926>,  <37.367558, 33.671955, 21.932526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501858, 33.507172, 22.043926>,  <37.725693, 33.232536, 22.229593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501858, 33.507172, 22.043926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153187, -0.464729, -0.872101,
		-0.814489, -0.559124, 0.154881,
		-0.559591, 0.686591, -0.464167,
		37.333981, 33.713150, 21.904676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412350, 33.184761, 22.547100>,  <37.725693, 33.232536, 22.229593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412350, 33.184761, 22.547100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715473, 32.927185, 22.505001>,  <38.897346, 32.772640, 22.479742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715473, 32.927185, 22.505001>,  <38.412350, 33.184761, 22.547100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715473, 32.927185, 22.505001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068180, -0.238566, 0.968730,
		-0.648908, -0.726934, -0.224691,
		0.757806, -0.643936, -0.105246,
		38.942814, 32.734005, 22.473427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160141, 32.575249, 22.833637>,  <38.412350, 33.184761, 22.547100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160141, 32.575249, 22.833637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559937, 32.562920, 22.830427>,  <38.799816, 32.555523, 22.828501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559937, 32.562920, 22.830427>,  <38.160141, 32.575249, 22.833637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559937, 32.562920, 22.830427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006527, -0.048465, 0.998804,
		-0.031157, -0.998350, -0.048239,
		0.999494, -0.030805, -0.008026,
		38.859783, 32.553673, 22.828020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330601, 31.995045, 23.216572>,  <38.160141, 32.575249, 22.833637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330601, 31.995045, 23.216572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653614, 32.229321, 23.188683>,  <38.847420, 32.369884, 23.171949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653614, 32.229321, 23.188683>,  <38.330601, 31.995045, 23.216572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653614, 32.229321, 23.188683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141823, -0.078063, 0.986809,
		0.572520, -0.806768, -0.146103,
		0.807531, 0.585689, -0.069725,
		38.895874, 32.405025, 23.167765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838024, 31.610569, 23.581318>,  <38.330601, 31.995045, 23.216572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838024, 31.610569, 23.581318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973751, 31.986546, 23.566475>,  <39.055187, 32.212132, 23.557570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973751, 31.986546, 23.566475>,  <38.838024, 31.610569, 23.581318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973751, 31.986546, 23.566475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206026, -0.035767, 0.977893,
		0.917834, -0.339458, -0.205789,
		0.339314, 0.939941, -0.037109,
		39.075546, 32.268528, 23.555342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326435, 31.578079, 24.164402>,  <38.838024, 31.610569, 23.581318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326435, 31.578079, 24.164402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270615, 31.963362, 24.072527>,  <39.237122, 32.194530, 24.017403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270615, 31.963362, 24.072527>,  <39.326435, 31.578079, 24.164402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270615, 31.963362, 24.072527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282016, 0.261010, 0.923223,
		0.949207, 0.064059, -0.308063,
		-0.139549, 0.963208, -0.229687,
		39.228748, 32.252323, 24.003620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904297, 31.847412, 24.511137>,  <39.326435, 31.578079, 24.164402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904297, 31.847412, 24.511137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620777, 32.126328, 24.468426>,  <39.450665, 32.293674, 24.442799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620777, 32.126328, 24.468426>,  <39.904297, 31.847412, 24.511137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620777, 32.126328, 24.468426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145811, 0.292920, 0.944954,
		0.690180, 0.654210, -0.309292,
		-0.708795, 0.697286, -0.106776,
		39.408138, 32.335514, 24.436394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067932, 32.393589, 24.894442>,  <39.904297, 31.847412, 24.511137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067932, 32.393589, 24.894442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681561, 32.492489, 24.863867>,  <39.449738, 32.551826, 24.845522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681561, 32.492489, 24.863867>,  <40.067932, 32.393589, 24.894442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681561, 32.492489, 24.863867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032621, 0.409335, 0.911801,
		0.256727, 0.878245, -0.403456,
		-0.965933, 0.247245, -0.076438,
		39.391781, 32.566662, 24.840935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970688, 33.117542, 25.060776>,  <40.067932, 32.393589, 24.894442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970688, 33.117542, 25.060776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613811, 32.942959, 25.107254>,  <39.399685, 32.838211, 25.135141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613811, 32.942959, 25.107254>,  <39.970688, 33.117542, 25.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613811, 32.942959, 25.107254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113224, 0.465178, 0.877946,
		-0.437236, 0.770139, -0.464445,
		-0.892191, -0.436456, 0.116194,
		39.346153, 32.812023, 25.142113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444073, 33.640926, 25.343140>,  <39.970688, 33.117542, 25.060776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444073, 33.640926, 25.343140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287266, 33.284943, 25.436340>,  <39.193180, 33.071350, 25.492260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287266, 33.284943, 25.436340>,  <39.444073, 33.640926, 25.343140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287266, 33.284943, 25.436340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242708, 0.344352, 0.906926,
		-0.887363, 0.298983, -0.350994,
		-0.392021, -0.889961, 0.233000,
		39.169659, 33.017956, 25.506241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846279, 33.864624, 25.719915>,  <39.444073, 33.640926, 25.343140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846279, 33.864624, 25.719915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877125, 33.469868, 25.776623>,  <38.895634, 33.233013, 25.810648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877125, 33.469868, 25.776623>,  <38.846279, 33.864624, 25.719915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877125, 33.469868, 25.776623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305981, 0.111906, 0.945437,
		-0.948909, -0.116284, -0.293341,
		0.077113, -0.986891, 0.141770,
		38.900257, 33.173801, 25.819153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201736, 33.507984, 26.134779>,  <38.846279, 33.864624, 25.719915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201736, 33.507984, 26.134779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512642, 33.264091, 26.196852>,  <38.699184, 33.117756, 26.234095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512642, 33.264091, 26.196852>,  <38.201736, 33.507984, 26.134779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512642, 33.264091, 26.196852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073022, 0.157556, 0.984807,
		-0.624919, -0.776789, 0.077939,
		0.777267, -0.609734, 0.155183,
		38.745823, 33.081173, 26.243406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957020, 33.138554, 26.642807>,  <38.201736, 33.507984, 26.134779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957020, 33.138554, 26.642807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352909, 33.081375, 26.644201>,  <38.590443, 33.047066, 26.645039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352909, 33.081375, 26.644201>,  <37.957020, 33.138554, 26.642807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352909, 33.081375, 26.644201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000672, 0.019739, 0.999805,
		-0.142991, -0.989533, 0.019440,
		0.989724, -0.142950, 0.003487,
		38.649826, 33.038490, 26.645247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029644, 32.594090, 26.984800>,  <37.957020, 33.138554, 26.642807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029644, 32.594090, 26.984800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379715, 32.784420, 27.019796>,  <38.589756, 32.898617, 27.040794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379715, 32.784420, 27.019796>,  <38.029644, 32.594090, 26.984800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379715, 32.784420, 27.019796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085929, -0.025086, 0.995985,
		0.476108, -0.879183, 0.018932,
		0.875178, 0.475824, 0.087491,
		38.642269, 32.927166, 27.046043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467377, 32.268497, 27.490211>,  <38.029644, 32.594090, 26.984800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467377, 32.268497, 27.490211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559292, 32.657135, 27.467556>,  <38.614441, 32.890316, 27.453962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559292, 32.657135, 27.467556>,  <38.467377, 32.268497, 27.490211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559292, 32.657135, 27.467556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009150, 0.060348, 0.998136,
		0.973199, -0.228837, 0.022757,
		0.229784, 0.971592, -0.056637,
		38.628227, 32.948612, 27.450565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844967, 32.433918, 28.090088>,  <38.467377, 32.268497, 27.490211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844967, 32.433918, 28.090088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757099, 32.802574, 27.962139>,  <38.704380, 33.023769, 27.885370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757099, 32.802574, 27.962139>,  <38.844967, 32.433918, 28.090088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757099, 32.802574, 27.962139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009275, 0.325892, 0.945362,
		0.975531, 0.210632, -0.063040,
		-0.219668, 0.921644, -0.319872,
		38.691200, 33.079067, 27.866179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363453, 32.886875, 28.454519>,  <38.844967, 32.433918, 28.090088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363453, 32.886875, 28.454519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037220, 33.086620, 28.337587>,  <38.841480, 33.206467, 28.267429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037220, 33.086620, 28.337587>,  <39.363453, 32.886875, 28.454519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037220, 33.086620, 28.337587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239031, 0.169326, 0.956134,
		0.526956, 0.849686, -0.018737,
		-0.815587, 0.499362, -0.292329,
		38.792545, 33.236427, 28.249889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255756, 33.467705, 28.938820>,  <39.363453, 32.886875, 28.454519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255756, 33.467705, 28.938820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901970, 33.450302, 28.752993>,  <38.689697, 33.439861, 28.641497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901970, 33.450302, 28.752993>,  <39.255756, 33.467705, 28.938820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901970, 33.450302, 28.752993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465448, 0.152149, 0.871899,
		0.032754, 0.987400, -0.154819,
		-0.884469, -0.043502, -0.464567,
		38.636631, 33.437252, 28.613623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707302, 34.104080, 28.993052>,  <39.255756, 33.467705, 28.938820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707302, 34.104080, 28.993052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468338, 33.794437, 28.909279>,  <38.324959, 33.608650, 28.859015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468338, 33.794437, 28.909279>,  <38.707302, 34.104080, 28.993052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468338, 33.794437, 28.909279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543740, 0.199044, 0.815309,
		-0.589449, 0.600950, -0.539823,
		-0.597408, -0.774107, -0.209434,
		38.289116, 33.562206, 28.846449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109863, 34.378315, 29.071320>,  <38.707302, 34.104080, 28.993052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109863, 34.378315, 29.071320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045086, 33.985703, 29.112041>,  <38.006218, 33.750134, 29.136475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045086, 33.985703, 29.112041>,  <38.109863, 34.378315, 29.071320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045086, 33.985703, 29.112041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643738, 0.183273, 0.742975,
		-0.747914, 0.054784, -0.661531,
		-0.161944, -0.981534, 0.101806,
		37.996502, 33.691242, 29.142584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398354, 34.324760, 29.041233>,  <38.109863, 34.378315, 29.071320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398354, 34.324760, 29.041233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493172, 33.981892, 29.224127>,  <37.550060, 33.776169, 29.333862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493172, 33.981892, 29.224127>,  <37.398354, 34.324760, 29.041233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493172, 33.981892, 29.224127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648479, 0.210839, 0.731452,
		-0.723384, -0.469891, -0.505882,
		0.237043, -0.857175, 0.457232,
		37.564285, 33.724739, 29.361296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762794, 34.116814, 29.329039>,  <37.398354, 34.324760, 29.041233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762794, 34.116814, 29.329039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023891, 33.879780, 29.517836>,  <37.180550, 33.737560, 29.631113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023891, 33.879780, 29.517836>,  <36.762794, 34.116814, 29.329039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023891, 33.879780, 29.517836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475354, 0.164749, 0.864232,
		-0.589888, -0.788483, -0.174147,
		0.652742, -0.592581, 0.471992,
		37.219715, 33.702007, 29.659433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340473, 33.547791, 29.746517>,  <36.762794, 34.116814, 29.329039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340473, 33.547791, 29.746517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703468, 33.622673, 29.896938>,  <36.921265, 33.667603, 29.987190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703468, 33.622673, 29.896938>,  <36.340473, 33.547791, 29.746517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703468, 33.622673, 29.896938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411005, 0.210679, 0.886955,
		0.086820, -0.959462, 0.268133,
		0.907490, 0.187209, 0.376052,
		36.975716, 33.678837, 30.009754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247753, 33.243404, 30.465750>,  <36.340473, 33.547791, 29.746517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247753, 33.243404, 30.465750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565598, 33.485634, 30.448408>,  <36.756306, 33.630970, 30.438004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565598, 33.485634, 30.448408>,  <36.247753, 33.243404, 30.465750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565598, 33.485634, 30.448408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172877, 0.294137, 0.939998,
		0.581986, -0.739437, 0.338414,
		0.794610, 0.605570, -0.043352,
		36.803982, 33.667305, 30.435402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629211, 33.110233, 31.085508>,  <36.247753, 33.243404, 30.465750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629211, 33.110233, 31.085508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733803, 33.477024, 30.964991>,  <36.796558, 33.697098, 30.892679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733803, 33.477024, 30.964991>,  <36.629211, 33.110233, 31.085508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733803, 33.477024, 30.964991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218792, 0.360338, 0.906800,
		0.940085, -0.171185, 0.294848,
		0.261475, 0.916980, -0.301295,
		36.812244, 33.752117, 30.874601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911293, 33.366245, 31.675983>,  <36.629211, 33.110233, 31.085508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911293, 33.366245, 31.675983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918037, 33.685165, 31.434645>,  <36.922085, 33.876518, 31.289841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918037, 33.685165, 31.434645>,  <36.911293, 33.366245, 31.675983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918037, 33.685165, 31.434645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073939, 0.602775, 0.794478,
		0.997120, 0.031218, 0.069113,
		0.016858, 0.797300, -0.603347,
		36.923096, 33.924355, 31.253641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446461, 33.770016, 31.912060>,  <36.911293, 33.366245, 31.675983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446461, 33.770016, 31.912060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174477, 33.999847, 31.729841>,  <37.011288, 34.137745, 31.620510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174477, 33.999847, 31.729841>,  <37.446461, 33.770016, 31.912060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174477, 33.999847, 31.729841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120732, 0.525058, 0.842459,
		0.723243, 0.627836, -0.287649,
		-0.679958, 0.574575, -0.455544,
		36.970490, 34.172218, 31.593178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687714, 34.414009, 31.915071>,  <37.446461, 33.770016, 31.912060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687714, 34.414009, 31.915071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292831, 34.473949, 31.893282>,  <37.055901, 34.509914, 31.880209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292831, 34.473949, 31.893282>,  <37.687714, 34.414009, 31.915071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292831, 34.473949, 31.893282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042894, 0.578656, 0.814443,
		0.153564, 0.801687, -0.577681,
		-0.987207, 0.149848, -0.054473,
		36.996670, 34.518906, 31.876940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658844, 35.130318, 32.024723>,  <37.687714, 34.414009, 31.915071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658844, 35.130318, 32.024723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296223, 34.985123, 32.110886>,  <37.078651, 34.898006, 32.162582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296223, 34.985123, 32.110886>,  <37.658844, 35.130318, 32.024723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296223, 34.985123, 32.110886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056061, 0.609354, 0.790914,
		-0.418352, 0.704930, -0.572761,
		-0.906553, -0.362990, 0.215406,
		37.024258, 34.876225, 32.175507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361252, 35.715271, 32.316280>,  <37.658844, 35.130318, 32.024723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361252, 35.715271, 32.316280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117413, 35.417412, 32.425014>,  <36.971107, 35.238697, 32.490253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117413, 35.417412, 32.425014>,  <37.361252, 35.715271, 32.316280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117413, 35.417412, 32.425014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035696, 0.368352, 0.929001,
		-0.791906, 0.556614, -0.251128,
		-0.609599, -0.744646, 0.271831,
		36.934532, 35.194019, 32.506565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734726, 35.993301, 32.559299>,  <37.361252, 35.715271, 32.316280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734726, 35.993301, 32.559299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778030, 35.626987, 32.714024>,  <36.804012, 35.407200, 32.806858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778030, 35.626987, 32.714024>,  <36.734726, 35.993301, 32.559299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778030, 35.626987, 32.714024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061768, 0.394545, 0.916798,
		-0.992201, -0.075363, 0.099281,
		0.108264, -0.915781, 0.386813,
		36.810509, 35.352253, 32.830067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296993, 35.992729, 33.110855>,  <36.734726, 35.993301, 32.559299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296993, 35.992729, 33.110855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545601, 35.691780, 33.198166>,  <36.694767, 35.511211, 33.250553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545601, 35.691780, 33.198166>,  <36.296993, 35.992729, 33.110855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545601, 35.691780, 33.198166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051546, 0.238751, 0.969712,
		-0.781700, -0.613947, 0.109606,
		0.621520, -0.752374, 0.218278,
		36.732056, 35.466068, 33.263649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057724, 35.704567, 33.761528>,  <36.296993, 35.992729, 33.110855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057724, 35.704567, 33.761528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436203, 35.576721, 33.741333>,  <36.663292, 35.500015, 33.729218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436203, 35.576721, 33.741333>,  <36.057724, 35.704567, 33.761528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436203, 35.576721, 33.741333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086696, 0.100089, 0.991194,
		-0.311746, -0.942247, 0.122414,
		0.946202, -0.319614, -0.050487,
		36.720062, 35.480839, 33.726189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188747, 35.189087, 34.378685>,  <36.057724, 35.704567, 33.761528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188747, 35.189087, 34.378685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547367, 35.289471, 34.232685>,  <36.762539, 35.349701, 34.145084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547367, 35.289471, 34.232685>,  <36.188747, 35.189087, 34.378685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547367, 35.289471, 34.232685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392141, -0.066474, 0.917500,
		0.205993, -0.965712, -0.158009,
		0.896544, 0.250960, -0.365002,
		36.816330, 35.364758, 34.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607952, 34.733467, 34.836315>,  <36.188747, 35.189087, 34.378685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607952, 34.733467, 34.836315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840740, 34.995842, 34.644043>,  <36.980415, 35.153267, 34.528679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840740, 34.995842, 34.644043>,  <36.607952, 34.733467, 34.836315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840740, 34.995842, 34.644043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643437, -0.009965, 0.765434,
		0.497288, -0.754749, -0.427854,
		0.581975, 0.655938, -0.480678,
		37.015331, 35.192623, 34.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377792, 34.481472, 34.862488>,  <36.607952, 34.733467, 34.836315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377792, 34.481472, 34.862488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334457, 34.877762, 34.829697>,  <37.308456, 35.115536, 34.810020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334457, 34.877762, 34.829697>,  <37.377792, 34.481472, 34.862488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334457, 34.877762, 34.829697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541270, 0.127952, 0.831056,
		0.833841, 0.045659, -0.550113,
		-0.108334, 0.990729, -0.081978,
		37.301956, 35.174980, 34.805103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025822, 34.673008, 34.906139>,  <37.377792, 34.481472, 34.862488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025822, 34.673008, 34.906139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794235, 34.987076, 34.994049>,  <37.655281, 35.175518, 35.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794235, 34.987076, 34.994049>,  <38.025822, 34.673008, 34.906139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794235, 34.987076, 34.994049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580180, 0.207341, 0.787656,
		0.572874, 0.583541, -0.575583,
		-0.578971, 0.785169, 0.219778,
		37.620544, 35.222626, 35.059982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443054, 35.219967, 35.203835>,  <38.025822, 34.673008, 34.906139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443054, 35.219967, 35.203835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086025, 35.347809, 35.331062>,  <37.871807, 35.424515, 35.407398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086025, 35.347809, 35.331062>,  <38.443054, 35.219967, 35.203835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086025, 35.347809, 35.331062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422309, 0.345346, 0.838088,
		0.158015, 0.882376, -0.443219,
		-0.892573, 0.319606, 0.318066,
		37.818253, 35.443691, 35.426483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601906, 35.733192, 35.618069>,  <38.443054, 35.219967, 35.203835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601906, 35.733192, 35.618069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229118, 35.666580, 35.746883>,  <38.005447, 35.626614, 35.824173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229118, 35.666580, 35.746883>,  <38.601906, 35.733192, 35.618069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229118, 35.666580, 35.746883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223581, 0.435235, 0.872114,
		-0.285391, 0.884782, -0.368392,
		-0.931967, -0.166528, 0.322033,
		37.949528, 35.616623, 35.843494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406631, 36.308289, 36.022614>,  <38.601906, 35.733192, 35.618069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406631, 36.308289, 36.022614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137188, 36.032230, 36.128407>,  <37.975521, 35.866596, 36.191883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137188, 36.032230, 36.128407>,  <38.406631, 36.308289, 36.022614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137188, 36.032230, 36.128407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077668, 0.289775, 0.953938,
		-0.734994, 0.663125, -0.141594,
		-0.673611, -0.690141, 0.264486,
		37.935104, 35.825188, 36.207752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896584, 36.696438, 36.539265>,  <38.406631, 36.308289, 36.022614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896584, 36.696438, 36.539265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865353, 36.301762, 36.596310>,  <37.846615, 36.064957, 36.630535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865353, 36.301762, 36.596310>,  <37.896584, 36.696438, 36.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865353, 36.301762, 36.596310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096553, 0.134894, 0.986145,
		-0.992261, 0.090768, 0.084735,
		-0.078080, -0.986694, 0.142614,
		37.841930, 36.005753, 36.639095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431343, 36.655205, 36.989716>,  <37.896584, 36.696438, 36.539265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431343, 36.655205, 36.989716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663624, 36.331448, 37.024742>,  <37.802994, 36.137196, 37.045757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663624, 36.331448, 37.024742>,  <37.431343, 36.655205, 36.989716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663624, 36.331448, 37.024742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017931, 0.120252, 0.992581,
		-0.813916, -0.574828, 0.084344,
		0.580706, -0.809390, 0.087568,
		37.837837, 36.088631, 37.051014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101711, 36.226776, 37.461090>,  <37.431343, 36.655205, 36.989716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101711, 36.226776, 37.461090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460438, 36.049950, 37.468063>,  <37.675674, 35.943851, 37.472248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460438, 36.049950, 37.468063>,  <37.101711, 36.226776, 37.461090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460438, 36.049950, 37.468063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017782, 0.003367, 0.999836,
		-0.442055, -0.896975, -0.004841,
		0.896811, -0.442069, 0.017438,
		37.729481, 35.917328, 37.473293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033524, 35.794212, 37.930443>,  <37.101711, 36.226776, 37.461090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033524, 35.794212, 37.930443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430668, 35.828491, 37.897259>,  <37.668953, 35.849056, 37.877350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430668, 35.828491, 37.897259>,  <37.033524, 35.794212, 37.930443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430668, 35.828491, 37.897259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099526, -0.211931, 0.972203,
		0.065730, -0.973520, -0.218947,
		0.992861, 0.085693, -0.082961,
		37.728527, 35.854198, 37.872372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350651, 35.224716, 38.289429>,  <37.033524, 35.794212, 37.930443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350651, 35.224716, 38.289429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638138, 35.502815, 38.285976>,  <37.810631, 35.669674, 38.283905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638138, 35.502815, 38.285976>,  <37.350651, 35.224716, 38.289429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638138, 35.502815, 38.285976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136370, -0.128785, 0.982251,
		0.681801, -0.707135, -0.187371,
		0.718715, 0.695251, -0.008626,
		37.853752, 35.711391, 38.283390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990482, 34.977139, 38.642017>,  <37.350651, 35.224716, 38.289429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990482, 34.977139, 38.642017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996857, 35.376171, 38.669079>,  <38.000679, 35.615589, 38.685318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996857, 35.376171, 38.669079>,  <37.990482, 34.977139, 38.642017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996857, 35.376171, 38.669079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338597, -0.069051, 0.938394,
		0.940797, 0.007958, -0.338878,
		0.015932, 0.997581, 0.067657,
		38.001637, 35.675446, 38.689377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563549, 35.182819, 38.943760>,  <37.990482, 34.977139, 38.642017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563549, 35.182819, 38.943760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323681, 35.494038, 39.018627>,  <38.179760, 35.680771, 39.063545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323681, 35.494038, 39.018627>,  <38.563549, 35.182819, 38.943760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323681, 35.494038, 39.018627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320541, 0.019237, 0.947039,
		0.733243, 0.627908, -0.260933,
		-0.599673, 0.778050, 0.187165,
		38.143780, 35.727451, 39.074776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938000, 35.492504, 39.474609>,  <38.563549, 35.182819, 38.943760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938000, 35.492504, 39.474609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586151, 35.682266, 39.488483>,  <38.375042, 35.796124, 39.496807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586151, 35.682266, 39.488483>,  <38.938000, 35.492504, 39.474609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586151, 35.682266, 39.488483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080781, 0.077133, 0.993743,
		0.468764, 0.876920, -0.106171,
		-0.879622, 0.474407, 0.034681,
		38.322266, 35.824589, 39.498886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973156, 36.035992, 40.000862>,  <38.938000, 35.492504, 39.474609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973156, 36.035992, 40.000862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582165, 35.982159, 39.935844>,  <38.347569, 35.949860, 39.896835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582165, 35.982159, 39.935844>,  <38.973156, 36.035992, 40.000862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582165, 35.982159, 39.935844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177457, 0.107414, 0.978249,
		-0.114196, 0.985063, -0.128878,
		-0.977481, -0.134582, -0.162540,
		38.288921, 35.941784, 39.887081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638203, 36.592655, 40.368160>,  <38.973156, 36.035992, 40.000862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638203, 36.592655, 40.368160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351212, 36.319252, 40.314438>,  <38.179016, 36.155209, 40.282204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351212, 36.319252, 40.314438>,  <38.638203, 36.592655, 40.368160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351212, 36.319252, 40.314438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451391, 0.309355, 0.836986,
		-0.530539, 0.661145, -0.530486,
		-0.717478, -0.683510, -0.134310,
		38.135967, 36.114201, 40.274143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004787, 36.736343, 40.780712>,  <38.638203, 36.592655, 40.368160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004787, 36.736343, 40.780712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886597, 36.359554, 40.716980>,  <37.815681, 36.133480, 40.678741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886597, 36.359554, 40.716980>,  <38.004787, 36.736343, 40.780712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886597, 36.359554, 40.716980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418076, -0.022460, 0.908135,
		-0.859014, 0.334946, -0.387178,
		-0.295480, -0.941970, -0.159326,
		37.797951, 36.076962, 40.669182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258614, 36.665699, 40.915226>,  <38.004787, 36.736343, 40.780712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258614, 36.665699, 40.915226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448864, 36.316494, 40.958374>,  <37.563015, 36.106972, 40.984261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448864, 36.316494, 40.958374>,  <37.258614, 36.665699, 40.915226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448864, 36.316494, 40.958374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346632, -0.073306, 0.935132,
		-0.808473, -0.482161, -0.337479,
		0.475623, -0.873010, 0.107866,
		37.591553, 36.054592, 40.990734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729237, 36.169514, 41.125011>,  <37.258614, 36.665699, 40.915226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729237, 36.169514, 41.125011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084301, 36.025764, 41.240185>,  <37.297340, 35.939514, 41.309288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084301, 36.025764, 41.240185>,  <36.729237, 36.169514, 41.125011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084301, 36.025764, 41.240185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341591, -0.094528, 0.935083,
		-0.308829, -0.928393, -0.206668,
		0.887660, -0.359376, 0.287937,
		37.350597, 35.917953, 41.326565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467106, 35.637650, 41.426197>,  <36.729237, 36.169514, 41.125011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467106, 35.637650, 41.426197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840244, 35.686733, 41.561687>,  <37.064129, 35.716183, 41.642982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840244, 35.686733, 41.561687>,  <36.467106, 35.637650, 41.426197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840244, 35.686733, 41.561687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335536, -0.046455, 0.940881,
		0.131187, -0.991355, -0.002164,
		0.932848, 0.122705, 0.338730,
		37.120098, 35.723545, 41.663307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551083, 35.096676, 41.836777>,  <36.467106, 35.637650, 41.426197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551083, 35.096676, 41.836777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789757, 35.397621, 41.948437>,  <36.932961, 35.578186, 42.015434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789757, 35.397621, 41.948437>,  <36.551083, 35.096676, 41.836777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789757, 35.397621, 41.948437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448098, 0.023798, 0.893668,
		0.665715, -0.658324, 0.351330,
		0.596684, 0.752358, 0.279151,
		36.968761, 35.623329, 42.032181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003349, 34.887371, 42.465401>,  <36.551083, 35.096676, 41.836777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003349, 34.887371, 42.465401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946598, 35.282814, 42.445271>,  <36.912548, 35.520081, 42.433193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946598, 35.282814, 42.445271>,  <37.003349, 34.887371, 42.465401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946598, 35.282814, 42.445271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546511, -0.035840, 0.836684,
		0.825346, 0.146209, 0.545368,
		-0.141877, 0.988604, -0.050325,
		36.904034, 35.579395, 42.430172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822403, 35.014050, 43.199417>,  <37.003349, 34.887371, 42.465401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822403, 35.014050, 43.199417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755127, 35.363792, 43.017334>,  <36.714760, 35.573639, 42.908085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755127, 35.363792, 43.017334>,  <36.822403, 35.014050, 43.199417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755127, 35.363792, 43.017334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627308, 0.261273, 0.733636,
		0.760392, 0.408948, 0.504546,
		-0.168195, 0.874356, -0.455206,
		36.704670, 35.626099, 42.880772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221218, 35.569111, 43.498215>,  <36.822403, 35.014050, 43.199417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221218, 35.569111, 43.498215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864540, 35.695538, 43.368607>,  <36.650536, 35.771393, 43.290844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864540, 35.695538, 43.368607>,  <37.221218, 35.569111, 43.498215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864540, 35.695538, 43.368607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299303, 0.125289, 0.945896,
		0.339565, 0.940427, -0.017119,
		-0.891691, 0.316070, -0.324017,
		36.597034, 35.790359, 43.271400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995857, 36.050331, 43.991024>,  <37.221218, 35.569111, 43.498215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995857, 36.050331, 43.991024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653656, 35.995529, 43.791286>,  <36.448334, 35.962650, 43.671444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653656, 35.995529, 43.791286>,  <36.995857, 36.050331, 43.991024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653656, 35.995529, 43.791286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506013, 0.016634, 0.862365,
		-0.109838, 0.990431, -0.083555,
		-0.855503, -0.137001, -0.499344,
		36.397003, 35.954430, 43.641483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492756, 36.606125, 44.267193>,  <36.995857, 36.050331, 43.991024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492756, 36.606125, 44.267193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258064, 36.335468, 44.089245>,  <36.117249, 36.173073, 43.982475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258064, 36.335468, 44.089245>,  <36.492756, 36.606125, 44.267193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258064, 36.335468, 44.089245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633275, 0.041006, 0.772840,
		-0.504695, 0.735168, -0.452561,
		-0.586725, -0.676643, -0.444868,
		36.082047, 36.132477, 43.955784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863018, 36.946362, 44.309361>,  <36.492756, 36.606125, 44.267193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863018, 36.946362, 44.309361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814342, 36.555912, 44.237396>,  <35.785137, 36.321640, 44.194218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814342, 36.555912, 44.237396>,  <35.863018, 36.946362, 44.309361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814342, 36.555912, 44.237396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798711, -0.011308, 0.601609,
		-0.589281, 0.216906, -0.778267,
		-0.121692, -0.976127, -0.179909,
		35.777836, 36.263073, 44.183422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112289, 36.838253, 44.296871>,  <35.863018, 36.946362, 44.309361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112289, 36.838253, 44.296871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350101, 36.525326, 44.371178>,  <35.492790, 36.337570, 44.415764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350101, 36.525326, 44.371178>,  <35.112289, 36.838253, 44.296871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350101, 36.525326, 44.371178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477015, -0.157175, 0.864727,
		-0.647292, -0.602724, -0.466623,
		0.594533, -0.782317, 0.185770,
		35.528461, 36.290630, 44.426910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682331, 36.335102, 44.282043>,  <35.112289, 36.838253, 44.296871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682331, 36.335102, 44.282043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987144, 36.298435, 44.538448>,  <35.170033, 36.276436, 44.692291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987144, 36.298435, 44.538448>,  <34.682331, 36.335102, 44.282043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987144, 36.298435, 44.538448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644890, -0.018036, 0.764063,
		-0.058481, -0.995626, -0.072862,
		0.762035, -0.091671, 0.641014,
		35.215755, 36.270935, 44.730751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543217, 36.035492, 44.922100>,  <34.682331, 36.335102, 44.282043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543217, 36.035492, 44.922100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597099, 35.644100, 44.859581>,  <34.629429, 35.409264, 44.822067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597099, 35.644100, 44.859581>,  <34.543217, 36.035492, 44.922100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597099, 35.644100, 44.859581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662476, 0.206238, -0.720133,
		0.736871, -0.006538, 0.676002,
		0.134709, -0.978480, -0.156302,
		34.637512, 35.350555, 44.812691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339504, 35.641293, 45.039497>,  <34.543217, 36.035492, 44.922100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339504, 35.641293, 45.039497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098114, 35.532318, 44.739738>,  <34.953281, 35.466934, 44.559883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098114, 35.532318, 44.739738>,  <35.339504, 35.641293, 45.039497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098114, 35.532318, 44.739738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746426, 0.137580, -0.651091,
		0.280482, -0.952287, 0.120325,
		-0.603472, -0.272433, -0.749401,
		34.917072, 35.450588, 44.514919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700073, 35.161983, 44.610790>,  <35.339504, 35.641293, 45.039497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700073, 35.161983, 44.610790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447472, 35.385387, 44.395653>,  <35.295910, 35.519428, 44.266571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447472, 35.385387, 44.395653>,  <35.700073, 35.161983, 44.610790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447472, 35.385387, 44.395653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691319, 0.091445, -0.716740,
		-0.351122, -0.824443, -0.443855,
		-0.631500, 0.558508, -0.537845,
		35.258022, 35.552940, 44.234299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567497, 34.960754, 44.012074>,  <35.700073, 35.161983, 44.610790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567497, 34.960754, 44.012074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536491, 35.358940, 43.989986>,  <35.517887, 35.597851, 43.976734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536491, 35.358940, 43.989986>,  <35.567497, 34.960754, 44.012074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536491, 35.358940, 43.989986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708372, 0.016017, -0.705658,
		-0.701571, -0.093809, -0.706398,
		-0.077512, 0.995461, -0.055214,
		35.513237, 35.657578, 43.973423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387592, 35.204014, 43.361206>,  <35.567497, 34.960754, 44.012074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387592, 35.204014, 43.361206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600700, 35.486847, 43.547192>,  <35.728565, 35.656548, 43.658783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600700, 35.486847, 43.547192>,  <35.387592, 35.204014, 43.361206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600700, 35.486847, 43.547192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610656, 0.059164, -0.789683,
		-0.585879, 0.704653, -0.400263,
		0.532771, 0.707081, 0.464963,
		35.760532, 35.698971, 43.686680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242649, 35.813606, 42.978947>,  <35.387592, 35.204014, 43.361206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242649, 35.813606, 42.978947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588001, 35.851971, 43.177090>,  <35.795212, 35.874989, 43.295975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588001, 35.851971, 43.177090>,  <35.242649, 35.813606, 42.978947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588001, 35.851971, 43.177090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456359, 0.270302, -0.847746,
		-0.215202, 0.957986, 0.189605,
		0.863380, 0.095909, 0.495355,
		35.847015, 35.880745, 43.325695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740204, 36.008682, 42.491489>,  <35.242649, 35.813606, 42.978947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740204, 36.008682, 42.491489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024479, 36.012650, 42.772865>,  <36.195045, 36.015030, 42.941689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024479, 36.012650, 42.772865>,  <35.740204, 36.008682, 42.491489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024479, 36.012650, 42.772865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698725, 0.106438, -0.707428,
		-0.081891, 0.994270, 0.068712,
		0.710688, 0.009921, 0.703438,
		36.237686, 36.015625, 42.983898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078541, 36.611763, 42.330086>,  <35.740204, 36.008682, 42.491489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078541, 36.611763, 42.330086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313004, 36.355728, 42.528767>,  <36.453682, 36.202106, 42.647976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313004, 36.355728, 42.528767>,  <36.078541, 36.611763, 42.330086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313004, 36.355728, 42.528767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652732, 0.009913, -0.757524,
		0.479954, 0.768242, 0.423613,
		0.586161, -0.640083, 0.496698,
		36.488853, 36.163704, 42.677776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818527, 36.892052, 42.455818>,  <36.078541, 36.611763, 42.330086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818527, 36.892052, 42.455818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847504, 36.493118, 42.452385>,  <36.864891, 36.253757, 42.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847504, 36.493118, 42.452385>,  <36.818527, 36.892052, 42.455818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847504, 36.493118, 42.452385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729455, 0.058850, -0.681492,
		0.680182, 0.043107, 0.731775,
		0.072442, -0.997336, -0.008584,
		36.869236, 36.193916, 42.449810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529003, 36.814350, 42.368576>,  <36.818527, 36.892052, 42.455818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529003, 36.814350, 42.368576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348331, 36.478386, 42.248222>,  <37.239929, 36.276806, 42.176010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348331, 36.478386, 42.248222>,  <37.529003, 36.814350, 42.368576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348331, 36.478386, 42.248222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590348, -0.028508, -0.806645,
		0.668933, -0.541974, 0.508717,
		-0.451684, -0.839911, -0.300883,
		37.212826, 36.226414, 42.157959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030025, 36.486752, 42.037415>,  <37.529003, 36.814350, 42.368576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030025, 36.486752, 42.037415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695015, 36.324181, 41.891335>,  <37.494011, 36.226639, 41.803684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695015, 36.324181, 41.891335>,  <38.030025, 36.486752, 42.037415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695015, 36.324181, 41.891335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424035, -0.061925, -0.903526,
		0.344603, -0.911582, 0.224204,
		-0.837522, -0.406428, -0.365203,
		37.443760, 36.202251, 41.781773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398018, 35.830395, 41.952976>,  <38.030025, 36.486752, 42.037415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398018, 35.830395, 41.952976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007996, 35.810204, 41.866516>,  <37.773983, 35.798088, 41.814640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007996, 35.810204, 41.866516>,  <38.398018, 35.830395, 41.952976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007996, 35.810204, 41.866516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217528, -0.411155, -0.885231,
		-0.044186, -0.910167, 0.411879,
		-0.975054, -0.050481, -0.216154,
		37.715481, 35.795059, 41.801670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441135, 35.250320, 41.594837>,  <38.398018, 35.830395, 41.952976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441135, 35.250320, 41.594837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120033, 35.463200, 41.487247>,  <37.927372, 35.590927, 41.422695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120033, 35.463200, 41.487247>,  <38.441135, 35.250320, 41.594837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120033, 35.463200, 41.487247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184259, -0.207610, -0.960701,
		-0.567125, -0.820770, 0.068598,
		-0.802757, 0.532197, -0.268975,
		37.879208, 35.622860, 41.406555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187740, 34.895733, 41.000919>,  <38.441135, 35.250320, 41.594837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187740, 34.895733, 41.000919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044266, 35.268906, 41.013397>,  <37.958179, 35.492809, 41.020885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044266, 35.268906, 41.013397>,  <38.187740, 34.895733, 41.000919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044266, 35.268906, 41.013397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023371, 0.024432, -0.999428,
		-0.933164, -0.359214, 0.013040,
		-0.358690, 0.932935, 0.031194,
		37.936657, 35.548786, 41.022755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676617, 34.951229, 40.576759>,  <38.187740, 34.895733, 41.000919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676617, 34.951229, 40.576759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816341, 35.324463, 40.611019>,  <37.900177, 35.548405, 40.631573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816341, 35.324463, 40.611019>,  <37.676617, 34.951229, 40.576759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816341, 35.324463, 40.611019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000401, 0.091551, -0.995800,
		-0.937007, 0.347808, 0.032354,
		0.349310, 0.933085, 0.085645,
		37.921135, 35.604389, 40.636711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290039, 35.245564, 40.095295>,  <37.676617, 34.951229, 40.576759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290039, 35.245564, 40.095295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609608, 35.471661, 40.177486>,  <37.801350, 35.607319, 40.226799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609608, 35.471661, 40.177486>,  <37.290039, 35.245564, 40.095295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609608, 35.471661, 40.177486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016456, 0.362060, -0.932010,
		-0.601211, 0.741221, 0.298559,
		0.798921, 0.565247, 0.205477,
		37.849285, 35.641235, 40.239128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004848, 35.875145, 39.745186>,  <37.290039, 35.245564, 40.095295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004848, 35.875145, 39.745186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402184, 35.874775, 39.791279>,  <37.640583, 35.874554, 39.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402184, 35.874775, 39.791279>,  <37.004848, 35.875145, 39.745186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402184, 35.874775, 39.791279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113746, 0.168454, -0.979125,
		-0.018502, 0.985709, 0.167437,
		0.993338, -0.000929, 0.115237,
		37.700184, 35.874496, 39.825851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260891, 36.508629, 39.445560>,  <37.004848, 35.875145, 39.745186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260891, 36.508629, 39.445560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582619, 36.271938, 39.467197>,  <37.775654, 36.129925, 39.480179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582619, 36.271938, 39.467197>,  <37.260891, 36.508629, 39.445560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582619, 36.271938, 39.467197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164816, 0.134713, -0.977081,
		0.570882, 0.794800, 0.205879,
		0.804319, -0.591730, 0.054090,
		37.823914, 36.094418, 39.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723682, 36.862965, 39.033051>,  <37.260891, 36.508629, 39.445560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723682, 36.862965, 39.033051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878971, 36.494572, 39.046196>,  <37.972145, 36.273537, 39.054085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878971, 36.494572, 39.046196>,  <37.723682, 36.862965, 39.033051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878971, 36.494572, 39.046196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296232, 0.090944, -0.950776,
		0.872656, 0.378850, 0.308130,
		0.388224, -0.920979, 0.032865,
		37.995438, 36.218277, 39.056057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316872, 36.920242, 38.658138>,  <37.723682, 36.862965, 39.033051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316872, 36.920242, 38.658138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172508, 36.547203, 38.658031>,  <38.085888, 36.323380, 38.657967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172508, 36.547203, 38.658031>,  <38.316872, 36.920242, 38.658138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172508, 36.547203, 38.658031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006055, 0.002627, -0.999978,
		0.932580, -0.360902, -0.006595,
		-0.360912, -0.932600, -0.000265,
		38.064236, 36.267422, 38.657951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780952, 36.575607, 38.238678>,  <38.316872, 36.920242, 38.658138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780952, 36.575607, 38.238678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475716, 36.317188, 38.231533>,  <38.292572, 36.162140, 38.227245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475716, 36.317188, 38.231533>,  <38.780952, 36.575607, 38.238678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475716, 36.317188, 38.231533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227538, -0.242693, -0.943041,
		0.604911, -0.723691, 0.332196,
		-0.763092, -0.646043, -0.017859,
		38.246788, 36.123375, 38.226173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980412, 36.028347, 37.811905>,  <38.780952, 36.575607, 38.238678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980412, 36.028347, 37.811905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584202, 35.978954, 37.835960>,  <38.346478, 35.949318, 37.850391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584202, 35.978954, 37.835960>,  <38.980412, 36.028347, 37.811905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584202, 35.978954, 37.835960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019394, -0.307691, -0.951289,
		0.135973, -0.943439, 0.302380,
		-0.990523, -0.123485, 0.060135,
		38.287045, 35.941910, 37.854000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879761, 35.347740, 37.609550>,  <38.980412, 36.028347, 37.811905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879761, 35.347740, 37.609550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534008, 35.542492, 37.559280>,  <38.326557, 35.659344, 37.529118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534008, 35.542492, 37.559280>,  <38.879761, 35.347740, 37.609550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534008, 35.542492, 37.559280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014547, -0.225623, -0.974106,
		-0.502631, -0.843825, 0.187941,
		-0.864379, 0.486882, -0.125680,
		38.274693, 35.688557, 37.521576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524113, 34.952316, 37.192337>,  <38.879761, 35.347740, 37.609550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524113, 34.952316, 37.192337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328308, 35.298882, 37.152927>,  <38.210827, 35.506821, 37.129280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328308, 35.298882, 37.152927>,  <38.524113, 34.952316, 37.192337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328308, 35.298882, 37.152927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005108, -0.110140, -0.993903,
		-0.871983, -0.487028, 0.049489,
		-0.489509, 0.866414, -0.098528,
		38.181454, 35.558807, 37.123367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223045, 34.753590, 36.825706>,  <38.524113, 34.952316, 37.192337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223045, 34.753590, 36.825706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351528, 34.452885, 37.056072>,  <39.428619, 34.272461, 37.194294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351528, 34.452885, 37.056072>,  <39.223045, 34.753590, 36.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351528, 34.452885, 37.056072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666355, -0.252702, -0.701507,
		0.672901, 0.609095, 0.419770,
		0.321208, -0.751761, 0.575917,
		39.447891, 34.227356, 37.228848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923859, 34.816631, 36.952473>,  <39.223045, 34.753590, 36.825706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923859, 34.816631, 36.952473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803547, 34.435165, 36.949520>,  <39.731361, 34.206284, 36.947750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803547, 34.435165, 36.949520>,  <39.923859, 34.816631, 36.952473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803547, 34.435165, 36.949520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634114, -0.194198, -0.748457,
		0.712345, -0.229798, 0.663143,
		-0.300775, -0.953667, -0.007382,
		39.713314, 34.149067, 36.947304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535347, 34.459873, 36.911278>,  <39.923859, 34.816631, 36.952473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535347, 34.459873, 36.911278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228111, 34.269054, 36.740417>,  <40.043770, 34.154564, 36.637901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228111, 34.269054, 36.740417>,  <40.535347, 34.459873, 36.911278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228111, 34.269054, 36.740417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608961, -0.337931, -0.717614,
		0.197987, -0.811314, 0.550065,
		-0.768094, -0.477046, -0.427153,
		39.997684, 34.125942, 36.612270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630478, 33.704586, 36.787167>,  <40.535347, 34.459873, 36.911278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630478, 33.704586, 36.787167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399448, 33.881985, 36.513023>,  <40.260830, 33.988422, 36.348537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399448, 33.881985, 36.513023>,  <40.630478, 33.704586, 36.787167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399448, 33.881985, 36.513023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631888, -0.288660, -0.719300,
		-0.516844, -0.848520, -0.113518,
		-0.577572, 0.443496, -0.685362,
		40.226177, 34.015034, 36.307415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621861, 33.245560, 36.162247>,  <40.630478, 33.704586, 36.787167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621861, 33.245560, 36.162247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550007, 33.630348, 36.079941>,  <40.506897, 33.861221, 36.030556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550007, 33.630348, 36.079941>,  <40.621861, 33.245560, 36.162247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550007, 33.630348, 36.079941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675512, -0.031438, -0.736678,
		-0.715134, -0.271330, -0.644177,
		-0.179631, 0.961973, -0.205769,
		40.496117, 33.918941, 36.018211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642834, 33.454369, 35.335693>,  <40.621861, 33.245560, 36.162247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642834, 33.454369, 35.335693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802231, 33.747829, 35.555859>,  <40.897869, 33.923904, 35.687958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802231, 33.747829, 35.555859>,  <40.642834, 33.454369, 35.335693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802231, 33.747829, 35.555859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819066, -0.014612, -0.573514,
		-0.412718, 0.679367, -0.606733,
		0.398492, 0.733653, 0.550416,
		40.921780, 33.967926, 35.720982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794903, 34.031693, 34.776165>,  <40.642834, 33.454369, 35.335693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794903, 34.031693, 34.776165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009708, 34.029572, 35.113590>,  <41.138592, 34.028301, 35.316044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009708, 34.029572, 35.113590>,  <40.794903, 34.031693, 34.776165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009708, 34.029572, 35.113590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812934, -0.263816, -0.519171,
		0.225296, 0.964558, -0.137363,
		0.537009, -0.005300, 0.843560,
		41.170811, 34.027981, 35.366657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456585, 34.471375, 34.892685>,  <40.794903, 34.031693, 34.776165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456585, 34.471375, 34.892685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439789, 34.109032, 35.061287>,  <41.429710, 33.891628, 35.162449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439789, 34.109032, 35.061287>,  <41.456585, 34.471375, 34.892685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439789, 34.109032, 35.061287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649061, -0.345462, -0.677773,
		0.759577, 0.245124, 0.602459,
		-0.041988, -0.905853, 0.421505,
		41.427193, 33.837276, 35.187740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085640, 34.798485, 34.570724>,  <41.456585, 34.471375, 34.892685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085640, 34.798485, 34.570724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157345, 35.126209, 34.788567>,  <42.200367, 35.322845, 34.919273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157345, 35.126209, 34.788567>,  <42.085640, 34.798485, 34.570724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157345, 35.126209, 34.788567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983606, -0.160297, -0.082603,
		0.019622, 0.550488, -0.834613,
		0.179258, 0.819310, 0.544609,
		42.211121, 35.372002, 34.951950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594414, 35.154190, 34.322014>,  <42.085640, 34.798485, 34.570724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594414, 35.154190, 34.322014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592892, 35.288380, 34.698830>,  <42.591980, 35.368893, 34.924919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592892, 35.288380, 34.698830>,  <42.594414, 35.154190, 34.322014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592892, 35.288380, 34.698830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970283, -0.226684, 0.084642,
		0.241941, 0.914369, -0.324643,
		-0.003803, 0.335474, 0.942042,
		42.591751, 35.389023, 34.981441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197929, 35.552292, 34.305443>,  <42.594414, 35.154190, 34.322014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197929, 35.552292, 34.305443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118542, 35.443077, 34.681965>,  <43.070911, 35.377548, 34.907879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118542, 35.443077, 34.681965>,  <43.197929, 35.552292, 34.305443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118542, 35.443077, 34.681965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949478, -0.291785, 0.115552,
		0.243111, 0.916686, 0.317149,
		-0.198465, -0.273034, 0.941310,
		43.059002, 35.361168, 34.964359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552582, 35.949162, 34.859810>,  <43.197929, 35.552292, 34.305443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552582, 35.949162, 34.859810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482159, 35.566929, 34.954353>,  <43.439903, 35.337589, 35.011078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482159, 35.566929, 34.954353>,  <43.552582, 35.949162, 34.859810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482159, 35.566929, 34.954353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964871, -0.215090, -0.150869,
		0.195006, 0.201491, 0.959882,
		-0.176062, -0.955582, 0.236357,
		43.429340, 35.280254, 35.025261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008141, 35.809574, 35.386902>,  <43.552582, 35.949162, 34.859810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008141, 35.809574, 35.386902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912285, 35.494888, 35.159336>,  <43.854771, 35.306076, 35.022797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912285, 35.494888, 35.159336>,  <44.008141, 35.809574, 35.386902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912285, 35.494888, 35.159336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964059, -0.262071, -0.043679,
		-0.114733, -0.558933, 0.821237,
		-0.239637, -0.786710, -0.568912,
		43.840393, 35.258877, 34.988663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346638, 35.214066, 35.661297>,  <44.008141, 35.809574, 35.386902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346638, 35.214066, 35.661297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281219, 35.169281, 35.269234>,  <44.241970, 35.142410, 35.033997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281219, 35.169281, 35.269234>,  <44.346638, 35.214066, 35.661297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281219, 35.169281, 35.269234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950309, -0.284649, -0.126046,
		-0.264889, -0.952071, 0.152951,
		-0.163543, -0.111962, -0.980162,
		44.232159, 35.135693, 34.975185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292183, 34.608017, 35.185440>,  <44.346638, 35.214066, 35.661297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292183, 34.608017, 35.185440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499043, 34.923721, 35.053001>,  <44.623158, 35.113144, 34.973537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499043, 34.923721, 35.053001>,  <44.292183, 34.608017, 35.185440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499043, 34.923721, 35.053001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799900, -0.583309, -0.141108,
		-0.304502, -0.191871, -0.932986,
		0.517145, 0.789263, -0.331096,
		44.654186, 35.160500, 34.953674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580383, 34.522991, 34.619244>,  <44.292183, 34.608017, 35.185440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580383, 34.522991, 34.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805920, 34.789806, 34.814030>,  <44.941242, 34.949894, 34.930901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805920, 34.789806, 34.814030>,  <44.580383, 34.522991, 34.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805920, 34.789806, 34.814030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804707, -0.576382, -0.142231,
		0.185807, 0.472064, -0.861760,
		0.563845, 0.667037, 0.486970,
		44.975075, 34.989918, 34.960121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090099, 34.482006, 34.245892>,  <44.580383, 34.522991, 34.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090099, 34.482006, 34.245892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.226910, 34.635056, 34.589199>,  <45.308998, 34.726883, 34.795181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.226910, 34.635056, 34.589199>,  <45.090099, 34.482006, 34.245892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226910, 34.635056, 34.589199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819694, -0.568079, -0.073405,
		0.459475, 0.728621, -0.507931,
		0.342029, 0.382620, 0.858265,
		45.329517, 34.749840, 34.846680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704590, 34.643070, 34.204800>,  <45.090099, 34.482006, 34.245892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704590, 34.643070, 34.204800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683586, 34.601196, 34.602047>,  <45.670982, 34.576073, 34.840397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683586, 34.601196, 34.602047>,  <45.704590, 34.643070, 34.204800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683586, 34.601196, 34.602047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846378, -0.532462, -0.011372,
		0.529988, 0.839956, 0.116564,
		-0.052513, -0.104684, 0.993118,
		45.667831, 34.569790, 34.899982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446056, 34.868534, 34.415356>,  <45.704590, 34.643070, 34.204800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446056, 34.868534, 34.415356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320660, 34.589733, 34.673321>,  <46.245422, 34.422455, 34.828102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320660, 34.589733, 34.673321>,  <46.446056, 34.868534, 34.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320660, 34.589733, 34.673321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870504, -0.482288, -0.098086,
		0.379401, 0.530653, 0.757933,
		-0.313492, -0.696998, 0.644916,
		46.226612, 34.380634, 34.866795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949787, 34.814781, 34.905128>,  <46.446056, 34.868534, 34.415356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949787, 34.814781, 34.905128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773602, 34.456112, 34.887409>,  <46.667889, 34.240910, 34.876778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773602, 34.456112, 34.887409>,  <46.949787, 34.814781, 34.905128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773602, 34.456112, 34.887409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897628, -0.440735, -0.004012,
		-0.015928, -0.041533, 0.999010,
		-0.440466, -0.896676, -0.044302,
		46.641460, 34.187111, 34.874119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.587929, 34.498974, 35.132538>,  <46.949787, 34.814781, 34.905128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.587929, 34.498974, 35.132538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692093, 34.856438, 35.278721>,  <47.754589, 35.070915, 35.366432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692093, 34.856438, 35.278721>,  <47.587929, 34.498974, 35.132538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.692093, 34.856438, 35.278721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529148, 0.184507, -0.828227,
		-0.807583, 0.409058, -0.424832,
		0.260408, 0.893660, 0.365457,
		47.770214, 35.124535, 35.388359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.293282, 30.989958, 28.892267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906849, 31.093054, 28.898632>,  <34.674988, 31.154911, 28.902451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906849, 31.093054, 28.898632>,  <35.293282, 30.989958, 28.892267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906849, 31.093054, 28.898632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114293, 0.371523, 0.921362,
		0.231561, 0.891930, -0.388380,
		-0.966083, 0.257741, 0.015911,
		34.617023, 31.170376, 28.903406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248371, 31.602724, 29.269203>,  <35.293282, 30.989958, 28.892267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248371, 31.602724, 29.269203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856277, 31.526537, 29.247828>,  <34.621021, 31.480824, 29.235003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856277, 31.526537, 29.247828>,  <35.248371, 31.602724, 29.269203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856277, 31.526537, 29.247828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122839, 0.374303, 0.919135,
		-0.155065, 0.907535, -0.390303,
		-0.980237, -0.190470, -0.053440,
		34.562206, 31.469397, 29.231796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827694, 32.179649, 29.458937>,  <35.248371, 31.602724, 29.269203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827694, 32.179649, 29.458937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625427, 31.852278, 29.568096>,  <34.504066, 31.655855, 29.633591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625427, 31.852278, 29.568096>,  <34.827694, 32.179649, 29.458937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625427, 31.852278, 29.568096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059408, 0.348601, 0.935387,
		-0.860681, 0.456781, -0.224897,
		-0.505667, -0.818430, 0.272898,
		34.473728, 31.606749, 29.649965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243530, 32.402744, 29.873663>,  <34.827694, 32.179649, 29.458937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243530, 32.402744, 29.873663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307022, 32.017067, 29.958641>,  <34.345116, 31.785660, 30.009628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307022, 32.017067, 29.958641>,  <34.243530, 32.402744, 29.873663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307022, 32.017067, 29.958641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020312, 0.211938, 0.977072,
		-0.987113, -0.159405, 0.014056,
		0.158729, -0.964195, 0.212445,
		34.354641, 31.727808, 30.022375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668446, 32.327549, 30.308481>,  <34.243530, 32.402744, 29.873663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668446, 32.327549, 30.308481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915226, 32.016144, 30.354591>,  <34.063293, 31.829300, 30.382257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915226, 32.016144, 30.354591>,  <33.668446, 32.327549, 30.308481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915226, 32.016144, 30.354591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218911, -0.029066, 0.975312,
		-0.755944, -0.626953, -0.188358,
		0.616949, -0.778515, 0.115275,
		34.100311, 31.782589, 30.389174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360912, 31.874434, 30.769350>,  <33.668446, 32.327549, 30.308481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360912, 31.874434, 30.769350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743114, 31.756475, 30.771774>,  <33.972435, 31.685699, 30.773230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743114, 31.756475, 30.771774>,  <33.360912, 31.874434, 30.769350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743114, 31.756475, 30.771774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042333, -0.116767, 0.992257,
		-0.291906, -0.948368, -0.124056,
		0.955510, -0.294898, 0.006062,
		34.029766, 31.668007, 30.773594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333508, 31.269064, 31.166021>,  <33.360912, 31.874434, 30.769350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333508, 31.269064, 31.166021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716446, 31.382423, 31.188560>,  <33.946209, 31.450439, 31.202084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716446, 31.382423, 31.188560>,  <33.333508, 31.269064, 31.166021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716446, 31.382423, 31.188560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079326, 0.070267, 0.994369,
		0.277844, -0.956425, 0.089750,
		0.957345, 0.283399, 0.056347,
		34.003651, 31.467442, 31.205465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595337, 30.904474, 31.648968>,  <33.333508, 31.269064, 31.166021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595337, 30.904474, 31.648968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851322, 31.211130, 31.628120>,  <34.004913, 31.395124, 31.615612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851322, 31.211130, 31.628120>,  <33.595337, 30.904474, 31.648968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851322, 31.211130, 31.628120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044175, 0.104423, 0.993551,
		0.767139, -0.633529, 0.100693,
		0.639959, 0.766640, -0.052120,
		34.043308, 31.441122, 31.612484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986038, 30.834557, 32.275154>,  <33.595337, 30.904474, 31.648968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986038, 30.834557, 32.275154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030174, 31.204340, 32.129166>,  <34.056656, 31.426210, 32.041573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030174, 31.204340, 32.129166>,  <33.986038, 30.834557, 32.275154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030174, 31.204340, 32.129166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148480, 0.378426, 0.913645,
		0.982740, -0.046623, 0.179020,
		0.110343, 0.924457, -0.364971,
		34.063278, 31.481676, 32.019672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462982, 31.167484, 32.781517>,  <33.986038, 30.834557, 32.275154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462982, 31.167484, 32.781517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311214, 31.483280, 32.588543>,  <34.220154, 31.672758, 32.472759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311214, 31.483280, 32.588543>,  <34.462982, 31.167484, 32.781517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311214, 31.483280, 32.588543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224166, 0.427449, 0.875806,
		0.897658, 0.440444, 0.014794,
		-0.379420, 0.789491, -0.482436,
		34.197388, 31.720127, 32.443813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663010, 31.747456, 33.097900>,  <34.462982, 31.167484, 32.781517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663010, 31.747456, 33.097900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327114, 31.892546, 32.936275>,  <34.125576, 31.979601, 32.839302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327114, 31.892546, 32.936275>,  <34.663010, 31.747456, 33.097900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327114, 31.892546, 32.936275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221927, 0.449876, 0.865078,
		0.495563, 0.816114, -0.297281,
		-0.839742, 0.362726, -0.404059,
		34.075191, 32.001362, 32.815056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654526, 32.569427, 33.079460>,  <34.663010, 31.747456, 33.097900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654526, 32.569427, 33.079460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280918, 32.427616, 33.061905>,  <34.056755, 32.342529, 33.051373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280918, 32.427616, 33.061905>,  <34.654526, 32.569427, 33.079460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280918, 32.427616, 33.061905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274706, 0.634255, 0.722674,
		-0.228370, 0.687046, -0.689794,
		-0.934015, -0.354528, -0.043891,
		34.000713, 32.321259, 33.048737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265862, 33.141335, 33.199131>,  <34.654526, 32.569427, 33.079460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265862, 33.141335, 33.199131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.002052, 32.846268, 33.256939>,  <33.843769, 32.669228, 33.291622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.002052, 32.846268, 33.256939>,  <34.265862, 33.141335, 33.199131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002052, 32.846268, 33.256939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395350, 0.503921, 0.767959,
		-0.639323, 0.449348, -0.623981,
		-0.659518, -0.737665, 0.144518,
		33.804195, 32.624969, 33.300293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513878, 33.390411, 33.143314>,  <34.265862, 33.141335, 33.199131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513878, 33.390411, 33.143314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.527267, 33.090057, 33.407146>,  <33.535301, 32.909843, 33.565445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.527267, 33.090057, 33.407146>,  <33.513878, 33.390411, 33.143314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527267, 33.090057, 33.407146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223595, 0.637598, 0.737207,
		-0.974107, -0.172153, -0.146554,
		0.033470, -0.750887, 0.659582,
		33.537308, 32.864792, 33.605022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130642, 33.695194, 33.655579>,  <33.513878, 33.390411, 33.143314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130642, 33.695194, 33.655579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.252769, 33.359787, 33.836094>,  <33.326046, 33.158543, 33.944405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.252769, 33.359787, 33.836094>,  <33.130642, 33.695194, 33.655579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252769, 33.359787, 33.836094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190586, 0.410520, 0.891712,
		-0.932983, -0.358265, -0.034472,
		0.305318, -0.838522, 0.451289,
		33.344364, 33.108231, 33.971481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666035, 33.564510, 34.324406>,  <33.130642, 33.695194, 33.655579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666035, 33.564510, 34.324406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014820, 33.376080, 34.377728>,  <33.224091, 33.263020, 34.409721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014820, 33.376080, 34.377728>,  <32.666035, 33.564510, 34.324406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014820, 33.376080, 34.377728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002493, 0.268008, 0.963413,
		-0.489572, -0.840389, 0.232518,
		0.871959, -0.471081, 0.133304,
		33.276409, 33.234756, 34.417717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589634, 33.437000, 35.023926>,  <32.666035, 33.564510, 34.324406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589634, 33.437000, 35.023926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972130, 33.376831, 34.923538>,  <33.201626, 33.340729, 34.863304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972130, 33.376831, 34.923538>,  <32.589634, 33.437000, 35.023926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972130, 33.376831, 34.923538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277936, 0.198824, 0.939798,
		-0.091466, -0.968423, 0.231930,
		0.956235, -0.150421, -0.250973,
		33.258999, 33.331703, 34.848248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901161, 32.932350, 35.484440>,  <32.589634, 33.437000, 35.023926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901161, 32.932350, 35.484440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219181, 33.128597, 35.341789>,  <33.409996, 33.246346, 35.256199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219181, 33.128597, 35.341789>,  <32.901161, 32.932350, 35.484440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219181, 33.128597, 35.341789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328482, 0.145995, 0.933159,
		0.509891, -0.859057, -0.045086,
		0.795054, 0.490619, -0.356626,
		33.457699, 33.275784, 35.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366116, 32.794048, 35.926395>,  <32.901161, 32.932350, 35.484440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366116, 32.794048, 35.926395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481888, 33.131935, 35.746311>,  <33.551350, 33.334667, 35.638260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481888, 33.131935, 35.746311>,  <33.366116, 32.794048, 35.926395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481888, 33.131935, 35.746311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344548, 0.346878, 0.872332,
		0.893039, -0.407597, -0.190648,
		0.289428, 0.844714, -0.450212,
		33.568718, 33.385349, 35.611248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035110, 32.908253, 36.153038>,  <33.366116, 32.794048, 35.926395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035110, 32.908253, 36.153038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935272, 33.267124, 36.007286>,  <33.875370, 33.482449, 35.919834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935272, 33.267124, 36.007286>,  <34.035110, 32.908253, 36.153038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935272, 33.267124, 36.007286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439287, 0.440244, 0.783079,
		0.862978, 0.035387, -0.504002,
		-0.249594, 0.897181, -0.364375,
		33.860394, 33.536278, 35.897972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712299, 33.363911, 36.225353>,  <34.035110, 32.908253, 36.153038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712299, 33.363911, 36.225353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.390308, 33.600559, 36.207481>,  <34.197113, 33.742550, 36.196758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.390308, 33.600559, 36.207481>,  <34.712299, 33.363911, 36.225353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390308, 33.600559, 36.207481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285780, 0.452624, 0.844666,
		0.519948, 0.667167, -0.533425,
		-0.804974, 0.591625, -0.044678,
		34.148815, 33.778046, 36.194077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261250, 33.716507, 36.659069>,  <34.712299, 33.363911, 36.225353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261250, 33.716507, 36.659069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640057, 33.735237, 36.786175>,  <35.867340, 33.746475, 36.862438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640057, 33.735237, 36.786175>,  <35.261250, 33.716507, 36.659069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640057, 33.735237, 36.786175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303026, -0.458251, -0.835573,
		0.106488, 0.887589, -0.448159,
		0.947014, 0.046825, 0.317760,
		35.924160, 33.749287, 36.881504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623074, 33.856049, 36.105469>,  <35.261250, 33.716507, 36.659069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623074, 33.856049, 36.105469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920525, 33.695686, 36.319492>,  <36.098995, 33.599468, 36.447906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920525, 33.695686, 36.319492>,  <35.623074, 33.856049, 36.105469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920525, 33.695686, 36.319492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439762, -0.309515, -0.843095,
		0.503612, 0.862249, -0.053860,
		0.743629, -0.400907, 0.535060,
		36.143612, 33.575413, 36.480011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119961, 33.980438, 35.657112>,  <35.623074, 33.856049, 36.105469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119961, 33.980438, 35.657112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238029, 33.687580, 35.902660>,  <36.308872, 33.511864, 36.049988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238029, 33.687580, 35.902660>,  <36.119961, 33.980438, 35.657112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238029, 33.687580, 35.902660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583681, -0.370490, -0.722532,
		0.756432, 0.571576, 0.317981,
		0.295173, -0.732146, 0.613869,
		36.326580, 33.467937, 36.086823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812157, 33.947807, 35.498234>,  <36.119961, 33.980438, 35.657112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812157, 33.947807, 35.498234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735573, 33.594429, 35.669281>,  <36.689621, 33.382401, 35.771912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735573, 33.594429, 35.669281>,  <36.812157, 33.947807, 35.498234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735573, 33.594429, 35.669281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331327, -0.468282, -0.819106,
		0.923886, -0.015142, 0.382367,
		-0.191459, -0.883450, 0.427622,
		36.678135, 33.329395, 35.797569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378181, 33.512436, 35.352596>,  <36.812157, 33.947807, 35.498234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378181, 33.512436, 35.352596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079971, 33.262497, 35.445328>,  <36.901043, 33.112534, 35.500969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079971, 33.262497, 35.445328>,  <37.378181, 33.512436, 35.352596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079971, 33.262497, 35.445328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337424, -0.653853, -0.677216,
		0.574744, -0.426659, 0.698306,
		-0.745530, -0.624851, 0.231833,
		36.856312, 33.075043, 35.514877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641811, 32.808140, 35.330399>,  <37.378181, 33.512436, 35.352596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641811, 32.808140, 35.330399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247700, 32.758270, 35.283611>,  <37.011234, 32.728348, 35.255539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247700, 32.758270, 35.283611>,  <37.641811, 32.808140, 35.330399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247700, 32.758270, 35.283611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167362, -0.563985, -0.808647,
		0.034851, -0.816319, 0.576549,
		-0.985280, -0.124674, -0.116965,
		36.952114, 32.720867, 35.248520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607742, 32.169991, 35.080982>,  <37.641811, 32.808140, 35.330399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607742, 32.169991, 35.080982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244957, 32.313652, 34.992962>,  <37.027287, 32.399849, 34.940151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244957, 32.313652, 34.992962>,  <37.607742, 32.169991, 35.080982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244957, 32.313652, 34.992962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033414, -0.459430, -0.887585,
		-0.419872, -0.812364, 0.404688,
		-0.906968, 0.359150, -0.220046,
		36.972866, 32.421398, 34.926949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301189, 31.610653, 34.686562>,  <37.607742, 32.169991, 35.080982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301189, 31.610653, 34.686562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105316, 31.948067, 34.598328>,  <36.987793, 32.150517, 34.545387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105316, 31.948067, 34.598328>,  <37.301189, 31.610653, 34.686562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105316, 31.948067, 34.598328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012504, -0.259762, -0.965592,
		-0.871809, -0.470079, 0.137749,
		-0.489686, 0.843534, -0.220585,
		36.958412, 32.201126, 34.532150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761108, 31.404062, 34.408451>,  <37.301189, 31.610653, 34.686562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761108, 31.404062, 34.408451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805599, 31.780138, 34.279663>,  <36.832294, 32.005783, 34.202389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805599, 31.780138, 34.279663>,  <36.761108, 31.404062, 34.408451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805599, 31.780138, 34.279663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025904, -0.321132, -0.946680,
		-0.993457, 0.113640, -0.011365,
		0.111230, 0.940192, -0.321974,
		36.838970, 32.062195, 34.183071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270954, 31.474644, 33.966389>,  <36.761108, 31.404062, 34.408451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270954, 31.474644, 33.966389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543365, 31.745701, 33.855396>,  <36.706814, 31.908335, 33.788799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543365, 31.745701, 33.855396>,  <36.270954, 31.474644, 33.966389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543365, 31.745701, 33.855396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089034, -0.299498, -0.949934,
		-0.726821, 0.671640, -0.143634,
		0.681032, 0.677644, -0.277480,
		36.747677, 31.948994, 33.772152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012562, 31.719763, 33.312527>,  <36.270954, 31.474644, 33.966389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012562, 31.719763, 33.312527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401745, 31.811501, 33.323490>,  <36.635254, 31.866543, 33.330067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401745, 31.811501, 33.323490>,  <36.012562, 31.719763, 33.312527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401745, 31.811501, 33.323490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073904, -0.196705, -0.977673,
		-0.218834, 0.953262, -0.208336,
		0.972959, 0.229345, 0.027405,
		36.693634, 31.880304, 33.331711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183121, 32.054707, 32.678341>,  <36.012562, 31.719763, 33.312527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183121, 32.054707, 32.678341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541161, 31.941381, 32.816059>,  <36.755985, 31.873386, 32.898689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541161, 31.941381, 32.816059>,  <36.183121, 32.054707, 32.678341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541161, 31.941381, 32.816059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330200, -0.097690, -0.938842,
		0.299620, 0.954039, 0.006108,
		0.895095, -0.283312, 0.344294,
		36.809689, 31.856388, 32.919346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566460, 32.419926, 32.200798>,  <36.183121, 32.054707, 32.678341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566460, 32.419926, 32.200798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785488, 32.138962, 32.382694>,  <36.916904, 31.970385, 32.491833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785488, 32.138962, 32.382694>,  <36.566460, 32.419926, 32.200798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785488, 32.138962, 32.382694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270165, -0.365939, -0.890561,
		0.791942, 0.610504, -0.010614,
		0.547575, -0.702405, 0.454739,
		36.949760, 31.928240, 32.519115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246910, 32.491718, 31.954882>,  <36.566460, 32.419926, 32.200798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246910, 32.491718, 31.954882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194618, 32.117992, 32.087532>,  <37.163242, 31.893759, 32.167122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194618, 32.117992, 32.087532>,  <37.246910, 32.491718, 31.954882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194618, 32.117992, 32.087532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202236, -0.352592, -0.913663,
		0.970572, -0.052374, 0.235045,
		-0.130727, -0.934310, 0.331624,
		37.155399, 31.837700, 32.187019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667419, 32.083309, 31.491941>,  <37.246910, 32.491718, 31.954882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667419, 32.083309, 31.491941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409332, 31.848152, 31.687115>,  <37.254478, 31.707058, 31.804218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409332, 31.848152, 31.687115>,  <37.667419, 32.083309, 31.491941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409332, 31.848152, 31.687115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114406, -0.557110, -0.822521,
		0.755384, -0.586528, 0.292199,
		-0.645218, -0.587889, 0.487934,
		37.215767, 31.671785, 31.833494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915714, 31.423338, 31.338404>,  <37.667419, 32.083309, 31.491941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915714, 31.423338, 31.338404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539116, 31.337992, 31.442759>,  <37.313156, 31.286785, 31.505371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539116, 31.337992, 31.442759>,  <37.915714, 31.423338, 31.338404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539116, 31.337992, 31.442759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079312, -0.612086, -0.786804,
		0.327561, -0.761464, 0.559353,
		-0.941495, -0.213363, 0.260889,
		37.256668, 31.273983, 31.521025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859425, 30.651289, 31.291121>,  <37.915714, 31.423338, 31.338404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859425, 30.651289, 31.291121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482136, 30.781767, 31.266052>,  <37.255764, 30.860054, 31.251011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482136, 30.781767, 31.266052>,  <37.859425, 30.651289, 31.291121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482136, 30.781767, 31.266052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201651, -0.712264, -0.672322,
		-0.263947, -0.621512, 0.737601,
		-0.943222, 0.326196, -0.062672,
		37.199169, 30.879625, 31.247252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487724, 29.991650, 31.329405>,  <37.859425, 30.651289, 31.291121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487724, 29.991650, 31.329405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248203, 30.272001, 31.174376>,  <37.104492, 30.440212, 31.081358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248203, 30.272001, 31.174376>,  <37.487724, 29.991650, 31.329405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248203, 30.272001, 31.174376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167844, -0.582991, -0.794952,
		-0.783115, -0.410964, 0.466732,
		-0.598798, 0.700877, -0.387571,
		37.068565, 30.482264, 31.058104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832611, 29.635044, 31.228420>,  <37.487724, 29.991650, 31.329405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832611, 29.635044, 31.228420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843124, 29.951427, 30.983898>,  <36.849434, 30.141256, 30.837185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843124, 29.951427, 30.983898>,  <36.832611, 29.635044, 31.228420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843124, 29.951427, 30.983898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200870, -0.594867, -0.778322,
		-0.979265, 0.143250, 0.143244,
		0.026283, 0.790957, -0.611307,
		36.851009, 30.188715, 30.800507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.036922, 29.509836, 30.425058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263153, 29.834435, 30.366272>,  <36.398891, 30.029194, 30.330999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263153, 29.834435, 30.366272>,  <36.036922, 29.509836, 30.425058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263153, 29.834435, 30.366272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115714, -0.098356, -0.988401,
		-0.816539, 0.576020, 0.038274,
		0.565574, 0.811497, -0.146966,
		36.432827, 30.077883, 30.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617935, 30.120060, 29.972530>,  <36.036922, 29.509836, 30.425058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617935, 30.120060, 29.972530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016224, 30.141001, 29.942081>,  <36.255196, 30.153564, 29.923811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016224, 30.141001, 29.942081>,  <35.617935, 30.120060, 29.972530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016224, 30.141001, 29.942081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082762, 0.139237, -0.986795,
		-0.041059, 0.988874, 0.142974,
		0.995723, 0.052350, -0.076125,
		36.314941, 30.156706, 29.919245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701458, 30.663258, 29.532469>,  <35.617935, 30.120060, 29.972530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701458, 30.663258, 29.532469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037949, 30.447309, 29.520649>,  <36.239845, 30.317741, 29.513557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037949, 30.447309, 29.520649>,  <35.701458, 30.663258, 29.532469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037949, 30.447309, 29.520649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043411, -0.012964, -0.998973,
		0.538933, 0.841648, -0.034342,
		0.841229, -0.539871, -0.029550,
		36.290318, 30.285349, 29.511784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098785, 31.010551, 29.015659>,  <35.701458, 30.663258, 29.532469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098785, 31.010551, 29.015659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256500, 30.644358, 29.047729>,  <36.351128, 30.424643, 29.066971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256500, 30.644358, 29.047729>,  <36.098785, 31.010551, 29.015659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256500, 30.644358, 29.047729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170977, -0.012642, -0.985194,
		0.902942, 0.402158, 0.151542,
		0.394288, -0.915483, 0.080175,
		36.374786, 30.369713, 29.071781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691837, 31.016846, 28.591974>,  <36.098785, 31.010551, 29.015659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691837, 31.016846, 28.591974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629704, 30.623972, 28.634277>,  <36.592422, 30.388248, 28.659658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629704, 30.623972, 28.634277>,  <36.691837, 31.016846, 28.591974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629704, 30.623972, 28.634277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222457, -0.139085, -0.964971,
		0.962488, -0.126368, 0.240098,
		-0.155335, -0.982185, 0.105756,
		36.583103, 30.329317, 28.666004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295792, 30.709064, 28.335423>,  <36.691837, 31.016846, 28.591974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295792, 30.709064, 28.335423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985241, 30.457510, 28.318743>,  <36.798908, 30.306578, 28.308735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985241, 30.457510, 28.318743>,  <37.295792, 30.709064, 28.335423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985241, 30.457510, 28.318743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080247, -0.033009, -0.996228,
		0.625137, -0.776797, 0.076094,
		-0.776379, -0.628885, -0.041700,
		36.752327, 30.268845, 28.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408836, 30.108076, 27.890579>,  <37.295792, 30.709064, 28.335423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408836, 30.108076, 27.890579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009445, 30.087313, 27.898119>,  <36.769810, 30.074854, 27.902643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009445, 30.087313, 27.898119>,  <37.408836, 30.108076, 27.890579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009445, 30.087313, 27.898119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010267, -0.160911, -0.986916,
		0.054265, -0.985603, 0.160132,
		-0.998474, -0.051911, 0.018851,
		36.709904, 30.071739, 27.903774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267570, 29.616810, 27.455744>,  <37.408836, 30.108076, 27.890579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267570, 29.616810, 27.455744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927498, 29.827120, 27.466730>,  <36.723454, 29.953306, 27.473322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927498, 29.827120, 27.466730>,  <37.267570, 29.616810, 27.455744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927498, 29.827120, 27.466730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079824, -0.077163, -0.993818,
		-0.520407, -0.847116, 0.107572,
		-0.850179, 0.525776, 0.027464,
		36.672443, 29.984852, 27.474970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671844, 29.190380, 27.233686>,  <37.267570, 29.616810, 27.455744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671844, 29.190380, 27.233686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588322, 29.575075, 27.162735>,  <36.538208, 29.805893, 27.120165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588322, 29.575075, 27.162735>,  <36.671844, 29.190380, 27.233686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588322, 29.575075, 27.162735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230155, -0.224607, -0.946879,
		-0.950489, -0.156888, 0.268248,
		-0.208804, 0.961737, -0.177377,
		36.525681, 29.863596, 27.109522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458855, 29.199139, 26.577875>,  <36.671844, 29.190380, 27.233686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458855, 29.199139, 26.577875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458195, 29.597025, 26.618931>,  <36.457798, 29.835756, 26.643564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458195, 29.597025, 26.618931>,  <36.458855, 29.199139, 26.577875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458195, 29.597025, 26.618931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167557, 0.101461, -0.980628,
		-0.985861, 0.015583, -0.166839,
		-0.001646, 0.994718, 0.102637,
		36.457703, 29.895441, 26.649721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982399, 29.435822, 26.124866>,  <36.458855, 29.199139, 26.577875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982399, 29.435822, 26.124866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212738, 29.758926, 26.175327>,  <36.350941, 29.952789, 26.205605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212738, 29.758926, 26.175327>,  <35.982399, 29.435822, 26.124866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212738, 29.758926, 26.175327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074830, 0.101581, -0.992009,
		-0.814123, 0.580689, -0.001950,
		0.575851, 0.807763, 0.126153,
		36.385494, 30.001255, 26.213173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821686, 29.943741, 25.565382>,  <35.982399, 29.435822, 26.124866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821686, 29.943741, 25.565382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178375, 30.073471, 25.691652>,  <36.392387, 30.151308, 25.767414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178375, 30.073471, 25.691652>,  <35.821686, 29.943741, 25.565382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178375, 30.073471, 25.691652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257617, 0.209748, -0.943207,
		-0.372117, 0.922399, 0.103485,
		0.891719, 0.324323, 0.315676,
		36.445892, 30.170769, 25.786356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999405, 30.542244, 25.241356>,  <35.821686, 29.943741, 25.565382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999405, 30.542244, 25.241356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354969, 30.413513, 25.371750>,  <36.568306, 30.336275, 25.449986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354969, 30.413513, 25.371750>,  <35.999405, 30.542244, 25.241356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354969, 30.413513, 25.371750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360154, 0.051260, -0.931483,
		0.283065, 0.945410, 0.161472,
		0.888911, -0.321826, 0.325984,
		36.621643, 30.316965, 25.469545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533596, 31.023230, 24.961761>,  <35.999405, 30.542244, 25.241356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533596, 31.023230, 24.961761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727989, 30.683182, 25.042873>,  <36.844624, 30.479153, 25.091541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727989, 30.683182, 25.042873>,  <36.533596, 31.023230, 24.961761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727989, 30.683182, 25.042873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416451, 0.021266, -0.908909,
		0.768367, 0.526163, 0.364367,
		0.485983, -0.850118, 0.202781,
		36.873783, 30.428146, 25.103708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058140, 31.088711, 24.525942>,  <36.533596, 31.023230, 24.961761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058140, 31.088711, 24.525942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098549, 30.702253, 24.620907>,  <37.122795, 30.470379, 24.677885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098549, 30.702253, 24.620907>,  <37.058140, 31.088711, 24.525942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098549, 30.702253, 24.620907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214941, -0.211803, -0.953383,
		0.971388, 0.147343, 0.186267,
		0.101023, -0.966142, 0.237413,
		37.128857, 30.412411, 24.692131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762367, 30.763817, 24.294933>,  <37.058140, 31.088711, 24.525942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762367, 30.763817, 24.294933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514420, 30.451771, 24.328835>,  <37.365650, 30.264544, 24.349176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514420, 30.451771, 24.328835>,  <37.762367, 30.763817, 24.294933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514420, 30.451771, 24.328835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398528, -0.406014, -0.822391,
		0.675971, -0.475998, 0.562573,
		-0.619870, -0.780114, 0.084755,
		37.328457, 30.217737, 24.354261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116505, 30.126335, 24.133337>,  <37.762367, 30.763817, 24.294933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116505, 30.126335, 24.133337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732826, 30.066639, 24.037277>,  <37.502621, 30.030821, 23.979641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732826, 30.066639, 24.037277>,  <38.116505, 30.126335, 24.133337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732826, 30.066639, 24.037277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277810, -0.339507, -0.898641,
		0.052580, -0.928689, 0.367114,
		-0.959196, -0.149239, -0.240148,
		37.445068, 30.021868, 23.965233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084503, 29.585569, 23.783340>,  <38.116505, 30.126335, 24.133337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084503, 29.585569, 23.783340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716995, 29.697474, 23.671909>,  <37.496490, 29.764616, 23.605051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716995, 29.697474, 23.671909>,  <38.084503, 29.585569, 23.783340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716995, 29.697474, 23.671909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279037, -0.039039, -0.959486,
		-0.279301, -0.959276, -0.042196,
		-0.918765, 0.279759, -0.278578,
		37.441364, 29.781401, 23.588337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833904, 29.106962, 23.264759>,  <38.084503, 29.585569, 23.783340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833904, 29.106962, 23.264759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608318, 29.432686, 23.209848>,  <37.472969, 29.628120, 23.176901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608318, 29.432686, 23.209848>,  <37.833904, 29.106962, 23.264759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608318, 29.432686, 23.209848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166035, -0.051031, -0.984799,
		-0.808938, -0.578180, -0.106425,
		-0.563960, 0.814312, -0.137279,
		37.439129, 29.676979, 23.168665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577465, 29.016157, 22.655884>,  <37.833904, 29.106962, 23.264759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577465, 29.016157, 22.655884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487591, 29.405247, 22.678946>,  <37.433666, 29.638700, 22.692783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487591, 29.405247, 22.678946>,  <37.577465, 29.016157, 22.655884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487591, 29.405247, 22.678946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034775, 0.051127, -0.998087,
		-0.973810, -0.226263, 0.022339,
		-0.224688, 0.972724, 0.057656,
		37.420185, 29.697063, 22.696243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048859, 29.077984, 22.288723>,  <37.577465, 29.016157, 22.655884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048859, 29.077984, 22.288723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159061, 29.462080, 22.306782>,  <37.225182, 29.692537, 22.317617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159061, 29.462080, 22.306782>,  <37.048859, 29.077984, 22.288723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159061, 29.462080, 22.306782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020697, 0.041029, -0.998943,
		-0.961077, 0.276146, -0.008571,
		0.275503, 0.960239, 0.045148,
		37.241711, 29.750153, 22.320326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790073, 29.341909, 21.648287>,  <37.048859, 29.077984, 22.288723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790073, 29.341909, 21.648287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060822, 29.608753, 21.772745>,  <37.223270, 29.768860, 21.847420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060822, 29.608753, 21.772745>,  <36.790073, 29.341909, 21.648287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060822, 29.608753, 21.772745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238076, 0.201578, -0.950098,
		-0.696542, 0.717167, -0.022382,
		0.676867, 0.667111, 0.311148,
		37.263882, 29.808887, 21.866089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730637, 29.843390, 21.158325>,  <36.790073, 29.341909, 21.648287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730637, 29.843390, 21.158325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092491, 29.888151, 21.322815>,  <37.309605, 29.915009, 21.421509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092491, 29.888151, 21.322815>,  <36.730637, 29.843390, 21.158325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092491, 29.888151, 21.322815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413282, 0.005222, -0.910588,
		-0.104045, 0.993705, -0.041524,
		0.904640, 0.111903, 0.411224,
		37.363884, 29.921722, 21.446182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069721, 29.648975, 21.142076>,  <36.730637, 29.843390, 21.158325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069721, 29.648975, 21.142076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827885, 29.923569, 20.980478>,  <35.682781, 30.088324, 20.883520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827885, 29.923569, 20.980478>,  <36.069721, 29.648975, 21.142076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827885, 29.923569, 20.980478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428810, 0.146915, 0.891368,
		0.671261, 0.712151, 0.205546,
		-0.604591, 0.686481, -0.403996,
		35.646507, 30.129513, 20.859280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205475, 30.269756, 21.488497>,  <36.069721, 29.648975, 21.142076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205475, 30.269756, 21.488497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823631, 30.247547, 21.371439>,  <35.594524, 30.234222, 21.301205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823631, 30.247547, 21.371439>,  <36.205475, 30.269756, 21.488497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823631, 30.247547, 21.371439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291894, -0.021346, 0.956213,
		-0.059337, 0.998229, 0.004170,
		-0.954608, -0.055522, -0.292643,
		35.537251, 30.230890, 21.283646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850536, 30.927387, 21.687439>,  <36.205475, 30.269756, 21.488497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850536, 30.927387, 21.687439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546886, 30.672218, 21.635622>,  <35.364697, 30.519117, 21.604532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546886, 30.672218, 21.635622>,  <35.850536, 30.927387, 21.687439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546886, 30.672218, 21.635622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357049, 0.241662, 0.902283,
		-0.544279, 0.731203, -0.411221,
		-0.759129, -0.637920, -0.129544,
		35.319149, 30.480843, 21.596758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265514, 31.203733, 21.961384>,  <35.850536, 30.927387, 21.687439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265514, 31.203733, 21.961384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165279, 30.816750, 21.947367>,  <35.105141, 30.584558, 21.938957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165279, 30.816750, 21.947367>,  <35.265514, 31.203733, 21.961384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165279, 30.816750, 21.947367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410445, 0.073387, 0.908928,
		-0.876779, 0.242147, -0.415479,
		-0.250585, -0.967460, -0.035043,
		35.090103, 30.526512, 21.936853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507793, 31.110601, 22.048635>,  <35.265514, 31.203733, 21.961384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507793, 31.110601, 22.048635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663418, 30.755846, 22.148285>,  <34.756794, 30.542994, 22.208075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663418, 30.755846, 22.148285>,  <34.507793, 31.110601, 22.048635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663418, 30.755846, 22.148285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671031, -0.087562, 0.736241,
		-0.631149, -0.453611, -0.629196,
		0.389061, -0.886888, 0.249122,
		34.780136, 30.489780, 22.223022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940010, 30.726860, 22.268436>,  <34.507793, 31.110601, 22.048635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940010, 30.726860, 22.268436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258091, 30.545605, 22.429594>,  <34.448940, 30.436852, 22.526289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258091, 30.545605, 22.429594>,  <33.940010, 30.726860, 22.268436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258091, 30.545605, 22.429594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475687, -0.054170, 0.877945,
		-0.376007, -0.889792, -0.258628,
		0.795199, -0.453140, 0.402894,
		34.496651, 30.409662, 22.550463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708942, 30.206703, 22.731775>,  <33.940010, 30.726860, 22.268436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708942, 30.206703, 22.731775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085526, 30.266937, 22.852428>,  <34.311474, 30.303078, 22.924820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085526, 30.266937, 22.852428>,  <33.708942, 30.206703, 22.731775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085526, 30.266937, 22.852428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306503, 0.009698, 0.951820,
		0.140408, -0.988549, 0.055286,
		0.941457, 0.150589, 0.301631,
		34.367962, 30.312113, 22.942919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832287, 29.700039, 23.331348>,  <33.708942, 30.206703, 22.731775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832287, 29.700039, 23.331348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119427, 29.977165, 23.358774>,  <34.291710, 30.143440, 23.375229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119427, 29.977165, 23.358774>,  <33.832287, 29.700039, 23.331348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119427, 29.977165, 23.358774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186641, 0.096632, 0.977664,
		0.670715, -0.714612, 0.198675,
		0.717849, 0.692815, 0.068563,
		34.334782, 30.185009, 23.379343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276814, 29.523321, 23.925444>,  <33.832287, 29.700039, 23.331348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276814, 29.523321, 23.925444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322224, 29.916777, 23.869492>,  <34.349468, 30.152849, 23.835920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322224, 29.916777, 23.869492>,  <34.276814, 29.523321, 23.925444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322224, 29.916777, 23.869492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118463, 0.153186, 0.981071,
		0.986448, -0.094802, 0.133914,
		0.113521, 0.983640, -0.139880,
		34.356281, 30.211868, 23.827528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800854, 29.706621, 24.402805>,  <34.276814, 29.523321, 23.925444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800854, 29.706621, 24.402805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645279, 30.062531, 24.307280>,  <34.551933, 30.276075, 24.249964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645279, 30.062531, 24.307280>,  <34.800854, 29.706621, 24.402805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645279, 30.062531, 24.307280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203280, 0.335722, 0.919765,
		0.898558, 0.309182, -0.311448,
		-0.388935, 0.889773, -0.238815,
		34.528599, 30.329462, 24.235636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243649, 30.179308, 24.706316>,  <34.800854, 29.706621, 24.402805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243649, 30.179308, 24.706316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904690, 30.383644, 24.648394>,  <34.701317, 30.506247, 24.613640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904690, 30.383644, 24.648394>,  <35.243649, 30.179308, 24.706316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904690, 30.383644, 24.648394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121511, 0.452060, 0.883672,
		0.516877, 0.731221, -0.445145,
		-0.847392, 0.510840, -0.144808,
		34.650471, 30.536896, 24.604952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370644, 30.855291, 24.879501>,  <35.243649, 30.179308, 24.706316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370644, 30.855291, 24.879501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974434, 30.802095, 24.893217>,  <34.736710, 30.770178, 24.901445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974434, 30.802095, 24.893217>,  <35.370644, 30.855291, 24.879501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974434, 30.802095, 24.893217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012789, 0.337891, 0.941098,
		-0.136742, 0.931742, -0.336390,
		-0.990524, -0.132990, 0.034288,
		34.677277, 30.762199, 24.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037781, 31.400320, 25.239872>,  <35.370644, 30.855291, 24.879501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037781, 31.400320, 25.239872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737541, 31.137611, 25.268848>,  <34.557396, 30.979986, 25.286234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737541, 31.137611, 25.268848>,  <35.037781, 31.400320, 25.239872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737541, 31.137611, 25.268848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233679, 0.366399, 0.900636,
		-0.618055, 0.659091, -0.428494,
		-0.750601, -0.656773, 0.072439,
		34.512360, 30.940580, 25.290581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523087, 31.787836, 25.559793>,  <35.037781, 31.400320, 25.239872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523087, 31.787836, 25.559793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440517, 31.399632, 25.609585>,  <34.390976, 31.166708, 25.639460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440517, 31.399632, 25.609585>,  <34.523087, 31.787836, 25.559793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440517, 31.399632, 25.609585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134318, 0.154119, 0.978880,
		-0.969199, 0.185348, -0.162172,
		-0.206428, -0.970512, 0.124476,
		34.378590, 31.108479, 25.646927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882832, 31.726660, 25.994417>,  <34.523087, 31.787836, 25.559793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882832, 31.726660, 25.994417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.058968, 31.369246, 26.029514>,  <34.164650, 31.154797, 26.050573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.058968, 31.369246, 26.029514>,  <33.882832, 31.726660, 25.994417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058968, 31.369246, 26.029514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158077, 0.019043, 0.987243,
		-0.883806, -0.448592, -0.132861,
		0.440339, -0.893534, 0.087743,
		34.191071, 31.101185, 26.055838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501984, 31.390543, 26.488028>,  <33.882832, 31.726660, 25.994417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501984, 31.390543, 26.488028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847843, 31.189648, 26.483290>,  <34.055359, 31.069111, 26.480448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847843, 31.189648, 26.483290>,  <33.501984, 31.390543, 26.488028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847843, 31.189648, 26.483290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082414, -0.165060, 0.982834,
		-0.495572, -0.848830, -0.184110,
		0.864649, -0.502238, -0.011843,
		34.107239, 31.038977, 26.479736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397800, 31.100098, 27.055387>,  <33.501984, 31.390543, 26.488028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397800, 31.100098, 27.055387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778038, 31.000364, 26.981400>,  <34.006180, 30.940525, 26.937008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778038, 31.000364, 26.981400>,  <33.397800, 31.100098, 27.055387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778038, 31.000364, 26.981400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134117, -0.207523, 0.968993,
		-0.279987, -0.945921, -0.163829,
		0.950589, -0.249333, -0.184968,
		34.063213, 30.925566, 26.925909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395802, 30.466801, 27.386332>,  <33.397800, 31.100098, 27.055387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395802, 30.466801, 27.386332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756298, 30.632866, 27.336681>,  <33.972595, 30.732506, 27.306892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756298, 30.632866, 27.336681>,  <33.395802, 30.466801, 27.386332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756298, 30.632866, 27.336681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036643, 0.212404, 0.976495,
		0.431771, -0.884603, 0.176214,
		0.901239, 0.415165, -0.124124,
		34.026669, 30.757416, 27.299444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784142, 30.173073, 27.889500>,  <33.395802, 30.466801, 27.386332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784142, 30.173073, 27.889500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.997341, 30.500778, 27.804909>,  <34.125259, 30.697401, 27.754154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.997341, 30.500778, 27.804909>,  <33.784142, 30.173073, 27.889500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997341, 30.500778, 27.804909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164171, 0.145054, 0.975708,
		0.830036, -0.554770, -0.057185,
		0.532999, 0.819261, -0.211477,
		34.157242, 30.746557, 27.741467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371567, 30.085825, 28.290142>,  <33.784142, 30.173073, 27.889500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371567, 30.085825, 28.290142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311996, 30.472767, 28.208126>,  <34.276253, 30.704933, 28.158916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.311996, 30.472767, 28.208126>,  <34.371567, 30.085825, 28.290142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311996, 30.472767, 28.208126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182931, 0.230723, 0.955669,
		0.971780, 0.104820, -0.211321,
		-0.148930, 0.967357, -0.205038,
		34.267319, 30.762974, 28.146614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953991, 30.397732, 28.589710>,  <34.371567, 30.085825, 28.290142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953991, 30.397732, 28.589710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700985, 30.704712, 28.547859>,  <34.549183, 30.888899, 28.522749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700985, 30.704712, 28.547859>,  <34.953991, 30.397732, 28.589710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700985, 30.704712, 28.547859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280200, 0.352654, 0.892818,
		0.722089, 0.535404, -0.438098,
		-0.632515, 0.767449, -0.104627,
		34.511230, 30.934946, 28.516472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.708015, 31.008423, 33.065762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484646, 31.294933, 32.898376>,  <37.350624, 31.466841, 32.797947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484646, 31.294933, 32.898376>,  <37.708015, 31.008423, 33.065762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484646, 31.294933, 32.898376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074176, 0.545535, 0.834799,
		0.826234, 0.435130, -0.357769,
		-0.558422, 0.716278, -0.418463,
		37.317120, 31.509817, 32.772839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993061, 31.582846, 33.382092>,  <37.708015, 31.008423, 33.065762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993061, 31.582846, 33.382092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635475, 31.685953, 33.235458>,  <37.420925, 31.747818, 33.147480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635475, 31.685953, 33.235458>,  <37.993061, 31.582846, 33.382092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635475, 31.685953, 33.235458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150368, 0.598055, 0.787223,
		0.422158, 0.758871, -0.495880,
		-0.893964, 0.257768, -0.366584,
		37.367287, 31.763283, 33.125484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896420, 32.342968, 33.270298>,  <37.993061, 31.582846, 33.382092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896420, 32.342968, 33.270298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527843, 32.193916, 33.314289>,  <37.306698, 32.104485, 33.340683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527843, 32.193916, 33.314289>,  <37.896420, 32.342968, 33.270298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527843, 32.193916, 33.314289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148305, 0.598985, 0.786907,
		-0.359096, 0.708779, -0.607192,
		-0.921442, -0.372625, 0.109978,
		37.251411, 32.082130, 33.347282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473049, 32.905079, 33.381733>,  <37.896420, 32.342968, 33.270298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473049, 32.905079, 33.381733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256649, 32.595314, 33.512939>,  <37.126808, 32.409454, 33.591663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256649, 32.595314, 33.512939>,  <37.473049, 32.905079, 33.381733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256649, 32.595314, 33.512939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283465, 0.535107, 0.795807,
		-0.791810, 0.337553, -0.509014,
		-0.541004, -0.774415, 0.328019,
		37.094349, 32.362991, 33.611343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950729, 33.267338, 33.691307>,  <37.473049, 32.905079, 33.381733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950729, 33.267338, 33.691307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.942627, 32.894936, 33.837082>,  <36.937767, 32.671494, 33.924545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.942627, 32.894936, 33.837082>,  <36.950729, 33.267338, 33.691307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942627, 32.894936, 33.837082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251125, 0.357560, 0.899493,
		-0.967743, -0.073300, -0.241041,
		-0.020254, -0.931009, 0.364434,
		36.936550, 32.615631, 33.946411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402058, 33.287643, 34.104347>,  <36.950729, 33.267338, 33.691307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402058, 33.287643, 34.104347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580742, 32.953850, 34.233398>,  <36.687950, 32.753574, 34.310829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580742, 32.953850, 34.233398>,  <36.402058, 33.287643, 34.104347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580742, 32.953850, 34.233398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217429, 0.248536, 0.943904,
		-0.867859, -0.491796, -0.070419,
		0.446706, -0.834486, 0.322625,
		36.714752, 32.703503, 34.330185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931656, 33.102024, 34.614006>,  <36.402058, 33.287643, 34.104347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931656, 33.102024, 34.614006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.236198, 32.859722, 34.706444>,  <36.418922, 32.714340, 34.761906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.236198, 32.859722, 34.706444>,  <35.931656, 33.102024, 34.614006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236198, 32.859722, 34.706444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184140, 0.139724, 0.972918,
		-0.621635, -0.783290, -0.005164,
		0.761355, -0.605751, 0.231092,
		36.464603, 32.677998, 34.775772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658493, 32.666080, 35.103149>,  <35.931656, 33.102024, 34.614006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658493, 32.666080, 35.103149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055290, 32.685570, 35.149761>,  <36.293369, 32.697266, 35.177727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055290, 32.685570, 35.149761>,  <35.658493, 32.666080, 35.103149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055290, 32.685570, 35.149761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126220, 0.348534, 0.928759,
		0.004641, -0.936029, 0.351892,
		0.991991, 0.048726, 0.116529,
		36.352886, 32.700188, 35.184719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804577, 32.355946, 35.822395>,  <35.658493, 32.666080, 35.103149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804577, 32.355946, 35.822395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122429, 32.582436, 35.734802>,  <36.313141, 32.718330, 35.682247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122429, 32.582436, 35.734802>,  <35.804577, 32.355946, 35.822395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122429, 32.582436, 35.734802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078234, 0.262188, 0.961840,
		0.602030, -0.781440, 0.164044,
		0.794631, 0.566223, -0.218980,
		36.360817, 32.752304, 35.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461613, 32.172520, 36.210873>,  <35.804577, 32.355946, 35.822395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461613, 32.172520, 36.210873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486652, 32.553242, 36.090775>,  <36.501675, 32.781677, 36.018715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486652, 32.553242, 36.090775>,  <36.461613, 32.172520, 36.210873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486652, 32.553242, 36.090775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068489, 0.296025, 0.952721,
		0.995686, -0.080200, -0.046658,
		0.062597, 0.951807, -0.300241,
		36.505432, 32.838783, 36.000702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722252, 32.484737, 36.806881>,  <36.461613, 32.172520, 36.210873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722252, 32.484737, 36.806881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.579006, 32.783978, 36.583416>,  <36.493061, 32.963520, 36.449337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.579006, 32.783978, 36.583416>,  <36.722252, 32.484737, 36.806881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579006, 32.783978, 36.583416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214483, 0.516434, 0.829031,
		0.908710, 0.416709, -0.024486,
		-0.358110, 0.748097, -0.558666,
		36.471573, 33.008408, 36.415817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060955, 33.014248, 37.064907>,  <36.722252, 32.484737, 36.806881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060955, 33.014248, 37.064907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.724308, 33.156960, 36.902729>,  <36.522320, 33.242584, 36.805420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.724308, 33.156960, 36.902729>,  <37.060955, 33.014248, 37.064907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724308, 33.156960, 36.902729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113624, 0.616956, 0.778752,
		0.527983, 0.701482, -0.478704,
		-0.841620, 0.356775, -0.405447,
		36.471821, 33.263992, 36.781094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283958, 33.595367, 36.946827>,  <37.060955, 33.014248, 37.064907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283958, 33.595367, 36.946827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.889244, 33.555706, 36.998100>,  <36.652416, 33.531910, 37.028862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.889244, 33.555706, 36.998100>,  <37.283958, 33.595367, 36.946827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889244, 33.555706, 36.998100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010130, 0.751693, 0.659436,
		-0.161734, 0.652018, -0.740753,
		-0.986783, -0.099149, 0.128179,
		36.593208, 33.525963, 37.036552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033974, 34.231049, 36.825592>,  <37.283958, 33.595367, 36.946827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033974, 34.231049, 36.825592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761475, 34.022522, 37.031162>,  <36.597973, 33.897404, 37.154507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761475, 34.022522, 37.031162>,  <37.033974, 34.231049, 36.825592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761475, 34.022522, 37.031162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132387, 0.778200, 0.613904,
		-0.719981, 0.350184, -0.599165,
		-0.681249, -0.521321, 0.513930,
		36.557098, 33.866127, 37.185341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546360, 34.817036, 36.908833>,  <37.033974, 34.231049, 36.825592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546360, 34.817036, 36.908833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621956, 35.199379, 36.818836>,  <37.667313, 35.428783, 36.764839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621956, 35.199379, 36.818836>,  <37.546360, 34.817036, 36.908833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621956, 35.199379, 36.818836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281380, -0.166801, -0.944988,
		-0.940801, 0.241906, 0.237434,
		0.188994, 0.955855, -0.224994,
		37.678654, 35.486137, 36.751339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003666, 34.998913, 36.501663>,  <37.546360, 34.817036, 36.908833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003666, 34.998913, 36.501663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.272430, 35.284821, 36.424053>,  <37.433689, 35.456364, 36.377487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.272430, 35.284821, 36.424053>,  <37.003666, 34.998913, 36.501663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272430, 35.284821, 36.424053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149077, -0.126092, -0.980753,
		-0.725476, 0.687902, 0.021833,
		0.671909, 0.714767, -0.194027,
		37.474003, 35.499252, 36.365845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682678, 35.291958, 36.035728>,  <37.003666, 34.998913, 36.501663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682678, 35.291958, 36.035728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057728, 35.423946, 35.991962>,  <37.282757, 35.503139, 35.965702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057728, 35.423946, 35.991962>,  <36.682678, 35.291958, 36.035728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057728, 35.423946, 35.991962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158181, 0.124674, -0.979508,
		-0.309567, 0.935722, 0.169093,
		0.937629, 0.329970, -0.109418,
		37.339016, 35.522938, 35.959137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632454, 35.870899, 35.720657>,  <36.682678, 35.291958, 36.035728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632454, 35.870899, 35.720657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.002186, 35.738297, 35.645054>,  <37.224026, 35.658733, 35.599693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.002186, 35.738297, 35.645054>,  <36.632454, 35.870899, 35.720657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002186, 35.738297, 35.645054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142812, 0.158786, -0.976930,
		0.353868, 0.929996, 0.099427,
		0.924328, -0.331505, -0.189004,
		37.279484, 35.638844, 35.588352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902203, 36.302307, 35.346901>,  <36.632454, 35.870899, 35.720657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902203, 36.302307, 35.346901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130390, 35.985096, 35.261414>,  <37.267303, 35.794769, 35.210121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130390, 35.985096, 35.261414>,  <36.902203, 36.302307, 35.346901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130390, 35.985096, 35.261414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225940, 0.098646, -0.969134,
		0.789632, 0.601146, -0.122902,
		0.570467, -0.793027, -0.213717,
		37.301529, 35.747189, 35.197300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258175, 36.503891, 34.695820>,  <36.902203, 36.302307, 35.346901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258175, 36.503891, 34.695820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.273811, 36.105038, 34.721733>,  <37.283192, 35.865726, 34.737282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.273811, 36.105038, 34.721733>,  <37.258175, 36.503891, 34.695820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273811, 36.105038, 34.721733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239954, -0.072299, -0.968088,
		0.969997, 0.022297, -0.242093,
		0.039089, -0.997134, 0.064780,
		37.285538, 35.805897, 34.741165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376572, 36.285839, 34.001408>,  <37.258175, 36.503891, 34.695820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376572, 36.285839, 34.001408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302933, 35.931797, 34.172379>,  <37.258751, 35.719372, 34.274960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302933, 35.931797, 34.172379>,  <37.376572, 36.285839, 34.001408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302933, 35.931797, 34.172379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039272, -0.441135, -0.896581,
		0.982123, -0.148273, 0.115972,
		-0.184099, -0.885107, 0.427426,
		37.247704, 35.666264, 34.300606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939339, 35.858551, 33.723354>,  <37.376572, 36.285839, 34.001408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939339, 35.858551, 33.723354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.599998, 35.691582, 33.853619>,  <37.396393, 35.591400, 33.931778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.599998, 35.691582, 33.853619>,  <37.939339, 35.858551, 33.723354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599998, 35.691582, 33.853619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013442, -0.597940, -0.801428,
		0.529259, -0.684272, 0.501654,
		-0.848354, -0.417420, 0.325663,
		37.345493, 35.566357, 33.951317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948868, 35.182590, 33.494701>,  <37.939339, 35.858551, 33.723354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948868, 35.182590, 33.494701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560482, 35.247829, 33.564697>,  <37.327450, 35.286972, 33.606697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560482, 35.247829, 33.564697>,  <37.948868, 35.182590, 33.494701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560482, 35.247829, 33.564697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234731, -0.508681, -0.828339,
		-0.046085, -0.845365, 0.532197,
		-0.970967, 0.163097, 0.174991,
		37.269192, 35.296757, 33.617195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530899, 34.502087, 33.478569>,  <37.948868, 35.182590, 33.494701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530899, 34.502087, 33.478569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265930, 34.795712, 33.418774>,  <37.106949, 34.971886, 33.382896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265930, 34.795712, 33.418774>,  <37.530899, 34.502087, 33.478569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265930, 34.795712, 33.418774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276662, -0.425159, -0.861799,
		-0.696173, -0.529517, 0.484722,
		-0.662421, 0.734065, -0.149487,
		37.067204, 35.015930, 33.373928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868992, 34.181404, 33.386150>,  <37.530899, 34.502087, 33.478569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868992, 34.181404, 33.386150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861687, 34.545345, 33.220345>,  <36.857304, 34.763710, 33.120861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861687, 34.545345, 33.220345>,  <36.868992, 34.181404, 33.386150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861687, 34.545345, 33.220345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290987, -0.401478, -0.868414,
		-0.956553, 0.104762, 0.272088,
		-0.018260, 0.909858, -0.414519,
		36.856209, 34.818302, 33.095989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281872, 34.163368, 32.955891>,  <36.868992, 34.181404, 33.386150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281872, 34.163368, 32.955891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.464622, 34.487770, 32.809719>,  <36.574272, 34.682411, 32.722015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.464622, 34.487770, 32.809719>,  <36.281872, 34.163368, 32.955891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464622, 34.487770, 32.809719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273624, -0.262760, -0.925250,
		-0.846400, 0.522715, 0.101860,
		0.456877, 0.811003, -0.365428,
		36.601685, 34.731071, 32.700092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844994, 34.400959, 32.495552>,  <36.281872, 34.163368, 32.955891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844994, 34.400959, 32.495552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.206406, 34.535931, 32.389900>,  <36.423252, 34.616913, 32.326508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.206406, 34.535931, 32.389900>,  <35.844994, 34.400959, 32.495552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206406, 34.535931, 32.389900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154987, -0.317332, -0.935564,
		-0.399505, 0.886251, -0.234423,
		0.903535, 0.337430, -0.264133,
		36.477467, 34.637161, 32.310661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699574, 34.663631, 31.763794>,  <35.844994, 34.400959, 32.495552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699574, 34.663631, 31.763794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098179, 34.633034, 31.777081>,  <36.337341, 34.614674, 31.785051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098179, 34.633034, 31.777081>,  <35.699574, 34.663631, 31.763794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098179, 34.633034, 31.777081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009603, -0.290381, -0.956863,
		0.082843, 0.953848, -0.288635,
		0.996516, -0.076498, 0.033216,
		36.397133, 34.610085, 31.787045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848015, 35.396652, 31.663223>,  <35.699574, 34.663631, 31.763794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848015, 35.396652, 31.663223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.548668, 35.661739, 31.652300>,  <35.369061, 35.820793, 31.645746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.548668, 35.661739, 31.652300>,  <35.848015, 35.396652, 31.663223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548668, 35.661739, 31.652300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078288, -0.047375, 0.995804,
		0.658644, 0.747369, 0.087337,
		-0.748371, 0.662718, -0.027307,
		35.324158, 35.860554, 31.644108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991882, 36.000149, 32.186993>,  <35.848015, 35.396652, 31.663223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991882, 36.000149, 32.186993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602829, 36.019661, 32.096130>,  <35.369396, 36.031368, 32.041615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602829, 36.019661, 32.096130>,  <35.991882, 36.000149, 32.186993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602829, 36.019661, 32.096130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220827, 0.109788, 0.969114,
		0.072211, 0.992757, -0.096012,
		-0.972636, 0.048779, -0.227156,
		35.311039, 36.034294, 32.027985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702213, 36.602207, 32.602676>,  <35.991882, 36.000149, 32.186993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702213, 36.602207, 32.602676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.360691, 36.418129, 32.505325>,  <35.155777, 36.307682, 32.446915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.360691, 36.418129, 32.505325>,  <35.702213, 36.602207, 32.602676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360691, 36.418129, 32.505325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262036, -0.024057, 0.964758,
		-0.449835, 0.887490, -0.100048,
		-0.853806, -0.460198, -0.243376,
		35.104549, 36.280071, 32.432312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104187, 37.035912, 32.953239>,  <35.702213, 36.602207, 32.602676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104187, 37.035912, 32.953239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.995205, 36.654293, 32.903351>,  <34.929817, 36.425320, 32.873417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.995205, 36.654293, 32.903351>,  <35.104187, 37.035912, 32.953239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995205, 36.654293, 32.903351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487427, 0.025093, 0.872803,
		-0.829568, 0.298595, -0.471867,
		-0.272455, -0.954050, -0.124726,
		34.913467, 36.368076, 32.865932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485519, 37.064285, 33.161926>,  <35.104187, 37.035912, 32.953239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485519, 37.064285, 33.161926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554630, 36.670414, 33.171387>,  <34.596096, 36.434093, 33.177063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554630, 36.670414, 33.171387>,  <34.485519, 37.064285, 33.161926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554630, 36.670414, 33.171387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465473, -0.060468, 0.882994,
		-0.868033, -0.163574, -0.468788,
		0.172781, -0.984676, 0.023651,
		34.606464, 36.375011, 33.178482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825409, 36.838516, 33.256256>,  <34.485519, 37.064285, 33.161926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825409, 36.838516, 33.256256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094875, 36.558601, 33.351315>,  <34.256554, 36.390652, 33.408352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094875, 36.558601, 33.351315>,  <33.825409, 36.838516, 33.256256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094875, 36.558601, 33.351315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475258, -0.163950, 0.864437,
		-0.565960, -0.695283, -0.443026,
		0.673662, -0.699788, 0.237649,
		34.296974, 36.348663, 33.422611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470642, 36.246338, 33.488529>,  <33.825409, 36.838516, 33.256256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470642, 36.246338, 33.488529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.830330, 36.216084, 33.660892>,  <34.046143, 36.197929, 33.764313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.830330, 36.216084, 33.660892>,  <33.470642, 36.246338, 33.488529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830330, 36.216084, 33.660892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437325, -0.183317, 0.880421,
		0.012399, -0.980140, -0.197921,
		0.899218, -0.075639, 0.430913,
		34.100094, 36.193390, 33.790165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331524, 35.723511, 34.003643>,  <33.470642, 36.246338, 33.488529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331524, 35.723511, 34.003643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663578, 35.926414, 34.096218>,  <33.862812, 36.048157, 34.151764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663578, 35.926414, 34.096218>,  <33.331524, 35.723511, 34.003643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663578, 35.926414, 34.096218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213557, -0.094158, 0.972382,
		0.515042, -0.856634, 0.030165,
		0.830136, 0.507260, 0.231436,
		33.912621, 36.078594, 34.165649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572315, 35.393654, 34.573647>,  <33.331524, 35.723511, 34.003643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572315, 35.393654, 34.573647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.765701, 35.742798, 34.600086>,  <33.881733, 35.952286, 34.615952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.765701, 35.742798, 34.600086>,  <33.572315, 35.393654, 34.573647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765701, 35.742798, 34.600086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111609, -0.013429, 0.993661,
		0.868218, -0.487781, 0.090927,
		0.483468, 0.872863, 0.066100,
		33.910740, 36.004658, 34.619915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879646, 35.461823, 35.306179>,  <33.572315, 35.393654, 34.573647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879646, 35.461823, 35.306179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877869, 35.835861, 35.164433>,  <33.876801, 36.060284, 35.079384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877869, 35.835861, 35.164433>,  <33.879646, 35.461823, 35.306179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877869, 35.835861, 35.164433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151854, 0.349626, 0.924501,
		0.988393, 0.057922, 0.140443,
		-0.004446, 0.935097, -0.354364,
		33.876534, 36.116390, 35.058125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293640, 35.812805, 35.746464>,  <33.879646, 35.461823, 35.306179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293640, 35.812805, 35.746464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057407, 36.089005, 35.579403>,  <33.915668, 36.254723, 35.479168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057407, 36.089005, 35.579403>,  <34.293640, 35.812805, 35.746464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057407, 36.089005, 35.579403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290528, 0.300911, 0.908320,
		0.752866, 0.657776, 0.022896,
		-0.590581, 0.690495, -0.417648,
		33.880234, 36.296154, 35.454109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529472, 36.399235, 35.979599>,  <34.293640, 35.812805, 35.746464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529472, 36.399235, 35.979599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.136967, 36.432598, 35.910130>,  <33.901463, 36.452618, 35.868446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.136967, 36.432598, 35.910130>,  <34.529472, 36.399235, 35.979599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136967, 36.432598, 35.910130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147713, 0.253074, 0.956104,
		0.123702, 0.963845, -0.236011,
		-0.981264, 0.083410, -0.173678,
		33.842587, 36.457623, 35.858025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.044724, 36.489212, 28.397589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666164, 36.536823, 28.277475>,  <36.439030, 36.565392, 28.205408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666164, 36.536823, 28.277475>,  <37.044724, 36.489212, 28.397589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666164, 36.536823, 28.277475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252937, 0.305097, 0.918117,
		0.200897, 0.944854, -0.258635,
		-0.946395, 0.119029, -0.300282,
		36.382244, 36.572533, 28.187391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796371, 37.027115, 28.828405>,  <37.044724, 36.489212, 28.397589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796371, 37.027115, 28.828405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465553, 36.842846, 28.699553>,  <36.267063, 36.732285, 28.622240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465553, 36.842846, 28.699553>,  <36.796371, 37.027115, 28.828405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465553, 36.842846, 28.699553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406423, 0.094145, 0.908822,
		-0.388342, 0.882563, -0.265091,
		-0.827050, -0.460673, -0.322133,
		36.217438, 36.704643, 28.602913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170418, 37.500343, 28.965790>,  <36.796371, 37.027115, 28.828405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170418, 37.500343, 28.965790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064976, 37.116043, 28.931210>,  <36.001709, 36.885464, 28.910461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064976, 37.116043, 28.931210>,  <36.170418, 37.500343, 28.965790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064976, 37.116043, 28.931210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427185, 0.035917, 0.903451,
		-0.864884, 0.275087, -0.419885,
		-0.263608, -0.960748, -0.086449,
		35.985893, 36.827820, 28.905275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524940, 37.434734, 29.283209>,  <36.170418, 37.500343, 28.965790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524940, 37.434734, 29.283209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609749, 37.044132, 29.267788>,  <35.660633, 36.809772, 29.258535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609749, 37.044132, 29.267788>,  <35.524940, 37.434734, 29.283209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609749, 37.044132, 29.267788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575046, -0.156557, 0.803002,
		-0.790171, -0.148083, -0.594729,
		0.212020, -0.976505, -0.038552,
		35.673355, 36.751183, 29.256222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987938, 37.114265, 29.651577>,  <35.524940, 37.434734, 29.283209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987938, 37.114265, 29.651577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246956, 36.809521, 29.658045>,  <35.402367, 36.626675, 29.661924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246956, 36.809521, 29.658045>,  <34.987938, 37.114265, 29.651577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246956, 36.809521, 29.658045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232117, -0.176991, 0.956450,
		-0.725816, -0.623095, -0.291449,
		0.647543, -0.761857, 0.016168,
		35.441219, 36.580963, 29.662895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560589, 36.497261, 29.841982>,  <34.987938, 37.114265, 29.651577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560589, 36.497261, 29.841982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937939, 36.396988, 29.928886>,  <35.164349, 36.336826, 29.981030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937939, 36.396988, 29.928886>,  <34.560589, 36.497261, 29.841982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937939, 36.396988, 29.928886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258026, -0.142890, 0.955513,
		-0.208489, -0.957465, -0.199482,
		0.943374, -0.250686, 0.217260,
		35.220951, 36.321785, 29.994064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583828, 35.794670, 30.087616>,  <34.560589, 36.497261, 29.841982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583828, 35.794670, 30.087616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903904, 35.989174, 30.228045>,  <35.095947, 36.105877, 30.312302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903904, 35.989174, 30.228045>,  <34.583828, 35.794670, 30.087616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903904, 35.989174, 30.228045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231158, -0.290088, 0.928663,
		0.553412, -0.824258, -0.119722,
		0.800188, 0.486259, 0.351072,
		35.143959, 36.135052, 30.333366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791084, 35.409615, 30.617756>,  <34.583828, 35.794670, 30.087616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791084, 35.409615, 30.617756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989159, 35.743786, 30.713131>,  <35.108006, 35.944286, 30.770355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989159, 35.743786, 30.713131>,  <34.791084, 35.409615, 30.617756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989159, 35.743786, 30.713131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135429, -0.196868, 0.971032,
		0.858165, -0.513135, 0.015654,
		0.495189, 0.835426, 0.238438,
		35.137714, 35.994415, 30.784662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391933, 35.204376, 31.119637>,  <34.791084, 35.409615, 30.617756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391933, 35.204376, 31.119637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277370, 35.584724, 31.166664>,  <35.208633, 35.812931, 31.194880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277370, 35.584724, 31.166664>,  <35.391933, 35.204376, 31.119637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277370, 35.584724, 31.166664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037354, -0.133695, 0.990318,
		0.957381, 0.279239, 0.073810,
		-0.286404, 0.950869, 0.117567,
		35.191448, 35.869984, 31.201935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127529, 34.961067, 30.994007>,  <35.391933, 35.204376, 31.119637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127529, 34.961067, 30.994007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386570, 34.725632, 31.187572>,  <36.541996, 34.584370, 31.303713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386570, 34.725632, 31.187572>,  <36.127529, 34.961067, 30.994007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386570, 34.725632, 31.187572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279610, -0.407210, -0.869482,
		0.708820, 0.698388, -0.099137,
		0.647605, -0.588586, 0.483915,
		36.580853, 34.549057, 31.332747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766083, 35.047150, 30.559401>,  <36.127529, 34.961067, 30.994007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766083, 35.047150, 30.559401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825684, 34.713451, 30.771751>,  <36.861443, 34.513233, 30.899162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825684, 34.713451, 30.771751>,  <36.766083, 35.047150, 30.559401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825684, 34.713451, 30.771751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448486, -0.421463, -0.788181,
		0.881283, 0.355529, 0.311351,
		0.148997, -0.834247, 0.530878,
		36.870384, 34.463177, 30.931015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478043, 34.863632, 30.507847>,  <36.766083, 35.047150, 30.559401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478043, 34.863632, 30.507847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279453, 34.527462, 30.594744>,  <37.160301, 34.325760, 30.646883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279453, 34.527462, 30.594744>,  <37.478043, 34.863632, 30.507847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279453, 34.527462, 30.594744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600621, -0.513272, -0.613031,
		0.626714, -0.173872, 0.759604,
		-0.496472, -0.840429, 0.217244,
		37.130512, 34.275333, 30.659916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961254, 34.397293, 30.432230>,  <37.478043, 34.863632, 30.507847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961254, 34.397293, 30.432230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641529, 34.157444, 30.448023>,  <37.449696, 34.013535, 30.457499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641529, 34.157444, 30.448023>,  <37.961254, 34.397293, 30.432230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641529, 34.157444, 30.448023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398948, -0.578644, -0.711345,
		0.449386, -0.552832, 0.701733,
		-0.799308, -0.599623, 0.039483,
		37.401737, 33.977558, 30.459867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166683, 33.749817, 30.540386>,  <37.961254, 34.397293, 30.432230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166683, 33.749817, 30.540386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803097, 33.688251, 30.385420>,  <37.584946, 33.651314, 30.292440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803097, 33.688251, 30.385420>,  <38.166683, 33.749817, 30.540386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803097, 33.688251, 30.385420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416309, -0.383226, -0.824515,
		-0.021566, -0.910741, 0.412414,
		-0.908967, -0.153910, -0.387414,
		37.530407, 33.642078, 30.269196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094841, 33.003002, 30.299267>,  <38.166683, 33.749817, 30.540386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094841, 33.003002, 30.299267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820820, 33.213894, 30.098177>,  <37.656406, 33.340427, 29.977524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820820, 33.213894, 30.098177>,  <38.094841, 33.003002, 30.299267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820820, 33.213894, 30.098177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354560, -0.361532, -0.862312,
		-0.636386, -0.768976, 0.060735,
		-0.685054, 0.527229, -0.502722,
		37.615303, 33.372063, 29.947361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864685, 32.575897, 29.867105>,  <38.094841, 33.003002, 30.299267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864685, 32.575897, 29.867105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785347, 32.935219, 29.710285>,  <37.737743, 33.150814, 29.616194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785347, 32.935219, 29.710285>,  <37.864685, 32.575897, 29.867105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785347, 32.935219, 29.710285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288519, -0.328761, -0.899263,
		-0.936704, -0.291482, -0.193969,
		-0.198350, 0.898307, -0.392050,
		37.725842, 33.204712, 29.592670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775028, 32.430656, 29.084068>,  <37.864685, 32.575897, 29.867105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775028, 32.430656, 29.084068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822182, 32.827774, 29.092747>,  <37.850471, 33.066044, 29.097954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822182, 32.827774, 29.092747>,  <37.775028, 32.430656, 29.084068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822182, 32.827774, 29.092747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312419, -0.016341, -0.949804,
		-0.942602, 0.118742, -0.312093,
		0.117881, 0.992791, 0.021694,
		37.857548, 33.125610, 29.099255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515560, 32.595161, 28.475033>,  <37.775028, 32.430656, 29.084068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515560, 32.595161, 28.475033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758938, 32.884697, 28.605169>,  <37.904964, 33.058418, 28.683252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758938, 32.884697, 28.605169>,  <37.515560, 32.595161, 28.475033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758938, 32.884697, 28.605169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516369, -0.049790, -0.854918,
		-0.602626, 0.688167, -0.404064,
		0.608444, 0.723842, 0.325343,
		37.941471, 33.101849, 28.702772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507099, 33.199463, 28.040552>,  <37.515560, 32.595161, 28.475033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507099, 33.199463, 28.040552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851974, 33.265110, 28.232256>,  <38.058899, 33.304497, 28.347279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851974, 33.265110, 28.232256>,  <37.507099, 33.199463, 28.040552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851974, 33.265110, 28.232256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444476, 0.208804, -0.871115,
		-0.243038, 0.964088, 0.107082,
		0.862191, 0.164119, 0.479261,
		38.110630, 33.314346, 28.376034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693264, 33.891575, 27.873682>,  <37.507099, 33.199463, 28.040552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693264, 33.891575, 27.873682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014912, 33.680252, 27.982700>,  <38.207901, 33.553459, 28.048111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014912, 33.680252, 27.982700>,  <37.693264, 33.891575, 27.873682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014912, 33.680252, 27.982700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408663, 0.158311, -0.898850,
		0.431724, 0.834162, 0.343202,
		0.804120, -0.528309, 0.272544,
		38.256149, 33.521759, 28.064463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308670, 34.284241, 27.555193>,  <37.693264, 33.891575, 27.873682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308670, 34.284241, 27.555193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413891, 33.907639, 27.639448>,  <38.477024, 33.681679, 27.690002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413891, 33.907639, 27.639448>,  <38.308670, 34.284241, 27.555193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413891, 33.907639, 27.639448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588021, -0.016630, -0.808675,
		0.764875, 0.336587, 0.549250,
		0.263055, -0.941505, 0.210640,
		38.492805, 33.625187, 27.702641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015026, 34.185780, 27.385054>,  <38.308670, 34.284241, 27.555193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015026, 34.185780, 27.385054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895416, 33.804104, 27.389055>,  <38.823650, 33.575096, 27.391457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895416, 33.804104, 27.389055>,  <39.015026, 34.185780, 27.385054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895416, 33.804104, 27.389055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579802, -0.190002, -0.792294,
		0.757902, -0.231115, 0.610058,
		-0.299023, -0.954194, 0.010002,
		38.805710, 33.517845, 27.392056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641750, 33.746590, 27.200216>,  <39.015026, 34.185780, 27.385054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641750, 33.746590, 27.200216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342117, 33.484722, 27.159662>,  <39.162338, 33.327602, 27.135330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342117, 33.484722, 27.159662>,  <39.641750, 33.746590, 27.200216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342117, 33.484722, 27.159662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349294, -0.260272, -0.900140,
		0.562905, -0.709696, 0.423638,
		-0.749087, -0.654668, -0.101385,
		39.117390, 33.288322, 27.129248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.286934, 30.712122, 26.748522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.393118, 31.097595, 26.736874>,  <31.456829, 31.328878, 26.729885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.393118, 31.097595, 26.736874>,  <31.286934, 30.712122, 26.748522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393118, 31.097595, 26.736874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153699, 0.072119, 0.985482,
		0.951791, -0.257132, 0.167262,
		0.265462, 0.963682, -0.029122,
		31.472755, 31.386700, 26.728138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726511, 30.821693, 27.349882>,  <31.286934, 30.712122, 26.748522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726511, 30.821693, 27.349882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616755, 31.195152, 27.257786>,  <31.550901, 31.419228, 27.202528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616755, 31.195152, 27.257786>,  <31.726511, 30.821693, 27.349882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616755, 31.195152, 27.257786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121313, 0.203911, 0.971444,
		0.953936, 0.294486, 0.057312,
		-0.274390, 0.933648, -0.230243,
		31.534437, 31.475246, 27.188713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048302, 31.202005, 27.822222>,  <31.726511, 30.821693, 27.349882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048302, 31.202005, 27.822222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.767721, 31.442768, 27.669556>,  <31.599373, 31.587227, 27.577955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.767721, 31.442768, 27.669556>,  <32.048302, 31.202005, 27.822222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767721, 31.442768, 27.669556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158022, 0.390835, 0.906795,
		0.694976, 0.696386, -0.179038,
		-0.701454, 0.601908, -0.381665,
		31.557285, 31.623341, 27.555056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189743, 31.928808, 28.004534>,  <32.048302, 31.202005, 27.822222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189743, 31.928808, 28.004534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.799768, 31.890444, 27.924231>,  <31.565784, 31.867426, 27.876049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.799768, 31.890444, 27.924231>,  <32.189743, 31.928808, 28.004534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799768, 31.890444, 27.924231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222436, 0.400284, 0.888986,
		-0.004902, 0.911358, -0.411584,
		-0.974935, -0.095909, -0.200756,
		31.507288, 31.861671, 27.864004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807491, 32.640629, 28.082441>,  <32.189743, 31.928808, 28.004534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807491, 32.640629, 28.082441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.597979, 32.308887, 28.160234>,  <31.472271, 32.109840, 28.206911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.597979, 32.308887, 28.160234>,  <31.807491, 32.640629, 28.082441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597979, 32.308887, 28.160234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187029, 0.334696, 0.923579,
		-0.831068, 0.447379, -0.330421,
		-0.523780, -0.829355, 0.194483,
		31.440844, 32.060081, 28.218578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388723, 32.922802, 28.546686>,  <31.807491, 32.640629, 28.082441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388723, 32.922802, 28.546686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.329872, 32.528927, 28.584084>,  <31.294561, 32.292603, 28.606522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.329872, 32.528927, 28.584084>,  <31.388723, 32.922802, 28.546686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329872, 32.528927, 28.584084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242158, 0.127504, 0.961822,
		-0.959017, 0.118871, -0.257210,
		-0.147128, -0.984689, 0.093493,
		31.285734, 32.233521, 28.612131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722580, 32.777046, 28.899519>,  <31.388723, 32.922802, 28.546686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722580, 32.777046, 28.899519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949350, 32.453548, 28.962170>,  <31.085413, 32.259449, 28.999760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949350, 32.453548, 28.962170>,  <30.722580, 32.777046, 28.899519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949350, 32.453548, 28.962170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010851, 0.182786, 0.983093,
		-0.823696, -0.559042, 0.094851,
		0.566927, -0.808741, 0.156626,
		31.119429, 32.210926, 29.009157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502798, 32.359840, 29.497267>,  <30.722580, 32.777046, 28.899519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502798, 32.359840, 29.497267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866917, 32.198402, 29.460461>,  <31.085388, 32.101540, 29.438377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.866917, 32.198402, 29.460461>,  <30.502798, 32.359840, 29.497267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866917, 32.198402, 29.460461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109779, 0.021041, 0.993733,
		-0.399134, -0.914694, 0.063460,
		0.910297, -0.403599, -0.092016,
		31.140005, 32.077324, 29.432856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546360, 31.681725, 29.955343>,  <30.502798, 32.359840, 29.497267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546360, 31.681725, 29.955343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.922220, 31.807146, 29.900581>,  <31.147736, 31.882399, 29.867723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.922220, 31.807146, 29.900581>,  <30.546360, 31.681725, 29.955343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922220, 31.807146, 29.900581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151503, -0.022543, 0.988200,
		0.306768, -0.949303, -0.068687,
		0.939649, 0.313554, -0.136907,
		31.204115, 31.901213, 29.859509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964952, 31.312933, 30.419895>,  <30.546360, 31.681725, 29.955343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964952, 31.312933, 30.419895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.218697, 31.604973, 30.318277>,  <31.370943, 31.780197, 30.257307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.218697, 31.604973, 30.318277>,  <30.964952, 31.312933, 30.419895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218697, 31.604973, 30.318277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346723, 0.025001, 0.937634,
		0.690919, -0.682881, -0.237283,
		0.634361, 0.730101, -0.254044,
		31.409004, 31.824003, 30.242064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434778, 31.183905, 30.830187>,  <30.964952, 31.312933, 30.419895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434778, 31.183905, 30.830187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.553400, 31.548494, 30.716158>,  <31.624573, 31.767248, 30.647739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.553400, 31.548494, 30.716158>,  <31.434778, 31.183905, 30.830187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553400, 31.548494, 30.716158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152698, 0.249408, 0.956284,
		0.942729, -0.327123, -0.065217,
		0.296557, 0.911475, -0.285074,
		31.642366, 31.821938, 30.630636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161469, 31.289495, 31.049860>,  <31.434778, 31.183905, 30.830187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161469, 31.289495, 31.049860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981020, 31.643394, 31.003029>,  <31.872751, 31.855734, 30.974930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981020, 31.643394, 31.003029>,  <32.161469, 31.289495, 31.049860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981020, 31.643394, 31.003029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178298, 0.217889, 0.959549,
		0.874470, 0.411999, -0.256044,
		-0.451122, 0.884749, -0.117078,
		31.845684, 31.908819, 30.967905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596912, 31.617373, 31.480759>,  <32.161469, 31.289495, 31.049860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596912, 31.617373, 31.480759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.264153, 31.830915, 31.420166>,  <32.064499, 31.959042, 31.383810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.264153, 31.830915, 31.420166>,  <32.596912, 31.617373, 31.480759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264153, 31.830915, 31.420166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048941, 0.342489, 0.938246,
		0.552770, 0.773109, -0.311043,
		-0.831895, 0.533858, -0.151481,
		32.014584, 31.991074, 31.374722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689083, 32.411835, 31.605736>,  <32.596912, 31.617373, 31.480759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689083, 32.411835, 31.605736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.312984, 32.282913, 31.649660>,  <32.087326, 32.205559, 31.676016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.312984, 32.282913, 31.649660>,  <32.689083, 32.411835, 31.605736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312984, 32.282913, 31.649660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005262, 0.336220, 0.941769,
		-0.340456, 0.884916, -0.317825,
		-0.940246, -0.322303, 0.109812,
		32.030910, 32.186222, 31.682604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484535, 32.640636, 31.845371>,  <32.689083, 32.411835, 31.605736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484535, 32.640636, 31.845371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.714035, 32.366898, 32.025364>,  <33.851734, 32.202656, 32.133358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.714035, 32.366898, 32.025364>,  <33.484535, 32.640636, 31.845371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714035, 32.366898, 32.025364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361452, -0.281444, -0.888899,
		0.734957, 0.672654, 0.085879,
		0.573751, -0.684344, 0.449981,
		33.886162, 32.161594, 32.160358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205166, 32.771599, 31.695259>,  <33.484535, 32.640636, 31.845371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205166, 32.771599, 31.695259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174088, 32.385544, 31.795231>,  <34.155441, 32.153908, 31.855213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174088, 32.385544, 31.795231>,  <34.205166, 32.771599, 31.695259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174088, 32.385544, 31.795231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392669, -0.260047, -0.882149,
		0.916392, 0.029601, 0.399186,
		-0.077694, -0.965142, 0.249928,
		34.150780, 32.096001, 31.870209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789371, 32.466789, 31.477446>,  <34.205166, 32.771599, 31.695259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789371, 32.466789, 31.477446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567524, 32.138435, 31.531923>,  <34.434414, 31.941423, 31.564610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567524, 32.138435, 31.531923>,  <34.789371, 32.466789, 31.477446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567524, 32.138435, 31.531923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222881, -0.304251, -0.926151,
		0.801697, -0.483309, 0.351703,
		-0.554623, -0.820880, 0.136196,
		34.401138, 31.892172, 31.572783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218742, 31.942738, 31.379204>,  <34.789371, 32.466789, 31.477446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218742, 31.942738, 31.379204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.845627, 31.821041, 31.301907>,  <34.621758, 31.748022, 31.255529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.845627, 31.821041, 31.301907>,  <35.218742, 31.942738, 31.379204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845627, 31.821041, 31.301907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283090, -0.286593, -0.915273,
		0.223084, -0.908461, 0.353459,
		-0.932789, -0.304243, -0.193242,
		34.565792, 31.729769, 31.243935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273808, 31.345972, 30.917812>,  <35.218742, 31.942738, 31.379204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273808, 31.345972, 30.917812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.891903, 31.460032, 30.884073>,  <34.662758, 31.528467, 30.863829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.891903, 31.460032, 30.884073>,  <35.273808, 31.345972, 30.917812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891903, 31.460032, 30.884073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018361, -0.339650, -0.940373,
		-0.296791, -0.896287, 0.329521,
		-0.954766, 0.285145, -0.084348,
		34.605473, 31.545576, 30.858768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862595, 30.764633, 30.681068>,  <35.273808, 31.345972, 30.917812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862595, 30.764633, 30.681068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641071, 31.082405, 30.581333>,  <34.508156, 31.273069, 30.521492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641071, 31.082405, 30.581333>,  <34.862595, 30.764633, 30.681068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641071, 31.082405, 30.581333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163276, -0.397258, -0.903065,
		-0.816476, -0.459418, 0.349718,
		-0.553813, 0.794431, -0.249340,
		34.474926, 31.320734, 30.506531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300278, 30.431498, 30.244278>,  <34.862595, 30.764633, 30.681068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300278, 30.431498, 30.244278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320072, 30.824448, 30.172182>,  <34.331947, 31.060219, 30.128923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320072, 30.824448, 30.172182>,  <34.300278, 30.431498, 30.244278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320072, 30.824448, 30.172182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107727, -0.174160, -0.978807,
		-0.992948, 0.067852, 0.097210,
		0.049484, 0.982377, -0.180241,
		34.334919, 31.119162, 30.118111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692726, 30.593552, 29.826664>,  <34.300278, 30.431498, 30.244278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692726, 30.593552, 29.826664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.947014, 30.896780, 29.768436>,  <34.099586, 31.078716, 29.733500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.947014, 30.896780, 29.768436>,  <33.692726, 30.593552, 29.826664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947014, 30.896780, 29.768436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264571, 0.036824, -0.963663,
		-0.725165, 0.651131, 0.223974,
		0.635718, 0.758071, -0.145567,
		34.137730, 31.124201, 29.724766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328312, 31.032072, 29.348719>,  <33.692726, 30.593552, 29.826664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328312, 31.032072, 29.348719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.714481, 31.133141, 29.323063>,  <33.946182, 31.193783, 29.307669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.714481, 31.133141, 29.323063>,  <33.328312, 31.032072, 29.348719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714481, 31.133141, 29.323063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047034, -0.073182, -0.996209,
		-0.256409, 0.964780, -0.058767,
		0.965423, 0.252673, -0.064142,
		34.004108, 31.208942, 29.303820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361900, 31.492010, 28.846714>,  <33.328312, 31.032072, 29.348719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361900, 31.492010, 28.846714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.750679, 31.405167, 28.882891>,  <33.983948, 31.353060, 28.904596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.750679, 31.405167, 28.882891>,  <33.361900, 31.492010, 28.846714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750679, 31.405167, 28.882891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078636, -0.062431, -0.994946,
		0.221659, 0.974148, -0.043607,
		0.971948, -0.217110, 0.090441,
		34.042263, 31.340034, 28.910023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646927, 31.980869, 28.413713>,  <33.361900, 31.492010, 28.846714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646927, 31.980869, 28.413713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.900562, 31.672087, 28.431654>,  <34.052742, 31.486816, 28.442417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.900562, 31.672087, 28.431654>,  <33.646927, 31.980869, 28.413713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900562, 31.672087, 28.431654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041073, -0.091544, -0.994954,
		0.772169, 0.629047, -0.089754,
		0.634089, -0.771959, 0.044850,
		34.090790, 31.440498, 28.445108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161156, 32.062443, 27.872353>,  <33.646927, 31.980869, 28.413713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161156, 32.062443, 27.872353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154774, 31.675161, 27.972221>,  <34.150944, 31.442793, 28.032143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154774, 31.675161, 27.972221>,  <34.161156, 32.062443, 27.872353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154774, 31.675161, 27.972221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013818, -0.249464, -0.968285,
		0.999777, -0.018901, -0.009398,
		-0.015957, -0.968199, 0.249670,
		34.149986, 31.384701, 28.047123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799541, 31.809956, 27.474075>,  <34.161156, 32.062443, 27.872353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799541, 31.809956, 27.474075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588692, 31.481277, 27.560759>,  <34.462181, 31.284071, 27.612768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588692, 31.481277, 27.560759>,  <34.799541, 31.809956, 27.474075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588692, 31.481277, 27.560759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132506, -0.331369, -0.934150,
		0.839395, -0.463696, 0.283552,
		-0.527122, -0.821694, 0.216707,
		34.430553, 31.234770, 27.625771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230061, 31.242754, 27.322697>,  <34.799541, 31.809956, 27.474075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230061, 31.242754, 27.322697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.851482, 31.120260, 27.281773>,  <34.624336, 31.046764, 27.257217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.851482, 31.120260, 27.281773>,  <35.230061, 31.242754, 27.322697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851482, 31.120260, 27.281773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135173, -0.088044, -0.986902,
		0.293216, -0.947875, 0.124724,
		-0.946442, -0.306235, -0.102311,
		34.567551, 31.028389, 27.251080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594334, 30.622988, 27.491821>,  <35.230061, 31.242754, 27.322697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594334, 30.622988, 27.491821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934013, 30.411827, 27.497126>,  <36.137821, 30.285131, 27.500307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934013, 30.411827, 27.497126>,  <35.594334, 30.622988, 27.491821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934013, 30.411827, 27.497126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097298, -0.131740, 0.986498,
		-0.519028, -0.839025, -0.163238,
		0.849201, -0.527902, 0.013259,
		36.188774, 30.253456, 27.501102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469280, 30.051304, 27.919447>,  <35.594334, 30.622988, 27.491821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469280, 30.051304, 27.919447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868385, 30.077868, 27.916290>,  <36.107849, 30.093805, 27.914396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868385, 30.077868, 27.916290>,  <35.469280, 30.051304, 27.919447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868385, 30.077868, 27.916290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004779, 0.046870, 0.998890,
		0.066716, -0.996690, 0.046448,
		0.997761, 0.066420, -0.007890,
		36.167713, 30.097792, 27.913923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724415, 29.498093, 28.406609>,  <35.469280, 30.051304, 27.919447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724415, 29.498093, 28.406609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051468, 29.726059, 28.373949>,  <36.247700, 29.862839, 28.354353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051468, 29.726059, 28.373949>,  <35.724415, 29.498093, 28.406609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051468, 29.726059, 28.373949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081468, 0.025859, 0.996340,
		0.569943, -0.821295, -0.025287,
		0.817636, 0.569917, -0.081647,
		36.296761, 29.897034, 28.349455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202438, 29.075766, 28.797859>,  <35.724415, 29.498093, 28.406609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202438, 29.075766, 28.797859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305058, 29.460617, 28.760998>,  <36.366627, 29.691528, 28.738882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305058, 29.460617, 28.760998>,  <36.202438, 29.075766, 28.797859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305058, 29.460617, 28.760998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220099, 0.034684, 0.974861,
		0.941138, -0.270377, -0.202866,
		0.256544, 0.962130, -0.092152,
		36.382019, 29.749256, 28.733353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893581, 29.212822, 28.964437>,  <36.202438, 29.075766, 28.797859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893581, 29.212822, 28.964437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723877, 29.573742, 28.995062>,  <36.622055, 29.790293, 29.013435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723877, 29.573742, 28.995062>,  <36.893581, 29.212822, 28.964437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723877, 29.573742, 28.995062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266072, 0.043399, 0.962976,
		0.865568, 0.428924, -0.258489,
		-0.424261, 0.902298, 0.076560,
		36.596600, 29.844431, 29.018030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422897, 29.687195, 29.313446>,  <36.893581, 29.212822, 28.964437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422897, 29.687195, 29.313446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065216, 29.857063, 29.370102>,  <36.850609, 29.958984, 29.404097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065216, 29.857063, 29.370102>,  <37.422897, 29.687195, 29.313446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065216, 29.857063, 29.370102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229692, 0.163653, 0.959406,
		0.384251, 0.890434, -0.243882,
		-0.894199, 0.424671, 0.141642,
		36.796955, 29.984465, 29.412594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580280, 30.212595, 29.742743>,  <37.422897, 29.687195, 29.313446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580280, 30.212595, 29.742743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183609, 30.239935, 29.786383>,  <36.945606, 30.256340, 29.812567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183609, 30.239935, 29.786383>,  <37.580280, 30.212595, 29.742743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183609, 30.239935, 29.786383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126021, 0.342007, 0.931209,
		0.026336, 0.937208, -0.347774,
		-0.991678, 0.068351, 0.109101,
		36.886105, 30.260441, 29.819113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397808, 30.911261, 29.993212>,  <37.580280, 30.212595, 29.742743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397808, 30.911261, 29.993212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099255, 30.658512, 30.076780>,  <36.920124, 30.506863, 30.126923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099255, 30.658512, 30.076780>,  <37.397808, 30.911261, 29.993212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099255, 30.658512, 30.076780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049882, 0.366157, 0.929215,
		-0.663644, 0.683129, -0.304813,
		-0.746383, -0.631873, 0.208923,
		36.875340, 30.468950, 30.139458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725613, 31.274097, 30.090727>,  <37.397808, 30.911261, 29.993212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725613, 31.274097, 30.090727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759922, 30.936298, 30.302183>,  <36.780510, 30.733618, 30.429058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759922, 30.936298, 30.302183>,  <36.725613, 31.274097, 30.090727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759922, 30.936298, 30.302183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193696, 0.506340, 0.840299,
		-0.977305, -0.174473, -0.120144,
		0.085776, -0.844499, 0.528643,
		36.785656, 30.682949, 30.460775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119637, 31.156046, 30.528322>,  <36.725613, 31.274097, 30.090727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119637, 31.156046, 30.528322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432995, 30.972002, 30.695459>,  <36.621010, 30.861576, 30.795742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432995, 30.972002, 30.695459>,  <36.119637, 31.156046, 30.528322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432995, 30.972002, 30.695459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106860, 0.562564, 0.819819,
		-0.612269, -0.686893, 0.391543,
		0.783395, -0.460109, 0.417841,
		36.668015, 30.833969, 30.820812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939301, 31.311958, 31.219196>,  <36.119637, 31.156046, 30.528322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939301, 31.311958, 31.219196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316322, 31.178631, 31.228037>,  <36.542534, 31.098635, 31.233341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316322, 31.178631, 31.228037>,  <35.939301, 31.311958, 31.219196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316322, 31.178631, 31.228037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138939, 0.451337, 0.881471,
		-0.303786, -0.827764, 0.471721,
		0.942555, -0.333319, 0.022101,
		36.599091, 31.078634, 31.234667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986324, 31.053650, 31.866047>,  <35.939301, 31.311958, 31.219196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986324, 31.053650, 31.866047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365952, 31.107882, 31.752289>,  <36.593727, 31.140421, 31.684034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365952, 31.107882, 31.752289>,  <35.986324, 31.053650, 31.866047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365952, 31.107882, 31.752289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204150, 0.422883, 0.882889,
		0.239966, -0.895985, 0.373668,
		0.949073, 0.135579, -0.284393,
		36.650673, 31.148556, 31.666971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408390, 30.812580, 32.494339>,  <35.986324, 31.053650, 31.866047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408390, 30.812580, 32.494339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.672504, 31.038347, 32.296165>,  <36.830971, 31.173807, 32.177261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.672504, 31.038347, 32.296165>,  <36.408390, 30.812580, 32.494339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672504, 31.038347, 32.296165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230054, 0.475971, 0.848839,
		0.714913, -0.674452, 0.184429,
		0.660284, 0.564417, -0.495438,
		36.870590, 31.207672, 32.147533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156754, 30.668577, 32.758541>,  <36.408390, 30.812580, 32.494339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156754, 30.668577, 32.758541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143181, 31.028624, 32.584808>,  <37.135036, 31.244652, 32.480568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143181, 31.028624, 32.584808>,  <37.156754, 30.668577, 32.758541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143181, 31.028624, 32.584808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316753, 0.421859, 0.849531,
		0.947901, -0.108750, -0.299428,
		-0.033930, 0.900116, -0.434327,
		37.133003, 31.298658, 32.454510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.933311, 32.852665, 26.690653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.534340, 32.879654, 26.680998>,  <39.294956, 32.895847, 26.675205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.534340, 32.879654, 26.680998>,  <39.933311, 32.852665, 26.690653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534340, 32.879654, 26.680998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019474, -0.068966, -0.997429,
		-0.068966, -0.995334, 0.067475,
		0.997429, -0.067475, 0.024139,
		39.235111, 32.899895, 26.673756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675083, 32.236866, 26.415379>,  <39.933311, 32.852665, 26.690653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675083, 32.236866, 26.415379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411015, 32.527927, 26.340878>,  <39.252575, 32.702564, 26.296177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411015, 32.527927, 26.340878>,  <39.675083, 32.236866, 26.415379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411015, 32.527927, 26.340878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013967, -0.259820, -0.965556,
		-0.750985, -0.634831, 0.181689,
		-0.660172, 0.727656, -0.186254,
		39.212963, 32.746223, 26.285002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124477, 31.873747, 26.075146>,  <39.675083, 32.236866, 26.415379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124477, 31.873747, 26.075146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045933, 32.256680, 25.990328>,  <38.998806, 32.486439, 25.939436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045933, 32.256680, 25.990328>,  <39.124477, 31.873747, 26.075146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045933, 32.256680, 25.990328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156004, -0.244003, -0.957144,
		-0.968042, -0.154864, 0.197260,
		-0.196359, 0.957330, -0.212046,
		38.987026, 32.543877, 25.926714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568031, 31.832346, 25.651663>,  <39.124477, 31.873747, 26.075146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568031, 31.832346, 25.651663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.736084, 32.191040, 25.596014>,  <38.836918, 32.406258, 25.562624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.736084, 32.191040, 25.596014>,  <38.568031, 31.832346, 25.651663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736084, 32.191040, 25.596014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024790, -0.141911, -0.989569,
		-0.907123, 0.419201, -0.037391,
		0.420134, 0.896734, -0.139123,
		38.862125, 32.460060, 25.554277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219097, 32.156765, 25.144398>,  <38.568031, 31.832346, 25.651663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219097, 32.156765, 25.144398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556515, 32.371235, 25.156721>,  <38.758965, 32.499916, 25.164116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556515, 32.371235, 25.156721>,  <38.219097, 32.156765, 25.144398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556515, 32.371235, 25.156721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009806, 0.041983, -0.999070,
		-0.536965, 0.843065, 0.030157,
		0.843547, 0.536170, 0.030810,
		38.809578, 32.532085, 25.165964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107338, 32.701183, 24.663965>,  <38.219097, 32.156765, 25.144398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107338, 32.701183, 24.663965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503056, 32.683899, 24.719709>,  <38.740486, 32.673531, 24.753157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503056, 32.683899, 24.719709>,  <38.107338, 32.701183, 24.663965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503056, 32.683899, 24.719709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145397, 0.212114, -0.966368,
		0.012195, 0.976289, 0.216127,
		0.989298, -0.043209, 0.139362,
		38.799847, 32.670937, 24.761518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510063, 33.257893, 24.366566>,  <38.107338, 32.701183, 24.663965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510063, 33.257893, 24.366566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.837021, 33.027515, 24.371637>,  <39.033195, 32.889290, 24.374680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.837021, 33.027515, 24.371637>,  <38.510063, 33.257893, 24.366566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837021, 33.027515, 24.371637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058950, 0.061729, -0.996350,
		0.573056, 0.815157, 0.084409,
		0.817393, -0.575941, 0.012679,
		39.082237, 32.854733, 24.375441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907177, 33.509277, 23.771536>,  <38.510063, 33.257893, 24.366566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907177, 33.509277, 23.771536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037773, 33.136677, 23.835678>,  <39.116131, 32.913116, 23.874163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037773, 33.136677, 23.835678>,  <38.907177, 33.509277, 23.771536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037773, 33.136677, 23.835678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178892, -0.105688, -0.978176,
		0.928118, 0.348050, 0.132132,
		0.326489, -0.931500, 0.160355,
		39.135719, 32.857227, 23.883785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626007, 33.448170, 23.522173>,  <38.907177, 33.509277, 23.771536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626007, 33.448170, 23.522173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.460602, 33.084049, 23.529678>,  <39.361359, 32.865578, 23.534182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.460602, 33.084049, 23.529678>,  <39.626007, 33.448170, 23.522173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460602, 33.084049, 23.529678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250704, -0.133649, -0.958794,
		0.875303, -0.391768, 0.283483,
		-0.413511, -0.910305, 0.018766,
		39.336548, 32.810959, 23.535309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127930, 33.037060, 23.191858>,  <39.626007, 33.448170, 23.522173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127930, 33.037060, 23.191858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763004, 32.873276, 23.193592>,  <39.544048, 32.775005, 23.194633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763004, 32.873276, 23.193592>,  <40.127930, 33.037060, 23.191858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763004, 32.873276, 23.193592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029758, -0.076860, -0.996598,
		0.408400, -0.909085, 0.082305,
		-0.912318, -0.409459, 0.004336,
		39.489307, 32.750439, 23.194893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182663, 32.522541, 22.795660>,  <40.127930, 33.037060, 23.191858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182663, 32.522541, 22.795660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784065, 32.553131, 22.809191>,  <39.544907, 32.571484, 22.817308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784065, 32.553131, 22.809191>,  <40.182663, 32.522541, 22.795660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784065, 32.553131, 22.809191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047688, -0.187427, -0.981120,
		-0.068688, -0.979297, 0.190417,
		-0.996498, 0.076472, 0.033827,
		39.485115, 32.576073, 22.819338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993366, 31.986734, 22.328728>,  <40.182663, 32.522541, 22.795660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993366, 31.986734, 22.328728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668713, 32.216404, 22.371758>,  <39.473919, 32.354206, 22.397575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668713, 32.216404, 22.371758>,  <39.993366, 31.986734, 22.328728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668713, 32.216404, 22.371758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233960, -0.150769, -0.960485,
		-0.535269, -0.804730, 0.256703,
		-0.811634, 0.574176, 0.107573,
		39.425220, 32.388657, 22.404030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319981, 31.637674, 22.146294>,  <39.993366, 31.986734, 22.328728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319981, 31.637674, 22.146294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302345, 32.034836, 22.102123>,  <39.291763, 32.273132, 22.075621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302345, 32.034836, 22.102123>,  <39.319981, 31.637674, 22.146294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302345, 32.034836, 22.102123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443638, -0.118496, -0.888338,
		-0.895121, 0.009821, 0.445716,
		-0.044091, 0.992906, -0.110425,
		39.289120, 32.332706, 22.068996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833530, 31.046814, 21.933620>,  <39.319981, 31.637674, 22.146294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833530, 31.046814, 21.933620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721970, 31.168205, 22.298063>,  <38.655033, 31.241041, 22.516729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721970, 31.168205, 22.298063>,  <38.833530, 31.046814, 21.933620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721970, 31.168205, 22.298063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358307, 0.847354, -0.391928,
		-0.890970, -0.435766, -0.127592,
		-0.278904, 0.303479, 0.911105,
		38.638298, 31.259249, 22.571394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196304, 30.668453, 22.093576>,  <38.833530, 31.046814, 21.933620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196304, 30.668453, 22.093576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914288, 30.395729, 22.015549>,  <37.745079, 30.232094, 21.968731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914288, 30.395729, 22.015549>,  <38.196304, 30.668453, 22.093576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914288, 30.395729, 22.015549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305896, 0.044220, 0.951037,
		-0.639802, 0.730190, -0.239740,
		-0.705040, -0.681811, -0.195071,
		37.702774, 30.191185, 21.957027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756134, 30.893702, 22.494902>,  <38.196304, 30.668453, 22.093576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756134, 30.893702, 22.494902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612614, 30.529810, 22.411325>,  <37.526501, 30.311476, 22.361179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612614, 30.529810, 22.411325>,  <37.756134, 30.893702, 22.494902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612614, 30.529810, 22.411325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295437, -0.101654, 0.949938,
		-0.885424, 0.402571, -0.232293,
		-0.358805, -0.909727, -0.208942,
		37.504971, 30.256891, 22.348642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114090, 30.908899, 22.815084>,  <37.756134, 30.893702, 22.494902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114090, 30.908899, 22.815084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211895, 30.523483, 22.771618>,  <37.270576, 30.292234, 22.745537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211895, 30.523483, 22.771618>,  <37.114090, 30.908899, 22.815084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211895, 30.523483, 22.771618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316576, -0.185255, 0.930301,
		-0.916512, -0.193064, -0.350330,
		0.244508, -0.963539, -0.108669,
		37.285248, 30.234421, 22.739017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529213, 30.599146, 23.038609>,  <37.114090, 30.908899, 22.815084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529213, 30.599146, 23.038609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827850, 30.334906, 23.070101>,  <37.007034, 30.176361, 23.088995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827850, 30.334906, 23.070101>,  <36.529213, 30.599146, 23.038609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827850, 30.334906, 23.070101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251184, -0.170326, 0.952836,
		-0.616037, -0.731159, -0.293097,
		0.746596, -0.660603, 0.078729,
		37.051830, 30.136724, 23.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225895, 30.023790, 23.421099>,  <36.529213, 30.599146, 23.038609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225895, 30.023790, 23.421099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624363, 30.009901, 23.453203>,  <36.863445, 30.001568, 23.472466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624363, 30.009901, 23.453203>,  <36.225895, 30.023790, 23.421099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624363, 30.009901, 23.453203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084473, -0.144644, 0.985871,
		-0.022618, -0.988874, -0.147023,
		0.996169, -0.034718, 0.080261,
		36.923214, 29.999485, 23.477282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538513, 29.326792, 23.686798>,  <36.225895, 30.023790, 23.421099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538513, 29.326792, 23.686798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757935, 29.639622, 23.805088>,  <36.889587, 29.827320, 23.876062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757935, 29.639622, 23.805088>,  <36.538513, 29.326792, 23.686798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757935, 29.639622, 23.805088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065891, -0.312152, 0.947744,
		0.833517, -0.539372, -0.119699,
		0.548551, 0.782074, 0.295724,
		36.922501, 29.874245, 23.893805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431549, 29.271395, 24.389355>,  <36.538513, 29.326792, 23.686798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431549, 29.271395, 24.389355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720882, 29.547567, 24.393103>,  <36.894482, 29.713272, 24.395351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720882, 29.547567, 24.393103>,  <36.431549, 29.271395, 24.389355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720882, 29.547567, 24.393103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072521, 0.062467, 0.995409,
		0.686678, -0.720694, 0.095255,
		0.723335, 0.690433, 0.009370,
		36.937881, 29.754698, 24.395914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940720, 29.121954, 24.947363>,  <36.431549, 29.271395, 24.389355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940720, 29.121954, 24.947363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.962765, 29.512644, 24.864447>,  <36.975994, 29.747059, 24.814697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.962765, 29.512644, 24.864447>,  <36.940720, 29.121954, 24.947363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962765, 29.512644, 24.864447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293937, 0.214279, 0.931496,
		0.954234, 0.009589, 0.298906,
		0.055117, 0.976725, -0.207291,
		36.979301, 29.805662, 24.802259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444244, 29.344679, 25.486185>,  <36.940720, 29.121954, 24.947363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444244, 29.344679, 25.486185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257671, 29.675699, 25.361225>,  <37.145725, 29.874311, 25.286249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257671, 29.675699, 25.361225>,  <37.444244, 29.344679, 25.486185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257671, 29.675699, 25.361225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105381, 0.298670, 0.948520,
		0.878256, 0.475344, -0.052102,
		-0.466435, 0.827553, -0.312401,
		37.117741, 29.923965, 25.267506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806030, 29.897219, 25.879644>,  <37.444244, 29.344679, 25.486185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806030, 29.897219, 25.879644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.447803, 30.024927, 25.755692>,  <37.232868, 30.101553, 25.681320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.447803, 30.024927, 25.755692>,  <37.806030, 29.897219, 25.879644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447803, 30.024927, 25.755692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212307, 0.305423, 0.928247,
		0.391009, 0.897097, -0.205742,
		-0.895565, 0.319273, -0.309883,
		37.179134, 30.120708, 25.662727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652977, 30.516424, 26.203362>,  <37.806030, 29.897219, 25.879644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652977, 30.516424, 26.203362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.283615, 30.412027, 26.090792>,  <37.061996, 30.349388, 26.023251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.283615, 30.412027, 26.090792>,  <37.652977, 30.516424, 26.203362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283615, 30.412027, 26.090792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365254, 0.372267, 0.853233,
		-0.117924, 0.890674, -0.439084,
		-0.923409, -0.260994, -0.281423,
		37.006592, 30.333729, 26.006365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147682, 31.023613, 26.414722>,  <37.652977, 30.516424, 26.203362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147682, 31.023613, 26.414722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924797, 30.695761, 26.361477>,  <36.791065, 30.499050, 26.329529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924797, 30.695761, 26.361477>,  <37.147682, 31.023613, 26.414722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924797, 30.695761, 26.361477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443727, 0.158410, 0.882050,
		-0.701867, 0.550559, -0.451959,
		-0.557215, -0.819629, -0.133115,
		36.757633, 30.449873, 26.321543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428734, 31.179276, 26.529345>,  <37.147682, 31.023613, 26.414722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428734, 31.179276, 26.529345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465225, 30.784792, 26.584576>,  <36.487122, 30.548101, 26.617714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465225, 30.784792, 26.584576>,  <36.428734, 31.179276, 26.529345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465225, 30.784792, 26.584576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374360, 0.094520, 0.922453,
		-0.922785, -0.135847, -0.360575,
		0.091231, -0.986211, 0.138077,
		36.492596, 30.488928, 26.625999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908081, 31.010157, 26.978107>,  <36.428734, 31.179276, 26.529345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908081, 31.010157, 26.978107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107693, 30.665216, 27.012337>,  <36.227459, 30.458252, 27.032875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107693, 30.665216, 27.012337>,  <35.908081, 31.010157, 26.978107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107693, 30.665216, 27.012337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218795, -0.029829, 0.975315,
		-0.838512, -0.505431, -0.203564,
		0.499026, -0.862351, 0.085574,
		36.257401, 30.406511, 27.038010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274620, 30.705555, 26.804224>,  <35.908081, 31.010157, 26.978107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274620, 30.705555, 26.804224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.877934, 30.746984, 26.834608>,  <34.639923, 30.771841, 26.852839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.877934, 30.746984, 26.834608>,  <35.274620, 30.705555, 26.804224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877934, 30.746984, 26.834608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085014, -0.086017, -0.992660,
		-0.096307, -0.990893, 0.094112,
		-0.991714, 0.103601, 0.075956,
		34.580418, 30.778057, 26.857395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080666, 30.156477, 26.442858>,  <35.274620, 30.705555, 26.804224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080666, 30.156477, 26.442858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.780815, 30.420895, 26.455994>,  <34.600903, 30.579546, 26.463875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.780815, 30.420895, 26.455994>,  <35.080666, 30.156477, 26.442858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780815, 30.420895, 26.455994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058352, -0.016584, -0.998158,
		-0.659282, -0.750164, 0.051005,
		-0.749628, 0.661044, 0.032839,
		34.555927, 30.619207, 26.465845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613377, 29.838881, 26.083006>,  <35.080666, 30.156477, 26.442858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613377, 29.838881, 26.083006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453976, 30.205641, 26.091856>,  <34.358334, 30.425697, 26.097166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453976, 30.205641, 26.091856>,  <34.613377, 29.838881, 26.083006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453976, 30.205641, 26.091856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172941, -0.051431, -0.983589,
		-0.900715, -0.395789, 0.179064,
		-0.398503, 0.916900, 0.022124,
		34.334423, 30.480711, 26.098494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991848, 29.867588, 25.806404>,  <34.613377, 29.838881, 26.083006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991848, 29.867588, 25.806404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.126396, 30.241158, 25.758003>,  <34.207123, 30.465300, 25.728962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.126396, 30.241158, 25.758003>,  <33.991848, 29.867588, 25.806404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126396, 30.241158, 25.758003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155890, -0.071498, -0.985183,
		-0.928739, 0.350246, 0.121540,
		0.336367, 0.933925, -0.121003,
		34.227306, 30.521336, 25.721703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581085, 30.092064, 25.284550>,  <33.991848, 29.867588, 25.806404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581085, 30.092064, 25.284550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865833, 30.372942, 25.279310>,  <34.036682, 30.541468, 25.276167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865833, 30.372942, 25.279310>,  <33.581085, 30.092064, 25.284550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865833, 30.372942, 25.279310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080439, 0.062989, -0.994767,
		-0.697694, 0.709195, 0.101323,
		0.711866, 0.702193, -0.013100,
		34.079391, 30.583599, 25.275379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383625, 30.683790, 24.869432>,  <33.581085, 30.092064, 25.284550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383625, 30.683790, 24.869432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782482, 30.710474, 24.883619>,  <34.021797, 30.726484, 24.892132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782482, 30.710474, 24.883619>,  <33.383625, 30.683790, 24.869432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782482, 30.710474, 24.883619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036633, -0.016334, -0.999195,
		-0.066077, 0.997639, -0.018731,
		0.997142, 0.066710, 0.035467,
		34.081623, 30.730488, 24.894260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601849, 31.296789, 24.452002>,  <33.383625, 30.683790, 24.869432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601849, 31.296789, 24.452002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.931820, 31.072512, 24.480614>,  <34.129803, 30.937944, 24.497782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.931820, 31.072512, 24.480614>,  <33.601849, 31.296789, 24.452002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931820, 31.072512, 24.480614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091748, 0.007951, -0.995751,
		0.557742, 0.827985, 0.058002,
		0.824928, -0.560693, 0.071531,
		34.179298, 30.904305, 24.502073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289410, 32.027115, 24.481396>,  <33.601849, 31.296789, 24.452002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289410, 32.027115, 24.481396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.910679, 32.071182, 24.360472>,  <32.683441, 32.097622, 24.287918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.910679, 32.071182, 24.360472>,  <33.289410, 32.027115, 24.481396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910679, 32.071182, 24.360472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321477, -0.284679, 0.903112,
		0.013433, 0.952272, 0.304957,
		-0.946822, 0.110168, -0.302309,
		32.626633, 32.104233, 24.269779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005013, 32.460114, 24.959431>,  <33.289410, 32.027115, 24.481396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005013, 32.460114, 24.959431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685009, 32.281624, 24.798994>,  <32.493008, 32.174530, 24.702732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685009, 32.281624, 24.798994>,  <33.005013, 32.460114, 24.959431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685009, 32.281624, 24.798994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417278, -0.066562, 0.906338,
		-0.431129, 0.892442, -0.132950,
		-0.800004, -0.446225, -0.401094,
		32.445007, 32.147755, 24.678665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492420, 32.877899, 25.213676>,  <33.005013, 32.460114, 24.959431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492420, 32.877899, 25.213676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.323933, 32.539795, 25.082151>,  <32.222839, 32.336933, 25.003237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.323933, 32.539795, 25.082151>,  <32.492420, 32.877899, 25.213676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323933, 32.539795, 25.082151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414546, -0.143028, 0.898718,
		-0.806677, 0.514863, -0.290151,
		-0.421217, -0.845257, -0.328812,
		32.197567, 32.286217, 24.983507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819593, 32.811241, 25.471151>,  <32.492420, 32.877899, 25.213676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819593, 32.811241, 25.471151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913967, 32.430996, 25.390486>,  <31.970592, 32.202850, 25.342087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913967, 32.430996, 25.390486>,  <31.819593, 32.811241, 25.471151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913967, 32.430996, 25.390486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359632, -0.278204, 0.890656,
		-0.902773, -0.137612, -0.407509,
		0.235936, -0.950613, -0.201665,
		31.984747, 32.145813, 25.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132225, 32.377338, 25.496628>,  <31.819593, 32.811241, 25.471151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132225, 32.377338, 25.496628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436617, 32.121048, 25.537384>,  <31.619251, 31.967274, 25.561838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436617, 32.121048, 25.537384>,  <31.132225, 32.377338, 25.496628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436617, 32.121048, 25.537384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338272, -0.257838, 0.905037,
		-0.553611, -0.723179, -0.412949,
		0.760978, -0.640728, 0.101889,
		31.664909, 31.928829, 25.567951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787056, 31.662848, 25.801128>,  <31.132225, 32.377338, 25.496628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787056, 31.662848, 25.801128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177431, 31.686752, 25.885008>,  <31.411655, 31.701096, 25.935335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177431, 31.686752, 25.885008>,  <30.787056, 31.662848, 25.801128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177431, 31.686752, 25.885008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182645, -0.301269, 0.935884,
		0.119107, -0.951665, -0.283104,
		0.975938, 0.059763, 0.209700,
		31.470213, 31.704681, 25.947918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919123, 30.932253, 26.154129>,  <30.787056, 31.662848, 25.801128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919123, 30.932253, 26.154129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.201046, 31.207712, 26.222256>,  <31.370201, 31.372988, 26.263132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.201046, 31.207712, 26.222256>,  <30.919123, 30.932253, 26.154129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201046, 31.207712, 26.222256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151240, -0.088701, 0.984509,
		0.693087, -0.719650, 0.041634,
		0.704809, 0.688648, 0.170317,
		31.412489, 31.414307, 26.273352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.543217, 34.380711, 21.193987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.755981, 34.143318, 21.435598>,  <36.883640, 34.000881, 21.580564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.755981, 34.143318, 21.435598>,  <36.543217, 34.380711, 21.193987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755981, 34.143318, 21.435598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355436, 0.490951, 0.795382,
		-0.768595, -0.637763, 0.050195,
		0.531908, -0.593486, 0.604027,
		36.915554, 33.965271, 21.616806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085892, 34.340988, 21.788723>,  <36.543217, 34.380711, 21.193987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085892, 34.340988, 21.788723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.443752, 34.209209, 21.909428>,  <36.658470, 34.130142, 21.981850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.443752, 34.209209, 21.909428>,  <36.085892, 34.340988, 21.788723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443752, 34.209209, 21.909428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137230, 0.440141, 0.887380,
		-0.425159, -0.835310, 0.348565,
		0.894655, -0.329444, 0.301759,
		36.712151, 34.110378, 21.999956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958080, 33.969673, 22.380239>,  <36.085892, 34.340988, 21.788723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958080, 33.969673, 22.380239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342983, 34.074669, 22.408991>,  <36.573925, 34.137669, 22.426243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342983, 34.074669, 22.408991>,  <35.958080, 33.969673, 22.380239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342983, 34.074669, 22.408991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187447, 0.447736, 0.874298,
		0.197311, -0.854770, 0.480038,
		0.962254, 0.262491, 0.071881,
		36.631660, 34.153416, 22.430555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140934, 33.653511, 22.982292>,  <35.958080, 33.969673, 22.380239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140934, 33.653511, 22.982292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.369427, 33.970413, 22.896484>,  <36.506523, 34.160557, 22.844999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.369427, 33.970413, 22.896484>,  <36.140934, 33.653511, 22.982292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369427, 33.970413, 22.896484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176440, 0.373776, 0.910583,
		0.801601, -0.482302, 0.353299,
		0.571230, 0.792260, -0.214522,
		36.540794, 34.208092, 22.832129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486687, 33.740772, 23.650032>,  <36.140934, 33.653511, 22.982292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486687, 33.740772, 23.650032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.557568, 34.083885, 23.457033>,  <36.600098, 34.289753, 23.341234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.557568, 34.083885, 23.457033>,  <36.486687, 33.740772, 23.650032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557568, 34.083885, 23.457033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190973, 0.510906, 0.838156,
		0.965468, -0.056380, 0.254348,
		0.177203, 0.857786, -0.482496,
		36.610729, 34.341221, 23.312284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069897, 33.995880, 23.969702>,  <36.486687, 33.740772, 23.650032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069897, 33.995880, 23.969702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.859779, 34.291473, 23.800955>,  <36.733707, 34.468830, 23.699707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.859779, 34.291473, 23.800955>,  <37.069897, 33.995880, 23.969702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859779, 34.291473, 23.800955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069932, 0.456612, 0.886913,
		0.848040, 0.495395, -0.188179,
		-0.525297, 0.738979, -0.421869,
		36.702190, 34.513168, 23.674395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473057, 34.625164, 24.266125>,  <37.069897, 33.995880, 23.969702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473057, 34.625164, 24.266125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.103500, 34.728523, 24.153225>,  <36.881767, 34.790539, 24.085485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.103500, 34.728523, 24.153225>,  <37.473057, 34.625164, 24.266125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103500, 34.728523, 24.153225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149482, 0.435282, 0.887797,
		0.352261, 0.862416, -0.363526,
		-0.923887, 0.258395, -0.282249,
		36.826336, 34.806042, 24.068550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386417, 35.201466, 24.604883>,  <37.473057, 34.625164, 24.266125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386417, 35.201466, 24.604883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.011421, 35.157383, 24.472841>,  <36.786423, 35.130932, 24.393616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.011421, 35.157383, 24.472841>,  <37.386417, 35.201466, 24.604883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011421, 35.157383, 24.472841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330511, 0.578991, 0.745340,
		0.108985, 0.807851, -0.579222,
		-0.937489, -0.110208, -0.330105,
		36.730175, 35.124321, 24.373810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180202, 35.813072, 24.741215>,  <37.386417, 35.201466, 24.604883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180202, 35.813072, 24.741215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.829002, 35.627560, 24.693855>,  <36.618282, 35.516251, 24.665440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.829002, 35.627560, 24.693855>,  <37.180202, 35.813072, 24.741215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829002, 35.627560, 24.693855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374583, 0.511756, 0.773171,
		-0.297992, 0.723196, -0.623048,
		-0.878002, -0.463782, -0.118398,
		36.565601, 35.488426, 24.658337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538960, 36.376915, 24.791040>,  <37.180202, 35.813072, 24.741215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538960, 36.376915, 24.791040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444374, 36.005131, 24.904314>,  <36.387623, 35.782063, 24.972279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444374, 36.005131, 24.904314>,  <36.538960, 36.376915, 24.791040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444374, 36.005131, 24.904314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370486, 0.355679, 0.858040,
		-0.898234, 0.097982, -0.428457,
		-0.236465, -0.929458, 0.283182,
		36.373436, 35.726292, 24.989269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875298, 36.485603, 25.110216>,  <36.538960, 36.376915, 24.791040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875298, 36.485603, 25.110216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038429, 36.142483, 25.235340>,  <36.136307, 35.936611, 25.310413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038429, 36.142483, 25.235340>,  <35.875298, 36.485603, 25.110216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038429, 36.142483, 25.235340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197546, 0.251583, 0.947461,
		-0.891433, -0.448194, -0.066853,
		0.407827, -0.857804, 0.312808,
		36.160778, 35.885143, 25.329182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456364, 36.276264, 25.576042>,  <35.875298, 36.485603, 25.110216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456364, 36.276264, 25.576042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808960, 36.114376, 25.673353>,  <36.020515, 36.017242, 25.731739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808960, 36.114376, 25.673353>,  <35.456364, 36.276264, 25.576042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808960, 36.114376, 25.673353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135487, 0.276758, 0.951340,
		-0.452353, -0.871555, 0.189125,
		0.881487, -0.404718, 0.243277,
		36.073406, 35.992962, 25.746336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784012, 35.884129, 25.634930>,  <35.456364, 36.276264, 25.576042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784012, 35.884129, 25.634930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.402252, 36.000595, 25.608570>,  <34.173195, 36.070473, 25.592754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.402252, 36.000595, 25.608570>,  <34.784012, 35.884129, 25.634930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402252, 36.000595, 25.608570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029710, -0.312299, -0.949519,
		-0.297037, -0.904267, 0.306709,
		-0.954404, 0.291155, -0.065899,
		34.115932, 36.087944, 25.588800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640778, 35.511219, 25.093639>,  <34.784012, 35.884129, 25.634930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640778, 35.511219, 25.093639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.327518, 35.757854, 25.125900>,  <34.139565, 35.905834, 25.145256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.327518, 35.757854, 25.125900>,  <34.640778, 35.511219, 25.093639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327518, 35.757854, 25.125900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142582, -0.051810, -0.988426,
		-0.605270, -0.785582, 0.128489,
		-0.783147, 0.616585, 0.080650,
		34.092575, 35.942829, 25.150095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223946, 35.199108, 24.623480>,  <34.640778, 35.511219, 25.093639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223946, 35.199108, 24.623480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.112873, 35.578968, 24.681517>,  <34.046230, 35.806885, 24.716339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.112873, 35.578968, 24.681517>,  <34.223946, 35.199108, 24.623480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112873, 35.578968, 24.681517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229278, 0.081155, -0.969972,
		-0.932912, -0.302608, 0.195200,
		-0.277680, 0.949654, 0.145092,
		34.029568, 35.863865, 24.725044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571682, 35.225613, 24.369270>,  <34.223946, 35.199108, 24.623480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571682, 35.225613, 24.369270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.728123, 35.593632, 24.378656>,  <33.821987, 35.814442, 24.384289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.728123, 35.593632, 24.378656>,  <33.571682, 35.225613, 24.369270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728123, 35.593632, 24.378656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094930, 0.065688, -0.993314,
		-0.915438, 0.386260, 0.113031,
		0.391103, 0.920048, 0.023466,
		33.845455, 35.869648, 24.385696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096142, 35.632099, 23.959175>,  <33.571682, 35.225613, 24.369270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096142, 35.632099, 23.959175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.443676, 35.829044, 23.980003>,  <33.652195, 35.947212, 23.992500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.443676, 35.829044, 23.980003>,  <33.096142, 35.632099, 23.959175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443676, 35.829044, 23.980003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072387, 0.230366, -0.970408,
		-0.489787, 0.839352, 0.235789,
		0.868832, 0.492361, 0.052072,
		33.704327, 35.976753, 23.995625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037815, 36.285885, 23.604448>,  <33.096142, 35.632099, 23.959175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037815, 36.285885, 23.604448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.430847, 36.212315, 23.615120>,  <33.666668, 36.168175, 23.621523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.430847, 36.212315, 23.615120>,  <33.037815, 36.285885, 23.604448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430847, 36.212315, 23.615120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024958, -0.011657, -0.999621,
		0.184163, 0.982872, -0.006863,
		0.982579, -0.183922, 0.026677,
		33.725620, 36.157139, 23.623123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329510, 36.667480, 22.992153>,  <33.037815, 36.285885, 23.604448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329510, 36.667480, 22.992153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.604122, 36.395065, 23.094027>,  <33.768890, 36.231617, 23.155151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.604122, 36.395065, 23.094027>,  <33.329510, 36.667480, 22.992153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604122, 36.395065, 23.094027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240448, -0.117917, -0.963473,
		0.686197, 0.722688, 0.082802,
		0.686527, -0.681042, 0.254683,
		33.810081, 36.190754, 23.170431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122108, 36.822880, 22.732279>,  <33.329510, 36.667480, 22.992153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122108, 36.822880, 22.732279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.032547, 36.436417, 22.783518>,  <33.978809, 36.204540, 22.814260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.032547, 36.436417, 22.783518>,  <34.122108, 36.822880, 22.732279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032547, 36.436417, 22.783518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032628, -0.138790, -0.989784,
		0.974066, -0.217434, 0.062598,
		-0.223901, -0.966157, 0.128096,
		33.965378, 36.146568, 22.821947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549362, 36.434940, 22.352844>,  <34.122108, 36.822880, 22.732279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549362, 36.434940, 22.352844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.300282, 36.141373, 22.461370>,  <34.150833, 35.965233, 22.526485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.300282, 36.141373, 22.461370>,  <34.549362, 36.434940, 22.352844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300282, 36.141373, 22.461370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033282, -0.371273, -0.927927,
		0.781754, -0.568789, 0.255617,
		-0.622698, -0.733918, 0.271314,
		34.113472, 35.921196, 22.542765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834156, 35.887791, 22.012985>,  <34.549362, 36.434940, 22.352844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834156, 35.887791, 22.012985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457401, 35.789703, 22.104824>,  <34.231346, 35.730850, 22.159927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457401, 35.789703, 22.104824>,  <34.834156, 35.887791, 22.012985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457401, 35.789703, 22.104824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053809, -0.564524, -0.823661,
		0.331588, -0.788151, 0.518524,
		-0.941888, -0.245215, 0.229599,
		34.174835, 35.716141, 22.173704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828785, 35.124092, 22.051298>,  <34.834156, 35.887791, 22.012985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828785, 35.124092, 22.051298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.451920, 35.238621, 21.981607>,  <34.225800, 35.307339, 21.939793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.451920, 35.238621, 21.981607>,  <34.828785, 35.124092, 22.051298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451920, 35.238621, 21.981607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008783, -0.498553, -0.866815,
		-0.335050, -0.818208, 0.467201,
		-0.942160, 0.286323, -0.174227,
		34.169273, 35.324516, 21.929338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483562, 34.511780, 21.725405>,  <34.828785, 35.124092, 22.051298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483562, 34.511780, 21.725405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.233574, 34.802055, 21.610312>,  <34.083580, 34.976219, 21.541256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.233574, 34.802055, 21.610312>,  <34.483562, 34.511780, 21.725405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233574, 34.802055, 21.610312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008246, -0.374698, -0.927110,
		-0.780604, -0.577044, 0.240160,
		-0.624971, 0.725687, -0.287733,
		34.046082, 35.019760, 21.523993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850540, 34.175541, 21.477966>,  <34.483562, 34.511780, 21.725405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850540, 34.175541, 21.477966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.874332, 34.534729, 21.303556>,  <33.888607, 34.750240, 21.198910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.874332, 34.534729, 21.303556>,  <33.850540, 34.175541, 21.477966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874332, 34.534729, 21.303556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148593, -0.423968, -0.893404,
		-0.987108, 0.117933, 0.108213,
		0.059483, 0.897966, -0.436026,
		33.892178, 34.804119, 21.172749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757416, 34.313015, 22.266834>,  <33.850540, 34.175541, 21.477966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757416, 34.313015, 22.266834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.640190, 34.028446, 22.011335>,  <33.569855, 33.857704, 21.858036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.640190, 34.028446, 22.011335>,  <33.757416, 34.313015, 22.266834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640190, 34.028446, 22.011335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374768, -0.529142, 0.761287,
		-0.879582, 0.462487, -0.111545,
		-0.293062, -0.711418, -0.638749,
		33.552273, 33.815022, 21.819712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998444, 34.192612, 22.364094>,  <33.757416, 34.313015, 22.266834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998444, 34.192612, 22.364094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.143456, 33.862316, 22.191246>,  <33.230465, 33.664139, 22.087538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.143456, 33.862316, 22.191246>,  <32.998444, 34.192612, 22.364094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143456, 33.862316, 22.191246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379577, -0.554284, 0.740736,
		-0.851171, -0.104519, -0.514377,
		0.362532, -0.825739, -0.432118,
		33.252216, 33.614594, 22.061611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367031, 33.782452, 22.246492>,  <32.998444, 34.192612, 22.364094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367031, 33.782452, 22.246492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.690395, 33.548340, 22.221445>,  <32.884415, 33.407871, 22.206417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.690395, 33.548340, 22.221445>,  <32.367031, 33.782452, 22.246492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690395, 33.548340, 22.221445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358513, -0.573959, 0.736233,
		-0.466839, -0.572731, -0.673825,
		0.808412, -0.585277, -0.062615,
		32.932919, 33.372757, 22.202660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121864, 33.200542, 22.153023>,  <32.367031, 33.782452, 22.246492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121864, 33.200542, 22.153023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.491467, 33.153419, 22.298534>,  <32.713226, 33.125145, 22.385841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.491467, 33.153419, 22.298534>,  <32.121864, 33.200542, 22.153023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491467, 33.153419, 22.298534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360862, -0.583305, 0.727691,
		0.126464, -0.803664, -0.581490,
		0.924005, -0.117810, 0.363779,
		32.768669, 33.118076, 22.407667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252682, 32.564743, 22.227051>,  <32.121864, 33.200542, 22.153023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252682, 32.564743, 22.227051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.497089, 32.716213, 22.505117>,  <32.643734, 32.807095, 22.671957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.497089, 32.716213, 22.505117>,  <32.252682, 32.564743, 22.227051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497089, 32.716213, 22.505117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336328, -0.670783, 0.661009,
		0.716614, -0.637695, -0.282504,
		0.611021, 0.378674, 0.695168,
		32.680397, 32.829815, 22.713669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276085, 31.914902, 22.685223>,  <32.252682, 32.564743, 22.227051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276085, 31.914902, 22.685223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.485588, 32.194778, 22.879585>,  <32.611290, 32.362705, 22.996202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.485588, 32.194778, 22.879585>,  <32.276085, 31.914902, 22.685223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485588, 32.194778, 22.879585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171997, -0.471797, 0.864769,
		0.834321, -0.536507, -0.126764,
		0.523761, 0.699692, 0.485907,
		32.642715, 32.404686, 23.025358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821720, 31.573574, 23.092010>,  <32.276085, 31.914902, 22.685223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821720, 31.573574, 23.092010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.722542, 31.927902, 23.248903>,  <32.663036, 32.140499, 23.343039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.722542, 31.927902, 23.248903>,  <32.821720, 31.573574, 23.092010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722542, 31.927902, 23.248903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158342, -0.436485, 0.885669,
		0.955747, 0.157489, 0.248486,
		-0.247943, 0.885821, 0.392232,
		32.648159, 32.193649, 23.366573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244240, 31.674461, 23.794024>,  <32.821720, 31.573574, 23.092010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244240, 31.674461, 23.794024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.909885, 31.894020, 23.793419>,  <32.709274, 32.025757, 23.793056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.909885, 31.894020, 23.793419>,  <33.244240, 31.674461, 23.794024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909885, 31.894020, 23.793419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228268, -0.345109, 0.910381,
		0.499185, 0.761321, 0.413768,
		-0.835888, 0.548899, -0.001511,
		32.659119, 32.058689, 23.792965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965397, 31.483088, 23.836323>,  <33.244240, 31.674461, 23.794024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965397, 31.483088, 23.836323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.128868, 31.143467, 23.970243>,  <34.226952, 30.939693, 24.050596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.128868, 31.143467, 23.970243>,  <33.965397, 31.483088, 23.836323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128868, 31.143467, 23.970243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290556, -0.226714, -0.929612,
		0.865194, 0.477189, 0.154045,
		0.408676, -0.849054, 0.334802,
		34.251472, 30.888750, 24.070684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743687, 31.413572, 23.698889>,  <33.965397, 31.483088, 23.836323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743687, 31.413572, 23.698889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.592503, 31.043287, 23.704542>,  <34.501793, 30.821115, 23.707933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.592503, 31.043287, 23.704542>,  <34.743687, 31.413572, 23.698889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592503, 31.043287, 23.704542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384510, -0.170840, -0.907175,
		0.842199, -0.337440, 0.420517,
		-0.377959, -0.925715, 0.014132,
		34.479115, 30.765574, 23.708782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312599, 31.009466, 23.572636>,  <34.743687, 31.413572, 23.698889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312599, 31.009466, 23.572636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.989994, 30.783978, 23.501350>,  <34.796432, 30.648684, 23.458580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.989994, 30.783978, 23.501350>,  <35.312599, 31.009466, 23.572636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989994, 30.783978, 23.501350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404674, -0.306600, -0.861531,
		0.431024, -0.766951, 0.475399,
		-0.806510, -0.563723, -0.178213,
		34.748043, 30.614861, 23.447887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572987, 30.393726, 23.323219>,  <35.312599, 31.009466, 23.572636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572987, 30.393726, 23.323219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.195641, 30.401438, 23.190737>,  <34.969234, 30.406065, 23.111246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.195641, 30.401438, 23.190737>,  <35.572987, 30.393726, 23.323219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195641, 30.401438, 23.190737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316168, -0.250293, -0.915091,
		-0.100541, -0.967978, 0.230021,
		-0.943361, 0.019279, -0.331208,
		34.912632, 30.407221, 23.091373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613049, 29.840624, 22.914705>,  <35.572987, 30.393726, 23.323219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613049, 29.840624, 22.914705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.258842, 29.999702, 22.818623>,  <35.046318, 30.095150, 22.760973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.258842, 29.999702, 22.818623>,  <35.613049, 29.840624, 22.914705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258842, 29.999702, 22.818623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148280, -0.248061, -0.957329,
		-0.440312, -0.883348, 0.160692,
		-0.885516, 0.397696, -0.240207,
		34.993187, 30.119011, 22.746561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263813, 29.310490, 22.461737>,  <35.613049, 29.840624, 22.914705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263813, 29.310490, 22.461737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.125904, 29.681049, 22.401182>,  <35.043159, 29.903385, 22.364849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.125904, 29.681049, 22.401182>,  <35.263813, 29.310490, 22.461737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125904, 29.681049, 22.401182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255519, -0.062563, -0.964778,
		-0.903240, -0.371311, -0.215142,
		-0.344773, 0.926398, -0.151386,
		35.022472, 29.958969, 22.355766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830688, 29.257843, 21.928736>,  <35.263813, 29.310490, 22.461737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830688, 29.257843, 21.928736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.928299, 29.645679, 21.936188>,  <34.986866, 29.878382, 21.940659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.928299, 29.645679, 21.936188>,  <34.830688, 29.257843, 21.928736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928299, 29.645679, 21.936188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056362, 0.004997, -0.998398,
		-0.968130, 0.244682, -0.053429,
		0.244023, 0.969590, 0.018628,
		35.001507, 29.936556, 21.941776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404560, 29.582472, 21.402700>,  <34.830688, 29.257843, 21.928736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404560, 29.582472, 21.402700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.689438, 29.855919, 21.466501>,  <34.860367, 30.019987, 21.504782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.689438, 29.855919, 21.466501>,  <34.404560, 29.582472, 21.402700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689438, 29.855919, 21.466501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191289, 0.029622, -0.981087,
		-0.675413, 0.729239, -0.109672,
		0.712197, 0.683618, 0.159502,
		34.903095, 30.061005, 21.514353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295330, 30.146938, 20.893553>,  <34.404560, 29.582472, 21.402700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295330, 30.146938, 20.893553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.672905, 30.144276, 21.025578>,  <34.899448, 30.142677, 21.104792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.672905, 30.144276, 21.025578>,  <34.295330, 30.146938, 20.893553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672905, 30.144276, 21.025578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329773, -0.027340, -0.943664,
		0.015306, 0.999604, -0.023612,
		0.943936, -0.006657, 0.330060,
		34.956085, 30.142279, 21.124596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.876286, 34.112747, 36.553493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272099, 34.169361, 36.542168>,  <33.509586, 34.203327, 36.535374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272099, 34.169361, 36.542168>,  <32.876286, 34.112747, 36.553493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272099, 34.169361, 36.542168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016769, -0.307553, -0.951383,
		-0.143359, 0.940946, -0.306706,
		0.989529, 0.141532, -0.028312,
		33.568958, 34.211823, 36.533672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146614, 34.609821, 36.017632>,  <32.876286, 34.112747, 36.553493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146614, 34.609821, 36.017632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453316, 34.359730, 36.075851>,  <33.637337, 34.209675, 36.110783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453316, 34.359730, 36.075851>,  <33.146614, 34.609821, 36.017632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453316, 34.359730, 36.075851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115946, -0.357887, -0.926538,
		0.631386, 0.693549, -0.346903,
		0.766751, -0.625226, 0.145551,
		33.683342, 34.172161, 36.119518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471123, 34.656620, 35.386875>,  <33.146614, 34.609821, 36.017632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471123, 34.656620, 35.386875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621399, 34.328102, 35.558617>,  <33.711563, 34.130993, 35.661659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621399, 34.328102, 35.558617>,  <33.471123, 34.656620, 35.386875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621399, 34.328102, 35.558617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006420, -0.460969, -0.887393,
		0.926725, 0.336138, -0.167906,
		0.375686, -0.821291, 0.429350,
		33.734104, 34.081715, 35.687420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089294, 34.420040, 35.094711>,  <33.471123, 34.656620, 35.386875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089294, 34.420040, 35.094711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909393, 34.093563, 35.239788>,  <33.801453, 33.897675, 35.326836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909393, 34.093563, 35.239788>,  <34.089294, 34.420040, 35.094711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909393, 34.093563, 35.239788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070915, -0.437432, -0.896451,
		0.890332, -0.377464, 0.254618,
		-0.449756, -0.816195, 0.362692,
		33.774467, 33.848705, 35.348595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446503, 33.940193, 34.687958>,  <34.089294, 34.420040, 35.094711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446503, 33.940193, 34.687958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145267, 33.747932, 34.867661>,  <33.964527, 33.632576, 34.975483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145267, 33.747932, 34.867661>,  <34.446503, 33.940193, 34.687958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145267, 33.747932, 34.867661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095171, -0.596079, -0.797265,
		0.650999, -0.643168, 0.403156,
		-0.753089, -0.480650, 0.449258,
		33.919342, 33.603737, 35.002438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624176, 33.197811, 34.681309>,  <34.446503, 33.940193, 34.687958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624176, 33.197811, 34.681309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226906, 33.226643, 34.717972>,  <33.988544, 33.243942, 34.739967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226906, 33.226643, 34.717972>,  <34.624176, 33.197811, 34.681309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226906, 33.226643, 34.717972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116581, -0.627493, -0.769845,
		0.002027, -0.775279, 0.631615,
		-0.993179, 0.072074, 0.091655,
		33.928951, 33.248264, 34.745468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358280, 32.498592, 34.665924>,  <34.624176, 33.197811, 34.681309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358280, 32.498592, 34.665924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038738, 32.722988, 34.579090>,  <33.847015, 32.857628, 34.526989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038738, 32.722988, 34.579090>,  <34.358280, 32.498592, 34.665924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038738, 32.722988, 34.579090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280836, -0.666965, -0.690137,
		-0.531946, -0.490353, 0.690353,
		-0.798852, 0.560991, -0.217081,
		33.799084, 32.891285, 34.513966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750702, 31.984104, 34.606461>,  <34.358280, 32.498592, 34.665924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750702, 31.984104, 34.606461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657837, 32.323891, 34.416931>,  <33.602119, 32.527763, 34.303211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657837, 32.323891, 34.416931>,  <33.750702, 31.984104, 34.606461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657837, 32.323891, 34.416931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259743, -0.523587, -0.811413,
		-0.937356, -0.065304, 0.342198,
		-0.232159, 0.849466, -0.473825,
		33.588188, 32.578732, 34.274784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256310, 31.741020, 34.131916>,  <33.750702, 31.984104, 34.606461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256310, 31.741020, 34.131916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362118, 32.098049, 33.985851>,  <33.425602, 32.312267, 33.898212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362118, 32.098049, 33.985851>,  <33.256310, 31.741020, 34.131916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362118, 32.098049, 33.985851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047679, -0.390290, -0.919457,
		-0.963201, 0.225803, -0.145796,
		0.264519, 0.892573, -0.365162,
		33.441475, 32.365822, 33.876305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889999, 31.780329, 33.525860>,  <33.256310, 31.741020, 34.131916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889999, 31.780329, 33.525860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187908, 32.038380, 33.457607>,  <33.366653, 32.193211, 33.416656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187908, 32.038380, 33.457607>,  <32.889999, 31.780329, 33.525860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187908, 32.038380, 33.457607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104268, -0.365067, -0.925124,
		-0.659118, 0.671219, -0.339159,
		0.744776, 0.645130, -0.170635,
		33.411343, 32.231918, 33.406418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743259, 31.965704, 32.792027>,  <32.889999, 31.780329, 33.525860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743259, 31.965704, 32.792027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116802, 32.080254, 32.877720>,  <33.340927, 32.148983, 32.929134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116802, 32.080254, 32.877720>,  <32.743259, 31.965704, 32.792027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116802, 32.080254, 32.877720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292363, -0.266272, -0.918490,
		-0.205988, 0.920374, -0.332386,
		0.933859, 0.286375, 0.214234,
		33.396961, 32.166164, 32.941990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977711, 32.423367, 32.284706>,  <32.743259, 31.965704, 32.792027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977711, 32.423367, 32.284706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310974, 32.266983, 32.441162>,  <33.510933, 32.173153, 32.535034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310974, 32.266983, 32.441162>,  <32.977711, 32.423367, 32.284706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310974, 32.266983, 32.441162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313808, -0.248148, -0.916486,
		0.455372, 0.886324, -0.084061,
		0.833163, -0.390963, 0.391136,
		33.560925, 32.149693, 32.558502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461617, 32.956745, 32.093224>,  <32.977711, 32.423367, 32.284706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461617, 32.956745, 32.093224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147781, 32.708778, 32.097557>,  <31.959478, 32.559998, 32.100159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147781, 32.708778, 32.097557>,  <32.461617, 32.956745, 32.093224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147781, 32.708778, 32.097557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376854, 0.490693, 0.785622,
		-0.492337, 0.612310, -0.618612,
		-0.784592, -0.619917, 0.010835,
		31.912403, 32.522804, 32.100807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993513, 33.407387, 32.260117>,  <32.461617, 32.956745, 32.093224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993513, 33.407387, 32.260117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902996, 33.029682, 32.355751>,  <31.848686, 32.803059, 32.413132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902996, 33.029682, 32.355751>,  <31.993513, 33.407387, 32.260117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902996, 33.029682, 32.355751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290909, 0.299764, 0.908578,
		-0.929604, 0.136052, -0.342528,
		-0.226291, -0.944262, 0.239083,
		31.835108, 32.746403, 32.427475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352087, 33.443798, 32.565025>,  <31.993513, 33.407387, 32.260117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352087, 33.443798, 32.565025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.470093, 33.081776, 32.687561>,  <31.540895, 32.864563, 32.761082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.470093, 33.081776, 32.687561>,  <31.352087, 33.443798, 32.565025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470093, 33.081776, 32.687561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270062, 0.228554, 0.935323,
		-0.916534, -0.358662, -0.176994,
		0.295013, -0.905055, 0.306339,
		31.558596, 32.810261, 32.779461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727676, 33.122795, 32.842724>,  <31.352087, 33.443798, 32.565025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727676, 33.122795, 32.842724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052095, 32.949715, 33.000191>,  <31.246746, 32.845867, 33.094669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052095, 32.949715, 33.000191>,  <30.727676, 33.122795, 32.842724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052095, 32.949715, 33.000191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316079, 0.242113, 0.917320,
		-0.492239, -0.868418, 0.059597,
		0.811046, -0.432703, 0.393666,
		31.295408, 32.819904, 33.118290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550665, 32.520565, 33.279758>,  <30.727676, 33.122795, 32.842724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550665, 32.520565, 33.279758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.913614, 32.619972, 33.415352>,  <31.131384, 32.679615, 33.496708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.913614, 32.619972, 33.415352>,  <30.550665, 32.520565, 33.279758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913614, 32.619972, 33.415352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392800, 0.214305, 0.894305,
		0.149601, -0.944624, 0.292071,
		0.907374, 0.248514, 0.338988,
		31.185827, 32.694527, 33.517048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452299, 32.458191, 34.007580>,  <30.550665, 32.520565, 33.279758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452299, 32.458191, 34.007580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.794575, 32.664391, 33.989433>,  <30.999941, 32.788109, 33.978546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.794575, 32.664391, 33.989433>,  <30.452299, 32.458191, 34.007580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794575, 32.664391, 33.989433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200332, 0.410805, 0.889442,
		0.477143, -0.751997, 0.454792,
		0.855688, 0.515500, -0.045364,
		31.051281, 32.819038, 33.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837399, 32.369175, 34.698959>,  <30.452299, 32.458191, 34.007580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837399, 32.369175, 34.698959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972521, 32.710075, 34.539181>,  <31.053595, 32.914616, 34.443314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972521, 32.710075, 34.539181>,  <30.837399, 32.369175, 34.698959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972521, 32.710075, 34.539181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258438, 0.492074, 0.831308,
		0.905040, -0.177586, 0.386478,
		0.337805, 0.852248, -0.399451,
		31.073862, 32.965752, 34.419346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352289, 32.729073, 35.068184>,  <30.837399, 32.369175, 34.698959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352289, 32.729073, 35.068184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229765, 33.036819, 34.843952>,  <31.156250, 33.221466, 34.709412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229765, 33.036819, 34.843952>,  <31.352289, 32.729073, 35.068184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229765, 33.036819, 34.843952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014850, 0.592681, 0.805300,
		0.951816, 0.238347, -0.192969,
		-0.306310, 0.769363, -0.560584,
		31.137873, 33.267628, 34.675777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613920, 33.272720, 35.398293>,  <31.352289, 32.729073, 35.068184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613920, 33.272720, 35.398293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343800, 33.456333, 35.167377>,  <31.181726, 33.566502, 35.028828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343800, 33.456333, 35.167377>,  <31.613920, 33.272720, 35.398293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343800, 33.456333, 35.167377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021401, 0.770190, 0.637456,
		0.737231, 0.442829, -0.510286,
		-0.675301, 0.459032, -0.577285,
		31.141209, 33.594044, 34.994190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865816, 33.989056, 35.452740>,  <31.613920, 33.272720, 35.398293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865816, 33.989056, 35.452740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483711, 33.956280, 35.339066>,  <31.254448, 33.936615, 35.270863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483711, 33.956280, 35.339066>,  <31.865816, 33.989056, 35.452740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483711, 33.956280, 35.339066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258074, 0.700282, 0.665585,
		0.144468, 0.709148, -0.690100,
		-0.955263, -0.081941, -0.284181,
		31.197132, 33.931698, 35.253811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692869, 34.643532, 35.344646>,  <31.865816, 33.989056, 35.452740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692869, 34.643532, 35.344646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.351236, 34.450790, 35.422989>,  <31.146257, 34.335144, 35.469994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.351236, 34.450790, 35.422989>,  <31.692869, 34.643532, 35.344646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351236, 34.450790, 35.422989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268820, 0.731277, 0.626873,
		-0.445290, 0.482750, -0.754102,
		-0.854080, -0.481858, 0.195857,
		31.095013, 34.306232, 35.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192141, 35.125126, 35.124668>,  <31.692869, 34.643532, 35.344646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192141, 35.125126, 35.124668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012674, 34.859699, 35.364128>,  <30.904995, 34.700443, 35.507805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012674, 34.859699, 35.364128>,  <31.192141, 35.125126, 35.124668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012674, 34.859699, 35.364128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196859, 0.726785, 0.658051,
		-0.871749, 0.177394, -0.456712,
		-0.448666, -0.663563, 0.598652,
		30.878075, 34.660629, 35.543724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545132, 35.395111, 35.103775>,  <31.192141, 35.125126, 35.124668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545132, 35.395111, 35.103775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.579517, 35.162178, 35.427132>,  <30.600149, 35.022419, 35.621143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.579517, 35.162178, 35.427132>,  <30.545132, 35.395111, 35.103775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579517, 35.162178, 35.427132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279618, 0.764679, 0.580585,
		-0.956255, -0.275951, -0.097095,
		0.085966, -0.582337, 0.808389,
		30.605307, 34.987476, 35.669647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023544, 35.651169, 35.676247>,  <30.545132, 35.395111, 35.103775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023544, 35.651169, 35.676247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.266533, 35.426720, 35.901146>,  <30.412327, 35.292049, 36.036087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.266533, 35.426720, 35.901146>,  <30.023544, 35.651169, 35.676247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266533, 35.426720, 35.901146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114365, 0.638660, 0.760943,
		-0.786065, -0.526553, 0.323797,
		0.607473, -0.561119, 0.562247,
		30.448774, 35.258385, 36.069820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349932, 36.247257, 35.840080>,  <30.023544, 35.651169, 35.676247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349932, 36.247257, 35.840080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668648, 36.034328, 35.954453>,  <30.859877, 35.906570, 36.023075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668648, 36.034328, 35.954453>,  <30.349932, 36.247257, 35.840080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668648, 36.034328, 35.954453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245014, 0.147921, 0.958169,
		-0.552353, -0.833516, -0.012566,
		0.796790, -0.532326, 0.285928,
		30.907684, 35.874630, 36.040230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655893, 36.887901, 36.191135>,  <30.349932, 36.247257, 35.840080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655893, 36.887901, 36.191135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.999571, 37.092537, 36.187984>,  <31.205778, 37.215317, 36.186092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.999571, 37.092537, 36.187984>,  <30.655893, 36.887901, 36.191135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999571, 37.092537, 36.187984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116459, 0.180552, -0.976646,
		-0.498218, 0.840047, 0.214708,
		0.859195, 0.511588, -0.007877,
		31.257330, 37.246014, 36.185623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518122, 37.586685, 35.896027>,  <30.655893, 36.887901, 36.191135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518122, 37.586685, 35.896027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.865795, 37.399277, 35.832767>,  <31.074400, 37.286831, 35.794811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.865795, 37.399277, 35.832767>,  <30.518122, 37.586685, 35.896027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865795, 37.399277, 35.832767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119377, 0.111556, -0.986562,
		0.479864, 0.876383, 0.041033,
		0.869183, -0.468517, -0.158152,
		31.126551, 37.258720, 35.785320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830399, 37.973190, 35.444836>,  <30.518122, 37.586685, 35.896027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830399, 37.973190, 35.444836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998159, 37.611919, 35.408215>,  <31.098816, 37.395157, 35.386242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998159, 37.611919, 35.408215>,  <30.830399, 37.973190, 35.444836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998159, 37.611919, 35.408215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064024, 0.130031, -0.989440,
		0.905541, 0.409109, 0.112360,
		0.419400, -0.903173, -0.091556,
		31.123980, 37.340969, 35.380749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244123, 38.168999, 34.901138>,  <30.830399, 37.973190, 35.444836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244123, 38.168999, 34.901138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.252666, 37.769123, 34.906322>,  <31.257792, 37.529198, 34.909431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.252666, 37.769123, 34.906322>,  <31.244123, 38.168999, 34.901138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252666, 37.769123, 34.906322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195569, -0.008531, -0.980653,
		0.980457, 0.023477, 0.195326,
		0.021357, -0.999688, 0.012956,
		31.259073, 37.469215, 34.910210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872259, 38.035896, 34.523804>,  <31.244123, 38.168999, 34.901138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872259, 38.035896, 34.523804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682404, 37.684074, 34.510586>,  <31.568489, 37.472980, 34.502655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.682404, 37.684074, 34.510586>,  <31.872259, 38.035896, 34.523804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682404, 37.684074, 34.510586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171493, -0.055586, -0.983616,
		0.863312, -0.472531, 0.177221,
		-0.474640, -0.879559, -0.033048,
		31.540012, 37.420208, 34.500671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362076, 37.495571, 34.358341>,  <31.872259, 38.035896, 34.523804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362076, 37.495571, 34.358341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997232, 37.385323, 34.236954>,  <31.778326, 37.319172, 34.164124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997232, 37.385323, 34.236954>,  <32.362076, 37.495571, 34.358341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997232, 37.385323, 34.236954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359739, -0.183157, -0.914900,
		0.196583, -0.943656, 0.266210,
		-0.912109, -0.275620, -0.303464,
		31.723600, 37.302635, 34.145916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530609, 36.977955, 33.834961>,  <32.362076, 37.495571, 34.358341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530609, 36.977955, 33.834961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144897, 37.068932, 33.780640>,  <31.913471, 37.123520, 33.748047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144897, 37.068932, 33.780640>,  <32.530609, 36.977955, 33.834961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144897, 37.068932, 33.780640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086280, -0.215030, -0.972789,
		-0.250463, -0.949752, 0.187723,
		-0.964274, 0.227450, -0.135802,
		31.855616, 37.137165, 33.739899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315197, 36.443924, 33.468517>,  <32.530609, 36.977955, 33.834961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315197, 36.443924, 33.468517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036160, 36.716072, 33.378666>,  <31.868736, 36.879360, 33.324757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036160, 36.716072, 33.378666>,  <32.315197, 36.443924, 33.468517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036160, 36.716072, 33.378666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072328, -0.378775, -0.922658,
		-0.712832, -0.627395, 0.313441,
		-0.697595, 0.680371, -0.224625,
		31.826881, 36.920185, 33.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840588, 36.091816, 32.964890>,  <32.315197, 36.443924, 33.468517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840588, 36.091816, 32.964890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720467, 36.469624, 32.911678>,  <31.648394, 36.696308, 32.879749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720467, 36.469624, 32.911678>,  <31.840588, 36.091816, 32.964890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720467, 36.469624, 32.911678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116435, -0.174725, -0.977708,
		-0.946710, -0.278120, 0.162446,
		-0.300303, 0.944521, -0.133031,
		31.630375, 36.752979, 32.871769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253874, 36.110214, 32.542946>,  <31.840588, 36.091816, 32.964890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253874, 36.110214, 32.542946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423683, 36.470364, 32.504772>,  <31.525568, 36.686455, 32.481869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.423683, 36.470364, 32.504772>,  <31.253874, 36.110214, 32.542946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423683, 36.470364, 32.504772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012997, -0.111448, -0.993685,
		-0.905324, 0.420602, -0.059015,
		0.424523, 0.900374, -0.095430,
		31.551041, 36.740475, 32.476143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899740, 36.424686, 31.917509>,  <31.253874, 36.110214, 32.542946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899740, 36.424686, 31.917509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250446, 36.613728, 31.953140>,  <31.460869, 36.727150, 31.974520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250446, 36.613728, 31.953140>,  <30.899740, 36.424686, 31.917509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250446, 36.613728, 31.953140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101608, -0.000988, -0.994824,
		-0.470066, 0.881276, -0.048886,
		0.876763, 0.472600, 0.089080,
		31.513475, 36.755508, 31.979864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890305, 36.861027, 31.288496>,  <30.899740, 36.424686, 31.917509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890305, 36.861027, 31.288496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.269938, 36.838882, 31.412548>,  <31.497717, 36.825596, 31.486979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.269938, 36.838882, 31.412548>,  <30.890305, 36.861027, 31.288496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269938, 36.838882, 31.412548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310718, 0.002151, -0.950500,
		0.051957, 0.998464, 0.019244,
		0.949081, -0.055364, 0.310129,
		31.554663, 36.822273, 31.505587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194788, 37.385071, 30.920444>,  <30.890305, 36.861027, 31.288496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194788, 37.385071, 30.920444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486279, 37.131828, 31.024853>,  <31.661173, 36.979881, 31.087498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486279, 37.131828, 31.024853>,  <31.194788, 37.385071, 30.920444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486279, 37.131828, 31.024853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382669, 0.060371, -0.921911,
		0.567912, 0.771705, 0.286265,
		0.728725, -0.633109, 0.261022,
		31.704897, 36.941895, 31.103159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776678, 37.618538, 30.492889>,  <31.194788, 37.385071, 30.920444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776678, 37.618538, 30.492889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900026, 37.260406, 30.621450>,  <31.974035, 37.045528, 30.698587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900026, 37.260406, 30.621450>,  <31.776678, 37.618538, 30.492889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900026, 37.260406, 30.621450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521718, -0.123344, -0.844155,
		0.795436, 0.427995, 0.429071,
		0.308370, -0.895325, 0.321405,
		31.992537, 36.991810, 30.717873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390049, 37.631004, 30.229336>,  <31.776678, 37.618538, 30.492889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390049, 37.631004, 30.229336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.335995, 37.238014, 30.280674>,  <32.303562, 37.002220, 30.311478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.335995, 37.238014, 30.280674>,  <32.390049, 37.631004, 30.229336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335995, 37.238014, 30.280674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539167, -0.181593, -0.822389,
		0.831287, -0.041934, 0.554260,
		-0.135136, -0.982479, 0.128347,
		32.295452, 36.943272, 30.319178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102093, 37.231434, 30.243301>,  <32.390049, 37.631004, 30.229336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102093, 37.231434, 30.243301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844009, 36.933418, 30.175632>,  <32.689159, 36.754608, 30.135031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844009, 36.933418, 30.175632>,  <33.102093, 37.231434, 30.243301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844009, 36.933418, 30.175632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538105, -0.285965, -0.792885,
		0.542356, -0.602608, 0.585418,
		-0.645208, -0.745042, -0.169171,
		32.650448, 36.709908, 30.124882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533035, 36.653667, 30.131763>,  <33.102093, 37.231434, 30.243301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533035, 36.653667, 30.131763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186962, 36.567974, 29.950407>,  <32.979317, 36.516560, 29.841593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186962, 36.567974, 29.950407>,  <33.533035, 36.653667, 30.131763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186962, 36.567974, 29.950407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497455, -0.252682, -0.829873,
		0.063222, -0.943534, 0.325188,
		-0.865182, -0.214233, -0.453391,
		32.927406, 36.503704, 29.814390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659077, 36.086937, 29.872398>,  <33.533035, 36.653667, 30.131763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659077, 36.086937, 29.872398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340214, 36.202885, 29.660543>,  <33.148895, 36.272453, 29.533430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340214, 36.202885, 29.660543>,  <33.659077, 36.086937, 29.872398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340214, 36.202885, 29.660543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397374, -0.408560, -0.821689,
		-0.454573, -0.865479, 0.210499,
		-0.797156, 0.289871, -0.529639,
		33.101067, 36.289845, 29.501652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445667, 35.505928, 29.554089>,  <33.659077, 36.086937, 29.872398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445667, 35.505928, 29.554089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287872, 35.804024, 29.339054>,  <33.193195, 35.982883, 29.210033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287872, 35.804024, 29.339054>,  <33.445667, 35.505928, 29.554089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287872, 35.804024, 29.339054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287044, -0.455814, -0.842520,
		-0.872920, -0.486670, -0.034106,
		-0.394483, 0.745242, -0.537584,
		33.169529, 36.027596, 29.177778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081177, 35.154526, 28.906120>,  <33.445667, 35.505928, 29.554089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081177, 35.154526, 28.906120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154411, 35.538483, 28.821192>,  <33.198353, 35.768856, 28.770235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154411, 35.538483, 28.821192>,  <33.081177, 35.154526, 28.906120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154411, 35.538483, 28.821192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322346, -0.262647, -0.909455,
		-0.928748, 0.098066, -0.357505,
		0.183084, 0.959895, -0.212322,
		33.209335, 35.826450, 28.757496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728050, 35.271099, 28.296511>,  <33.081177, 35.154526, 28.906120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728050, 35.271099, 28.296511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993195, 35.570587, 28.298435>,  <33.152283, 35.750282, 28.299589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993195, 35.570587, 28.298435>,  <32.728050, 35.271099, 28.296511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993195, 35.570587, 28.298435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160925, -0.136189, -0.977525,
		-0.731242, 0.648740, -0.210763,
		0.662864, 0.748725, 0.004812,
		33.192055, 35.795204, 28.299879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576279, 35.675503, 27.611429>,  <32.728050, 35.271099, 28.296511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576279, 35.675503, 27.611429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928902, 35.822330, 27.730169>,  <33.140476, 35.910427, 27.801413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928902, 35.822330, 27.730169>,  <32.576279, 35.675503, 27.611429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928902, 35.822330, 27.730169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343021, -0.066043, -0.937003,
		-0.324338, 0.927847, -0.184132,
		0.881556, 0.367067, 0.296850,
		33.193367, 35.932449, 27.819225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692524, 36.329205, 27.308813>,  <32.576279, 35.675503, 27.611429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692524, 36.329205, 27.308813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058617, 36.194988, 27.398045>,  <33.278271, 36.114460, 27.451584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058617, 36.194988, 27.398045>,  <32.692524, 36.329205, 27.308813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058617, 36.194988, 27.398045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285752, 0.150185, -0.946462,
		0.284072, 0.929977, 0.233335,
		0.915232, -0.335539, 0.223079,
		33.333187, 36.094326, 27.464968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147842, 36.944267, 27.183340>,  <32.692524, 36.329205, 27.308813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147842, 36.944267, 27.183340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362709, 36.607712, 27.159620>,  <33.491627, 36.405777, 27.145388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362709, 36.607712, 27.159620>,  <33.147842, 36.944267, 27.183340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362709, 36.607712, 27.159620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274940, 0.241124, -0.930735,
		0.797410, 0.483653, 0.360855,
		0.537164, -0.841391, -0.059299,
		33.523857, 36.355293, 27.141830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723995, 37.184212, 26.840933>,  <33.147842, 36.944267, 27.183340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723995, 37.184212, 26.840933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768955, 36.787411, 26.817944>,  <33.795929, 36.549332, 26.804150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768955, 36.787411, 26.817944>,  <33.723995, 37.184212, 26.840933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768955, 36.787411, 26.817944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277847, 0.086910, -0.956686,
		0.954027, 0.091560, 0.285392,
		0.112398, -0.992000, -0.057474,
		33.802673, 36.489811, 26.800701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308014, 37.074223, 26.479130>,  <33.723995, 37.184212, 26.840933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308014, 37.074223, 26.479130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137455, 36.713882, 26.446522>,  <34.035118, 36.497677, 26.426958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137455, 36.713882, 26.446522>,  <34.308014, 37.074223, 26.479130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137455, 36.713882, 26.446522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219788, -0.015766, -0.975420,
		0.877427, -0.433834, 0.204720,
		-0.426398, -0.900855, -0.081518,
		34.009537, 36.443626, 26.422066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766846, 36.587326, 26.042006>,  <34.308014, 37.074223, 26.479130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766846, 36.587326, 26.042006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392143, 36.448814, 26.021687>,  <34.167320, 36.365707, 26.009495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392143, 36.448814, 26.021687>,  <34.766846, 36.587326, 26.042006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392143, 36.448814, 26.021687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134211, -0.221380, -0.965908,
		0.323226, -0.911638, 0.253854,
		-0.936756, -0.346276, -0.050796,
		34.111115, 36.344933, 26.006447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300449, 36.151829, 26.258102>,  <34.766846, 36.587326, 26.042006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300449, 36.151829, 26.258102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691616, 36.068348, 26.253624>,  <35.926315, 36.018261, 26.250937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691616, 36.068348, 26.253624>,  <35.300449, 36.151829, 26.258102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691616, 36.068348, 26.253624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051264, 0.187588, 0.980909,
		-0.202618, -0.959820, 0.194144,
		0.977915, -0.208703, -0.011195,
		35.984989, 36.005737, 26.250265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389740, 35.647400, 26.826468>,  <35.300449, 36.151829, 26.258102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389740, 35.647400, 26.826468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751640, 35.806820, 26.766359>,  <35.968781, 35.902473, 26.730293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751640, 35.806820, 26.766359>,  <35.389740, 35.647400, 26.826468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751640, 35.806820, 26.766359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055621, 0.239232, 0.969368,
		0.422291, -0.885396, 0.194278,
		0.904752, 0.398550, -0.150272,
		36.023067, 35.926384, 26.721277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853786, 35.265747, 27.262102>,  <35.389740, 35.647400, 26.826468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853786, 35.265747, 27.262102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976387, 35.640358, 27.194025>,  <36.049950, 35.865124, 27.153179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976387, 35.640358, 27.194025>,  <35.853786, 35.265747, 27.262102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976387, 35.640358, 27.194025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066932, 0.199563, 0.977596,
		0.949513, -0.288246, 0.123851,
		0.306505, 0.936530, -0.170195,
		36.068340, 35.921318, 27.142967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357067, 35.390263, 27.678072>,  <35.853786, 35.265747, 27.262102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357067, 35.390263, 27.678072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225422, 35.752625, 27.571470>,  <36.146435, 35.970039, 27.507509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225422, 35.752625, 27.571470>,  <36.357067, 35.390263, 27.678072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225422, 35.752625, 27.571470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105988, 0.315881, 0.942860,
		0.938322, 0.282064, -0.199976,
		-0.329116, 0.905902, -0.266503,
		36.126686, 36.024395, 27.491520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747639, 35.810307, 28.148029>,  <36.357067, 35.390263, 27.678072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747639, 35.810307, 28.148029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497082, 36.078510, 27.989008>,  <36.346748, 36.239433, 27.893595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497082, 36.078510, 27.989008>,  <36.747639, 35.810307, 28.148029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497082, 36.078510, 27.989008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062187, 0.465395, 0.882916,
		0.777020, 0.577778, -0.249825,
		-0.626397, 0.670507, -0.397551,
		36.309162, 36.279663, 27.869743>
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
