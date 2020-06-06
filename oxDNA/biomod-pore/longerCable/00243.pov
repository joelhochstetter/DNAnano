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
	<24.122883, 34.735710, 34.850319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345297, 35.046803, 34.733047>,  <24.478745, 35.233459, 34.662685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345297, 35.046803, 34.733047>,  <24.122883, 34.735710, 34.850319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345297, 35.046803, 34.733047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072273, -0.396644, -0.915123,
		-0.828012, 0.487650, -0.276756,
		0.556033, 0.777735, -0.293182,
		24.512106, 35.280125, 34.645092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.846714, 35.180195, 34.294849>,  <24.122883, 34.735710, 34.850319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.846714, 35.180195, 34.294849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246428, 35.165195, 34.297001>,  <24.486256, 35.156197, 34.298290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246428, 35.165195, 34.297001>,  <23.846714, 35.180195, 34.294849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246428, 35.165195, 34.297001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017981, -0.594494, -0.803899,
		0.033338, 0.803225, -0.594742,
		0.999282, -0.037495, 0.005377,
		24.546213, 35.153946, 34.298615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.000813, 35.333553, 33.706612>,  <23.846714, 35.180195, 34.294849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.000813, 35.333553, 33.706612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318151, 35.131378, 33.842339>,  <24.508554, 35.010075, 33.923775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318151, 35.131378, 33.842339>,  <24.000813, 35.333553, 33.706612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318151, 35.131378, 33.842339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123621, -0.412009, -0.902755,
		0.596087, 0.758144, -0.264383,
		0.793346, -0.505437, 0.339316,
		24.556156, 34.979748, 33.944134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516178, 35.472939, 33.314152>,  <24.000813, 35.333553, 33.706612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516178, 35.472939, 33.314152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614294, 35.115700, 33.464993>,  <24.673162, 34.901356, 33.555496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614294, 35.115700, 33.464993>,  <24.516178, 35.472939, 33.314152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614294, 35.115700, 33.464993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278010, -0.307848, -0.909912,
		0.928733, 0.328029, 0.172779,
		0.245288, -0.893099, 0.377104,
		24.687880, 34.847771, 33.578125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146273, 35.146362, 32.921066>,  <24.516178, 35.472939, 33.314152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146273, 35.146362, 32.921066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000206, 34.826546, 33.111809>,  <24.912567, 34.634655, 33.226254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000206, 34.826546, 33.111809>,  <25.146273, 35.146362, 32.921066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000206, 34.826546, 33.111809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310321, -0.587472, -0.747381,
		0.877699, -0.124940, 0.462639,
		-0.365165, -0.799542, 0.476852,
		24.890656, 34.586681, 33.254864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659473, 34.637684, 33.056698>,  <25.146273, 35.146362, 32.921066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659473, 34.637684, 33.056698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330645, 34.429268, 32.964863>,  <25.133347, 34.304218, 32.909763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330645, 34.429268, 32.964863>,  <25.659473, 34.637684, 33.056698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330645, 34.429268, 32.964863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388106, -0.217743, -0.895523,
		0.416616, -0.825289, 0.381221,
		-0.822074, -0.521043, -0.229584,
		25.084023, 34.272957, 32.895988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907347, 33.994564, 32.853859>,  <25.659473, 34.637684, 33.056698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907347, 33.994564, 32.853859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547031, 34.057056, 32.691788>,  <25.330841, 34.094551, 32.594543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547031, 34.057056, 32.691788>,  <25.907347, 33.994564, 32.853859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547031, 34.057056, 32.691788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352460, -0.282007, -0.892325,
		-0.253668, -0.946607, 0.198966,
		-0.900791, 0.156227, -0.405178,
		25.276794, 34.103924, 32.570232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585770, 33.429119, 32.579651>,  <25.907347, 33.994564, 32.853859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585770, 33.429119, 32.579651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453339, 33.757828, 32.394142>,  <25.373880, 33.955051, 32.282837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453339, 33.757828, 32.394142>,  <25.585770, 33.429119, 32.579651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453339, 33.757828, 32.394142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345887, -0.351587, -0.869913,
		-0.877924, -0.448421, -0.167836,
		-0.331078, 0.821770, -0.463769,
		25.354015, 34.004360, 32.255013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445417, 33.167061, 32.044991>,  <25.585770, 33.429119, 32.579651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445417, 33.167061, 32.044991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446548, 33.545181, 31.914513>,  <25.447227, 33.772053, 31.836226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446548, 33.545181, 31.914513>,  <25.445417, 33.167061, 32.044991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446548, 33.545181, 31.914513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120240, -0.324150, -0.938333,
		-0.992741, -0.036569, -0.114580,
		0.002827, 0.945298, -0.326194,
		25.447397, 33.828770, 31.816654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124739, 33.096352, 31.438803>,  <25.445417, 33.167061, 32.044991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124739, 33.096352, 31.438803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325119, 33.442448, 31.430708>,  <25.445347, 33.650105, 31.425852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325119, 33.442448, 31.430708>,  <25.124739, 33.096352, 31.438803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325119, 33.442448, 31.430708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289635, -0.189631, -0.938164,
		-0.815574, 0.464112, -0.345599,
		0.500950, 0.865240, -0.020235,
		25.475405, 33.702019, 31.424637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092701, 33.451443, 30.697920>,  <25.124739, 33.096352, 31.438803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092701, 33.451443, 30.697920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423740, 33.599316, 30.866877>,  <25.622364, 33.688042, 30.968250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423740, 33.599316, 30.866877>,  <25.092701, 33.451443, 30.697920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423740, 33.599316, 30.866877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505060, -0.162061, -0.847732,
		-0.244942, 0.914914, -0.320835,
		0.827597, 0.369687, 0.422391,
		25.672020, 33.710220, 30.993593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274862, 33.873863, 30.220116>,  <25.092701, 33.451443, 30.697920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274862, 33.873863, 30.220116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573238, 33.738239, 30.449415>,  <25.752264, 33.656864, 30.586994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573238, 33.738239, 30.449415>,  <25.274862, 33.873863, 30.220116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573238, 33.738239, 30.449415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517516, -0.246709, -0.819336,
		0.419229, 0.907840, -0.008561,
		0.745939, -0.339059, 0.573249,
		25.797020, 33.636520, 30.621389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822735, 34.220207, 29.977654>,  <25.274862, 33.873863, 30.220116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822735, 34.220207, 29.977654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865955, 33.855221, 30.135506>,  <25.891888, 33.636230, 30.230217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865955, 33.855221, 30.135506>,  <25.822735, 34.220207, 29.977654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865955, 33.855221, 30.135506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396158, -0.324557, -0.858907,
		0.911803, 0.249140, 0.326412,
		0.108049, -0.912465, 0.394631,
		25.898371, 33.581482, 30.253895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614763, 33.938278, 29.956659>,  <25.822735, 34.220207, 29.977654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614763, 33.938278, 29.956659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360950, 33.630466, 29.985504>,  <26.208664, 33.445782, 30.002811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360950, 33.630466, 29.985504>,  <26.614763, 33.938278, 29.956659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360950, 33.630466, 29.985504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496534, -0.477367, -0.724965,
		0.592305, -0.424206, 0.685000,
		-0.634530, -0.769526, 0.072114,
		26.170591, 33.399609, 30.007137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987972, 33.581875, 30.514318>,  <26.614763, 33.938278, 29.956659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987972, 33.581875, 30.514318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047398, 33.483597, 30.131161>,  <27.083054, 33.424629, 29.901266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047398, 33.483597, 30.131161>,  <26.987972, 33.581875, 30.514318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047398, 33.483597, 30.131161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233765, -0.932465, 0.275433,
		-0.960876, -0.264842, -0.081095,
		0.148565, -0.245700, -0.957893,
		27.091967, 33.409885, 29.843792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856556, 33.521614, 31.397524>,  <26.987972, 33.581875, 30.514318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856556, 33.521614, 31.397524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570620, 33.675392, 31.163874>,  <26.399057, 33.767658, 31.023684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570620, 33.675392, 31.163874>,  <26.856556, 33.521614, 31.397524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570620, 33.675392, 31.163874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516369, 0.273091, 0.811656,
		0.471556, 0.881830, 0.003299,
		-0.714841, 0.384445, -0.584127,
		26.356167, 33.790726, 30.988636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700842, 34.240337, 31.603380>,  <26.856556, 33.521614, 31.397524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700842, 34.240337, 31.603380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380201, 34.102547, 31.407923>,  <26.187817, 34.019871, 31.290648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380201, 34.102547, 31.407923>,  <26.700842, 34.240337, 31.603380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380201, 34.102547, 31.407923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590730, 0.330494, 0.736079,
		-0.092071, 0.878697, -0.468417,
		-0.801599, -0.344479, -0.488644,
		26.139721, 33.999203, 31.261330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271555, 34.746674, 31.509501>,  <26.700842, 34.240337, 31.603380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271555, 34.746674, 31.509501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025665, 34.432289, 31.483047>,  <25.878132, 34.243656, 31.467176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025665, 34.432289, 31.483047>,  <26.271555, 34.746674, 31.509501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025665, 34.432289, 31.483047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575072, 0.389232, 0.719577,
		-0.539822, 0.480372, -0.691256,
		-0.614723, -0.785966, -0.066132,
		25.841248, 34.196499, 31.463207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590990, 35.016857, 31.439270>,  <26.271555, 34.746674, 31.509501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590990, 35.016857, 31.439270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526579, 34.643959, 31.568882>,  <25.487932, 34.420219, 31.646650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526579, 34.643959, 31.568882>,  <25.590990, 35.016857, 31.439270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526579, 34.643959, 31.568882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537691, 0.358180, 0.763279,
		-0.827622, -0.051320, -0.558934,
		-0.161028, -0.932241, 0.324032,
		25.478270, 34.364288, 31.666092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932259, 35.024696, 31.507856>,  <25.590990, 35.016857, 31.439270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932259, 35.024696, 31.507856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066223, 34.739304, 31.754036>,  <25.146601, 34.568066, 31.901743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066223, 34.739304, 31.754036>,  <24.932259, 35.024696, 31.507856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066223, 34.739304, 31.754036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632763, 0.313671, 0.707970,
		-0.698174, -0.626538, -0.346415,
		0.334909, -0.713485, 0.615447,
		25.166697, 34.525257, 31.938669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.380272, 34.721912, 31.882524>,  <24.932259, 35.024696, 31.507856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.380272, 34.721912, 31.882524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691311, 34.600548, 32.102810>,  <24.877934, 34.527729, 32.234982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691311, 34.600548, 32.102810>,  <24.380272, 34.721912, 31.882524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691311, 34.600548, 32.102810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531279, 0.151383, 0.833562,
		-0.336283, -0.940756, -0.043482,
		0.777596, -0.303414, 0.550712,
		24.924589, 34.509521, 32.268024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.051741, 34.092587, 32.049889>,  <24.380272, 34.721912, 31.882524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.051741, 34.092587, 32.049889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414865, 34.099648, 32.217491>,  <24.632740, 34.103886, 32.318054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414865, 34.099648, 32.217491>,  <24.051741, 34.092587, 32.049889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414865, 34.099648, 32.217491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415233, -0.102283, 0.903947,
		0.058817, -0.994599, -0.085523,
		0.907812, 0.017655, 0.419006,
		24.687208, 34.104942, 32.343193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010883, 33.661297, 32.655228>,  <24.051741, 34.092587, 32.049889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010883, 33.661297, 32.655228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.354792, 33.857498, 32.712078>,  <24.561136, 33.975220, 32.746189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.354792, 33.857498, 32.712078>,  <24.010883, 33.661297, 32.655228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.354792, 33.857498, 32.712078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163632, 0.000972, 0.986521,
		0.483758, -0.871436, 0.081098,
		0.859769, 0.490508, 0.142124,
		24.612722, 34.004650, 32.754715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.035494, 33.638103, 33.258152>,  <24.010883, 33.661297, 32.655228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.035494, 33.638103, 33.258152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358341, 33.866306, 33.197380>,  <24.552050, 34.003227, 33.160919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358341, 33.866306, 33.197380>,  <24.035494, 33.638103, 33.258152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358341, 33.866306, 33.197380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011355, 0.242287, 0.970138,
		0.590281, -0.784741, 0.189076,
		0.807118, 0.570507, -0.151928,
		24.600477, 34.037457, 33.151802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403469, 33.614265, 33.893753>,  <24.035494, 33.638103, 33.258152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403469, 33.614265, 33.893753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557837, 33.930618, 33.703777>,  <24.650457, 34.120430, 33.589790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557837, 33.930618, 33.703777>,  <24.403469, 33.614265, 33.893753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557837, 33.930618, 33.703777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153282, 0.452697, 0.878391,
		0.909710, -0.411786, 0.053475,
		0.385917, 0.790884, -0.474942,
		24.673611, 34.167885, 33.561295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057905, 33.768490, 34.293804>,  <24.403469, 33.614265, 33.893753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057905, 33.768490, 34.293804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935043, 34.089554, 34.089298>,  <24.861326, 34.282192, 33.966595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935043, 34.089554, 34.089298>,  <25.057905, 33.768490, 34.293804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935043, 34.089554, 34.089298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210142, 0.581176, 0.786177,
		0.928168, 0.134041, -0.347185,
		-0.307155, 0.802663, -0.511261,
		24.842897, 34.330353, 33.935921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565184, 34.289978, 34.416744>,  <25.057905, 33.768490, 34.293804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565184, 34.289978, 34.416744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244730, 34.490585, 34.286102>,  <25.052458, 34.610950, 34.207718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244730, 34.490585, 34.286102>,  <25.565184, 34.289978, 34.416744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244730, 34.490585, 34.286102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009068, 0.555818, 0.831254,
		0.598419, 0.662983, -0.449832,
		-0.801132, 0.501517, -0.326600,
		25.004391, 34.641041, 34.188122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381376, 33.970627, 34.443886>,  <25.565184, 34.289978, 34.416744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381376, 33.970627, 34.443886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622160, 33.660122, 34.518776>,  <26.766630, 33.473820, 34.563709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622160, 33.660122, 34.518776>,  <26.381376, 33.970627, 34.443886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622160, 33.660122, 34.518776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113556, -0.148867, -0.982315,
		0.790410, 0.612577, -0.001463,
		0.601961, -0.776265, 0.187228,
		26.802748, 33.427242, 34.574944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014040, 33.647141, 34.178715>,  <26.381376, 33.970627, 34.443886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014040, 33.647141, 34.178715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395773, 33.754204, 34.231796>,  <27.624813, 33.818439, 34.263645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395773, 33.754204, 34.231796>,  <27.014040, 33.647141, 34.178715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395773, 33.754204, 34.231796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028232, -0.361417, 0.931977,
		0.297410, -0.893162, -0.337355,
		0.954333, 0.267655, 0.132705,
		27.682074, 33.834499, 34.271606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462019, 33.136726, 34.359032>,  <27.014040, 33.647141, 34.178715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462019, 33.136726, 34.359032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584101, 33.474579, 34.534966>,  <27.657351, 33.677288, 34.640526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584101, 33.474579, 34.534966>,  <27.462019, 33.136726, 34.359032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584101, 33.474579, 34.534966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078677, -0.482655, 0.872269,
		0.949031, -0.231617, -0.213762,
		0.305206, 0.844628, 0.439832,
		27.675663, 33.727966, 34.666916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180199, 33.170719, 34.592922>,  <27.462019, 33.136726, 34.359032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180199, 33.170719, 34.592922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944187, 33.409256, 34.810635>,  <27.802580, 33.552380, 34.941261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944187, 33.409256, 34.810635>,  <28.180199, 33.170719, 34.592922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944187, 33.409256, 34.810635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155708, -0.577425, 0.801459,
		0.792225, 0.557633, 0.247842,
		-0.590029, 0.596344, 0.544278,
		27.767178, 33.588158, 34.973919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860216, 32.623539, 35.094711>,  <28.180199, 33.170719, 34.592922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860216, 32.623539, 35.094711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707462, 32.931301, 35.299526>,  <27.615810, 33.115959, 35.422413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707462, 32.931301, 35.299526>,  <27.860216, 32.623539, 35.094711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707462, 32.931301, 35.299526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878772, -0.473868, 0.056650,
		0.286224, -0.428328, 0.857094,
		-0.381885, 0.769405, 0.512035,
		27.592897, 33.162121, 35.453136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797964, 32.425755, 35.804436>,  <27.860216, 32.623539, 35.094711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797964, 32.425755, 35.804436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534912, 32.718609, 35.733437>,  <27.377081, 32.894321, 35.690838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534912, 32.718609, 35.733437>,  <27.797964, 32.425755, 35.804436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534912, 32.718609, 35.733437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749083, -0.660520, 0.050870,
		-0.079998, 0.166416, 0.982805,
		-0.657628, 0.732134, -0.177500,
		27.337624, 32.938248, 35.680187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252411, 32.350960, 36.322971>,  <27.797964, 32.425755, 35.804436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252411, 32.350960, 36.322971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090559, 32.563423, 36.025208>,  <26.993448, 32.690899, 35.846550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090559, 32.563423, 36.025208>,  <27.252411, 32.350960, 36.322971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090559, 32.563423, 36.025208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802855, -0.596072, 0.011085,
		-0.437836, 0.602141, 0.667628,
		-0.404629, 0.531154, -0.744413,
		26.969170, 32.722771, 35.801884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632608, 32.503731, 36.588905>,  <27.252411, 32.350960, 36.322971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632608, 32.503731, 36.588905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616072, 32.509499, 36.189289>,  <26.606150, 32.512959, 35.949520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616072, 32.509499, 36.189289>,  <26.632608, 32.503731, 36.588905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616072, 32.509499, 36.189289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805780, -0.591695, 0.024802,
		-0.590770, 0.806033, 0.036083,
		-0.041341, 0.014423, -0.999041,
		26.603670, 32.513824, 35.889576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095251, 32.868118, 36.272888>,  <26.632608, 32.503731, 36.588905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095251, 32.868118, 36.272888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180769, 32.567001, 36.023861>,  <26.232080, 32.386330, 35.874447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180769, 32.567001, 36.023861>,  <26.095251, 32.868118, 36.272888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180769, 32.567001, 36.023861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897309, -0.403266, 0.179479,
		-0.386170, 0.520261, -0.761710,
		0.213796, -0.752798, -0.622564,
		26.244907, 32.341164, 35.837090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504745, 33.327183, 36.142384>,  <26.095251, 32.868118, 36.272888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504745, 33.327183, 36.142384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676920, 33.025146, 35.944569>,  <25.780224, 32.843925, 35.825878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676920, 33.025146, 35.944569>,  <25.504745, 33.327183, 36.142384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676920, 33.025146, 35.944569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648339, -0.639835, 0.412635,
		-0.627996, 0.143011, -0.764963,
		0.430439, -0.755089, -0.494534,
		25.806049, 32.798622, 35.796207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100237, 33.071102, 35.684273>,  <25.504745, 33.327183, 36.142384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100237, 33.071102, 35.684273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348314, 32.780380, 35.802338>,  <25.497160, 32.605949, 35.873177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348314, 32.780380, 35.802338>,  <25.100237, 33.071102, 35.684273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348314, 32.780380, 35.802338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782337, -0.600656, 0.164804,
		0.057512, -0.333127, -0.941126,
		0.620194, -0.726800, 0.295162,
		25.534372, 32.562340, 35.890884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015089, 32.416428, 35.320660>,  <25.100237, 33.071102, 35.684273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015089, 32.416428, 35.320660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149145, 32.342110, 35.690125>,  <25.229580, 32.297520, 35.911804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149145, 32.342110, 35.690125>,  <25.015089, 32.416428, 35.320660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149145, 32.342110, 35.690125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660565, -0.745385, 0.089743,
		0.671813, -0.640219, -0.372540,
		0.335141, -0.185796, 0.923666,
		25.249687, 32.286369, 35.967224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342218, 32.387878, 35.756920>,  <25.015089, 32.416428, 35.320660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342218, 32.387878, 35.756920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289633, 32.038296, 35.569767>,  <24.258081, 31.828547, 35.457474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289633, 32.038296, 35.569767>,  <24.342218, 32.387878, 35.756920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289633, 32.038296, 35.569767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812396, -0.365457, 0.454372,
		-0.568093, -0.320372, 0.758045,
		-0.131465, -0.873958, -0.467882,
		24.250193, 31.776108, 35.429401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417608, 31.839710, 36.335682>,  <24.342218, 32.387878, 35.756920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417608, 31.839710, 36.335682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536695, 31.778585, 35.958744>,  <24.608149, 31.741911, 35.732582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536695, 31.778585, 35.958744>,  <24.417608, 31.839710, 36.335682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.536695, 31.778585, 35.958744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953279, -0.005362, 0.302042,
		-0.051208, -0.988241, 0.144075,
		0.297718, -0.152811, -0.942344,
		24.626011, 31.732742, 35.676041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040636, 31.498781, 36.383598>,  <24.417608, 31.839710, 36.335682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040636, 31.498781, 36.383598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070766, 31.689259, 36.033154>,  <25.088844, 31.803545, 35.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070766, 31.689259, 36.033154>,  <25.040636, 31.498781, 36.383598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070766, 31.689259, 36.033154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990919, 0.062390, 0.119107,
		0.111378, -0.877126, -0.467168,
		0.075325, 0.476192, -0.876110,
		25.093365, 31.832115, 35.770321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719364, 31.362690, 36.151455>,  <25.040636, 31.498781, 36.383598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719364, 31.362690, 36.151455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581873, 31.680508, 35.951237>,  <25.499378, 31.871199, 35.831104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581873, 31.680508, 35.951237>,  <25.719364, 31.362690, 36.151455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581873, 31.680508, 35.951237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937697, 0.261604, -0.228665,
		-0.050739, -0.547960, -0.834964,
		-0.343729, 0.794546, -0.500547,
		25.478754, 31.918871, 35.801071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337460, 31.575148, 35.635273>,  <25.719364, 31.362690, 36.151455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337460, 31.575148, 35.635273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091967, 31.888781, 35.598297>,  <25.944672, 32.076962, 35.576111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091967, 31.888781, 35.598297>,  <26.337460, 31.575148, 35.635273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091967, 31.888781, 35.598297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754843, 0.548430, -0.359773,
		-0.231397, -0.290580, -0.928449,
		-0.613732, 0.784084, -0.092437,
		25.907846, 32.124004, 35.570564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524185, 31.948200, 35.066818>,  <26.337460, 31.575148, 35.635273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524185, 31.948200, 35.066818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324497, 32.203503, 35.301224>,  <26.204683, 32.356682, 35.441868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324497, 32.203503, 35.301224>,  <26.524185, 31.948200, 35.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324497, 32.203503, 35.301224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758375, 0.648979, -0.060778,
		-0.419101, 0.414075, -0.808020,
		-0.499221, 0.638254, 0.586012,
		26.174730, 32.394978, 35.477028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401150, 32.654636, 34.789356>,  <26.524185, 31.948200, 35.066818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401150, 32.654636, 34.789356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399969, 32.715820, 35.184647>,  <26.399261, 32.752529, 35.421822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399969, 32.715820, 35.184647>,  <26.401150, 32.654636, 34.789356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399969, 32.715820, 35.184647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714198, 0.692027, -0.104979,
		-0.699938, 0.705480, -0.111285,
		-0.002952, 0.152958, 0.988228,
		26.399084, 32.761707, 35.481113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274754, 33.440479, 34.975582>,  <26.401150, 32.654636, 34.789356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274754, 33.440479, 34.975582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489979, 33.232677, 35.241093>,  <26.619114, 33.107994, 35.400398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489979, 33.232677, 35.241093>,  <26.274754, 33.440479, 34.975582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489979, 33.232677, 35.241093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685812, 0.727652, 0.013573,
		-0.490049, 0.447923, 0.747808,
		0.538065, -0.519508, 0.663776,
		26.651398, 33.076824, 35.440224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498837, 33.957863, 35.530155>,  <26.274754, 33.440479, 34.975582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498837, 33.957863, 35.530155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753391, 33.650040, 35.551281>,  <26.906124, 33.465343, 35.563957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753391, 33.650040, 35.551281>,  <26.498837, 33.957863, 35.530155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753391, 33.650040, 35.551281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769826, 0.637953, 0.019623,
		-0.048795, 0.028171, 0.998411,
		0.636386, -0.769560, 0.052815,
		26.944307, 33.419170, 35.567127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037130, 34.223454, 35.938133>,  <26.498837, 33.957863, 35.530155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037130, 34.223454, 35.938133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213612, 33.890182, 35.804771>,  <27.319500, 33.690220, 35.724754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213612, 33.890182, 35.804771>,  <27.037130, 34.223454, 35.938133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213612, 33.890182, 35.804771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896803, 0.422972, 0.129765,
		0.032903, -0.356249, 0.933812,
		0.441204, -0.833176, -0.333402,
		27.345972, 33.640228, 35.704750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635534, 34.066738, 36.412415>,  <27.037130, 34.223454, 35.938133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635534, 34.066738, 36.412415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706089, 33.905537, 36.053200>,  <27.748421, 33.808815, 35.837669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706089, 33.905537, 36.053200>,  <27.635534, 34.066738, 36.412415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706089, 33.905537, 36.053200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880722, 0.472037, -0.038849,
		0.439565, -0.784070, 0.438197,
		0.176385, -0.403007, -0.898039,
		27.759005, 33.784634, 35.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338991, 33.583874, 36.535336>,  <27.635534, 34.066738, 36.412415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338991, 33.583874, 36.535336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224380, 33.754406, 36.192139>,  <28.155613, 33.856724, 35.986221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224380, 33.754406, 36.192139>,  <28.338991, 33.583874, 36.535336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224380, 33.754406, 36.192139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785106, 0.617741, 0.044764,
		0.549099, -0.660786, -0.511716,
		-0.286529, 0.426331, -0.857988,
		28.138422, 33.882305, 35.934742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813732, 33.508839, 36.008263>,  <28.338991, 33.583874, 36.535336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813732, 33.508839, 36.008263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632092, 33.847897, 35.898510>,  <28.523108, 34.051331, 35.832661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632092, 33.847897, 35.898510>,  <28.813732, 33.508839, 36.008263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632092, 33.847897, 35.898510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814983, 0.519629, 0.256495,
		0.359992, -0.107138, -0.926783,
		-0.454103, 0.847648, -0.274378,
		28.495861, 34.102192, 35.816196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341127, 33.942291, 35.643131>,  <28.813732, 33.508839, 36.008263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341127, 33.942291, 35.643131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067039, 34.190098, 35.796322>,  <28.902586, 34.338783, 35.888237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067039, 34.190098, 35.796322>,  <29.341127, 33.942291, 35.643131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067039, 34.190098, 35.796322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728103, 0.595982, 0.338632,
		-0.018456, 0.510881, -0.859453,
		-0.685220, 0.619521, 0.382973,
		28.861473, 34.375954, 35.911213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740751, 34.482868, 35.605129>,  <29.341127, 33.942291, 35.643131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740751, 34.482868, 35.605129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421745, 34.518635, 35.843784>,  <29.230341, 34.540096, 35.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421745, 34.518635, 35.843784>,  <29.740751, 34.482868, 35.605129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421745, 34.518635, 35.843784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473614, 0.705395, 0.527360,
		-0.373709, 0.703152, -0.604912,
		-0.797516, 0.089416, 0.596634,
		29.182491, 34.545460, 36.022774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296642, 34.969341, 35.811687>,  <29.740751, 34.482868, 35.605129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296642, 34.969341, 35.811687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683542, 34.875389, 35.773190>,  <30.915682, 34.819019, 35.750092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683542, 34.875389, 35.773190>,  <30.296642, 34.969341, 35.811687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683542, 34.875389, 35.773190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165950, 0.298231, 0.939957,
		-0.192074, -0.925143, 0.327442,
		0.967247, -0.234880, -0.096245,
		30.973717, 34.804924, 35.744316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487139, 34.623432, 36.488480>,  <30.296642, 34.969341, 35.811687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487139, 34.623432, 36.488480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824467, 34.747643, 36.313030>,  <31.026863, 34.822170, 36.207760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824467, 34.747643, 36.313030>,  <30.487139, 34.623432, 36.488480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824467, 34.747643, 36.313030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279859, 0.443014, 0.851715,
		0.458793, -0.841019, 0.286699,
		0.843319, 0.310526, -0.438618,
		31.077463, 34.840801, 36.181446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103123, 34.380665, 36.815876>,  <30.487139, 34.623432, 36.488480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103123, 34.380665, 36.815876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226086, 34.715862, 36.635536>,  <31.299864, 34.916981, 36.527332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226086, 34.715862, 36.635536>,  <31.103123, 34.380665, 36.815876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226086, 34.715862, 36.635536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301953, 0.363407, 0.881339,
		0.902400, -0.407065, -0.141321,
		0.307406, 0.837993, -0.450853,
		31.318308, 34.967258, 36.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708515, 34.583931, 37.206413>,  <31.103123, 34.380665, 36.815876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708515, 34.583931, 37.206413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578453, 34.904770, 37.006046>,  <31.500416, 35.097271, 36.885826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578453, 34.904770, 37.006046>,  <31.708515, 34.583931, 37.206413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578453, 34.904770, 37.006046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250205, 0.583793, 0.772388,
		0.911960, 0.125814, -0.390512,
		-0.325156, 0.802095, -0.500916,
		31.480906, 35.145397, 36.855770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103825, 35.061100, 37.442467>,  <31.708515, 34.583931, 37.206413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103825, 35.061100, 37.442467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826540, 35.289757, 37.266884>,  <31.660170, 35.426952, 37.161533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826540, 35.289757, 37.266884>,  <32.103825, 35.061100, 37.442467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826540, 35.289757, 37.266884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102448, 0.681010, 0.725073,
		0.713417, 0.457657, -0.530647,
		-0.693210, 0.571643, -0.438958,
		31.618578, 35.461250, 37.135197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060772, 35.704212, 37.932697>,  <32.103825, 35.061100, 37.442467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060772, 35.704212, 37.932697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103695, 35.993427, 37.659729>,  <32.129448, 36.166958, 37.495949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103695, 35.993427, 37.659729>,  <32.060772, 35.704212, 37.932697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103695, 35.993427, 37.659729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614523, -0.491333, -0.617214,
		-0.781566, 0.485595, 0.391601,
		0.107310, 0.723041, -0.682419,
		32.135887, 36.210339, 37.455002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446455, 35.824207, 37.742195>,  <32.060772, 35.704212, 37.932697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446455, 35.824207, 37.742195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716406, 35.903728, 37.457935>,  <31.878376, 35.951443, 37.287380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716406, 35.903728, 37.457935>,  <31.446455, 35.824207, 37.742195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716406, 35.903728, 37.457935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597286, -0.418369, -0.684264,
		-0.433347, 0.886253, -0.163605,
		0.674878, 0.198805, -0.710645,
		31.918869, 35.963371, 37.244743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107498, 36.014961, 37.097572>,  <31.446455, 35.824207, 37.742195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107498, 36.014961, 37.097572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467173, 35.874138, 36.993637>,  <31.682978, 35.789642, 36.931274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467173, 35.874138, 36.993637>,  <31.107498, 36.014961, 37.097572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467173, 35.874138, 36.993637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420398, -0.530396, -0.736170,
		0.121356, 0.771191, -0.624930,
		0.899188, -0.352058, -0.259840,
		31.736929, 35.768520, 36.915684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389471, 36.247593, 36.409019>,  <31.107498, 36.014961, 37.097572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389471, 36.247593, 36.409019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549000, 35.893661, 36.505367>,  <31.644716, 35.681301, 36.563175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549000, 35.893661, 36.505367>,  <31.389471, 36.247593, 36.409019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549000, 35.893661, 36.505367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355384, -0.391267, -0.848889,
		0.845366, 0.252954, -0.470500,
		0.398821, -0.884830, 0.240869,
		31.668646, 35.628212, 36.577629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693979, 35.958683, 35.784576>,  <31.389471, 36.247593, 36.409019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693979, 35.958683, 35.784576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616356, 35.643501, 36.018314>,  <31.569782, 35.454391, 36.158558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616356, 35.643501, 36.018314>,  <31.693979, 35.958683, 35.784576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616356, 35.643501, 36.018314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157807, -0.562841, -0.811361,
		0.968214, -0.249665, -0.015122,
		-0.194057, -0.787958, 0.584349,
		31.558138, 35.407112, 36.193619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153114, 35.368458, 35.710850>,  <31.693979, 35.958683, 35.784576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153114, 35.368458, 35.710850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824919, 35.184006, 35.846004>,  <31.628002, 35.073334, 35.927097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824919, 35.184006, 35.846004>,  <32.153114, 35.368458, 35.710850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824919, 35.184006, 35.846004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007591, -0.599781, -0.800128,
		0.571619, -0.653928, 0.495611,
		-0.820484, -0.461130, 0.337882,
		31.578773, 35.045666, 35.947369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208023, 34.646046, 35.633450>,  <32.153114, 35.368458, 35.710850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208023, 34.646046, 35.633450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812580, 34.706165, 35.630058>,  <31.575315, 34.742237, 35.628025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812580, 34.706165, 35.630058>,  <32.208023, 34.646046, 35.633450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812580, 34.706165, 35.630058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108032, -0.747578, -0.655329,
		-0.104832, -0.646946, 0.755296,
		-0.988605, 0.150295, -0.008479,
		31.515999, 34.751255, 35.627514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878325, 33.981117, 35.813835>,  <32.208023, 34.646046, 35.633450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878325, 33.981117, 35.813835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672071, 34.220417, 35.568489>,  <31.548319, 34.363998, 35.421280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672071, 34.220417, 35.568489>,  <31.878325, 33.981117, 35.813835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672071, 34.220417, 35.568489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091219, -0.750132, -0.654967,
		-0.851940, -0.281771, 0.441365,
		-0.515632, 0.598253, -0.613364,
		31.517382, 34.399895, 35.384480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220840, 33.657879, 35.654911>,  <31.878325, 33.981117, 35.813835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220840, 33.657879, 35.654911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312325, 33.903023, 35.352364>,  <31.367214, 34.050110, 35.170834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312325, 33.903023, 35.352364>,  <31.220840, 33.657879, 35.654911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312325, 33.903023, 35.352364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073589, -0.763857, -0.641177,
		-0.970709, 0.202304, -0.129601,
		0.228709, 0.612859, -0.756370,
		31.380938, 34.086880, 35.125454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842785, 33.414715, 35.153473>,  <31.220840, 33.657879, 35.654911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842785, 33.414715, 35.153473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098310, 33.641430, 34.945370>,  <31.251627, 33.777458, 34.820507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098310, 33.641430, 34.945370>,  <30.842785, 33.414715, 35.153473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098310, 33.641430, 34.945370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008972, -0.681661, -0.731613,
		-0.769307, 0.462699, -0.440541,
		0.638816, 0.566787, -0.520256,
		31.289955, 33.811466, 34.789291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602041, 33.460579, 34.423817>,  <30.842785, 33.414715, 35.153473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602041, 33.460579, 34.423817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997063, 33.523403, 34.427139>,  <31.234076, 33.561096, 34.429131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997063, 33.523403, 34.427139>,  <30.602041, 33.460579, 34.423817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997063, 33.523403, 34.427139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115197, -0.686373, -0.718068,
		-0.107080, 0.710088, -0.695923,
		0.987554, 0.157059, 0.008304,
		31.293329, 33.570522, 34.429630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813679, 33.560249, 33.646168>,  <30.602041, 33.460579, 34.423817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813679, 33.560249, 33.646168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155909, 33.476021, 33.835335>,  <31.361246, 33.425484, 33.948833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155909, 33.476021, 33.835335>,  <30.813679, 33.560249, 33.646168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155909, 33.476021, 33.835335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278645, -0.582584, -0.763514,
		0.436289, 0.785019, -0.439769,
		0.855575, -0.210573, 0.472917,
		31.412580, 33.412849, 33.977211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353909, 33.681019, 33.166668>,  <30.813679, 33.560249, 33.646168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353909, 33.681019, 33.166668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516216, 33.437149, 33.439037>,  <31.613602, 33.290829, 33.602459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516216, 33.437149, 33.439037>,  <31.353909, 33.681019, 33.166668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516216, 33.437149, 33.439037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546088, -0.435683, -0.715519,
		0.732897, 0.662179, 0.156147,
		0.405771, -0.609671, 0.680919,
		31.637947, 33.254246, 33.643314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034508, 33.741062, 32.975090>,  <31.353909, 33.681019, 33.166668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034508, 33.741062, 32.975090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000534, 33.402008, 33.184582>,  <31.980148, 33.198574, 33.310276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000534, 33.402008, 33.184582>,  <32.034508, 33.741062, 32.975090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000534, 33.402008, 33.184582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538059, -0.481423, -0.691899,
		0.838617, 0.223030, 0.496970,
		-0.084939, -0.847638, 0.523733,
		31.975052, 33.147717, 33.341702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714565, 33.531506, 32.937771>,  <32.034508, 33.741062, 32.975090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714565, 33.531506, 32.937771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492916, 33.214798, 33.040569>,  <32.359928, 33.024773, 33.102249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492916, 33.214798, 33.040569>,  <32.714565, 33.531506, 32.937771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492916, 33.214798, 33.040569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488304, -0.559205, -0.669961,
		0.674171, -0.245747, 0.696493,
		-0.554124, -0.791769, 0.257001,
		32.326679, 32.977268, 33.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192440, 33.091873, 33.026691>,  <32.714565, 33.531506, 32.937771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192440, 33.091873, 33.026691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860504, 32.872349, 32.986351>,  <32.661343, 32.740635, 32.962147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860504, 32.872349, 32.986351>,  <33.192440, 33.091873, 33.026691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860504, 32.872349, 32.986351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436980, -0.526769, -0.729084,
		0.347005, -0.649093, 0.676953,
		-0.829841, -0.548810, -0.100849,
		32.611553, 32.707706, 32.956097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404545, 32.352058, 32.883125>,  <33.192440, 33.091873, 33.026691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404545, 32.352058, 32.883125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045235, 32.447151, 32.735298>,  <32.829647, 32.504208, 32.646603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045235, 32.447151, 32.735298>,  <33.404545, 32.352058, 32.883125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045235, 32.447151, 32.735298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241139, -0.436403, -0.866836,
		-0.367350, -0.867778, 0.334687,
		-0.898279, 0.237726, -0.369568,
		32.775749, 32.518471, 32.624428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143650, 31.771183, 32.508076>,  <33.404545, 32.352058, 32.883125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143650, 31.771183, 32.508076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930542, 32.083305, 32.377060>,  <32.802677, 32.270580, 32.298450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930542, 32.083305, 32.377060>,  <33.143650, 31.771183, 32.508076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930542, 32.083305, 32.377060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220006, -0.246019, -0.943966,
		-0.817163, -0.574975, -0.040601,
		-0.532768, 0.780306, -0.327536,
		32.770710, 32.317398, 32.278801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157505, 31.636766, 31.857107>,  <33.143650, 31.771183, 32.508076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157505, 31.636766, 31.857107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977596, 31.993904, 31.847841>,  <32.869652, 32.208187, 31.842281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977596, 31.993904, 31.847841>,  <33.157505, 31.636766, 31.857107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977596, 31.993904, 31.847841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183965, 0.067231, -0.980631,
		-0.873993, -0.445320, -0.194491,
		-0.449770, 0.892844, -0.023164,
		32.842667, 32.261757, 31.840893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537670, 31.600250, 31.408821>,  <33.157505, 31.636766, 31.857107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537670, 31.600250, 31.408821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639523, 31.986994, 31.416225>,  <32.700634, 32.219040, 31.420668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639523, 31.986994, 31.416225>,  <32.537670, 31.600250, 31.408821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639523, 31.986994, 31.416225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011558, 0.016095, -0.999804,
		-0.966969, 0.254797, -0.007076,
		0.254634, 0.966861, 0.018509,
		32.715912, 32.277054, 31.421778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119904, 31.932508, 30.922382>,  <32.537670, 31.600250, 31.408821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119904, 31.932508, 30.922382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425900, 32.182758, 30.983551>,  <32.609497, 32.332909, 31.020252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425900, 32.182758, 30.983551>,  <32.119904, 31.932508, 30.922382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425900, 32.182758, 30.983551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049981, 0.179053, -0.982569,
		-0.642100, 0.759299, 0.105704,
		0.764990, 0.625624, 0.152920,
		32.655396, 32.370445, 31.029427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005054, 32.462563, 30.430660>,  <32.119904, 31.932508, 30.922382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005054, 32.462563, 30.430660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392990, 32.495777, 30.522331>,  <32.625751, 32.515705, 30.577333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392990, 32.495777, 30.522331>,  <32.005054, 32.462563, 30.430660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392990, 32.495777, 30.522331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167492, 0.456072, -0.874040,
		-0.177098, 0.886061, 0.428407,
		0.969837, 0.083036, 0.229177,
		32.683941, 32.520687, 30.591084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314541, 33.097164, 30.348080>,  <32.005054, 32.462563, 30.430660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314541, 33.097164, 30.348080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621681, 32.845310, 30.300810>,  <32.805965, 32.694199, 30.272448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621681, 32.845310, 30.300810>,  <32.314541, 33.097164, 30.348080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621681, 32.845310, 30.300810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031219, 0.147472, -0.988573,
		0.639865, 0.762768, 0.093580,
		0.767853, -0.629632, -0.118175,
		32.852036, 32.656422, 30.265358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724457, 33.359524, 29.822454>,  <32.314541, 33.097164, 30.348080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724457, 33.359524, 29.822454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873199, 32.988403, 29.834509>,  <32.962444, 32.765732, 29.841742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873199, 32.988403, 29.834509>,  <32.724457, 33.359524, 29.822454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873199, 32.988403, 29.834509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154380, -0.093819, -0.983547,
		0.915364, 0.361083, -0.178121,
		0.371854, -0.927802, 0.030134,
		32.984756, 32.710064, 29.843550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294731, 33.337570, 29.324671>,  <32.724457, 33.359524, 29.822454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294731, 33.337570, 29.324671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155933, 32.967232, 29.384544>,  <33.072655, 32.745029, 29.420467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155933, 32.967232, 29.384544>,  <33.294731, 33.337570, 29.324671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155933, 32.967232, 29.384544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056447, -0.138692, -0.988725,
		0.936166, -0.351534, -0.004135,
		-0.346997, -0.925844, 0.149682,
		33.051834, 32.689480, 29.429449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594780, 32.888538, 28.841681>,  <33.294731, 33.337570, 29.324671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594780, 32.888538, 28.841681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285610, 32.654343, 28.939489>,  <33.100109, 32.513824, 28.998175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285610, 32.654343, 28.939489>,  <33.594780, 32.888538, 28.841681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285610, 32.654343, 28.939489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274927, -0.038285, -0.960703,
		0.571845, -0.809774, -0.131376,
		-0.772922, -0.585491, 0.244521,
		33.053734, 32.478695, 29.012846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661240, 32.357651, 28.447872>,  <33.594780, 32.888538, 28.841681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661240, 32.357651, 28.447872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281162, 32.326942, 28.568699>,  <33.053116, 32.308517, 28.641195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281162, 32.326942, 28.568699>,  <33.661240, 32.357651, 28.447872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281162, 32.326942, 28.568699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295265, -0.088558, -0.951302,
		0.099789, -0.993107, 0.061477,
		-0.950190, -0.076778, 0.302067,
		32.996105, 32.303909, 28.659319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433372, 31.850389, 28.042990>,  <33.661240, 32.357651, 28.447872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433372, 31.850389, 28.042990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084789, 32.015865, 28.148380>,  <32.875641, 32.115150, 28.211615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084789, 32.015865, 28.148380>,  <33.433372, 31.850389, 28.042990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084789, 32.015865, 28.148380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389953, -0.258575, -0.883785,
		-0.297483, -0.872926, 0.386657,
		-0.871459, 0.413689, 0.263478,
		32.823353, 32.139973, 28.227425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989838, 31.367886, 27.813917>,  <33.433372, 31.850389, 28.042990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989838, 31.367886, 27.813917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775745, 31.703423, 27.853653>,  <32.647289, 31.904745, 27.877495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775745, 31.703423, 27.853653>,  <32.989838, 31.367886, 27.813917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775745, 31.703423, 27.853653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526115, -0.239044, -0.816126,
		-0.660857, -0.489078, 0.569272,
		-0.535230, 0.838845, 0.099338,
		32.615177, 31.955076, 27.883455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324375, 31.078753, 27.792721>,  <32.989838, 31.367886, 27.813917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324375, 31.078753, 27.792721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314842, 31.468763, 27.704397>,  <32.309120, 31.702770, 27.651403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314842, 31.468763, 27.704397>,  <32.324375, 31.078753, 27.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314842, 31.468763, 27.704397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317770, -0.216806, -0.923048,
		-0.947868, 0.048165, 0.315002,
		-0.023836, 0.975026, -0.220809,
		32.307690, 31.761271, 27.638155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792969, 31.008623, 27.399927>,  <32.324375, 31.078753, 27.792721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792969, 31.008623, 27.399927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962084, 31.359179, 27.307669>,  <32.063553, 31.569511, 27.252314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962084, 31.359179, 27.307669>,  <31.792969, 31.008623, 27.399927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962084, 31.359179, 27.307669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456873, -0.013674, -0.889427,
		-0.782636, 0.481413, 0.394616,
		0.422786, 0.876387, -0.230646,
		32.088921, 31.622095, 27.238476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273363, 31.448818, 27.126551>,  <31.792969, 31.008623, 27.399927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273363, 31.448818, 27.126551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598095, 31.625069, 26.973303>,  <31.792934, 31.730820, 26.881355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598095, 31.625069, 26.973303>,  <31.273363, 31.448818, 27.126551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598095, 31.625069, 26.973303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499099, 0.183130, -0.846973,
		-0.303039, 0.878812, 0.368588,
		0.811829, 0.440628, -0.383119,
		31.841644, 31.757257, 26.858368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041433, 31.971777, 26.836483>,  <31.273363, 31.448818, 27.126551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041433, 31.971777, 26.836483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393560, 31.896315, 26.662378>,  <31.604836, 31.851038, 26.557915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393560, 31.896315, 26.662378>,  <31.041433, 31.971777, 26.836483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393560, 31.896315, 26.662378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419388, 0.119335, -0.899930,
		0.221718, 0.974766, 0.025933,
		0.880315, -0.188654, -0.435263,
		31.657656, 31.839718, 26.531799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192406, 32.493675, 26.234249>,  <31.041433, 31.971777, 26.836483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192406, 32.493675, 26.234249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442505, 32.188446, 26.168797>,  <31.592566, 32.005306, 26.129524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442505, 32.188446, 26.168797>,  <31.192406, 32.493675, 26.234249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442505, 32.188446, 26.168797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196555, 0.048939, -0.979271,
		0.755267, 0.644451, -0.119388,
		0.625249, -0.763078, -0.163632,
		31.630079, 31.959522, 26.119707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427389, 32.715637, 25.590122>,  <31.192406, 32.493675, 26.234249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427389, 32.715637, 25.590122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534853, 32.331551, 25.620594>,  <31.599331, 32.101097, 25.638876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534853, 32.331551, 25.620594>,  <31.427389, 32.715637, 25.590122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534853, 32.331551, 25.620594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023930, -0.085715, -0.996032,
		0.962938, 0.265769, -0.046006,
		0.268658, -0.960218, 0.076178,
		31.615450, 32.043484, 25.643448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020191, 32.695660, 25.215057>,  <31.427389, 32.715637, 25.590122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020191, 32.695660, 25.215057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876123, 32.322510, 25.216883>,  <31.789682, 32.098621, 25.217978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876123, 32.322510, 25.216883>,  <32.020191, 32.695660, 25.215057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876123, 32.322510, 25.216883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124588, -0.052948, -0.990795,
		0.924529, -0.356287, 0.135296,
		-0.360171, -0.932875, 0.004563,
		31.768072, 32.042648, 25.218252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414726, 32.344898, 24.767084>,  <32.020191, 32.695660, 25.215057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414726, 32.344898, 24.767084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113262, 32.082302, 24.779839>,  <31.932383, 31.924746, 24.787491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113262, 32.082302, 24.779839>,  <32.414726, 32.344898, 24.767084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113262, 32.082302, 24.779839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138190, -0.205699, -0.968809,
		0.642569, -0.725751, 0.245747,
		-0.753664, -0.656486, 0.031885,
		31.887163, 31.885357, 24.789404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702225, 31.868490, 24.470858>,  <32.414726, 32.344898, 24.767084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702225, 31.868490, 24.470858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311649, 31.808809, 24.408491>,  <32.077305, 31.773001, 24.371071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311649, 31.808809, 24.408491>,  <32.702225, 31.868490, 24.470858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311649, 31.808809, 24.408491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208170, -0.460744, -0.862775,
		0.056888, -0.874903, 0.480946,
		-0.976437, -0.149200, -0.155918,
		32.018719, 31.764050, 24.361715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628925, 31.205376, 24.099098>,  <32.702225, 31.868490, 24.470858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628925, 31.205376, 24.099098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271675, 31.377831, 24.047791>,  <32.057327, 31.481302, 24.017006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271675, 31.377831, 24.047791>,  <32.628925, 31.205376, 24.099098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271675, 31.377831, 24.047791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013561, -0.310841, -0.950365,
		-0.449608, -0.847054, 0.283466,
		-0.893123, 0.431136, -0.128270,
		32.003738, 31.507172, 24.009310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162952, 30.738867, 23.772038>,  <32.628925, 31.205376, 24.099098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162952, 30.738867, 23.772038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998281, 31.096153, 23.699720>,  <31.899479, 31.310526, 23.656330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998281, 31.096153, 23.699720>,  <32.162952, 30.738867, 23.772038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998281, 31.096153, 23.699720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179660, -0.274033, -0.944790,
		-0.893446, -0.356467, 0.273288,
		-0.411676, 0.893218, -0.180791,
		31.874779, 31.364119, 23.645483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502485, 30.594748, 23.396004>,  <32.162952, 30.738867, 23.772038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502485, 30.594748, 23.396004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580099, 30.979132, 23.317104>,  <31.626667, 31.209763, 23.269764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580099, 30.979132, 23.317104>,  <31.502485, 30.594748, 23.396004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580099, 30.979132, 23.317104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190611, -0.160306, -0.968489,
		-0.962298, 0.225519, 0.152064,
		0.194036, 0.960960, -0.197248,
		31.638309, 31.267420, 23.257931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029671, 30.876205, 22.878511>,  <31.502485, 30.594748, 23.396004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029671, 30.876205, 22.878511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343967, 31.123478, 22.869890>,  <31.532545, 31.271841, 22.864717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343967, 31.123478, 22.869890>,  <31.029671, 30.876205, 22.878511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343967, 31.123478, 22.869890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114908, 0.111641, -0.987083,
		-0.607790, 0.778067, 0.158755,
		0.785740, 0.618181, -0.021552,
		31.579689, 31.308933, 22.863424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810959, 31.559059, 22.526731>,  <31.029671, 30.876205, 22.878511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810959, 31.559059, 22.526731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209101, 31.562864, 22.488403>,  <31.447985, 31.565147, 22.465406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209101, 31.562864, 22.488403>,  <30.810959, 31.559059, 22.526731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209101, 31.562864, 22.488403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095996, 0.176294, -0.979646,
		0.007573, 0.984292, 0.176388,
		0.995353, 0.009514, -0.095823,
		31.507706, 31.565718, 22.459656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097584, 32.196976, 22.288284>,  <30.810959, 31.559059, 22.526731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097584, 32.196976, 22.288284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386789, 31.941090, 22.183966>,  <31.560312, 31.787558, 22.121374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386789, 31.941090, 22.183966>,  <31.097584, 32.196976, 22.288284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386789, 31.941090, 22.183966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193097, 0.175323, -0.965389,
		0.663300, 0.748347, 0.003233,
		0.723012, -0.639718, -0.260795,
		31.603693, 31.749174, 22.105726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410883, 32.590561, 21.838194>,  <31.097584, 32.196976, 22.288284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410883, 32.590561, 21.838194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506464, 32.207298, 21.775146>,  <31.563812, 31.977341, 21.737318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506464, 32.207298, 21.775146>,  <31.410883, 32.590561, 21.838194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506464, 32.207298, 21.775146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198448, 0.110707, -0.973839,
		0.950537, 0.263978, -0.163690,
		0.238950, -0.958154, -0.157617,
		31.578150, 31.919851, 21.727861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860863, 32.548626, 21.298143>,  <31.410883, 32.590561, 21.838194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860863, 32.548626, 21.298143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741732, 32.166805, 21.293467>,  <31.670254, 31.937714, 21.290661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741732, 32.166805, 21.293467>,  <31.860863, 32.548626, 21.298143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741732, 32.166805, 21.293467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051168, 0.028195, -0.998292,
		0.953248, -0.296718, -0.057240,
		-0.297825, -0.954549, -0.011694,
		31.652384, 31.880440, 21.289959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264858, 32.259830, 20.777477>,  <31.860863, 32.548626, 21.298143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264858, 32.259830, 20.777477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941570, 32.028591, 20.822336>,  <31.747597, 31.889847, 20.849251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941570, 32.028591, 20.822336>,  <32.264858, 32.259830, 20.777477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941570, 32.028591, 20.822336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220350, 0.120284, -0.967976,
		0.546101, -0.807049, -0.224601,
		-0.808220, -0.578103, 0.112146,
		31.699104, 31.855160, 20.855980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391953, 32.021584, 20.189116>,  <32.264858, 32.259830, 20.777477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391953, 32.021584, 20.189116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016575, 31.929232, 20.291887>,  <31.791348, 31.873821, 20.353550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016575, 31.929232, 20.291887>,  <32.391953, 32.021584, 20.189116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016575, 31.929232, 20.291887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291945, 0.132585, -0.947201,
		0.184623, -0.963907, -0.191827,
		-0.938447, -0.230878, 0.256930,
		31.735041, 31.859968, 20.368967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127163, 31.528566, 19.603336>,  <32.391953, 32.021584, 20.189116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127163, 31.528566, 19.603336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805906, 31.685925, 19.782312>,  <31.613153, 31.780340, 19.889698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805906, 31.685925, 19.782312>,  <32.127163, 31.528566, 19.603336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805906, 31.685925, 19.782312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431962, 0.132746, -0.892069,
		-0.410334, -0.909734, 0.063320,
		-0.803140, 0.393398, 0.447441,
		31.564964, 31.803944, 19.916544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685497, 31.248655, 19.141863>,  <32.127163, 31.528566, 19.603336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685497, 31.248655, 19.141863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515877, 31.549286, 19.343977>,  <31.414104, 31.729664, 19.465246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515877, 31.549286, 19.343977>,  <31.685497, 31.248655, 19.141863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515877, 31.549286, 19.343977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456900, 0.304180, -0.835893,
		-0.781935, -0.585326, 0.214407,
		-0.424052, 0.751577, 0.505285,
		31.388660, 31.774759, 19.495562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025963, 31.176952, 18.958084>,  <31.685497, 31.248655, 19.141863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025963, 31.176952, 18.958084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068085, 31.555983, 19.078754>,  <31.093359, 31.783401, 19.151157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068085, 31.555983, 19.078754>,  <31.025963, 31.176952, 18.958084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068085, 31.555983, 19.078754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421659, 0.317291, -0.849429,
		-0.900619, -0.037755, 0.432967,
		0.105306, 0.947576, 0.301678,
		31.099676, 31.840256, 19.169258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380695, 31.736158, 18.991407>,  <31.025963, 31.176952, 18.958084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380695, 31.736158, 18.991407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721630, 31.940611, 18.947107>,  <30.926191, 32.063282, 18.920527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721630, 31.940611, 18.947107>,  <30.380695, 31.736158, 18.991407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721630, 31.940611, 18.947107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315790, 0.334183, -0.888031,
		-0.416889, 0.791876, 0.446247,
		0.852338, 0.511131, -0.110750,
		30.977331, 32.093948, 18.913883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217102, 32.412350, 19.056261>,  <30.380695, 31.736158, 18.991407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217102, 32.412350, 19.056261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013721, 32.736526, 18.939880>,  <29.891693, 32.931034, 18.870052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013721, 32.736526, 18.939880>,  <30.217102, 32.412350, 19.056261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013721, 32.736526, 18.939880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497281, -0.552210, -0.669161,
		-0.702985, -0.195552, 0.683792,
		-0.508452, 0.810446, -0.290951,
		29.861185, 32.979660, 18.852594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478426, 32.191475, 19.017113>,  <30.217102, 32.412350, 19.056261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478426, 32.191475, 19.017113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549437, 32.502674, 18.776047>,  <29.592043, 32.689392, 18.631407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549437, 32.502674, 18.776047>,  <29.478426, 32.191475, 19.017113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549437, 32.502674, 18.776047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312541, -0.536117, -0.784153,
		-0.933168, 0.327567, 0.147980,
		0.177528, 0.777996, -0.602665,
		29.602695, 32.736073, 18.595247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890230, 32.338310, 18.606716>,  <29.478426, 32.191475, 19.017113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890230, 32.338310, 18.606716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241793, 32.425644, 18.437082>,  <29.452730, 32.478046, 18.335302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241793, 32.425644, 18.437082>,  <28.890230, 32.338310, 18.606716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241793, 32.425644, 18.437082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327753, -0.369513, -0.869504,
		-0.346551, 0.903210, -0.253207,
		0.878909, 0.218338, -0.424085,
		29.505465, 32.491146, 18.309856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570713, 32.500278, 17.926773>,  <28.890230, 32.338310, 18.606716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570713, 32.500278, 17.926773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543177, 32.894547, 17.988371>,  <28.526655, 33.131107, 18.025330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543177, 32.894547, 17.988371>,  <28.570713, 32.500278, 17.926773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543177, 32.894547, 17.988371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836659, 0.141117, -0.529233,
		-0.543381, 0.092408, -0.834385,
		-0.068840, 0.985671, 0.153995,
		28.522524, 33.190247, 18.034569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622669, 32.976467, 17.281626>,  <28.570713, 32.500278, 17.926773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622669, 32.976467, 17.281626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797974, 33.147308, 17.597982>,  <28.903156, 33.249813, 17.787796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797974, 33.147308, 17.597982>,  <28.622669, 32.976467, 17.281626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797974, 33.147308, 17.597982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822237, 0.164964, -0.544714,
		-0.363116, 0.889030, -0.278879,
		0.438262, 0.427099, 0.790894,
		28.929453, 33.275436, 17.835251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575891, 33.777756, 17.232878>,  <28.622669, 32.976467, 17.281626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575891, 33.777756, 17.232878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898315, 33.612839, 17.402716>,  <29.091770, 33.513889, 17.504618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898315, 33.612839, 17.402716>,  <28.575891, 33.777756, 17.232878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898315, 33.612839, 17.402716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591827, 0.564473, -0.575422,
		-0.002430, 0.715112, 0.699006,
		0.806061, -0.412293, 0.424594,
		29.140133, 33.489151, 17.530094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124826, 34.296070, 17.534742>,  <28.575891, 33.777756, 17.232878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124826, 34.296070, 17.534742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281075, 33.958950, 17.386635>,  <29.374823, 33.756676, 17.297770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281075, 33.958950, 17.386635>,  <29.124826, 34.296070, 17.534742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281075, 33.958950, 17.386635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678383, 0.535438, -0.503093,
		0.622264, -0.054667, 0.780896,
		0.390619, -0.842803, -0.370269,
		29.398260, 33.706108, 17.275555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701899, 33.776752, 17.827320>,  <29.124826, 34.296070, 17.534742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701899, 33.776752, 17.827320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658957, 33.461269, 18.069448>,  <29.633190, 33.271980, 18.214725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658957, 33.461269, 18.069448>,  <29.701899, 33.776752, 17.827320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658957, 33.461269, 18.069448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452757, 0.503261, 0.736030,
		-0.885147, 0.353081, 0.303065,
		-0.107357, -0.788709, 0.605320,
		29.626749, 33.224655, 18.251045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321804, 34.045727, 18.302969>,  <29.701899, 33.776752, 17.827320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321804, 34.045727, 18.302969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488375, 33.716415, 18.457264>,  <29.588318, 33.518829, 18.549841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488375, 33.716415, 18.457264>,  <29.321804, 34.045727, 18.302969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488375, 33.716415, 18.457264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376034, 0.542250, 0.751374,
		-0.827760, -0.167841, 0.535389,
		0.416427, -0.823282, 0.385740,
		29.613302, 33.469429, 18.572987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983629, 33.952065, 18.979759>,  <29.321804, 34.045727, 18.302969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983629, 33.952065, 18.979759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332012, 33.758213, 19.012182>,  <29.541042, 33.641903, 19.031635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332012, 33.758213, 19.012182>,  <28.983629, 33.952065, 18.979759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332012, 33.758213, 19.012182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217838, 0.528704, 0.820377,
		-0.440432, -0.696857, 0.566049,
		0.870958, -0.484627, 0.081056,
		29.593300, 33.612823, 19.036499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060236, 33.744267, 19.643040>,  <28.983629, 33.952065, 18.979759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060236, 33.744267, 19.643040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447935, 33.712460, 19.549885>,  <29.680555, 33.693375, 19.493992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447935, 33.712460, 19.549885>,  <29.060236, 33.744267, 19.643040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447935, 33.712460, 19.549885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246039, 0.331882, 0.910670,
		0.004873, -0.939963, 0.341241,
		0.969248, -0.079521, -0.232885,
		29.738708, 33.688602, 19.480019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427328, 33.339886, 20.145525>,  <29.060236, 33.744267, 19.643040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427328, 33.339886, 20.145525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706549, 33.561958, 19.964638>,  <29.874081, 33.695202, 19.856106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706549, 33.561958, 19.964638>,  <29.427328, 33.339886, 20.145525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706549, 33.561958, 19.964638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380888, 0.246890, 0.891049,
		0.606342, -0.794241, -0.039120,
		0.698050, 0.555181, -0.452217,
		29.915964, 33.728512, 19.828972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976408, 33.319538, 20.589426>,  <29.427328, 33.339886, 20.145525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976408, 33.319538, 20.589426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100180, 33.605717, 20.338863>,  <30.174442, 33.777424, 20.188526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100180, 33.605717, 20.338863>,  <29.976408, 33.319538, 20.589426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100180, 33.605717, 20.338863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637157, 0.333005, 0.695082,
		0.705892, -0.614199, -0.352811,
		0.309431, 0.715449, -0.626407,
		30.193008, 33.820351, 20.150942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780247, 33.332634, 20.647848>,  <29.976408, 33.319538, 20.589426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780247, 33.332634, 20.647848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687439, 33.692989, 20.501118>,  <30.631754, 33.909203, 20.413078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687439, 33.692989, 20.501118>,  <30.780247, 33.332634, 20.647848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687439, 33.692989, 20.501118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602667, 0.429155, 0.672769,
		0.763517, -0.064978, -0.642510,
		-0.232021, 0.900891, -0.366827,
		30.617832, 33.963257, 20.391069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439714, 33.685299, 20.503145>,  <30.780247, 33.332634, 20.647848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439714, 33.685299, 20.503145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176439, 33.986439, 20.504673>,  <31.018475, 34.167122, 20.505590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176439, 33.986439, 20.504673>,  <31.439714, 33.685299, 20.503145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176439, 33.986439, 20.504673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628128, 0.546337, 0.554051,
		0.415027, 0.367069, -0.832474,
		-0.658186, 0.752846, 0.003822,
		30.978983, 34.212292, 20.505819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808153, 34.344337, 20.262438>,  <31.439714, 33.685299, 20.503145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808153, 34.344337, 20.262438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495840, 34.484013, 20.469685>,  <31.308453, 34.567818, 20.594032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495840, 34.484013, 20.469685>,  <31.808153, 34.344337, 20.262438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495840, 34.484013, 20.469685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614068, 0.581904, 0.533206,
		-0.115307, 0.734478, -0.668765,
		-0.780785, 0.349185, 0.518117,
		31.261604, 34.588768, 20.625120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969116, 35.074444, 20.338848>,  <31.808153, 34.344337, 20.262438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969116, 35.074444, 20.338848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722198, 34.963234, 20.633236>,  <31.574047, 34.896507, 20.809868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722198, 34.963234, 20.633236>,  <31.969116, 35.074444, 20.338848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722198, 34.963234, 20.633236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521134, 0.556306, 0.647259,
		-0.589378, 0.783087, -0.198515,
		-0.617295, -0.278027, 0.735967,
		31.537010, 34.879826, 20.854027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739399, 35.804779, 20.824629>,  <31.969116, 35.074444, 20.338848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739399, 35.804779, 20.824629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631340, 35.492767, 21.050396>,  <31.566504, 35.305561, 21.185856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631340, 35.492767, 21.050396>,  <31.739399, 35.804779, 20.824629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631340, 35.492767, 21.050396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210870, 0.524050, 0.825170,
		-0.939443, 0.341938, 0.022914,
		-0.270149, -0.780032, 0.564420,
		31.550295, 35.258759, 21.219723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636196, 36.124199, 21.480705>,  <31.739399, 35.804779, 20.824629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636196, 36.124199, 21.480705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655365, 35.736862, 21.578697>,  <31.666866, 35.504459, 21.637491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655365, 35.736862, 21.578697>,  <31.636196, 36.124199, 21.480705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655365, 35.736862, 21.578697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223244, 0.249440, 0.942307,
		-0.973584, 0.009532, 0.228131,
		0.047923, -0.968344, 0.244978,
		31.669743, 35.446358, 21.652191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213171, 35.947277, 21.961401>,  <31.636196, 36.124199, 21.480705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213171, 35.947277, 21.961401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499197, 35.668671, 21.985256>,  <31.670813, 35.501507, 21.999569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499197, 35.668671, 21.985256>,  <31.213171, 35.947277, 21.961401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499197, 35.668671, 21.985256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184884, 0.270698, 0.944744,
		-0.674169, -0.664525, 0.322340,
		0.715063, -0.696512, 0.059636,
		31.713717, 35.459717, 22.003147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234682, 35.667942, 22.701221>,  <31.213171, 35.947277, 21.961401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234682, 35.667942, 22.701221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591087, 35.590466, 22.536985>,  <31.804930, 35.543980, 22.438444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591087, 35.590466, 22.536985>,  <31.234682, 35.667942, 22.701221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591087, 35.590466, 22.536985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414147, -0.023678, 0.909902,
		-0.185960, -0.980777, 0.059118,
		0.891012, -0.193689, -0.410589,
		31.858391, 35.532360, 22.413809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459347, 35.077061, 23.046570>,  <31.234682, 35.667942, 22.701221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459347, 35.077061, 23.046570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798229, 35.239048, 22.909021>,  <32.001556, 35.336239, 22.826492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798229, 35.239048, 22.909021>,  <31.459347, 35.077061, 23.046570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798229, 35.239048, 22.909021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431223, -0.146120, 0.890334,
		0.310309, -0.902580, -0.298425,
		0.847204, 0.404967, -0.343871,
		32.052391, 35.360538, 22.805861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976608, 34.709114, 23.329176>,  <31.459347, 35.077061, 23.046570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976608, 34.709114, 23.329176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187721, 35.022259, 23.197374>,  <32.314388, 35.210144, 23.118294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187721, 35.022259, 23.197374>,  <31.976608, 34.709114, 23.329176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187721, 35.022259, 23.197374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596413, -0.065358, 0.800012,
		0.604764, -0.618752, -0.501405,
		0.527780, 0.782863, -0.329505,
		32.346054, 35.257118, 23.098522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640545, 34.576588, 23.509832>,  <31.976608, 34.709114, 23.329176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640545, 34.576588, 23.509832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566978, 34.968658, 23.480354>,  <32.522839, 35.203899, 23.462667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566978, 34.968658, 23.480354>,  <32.640545, 34.576588, 23.509832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566978, 34.968658, 23.480354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398516, 0.142891, 0.905962,
		0.898533, 0.137248, -0.416895,
		-0.183912, 0.980176, -0.073697,
		32.511806, 35.262711, 23.458244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163033, 34.935699, 23.782404>,  <32.640545, 34.576588, 23.509832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163033, 34.935699, 23.782404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885239, 35.223454, 23.787790>,  <32.718563, 35.396107, 23.791021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885239, 35.223454, 23.787790>,  <33.163033, 34.935699, 23.782404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885239, 35.223454, 23.787790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283679, 0.256567, 0.923959,
		0.661223, 0.645496, -0.382255,
		-0.694486, 0.719380, 0.013466,
		32.676891, 35.439266, 23.791830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483322, 35.536579, 24.146526>,  <33.163033, 34.935699, 23.782404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483322, 35.536579, 24.146526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093861, 35.627487, 24.153938>,  <32.860184, 35.682034, 24.158384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093861, 35.627487, 24.153938>,  <33.483322, 35.536579, 24.146526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093861, 35.627487, 24.153938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133067, 0.500321, 0.855553,
		0.185175, 0.835479, -0.517383,
		-0.973655, 0.227274, 0.018528,
		32.801765, 35.695671, 24.159496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423992, 36.315357, 24.402084>,  <33.483322, 35.536579, 24.146526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423992, 36.315357, 24.402084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068020, 36.145802, 24.469427>,  <32.854435, 36.044067, 24.509832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068020, 36.145802, 24.469427>,  <33.423992, 36.315357, 24.402084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068020, 36.145802, 24.469427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061445, 0.477184, 0.876653,
		-0.451937, 0.769816, -0.450707,
		-0.889931, -0.423885, 0.168356,
		32.801041, 36.018635, 24.519934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102169, 36.842903, 24.711338>,  <33.423992, 36.315357, 24.402084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102169, 36.842903, 24.711338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878635, 36.527325, 24.813528>,  <32.744514, 36.337978, 24.874842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878635, 36.527325, 24.813528>,  <33.102169, 36.842903, 24.711338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878635, 36.527325, 24.813528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097517, 0.368447, 0.924520,
		-0.823528, 0.491738, -0.282836,
		-0.558831, -0.788949, 0.255473,
		32.710987, 36.290642, 24.890169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551933, 37.128769, 25.215714>,  <33.102169, 36.842903, 24.711338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551933, 37.128769, 25.215714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550972, 36.730103, 25.248348>,  <32.550396, 36.490902, 25.267929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550972, 36.730103, 25.248348>,  <32.551933, 37.128769, 25.215714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550972, 36.730103, 25.248348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256821, 0.079465, 0.963187,
		-0.966456, -0.018642, -0.256155,
		-0.002400, -0.996663, 0.081588,
		32.550251, 36.431103, 25.272825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899595, 36.935024, 25.301878>,  <32.551933, 37.128769, 25.215714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899595, 36.935024, 25.301878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156670, 36.667480, 25.451317>,  <32.310913, 36.506954, 25.540981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156670, 36.667480, 25.451317>,  <31.899595, 36.935024, 25.301878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156670, 36.667480, 25.451317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237395, 0.289782, 0.927184,
		-0.728422, -0.684579, 0.027454,
		0.642686, -0.668864, 0.373599,
		32.349476, 36.466820, 25.563396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541357, 36.600044, 25.906713>,  <31.899595, 36.935024, 25.301878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541357, 36.600044, 25.906713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923761, 36.504345, 25.974602>,  <32.153202, 36.446926, 26.015335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923761, 36.504345, 25.974602>,  <31.541357, 36.600044, 25.906713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923761, 36.504345, 25.974602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172404, 0.009826, 0.984977,
		-0.237326, -0.970908, -0.031854,
		0.956009, -0.239252, 0.169721,
		32.210564, 36.432571, 26.025518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526381, 35.984844, 26.412140>,  <31.541357, 36.600044, 25.906713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526381, 35.984844, 26.412140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887465, 36.152370, 26.451538>,  <32.104115, 36.252888, 26.475178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887465, 36.152370, 26.451538>,  <31.526381, 35.984844, 26.412140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887465, 36.152370, 26.451538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099817, -0.018819, 0.994828,
		0.418507, -0.907874, 0.024818,
		0.902712, 0.418820, 0.098497,
		32.158279, 36.278015, 26.481087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787230, 35.577091, 26.942293>,  <31.526381, 35.984844, 26.412140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787230, 35.577091, 26.942293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015663, 35.905403, 26.936779>,  <32.152721, 36.102390, 26.933470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015663, 35.905403, 26.936779>,  <31.787230, 35.577091, 26.942293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015663, 35.905403, 26.936779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181642, -0.109968, 0.977197,
		0.800544, -0.560565, -0.211888,
		0.571083, 0.820777, -0.013788,
		32.186989, 36.151638, 26.932642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438507, 35.436543, 27.222435>,  <31.787230, 35.577091, 26.942293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438507, 35.436543, 27.222435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407555, 35.833591, 27.259779>,  <32.388981, 36.071819, 27.282187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407555, 35.833591, 27.259779>,  <32.438507, 35.436543, 27.222435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407555, 35.833591, 27.259779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317292, -0.064255, 0.946148,
		0.945165, 0.102840, -0.309978,
		-0.077384, 0.992620, 0.093362,
		32.384338, 36.131378, 27.287788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884468, 35.654190, 27.809299>,  <32.438507, 35.436543, 27.222435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884468, 35.654190, 27.809299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678005, 35.994453, 27.769365>,  <32.554127, 36.198612, 27.745405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678005, 35.994453, 27.769365>,  <32.884468, 35.654190, 27.809299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678005, 35.994453, 27.769365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021143, 0.129183, 0.991395,
		0.856233, 0.509604, -0.084664,
		-0.516156, 0.850656, -0.099836,
		32.523159, 36.249649, 27.739414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244480, 36.067482, 28.214571>,  <32.884468, 35.654190, 27.809299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244480, 36.067482, 28.214571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890465, 36.247990, 28.168842>,  <32.678055, 36.356293, 28.141405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890465, 36.247990, 28.168842>,  <33.244480, 36.067482, 28.214571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890465, 36.247990, 28.168842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036485, 0.177582, 0.983429,
		0.464089, 0.874542, -0.140702,
		-0.885037, 0.451265, -0.114322,
		32.624954, 36.383369, 28.134546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265625, 36.556023, 28.741360>,  <33.244480, 36.067482, 28.214571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265625, 36.556023, 28.741360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881683, 36.529129, 28.632435>,  <32.651318, 36.512993, 28.567080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881683, 36.529129, 28.632435>,  <33.265625, 36.556023, 28.741360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881683, 36.529129, 28.632435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279956, 0.289528, 0.915313,
		0.017303, 0.954805, -0.296728,
		-0.959857, -0.067233, -0.272313,
		32.593727, 36.508961, 28.550741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993736, 37.074654, 29.082722>,  <33.265625, 36.556023, 28.741360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993736, 37.074654, 29.082722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691196, 36.831558, 28.985899>,  <32.509674, 36.685699, 28.927805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691196, 36.831558, 28.985899>,  <32.993736, 37.074654, 29.082722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691196, 36.831558, 28.985899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505399, 0.307930, 0.806071,
		-0.415347, 0.732003, -0.540054,
		-0.756346, -0.607742, -0.242056,
		32.464294, 36.649235, 28.913282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368965, 37.566055, 29.023838>,  <32.993736, 37.074654, 29.082722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368965, 37.566055, 29.023838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302292, 37.177818, 29.093317>,  <32.262287, 36.944878, 29.135004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302292, 37.177818, 29.093317>,  <32.368965, 37.566055, 29.023838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302292, 37.177818, 29.093317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353447, 0.223272, 0.908419,
		-0.920485, 0.090025, -0.380268,
		-0.166684, -0.970590, 0.173700,
		32.252285, 36.886642, 29.145428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728439, 37.560127, 29.384907>,  <32.368965, 37.566055, 29.023838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728439, 37.560127, 29.384907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891865, 37.206791, 29.476803>,  <31.989920, 36.994789, 29.531940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891865, 37.206791, 29.476803>,  <31.728439, 37.560127, 29.384907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891865, 37.206791, 29.476803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327913, 0.092845, 0.940135,
		-0.851791, -0.459441, -0.251726,
		0.408565, -0.883343, 0.229741,
		32.014435, 36.941788, 29.545725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135214, 37.187714, 29.758688>,  <31.728439, 37.560127, 29.384907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135214, 37.187714, 29.758688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492750, 37.022224, 29.827829>,  <31.707272, 36.922932, 29.869314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492750, 37.022224, 29.827829>,  <31.135214, 37.187714, 29.758688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492750, 37.022224, 29.827829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160314, 0.065141, 0.984914,
		-0.418744, -0.908068, -0.008100,
		0.893842, -0.413725, 0.172853,
		31.760902, 36.898106, 29.879686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047333, 36.926067, 30.400961>,  <31.135214, 37.187714, 29.758688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047333, 36.926067, 30.400961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441685, 36.872265, 30.361065>,  <31.678297, 36.839985, 30.337128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441685, 36.872265, 30.361065>,  <31.047333, 36.926067, 30.400961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441685, 36.872265, 30.361065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123394, 0.180913, 0.975728,
		-0.113193, -0.974259, 0.194956,
		0.985881, -0.134502, -0.099739,
		31.737450, 36.831913, 30.331142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246716, 36.394211, 30.925713>,  <31.047333, 36.926067, 30.400961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246716, 36.394211, 30.925713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588095, 36.590034, 30.854206>,  <31.792923, 36.707527, 30.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588095, 36.590034, 30.854206>,  <31.246716, 36.394211, 30.925713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588095, 36.590034, 30.854206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269557, -0.121069, 0.955343,
		0.446053, -0.863525, -0.235290,
		0.853449, 0.489558, -0.178766,
		31.844130, 36.736900, 30.800575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676373, 35.928509, 31.160515>,  <31.246716, 36.394211, 30.925713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676373, 35.928509, 31.160515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843714, 36.291668, 31.149866>,  <31.944118, 36.509563, 31.143476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843714, 36.291668, 31.149866>,  <31.676373, 35.928509, 31.160515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843714, 36.291668, 31.149866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294569, -0.107894, 0.949520,
		0.859191, -0.405077, -0.312575,
		0.418354, 0.907894, -0.026621,
		31.969219, 36.564037, 31.141880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331100, 35.851311, 31.475353>,  <31.676373, 35.928509, 31.160515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331100, 35.851311, 31.475353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264172, 36.244270, 31.508577>,  <32.224014, 36.480045, 31.528511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264172, 36.244270, 31.508577>,  <32.331100, 35.851311, 31.475353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264172, 36.244270, 31.508577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264635, -0.036403, 0.963661,
		0.949722, 0.183222, -0.253886,
		-0.167322, 0.982397, 0.083060,
		32.213974, 36.538990, 31.533495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978729, 36.246944, 31.574251>,  <32.331100, 35.851311, 31.475353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978729, 36.246944, 31.574251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670853, 36.443459, 31.737326>,  <32.486126, 36.561367, 31.835171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670853, 36.443459, 31.737326>,  <32.978729, 36.246944, 31.574251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670853, 36.443459, 31.737326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391529, -0.141148, 0.909276,
		0.504259, 0.859485, -0.083712,
		-0.769693, 0.491287, 0.407688,
		32.439945, 36.590843, 31.859632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158493, 36.454174, 32.305950>,  <32.978729, 36.246944, 31.574251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158493, 36.454174, 32.305950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772694, 36.559307, 32.316166>,  <32.541214, 36.622387, 32.322296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772694, 36.559307, 32.316166>,  <33.158493, 36.454174, 32.305950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772694, 36.559307, 32.316166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024183, -0.008392, 0.999672,
		0.262963, 0.964804, 0.001738,
		-0.964503, 0.262835, 0.025538,
		32.483341, 36.638157, 32.323826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144909, 37.144543, 32.423275>,  <33.158493, 36.454174, 32.305950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144909, 37.144543, 32.423275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797020, 36.999847, 32.557575>,  <32.588287, 36.913029, 32.638157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797020, 36.999847, 32.557575>,  <33.144909, 37.144543, 32.423275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797020, 36.999847, 32.557575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309701, 0.129666, 0.941951,
		-0.384276, 0.923218, -0.000743,
		-0.869722, -0.361739, 0.335749,
		32.536102, 36.891327, 32.658298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101795, 37.541279, 31.712961>,  <33.144909, 37.144543, 32.423275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101795, 37.541279, 31.712961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451385, 37.645657, 31.876947>,  <33.661140, 37.708282, 31.975340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451385, 37.645657, 31.876947>,  <33.101795, 37.541279, 31.712961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451385, 37.645657, 31.876947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302903, 0.367177, -0.879449,
		-0.380020, 0.892798, 0.241862,
		0.873977, 0.260948, 0.409965,
		33.713577, 37.723942, 31.999937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285297, 38.186024, 31.489302>,  <33.101795, 37.541279, 31.712961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285297, 38.186024, 31.489302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635227, 38.017052, 31.584160>,  <33.845184, 37.915668, 31.641075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635227, 38.017052, 31.584160>,  <33.285297, 38.186024, 31.489302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635227, 38.017052, 31.584160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416906, 0.407178, -0.812647,
		0.246723, 0.809791, 0.532322,
		0.874824, -0.422427, 0.237146,
		33.897675, 37.890324, 31.655304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785641, 38.717049, 31.424435>,  <33.285297, 38.186024, 31.489302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785641, 38.717049, 31.424435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984516, 38.370708, 31.402143>,  <34.103840, 38.162903, 31.388769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984516, 38.370708, 31.402143>,  <33.785641, 38.717049, 31.424435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984516, 38.370708, 31.402143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499652, 0.338234, -0.797462,
		0.709332, 0.368644, 0.600790,
		0.497187, -0.865852, -0.055727,
		34.133671, 38.110954, 31.385426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441193, 38.957626, 31.111439>,  <33.785641, 38.717049, 31.424435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441193, 38.957626, 31.111439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490501, 38.565216, 31.051588>,  <34.520088, 38.329769, 31.015678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490501, 38.565216, 31.051588>,  <34.441193, 38.957626, 31.111439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490501, 38.565216, 31.051588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476330, 0.190767, -0.858323,
		0.870582, 0.034540, 0.490810,
		0.123276, -0.981028, -0.149626,
		34.527485, 38.270908, 31.006701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110703, 38.813889, 30.856256>,  <34.441193, 38.957626, 31.111439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110703, 38.813889, 30.856256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919750, 38.474342, 30.765457>,  <34.805180, 38.270615, 30.710978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919750, 38.474342, 30.765457>,  <35.110703, 38.813889, 30.856256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919750, 38.474342, 30.765457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403818, 0.017497, -0.914672,
		0.780408, -0.528314, 0.334436,
		-0.477382, -0.848869, -0.226997,
		34.776535, 38.219681, 30.697357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625427, 38.351562, 30.629372>,  <35.110703, 38.813889, 30.856256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625427, 38.351562, 30.629372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280159, 38.219315, 30.476727>,  <35.072998, 38.139965, 30.385139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280159, 38.219315, 30.476727>,  <35.625427, 38.351562, 30.629372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280159, 38.219315, 30.476727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416469, -0.038883, -0.908318,
		0.285470, -0.942962, 0.171256,
		-0.863169, -0.330621, -0.381615,
		35.021210, 38.120129, 30.362242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893059, 37.882999, 30.242889>,  <35.625427, 38.351562, 30.629372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893059, 37.882999, 30.242889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532978, 37.930477, 30.075300>,  <35.316929, 37.958965, 29.974747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532978, 37.930477, 30.075300>,  <35.893059, 37.882999, 30.242889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532978, 37.930477, 30.075300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434591, 0.183996, -0.881633,
		-0.027559, -0.975734, -0.217219,
		-0.900206, 0.118698, -0.418975,
		35.262917, 37.966087, 29.949608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019958, 37.409260, 29.729321>,  <35.893059, 37.882999, 30.242889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019958, 37.409260, 29.729321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720375, 37.664185, 29.656773>,  <35.540623, 37.817139, 29.613243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720375, 37.664185, 29.656773>,  <36.019958, 37.409260, 29.729321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720375, 37.664185, 29.656773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235329, -0.000039, -0.971916,
		-0.619418, -0.770608, -0.149948,
		-0.748960, 0.637309, -0.181370,
		35.495686, 37.855377, 29.602362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476635, 37.041737, 29.470917>,  <36.019958, 37.409260, 29.729321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476635, 37.041737, 29.470917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411121, 37.410675, 29.330940>,  <35.371811, 37.632038, 29.246954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411121, 37.410675, 29.330940>,  <35.476635, 37.041737, 29.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411121, 37.410675, 29.330940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013969, -0.352527, -0.935698,
		-0.986397, -0.158144, 0.044855,
		-0.163788, 0.922342, -0.349941,
		35.361984, 37.687378, 29.225958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882160, 37.035305, 28.896147>,  <35.476635, 37.041737, 29.470917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882160, 37.035305, 28.896147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091492, 37.371071, 28.837482>,  <35.217091, 37.572529, 28.802284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091492, 37.371071, 28.837482>,  <34.882160, 37.035305, 28.896147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091492, 37.371071, 28.837482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045926, -0.199643, -0.978792,
		-0.850892, 0.505495, -0.143030,
		0.523329, 0.839415, -0.146659,
		35.248489, 37.622894, 28.793486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642441, 37.335667, 28.204473>,  <34.882160, 37.035305, 28.896147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642441, 37.335667, 28.204473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996487, 37.504410, 28.283072>,  <35.208916, 37.605656, 28.330231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996487, 37.504410, 28.283072>,  <34.642441, 37.335667, 28.204473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996487, 37.504410, 28.283072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261443, -0.101451, -0.959872,
		-0.384993, 0.900969, -0.200087,
		0.885115, 0.421855, 0.196494,
		35.262020, 37.630966, 28.342020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725552, 37.927113, 27.811691>,  <34.642441, 37.335667, 28.204473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725552, 37.927113, 27.811691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095886, 37.802582, 27.897394>,  <35.318085, 37.727863, 27.948816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095886, 37.802582, 27.897394>,  <34.725552, 37.927113, 27.811691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095886, 37.802582, 27.897394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245868, 0.065626, -0.967079,
		0.287021, 0.948033, 0.137305,
		0.925834, -0.311331, 0.214255,
		35.373638, 37.709183, 27.961670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077827, 38.409889, 27.485647>,  <34.725552, 37.927113, 27.811691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077827, 38.409889, 27.485647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287971, 38.072487, 27.530352>,  <35.414059, 37.870045, 27.557175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287971, 38.072487, 27.530352>,  <35.077827, 38.409889, 27.485647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287971, 38.072487, 27.530352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199648, -0.005477, -0.979852,
		0.827127, 0.537086, 0.165528,
		0.525358, -0.843510, 0.111759,
		35.445580, 37.819435, 27.563879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491058, 38.465500, 26.926428>,  <35.077827, 38.409889, 27.485647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491058, 38.465500, 26.926428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530914, 38.087158, 27.049994>,  <35.554829, 37.860153, 27.124132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530914, 38.087158, 27.049994>,  <35.491058, 38.465500, 26.926428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530914, 38.087158, 27.049994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158555, -0.291398, -0.943370,
		0.982310, 0.142974, 0.120936,
		0.099636, -0.945857, 0.308912,
		35.560806, 37.803402, 27.142668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184372, 38.265816, 26.726217>,  <35.491058, 38.465500, 26.926428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184372, 38.265816, 26.726217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944450, 37.949600, 26.775665>,  <35.800499, 37.759872, 26.805334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944450, 37.949600, 26.775665>,  <36.184372, 38.265816, 26.726217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944450, 37.949600, 26.775665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208326, -0.303457, -0.929793,
		0.772550, -0.531942, 0.346705,
		-0.599805, -0.790539, 0.123619,
		35.764507, 37.712437, 26.812752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567112, 37.748894, 26.430643>,  <36.184372, 38.265816, 26.726217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567112, 37.748894, 26.430643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179909, 37.648849, 26.422586>,  <35.947586, 37.588821, 26.417753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179909, 37.648849, 26.422586>,  <36.567112, 37.748894, 26.430643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179909, 37.648849, 26.422586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013360, 0.131529, -0.991222,
		0.250567, -0.959241, -0.130662,
		-0.968007, -0.250113, -0.020141,
		35.889507, 37.573818, 26.416544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418865, 37.209511, 25.901718>,  <36.567112, 37.748894, 26.430643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418865, 37.209511, 25.901718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052273, 37.361984, 25.950329>,  <35.832317, 37.453468, 25.979494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052273, 37.361984, 25.950329>,  <36.418865, 37.209511, 25.901718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052273, 37.361984, 25.950329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182111, -0.126994, -0.975043,
		-0.356239, -0.915735, 0.185805,
		-0.916476, 0.381185, 0.121525,
		35.777328, 37.476341, 25.986786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151028, 36.793179, 25.415401>,  <36.418865, 37.209511, 25.901718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151028, 36.793179, 25.415401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880520, 37.082569, 25.470884>,  <35.718216, 37.256203, 25.504173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880520, 37.082569, 25.470884>,  <36.151028, 36.793179, 25.415401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880520, 37.082569, 25.470884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289730, -0.088106, -0.953045,
		-0.677283, -0.684705, 0.269196,
		-0.676272, 0.723475, 0.138707,
		35.677639, 37.299610, 25.512497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496208, 36.430504, 25.287357>,  <36.151028, 36.793179, 25.415401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496208, 36.430504, 25.287357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438828, 36.825134, 25.256144>,  <35.404400, 37.061913, 25.237415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438828, 36.825134, 25.256144>,  <35.496208, 36.430504, 25.287357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438828, 36.825134, 25.256144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317668, -0.120580, -0.940504,
		-0.937289, -0.110123, 0.330700,
		-0.143447, 0.986577, -0.078036,
		35.395794, 37.121109, 25.232733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812145, 36.505558, 25.028625>,  <35.496208, 36.430504, 25.287357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812145, 36.505558, 25.028625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034286, 36.818596, 24.916111>,  <35.167572, 37.006420, 24.848602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034286, 36.818596, 24.916111>,  <34.812145, 36.505558, 25.028625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034286, 36.818596, 24.916111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273627, -0.147448, -0.950467,
		-0.785310, 0.604812, 0.132254,
		0.555353, 0.782599, -0.281285,
		35.200893, 37.053375, 24.831726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262402, 36.879486, 24.728083>,  <34.812145, 36.505558, 25.028625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262402, 36.879486, 24.728083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619091, 36.966877, 24.569540>,  <34.833103, 37.019310, 24.474415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619091, 36.966877, 24.569540>,  <34.262402, 36.879486, 24.728083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619091, 36.966877, 24.569540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355440, -0.204061, -0.912152,
		-0.280161, 0.954269, -0.104312,
		0.891724, 0.218473, -0.396355,
		34.886608, 37.032417, 24.450634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212299, 37.417152, 24.095413>,  <34.262402, 36.879486, 24.728083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212299, 37.417152, 24.095413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532551, 37.179726, 24.062727>,  <34.724701, 37.037270, 24.043116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532551, 37.179726, 24.062727>,  <34.212299, 37.417152, 24.095413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532551, 37.179726, 24.062727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158542, -0.078349, -0.984239,
		0.577806, 0.800964, -0.156833,
		0.800627, -0.593564, -0.081716,
		34.772739, 37.001656, 24.038212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504128, 37.529263, 23.459757>,  <34.212299, 37.417152, 24.095413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504128, 37.529263, 23.459757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645039, 37.167023, 23.554234>,  <34.729584, 36.949677, 23.610920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645039, 37.167023, 23.554234>,  <34.504128, 37.529263, 23.459757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645039, 37.167023, 23.554234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238971, -0.331041, -0.912855,
		0.904872, 0.265136, -0.333030,
		0.352278, -0.905602, 0.236189,
		34.750721, 36.895344, 23.625090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744411, 37.348881, 22.774851>,  <34.504128, 37.529263, 23.459757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744411, 37.348881, 22.774851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768017, 37.016907, 22.996742>,  <34.782181, 36.817722, 23.129877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768017, 37.016907, 22.996742>,  <34.744411, 37.348881, 22.774851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768017, 37.016907, 22.996742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177760, -0.555554, -0.812257,
		0.982303, -0.050676, -0.180314,
		0.059012, -0.829935, 0.554730,
		34.785721, 36.767925, 23.163162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192856, 36.875717, 22.459181>,  <34.744411, 37.348881, 22.774851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192856, 36.875717, 22.459181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937885, 36.657066, 22.676394>,  <34.784904, 36.525875, 22.806721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937885, 36.657066, 22.676394>,  <35.192856, 36.875717, 22.459181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937885, 36.657066, 22.676394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138876, -0.611722, -0.778787,
		0.757894, -0.571833, 0.314013,
		-0.637425, -0.546629, 0.543034,
		34.746658, 36.493076, 22.839304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437397, 36.186077, 22.514320>,  <35.192856, 36.875717, 22.459181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437397, 36.186077, 22.514320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046379, 36.130245, 22.577482>,  <34.811768, 36.096748, 22.615379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046379, 36.130245, 22.577482>,  <35.437397, 36.186077, 22.514320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046379, 36.130245, 22.577482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051297, -0.569141, -0.820638,
		0.204412, -0.810307, 0.549198,
		-0.977540, -0.139576, 0.157906,
		34.753117, 36.088371, 22.624853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291725, 35.387409, 22.363125>,  <35.437397, 36.186077, 22.514320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291725, 35.387409, 22.363125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939957, 35.576126, 22.337715>,  <34.728897, 35.689358, 22.322470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939957, 35.576126, 22.337715>,  <35.291725, 35.387409, 22.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939957, 35.576126, 22.337715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174162, -0.443046, -0.879419,
		-0.443046, -0.762315, 0.471791,
		0.879419, -0.471791, 0.063523,
		34.676132, 35.717663, 22.318659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712055, 34.914124, 22.137535>,  <35.291725, 35.387409, 22.363125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712055, 34.914124, 22.137535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507439, 35.248287, 22.057121>,  <34.384670, 35.448788, 22.008873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507439, 35.248287, 22.057121>,  <34.712055, 34.914124, 22.137535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507439, 35.248287, 22.057121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185118, -0.335616, -0.923630,
		-0.839083, -0.435256, 0.326330,
		-0.511538, 0.835412, -0.201036,
		34.353977, 35.498909, 21.996811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000980, 34.687275, 21.863873>,  <34.712055, 34.914124, 22.137535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000980, 34.687275, 21.863873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094337, 35.054596, 21.735964>,  <34.150352, 35.274986, 21.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094337, 35.054596, 21.735964>,  <34.000980, 34.687275, 21.863873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094337, 35.054596, 21.735964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105685, -0.302951, -0.947128,
		-0.966622, 0.254847, 0.026344,
		0.233392, 0.918299, -0.319773,
		34.164356, 35.330086, 21.640032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453350, 34.814163, 21.430073>,  <34.000980, 34.687275, 21.863873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453350, 34.814163, 21.430073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769421, 35.035767, 21.325235>,  <33.959064, 35.168728, 21.262333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769421, 35.035767, 21.325235>,  <33.453350, 34.814163, 21.430073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769421, 35.035767, 21.325235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044472, -0.374686, -0.926085,
		-0.611264, 0.743426, -0.271430,
		0.790177, 0.554011, -0.262093,
		34.006474, 35.201969, 21.246607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209549, 35.192959, 20.737085>,  <33.453350, 34.814163, 21.430073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209549, 35.192959, 20.737085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607754, 35.213543, 20.768858>,  <33.846676, 35.225891, 20.787922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607754, 35.213543, 20.768858>,  <33.209549, 35.192959, 20.737085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607754, 35.213543, 20.768858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084539, -0.106194, -0.990745,
		-0.042546, 0.993013, -0.110068,
		0.995511, 0.051457, 0.079430,
		33.906406, 35.228981, 20.792686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388130, 35.750912, 20.198071>,  <33.209549, 35.192959, 20.737085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388130, 35.750912, 20.198071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715961, 35.535515, 20.276369>,  <33.912659, 35.406277, 20.323349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715961, 35.535515, 20.276369>,  <33.388130, 35.750912, 20.198071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715961, 35.535515, 20.276369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193808, -0.060954, -0.979144,
		0.539196, 0.840421, 0.054409,
		0.819577, -0.538495, 0.195747,
		33.961834, 35.373966, 20.335093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772057, 35.927368, 19.694998>,  <33.388130, 35.750912, 20.198071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772057, 35.927368, 19.694998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972290, 35.598003, 19.801888>,  <34.092430, 35.400383, 19.866022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972290, 35.598003, 19.801888>,  <33.772057, 35.927368, 19.694998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972290, 35.598003, 19.801888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159258, -0.215824, -0.963357,
		0.850913, 0.524798, 0.023097,
		0.500583, -0.823412, 0.267226,
		34.122463, 35.350979, 19.882055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485622, 35.947063, 19.373772>,  <33.772057, 35.927368, 19.694998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485622, 35.947063, 19.373772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395447, 35.562031, 19.433918>,  <34.341343, 35.331009, 19.470005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395447, 35.562031, 19.433918>,  <34.485622, 35.947063, 19.373772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395447, 35.562031, 19.433918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360969, -0.225879, -0.904809,
		0.904919, -0.149702, 0.398385,
		-0.225439, -0.962584, 0.150365,
		34.327816, 35.273254, 19.479027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018749, 35.637135, 19.049307>,  <34.485622, 35.947063, 19.373772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018749, 35.637135, 19.049307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743473, 35.351215, 19.099026>,  <34.578308, 35.179665, 19.128857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743473, 35.351215, 19.099026>,  <35.018749, 35.637135, 19.049307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743473, 35.351215, 19.099026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097096, -0.260515, -0.960575,
		0.719001, -0.648993, 0.248689,
		-0.688194, -0.714801, 0.124295,
		34.537014, 35.136776, 19.136314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355526, 34.963226, 18.807667>,  <35.018749, 35.637135, 19.049307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355526, 34.963226, 18.807667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957874, 34.928970, 18.781189>,  <34.719284, 34.908417, 18.765303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957874, 34.928970, 18.781189>,  <35.355526, 34.963226, 18.807667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957874, 34.928970, 18.781189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089186, -0.301552, -0.949269,
		0.061334, -0.949596, 0.307418,
		-0.994124, -0.085640, -0.066196,
		34.659637, 34.903278, 18.761330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241760, 34.276608, 18.581614>,  <35.355526, 34.963226, 18.807667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241760, 34.276608, 18.581614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877029, 34.430134, 18.523285>,  <34.658192, 34.522251, 18.488287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877029, 34.430134, 18.523285>,  <35.241760, 34.276608, 18.581614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877029, 34.430134, 18.523285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116925, -0.583191, -0.803876,
		-0.393582, -0.715942, 0.576645,
		-0.911823, 0.383815, -0.145822,
		34.603481, 34.545277, 18.479538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718456, 33.684708, 18.420092>,  <35.241760, 34.276608, 18.581614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718456, 33.684708, 18.420092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601791, 34.033958, 18.263847>,  <34.531792, 34.243511, 18.170101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601791, 34.033958, 18.263847>,  <34.718456, 33.684708, 18.420092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601791, 34.033958, 18.263847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214066, -0.457593, -0.863009,
		-0.932260, -0.168090, 0.320370,
		-0.291662, 0.873129, -0.390613,
		34.514294, 34.295898, 18.146664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999207, 32.926910, 18.576565>,  <34.718456, 33.684708, 18.420092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999207, 32.926910, 18.576565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390053, 32.852982, 18.534443>,  <35.624561, 32.808624, 18.509171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390053, 32.852982, 18.534443>,  <34.999207, 32.926910, 18.576565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390053, 32.852982, 18.534443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193486, 0.566565, 0.800978,
		-0.088373, -0.803023, 0.589359,
		0.977115, -0.184818, -0.105305,
		35.683186, 32.797535, 18.502851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196243, 32.611153, 19.134359>,  <34.999207, 32.926910, 18.576565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196243, 32.611153, 19.134359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547054, 32.751652, 19.003241>,  <35.757542, 32.835949, 18.924570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547054, 32.751652, 19.003241>,  <35.196243, 32.611153, 19.134359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547054, 32.751652, 19.003241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122292, 0.496601, 0.859321,
		0.464613, -0.793736, 0.392580,
		0.877029, 0.351242, -0.327795,
		35.810162, 32.857025, 18.904902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703743, 32.535786, 19.671692>,  <35.196243, 32.611153, 19.134359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703743, 32.535786, 19.671692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881390, 32.812801, 19.444309>,  <35.987980, 32.979012, 19.307880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881390, 32.812801, 19.444309>,  <35.703743, 32.535786, 19.671692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881390, 32.812801, 19.444309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250957, 0.512912, 0.820939,
		0.860104, -0.507254, 0.053996,
		0.444119, 0.692542, -0.568457,
		36.014626, 33.020565, 19.273771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377937, 32.610359, 19.937599>,  <35.703743, 32.535786, 19.671692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377937, 32.610359, 19.937599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336105, 32.938553, 19.712790>,  <36.311005, 33.135468, 19.577904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336105, 32.938553, 19.712790>,  <36.377937, 32.610359, 19.937599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336105, 32.938553, 19.712790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356245, 0.558529, 0.749090,
		0.928521, -0.121875, -0.350706,
		-0.104584, 0.820483, -0.562023,
		36.304729, 33.184696, 19.544182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946705, 32.904068, 19.901165>,  <36.377937, 32.610359, 19.937599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946705, 32.904068, 19.901165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733189, 33.227245, 19.801325>,  <36.605080, 33.421150, 19.741421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733189, 33.227245, 19.801325>,  <36.946705, 32.904068, 19.901165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733189, 33.227245, 19.801325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407151, 0.504260, 0.761544,
		0.741146, 0.304880, -0.598123,
		-0.533789, 0.807942, -0.249598,
		36.573051, 33.469627, 19.726446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397388, 33.403580, 20.042109>,  <36.946705, 32.904068, 19.901165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397388, 33.403580, 20.042109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037674, 33.577183, 20.063719>,  <36.821846, 33.681347, 20.076685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037674, 33.577183, 20.063719>,  <37.397388, 33.403580, 20.042109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037674, 33.577183, 20.063719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303783, 0.530975, 0.791063,
		0.314643, 0.727805, -0.609344,
		-0.899286, 0.434011, 0.054027,
		36.767887, 33.707386, 20.079927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593323, 34.113892, 20.208956>,  <37.397388, 33.403580, 20.042109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593323, 34.113892, 20.208956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202625, 34.092224, 20.291939>,  <36.968208, 34.079224, 20.341728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202625, 34.092224, 20.291939>,  <37.593323, 34.113892, 20.208956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202625, 34.092224, 20.291939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151762, 0.508829, 0.847385,
		-0.151462, 0.859162, -0.488774,
		-0.976743, -0.054170, 0.207456,
		36.909603, 34.075974, 20.354176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310059, 34.760406, 20.381413>,  <37.593323, 34.113892, 20.208956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310059, 34.760406, 20.381413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061642, 34.493103, 20.545231>,  <36.912590, 34.332722, 20.643522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061642, 34.493103, 20.545231>,  <37.310059, 34.760406, 20.381413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061642, 34.493103, 20.545231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219383, 0.353428, 0.909373,
		-0.752445, 0.654610, -0.072890,
		-0.621046, -0.668262, 0.409545,
		36.875328, 34.292625, 20.668095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906940, 35.127117, 20.827423>,  <37.310059, 34.760406, 20.381413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906940, 35.127117, 20.827423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899418, 34.746384, 20.949833>,  <36.894905, 34.517944, 21.023279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899418, 34.746384, 20.949833>,  <36.906940, 35.127117, 20.827423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899418, 34.746384, 20.949833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160759, 0.299216, 0.940546,
		-0.986814, 0.066889, 0.147388,
		-0.018811, -0.951838, 0.306024,
		36.893776, 34.460831, 21.041639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705101, 35.270264, 21.472214>,  <36.906940, 35.127117, 20.827423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705101, 35.270264, 21.472214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774796, 34.879238, 21.519566>,  <36.816612, 34.644623, 21.547977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774796, 34.879238, 21.519566>,  <36.705101, 35.270264, 21.472214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774796, 34.879238, 21.519566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234199, 0.157910, 0.959278,
		-0.956448, -0.139418, 0.256458,
		0.174238, -0.977562, 0.118381,
		36.827068, 34.585968, 21.555080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251896, 34.994682, 21.994541>,  <36.705101, 35.270264, 21.472214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251896, 34.994682, 21.994541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593353, 34.787712, 21.970642>,  <36.798225, 34.663528, 21.956303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593353, 34.787712, 21.970642>,  <36.251896, 34.994682, 21.994541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593353, 34.787712, 21.970642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183309, 0.191070, 0.964308,
		-0.487541, -0.834124, 0.257954,
		0.853640, -0.517425, -0.059748,
		36.849445, 34.632484, 21.952717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227287, 34.574760, 22.605061>,  <36.251896, 34.994682, 21.994541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227287, 34.574760, 22.605061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613663, 34.568089, 22.501766>,  <36.845490, 34.564087, 22.439789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613663, 34.568089, 22.501766>,  <36.227287, 34.574760, 22.605061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613663, 34.568089, 22.501766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258625, 0.028296, 0.965563,
		-0.008800, -0.999460, 0.031647,
		0.965938, -0.016681, -0.258236,
		36.903442, 34.563084, 22.424295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602737, 34.062038, 22.982365>,  <36.227287, 34.574760, 22.605061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602737, 34.062038, 22.982365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864380, 34.345440, 22.876410>,  <37.021366, 34.515480, 22.812838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864380, 34.345440, 22.876410>,  <36.602737, 34.062038, 22.982365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864380, 34.345440, 22.876410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339227, 0.038225, 0.939927,
		0.676068, -0.704671, -0.215341,
		0.654108, 0.708504, -0.264886,
		37.060612, 34.557991, 22.796944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329880, 33.873623, 23.275549>,  <36.602737, 34.062038, 22.982365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329880, 33.873623, 23.275549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335560, 34.272087, 23.241005>,  <37.338966, 34.511166, 23.220278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335560, 34.272087, 23.241005>,  <37.329880, 33.873623, 23.275549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335560, 34.272087, 23.241005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435904, 0.071563, 0.897144,
		0.899881, -0.050386, -0.433215,
		0.014201, 0.996163, -0.086361,
		37.339821, 34.570934, 23.215097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894657, 34.110916, 23.725098>,  <37.329880, 33.873623, 23.275549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894657, 34.110916, 23.725098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694042, 34.449482, 23.653498>,  <37.573673, 34.652622, 23.610538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694042, 34.449482, 23.653498>,  <37.894657, 34.110916, 23.725098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694042, 34.449482, 23.653498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021079, 0.218795, 0.975543,
		0.864879, 0.485498, -0.127576,
		-0.501537, 0.846416, -0.178998,
		37.543583, 34.703407, 23.599798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363182, 34.646469, 23.934254>,  <37.894657, 34.110916, 23.725098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363182, 34.646469, 23.934254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001057, 34.816341, 23.931358>,  <37.783779, 34.918262, 23.929621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001057, 34.816341, 23.931358>,  <38.363182, 34.646469, 23.934254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001057, 34.816341, 23.931358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138308, 0.310863, 0.940338,
		0.401590, 0.850302, -0.340166,
		-0.905316, 0.424678, -0.007236,
		37.729462, 34.943745, 23.929188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467144, 35.291309, 24.303553>,  <38.363182, 34.646469, 23.934254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467144, 35.291309, 24.303553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070492, 35.243744, 24.283421>,  <37.832500, 35.215202, 24.271341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070492, 35.243744, 24.283421>,  <38.467144, 35.291309, 24.303553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070492, 35.243744, 24.283421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080804, 0.267398, 0.960192,
		-0.100726, 0.956220, -0.274768,
		-0.991627, -0.118918, -0.050332,
		37.773003, 35.208069, 24.268320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197262, 35.973949, 24.481276>,  <38.467144, 35.291309, 24.303553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197262, 35.973949, 24.481276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933563, 35.680981, 24.549339>,  <37.775345, 35.505199, 24.590178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933563, 35.680981, 24.549339>,  <38.197262, 35.973949, 24.481276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933563, 35.680981, 24.549339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241583, 0.420606, 0.874487,
		-0.712066, 0.535392, -0.454223,
		-0.659242, -0.732425, 0.170158,
		37.735790, 35.461254, 24.600388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598434, 36.199482, 24.690100>,  <38.197262, 35.973949, 24.481276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598434, 36.199482, 24.690100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555237, 35.833729, 24.846170>,  <37.529320, 35.614277, 24.939812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555237, 35.833729, 24.846170>,  <37.598434, 36.199482, 24.690100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555237, 35.833729, 24.846170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085167, 0.399536, 0.912753,
		-0.990497, 0.065339, -0.121022,
		-0.107991, -0.914386, 0.390175,
		37.522839, 35.559414, 24.963223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059521, 36.248997, 25.188286>,  <37.598434, 36.199482, 24.690100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059521, 36.248997, 25.188286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268921, 35.926632, 25.298885>,  <37.394562, 35.733212, 25.365246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268921, 35.926632, 25.298885>,  <37.059521, 36.248997, 25.188286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268921, 35.926632, 25.298885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012940, 0.316964, 0.948349,
		-0.851929, -0.500036, 0.155501,
		0.523497, -0.805914, 0.276501,
		37.425972, 35.684856, 25.381836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661915, 36.009747, 25.767633>,  <37.059521, 36.248997, 25.188286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661915, 36.009747, 25.767633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024414, 35.846706, 25.812490>,  <37.241913, 35.748882, 25.839405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024414, 35.846706, 25.812490>,  <36.661915, 36.009747, 25.767633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024414, 35.846706, 25.812490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022326, 0.218758, 0.975524,
		-0.422158, -0.886569, 0.189149,
		0.906248, -0.407602, 0.112144,
		37.296288, 35.724426, 25.846134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595104, 35.666878, 26.354416>,  <36.661915, 36.009747, 25.767633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595104, 35.666878, 26.354416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990841, 35.713531, 26.319544>,  <37.228283, 35.741524, 26.298620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990841, 35.713531, 26.319544>,  <36.595104, 35.666878, 26.354416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990841, 35.713531, 26.319544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069968, 0.144294, 0.987058,
		0.127691, -0.982639, 0.134597,
		0.989343, 0.116621, -0.087179,
		37.287643, 35.748520, 26.293390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729057, 35.392643, 26.939884>,  <36.595104, 35.666878, 26.354416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729057, 35.392643, 26.939884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059200, 35.588017, 26.826593>,  <37.257286, 35.705238, 26.758619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059200, 35.588017, 26.826593>,  <36.729057, 35.392643, 26.939884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059200, 35.588017, 26.826593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076046, 0.400896, 0.912962,
		0.559463, -0.775060, 0.293741,
		0.825360, 0.488430, -0.283226,
		37.306808, 35.734547, 26.741625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199303, 35.298050, 27.493601>,  <36.729057, 35.392643, 26.939884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199303, 35.298050, 27.493601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333294, 35.607143, 27.277948>,  <37.413689, 35.792603, 27.148558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333294, 35.607143, 27.277948>,  <37.199303, 35.298050, 27.493601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333294, 35.607143, 27.277948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347616, 0.430471, 0.832981,
		0.875757, -0.466444, -0.124417,
		0.334982, 0.772738, -0.539131,
		37.433788, 35.838966, 27.116209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833641, 35.460537, 27.773823>,  <37.199303, 35.298050, 27.493601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833641, 35.460537, 27.773823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710449, 35.794640, 27.591614>,  <37.636536, 35.995102, 27.482288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710449, 35.794640, 27.591614>,  <37.833641, 35.460537, 27.773823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710449, 35.794640, 27.591614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425810, 0.549177, 0.719091,
		0.850784, 0.027501, -0.524795,
		-0.307981, 0.835254, -0.455521,
		37.618053, 36.045216, 27.454958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398094, 35.840809, 27.627399>,  <37.833641, 35.460537, 27.773823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398094, 35.840809, 27.627399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081329, 36.084312, 27.646482>,  <37.891270, 36.230415, 27.657932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081329, 36.084312, 27.646482>,  <38.398094, 35.840809, 27.627399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081329, 36.084312, 27.646482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455320, 0.536633, 0.710429,
		0.406881, 0.584323, -0.702150,
		-0.791917, 0.608763, 0.047708,
		37.843754, 36.266941, 27.660795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702503, 36.445778, 27.736650>,  <38.398094, 35.840809, 27.627399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702503, 36.445778, 27.736650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325436, 36.490166, 27.862543>,  <38.099194, 36.516796, 27.938078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325436, 36.490166, 27.862543>,  <38.702503, 36.445778, 27.736650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325436, 36.490166, 27.862543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325314, 0.515899, 0.792477,
		-0.074431, 0.849432, -0.522423,
		-0.942672, 0.110966, 0.314731,
		38.042633, 36.523457, 27.956963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649426, 37.083645, 27.924686>,  <38.702503, 36.445778, 27.736650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649426, 37.083645, 27.924686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338005, 36.922661, 28.117306>,  <38.151154, 36.826069, 28.232878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338005, 36.922661, 28.117306>,  <38.649426, 37.083645, 27.924686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338005, 36.922661, 28.117306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315339, 0.412540, 0.854618,
		-0.542608, 0.817212, -0.194271,
		-0.778549, -0.402461, 0.481546,
		38.104439, 36.801922, 28.261770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399708, 37.629635, 28.465643>,  <38.649426, 37.083645, 27.924686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399708, 37.629635, 28.465643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222958, 37.291122, 28.584667>,  <38.116905, 37.088013, 28.656082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222958, 37.291122, 28.584667>,  <38.399708, 37.629635, 28.465643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222958, 37.291122, 28.584667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225104, 0.216487, 0.949980,
		-0.868373, 0.486759, 0.094841,
		-0.441879, -0.846286, 0.297563,
		38.090393, 37.037235, 28.673937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876881, 37.739368, 29.094872>,  <38.399708, 37.629635, 28.465643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876881, 37.739368, 29.094872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975124, 37.353123, 29.128954>,  <38.034069, 37.121376, 29.149403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975124, 37.353123, 29.128954>,  <37.876881, 37.739368, 29.094872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975124, 37.353123, 29.128954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161646, 0.127464, 0.978583,
		-0.955797, -0.226575, 0.187394,
		0.245608, -0.965617, 0.085205,
		38.048805, 37.063438, 29.154516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721828, 37.508118, 29.880005>,  <37.876881, 37.739368, 29.094872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721828, 37.508118, 29.880005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978725, 37.236713, 29.737368>,  <38.132862, 37.073872, 29.651785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978725, 37.236713, 29.737368>,  <37.721828, 37.508118, 29.880005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978725, 37.236713, 29.737368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385382, -0.116307, 0.915398,
		-0.662577, -0.725329, 0.186788,
		0.642240, -0.678506, -0.356591,
		38.171398, 37.033161, 29.630390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540909, 36.894447, 30.193981>,  <37.721828, 37.508118, 29.880005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540909, 36.894447, 30.193981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926605, 36.850159, 30.097670>,  <38.158024, 36.823586, 30.039883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926605, 36.850159, 30.097670>,  <37.540909, 36.894447, 30.193981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926605, 36.850159, 30.097670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218984, -0.178833, 0.959200,
		-0.149259, -0.977630, -0.148193,
		0.964245, -0.110717, -0.240777,
		38.215878, 36.816940, 30.025436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755630, 36.277439, 30.462519>,  <37.540909, 36.894447, 30.193981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755630, 36.277439, 30.462519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094650, 36.485081, 30.418365>,  <38.298061, 36.609665, 30.391874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094650, 36.485081, 30.418365>,  <37.755630, 36.277439, 30.462519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094650, 36.485081, 30.418365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198667, -0.117467, 0.973002,
		0.492124, -0.846600, -0.202689,
		0.847553, 0.519105, -0.110383,
		38.348915, 36.640812, 30.385250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303936, 35.805244, 30.707035>,  <37.755630, 36.277439, 30.462519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303936, 35.805244, 30.707035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455933, 36.175236, 30.708832>,  <38.547131, 36.397232, 30.709909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455933, 36.175236, 30.708832>,  <38.303936, 35.805244, 30.707035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455933, 36.175236, 30.708832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414038, -0.174431, 0.893390,
		0.827151, -0.337620, -0.449259,
		0.379991, 0.924979, 0.004494,
		38.569931, 36.452728, 30.710180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920341, 35.764416, 30.975538>,  <38.303936, 35.805244, 30.707035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920341, 35.764416, 30.975538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869915, 36.156796, 31.034666>,  <38.839661, 36.392223, 31.070143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869915, 36.156796, 31.034666>,  <38.920341, 35.764416, 30.975538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869915, 36.156796, 31.034666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487197, -0.068581, 0.870595,
		0.864145, 0.181767, -0.469269,
		-0.126063, 0.980947, 0.147820,
		38.832096, 36.451080, 31.079012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603210, 36.050076, 31.377516>,  <38.920341, 35.764416, 30.975538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603210, 36.050076, 31.377516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320332, 36.327724, 31.431284>,  <39.150604, 36.494312, 31.463545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320332, 36.327724, 31.431284>,  <39.603210, 36.050076, 31.377516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320332, 36.327724, 31.431284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423272, 0.263364, 0.866880,
		0.566319, 0.669950, -0.480052,
		-0.707194, 0.694123, 0.134423,
		39.108173, 36.535961, 31.471611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969486, 36.744415, 31.472530>,  <39.603210, 36.050076, 31.377516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969486, 36.744415, 31.472530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600250, 36.790012, 31.619452>,  <39.378708, 36.817371, 31.707603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600250, 36.790012, 31.619452>,  <39.969486, 36.744415, 31.472530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600250, 36.790012, 31.619452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384223, 0.314732, 0.867938,
		-0.016660, 0.942310, -0.334326,
		-0.923090, 0.113996, 0.367301,
		39.323322, 36.824211, 31.729641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911232, 37.461578, 31.789734>,  <39.969486, 36.744415, 31.472530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911232, 37.461578, 31.789734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657127, 37.190952, 31.938700>,  <39.504665, 37.028576, 32.028080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657127, 37.190952, 31.938700>,  <39.911232, 37.461578, 31.789734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657127, 37.190952, 31.938700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255172, 0.271255, 0.928067,
		-0.728920, 0.684598, 0.000323,
		-0.635265, -0.676569, 0.372414,
		39.466549, 36.987980, 32.050423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701565, 37.830254, 32.291088>,  <39.911232, 37.461578, 31.789734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701565, 37.830254, 32.291088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583145, 37.458687, 32.380047>,  <39.512093, 37.235744, 32.433422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583145, 37.458687, 32.380047>,  <39.701565, 37.830254, 32.291088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583145, 37.458687, 32.380047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239566, 0.153179, 0.958720,
		-0.924641, 0.337111, 0.177189,
		-0.296054, -0.928920, 0.222396,
		39.494328, 37.180012, 32.446766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398994, 37.881702, 33.029182>,  <39.701565, 37.830254, 32.291088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398994, 37.881702, 33.029182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503010, 37.501019, 32.963902>,  <39.565418, 37.272610, 32.924732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503010, 37.501019, 32.963902>,  <39.398994, 37.881702, 33.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503010, 37.501019, 32.963902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411247, -0.043763, 0.910473,
		-0.873644, -0.303878, 0.380005,
		0.260042, -0.951705, -0.163202,
		39.581024, 37.215508, 32.914940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102276, 37.499886, 33.539169>,  <39.398994, 37.881702, 33.029182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102276, 37.499886, 33.539169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414364, 37.286438, 33.408619>,  <39.601616, 37.158371, 33.330288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414364, 37.286438, 33.408619>,  <39.102276, 37.499886, 33.539169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414364, 37.286438, 33.408619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313657, -0.117675, 0.942216,
		-0.541187, -0.837500, 0.075560,
		0.780215, -0.533615, -0.326373,
		39.648430, 37.126354, 33.310707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204807, 36.909901, 34.030174>,  <39.102276, 37.499886, 33.539169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204807, 36.909901, 34.030174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557652, 36.975426, 33.853516>,  <39.769356, 37.014740, 33.747520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557652, 36.975426, 33.853516>,  <39.204807, 36.909901, 34.030174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557652, 36.975426, 33.853516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454297, -0.048076, 0.889552,
		0.124491, -0.985318, -0.116829,
		0.882109, 0.163817, -0.441642,
		39.822285, 37.024570, 33.721024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689423, 36.416866, 34.390190>,  <39.204807, 36.909901, 34.030174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689423, 36.416866, 34.390190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922115, 36.690338, 34.213932>,  <40.061729, 36.854424, 34.108177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922115, 36.690338, 34.213932>,  <39.689423, 36.416866, 34.390190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922115, 36.690338, 34.213932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567008, 0.047553, 0.822338,
		0.583171, -0.728230, -0.359990,
		0.581733, 0.683681, -0.440644,
		40.096634, 36.895443, 34.081738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299854, 36.262218, 34.635887>,  <39.689423, 36.416866, 34.390190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299854, 36.262218, 34.635887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357548, 36.631096, 34.492359>,  <40.392162, 36.852425, 34.406242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357548, 36.631096, 34.492359>,  <40.299854, 36.262218, 34.635887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357548, 36.631096, 34.492359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641924, 0.188767, 0.743170,
		0.753081, -0.337525, -0.564753,
		0.144232, 0.922195, -0.358822,
		40.400818, 36.907753, 34.384712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052505, 36.279247, 34.577850>,  <40.299854, 36.262218, 34.635887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052505, 36.279247, 34.577850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913673, 36.653980, 34.595173>,  <40.830376, 36.878822, 34.605568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913673, 36.653980, 34.595173>,  <41.052505, 36.279247, 34.577850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913673, 36.653980, 34.595173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747551, 0.248475, 0.615977,
		0.566307, 0.246170, -0.786573,
		-0.347079, 0.936835, 0.043311,
		40.809551, 36.935032, 34.608166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618790, 36.655209, 34.263416>,  <41.052505, 36.279247, 34.577850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618790, 36.655209, 34.263416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380753, 36.882610, 34.490631>,  <41.237930, 37.019051, 34.626961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380753, 36.882610, 34.490631>,  <41.618790, 36.655209, 34.263416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380753, 36.882610, 34.490631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724752, 0.074204, 0.685003,
		0.347280, 0.819324, -0.456186,
		-0.595089, 0.568509, 0.568037,
		41.202225, 37.053162, 34.661041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024281, 37.280682, 34.484844>,  <41.618790, 36.655209, 34.263416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024281, 37.280682, 34.484844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723335, 37.268967, 34.748081>,  <41.542767, 37.261936, 34.906025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723335, 37.268967, 34.748081>,  <42.024281, 37.280682, 34.484844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723335, 37.268967, 34.748081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644974, 0.170448, 0.744954,
		-0.133988, 0.984931, -0.109350,
		-0.752367, -0.029287, 0.658093,
		41.497623, 37.260181, 34.945511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279732, 37.722370, 34.963078>,  <42.024281, 37.280682, 34.484844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279732, 37.722370, 34.963078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984482, 37.540665, 35.162601>,  <41.807331, 37.431641, 35.282318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984482, 37.540665, 35.162601>,  <42.279732, 37.722370, 34.963078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984482, 37.540665, 35.162601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471548, 0.181404, 0.862980,
		-0.482511, 0.872200, 0.080310,
		-0.738123, -0.454268, 0.498814,
		41.763046, 37.404385, 35.312244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025913, 38.102776, 35.761368>,  <42.279732, 37.722370, 34.963078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025913, 38.102776, 35.761368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882610, 37.731258, 35.799320>,  <41.796627, 37.508350, 35.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882610, 37.731258, 35.799320>,  <42.025913, 38.102776, 35.761368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882610, 37.731258, 35.799320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329955, -0.030887, 0.943491,
		-0.873373, 0.369322, 0.317524,
		-0.358259, -0.928788, 0.094884,
		41.775131, 37.452621, 35.827785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920757, 38.058342, 36.419720>,  <42.025913, 38.102776, 35.761368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920757, 38.058342, 36.419720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857658, 37.678951, 36.309807>,  <41.819798, 37.451317, 36.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857658, 37.678951, 36.309807>,  <41.920757, 38.058342, 36.419720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857658, 37.678951, 36.309807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183064, -0.301536, 0.935715,
		-0.970362, 0.097303, 0.221199,
		-0.157747, -0.948477, -0.274787,
		41.810333, 37.394409, 36.227371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530209, 37.694550, 37.019375>,  <41.920757, 38.058342, 36.419720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530209, 37.694550, 37.019375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715149, 37.415310, 36.800694>,  <41.826115, 37.247765, 36.669487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715149, 37.415310, 36.800694>,  <41.530209, 37.694550, 37.019375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715149, 37.415310, 36.800694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268557, -0.477347, 0.836670,
		-0.845048, -0.533658, -0.033223,
		0.462354, -0.698104, -0.546699,
		41.853855, 37.205879, 36.636684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243874, 36.959530, 37.211025>,  <41.530209, 37.694550, 37.019375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243874, 36.959530, 37.211025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618225, 36.943172, 37.071045>,  <41.842834, 36.933357, 36.987057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618225, 36.943172, 37.071045>,  <41.243874, 36.959530, 37.211025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618225, 36.943172, 37.071045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275784, -0.533100, 0.799842,
		-0.219268, -0.845063, -0.487637,
		0.935876, -0.040897, -0.349947,
		41.898987, 36.930904, 36.966061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608021, 36.352306, 37.496796>,  <41.243874, 36.959530, 37.211025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608021, 36.352306, 37.496796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929939, 36.546726, 37.360527>,  <42.123093, 36.663376, 37.278767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929939, 36.546726, 37.360527>,  <41.608021, 36.352306, 37.496796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929939, 36.546726, 37.360527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553757, -0.408249, 0.725731,
		0.213662, -0.772716, -0.597711,
		0.804799, 0.486048, -0.340669,
		42.171379, 36.692539, 37.258327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121258, 35.821987, 37.560028>,  <41.608021, 36.352306, 37.496796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121258, 35.821987, 37.560028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264454, 36.193962, 37.593651>,  <42.350372, 36.417145, 37.613823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264454, 36.193962, 37.593651>,  <42.121258, 35.821987, 37.560028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264454, 36.193962, 37.593651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455409, -0.252484, 0.853729,
		0.815133, -0.267351, -0.513888,
		0.357994, 0.929933, 0.084054,
		42.371853, 36.472942, 37.618866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799965, 35.675259, 37.837132>,  <42.121258, 35.821987, 37.560028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799965, 35.675259, 37.837132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726147, 36.047859, 37.962505>,  <42.681854, 36.271420, 38.037731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726147, 36.047859, 37.962505>,  <42.799965, 35.675259, 37.837132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726147, 36.047859, 37.962505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395091, -0.221696, 0.891490,
		0.899914, 0.288359, -0.327115,
		-0.184549, 0.931504, 0.313436,
		42.670780, 36.327309, 38.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328758, 35.792480, 38.291531>,  <42.799965, 35.675259, 37.837132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328758, 35.792480, 38.291531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103626, 36.093548, 38.428181>,  <42.968548, 36.274189, 38.510170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103626, 36.093548, 38.428181>,  <43.328758, 35.792480, 38.291531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103626, 36.093548, 38.428181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293043, -0.204756, 0.933917,
		0.772881, 0.625749, -0.105322,
		-0.562832, 0.752671, 0.341624,
		42.934776, 36.319347, 38.530666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667061, 36.335735, 38.847866>,  <43.328758, 35.792480, 38.291531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667061, 36.335735, 38.847866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269054, 36.342209, 38.887241>,  <43.030251, 36.346092, 38.910866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269054, 36.342209, 38.887241>,  <43.667061, 36.335735, 38.847866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269054, 36.342209, 38.887241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093542, -0.191426, 0.977039,
		0.034658, 0.981374, 0.188957,
		-0.995012, 0.016187, 0.098434,
		42.970551, 36.347065, 38.916771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505302, 36.901615, 39.346039>,  <43.667061, 36.335735, 38.847866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505302, 36.901615, 39.346039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177170, 36.673531, 39.363503>,  <42.980289, 36.536678, 39.373981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177170, 36.673531, 39.363503>,  <43.505302, 36.901615, 39.346039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177170, 36.673531, 39.363503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121701, -0.099473, 0.987570,
		-0.558783, 0.815452, 0.150997,
		-0.820336, -0.570213, 0.043658,
		42.931068, 36.502468, 39.376598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193283, 37.039402, 40.033722>,  <43.505302, 36.901615, 39.346039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193283, 37.039402, 40.033722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024208, 36.694988, 39.920616>,  <42.922764, 36.488338, 39.852753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024208, 36.694988, 39.920616>,  <43.193283, 37.039402, 40.033722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024208, 36.694988, 39.920616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053488, -0.335167, 0.940639,
		-0.904696, 0.382471, 0.187726,
		-0.422686, -0.861034, -0.282766,
		42.897404, 36.436680, 39.835785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636589, 37.000698, 40.454498>,  <43.193283, 37.039402, 40.033722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636589, 37.000698, 40.454498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821789, 36.661690, 40.350700>,  <42.932907, 36.458282, 40.288422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821789, 36.661690, 40.350700>,  <42.636589, 37.000698, 40.454498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821789, 36.661690, 40.350700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282080, -0.136648, 0.949609,
		-0.840277, -0.512863, 0.175802,
		0.462996, -0.847525, -0.259491,
		42.960686, 36.407433, 40.272854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359802, 36.504631, 40.911835>,  <42.636589, 37.000698, 40.454498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359802, 36.504631, 40.911835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719524, 36.382454, 40.786640>,  <42.935356, 36.309147, 40.711521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719524, 36.382454, 40.786640>,  <42.359802, 36.504631, 40.911835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719524, 36.382454, 40.786640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237290, -0.260379, 0.935893,
		-0.367358, -0.915919, -0.161680,
		0.899301, -0.305443, -0.312991,
		42.989315, 36.290821, 40.692741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546562, 35.794735, 41.110897>,  <42.359802, 36.504631, 40.911835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546562, 35.794735, 41.110897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873089, 36.024021, 41.082458>,  <43.069004, 36.161594, 41.065395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873089, 36.024021, 41.082458>,  <42.546562, 35.794735, 41.110897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873089, 36.024021, 41.082458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192377, -0.153748, 0.969202,
		0.544633, -0.804849, -0.235781,
		0.816312, 0.573218, -0.071098,
		43.117981, 36.195988, 41.061131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185173, 35.283005, 41.051586>,  <42.546562, 35.794735, 41.110897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185173, 35.283005, 41.051586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273800, 35.057411, 40.733383>,  <43.326977, 34.922054, 40.542461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273800, 35.057411, 40.733383>,  <43.185173, 35.283005, 41.051586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273800, 35.057411, 40.733383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411692, 0.685411, -0.600602,
		0.883978, 0.460578, -0.080322,
		0.221570, -0.563986, -0.795504,
		43.340271, 34.888214, 40.494732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520924, 35.775597, 40.543068>,  <43.185173, 35.283005, 41.051586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520924, 35.775597, 40.543068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294422, 35.465714, 40.430508>,  <43.158520, 35.279785, 40.362972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294422, 35.465714, 40.430508>,  <43.520924, 35.775597, 40.543068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294422, 35.465714, 40.430508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573458, 0.615529, -0.540620,
		0.592027, -0.144762, -0.792810,
		-0.566259, -0.774705, -0.281395,
		43.124546, 35.233303, 40.346088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508450, 35.624119, 39.834568>,  <43.520924, 35.775597, 40.543068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508450, 35.624119, 39.834568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153873, 35.504345, 39.975739>,  <42.941128, 35.432480, 40.060440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153873, 35.504345, 39.975739>,  <43.508450, 35.624119, 39.834568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153873, 35.504345, 39.975739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462826, 0.568243, -0.680361,
		0.003179, -0.766444, -0.642303,
		-0.886443, -0.299437, 0.352924,
		42.887939, 35.414513, 40.081615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929459, 35.296398, 39.400372>,  <43.508450, 35.624119, 39.834568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929459, 35.296398, 39.400372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758862, 35.516392, 39.687599>,  <42.656506, 35.648388, 39.859936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758862, 35.516392, 39.687599>,  <42.929459, 35.296398, 39.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758862, 35.516392, 39.687599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390024, 0.604463, -0.694626,
		-0.816081, -0.576314, -0.043288,
		-0.426488, 0.549988, 0.718067,
		42.630917, 35.681389, 39.903019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183201, 35.422791, 39.374817>,  <42.929459, 35.296398, 39.400372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183201, 35.422791, 39.374817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354305, 35.739799, 39.548679>,  <42.456970, 35.930004, 39.652996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354305, 35.739799, 39.548679>,  <42.183201, 35.422791, 39.374817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354305, 35.739799, 39.548679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293498, 0.576598, -0.762492,
		-0.854913, 0.198598, 0.479253,
		0.427765, 0.792524, 0.434652,
		42.482635, 35.977558, 39.679073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734924, 35.899170, 39.363506>,  <42.183201, 35.422791, 39.374817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734924, 35.899170, 39.363506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091095, 36.080315, 39.381626>,  <42.304798, 36.189003, 39.392498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091095, 36.080315, 39.381626>,  <41.734924, 35.899170, 39.363506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091095, 36.080315, 39.381626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151564, 0.388914, -0.908721,
		-0.429143, 0.802286, 0.414938,
		0.890429, 0.452861, 0.045302,
		42.358223, 36.216171, 39.395218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676662, 36.518391, 39.150322>,  <41.734924, 35.899170, 39.363506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676662, 36.518391, 39.150322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064400, 36.475208, 39.062031>,  <42.297043, 36.449299, 39.009056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064400, 36.475208, 39.062031>,  <41.676662, 36.518391, 39.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064400, 36.475208, 39.062031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185636, 0.266774, -0.945712,
		0.160984, 0.957693, 0.238554,
		0.969342, -0.107960, -0.220729,
		42.355202, 36.442822, 38.995811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035973, 37.177063, 38.848209>,  <41.676662, 36.518391, 39.150322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035973, 37.177063, 38.848209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259941, 36.866497, 38.732513>,  <42.394321, 36.680157, 38.663097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259941, 36.866497, 38.732513>,  <42.035973, 37.177063, 38.848209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259941, 36.866497, 38.732513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007178, 0.353627, -0.935359,
		0.828512, 0.521654, 0.203578,
		0.559925, -0.776418, -0.289240,
		42.427917, 36.633572, 38.645741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530815, 37.476185, 38.500591>,  <42.035973, 37.177063, 38.848209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530815, 37.476185, 38.500591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506702, 37.107395, 38.347576>,  <42.492233, 36.886124, 38.255768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506702, 37.107395, 38.347576>,  <42.530815, 37.476185, 38.500591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506702, 37.107395, 38.347576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227358, 0.360481, -0.904633,
		0.971943, -0.141507, 0.187887,
		-0.060282, -0.921970, -0.382540,
		42.488617, 36.830803, 38.232815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030476, 37.490768, 38.041824>,  <42.530815, 37.476185, 38.500591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030476, 37.490768, 38.041824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766544, 37.212120, 37.929146>,  <42.608185, 37.044930, 37.861538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766544, 37.212120, 37.929146>,  <43.030476, 37.490768, 38.041824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766544, 37.212120, 37.929146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062860, 0.322399, -0.944514,
		0.748786, -0.640921, -0.168937,
		-0.659824, -0.696620, -0.281696,
		42.568596, 37.003136, 37.844639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008617, 37.633839, 37.379662>,  <43.030476, 37.490768, 38.041824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008617, 37.633839, 37.379662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831772, 37.277290, 37.419670>,  <42.725666, 37.063362, 37.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831772, 37.277290, 37.419670>,  <43.008617, 37.633839, 37.379662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831772, 37.277290, 37.419670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292649, 0.037939, -0.955467,
		0.847877, -0.451691, -0.277631,
		-0.442109, -0.891367, 0.100019,
		42.699139, 37.009880, 37.449677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231220, 37.239388, 36.839832>,  <43.008617, 37.633839, 37.379662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231220, 37.239388, 36.839832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891914, 37.064964, 36.960033>,  <42.688332, 36.960312, 37.032154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891914, 37.064964, 36.960033>,  <43.231220, 37.239388, 36.839832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891914, 37.064964, 36.960033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338758, 0.010645, -0.940813,
		0.407051, -0.899855, -0.156748,
		-0.848264, -0.436059, 0.300500,
		42.637436, 36.934147, 37.050182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097893, 36.786301, 36.335308>,  <43.231220, 37.239388, 36.839832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097893, 36.786301, 36.335308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752560, 36.843151, 36.528988>,  <42.545361, 36.877262, 36.645195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752560, 36.843151, 36.528988>,  <43.097893, 36.786301, 36.335308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752560, 36.843151, 36.528988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494719, -0.049170, -0.867661,
		-0.099508, -0.988627, 0.112762,
		-0.863337, 0.142125, 0.484200,
		42.493557, 36.885792, 36.674248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608013, 36.328152, 36.037861>,  <43.097893, 36.786301, 36.335308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608013, 36.328152, 36.037861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386204, 36.600746, 36.228893>,  <42.253117, 36.764301, 36.343513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386204, 36.600746, 36.228893>,  <42.608013, 36.328152, 36.037861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386204, 36.600746, 36.228893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622471, 0.041205, -0.781557,
		-0.552298, -0.730671, 0.401356,
		-0.554524, 0.681485, 0.477579,
		42.219845, 36.805191, 36.372166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038803, 36.222622, 35.673473>,  <42.608013, 36.328152, 36.037861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038803, 36.222622, 35.673473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961464, 36.543152, 35.899925>,  <41.915058, 36.735470, 36.035797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961464, 36.543152, 35.899925>,  <42.038803, 36.222622, 35.673473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961464, 36.543152, 35.899925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597672, 0.361402, -0.715665,
		-0.778077, -0.476733, 0.409050,
		-0.193350, 0.801320, 0.566128,
		41.903458, 36.783546, 36.069763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348431, 36.283821, 35.734291>,  <42.038803, 36.222622, 35.673473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348431, 36.283821, 35.734291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506420, 36.647514, 35.786903>,  <41.601212, 36.865730, 35.818470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506420, 36.647514, 35.786903>,  <41.348431, 36.283821, 35.734291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506420, 36.647514, 35.786903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647842, 0.377170, -0.661849,
		-0.651382, 0.176199, 0.738007,
		0.394971, 0.909229, 0.131533,
		41.624912, 36.920284, 35.826363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732098, 36.719337, 35.822235>,  <41.348431, 36.283821, 35.734291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732098, 36.719337, 35.822235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030293, 36.957565, 35.702530>,  <41.209209, 37.100502, 35.630707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030293, 36.957565, 35.702530>,  <40.732098, 36.719337, 35.822235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030293, 36.957565, 35.702530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560795, 0.317800, -0.764534,
		-0.360225, 0.737771, 0.570904,
		0.745484, 0.595565, -0.299258,
		41.253937, 37.136234, 35.612751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454758, 37.372444, 35.732586>,  <40.732098, 36.719337, 35.822235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454758, 37.372444, 35.732586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786846, 37.360367, 35.509941>,  <40.986099, 37.353119, 35.376354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786846, 37.360367, 35.509941>,  <40.454758, 37.372444, 35.732586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786846, 37.360367, 35.509941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539764, 0.205880, -0.816253,
		0.139245, 0.978111, 0.154627,
		0.830220, -0.030197, -0.556617,
		41.035912, 37.351307, 35.342957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553108, 37.966553, 35.331020>,  <40.454758, 37.372444, 35.732586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553108, 37.966553, 35.331020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746941, 37.675056, 35.137478>,  <40.863239, 37.500160, 35.021351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746941, 37.675056, 35.137478>,  <40.553108, 37.966553, 35.331020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746941, 37.675056, 35.137478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513907, 0.210444, -0.831633,
		0.707868, 0.651654, -0.272526,
		0.484585, -0.728739, -0.483856,
		40.892315, 37.456436, 34.992321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534611, 38.209187, 34.697998>,  <40.553108, 37.966553, 35.331020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534611, 38.209187, 34.697998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635189, 37.823994, 34.659145>,  <40.695538, 37.592876, 34.635834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635189, 37.823994, 34.659145>,  <40.534611, 38.209187, 34.697998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635189, 37.823994, 34.659145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440933, -0.024633, -0.897202,
		0.861598, 0.268430, -0.430806,
		0.251447, -0.962984, -0.097136,
		40.710625, 37.535099, 34.630005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548557, 38.088711, 33.952747>,  <40.534611, 38.209187, 34.697998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548557, 38.088711, 33.952747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600060, 37.714462, 34.084229>,  <40.630959, 37.489914, 34.163116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600060, 37.714462, 34.084229>,  <40.548557, 38.088711, 33.952747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600060, 37.714462, 34.084229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433623, -0.351207, -0.829834,
		0.891849, -0.035690, -0.450923,
		0.128751, -0.935617, 0.328700,
		40.638683, 37.433777, 34.182838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917625, 37.692886, 33.412636>,  <40.548557, 38.088711, 33.952747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917625, 37.692886, 33.412636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682922, 37.430553, 33.602627>,  <40.542103, 37.273155, 33.716621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682922, 37.430553, 33.602627>,  <40.917625, 37.692886, 33.412636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682922, 37.430553, 33.602627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363034, -0.311261, -0.878250,
		0.723827, -0.687749, -0.055456,
		-0.586754, -0.655833, 0.474975,
		40.506897, 37.233803, 33.745121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912750, 37.056931, 33.041691>,  <40.917625, 37.692886, 33.412636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912750, 37.056931, 33.041691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577793, 37.060799, 33.260296>,  <40.376820, 37.063118, 33.391460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577793, 37.060799, 33.260296>,  <40.912750, 37.056931, 33.041691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577793, 37.060799, 33.260296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536214, -0.208492, -0.817928,
		0.106035, -0.977976, 0.179775,
		-0.837396, 0.009669, 0.546512,
		40.326576, 37.063698, 33.424248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650669, 36.382725, 32.954369>,  <40.912750, 37.056931, 33.041691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650669, 36.382725, 32.954369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352718, 36.622215, 33.072136>,  <40.173946, 36.765911, 33.142796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352718, 36.622215, 33.072136>,  <40.650669, 36.382725, 32.954369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352718, 36.622215, 33.072136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552044, -0.305233, -0.775939,
		-0.374710, -0.740511, 0.557885,
		-0.744876, 0.598728, 0.294421,
		40.129253, 36.801834, 33.160461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259441, 35.946274, 33.012531>,  <40.650669, 36.382725, 32.954369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259441, 35.946274, 33.012531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539730, 36.056072, 33.275936>,  <41.707905, 36.121952, 33.433979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539730, 36.056072, 33.275936>,  <41.259441, 35.946274, 33.012531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539730, 36.056072, 33.275936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562235, -0.355731, 0.746557,
		0.439180, -0.893369, -0.094939,
		0.700723, 0.274495, 0.658513,
		41.749947, 36.138420, 33.473492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105766, 35.462528, 33.435040>,  <41.259441, 35.946274, 33.012531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105766, 35.462528, 33.435040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319321, 35.733147, 33.637917>,  <41.447453, 35.895519, 33.759644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319321, 35.733147, 33.637917>,  <41.105766, 35.462528, 33.435040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319321, 35.733147, 33.637917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547563, -0.180450, 0.817076,
		0.644316, -0.713945, 0.274114,
		0.533883, 0.676550, 0.507197,
		41.479485, 35.936111, 33.790077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192654, 35.195255, 32.615555>,  <41.105766, 35.462528, 33.435040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192654, 35.195255, 32.615555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322018, 35.275330, 32.245617>,  <41.399635, 35.323376, 32.023655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322018, 35.275330, 32.245617>,  <41.192654, 35.195255, 32.615555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322018, 35.275330, 32.245617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525052, 0.775141, 0.351393,
		0.787227, -0.599233, 0.145578,
		0.323410, 0.200190, -0.924840,
		41.419041, 35.335388, 31.968164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990044, 35.255764, 32.587837>,  <41.192654, 35.195255, 32.615555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990044, 35.255764, 32.587837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838341, 35.508327, 32.317287>,  <41.747318, 35.659866, 32.154957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838341, 35.508327, 32.317287>,  <41.990044, 35.255764, 32.587837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838341, 35.508327, 32.317287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555536, 0.739961, 0.379260,
		0.739961, -0.231915, -0.631406,
		-0.379260, 0.631406, -0.676379,
		41.724564, 35.697750, 32.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656670, 35.576046, 32.798782>,  <41.990044, 35.255764, 32.587837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656670, 35.576046, 32.798782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011864, 35.405506, 32.867722>,  <43.224979, 35.303185, 32.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011864, 35.405506, 32.867722>,  <42.656670, 35.576046, 32.798782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011864, 35.405506, 32.867722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069619, 0.495102, 0.866041,
		-0.454567, -0.757035, 0.469327,
		0.887988, -0.426348, 0.172353,
		43.278259, 35.277603, 32.919426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762817, 35.575672, 33.439621>,  <42.656670, 35.576046, 32.798782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762817, 35.575672, 33.439621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141132, 35.457565, 33.385502>,  <43.368122, 35.386703, 33.353031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141132, 35.457565, 33.385502>,  <42.762817, 35.575672, 33.439621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141132, 35.457565, 33.385502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147746, 0.020167, 0.988820,
		-0.289236, -0.955202, 0.062698,
		0.945787, -0.295265, -0.135294,
		43.424870, 35.368984, 33.344913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905823, 35.173252, 33.929962>,  <42.762817, 35.575672, 33.439621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905823, 35.173252, 33.929962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251877, 35.316875, 33.789898>,  <43.459511, 35.403049, 33.705860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251877, 35.316875, 33.789898>,  <42.905823, 35.173252, 33.929962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251877, 35.316875, 33.789898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212106, 0.370730, 0.904196,
		0.454479, -0.856524, 0.244572,
		0.865136, 0.359063, -0.350162,
		43.511417, 35.424595, 33.684849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371643, 34.708519, 34.314491>,  <42.905823, 35.173252, 33.929962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371643, 34.708519, 34.314491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519516, 35.063911, 34.205727>,  <43.608242, 35.277145, 34.140469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519516, 35.063911, 34.205727>,  <43.371643, 34.708519, 34.314491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519516, 35.063911, 34.205727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295935, 0.164817, 0.940882,
		0.880769, -0.428300, -0.202001,
		0.369687, 0.888479, -0.271915,
		43.630421, 35.330456, 34.124153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762035, 34.451660, 34.759102>,  <43.371643, 34.708519, 34.314491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762035, 34.451660, 34.759102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438038, 34.219730, 34.723961>,  <42.243641, 34.080574, 34.702877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438038, 34.219730, 34.723961>,  <42.762035, 34.451660, 34.759102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438038, 34.219730, 34.723961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446925, 0.707323, -0.547679,
		0.379694, -0.404354, -0.832064,
		-0.809994, -0.579821, -0.087851,
		42.195042, 34.045784, 34.697605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361385, 33.993477, 34.634472>,  <42.762035, 34.451660, 34.759102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361385, 33.993477, 34.634472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612682, 34.153805, 34.367741>,  <43.763462, 34.250000, 34.207703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612682, 34.153805, 34.367741>,  <43.361385, 33.993477, 34.634472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612682, 34.153805, 34.367741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641727, -0.751547, 0.152851,
		-0.439885, -0.523948, -0.729370,
		0.628242, 0.400819, -0.666825,
		43.801155, 34.274052, 34.167694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985947, 33.642124, 34.679199>,  <43.361385, 33.993477, 34.634472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985947, 33.642124, 34.679199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181950, 33.793278, 34.364979>,  <44.299553, 33.883972, 34.176445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181950, 33.793278, 34.364979>,  <43.985947, 33.642124, 34.679199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181950, 33.793278, 34.364979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837292, -0.454774, 0.303517,
		-0.242554, -0.806463, -0.539244,
		0.490009, 0.377886, -0.785553,
		44.328953, 33.906643, 34.129314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396416, 33.155361, 34.247303>,  <43.985947, 33.642124, 34.679199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396416, 33.155361, 34.247303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562115, 33.509350, 34.162231>,  <44.661533, 33.721741, 34.111187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562115, 33.509350, 34.162231>,  <44.396416, 33.155361, 34.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562115, 33.509350, 34.162231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866471, -0.311907, 0.389798,
		0.278623, -0.345754, -0.896004,
		0.414244, 0.884968, -0.212681,
		44.686386, 33.774841, 34.098427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091766, 33.161308, 34.090271>,  <44.396416, 33.155361, 34.247303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091766, 33.161308, 34.090271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826290, 32.862164, 34.084316>,  <44.667004, 32.682678, 34.080742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826290, 32.862164, 34.084316>,  <45.091766, 33.161308, 34.090271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826290, 32.862164, 34.084316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645139, 0.582380, -0.494600,
		0.378562, -0.318655, -0.868993,
		-0.663691, -0.747859, -0.014890,
		44.627182, 32.637806, 34.079849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067394, 32.687626, 34.741756>,  <45.091766, 33.161308, 34.090271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067394, 32.687626, 34.741756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218616, 32.613224, 35.104519>,  <45.309349, 32.568584, 35.322174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218616, 32.613224, 35.104519>,  <45.067394, 32.687626, 34.741756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218616, 32.613224, 35.104519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925421, -0.048617, 0.375808,
		-0.025790, -0.981356, -0.190462,
		0.378061, -0.185950, 0.906914,
		45.332035, 32.557423, 35.376591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882702, 32.670769, 34.414631>,  <45.067394, 32.687626, 34.741756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882702, 32.670769, 34.414631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243313, 32.621231, 34.248787>,  <46.459679, 32.591507, 34.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243313, 32.621231, 34.248787>,  <45.882702, 32.670769, 34.414631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243313, 32.621231, 34.248787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207528, 0.964529, 0.163145,
		0.379700, -0.233124, 0.895255,
		0.901532, -0.123844, -0.414612,
		46.513771, 32.584076, 34.124405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455601, 32.897320, 34.872559>,  <45.882702, 32.670769, 34.414631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455601, 32.897320, 34.872559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600132, 32.957409, 34.504456>,  <46.686852, 32.993462, 34.283592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600132, 32.957409, 34.504456>,  <46.455601, 32.897320, 34.872559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600132, 32.957409, 34.504456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134847, 0.968143, 0.210986,
		0.922635, -0.200331, 0.329565,
		0.361333, 0.150222, -0.920256,
		46.708530, 33.002476, 34.228378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945385, 33.310795, 34.947002>,  <46.455601, 32.897320, 34.872559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945385, 33.310795, 34.947002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917828, 33.349064, 34.549793>,  <46.901291, 33.372025, 34.311466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917828, 33.349064, 34.549793>,  <46.945385, 33.310795, 34.947002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.917828, 33.349064, 34.549793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125943, 0.988261, 0.086478,
		0.989642, -0.119107, -0.080136,
		-0.068895, 0.095675, -0.993026,
		46.897160, 33.377766, 34.251884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.500042, 33.639267, 34.734497>,  <46.945385, 33.310795, 34.947002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.500042, 33.639267, 34.734497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217186, 33.724983, 34.464970>,  <47.047470, 33.776413, 34.303253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217186, 33.724983, 34.464970>,  <47.500042, 33.639267, 34.734497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.217186, 33.724983, 34.464970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325812, 0.944522, -0.041538,
		0.627531, -0.248910, -0.737732,
		-0.707143, 0.214295, -0.673815,
		47.005043, 33.789272, 34.262825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751747, 34.073380, 34.176369>,  <47.500042, 33.639267, 34.734497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751747, 34.073380, 34.176369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354572, 34.116432, 34.196301>,  <47.116268, 34.142265, 34.208260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354572, 34.116432, 34.196301>,  <47.751747, 34.073380, 34.176369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354572, 34.116432, 34.196301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109644, 0.993182, 0.039599,
		-0.045229, 0.044783, -0.997972,
		-0.992941, 0.107631, 0.049831,
		47.056690, 34.148720, 34.211250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615543, 34.792175, 34.222347>,  <47.751747, 34.073380, 34.176369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615543, 34.792175, 34.222347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587242, 34.891533, 33.835918>,  <47.570259, 34.951149, 33.604061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587242, 34.891533, 33.835918>,  <47.615543, 34.792175, 34.222347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587242, 34.891533, 33.835918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838032, 0.510485, 0.192634,
		0.541014, 0.823229, 0.172041,
		-0.070758, 0.248394, -0.966072,
		47.566013, 34.966049, 33.546097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902634, 35.194847, 34.890617>,  <47.615543, 34.792175, 34.222347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902634, 35.194847, 34.890617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717354, 34.981274, 35.173561>,  <47.606186, 34.853130, 35.343327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717354, 34.981274, 35.173561>,  <47.902634, 35.194847, 34.890617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717354, 34.981274, 35.173561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261252, 0.844942, 0.466712,
		-0.846871, 0.031383, -0.530871,
		-0.463202, -0.533936, 0.707358,
		47.578392, 34.821095, 35.385769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.970940, 30.946117, 26.617657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577717, 30.876535, 26.640789>,  <35.341785, 30.834785, 26.654669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577717, 30.876535, 26.640789>,  <35.970940, 30.946117, 26.617657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577717, 30.876535, 26.640789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012574, 0.250732, 0.967975,
		-0.182883, 0.952299, -0.244296,
		-0.983054, -0.173954, 0.057829,
		35.282799, 30.824348, 26.658138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630199, 31.641272, 26.757877>,  <35.970940, 30.946117, 26.617657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630199, 31.641272, 26.757877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392628, 31.342730, 26.878014>,  <35.250084, 31.163605, 26.950096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392628, 31.342730, 26.878014>,  <35.630199, 31.641272, 26.757877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392628, 31.342730, 26.878014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032516, 0.350745, 0.935906,
		-0.803861, 0.565626, -0.184049,
		-0.593927, -0.746354, 0.300343,
		35.214451, 31.118824, 26.968117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195999, 31.998043, 27.210068>,  <35.630199, 31.641272, 26.757877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195999, 31.998043, 27.210068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179501, 31.605787, 27.286640>,  <35.169601, 31.370434, 27.332584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179501, 31.605787, 27.286640>,  <35.195999, 31.998043, 27.210068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179501, 31.605787, 27.286640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022786, 0.190621, 0.981399,
		-0.998889, 0.044845, 0.014482,
		-0.041251, -0.980639, 0.191431,
		35.167126, 31.311596, 27.344070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697659, 32.030174, 27.705521>,  <35.195999, 31.998043, 27.210068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697659, 32.030174, 27.705521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867508, 31.673880, 27.770370>,  <34.969418, 31.460102, 27.809280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867508, 31.673880, 27.770370>,  <34.697659, 32.030174, 27.705521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867508, 31.673880, 27.770370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197118, 0.083821, 0.976790,
		-0.883653, -0.446721, -0.139989,
		0.424619, -0.890738, 0.162126,
		34.994892, 31.406658, 27.819008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318840, 31.832169, 28.248989>,  <34.697659, 32.030174, 27.705521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318840, 31.832169, 28.248989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.652313, 31.611555, 28.260153>,  <34.852398, 31.479187, 28.266851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.652313, 31.611555, 28.260153>,  <34.318840, 31.832169, 28.248989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652313, 31.611555, 28.260153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102442, 0.204118, 0.973571,
		-0.542655, -0.808793, 0.226670,
		0.833685, -0.551534, 0.027912,
		34.902420, 31.446095, 28.268526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279434, 31.403875, 28.789946>,  <34.318840, 31.832169, 28.248989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279434, 31.403875, 28.789946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676807, 31.398815, 28.744453>,  <34.915230, 31.395779, 28.717159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676807, 31.398815, 28.744453>,  <34.279434, 31.403875, 28.789946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676807, 31.398815, 28.744453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114392, 0.135529, 0.984147,
		0.002961, -0.990692, 0.136086,
		0.993431, -0.012653, -0.113729,
		34.974838, 31.395020, 28.710335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561016, 30.993853, 29.362997>,  <34.279434, 31.403875, 28.789946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561016, 30.993853, 29.362997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843292, 31.227879, 29.203150>,  <35.012657, 31.368294, 29.107243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843292, 31.227879, 29.203150>,  <34.561016, 30.993853, 29.362997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843292, 31.227879, 29.203150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172454, 0.405217, 0.897808,
		0.687208, -0.702493, 0.185062,
		0.705694, 0.585066, -0.399616,
		35.055000, 31.403399, 29.083265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099606, 30.926363, 29.799639>,  <34.561016, 30.993853, 29.362997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099606, 30.926363, 29.799639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.159328, 31.263510, 29.592842>,  <35.195164, 31.465797, 29.468763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.159328, 31.263510, 29.592842>,  <35.099606, 30.926363, 29.799639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159328, 31.263510, 29.592842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232007, 0.478393, 0.846943,
		0.961187, -0.246401, -0.124124,
		0.149307, 0.842868, -0.516992,
		35.204121, 31.516371, 29.437744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783958, 31.118328, 29.990841>,  <35.099606, 30.926363, 29.799639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783958, 31.118328, 29.990841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599453, 31.444510, 29.850971>,  <35.488750, 31.640219, 29.767050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599453, 31.444510, 29.850971>,  <35.783958, 31.118328, 29.990841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599453, 31.444510, 29.850971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339884, 0.526438, 0.779321,
		0.819581, 0.240626, -0.519987,
		-0.461266, 0.815452, -0.349673,
		35.461075, 31.689146, 29.746069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274982, 31.660730, 30.030418>,  <35.783958, 31.118328, 29.990841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274982, 31.660730, 30.030418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911648, 31.824451, 29.996012>,  <35.693645, 31.922684, 29.975368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911648, 31.824451, 29.996012>,  <36.274982, 31.660730, 30.030418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911648, 31.824451, 29.996012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201930, 0.609279, 0.766814,
		0.366266, 0.679155, -0.636080,
		-0.908336, 0.409301, -0.086017,
		35.639149, 31.947243, 29.970207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344337, 32.356647, 30.034685>,  <36.274982, 31.660730, 30.030418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344337, 32.356647, 30.034685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971245, 32.314419, 30.172598>,  <35.747391, 32.289082, 30.255346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971245, 32.314419, 30.172598>,  <36.344337, 32.356647, 30.034685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971245, 32.314419, 30.172598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228845, 0.565626, 0.792274,
		-0.278657, 0.817877, -0.503416,
		-0.932727, -0.105568, 0.344782,
		35.691425, 32.282749, 30.276033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105701, 32.988743, 30.012241>,  <36.344337, 32.356647, 30.034685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105701, 32.988743, 30.012241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914581, 32.768135, 30.285746>,  <35.799908, 32.635769, 30.449848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914581, 32.768135, 30.285746>,  <36.105701, 32.988743, 30.012241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914581, 32.768135, 30.285746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259291, 0.655136, 0.709623,
		-0.839327, 0.516354, -0.170022,
		-0.477805, -0.551521, 0.683759,
		35.771240, 32.602680, 30.490873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758732, 33.562485, 30.327127>,  <36.105701, 32.988743, 30.012241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758732, 33.562485, 30.327127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.706909, 33.263851, 30.588150>,  <35.675816, 33.084671, 30.744762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.706909, 33.263851, 30.588150>,  <35.758732, 33.562485, 30.327127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706909, 33.263851, 30.588150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220675, 0.619887, 0.753023,
		-0.966704, 0.241564, 0.084440,
		-0.129559, -0.746584, 0.652554,
		35.668041, 33.039875, 30.783916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324905, 33.830601, 30.916098>,  <35.758732, 33.562485, 30.327127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324905, 33.830601, 30.916098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502285, 33.502319, 31.060204>,  <35.608711, 33.305351, 31.146667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502285, 33.502319, 31.060204>,  <35.324905, 33.830601, 30.916098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502285, 33.502319, 31.060204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197900, 0.481683, 0.853708,
		-0.874179, -0.307280, 0.376020,
		0.443449, -0.820707, 0.360266,
		35.635319, 33.256107, 31.168283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288975, 33.970791, 31.623306>,  <35.324905, 33.830601, 30.916098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288975, 33.970791, 31.623306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566505, 33.682735, 31.624512>,  <35.733025, 33.509903, 31.625235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566505, 33.682735, 31.624512>,  <35.288975, 33.970791, 31.623306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566505, 33.682735, 31.624512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433356, 0.420862, 0.796917,
		-0.575156, -0.551618, 0.604081,
		0.693828, -0.720134, 0.003014,
		35.774654, 33.466694, 31.625416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347725, 33.597950, 32.276981>,  <35.288975, 33.970791, 31.623306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347725, 33.597950, 32.276981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716301, 33.559021, 32.126526>,  <35.937447, 33.535664, 32.036251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716301, 33.559021, 32.126526>,  <35.347725, 33.597950, 32.276981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716301, 33.559021, 32.126526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385878, 0.342029, 0.856805,
		0.045266, -0.934636, 0.352712,
		0.921439, -0.097320, -0.376138,
		35.992733, 33.529823, 32.013683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604568, 33.294128, 32.791542>,  <35.347725, 33.597950, 32.276981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604568, 33.294128, 32.791542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931675, 33.414669, 32.595402>,  <36.127937, 33.486996, 32.477718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931675, 33.414669, 32.595402>,  <35.604568, 33.294128, 32.791542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931675, 33.414669, 32.595402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387041, 0.342632, 0.856039,
		0.425984, -0.889824, 0.163554,
		0.817763, 0.301357, -0.490355,
		36.177006, 33.505074, 32.448296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128555, 33.331810, 33.236748>,  <35.604568, 33.294128, 32.791542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128555, 33.331810, 33.236748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323235, 33.541801, 32.957455>,  <36.440041, 33.667797, 32.789879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323235, 33.541801, 32.957455>,  <36.128555, 33.331810, 33.236748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323235, 33.541801, 32.957455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582298, 0.400855, 0.707279,
		0.651195, -0.750808, -0.110600,
		0.486696, 0.524979, -0.698229,
		36.469242, 33.699295, 32.747986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822433, 33.262077, 33.401844>,  <36.128555, 33.331810, 33.236748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822433, 33.262077, 33.401844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810795, 33.598705, 33.186100>,  <36.803814, 33.800682, 33.056656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810795, 33.598705, 33.186100>,  <36.822433, 33.262077, 33.401844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810795, 33.598705, 33.186100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676461, 0.413827, 0.609218,
		0.735903, -0.347131, -0.581331,
		-0.029092, 0.841574, -0.539358,
		36.802067, 33.851177, 33.024292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486137, 33.359894, 33.288189>,  <36.822433, 33.262077, 33.401844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486137, 33.359894, 33.288189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310852, 33.713673, 33.224026>,  <37.205681, 33.925938, 33.185528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310852, 33.713673, 33.224026>,  <37.486137, 33.359894, 33.288189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310852, 33.713673, 33.224026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682225, 0.443450, 0.581310,
		0.585270, 0.145301, -0.797714,
		-0.438211, 0.884443, -0.160410,
		37.179390, 33.979004, 33.175903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976887, 33.767773, 33.098202>,  <37.486137, 33.359894, 33.288189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976887, 33.767773, 33.098202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670528, 33.968216, 33.259346>,  <37.486713, 34.088482, 33.356033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670528, 33.968216, 33.259346>,  <37.976887, 33.767773, 33.098202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670528, 33.968216, 33.259346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632391, 0.473924, 0.612762,
		0.116135, 0.724076, -0.679872,
		-0.765894, 0.501108, 0.402861,
		37.440762, 34.118549, 33.380203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695015, 34.190262, 32.865879>,  <37.976887, 33.767773, 33.098202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695015, 34.190262, 32.865879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043068, 34.386787, 32.881241>,  <39.251900, 34.504704, 32.890457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043068, 34.386787, 32.881241>,  <38.695015, 34.190262, 32.865879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043068, 34.386787, 32.881241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103170, -0.105409, -0.989063,
		-0.481891, 0.864582, -0.142409,
		0.870137, 0.491312, 0.038403,
		39.304108, 34.534180, 32.892761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715397, 34.436371, 32.256336>,  <38.695015, 34.190262, 32.865879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715397, 34.436371, 32.256336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.097027, 34.484558, 32.366051>,  <39.326004, 34.513470, 32.431881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.097027, 34.484558, 32.366051>,  <38.715397, 34.436371, 32.256336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097027, 34.484558, 32.366051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294043, -0.201350, -0.934343,
		-0.057329, 0.972083, -0.227525,
		0.954071, 0.120466, 0.274291,
		39.383247, 34.520699, 32.448338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928593, 34.943909, 31.883635>,  <38.715397, 34.436371, 32.256336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928593, 34.943909, 31.883635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246353, 34.727894, 31.994839>,  <39.437008, 34.598286, 32.061562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246353, 34.727894, 31.994839>,  <38.928593, 34.943909, 31.883635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246353, 34.727894, 31.994839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319020, -0.018523, -0.947567,
		0.516873, 0.841436, 0.157568,
		0.794398, -0.540039, 0.278009,
		39.484673, 34.565884, 32.078239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459671, 35.055683, 31.343136>,  <38.928593, 34.943909, 31.883635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459671, 35.055683, 31.343136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627251, 34.751957, 31.542301>,  <39.727798, 34.569721, 31.661800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627251, 34.751957, 31.542301>,  <39.459671, 35.055683, 31.343136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627251, 34.751957, 31.542301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152496, -0.481730, -0.862949,
		0.895110, 0.437466, -0.086030,
		0.418954, -0.759315, 0.497913,
		39.752937, 34.524162, 31.691675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096352, 34.951004, 31.091139>,  <39.459671, 35.055683, 31.343136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096352, 34.951004, 31.091139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998135, 34.598553, 31.252790>,  <39.939205, 34.387081, 31.349781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998135, 34.598553, 31.252790>,  <40.096352, 34.951004, 31.091139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998135, 34.598553, 31.252790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143467, -0.445332, -0.883797,
		0.958710, -0.159034, 0.235763,
		-0.245547, -0.881129, 0.404128,
		39.924469, 34.334213, 31.374029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678986, 34.669075, 30.967892>,  <40.096352, 34.951004, 31.091139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678986, 34.669075, 30.967892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391056, 34.396233, 31.019405>,  <40.218296, 34.232529, 31.050314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391056, 34.396233, 31.019405>,  <40.678986, 34.669075, 30.967892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391056, 34.396233, 31.019405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242341, -0.420797, -0.874186,
		0.650476, -0.598053, 0.468202,
		-0.719827, -0.682102, 0.128786,
		40.175106, 34.191601, 31.058041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062832, 34.035355, 30.758060>,  <40.678986, 34.669075, 30.967892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062832, 34.035355, 30.758060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666431, 33.982960, 30.746992>,  <40.428593, 33.951523, 30.740351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666431, 33.982960, 30.746992>,  <41.062832, 34.035355, 30.758060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666431, 33.982960, 30.746992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089862, -0.497615, -0.862731,
		0.099233, -0.857451, 0.504906,
		-0.990998, -0.130984, -0.027673,
		40.369133, 33.943665, 30.738689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989128, 33.360870, 30.447483>,  <41.062832, 34.035355, 30.758060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989128, 33.360870, 30.447483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630520, 33.526772, 30.385231>,  <40.415356, 33.626312, 30.347879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630520, 33.526772, 30.385231>,  <40.989128, 33.360870, 30.447483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630520, 33.526772, 30.385231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130163, -0.582440, -0.802385,
		-0.423438, -0.699101, 0.576158,
		-0.896525, 0.414755, -0.155630,
		40.361561, 33.651199, 30.338541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618977, 32.800976, 30.269009>,  <40.989128, 33.360870, 30.447483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618977, 32.800976, 30.269009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422535, 33.119053, 30.126751>,  <40.304672, 33.309898, 30.041397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422535, 33.119053, 30.126751>,  <40.618977, 32.800976, 30.269009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422535, 33.119053, 30.126751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306388, -0.539863, -0.784012,
		-0.815442, -0.276063, 0.508766,
		-0.491101, 0.795196, -0.355644,
		40.275204, 33.357613, 30.020058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093990, 32.525764, 29.805614>,  <40.618977, 32.800976, 30.269009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093990, 32.525764, 29.805614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089005, 32.916862, 29.721836>,  <40.086014, 33.151520, 29.671568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089005, 32.916862, 29.721836>,  <40.093990, 32.525764, 29.805614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089005, 32.916862, 29.721836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219616, -0.207026, -0.953367,
		-0.975507, 0.034115, 0.217308,
		-0.012464, 0.977740, -0.209447,
		40.085266, 33.210186, 29.659002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447945, 32.560951, 29.510576>,  <40.093990, 32.525764, 29.805614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447945, 32.560951, 29.510576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674049, 32.870117, 29.395277>,  <39.809711, 33.055614, 29.326097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674049, 32.870117, 29.395277>,  <39.447945, 32.560951, 29.510576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674049, 32.870117, 29.395277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184870, -0.221844, -0.957397,
		-0.803930, 0.594467, 0.017489,
		0.565261, 0.772913, -0.288246,
		39.843628, 33.101990, 29.308804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978680, 33.013176, 29.322958>,  <39.447945, 32.560951, 29.510576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978680, 33.013176, 29.322958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326599, 33.111122, 29.151617>,  <39.535351, 33.169891, 29.048813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326599, 33.111122, 29.151617>,  <38.978680, 33.013176, 29.322958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326599, 33.111122, 29.151617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421806, -0.081367, -0.903027,
		-0.255978, 0.966136, 0.032515,
		0.869802, 0.244870, -0.428350,
		39.587540, 33.184582, 29.023111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874245, 33.560524, 28.923571>,  <38.978680, 33.013176, 29.322958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874245, 33.560524, 28.923571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180992, 33.369392, 28.752178>,  <39.365040, 33.254715, 28.649342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180992, 33.369392, 28.752178>,  <38.874245, 33.560524, 28.923571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180992, 33.369392, 28.752178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527647, -0.089305, -0.844756,
		0.365381, 0.873903, -0.320609,
		0.766867, -0.477826, -0.428482,
		39.411053, 33.226044, 28.623634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019585, 33.822235, 28.276802>,  <38.874245, 33.560524, 28.923571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019585, 33.822235, 28.276802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128563, 33.437710, 28.293066>,  <39.193951, 33.206993, 28.302824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128563, 33.437710, 28.293066>,  <39.019585, 33.822235, 28.276802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128563, 33.437710, 28.293066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516887, -0.181871, -0.836511,
		0.811543, 0.206885, -0.546439,
		0.272443, -0.961312, 0.040660,
		39.210297, 33.149315, 28.305264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279896, 33.583084, 27.577801>,  <39.019585, 33.822235, 28.276802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279896, 33.583084, 27.577801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167988, 33.258362, 27.782814>,  <39.100842, 33.063526, 27.905823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167988, 33.258362, 27.782814>,  <39.279896, 33.583084, 27.577801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167988, 33.258362, 27.782814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537341, -0.310000, -0.784325,
		0.795609, -0.494837, -0.349490,
		-0.279771, -0.811810, 0.512535,
		39.084057, 33.014820, 27.936575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366302, 33.086124, 27.096508>,  <39.279896, 33.583084, 27.577801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366302, 33.086124, 27.096508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120441, 32.963722, 27.387316>,  <38.972923, 32.890282, 27.561800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120441, 32.963722, 27.387316>,  <39.366302, 33.086124, 27.096508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120441, 32.963722, 27.387316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616864, -0.387951, -0.684816,
		0.491607, -0.869398, 0.049691,
		-0.614655, -0.306007, 0.727021,
		38.936047, 32.871922, 27.605421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297264, 32.453758, 26.845791>,  <39.366302, 33.086124, 27.096508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297264, 32.453758, 26.845791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989918, 32.527836, 27.090841>,  <38.805508, 32.572285, 27.237871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989918, 32.527836, 27.090841>,  <39.297264, 32.453758, 26.845791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989918, 32.527836, 27.090841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639985, -0.230612, -0.732965,
		0.005537, -0.955259, 0.295718,
		-0.768368, 0.185197, 0.612628,
		38.759407, 32.583397, 27.274630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942913, 31.854971, 26.958321>,  <39.297264, 32.453758, 26.845791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942913, 31.854971, 26.958321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677769, 32.148624, 27.017191>,  <38.518681, 32.324818, 27.052513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677769, 32.148624, 27.017191>,  <38.942913, 31.854971, 26.958321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677769, 32.148624, 27.017191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472994, -0.258194, -0.842385,
		-0.580423, -0.627999, 0.518388,
		-0.662861, 0.734134, 0.147178,
		38.478909, 32.368866, 27.061344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428402, 31.420305, 26.801739>,  <38.942913, 31.854971, 26.958321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428402, 31.420305, 26.801739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263615, 31.783848, 26.827854>,  <38.164742, 32.001972, 26.843523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263615, 31.783848, 26.827854>,  <38.428402, 31.420305, 26.801739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263615, 31.783848, 26.827854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666973, -0.251956, -0.701188,
		-0.620830, -0.332412, 0.709980,
		-0.411967, 0.908857, 0.065289,
		38.140026, 32.056503, 26.847441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.744976, 31.361183, 27.019676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.759476, 31.707384, 26.819841>,  <37.768177, 31.915106, 26.699940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.759476, 31.707384, 26.819841>,  <37.744976, 31.361183, 27.019676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759476, 31.707384, 26.819841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504668, -0.415633, -0.756676,
		-0.862552, 0.279557, 0.421725,
		0.036251, 0.865504, -0.499589,
		37.770351, 31.967035, 26.669966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069675, 31.403955, 26.641109>,  <37.744976, 31.361183, 27.019676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069675, 31.403955, 26.641109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268475, 31.694885, 26.451799>,  <37.387756, 31.869442, 26.338213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268475, 31.694885, 26.451799>,  <37.069675, 31.403955, 26.641109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268475, 31.694885, 26.451799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389549, -0.300353, -0.870654,
		-0.775398, 0.617080, 0.134052,
		0.497001, 0.727323, -0.473277,
		37.417576, 31.913082, 26.309816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531414, 31.789286, 26.271925>,  <37.069675, 31.403955, 26.641109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531414, 31.789286, 26.271925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888557, 31.811634, 26.093178>,  <37.102844, 31.825043, 25.985929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888557, 31.811634, 26.093178>,  <36.531414, 31.789286, 26.271925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888557, 31.811634, 26.093178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435532, -0.145280, -0.888372,
		-0.114554, 0.987812, -0.105381,
		0.892855, 0.055870, -0.446866,
		37.156414, 31.828396, 25.959118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420540, 32.200127, 25.694979>,  <36.531414, 31.789286, 26.271925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420540, 32.200127, 25.694979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754227, 31.988974, 25.631212>,  <36.954441, 31.862282, 25.592953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754227, 31.988974, 25.631212>,  <36.420540, 32.200127, 25.694979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754227, 31.988974, 25.631212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367777, -0.317217, -0.874136,
		0.410874, 0.787852, -0.458773,
		0.834220, -0.527885, -0.159417,
		37.004494, 31.830608, 25.583387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337013, 32.148628, 25.023571>,  <36.420540, 32.200127, 25.694979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337013, 32.148628, 25.023571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619213, 31.882071, 25.120070>,  <36.788532, 31.722137, 25.177969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619213, 31.882071, 25.120070>,  <36.337013, 32.148628, 25.023571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619213, 31.882071, 25.120070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317531, -0.601534, -0.733028,
		0.633601, 0.440545, -0.635979,
		0.705495, -0.666391, 0.241245,
		36.830860, 31.682154, 25.192444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672215, 31.977535, 24.429121>,  <36.337013, 32.148628, 25.023571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672215, 31.977535, 24.429121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727379, 31.666872, 24.674978>,  <36.760479, 31.480474, 24.822493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727379, 31.666872, 24.674978>,  <36.672215, 31.977535, 24.429121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727379, 31.666872, 24.674978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261747, -0.627089, -0.733654,
		0.955232, -0.059701, -0.289771,
		0.137912, -0.776657, 0.614642,
		36.768753, 31.433874, 24.859371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060768, 31.533880, 24.005121>,  <36.672215, 31.977535, 24.429121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060768, 31.533880, 24.005121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881508, 31.321394, 24.292725>,  <36.773952, 31.193903, 24.465286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881508, 31.321394, 24.292725>,  <37.060768, 31.533880, 24.005121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881508, 31.321394, 24.292725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140341, -0.752517, -0.643446,
		0.882874, -0.389266, 0.262688,
		-0.448149, -0.531216, 0.719008,
		36.747063, 31.162029, 24.508427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165718, 30.758438, 23.828169>,  <37.060768, 31.533880, 24.005121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165718, 30.758438, 23.828169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883865, 30.710358, 24.107897>,  <36.714752, 30.681509, 24.275734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883865, 30.710358, 24.107897>,  <37.165718, 30.758438, 23.828169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883865, 30.710358, 24.107897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408310, -0.737346, -0.538148,
		0.580326, -0.664735, 0.470478,
		-0.704631, -0.120201, 0.699319,
		36.672478, 30.674297, 24.317692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164246, 30.081442, 24.164793>,  <37.165718, 30.758438, 23.828169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164246, 30.081442, 24.164793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788952, 30.218727, 24.147276>,  <36.563774, 30.301098, 24.136766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788952, 30.218727, 24.147276>,  <37.164246, 30.081442, 24.164793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788952, 30.218727, 24.147276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213401, -0.673654, -0.707567,
		-0.272345, -0.654520, 0.705288,
		-0.938237, 0.343212, -0.043791,
		36.507481, 30.321692, 24.134138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741413, 29.492500, 24.103781>,  <37.164246, 30.081442, 24.164793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741413, 29.492500, 24.103781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542332, 29.806982, 23.957260>,  <36.422882, 29.995670, 23.869347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542332, 29.806982, 23.957260>,  <36.741413, 29.492500, 24.103781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542332, 29.806982, 23.957260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228122, -0.526110, -0.819249,
		-0.836813, -0.324178, 0.441195,
		-0.497699, 0.786204, -0.366303,
		36.393021, 30.042843, 23.847370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208984, 29.211376, 23.758329>,  <36.741413, 29.492500, 24.103781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208984, 29.211376, 23.758329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190445, 29.578381, 23.600330>,  <36.179321, 29.798584, 23.505531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190445, 29.578381, 23.600330>,  <36.208984, 29.211376, 23.758329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190445, 29.578381, 23.600330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340739, -0.386231, -0.857160,
		-0.939015, 0.094862, 0.330534,
		-0.046351, 0.917511, -0.395000,
		36.176540, 29.853634, 23.481831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684437, 29.113752, 23.239773>,  <36.208984, 29.211376, 23.758329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684437, 29.113752, 23.239773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848789, 29.466648, 23.147835>,  <35.947399, 29.678387, 23.092672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848789, 29.466648, 23.147835>,  <35.684437, 29.113752, 23.239773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848789, 29.466648, 23.147835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194862, -0.161298, -0.967477,
		-0.890621, 0.442305, 0.105641,
		0.410880, 0.882241, -0.229844,
		35.972054, 29.731321, 23.078882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300716, 29.426006, 22.758999>,  <35.684437, 29.113752, 23.239773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300716, 29.426006, 22.758999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639465, 29.623447, 22.679846>,  <35.842716, 29.741913, 22.632355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639465, 29.623447, 22.679846>,  <35.300716, 29.426006, 22.758999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639465, 29.623447, 22.679846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173956, -0.094500, -0.980209,
		-0.502533, 0.864539, 0.005835,
		0.846877, 0.493602, -0.197882,
		35.893528, 29.771528, 22.620481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091377, 29.937113, 22.297159>,  <35.300716, 29.426006, 22.758999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091377, 29.937113, 22.297159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486584, 29.896053, 22.251036>,  <35.723705, 29.871418, 22.223362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486584, 29.896053, 22.251036>,  <35.091377, 29.937113, 22.297159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486584, 29.896053, 22.251036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121700, -0.058342, -0.990851,
		0.094982, 0.993005, -0.070135,
		0.988012, -0.102649, -0.115307,
		35.782986, 29.865259, 22.216444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233120, 30.483780, 21.968119>,  <35.091377, 29.937113, 22.297159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233120, 30.483780, 21.968119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508457, 30.199905, 21.908079>,  <35.673660, 30.029581, 21.872055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508457, 30.199905, 21.908079>,  <35.233120, 30.483780, 21.968119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508457, 30.199905, 21.908079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135206, 0.077772, -0.987761,
		0.712674, 0.700212, -0.042420,
		0.688342, -0.709687, -0.150098,
		35.714958, 29.987000, 21.863050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579815, 30.665300, 21.274117>,  <35.233120, 30.483780, 21.968119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579815, 30.665300, 21.274117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679581, 30.283493, 21.339458>,  <35.739441, 30.054409, 21.378664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679581, 30.283493, 21.339458>,  <35.579815, 30.665300, 21.274117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679581, 30.283493, 21.339458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054353, -0.154622, -0.986477,
		0.966869, 0.254924, 0.013315,
		0.249418, -0.954519, 0.163355,
		35.754406, 29.997137, 21.388464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233990, 30.549204, 20.897797>,  <35.579815, 30.665300, 21.274117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233990, 30.549204, 20.897797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059788, 30.195616, 20.965839>,  <35.955265, 29.983463, 21.006666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059788, 30.195616, 20.965839>,  <36.233990, 30.549204, 20.897797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059788, 30.195616, 20.965839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138183, -0.121083, -0.982977,
		0.889518, -0.451596, -0.069417,
		-0.435504, -0.883968, 0.170108,
		35.929138, 29.930426, 21.016872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619328, 30.117258, 20.380926>,  <36.233990, 30.549204, 20.897797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619328, 30.117258, 20.380926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281158, 29.923773, 20.471506>,  <36.078255, 29.807682, 20.525854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281158, 29.923773, 20.471506>,  <36.619328, 30.117258, 20.380926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281158, 29.923773, 20.471506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164797, -0.167052, -0.972078,
		0.508035, -0.859137, 0.061515,
		-0.845424, -0.483712, 0.226452,
		36.027531, 29.778660, 20.539442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751427, 29.468262, 20.174112>,  <36.619328, 30.117258, 20.380926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751427, 29.468262, 20.174112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355038, 29.521484, 20.180656>,  <36.117203, 29.553417, 20.184584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355038, 29.521484, 20.180656>,  <36.751427, 29.468262, 20.174112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355038, 29.521484, 20.180656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019191, -0.020014, -0.999615,
		-0.132676, -0.990907, 0.022387,
		-0.990973, 0.133054, 0.016361,
		36.057747, 29.561401, 20.185564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530746, 29.018900, 19.659348>,  <36.751427, 29.468262, 20.174112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530746, 29.018900, 19.659348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209576, 29.253889, 19.699732>,  <36.016872, 29.394882, 19.723963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209576, 29.253889, 19.699732>,  <36.530746, 29.018900, 19.659348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209576, 29.253889, 19.699732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108325, 0.022750, -0.993855,
		-0.586158, -0.808925, 0.045372,
		-0.802922, 0.587471, 0.100962,
		35.968700, 29.430130, 19.730021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101009, 28.745136, 19.102108>,  <36.530746, 29.018900, 19.659348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101009, 28.745136, 19.102108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931980, 29.094730, 19.198092>,  <35.830563, 29.304487, 19.255682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931980, 29.094730, 19.198092>,  <36.101009, 28.745136, 19.102108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931980, 29.094730, 19.198092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322995, 0.102153, -0.940871,
		-0.846822, -0.475090, 0.239127,
		-0.422571, 0.873987, 0.239958,
		35.805210, 29.356926, 19.270079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348602, 28.710043, 19.052948>,  <36.101009, 28.745136, 19.102108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348602, 28.710043, 19.052948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448433, 29.093615, 18.999033>,  <35.508331, 29.323757, 18.966684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.448433, 29.093615, 18.999033>,  <35.348602, 28.710043, 19.052948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448433, 29.093615, 18.999033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358355, -0.037851, -0.932818,
		-0.899607, 0.281114, 0.334189,
		0.249579, 0.958928, -0.134790,
		35.523308, 29.381292, 18.958595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800640, 29.119839, 18.935730>,  <35.348602, 28.710043, 19.052948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800640, 29.119839, 18.935730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119843, 29.274252, 18.750620>,  <35.311363, 29.366899, 18.639553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119843, 29.274252, 18.750620>,  <34.800640, 29.119839, 18.935730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119843, 29.274252, 18.750620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527735, 0.076841, -0.845927,
		-0.290997, 0.919279, 0.265043,
		0.798008, 0.386034, -0.462775,
		35.359245, 29.390062, 18.611788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093182, 29.096457, 18.892727>,  <34.800640, 29.119839, 18.935730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093182, 29.096457, 18.892727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893917, 29.442362, 18.918074>,  <33.774357, 29.649904, 18.933283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893917, 29.442362, 18.918074>,  <34.093182, 29.096457, 18.892727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893917, 29.442362, 18.918074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092654, -0.125754, 0.987725,
		0.862117, 0.486180, 0.142770,
		-0.498166, 0.864763, 0.063368,
		33.744469, 29.701790, 18.937084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304241, 29.467691, 19.473774>,  <34.093182, 29.096457, 18.892727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304241, 29.467691, 19.473774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929768, 29.560478, 19.368132>,  <33.705082, 29.616150, 19.304747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929768, 29.560478, 19.368132>,  <34.304241, 29.467691, 19.473774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929768, 29.560478, 19.368132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298905, -0.129957, 0.945393,
		0.184976, 0.964004, 0.190999,
		-0.936184, 0.231965, -0.264106,
		33.648914, 29.630068, 19.288900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038837, 30.091843, 19.880653>,  <34.304241, 29.467691, 19.473774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038837, 30.091843, 19.880653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736423, 29.856981, 19.764957>,  <33.554974, 29.716064, 19.695539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736423, 29.856981, 19.764957>,  <34.038837, 30.091843, 19.880653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736423, 29.856981, 19.764957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289078, -0.096931, 0.952385,
		-0.587232, 0.803652, -0.096449,
		-0.756037, -0.587153, -0.289239,
		33.509613, 29.680836, 19.678186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400921, 30.422085, 20.012695>,  <34.038837, 30.091843, 19.880653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400921, 30.422085, 20.012695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313171, 30.032272, 19.994085>,  <33.260521, 29.798386, 19.982920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313171, 30.032272, 19.994085>,  <33.400921, 30.422085, 20.012695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313171, 30.032272, 19.994085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255858, 0.011447, 0.966646,
		-0.941494, 0.223964, -0.251852,
		-0.219377, -0.974530, -0.046526,
		33.247360, 29.739914, 19.980127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711132, 30.399366, 20.321886>,  <33.400921, 30.422085, 20.012695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711132, 30.399366, 20.321886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820347, 30.015839, 20.353167>,  <32.885876, 29.785721, 20.371935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820347, 30.015839, 20.353167>,  <32.711132, 30.399366, 20.321886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820347, 30.015839, 20.353167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037227, 0.070700, 0.996803,
		-0.961284, -0.275071, -0.016390,
		0.273032, -0.958821, 0.078203,
		32.902256, 29.728191, 20.376627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355335, 30.248131, 20.835150>,  <32.711132, 30.399366, 20.321886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355335, 30.248131, 20.835150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625515, 29.955772, 20.796047>,  <32.787624, 29.780357, 20.772585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625515, 29.955772, 20.796047>,  <32.355335, 30.248131, 20.835150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625515, 29.955772, 20.796047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119728, -0.022111, 0.992561,
		-0.727619, -0.682131, 0.072574,
		0.675452, -0.730895, -0.097758,
		32.828152, 29.736504, 20.766720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143532, 29.743357, 21.287596>,  <32.355335, 30.248131, 20.835150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143532, 29.743357, 21.287596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537136, 29.685749, 21.245689>,  <32.773300, 29.651184, 21.220545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537136, 29.685749, 21.245689>,  <32.143532, 29.743357, 21.287596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537136, 29.685749, 21.245689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112694, 0.048007, 0.992469,
		-0.137908, -0.988409, 0.063470,
		0.984013, -0.144023, -0.104767,
		32.832340, 29.642542, 21.214260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373325, 29.275396, 21.778206>,  <32.143532, 29.743357, 21.287596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373325, 29.275396, 21.778206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701534, 29.484118, 21.684856>,  <32.898460, 29.609350, 21.628847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701534, 29.484118, 21.684856>,  <32.373325, 29.275396, 21.778206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701534, 29.484118, 21.684856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258130, 0.026031, 0.965760,
		0.510011, -0.852669, -0.113333,
		0.820523, 0.521802, -0.233375,
		32.947693, 29.640657, 21.614843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874638, 28.955164, 22.220381>,  <32.373325, 29.275396, 21.778206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874638, 28.955164, 22.220381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058590, 29.297894, 22.127119>,  <33.168961, 29.503532, 22.071161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058590, 29.297894, 22.127119>,  <32.874638, 28.955164, 22.220381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058590, 29.297894, 22.127119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315362, 0.087857, 0.944896,
		0.830096, -0.508065, -0.229807,
		0.459878, 0.856826, -0.233154,
		33.196552, 29.554941, 22.057173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493179, 29.026703, 22.641571>,  <32.874638, 28.955164, 22.220381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493179, 29.026703, 22.641571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430782, 29.406061, 22.531145>,  <33.393345, 29.633677, 22.464890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430782, 29.406061, 22.531145>,  <33.493179, 29.026703, 22.641571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430782, 29.406061, 22.531145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344673, 0.314184, 0.884584,
		0.925671, 0.042838, -0.375897,
		-0.155995, 0.948395, -0.276066,
		33.383984, 29.690580, 22.448326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027012, 29.272940, 22.885359>,  <33.493179, 29.026703, 22.641571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027012, 29.272940, 22.885359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786549, 29.588253, 22.832874>,  <33.642269, 29.777441, 22.801384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786549, 29.588253, 22.832874>,  <34.027012, 29.272940, 22.885359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786549, 29.588253, 22.832874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291140, 0.368951, 0.882673,
		0.744208, 0.492426, -0.451300,
		-0.601159, 0.788284, -0.131211,
		33.606201, 29.824738, 22.793510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445675, 29.878092, 22.988060>,  <34.027012, 29.272940, 22.885359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445675, 29.878092, 22.988060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065498, 29.981306, 23.057430>,  <33.837391, 30.043234, 23.099052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065498, 29.981306, 23.057430>,  <34.445675, 29.878092, 22.988060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065498, 29.981306, 23.057430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280167, 0.469029, 0.837567,
		0.134780, 0.844647, -0.518078,
		-0.950442, 0.258036, 0.173427,
		33.780365, 30.058716, 23.109459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537354, 30.476786, 23.068724>,  <34.445675, 29.878092, 22.988060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537354, 30.476786, 23.068724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175194, 30.406651, 23.223385>,  <33.957897, 30.364569, 23.316181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175194, 30.406651, 23.223385>,  <34.537354, 30.476786, 23.068724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175194, 30.406651, 23.223385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271555, 0.460892, 0.844888,
		-0.326349, 0.869962, -0.369679,
		-0.905403, -0.175340, 0.386654,
		33.903572, 30.354048, 23.339380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303196, 31.071674, 23.348242>,  <34.537354, 30.476786, 23.068724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303196, 31.071674, 23.348242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103771, 30.770012, 23.519211>,  <33.984116, 30.589014, 23.621792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103771, 30.770012, 23.519211>,  <34.303196, 31.071674, 23.348242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103771, 30.770012, 23.519211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274989, 0.330014, 0.903035,
		-0.822083, 0.567753, 0.042853,
		-0.498559, -0.754154, 0.427424,
		33.954205, 30.543766, 23.647438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196541, 31.319132, 23.980011>,  <34.303196, 31.071674, 23.348242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196541, 31.319132, 23.980011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123447, 30.931774, 24.047915>,  <34.079594, 30.699360, 24.088655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123447, 30.931774, 24.047915>,  <34.196541, 31.319132, 23.980011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123447, 30.931774, 24.047915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383407, 0.088804, 0.919300,
		-0.905322, 0.233071, 0.355062,
		-0.182731, -0.968397, 0.169757,
		34.068626, 30.641254, 24.098841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945198, 31.276272, 24.677090>,  <34.196541, 31.319132, 23.980011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945198, 31.276272, 24.677090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102032, 30.920464, 24.583261>,  <34.196133, 30.706978, 24.526964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102032, 30.920464, 24.583261>,  <33.945198, 31.276272, 24.677090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102032, 30.920464, 24.583261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484841, -0.016884, 0.874439,
		-0.781794, -0.456580, 0.424657,
		0.392082, -0.889522, -0.234568,
		34.219658, 30.653606, 24.512892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705559, 30.685736, 25.036537>,  <33.945198, 31.276272, 24.677090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705559, 30.685736, 25.036537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088947, 30.616922, 24.945559>,  <34.318981, 30.575634, 24.890972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088947, 30.616922, 24.945559>,  <33.705559, 30.685736, 25.036537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088947, 30.616922, 24.945559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247815, 0.107763, 0.962795,
		-0.141123, -0.979179, 0.145920,
		0.958474, -0.172034, -0.227447,
		34.376488, 30.565313, 24.877325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916000, 30.068275, 25.333107>,  <33.705559, 30.685736, 25.036537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916000, 30.068275, 25.333107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233757, 30.305935, 25.282625>,  <34.424412, 30.448530, 25.252337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233757, 30.305935, 25.282625>,  <33.916000, 30.068275, 25.333107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233757, 30.305935, 25.282625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233378, -0.106733, 0.966511,
		0.560780, -0.797243, -0.223449,
		0.794393, 0.594148, -0.126205,
		34.472076, 30.484179, 25.244764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507645, 29.718332, 25.534351>,  <33.916000, 30.068275, 25.333107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507645, 29.718332, 25.534351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595627, 30.107782, 25.558603>,  <34.648415, 30.341452, 25.573154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595627, 30.107782, 25.558603>,  <34.507645, 29.718332, 25.534351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595627, 30.107782, 25.558603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238923, -0.114025, 0.964320,
		0.945800, -0.197618, -0.257701,
		0.219952, 0.973625, 0.060629,
		34.661613, 30.399870, 25.576792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043705, 29.791294, 25.923794>,  <34.507645, 29.718332, 25.534351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043705, 29.791294, 25.923794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890965, 30.158339, 25.967943>,  <34.799320, 30.378565, 25.994432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890965, 30.158339, 25.967943>,  <35.043705, 29.791294, 25.923794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890965, 30.158339, 25.967943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207130, -0.031423, 0.977809,
		0.900716, 0.396235, -0.178066,
		-0.381847, 0.917611, 0.110376,
		34.776409, 30.433622, 26.001057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627800, 30.127350, 26.275368>,  <35.043705, 29.791294, 25.923794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627800, 30.127350, 26.275368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296814, 30.348055, 26.317047>,  <35.098221, 30.480478, 26.342054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296814, 30.348055, 26.317047>,  <35.627800, 30.127350, 26.275368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296814, 30.348055, 26.317047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183757, 0.090735, 0.978775,
		0.530597, 0.829051, -0.176471,
		-0.827466, 0.551762, 0.104200,
		35.048573, 30.513584, 26.348307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.480640, 32.873154, 28.026161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.145916, 32.957100, 28.228434>,  <39.945084, 33.007465, 28.349796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.145916, 32.957100, 28.228434>,  <40.480640, 32.873154, 28.026161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145916, 32.957100, 28.228434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535913, 0.502972, 0.678098,
		-0.112036, 0.838437, -0.533358,
		-0.836807, 0.209862, 0.505680,
		39.894875, 33.020058, 28.380138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555355, 33.552250, 28.256737>,  <40.480640, 32.873154, 28.026161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555355, 33.552250, 28.256737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274467, 33.435600, 28.516535>,  <40.105934, 33.365608, 28.672415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274467, 33.435600, 28.516535>,  <40.555355, 33.552250, 28.256737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274467, 33.435600, 28.516535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497238, 0.452023, 0.740560,
		-0.509555, 0.842988, -0.172410,
		-0.702216, -0.291628, 0.649497,
		40.063801, 33.348110, 28.711384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528084, 34.104481, 28.811426>,  <40.555355, 33.552250, 28.256737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528084, 34.104481, 28.811426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311474, 33.808250, 28.970575>,  <40.181507, 33.630512, 29.066065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311474, 33.808250, 28.970575>,  <40.528084, 34.104481, 28.811426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311474, 33.808250, 28.970575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183140, 0.357985, 0.915591,
		-0.820497, 0.568678, -0.058227,
		-0.541521, -0.740575, 0.397873,
		40.149017, 33.586079, 29.089937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138531, 34.458305, 29.268929>,  <40.528084, 34.104481, 28.811426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138531, 34.458305, 29.268929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117634, 34.077446, 29.389385>,  <40.105095, 33.848930, 29.461660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117634, 34.077446, 29.389385>,  <40.138531, 34.458305, 29.268929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117634, 34.077446, 29.389385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066639, 0.304207, 0.950272,
		-0.996408, 0.029579, -0.079343,
		-0.052245, -0.952147, 0.301143,
		40.101959, 33.791801, 29.479729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604427, 34.501507, 29.746094>,  <40.138531, 34.458305, 29.268929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604427, 34.501507, 29.746094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810131, 34.165165, 29.813614>,  <39.933552, 33.963360, 29.854126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810131, 34.165165, 29.813614>,  <39.604427, 34.501507, 29.746094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810131, 34.165165, 29.813614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130960, 0.271504, 0.953486,
		-0.847576, -0.468234, 0.249743,
		0.514261, -0.840858, 0.168801,
		39.964409, 33.912907, 29.864254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237473, 34.210693, 30.224298>,  <39.604427, 34.501507, 29.746094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237473, 34.210693, 30.224298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604141, 34.051670, 30.240623>,  <39.824142, 33.956257, 30.250418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604141, 34.051670, 30.240623>,  <39.237473, 34.210693, 30.224298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604141, 34.051670, 30.240623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054327, 0.225125, 0.972814,
		-0.395940, -0.889530, 0.227963,
		0.916668, -0.397560, 0.040811,
		39.879143, 33.932404, 30.252867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074982, 33.658367, 30.725910>,  <39.237473, 34.210693, 30.224298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074982, 33.658367, 30.725910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.461887, 33.759880, 30.726522>,  <39.694031, 33.820786, 30.726891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.461887, 33.759880, 30.726522>,  <39.074982, 33.658367, 30.725910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461887, 33.759880, 30.726522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002867, 0.004889, 0.999984,
		0.253769, -0.967250, 0.005456,
		0.967261, 0.253780, 0.001533,
		39.752064, 33.836014, 30.726982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325481, 33.202606, 31.186302>,  <39.074982, 33.658367, 30.725910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325481, 33.202606, 31.186302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579906, 33.510292, 31.161871>,  <39.732563, 33.694904, 31.147213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579906, 33.510292, 31.161871>,  <39.325481, 33.202606, 31.186302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579906, 33.510292, 31.161871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132941, 0.187210, 0.973283,
		0.760100, -0.610948, 0.221338,
		0.636062, 0.769217, -0.061078,
		39.770725, 33.741058, 31.143547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775669, 33.139141, 31.748150>,  <39.325481, 33.202606, 31.186302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775669, 33.139141, 31.748150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808002, 33.519878, 31.629858>,  <39.827404, 33.748322, 31.558884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808002, 33.519878, 31.629858>,  <39.775669, 33.139141, 31.748150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808002, 33.519878, 31.629858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092951, 0.302605, 0.948573,
		0.992384, -0.049191, 0.112937,
		0.080836, 0.951846, -0.295728,
		39.832253, 33.805431, 31.541140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039459, 33.374496, 32.302734>,  <39.775669, 33.139141, 31.748150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039459, 33.374496, 32.302734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.968407, 33.722881, 32.119488>,  <39.925774, 33.931911, 32.009541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.968407, 33.722881, 32.119488>,  <40.039459, 33.374496, 32.302734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968407, 33.722881, 32.119488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130715, 0.482280, 0.866210,
		0.975377, 0.093983, -0.199516,
		-0.177632, 0.870961, -0.458120,
		39.915115, 33.984169, 31.982052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498333, 33.878117, 32.516098>,  <40.039459, 33.374496, 32.302734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498333, 33.878117, 32.516098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197491, 34.099545, 32.373051>,  <40.016983, 34.232403, 32.287224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197491, 34.099545, 32.373051>,  <40.498333, 33.878117, 32.516098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197491, 34.099545, 32.373051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067776, 0.474789, 0.877486,
		0.655546, 0.684202, -0.319573,
		-0.752108, 0.553573, -0.357619,
		39.971859, 34.265617, 32.265766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663250, 34.608669, 32.616478>,  <40.498333, 33.878117, 32.516098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663250, 34.608669, 32.616478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.265549, 34.572052, 32.594307>,  <40.026928, 34.550083, 32.581005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.265549, 34.572052, 32.594307>,  <40.663250, 34.608669, 32.616478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265549, 34.572052, 32.594307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085939, 0.374397, 0.923277,
		-0.063769, 0.922739, -0.380114,
		-0.994257, -0.091543, -0.055425,
		39.967270, 34.544590, 32.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432686, 35.146172, 32.975056>,  <40.663250, 34.608669, 32.616478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432686, 35.146172, 32.975056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087448, 34.947788, 32.936916>,  <39.880306, 34.828758, 32.914032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087448, 34.947788, 32.936916>,  <40.432686, 35.146172, 32.975056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087448, 34.947788, 32.936916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280716, 0.314159, 0.906919,
		-0.419841, 0.809523, -0.410373,
		-0.863095, -0.495960, -0.095349,
		39.828518, 34.799000, 32.908310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804363, 35.580338, 33.234299>,  <40.432686, 35.146172, 32.975056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804363, 35.580338, 33.234299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658653, 35.210564, 33.279415>,  <39.571228, 34.988697, 33.306484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658653, 35.210564, 33.279415>,  <39.804363, 35.580338, 33.234299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658653, 35.210564, 33.279415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401490, 0.265166, 0.876637,
		-0.840305, 0.274049, -0.467744,
		-0.364271, -0.924437, 0.112793,
		39.549374, 34.933231, 33.313251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859692, 35.995251, 32.681675>,  <39.804363, 35.580338, 33.234299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859692, 35.995251, 32.681675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790752, 36.380943, 32.762230>,  <39.749390, 36.612358, 32.810562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790752, 36.380943, 32.762230>,  <39.859692, 35.995251, 32.681675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790752, 36.380943, 32.762230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565265, 0.070619, -0.821881,
		-0.806704, -0.255487, 0.532874,
		-0.172348, 0.964230, 0.201386,
		39.739048, 36.670212, 32.822647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072929, 35.933170, 32.716816>,  <39.859692, 35.995251, 32.681675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072929, 35.933170, 32.716816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201012, 36.301105, 32.626163>,  <39.277863, 36.521866, 32.571770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201012, 36.301105, 32.626163>,  <39.072929, 35.933170, 32.716816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201012, 36.301105, 32.626163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507860, -0.035275, -0.860717,
		-0.799715, 0.390710, 0.455853,
		0.320210, 0.919838, -0.226636,
		39.297073, 36.577057, 32.558174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469379, 36.277813, 32.483883>,  <39.072929, 35.933170, 32.716816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469379, 36.277813, 32.483883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775646, 36.492527, 32.342113>,  <38.959408, 36.621353, 32.257053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775646, 36.492527, 32.342113>,  <38.469379, 36.277813, 32.483883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775646, 36.492527, 32.342113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504727, 0.159798, -0.848360,
		-0.398750, 0.828449, 0.393281,
		0.765669, 0.536783, -0.354422,
		39.005348, 36.653561, 32.235786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172657, 37.000008, 32.263062>,  <38.469379, 36.277813, 32.483883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172657, 37.000008, 32.263062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521202, 36.942520, 32.075417>,  <38.730331, 36.908028, 31.962830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521202, 36.942520, 32.075417>,  <38.172657, 37.000008, 32.263062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521202, 36.942520, 32.075417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443983, 0.175939, -0.878592,
		0.208803, 0.973854, 0.089500,
		0.871367, -0.143716, -0.469111,
		38.782612, 36.899406, 31.934683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198711, 37.421692, 31.702244>,  <38.172657, 37.000008, 32.263062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198711, 37.421692, 31.702244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481579, 37.150711, 31.621277>,  <38.651299, 36.988125, 31.572697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481579, 37.150711, 31.621277>,  <38.198711, 37.421692, 31.702244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481579, 37.150711, 31.621277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236487, 0.043167, -0.970675,
		0.666322, 0.734301, -0.129681,
		0.707170, -0.677450, -0.202416,
		38.693729, 36.947475, 31.560553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640137, 37.706997, 31.191374>,  <38.198711, 37.421692, 31.702244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640137, 37.706997, 31.191374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688049, 37.310165, 31.176210>,  <38.716797, 37.072067, 31.167112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688049, 37.310165, 31.176210>,  <38.640137, 37.706997, 31.191374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688049, 37.310165, 31.176210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235289, 0.008731, -0.971886,
		0.964516, 0.125334, -0.232379,
		0.119782, -0.992076, -0.037911,
		38.723984, 37.012543, 31.164837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153809, 37.563095, 30.746315>,  <38.640137, 37.706997, 31.191374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153809, 37.563095, 30.746315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946018, 37.221634, 30.731249>,  <38.821342, 37.016758, 30.722208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946018, 37.221634, 30.731249>,  <39.153809, 37.563095, 30.746315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946018, 37.221634, 30.731249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244907, 0.190976, -0.950552,
		0.818636, -0.484565, -0.308273,
		-0.519477, -0.853654, -0.037667,
		38.790176, 36.965538, 30.719950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478626, 37.226067, 30.159500>,  <39.153809, 37.563095, 30.746315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478626, 37.226067, 30.159500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124557, 37.054447, 30.231485>,  <38.912117, 36.951477, 30.274677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124557, 37.054447, 30.231485>,  <39.478626, 37.226067, 30.159500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124557, 37.054447, 30.231485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148819, -0.105388, -0.983233,
		0.440817, -0.897114, 0.029436,
		-0.885174, -0.429045, 0.179964,
		38.859005, 36.925735, 30.285475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423439, 36.745502, 29.609213>,  <39.478626, 37.226067, 30.159500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423439, 36.745502, 29.609213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045185, 36.781116, 29.734331>,  <38.818233, 36.802483, 29.809402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045185, 36.781116, 29.734331>,  <39.423439, 36.745502, 29.609213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045185, 36.781116, 29.734331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315888, -0.022723, -0.948524,
		-0.077348, -0.995769, 0.049614,
		-0.945639, 0.089039, 0.312794,
		38.761494, 36.807827, 29.828169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005371, 36.149113, 29.307903>,  <39.423439, 36.745502, 29.609213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005371, 36.149113, 29.307903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718048, 36.410465, 29.403515>,  <38.545654, 36.567276, 29.460882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718048, 36.410465, 29.403515>,  <39.005371, 36.149113, 29.307903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718048, 36.410465, 29.403515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388994, -0.092325, -0.916602,
		-0.576820, -0.751380, 0.320478,
		-0.718305, 0.653379, 0.239027,
		38.502556, 36.606480, 29.475224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380066, 35.883995, 29.071615>,  <39.005371, 36.149113, 29.307903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380066, 35.883995, 29.071615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283600, 36.269577, 29.116570>,  <38.225719, 36.500927, 29.143543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283600, 36.269577, 29.116570>,  <38.380066, 35.883995, 29.071615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283600, 36.269577, 29.116570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638588, -0.070421, -0.766320,
		-0.730783, -0.256582, 0.632552,
		-0.241168, 0.963953, 0.112387,
		38.211250, 36.558762, 29.150286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554440, 35.906883, 29.025471>,  <38.380066, 35.883995, 29.071615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554440, 35.906883, 29.025471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694237, 36.265800, 28.917606>,  <37.778114, 36.481152, 28.852888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694237, 36.265800, 28.917606>,  <37.554440, 35.906883, 29.025471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694237, 36.265800, 28.917606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435649, -0.099178, -0.894636,
		-0.829496, 0.430149, 0.356242,
		0.349495, 0.897294, -0.269662,
		37.799084, 36.534988, 28.836708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014008, 36.236691, 28.806421>,  <37.554440, 35.906883, 29.025471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014008, 36.236691, 28.806421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330357, 36.416496, 28.640308>,  <37.520164, 36.524380, 28.540640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330357, 36.416496, 28.640308>,  <37.014008, 36.236691, 28.806421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330357, 36.416496, 28.640308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328820, -0.260183, -0.907845,
		-0.516141, 0.854540, -0.057961,
		0.790870, 0.449517, -0.415282,
		37.567619, 36.551350, 28.515724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771790, 36.596565, 28.217470>,  <37.014008, 36.236691, 28.806421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771790, 36.596565, 28.217470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163620, 36.576233, 28.139650>,  <37.398720, 36.564034, 28.092958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163620, 36.576233, 28.139650>,  <36.771790, 36.596565, 28.217470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163620, 36.576233, 28.139650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199111, -0.110200, -0.973761,
		0.028055, 0.992609, -0.118070,
		0.979575, -0.050828, -0.194547,
		37.457493, 36.560986, 28.081285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565639, 37.325294, 28.283722>,  <36.771790, 36.596565, 28.217470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565639, 37.325294, 28.283722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.191734, 37.423195, 28.180708>,  <35.967392, 37.481934, 28.118900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.191734, 37.423195, 28.180708>,  <36.565639, 37.325294, 28.283722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191734, 37.423195, 28.180708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179014, 0.301672, 0.936455,
		0.306888, 0.921461, -0.238177,
		-0.934758, 0.244750, -0.257535,
		35.911308, 37.496620, 28.103447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498863, 38.050941, 28.551094>,  <36.565639, 37.325294, 28.283722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498863, 38.050941, 28.551094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128864, 37.911514, 28.490593>,  <35.906864, 37.827858, 28.454292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128864, 37.911514, 28.490593>,  <36.498863, 38.050941, 28.551094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128864, 37.911514, 28.490593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318844, 0.495520, 0.807960,
		-0.206681, 0.795588, -0.569494,
		-0.924998, -0.348569, -0.151254,
		35.851364, 37.806942, 28.445217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984943, 38.608269, 28.669334>,  <36.498863, 38.050941, 28.551094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984943, 38.608269, 28.669334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.731754, 38.300255, 28.701311>,  <35.579842, 38.115444, 28.720497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.731754, 38.300255, 28.701311>,  <35.984943, 38.608269, 28.669334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731754, 38.300255, 28.701311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344869, 0.372907, 0.861398,
		-0.693119, 0.517670, -0.501601,
		-0.632970, -0.770038, 0.079941,
		35.541862, 38.069244, 28.725294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392242, 38.928658, 28.973255>,  <35.984943, 38.608269, 28.669334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392242, 38.928658, 28.973255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.355713, 38.536880, 29.045197>,  <35.333797, 38.301815, 29.088362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.355713, 38.536880, 29.045197>,  <35.392242, 38.928658, 28.973255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355713, 38.536880, 29.045197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415614, 0.201611, 0.886915,
		-0.904945, 0.006245, -0.425483,
		-0.091320, -0.979446, 0.179851,
		35.328316, 38.243046, 29.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645847, 38.737690, 29.272289>,  <35.392242, 38.928658, 28.973255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645847, 38.737690, 29.272289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.886665, 38.435780, 29.376484>,  <35.031155, 38.254631, 29.439001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.886665, 38.435780, 29.376484>,  <34.645847, 38.737690, 29.272289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886665, 38.435780, 29.376484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454048, -0.055268, 0.889262,
		-0.656799, -0.653648, -0.375979,
		0.602043, -0.754778, 0.260487,
		35.067280, 38.209347, 29.454630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130100, 38.074593, 29.348755>,  <34.645847, 38.737690, 29.272289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130100, 38.074593, 29.348755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.473270, 38.064777, 29.554029>,  <34.679173, 38.058887, 29.677195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.473270, 38.064777, 29.554029>,  <34.130100, 38.074593, 29.348755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473270, 38.064777, 29.554029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498411, -0.282181, 0.819732,
		0.124697, -0.959047, -0.254320,
		0.857926, -0.024538, 0.513187,
		34.730648, 38.057415, 29.707985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974934, 37.586315, 29.827974>,  <34.130100, 38.074593, 29.348755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974934, 37.586315, 29.827974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.294140, 37.779797, 29.971756>,  <34.485664, 37.895885, 30.058025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.294140, 37.779797, 29.971756>,  <33.974934, 37.586315, 29.827974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294140, 37.779797, 29.971756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303219, -0.193185, 0.933133,
		0.520798, -0.853647, -0.007498,
		0.798015, 0.483700, 0.359453,
		34.533543, 37.924908, 30.079592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173801, 37.135025, 30.345064>,  <33.974934, 37.586315, 29.827974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173801, 37.135025, 30.345064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.340248, 37.483585, 30.448990>,  <34.440117, 37.692722, 30.511345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.340248, 37.483585, 30.448990>,  <34.173801, 37.135025, 30.345064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340248, 37.483585, 30.448990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176530, -0.202874, 0.963161,
		0.892009, -0.446657, 0.069408,
		0.416121, 0.871401, 0.259813,
		34.465084, 37.745007, 30.526934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497044, 36.902977, 30.843170>,  <34.173801, 37.135025, 30.345064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497044, 36.902977, 30.843170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505085, 37.295540, 30.919523>,  <34.509911, 37.531078, 30.965334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.505085, 37.295540, 30.919523>,  <34.497044, 36.902977, 30.843170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505085, 37.295540, 30.919523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270051, -0.178492, 0.946157,
		0.962636, -0.070572, 0.261441,
		0.020107, 0.981407, 0.190881,
		34.511116, 37.589962, 30.976788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779011, 37.038536, 31.496437>,  <34.497044, 36.902977, 30.843170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779011, 37.038536, 31.496437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.608917, 37.398354, 31.456448>,  <34.506863, 37.614246, 31.432453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.608917, 37.398354, 31.456448>,  <34.779011, 37.038536, 31.496437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608917, 37.398354, 31.456448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168364, 0.029913, 0.985271,
		0.889288, 0.435799, 0.138732,
		-0.425230, 0.899547, -0.099975,
		34.481350, 37.668217, 31.426455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979473, 37.335159, 32.100746>,  <34.779011, 37.038536, 31.496437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979473, 37.335159, 32.100746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.666317, 37.542698, 31.963417>,  <34.478424, 37.667221, 31.881020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.666317, 37.542698, 31.963417>,  <34.979473, 37.335159, 32.100746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666317, 37.542698, 31.963417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426260, -0.045363, 0.903462,
		0.453188, 0.853660, 0.256680,
		-0.782894, 0.518851, -0.343324,
		34.431450, 37.698353, 31.860420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942951, 37.979305, 32.409374>,  <34.979473, 37.335159, 32.100746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942951, 37.979305, 32.409374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.573254, 37.867001, 32.305874>,  <34.351437, 37.799618, 32.243774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.573254, 37.867001, 32.305874>,  <34.942951, 37.979305, 32.409374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573254, 37.867001, 32.305874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327811, 0.236052, 0.914778,
		-0.195757, 0.930296, -0.310206,
		-0.924240, -0.280763, -0.258752,
		34.295982, 37.782772, 32.228249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.028919, 37.614628, 24.104122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681973, 37.443382, 24.205620>,  <35.473804, 37.340633, 24.266520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681973, 37.443382, 24.205620>,  <36.028919, 37.614628, 24.104122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681973, 37.443382, 24.205620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038070, 0.565454, 0.823901,
		-0.496209, 0.704965, -0.506756,
		-0.867368, -0.428119, 0.253745,
		35.421761, 37.314945, 24.281744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775299, 38.155689, 24.513191>,  <36.028919, 37.614628, 24.104122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775299, 38.155689, 24.513191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592587, 37.811455, 24.603289>,  <35.482960, 37.604912, 24.657347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592587, 37.811455, 24.603289>,  <35.775299, 38.155689, 24.513191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592587, 37.811455, 24.603289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128438, 0.314352, 0.940578,
		-0.880258, 0.400709, -0.254123,
		-0.456782, -0.860590, 0.225244,
		35.455551, 37.553276, 24.670862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133434, 38.358967, 25.038296>,  <35.775299, 38.155689, 24.513191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133434, 38.358967, 25.038296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243351, 37.979416, 25.100422>,  <35.309299, 37.751686, 25.137697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243351, 37.979416, 25.100422>,  <35.133434, 38.358967, 25.038296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243351, 37.979416, 25.100422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167994, 0.206431, 0.963932,
		-0.946716, -0.238784, 0.216131,
		0.274787, -0.948878, 0.155317,
		35.325787, 37.694752, 25.147017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824154, 38.255360, 25.645090>,  <35.133434, 38.358967, 25.038296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824154, 38.255360, 25.645090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066280, 37.938850, 25.610483>,  <35.211555, 37.748947, 25.589720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066280, 37.938850, 25.610483>,  <34.824154, 38.255360, 25.645090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066280, 37.938850, 25.610483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053341, -0.148770, 0.987432,
		-0.794198, -0.593091, -0.132260,
		0.605314, -0.791271, -0.086516,
		35.247875, 37.701469, 25.584528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530014, 37.795803, 26.033604>,  <34.824154, 38.255360, 25.645090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530014, 37.795803, 26.033604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919643, 37.706459, 26.019272>,  <35.153423, 37.652851, 26.010674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919643, 37.706459, 26.019272>,  <34.530014, 37.795803, 26.033604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919643, 37.706459, 26.019272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007030, -0.188195, 0.982106,
		-0.226112, -0.956394, -0.184887,
		0.974076, -0.223366, -0.035830,
		35.211868, 37.639450, 26.008524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668736, 37.114918, 26.405661>,  <34.530014, 37.795803, 26.033604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668736, 37.114918, 26.405661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048031, 37.241909, 26.408426>,  <35.275608, 37.318104, 26.410086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048031, 37.241909, 26.408426>,  <34.668736, 37.114918, 26.405661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048031, 37.241909, 26.408426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009706, -0.050740, 0.998665,
		0.317407, -0.946907, -0.051195,
		0.948240, 0.317480, 0.006914,
		35.332504, 37.337154, 26.410501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061241, 36.674129, 26.985683>,  <34.668736, 37.114918, 26.405661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061241, 36.674129, 26.985683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266651, 37.012486, 26.928036>,  <35.389896, 37.215500, 26.893446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266651, 37.012486, 26.928036>,  <35.061241, 36.674129, 26.985683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266651, 37.012486, 26.928036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322210, -0.034422, 0.946042,
		0.795284, -0.532250, -0.290230,
		0.513521, 0.845887, -0.144121,
		35.420708, 37.266251, 26.884800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568493, 36.542938, 27.468037>,  <35.061241, 36.674129, 26.985683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568493, 36.542938, 27.468037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601799, 36.932564, 27.383877>,  <35.621784, 37.166340, 27.333382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601799, 36.932564, 27.383877>,  <35.568493, 36.542938, 27.468037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601799, 36.932564, 27.383877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324766, 0.173081, 0.929823,
		0.942122, -0.145753, -0.301930,
		0.083266, 0.974063, -0.210399,
		35.626778, 37.224781, 27.320757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177402, 36.736950, 27.805630>,  <35.568493, 36.542938, 27.468037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177402, 36.736950, 27.805630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952198, 37.062420, 27.747728>,  <35.817074, 37.257702, 27.712988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952198, 37.062420, 27.747728>,  <36.177402, 36.736950, 27.805630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952198, 37.062420, 27.747728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072998, 0.223425, 0.971984,
		0.823218, 0.536673, -0.185188,
		-0.563013, 0.813673, -0.144751,
		35.783295, 37.306522, 27.704304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774353, 37.045444, 27.618847>,  <36.177402, 36.736950, 27.805630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774353, 37.045444, 27.618847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084766, 36.796684, 27.660816>,  <37.271015, 36.647427, 27.685997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084766, 36.796684, 27.660816>,  <36.774353, 37.045444, 27.618847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084766, 36.796684, 27.660816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172127, -0.368887, -0.913397,
		0.606746, 0.690769, -0.393316,
		0.776035, -0.621901, 0.104921,
		37.317577, 36.610115, 27.692293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138000, 37.115402, 26.890036>,  <36.774353, 37.045444, 27.618847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138000, 37.115402, 26.890036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274044, 36.783779, 27.067566>,  <37.355671, 36.584805, 27.174084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274044, 36.783779, 27.067566>,  <37.138000, 37.115402, 26.890036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274044, 36.783779, 27.067566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093089, -0.439960, -0.893179,
		0.935766, 0.345096, -0.072459,
		0.340112, -0.829062, 0.443825,
		37.376076, 36.535061, 27.200714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772018, 36.926060, 26.529747>,  <37.138000, 37.115402, 26.890036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772018, 36.926060, 26.529747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660397, 36.585033, 26.706499>,  <37.593422, 36.380417, 26.812550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660397, 36.585033, 26.706499>,  <37.772018, 36.926060, 26.529747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660397, 36.585033, 26.706499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172186, -0.497126, -0.850422,
		0.944712, -0.161227, 0.285525,
		-0.279053, -0.852567, 0.441880,
		37.576679, 36.329262, 26.839064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345352, 36.419647, 26.479031>,  <37.772018, 36.926060, 26.529747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345352, 36.419647, 26.479031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015553, 36.198772, 26.528492>,  <37.817673, 36.066246, 26.558168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015553, 36.198772, 26.528492>,  <38.345352, 36.419647, 26.479031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015553, 36.198772, 26.528492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180245, -0.463420, -0.867614,
		0.536389, -0.693059, 0.481618,
		-0.824499, -0.552188, 0.123653,
		37.768204, 36.033115, 26.565588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534966, 35.670937, 26.422270>,  <38.345352, 36.419647, 26.479031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534966, 35.670937, 26.422270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143688, 35.690948, 26.341646>,  <37.908920, 35.702957, 26.293272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143688, 35.690948, 26.341646>,  <38.534966, 35.670937, 26.422270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143688, 35.690948, 26.341646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161018, -0.430257, -0.888230,
		-0.131160, -0.901319, 0.412821,
		-0.978198, 0.050029, -0.201561,
		37.850227, 35.705956, 26.281178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410957, 35.088486, 25.927101>,  <38.534966, 35.670937, 26.422270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410957, 35.088486, 25.927101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068016, 35.291626, 25.893551>,  <37.862251, 35.413509, 25.873421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068016, 35.291626, 25.893551>,  <38.410957, 35.088486, 25.927101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068016, 35.291626, 25.893551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179615, -0.447879, -0.875867,
		-0.482379, -0.735859, 0.475207,
		-0.857350, 0.507854, -0.083876,
		37.810810, 35.443981, 25.868389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028095, 34.579048, 25.639582>,  <38.410957, 35.088486, 25.927101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028095, 34.579048, 25.639582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827999, 34.918472, 25.570639>,  <37.707939, 35.122128, 25.529274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827999, 34.918472, 25.570639>,  <38.028095, 34.579048, 25.639582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827999, 34.918472, 25.570639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246091, -0.330170, -0.911278,
		-0.830179, -0.413445, 0.373987,
		-0.500243, 0.848558, -0.172356,
		37.677925, 35.173038, 25.518932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323914, 34.382832, 25.421297>,  <38.028095, 34.579048, 25.639582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323914, 34.382832, 25.421297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390972, 34.751606, 25.281622>,  <37.431206, 34.972870, 25.197817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390972, 34.751606, 25.281622>,  <37.323914, 34.382832, 25.421297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390972, 34.751606, 25.281622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153106, -0.325556, -0.933045,
		-0.973886, 0.209884, 0.086576,
		0.167646, 0.921934, -0.349188,
		37.441265, 35.028187, 25.176865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860634, 34.511765, 24.917297>,  <37.323914, 34.382832, 25.421297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860634, 34.511765, 24.917297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118725, 34.802372, 24.822767>,  <37.273579, 34.976738, 24.766050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118725, 34.802372, 24.822767>,  <36.860634, 34.511765, 24.917297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118725, 34.802372, 24.822767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292660, -0.050690, -0.954872,
		-0.705714, 0.685272, 0.179917,
		0.645227, 0.726521, -0.236324,
		37.312294, 35.020329, 24.751869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446167, 34.871975, 24.470049>,  <36.860634, 34.511765, 24.917297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446167, 34.871975, 24.470049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828136, 34.976326, 24.413391>,  <37.057320, 35.038937, 24.379396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828136, 34.976326, 24.413391>,  <36.446167, 34.871975, 24.470049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828136, 34.976326, 24.413391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201242, 0.218144, -0.954942,
		-0.218223, 0.940403, 0.260811,
		0.954924, 0.260876, -0.141645,
		37.114613, 35.054588, 24.370897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471928, 35.345921, 23.915367>,  <36.446167, 34.871975, 24.470049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471928, 35.345921, 23.915367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854870, 35.231262, 23.929859>,  <37.084633, 35.162468, 23.938555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854870, 35.231262, 23.929859>,  <36.471928, 35.345921, 23.915367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854870, 35.231262, 23.929859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037567, -0.000829, -0.999294,
		0.286474, 0.958036, 0.009975,
		0.957351, -0.286646, 0.036228,
		37.142075, 35.145267, 23.940727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823360, 35.746624, 23.367392>,  <36.471928, 35.345921, 23.915367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823360, 35.746624, 23.367392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076698, 35.445793, 23.440329>,  <37.228703, 35.265293, 23.484091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076698, 35.445793, 23.440329>,  <36.823360, 35.746624, 23.367392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076698, 35.445793, 23.440329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122496, -0.330084, -0.935970,
		0.764115, 0.570454, -0.301183,
		0.633343, -0.752082, 0.182344,
		37.266701, 35.220169, 23.495031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449135, 35.843346, 22.957764>,  <36.823360, 35.746624, 23.367392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449135, 35.843346, 22.957764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380890, 35.456360, 23.032494>,  <37.339943, 35.224167, 23.077332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380890, 35.456360, 23.032494>,  <37.449135, 35.843346, 22.957764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380890, 35.456360, 23.032494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066139, -0.200423, -0.977475,
		0.983117, -0.154408, 0.098181,
		-0.170608, -0.967465, 0.186827,
		37.329708, 35.166119, 23.088541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928795, 35.450737, 22.578449>,  <37.449135, 35.843346, 22.957764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928795, 35.450737, 22.578449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629883, 35.196304, 22.655350>,  <37.450535, 35.043644, 22.701490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629883, 35.196304, 22.655350>,  <37.928795, 35.450737, 22.578449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629883, 35.196304, 22.655350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063365, -0.219785, -0.973488,
		0.661476, -0.739655, 0.123936,
		-0.747285, -0.636086, 0.192250,
		37.405697, 35.005478, 22.713024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.278254, 30.828283, 25.250113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.434235, 31.195898, 25.227100>,  <31.527822, 31.416468, 25.213293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.434235, 31.195898, 25.227100>,  <31.278254, 30.828283, 25.250113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434235, 31.195898, 25.227100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236967, -0.039782, 0.970703,
		0.889823, -0.392160, -0.233295,
		0.389951, 0.919037, -0.057530,
		31.551220, 31.471609, 25.209841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892977, 30.785269, 25.567549>,  <31.278254, 30.828283, 25.250113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892977, 30.785269, 25.567549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.811230, 31.175104, 25.604229>,  <31.762180, 31.409006, 25.626236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.811230, 31.175104, 25.604229>,  <31.892977, 30.785269, 25.567549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811230, 31.175104, 25.604229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356834, -0.013059, 0.934077,
		0.911539, 0.223618, -0.345097,
		-0.204369, 0.974589, 0.091699,
		31.749920, 31.467482, 25.631739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476067, 31.017973, 25.822367>,  <31.892977, 30.785269, 25.567549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476067, 31.017973, 25.822367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.221176, 31.310862, 25.918535>,  <32.068241, 31.486595, 25.976236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.221176, 31.310862, 25.918535>,  <32.476067, 31.017973, 25.822367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221176, 31.310862, 25.918535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418256, 0.066549, 0.905888,
		0.647310, 0.677809, -0.348663,
		-0.637222, 0.732220, 0.240420,
		32.030010, 31.530527, 25.990662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885517, 31.555212, 26.086496>,  <32.476067, 31.017973, 25.822367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885517, 31.555212, 26.086496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.517818, 31.658644, 26.205233>,  <32.297199, 31.720703, 26.276474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.517818, 31.658644, 26.205233>,  <32.885517, 31.555212, 26.086496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517818, 31.658644, 26.205233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367762, 0.295023, 0.881880,
		0.140460, 0.919836, -0.366295,
		-0.919251, 0.258578, 0.296842,
		32.242043, 31.736217, 26.294285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914719, 32.216000, 26.317900>,  <32.885517, 31.555212, 26.086496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914719, 32.216000, 26.317900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587254, 32.068516, 26.494013>,  <32.390774, 31.980024, 26.599680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587254, 32.068516, 26.494013>,  <32.914719, 32.216000, 26.317900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587254, 32.068516, 26.494013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287155, 0.401122, 0.869852,
		-0.497330, 0.838543, -0.222506,
		-0.818660, -0.368710, 0.440282,
		32.341656, 31.957903, 26.626097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617218, 32.714882, 26.856636>,  <32.914719, 32.216000, 26.317900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617218, 32.714882, 26.856636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.452320, 32.369198, 26.972004>,  <32.353382, 32.161785, 27.041225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.452320, 32.369198, 26.972004>,  <32.617218, 32.714882, 26.856636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452320, 32.369198, 26.972004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081155, 0.280483, 0.956422,
		-0.907450, 0.417690, -0.045493,
		-0.412248, -0.864213, 0.288422,
		32.328648, 32.109932, 27.058531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359699, 33.017620, 27.410034>,  <32.617218, 32.714882, 26.856636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359699, 33.017620, 27.410034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341370, 32.625248, 27.485580>,  <32.330372, 32.389824, 27.530909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341370, 32.625248, 27.485580>,  <32.359699, 33.017620, 27.410034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341370, 32.625248, 27.485580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006037, 0.189335, 0.981894,
		-0.998931, 0.043856, -0.014599,
		-0.045826, -0.980933, 0.188868,
		32.327621, 32.330967, 27.542240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824085, 32.988991, 27.938120>,  <32.359699, 33.017620, 27.410034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824085, 32.988991, 27.938120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.046623, 32.657745, 27.965574>,  <32.180145, 32.459000, 27.982046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.046623, 32.657745, 27.965574>,  <31.824085, 32.988991, 27.938120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046623, 32.657745, 27.965574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174720, 0.197332, 0.964641,
		-0.812376, -0.524680, 0.254472,
		0.556344, -0.828112, 0.068636,
		32.213528, 32.409313, 27.986164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722853, 32.789268, 28.561340>,  <31.824085, 32.988991, 27.938120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722853, 32.789268, 28.561340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038818, 32.571079, 28.449276>,  <32.228397, 32.440166, 28.382038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038818, 32.571079, 28.449276>,  <31.722853, 32.789268, 28.561340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038818, 32.571079, 28.449276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266010, -0.106840, 0.958031,
		-0.552514, -0.831290, 0.060708,
		0.789916, -0.545475, -0.280162,
		32.275795, 32.407436, 28.365227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774513, 32.192932, 29.014910>,  <31.722853, 32.789268, 28.561340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774513, 32.192932, 29.014910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.147842, 32.272934, 28.895641>,  <32.371841, 32.320934, 28.824081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.147842, 32.272934, 28.895641>,  <31.774513, 32.192932, 29.014910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147842, 32.272934, 28.895641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316277, -0.064939, 0.946442,
		0.169930, -0.977640, -0.123866,
		0.933323, 0.200005, -0.298170,
		32.427841, 32.332935, 28.806190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112473, 31.732458, 29.429705>,  <31.774513, 32.192932, 29.014910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112473, 31.732458, 29.429705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416340, 31.952862, 29.291548>,  <32.598660, 32.085102, 29.208654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416340, 31.952862, 29.291548>,  <32.112473, 31.732458, 29.429705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416340, 31.952862, 29.291548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387338, 0.043248, 0.920923,
		0.522373, -0.833379, -0.180572,
		0.759668, 0.551008, -0.345391,
		32.644241, 32.118164, 29.187931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779877, 31.440176, 29.513668>,  <32.112473, 31.732458, 29.429705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779877, 31.440176, 29.513668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.875443, 31.828468, 29.503839>,  <32.932781, 32.061443, 29.497942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.875443, 31.828468, 29.503839>,  <32.779877, 31.440176, 29.513668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875443, 31.828468, 29.503839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313784, -0.053235, 0.948001,
		0.918944, -0.234203, -0.317318,
		0.238917, 0.970729, -0.024569,
		32.947117, 32.119686, 29.496469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353619, 31.454988, 29.964626>,  <32.779877, 31.440176, 29.513668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353619, 31.454988, 29.964626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.227871, 31.830288, 29.906855>,  <33.152420, 32.055470, 29.872192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.227871, 31.830288, 29.906855>,  <33.353619, 31.454988, 29.964626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227871, 31.830288, 29.906855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346184, 0.254974, 0.902854,
		0.883927, 0.233833, -0.404963,
		-0.314372, 0.938249, -0.144429,
		33.133560, 32.111763, 29.863525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901028, 31.925428, 30.248121>,  <33.353619, 31.454988, 29.964626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901028, 31.925428, 30.248121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570122, 32.148102, 30.217819>,  <33.371578, 32.281704, 30.199638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570122, 32.148102, 30.217819>,  <33.901028, 31.925428, 30.248121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570122, 32.148102, 30.217819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147788, 0.345719, 0.926627,
		0.542025, 0.755370, -0.368272,
		-0.827265, 0.556681, -0.075754,
		33.321941, 32.315105, 30.195093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458866, 32.403370, 30.031918>,  <33.901028, 31.925428, 30.248121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458866, 32.403370, 30.031918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.842697, 32.295914, 29.998339>,  <35.072994, 32.231441, 29.978191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.842697, 32.295914, 29.998339>,  <34.458866, 32.403370, 30.031918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842697, 32.295914, 29.998339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164468, -0.293170, -0.941808,
		0.228394, 0.917543, -0.325501,
		0.959576, -0.268638, -0.083949,
		35.130569, 32.215321, 29.973154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742809, 32.744576, 29.350817>,  <34.458866, 32.403370, 30.031918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742809, 32.744576, 29.350817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967728, 32.439056, 29.477579>,  <35.102680, 32.255745, 29.553637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967728, 32.439056, 29.477579>,  <34.742809, 32.744576, 29.350817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967728, 32.439056, 29.477579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068522, -0.424947, -0.902621,
		0.824090, 0.485828, -0.291285,
		0.562299, -0.763800, 0.316904,
		35.136417, 32.209915, 29.572651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295105, 32.671074, 28.849304>,  <34.742809, 32.744576, 29.350817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295105, 32.671074, 28.849304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288048, 32.316002, 29.033356>,  <35.283813, 32.102959, 29.143785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288048, 32.316002, 29.033356>,  <35.295105, 32.671074, 28.849304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288048, 32.316002, 29.033356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006932, -0.460079, -0.887851,
		0.999820, -0.018850, 0.001962,
		-0.017639, -0.887678, 0.460127,
		35.282757, 32.049698, 29.171394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982559, 32.198990, 28.704870>,  <35.295105, 32.671074, 28.849304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982559, 32.198990, 28.704870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.660984, 31.977644, 28.792019>,  <35.468037, 31.844837, 28.844309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.660984, 31.977644, 28.792019>,  <35.982559, 32.198990, 28.704870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660984, 31.977644, 28.792019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050383, -0.428410, -0.902179,
		0.592570, -0.714322, 0.372297,
		-0.803941, -0.553362, 0.217873,
		35.419800, 31.811636, 28.857380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154236, 31.669979, 28.269846>,  <35.982559, 32.198990, 28.704870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154236, 31.669979, 28.269846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.798138, 31.582449, 28.429632>,  <35.584476, 31.529930, 28.525503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.798138, 31.582449, 28.429632>,  <36.154236, 31.669979, 28.269846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798138, 31.582449, 28.429632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203126, -0.594240, -0.778215,
		0.407673, -0.773946, 0.484572,
		-0.890249, -0.218828, 0.399465,
		35.531063, 31.516800, 28.549471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082127, 30.921747, 28.226168>,  <36.154236, 31.669979, 28.269846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082127, 30.921747, 28.226168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711430, 31.071611, 28.237341>,  <35.489010, 31.161530, 28.244045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711430, 31.071611, 28.237341>,  <36.082127, 30.921747, 28.226168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711430, 31.071611, 28.237341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236300, -0.523470, -0.818622,
		-0.292083, -0.765252, 0.573653,
		-0.926742, 0.374659, 0.027933,
		35.433407, 31.184010, 28.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663967, 30.355511, 28.175604>,  <36.082127, 30.921747, 28.226168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663967, 30.355511, 28.175604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.480862, 30.683241, 28.037529>,  <35.370998, 30.879879, 27.954683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.480862, 30.683241, 28.037529>,  <35.663967, 30.355511, 28.175604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480862, 30.683241, 28.037529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134313, -0.447531, -0.884124,
		-0.878869, -0.358358, 0.314911,
		-0.457766, 0.819326, -0.345189,
		35.343533, 30.929039, 27.933971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124352, 30.128403, 27.765938>,  <35.663967, 30.355511, 28.175604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124352, 30.128403, 27.765938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105385, 30.507130, 27.638634>,  <35.094006, 30.734365, 27.562252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105385, 30.507130, 27.638634>,  <35.124352, 30.128403, 27.765938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105385, 30.507130, 27.638634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357902, -0.313569, -0.879534,
		-0.932554, 0.072199, 0.353736,
		-0.047419, 0.946817, -0.318261,
		35.091160, 30.791174, 27.543156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450920, 30.211960, 27.434235>,  <35.124352, 30.128403, 27.765938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450920, 30.211960, 27.434235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.676334, 30.508274, 27.287994>,  <34.811584, 30.686062, 27.200251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.676334, 30.508274, 27.287994>,  <34.450920, 30.211960, 27.434235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676334, 30.508274, 27.287994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472632, -0.073851, -0.878160,
		-0.677527, 0.667671, 0.308501,
		0.563538, 0.740785, -0.365599,
		34.845394, 30.730509, 27.178314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007328, 30.563768, 26.968876>,  <34.450920, 30.211960, 27.434235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007328, 30.563768, 26.968876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.388176, 30.648077, 26.880289>,  <34.616684, 30.698662, 26.827137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.388176, 30.648077, 26.880289>,  <34.007328, 30.563768, 26.968876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388176, 30.648077, 26.880289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261488, 0.186051, -0.947106,
		-0.158420, 0.959667, 0.232257,
		0.952117, 0.210773, -0.221467,
		34.673813, 30.711309, 26.813848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003380, 31.215439, 26.580732>,  <34.007328, 30.563768, 26.968876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003380, 31.215439, 26.580732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342228, 31.014679, 26.510902>,  <34.545536, 30.894222, 26.469004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342228, 31.014679, 26.510902>,  <34.003380, 31.215439, 26.580732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342228, 31.014679, 26.510902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004212, 0.322174, -0.946671,
		0.531377, 0.802684, 0.270808,
		0.847125, -0.501899, -0.174577,
		34.596367, 30.864109, 26.458529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434296, 31.644987, 26.198393>,  <34.003380, 31.215439, 26.580732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434296, 31.644987, 26.198393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515202, 31.260122, 26.125364>,  <34.563744, 31.029203, 26.081547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515202, 31.260122, 26.125364>,  <34.434296, 31.644987, 26.198393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515202, 31.260122, 26.125364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025335, 0.181222, -0.983116,
		0.979003, 0.203474, 0.012279,
		0.202264, -0.962163, -0.182572,
		34.575882, 30.971474, 26.070593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970890, 31.630161, 25.704620>,  <34.434296, 31.644987, 26.198393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970890, 31.630161, 25.704620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.877693, 31.242603, 25.671253>,  <34.821774, 31.010069, 25.651232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.877693, 31.242603, 25.671253>,  <34.970890, 31.630161, 25.704620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877693, 31.242603, 25.671253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095757, 0.108222, -0.989504,
		0.967752, -0.222562, -0.117993,
		-0.232996, -0.968893, -0.083420,
		34.807793, 30.951935, 25.646227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444904, 31.339922, 25.178104>,  <34.970890, 31.630161, 25.704620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444904, 31.339922, 25.178104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108376, 31.124512, 25.196718>,  <34.906456, 30.995266, 25.207886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108376, 31.124512, 25.196718>,  <35.444904, 31.339922, 25.178104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108376, 31.124512, 25.196718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039798, -0.147569, -0.988251,
		0.539064, -0.829587, 0.145585,
		-0.841324, -0.538524, 0.046533,
		34.855980, 30.962955, 25.210678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733509, 30.558170, 25.185579>,  <35.444904, 31.339922, 25.178104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733509, 30.558170, 25.185579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023685, 30.607698, 24.914759>,  <36.197792, 30.637415, 24.752266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023685, 30.607698, 24.914759>,  <35.733509, 30.558170, 25.185579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023685, 30.607698, 24.914759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472145, 0.626229, 0.620417,
		0.500810, -0.769744, 0.395833,
		0.725444, 0.123820, -0.677052,
		36.241318, 30.644844, 24.711643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327080, 30.369938, 25.437208>,  <35.733509, 30.558170, 25.185579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327080, 30.369938, 25.437208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.450871, 30.616865, 25.147894>,  <36.525143, 30.765022, 24.974304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.450871, 30.616865, 25.147894>,  <36.327080, 30.369938, 25.437208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450871, 30.616865, 25.147894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503131, 0.539134, 0.675421,
		0.806898, -0.572934, -0.143744,
		0.309474, 0.617318, -0.723287,
		36.543713, 30.802061, 24.930908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998558, 30.435638, 25.624519>,  <36.327080, 30.369938, 25.437208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998558, 30.435638, 25.624519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914028, 30.745199, 25.385715>,  <36.863312, 30.930935, 25.242434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914028, 30.745199, 25.385715>,  <36.998558, 30.435638, 25.624519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914028, 30.745199, 25.385715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597884, 0.585553, 0.547414,
		0.773225, -0.241262, -0.586443,
		-0.211323, 0.773900, -0.597011,
		36.850632, 30.977369, 25.206612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695652, 30.706123, 25.542366>,  <36.998558, 30.435638, 25.624519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695652, 30.706123, 25.542366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461468, 31.004911, 25.416340>,  <37.320957, 31.184185, 25.340725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461468, 31.004911, 25.416340>,  <37.695652, 30.706123, 25.542366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461468, 31.004911, 25.416340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595177, 0.659909, 0.458568,
		0.550450, 0.080957, -0.830933,
		-0.585465, 0.746971, -0.315064,
		37.285828, 31.229002, 25.321821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116722, 31.247879, 25.198505>,  <37.695652, 30.706123, 25.542366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116722, 31.247879, 25.198505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775230, 31.409374, 25.330050>,  <37.570335, 31.506271, 25.408976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775230, 31.409374, 25.330050>,  <38.116722, 31.247879, 25.198505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775230, 31.409374, 25.330050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519124, 0.610433, 0.598232,
		0.040784, 0.681444, -0.730733,
		-0.853725, 0.403740, 0.328858,
		37.519112, 31.530497, 25.428707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358944, 31.910837, 25.451393>,  <38.116722, 31.247879, 25.198505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358944, 31.910837, 25.451393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986557, 31.895210, 25.596592>,  <37.763123, 31.885834, 25.683712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986557, 31.895210, 25.596592>,  <38.358944, 31.910837, 25.451393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986557, 31.895210, 25.596592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281819, 0.555189, 0.782524,
		-0.232105, 0.830806, -0.505854,
		-0.930970, -0.039068, 0.362999,
		37.707268, 31.883490, 25.705492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255234, 32.657688, 25.654131>,  <38.358944, 31.910837, 25.451393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255234, 32.657688, 25.654131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.994522, 32.428997, 25.853453>,  <37.838097, 32.291782, 25.973045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.994522, 32.428997, 25.853453>,  <38.255234, 32.657688, 25.654131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994522, 32.428997, 25.853453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296940, 0.412209, 0.861343,
		-0.697860, 0.709373, -0.098901,
		-0.651780, -0.571729, 0.498305,
		37.798988, 32.257477, 26.002945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937065, 33.147411, 26.144350>,  <38.255234, 32.657688, 25.654131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937065, 33.147411, 26.144350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.866749, 32.793194, 26.316355>,  <37.824558, 32.580662, 26.419558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.866749, 32.793194, 26.316355>,  <37.937065, 33.147411, 26.144350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866749, 32.793194, 26.316355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302042, 0.367227, 0.879724,
		-0.936947, 0.284527, 0.202917,
		-0.175788, -0.885544, 0.430011,
		37.814011, 32.527531, 26.445358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658543, 33.311111, 26.729548>,  <37.937065, 33.147411, 26.144350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658543, 33.311111, 26.729548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797504, 32.938858, 26.775547>,  <37.880882, 32.715504, 26.803146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797504, 32.938858, 26.775547>,  <37.658543, 33.311111, 26.729548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797504, 32.938858, 26.775547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299149, 0.226218, 0.927004,
		-0.888719, -0.287642, 0.356988,
		0.347402, -0.930638, 0.114997,
		37.901726, 32.659668, 26.810045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493324, 33.127399, 27.408588>,  <37.658543, 33.311111, 26.729548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493324, 33.127399, 27.408588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808605, 32.909554, 27.293959>,  <37.997776, 32.778847, 27.225182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808605, 32.909554, 27.293959>,  <37.493324, 33.127399, 27.408588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808605, 32.909554, 27.293959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404734, 0.107954, 0.908040,
		-0.463597, -0.831708, 0.305514,
		0.788206, -0.544616, -0.286574,
		38.045067, 32.746170, 27.207987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690472, 32.791233, 28.027264>,  <37.493324, 33.127399, 27.408588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690472, 32.791233, 28.027264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020821, 32.719646, 27.813385>,  <38.219032, 32.676693, 27.685059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020821, 32.719646, 27.813385>,  <37.690472, 32.791233, 28.027264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020821, 32.719646, 27.813385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541757, -0.010992, 0.840463,
		-0.156294, -0.983794, 0.087879,
		0.825876, -0.178968, -0.534695,
		38.268585, 32.665958, 27.652977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092197, 32.436699, 28.547123>,  <37.690472, 32.791233, 28.027264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092197, 32.436699, 28.547123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339851, 32.563046, 28.259541>,  <38.488445, 32.638851, 28.086990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339851, 32.563046, 28.259541>,  <38.092197, 32.436699, 28.547123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339851, 32.563046, 28.259541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690181, 0.217854, 0.690065,
		0.374594, -0.923456, -0.083121,
		0.619136, 0.315863, -0.718958,
		38.525593, 32.657803, 28.043854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717541, 32.067726, 28.746584>,  <38.092197, 32.436699, 28.547123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717541, 32.067726, 28.746584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.837273, 32.335842, 28.474964>,  <38.909111, 32.496712, 28.311993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.837273, 32.335842, 28.474964>,  <38.717541, 32.067726, 28.746584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837273, 32.335842, 28.474964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851120, 0.134102, 0.507554,
		0.431272, -0.729878, -0.530361,
		0.299329, 0.670295, -0.679048,
		38.927071, 32.536930, 28.271250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454494, 31.870699, 28.615927>,  <38.717541, 32.067726, 28.746584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454494, 31.870699, 28.615927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365601, 32.254051, 28.544239>,  <39.312263, 32.484062, 28.501226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365601, 32.254051, 28.544239>,  <39.454494, 31.870699, 28.615927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365601, 32.254051, 28.544239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576102, 0.277373, 0.768876,
		0.786585, 0.067625, -0.613767,
		-0.222237, 0.958380, -0.179218,
		39.298931, 32.541565, 28.490473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.153183, 34.449535, 22.031681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.769367, 34.426575, 22.141951>,  <37.539078, 34.412800, 22.208113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.769367, 34.426575, 22.141951>,  <38.153183, 34.449535, 22.031681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769367, 34.426575, 22.141951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271473, -0.071453, -0.959790,
		0.074788, -0.995791, 0.052979,
		-0.959536, -0.057398, 0.275674,
		37.481506, 34.409355, 22.224653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832500, 33.749584, 21.894241>,  <38.153183, 34.449535, 22.031681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832500, 33.749584, 21.894241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542633, 34.025021, 21.904879>,  <37.368713, 34.190281, 21.911261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542633, 34.025021, 21.904879>,  <37.832500, 33.749584, 21.894241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542633, 34.025021, 21.904879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349871, -0.334405, -0.875079,
		-0.593676, -0.643443, 0.483248,
		-0.724665, 0.688588, 0.026594,
		37.325233, 34.231598, 21.912857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204247, 33.377373, 21.797653>,  <37.832500, 33.749584, 21.894241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204247, 33.377373, 21.797653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.077778, 33.742329, 21.693665>,  <37.001896, 33.961300, 21.631271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.077778, 33.742329, 21.693665>,  <37.204247, 33.377373, 21.797653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077778, 33.742329, 21.693665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619880, -0.406122, -0.671427,
		-0.718181, -0.051135, 0.693974,
		-0.316172, 0.912387, -0.259972,
		36.982925, 34.016045, 21.615673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534889, 33.321682, 21.555666>,  <37.204247, 33.377373, 21.797653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534889, 33.321682, 21.555666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659588, 33.664707, 21.392006>,  <36.734406, 33.870522, 21.293810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659588, 33.664707, 21.392006>,  <36.534889, 33.321682, 21.555666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659588, 33.664707, 21.392006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395227, -0.274553, -0.876593,
		-0.864066, 0.434981, 0.253340,
		0.311746, 0.857561, -0.409148,
		36.753113, 33.921974, 21.269262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039047, 33.478092, 21.168182>,  <36.534889, 33.321682, 21.555666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039047, 33.478092, 21.168182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317345, 33.718147, 21.010305>,  <36.484322, 33.862179, 20.915579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317345, 33.718147, 21.010305>,  <36.039047, 33.478092, 21.168182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317345, 33.718147, 21.010305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341155, -0.207467, -0.916826,
		-0.632105, 0.772526, 0.060395,
		0.695742, 0.600134, -0.394692,
		36.526066, 33.898190, 20.891897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691029, 33.874348, 20.687471>,  <36.039047, 33.478092, 21.168182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691029, 33.874348, 20.687471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.072575, 33.926582, 20.579334>,  <36.301502, 33.957924, 20.514452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.072575, 33.926582, 20.579334>,  <35.691029, 33.874348, 20.687471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072575, 33.926582, 20.579334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235166, -0.234803, -0.943167,
		-0.186643, 0.963231, -0.193261,
		0.953866, 0.130587, -0.270344,
		36.358734, 33.965759, 20.498232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614178, 34.278976, 20.144638>,  <35.691029, 33.874348, 20.687471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614178, 34.278976, 20.144638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968399, 34.093994, 20.127066>,  <36.180931, 33.983006, 20.116522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968399, 34.093994, 20.127066>,  <35.614178, 34.278976, 20.144638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968399, 34.093994, 20.127066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243112, -0.380783, -0.892133,
		0.395842, 0.800712, -0.449632,
		0.885554, -0.462454, -0.043933,
		36.234066, 33.955257, 20.113886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951012, 34.573566, 19.464167>,  <35.614178, 34.278976, 20.144638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951012, 34.573566, 19.464167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.139542, 34.233624, 19.558489>,  <36.252659, 34.029659, 19.615082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.139542, 34.233624, 19.558489>,  <35.951012, 34.573566, 19.464167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139542, 34.233624, 19.558489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203913, -0.365125, -0.908352,
		0.858065, 0.380042, -0.345387,
		0.471322, -0.849854, 0.235805,
		36.280937, 33.978668, 19.629230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104393, 34.237881, 18.807373>,  <35.951012, 34.573566, 19.464167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104393, 34.237881, 18.807373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169048, 33.916210, 19.036169>,  <36.207840, 33.723209, 19.173447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169048, 33.916210, 19.036169>,  <36.104393, 34.237881, 18.807373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169048, 33.916210, 19.036169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134417, -0.592153, -0.794535,
		0.977653, 0.051542, -0.203810,
		0.161639, -0.804175, 0.571992,
		36.217541, 33.674957, 19.207767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539589, 33.799080, 18.422705>,  <36.104393, 34.237881, 18.807373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539589, 33.799080, 18.422705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412266, 33.537334, 18.697073>,  <36.335873, 33.380287, 18.861694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412266, 33.537334, 18.697073>,  <36.539589, 33.799080, 18.422705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412266, 33.537334, 18.697073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048420, -0.711386, -0.701131,
		0.946751, -0.256386, 0.194754,
		-0.318305, -0.654367, 0.685920,
		36.316772, 33.341026, 18.902849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938812, 33.319748, 18.481321>,  <36.539589, 33.799080, 18.422705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938812, 33.319748, 18.481321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.577732, 33.191383, 18.595963>,  <36.361084, 33.114365, 18.664747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.577732, 33.191383, 18.595963>,  <36.938812, 33.319748, 18.481321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577732, 33.191383, 18.595963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015397, -0.641594, -0.766890,
		0.429986, -0.696688, 0.574229,
		-0.902704, -0.320910, 0.286604,
		36.306919, 33.095112, 18.681944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982513, 32.518566, 18.362265>,  <36.938812, 33.319748, 18.481321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982513, 32.518566, 18.362265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590916, 32.591652, 18.398443>,  <36.355957, 32.635502, 18.420151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590916, 32.591652, 18.398443>,  <36.982513, 32.518566, 18.362265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590916, 32.591652, 18.398443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195923, -0.720483, -0.665221,
		-0.056378, -0.668970, 0.741148,
		-0.978997, 0.182711, 0.090447,
		36.297218, 32.646465, 18.425577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629673, 31.927837, 18.680557>,  <36.982513, 32.518566, 18.362265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629673, 31.927837, 18.680557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394558, 32.107651, 18.411509>,  <36.253487, 32.215538, 18.250078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394558, 32.107651, 18.411509>,  <36.629673, 31.927837, 18.680557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394558, 32.107651, 18.411509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001018, -0.831000, -0.556271,
		-0.809009, -0.327659, 0.488001,
		-0.587796, 0.449532, -0.672620,
		36.218220, 32.242512, 18.209723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208588, 31.352200, 18.657963>,  <36.629673, 31.927837, 18.680557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208588, 31.352200, 18.657963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169144, 31.595592, 18.342997>,  <36.145477, 31.741629, 18.154016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169144, 31.595592, 18.342997>,  <36.208588, 31.352200, 18.657963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169144, 31.595592, 18.342997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208449, -0.786348, -0.581554,
		-0.973049, 0.106789, 0.204379,
		-0.098610, 0.608484, -0.787416,
		36.139561, 31.778137, 18.106771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832970, 30.626968, 18.906963>,  <36.208588, 31.352200, 18.657963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832970, 30.626968, 18.906963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731426, 30.240665, 18.928396>,  <35.670502, 30.008884, 18.941256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731426, 30.240665, 18.928396>,  <35.832970, 30.626968, 18.906963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731426, 30.240665, 18.928396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039421, 0.045022, 0.998208,
		-0.966439, 0.255512, 0.026642,
		-0.253855, -0.965757, 0.053584,
		35.655270, 29.950939, 18.944471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325027, 30.603516, 19.335510>,  <35.832970, 30.626968, 18.906963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325027, 30.603516, 19.335510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477013, 30.233517, 19.336754>,  <35.568203, 30.011518, 19.337500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477013, 30.233517, 19.336754>,  <35.325027, 30.603516, 19.335510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477013, 30.233517, 19.336754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262411, 0.111016, 0.958549,
		-0.886999, -0.363400, 0.284911,
		0.379966, -0.924995, 0.003111,
		35.591003, 29.956018, 19.337687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013855, 30.190275, 19.941990>,  <35.325027, 30.603516, 19.335510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013855, 30.190275, 19.941990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311352, 29.933386, 19.867807>,  <35.489849, 29.779251, 19.823298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311352, 29.933386, 19.867807>,  <35.013855, 30.190275, 19.941990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311352, 29.933386, 19.867807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178714, -0.076303, 0.980938,
		-0.644133, -0.762710, 0.058025,
		0.743743, -0.642224, -0.185456,
		35.534473, 29.740719, 19.812170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703247, 29.614216, 20.258760>,  <35.013855, 30.190275, 19.941990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703247, 29.614216, 20.258760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.102085, 29.630089, 20.232773>,  <35.341389, 29.639612, 20.217180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.102085, 29.630089, 20.232773>,  <34.703247, 29.614216, 20.258760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102085, 29.630089, 20.232773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070926, -0.174171, 0.982158,
		0.027658, -0.983916, -0.176480,
		0.997098, 0.039682, -0.064968,
		35.401215, 29.641993, 20.213282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954754, 29.165497, 20.866865>,  <34.703247, 29.614216, 20.258760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954754, 29.165497, 20.866865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295082, 29.344023, 20.755932>,  <35.499279, 29.451138, 20.689373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295082, 29.344023, 20.755932>,  <34.954754, 29.165497, 20.866865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295082, 29.344023, 20.755932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329090, -0.041140, 0.943402,
		0.409643, -0.893931, -0.181880,
		0.850819, 0.446313, -0.277331,
		35.550327, 29.477917, 20.672733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466080, 28.746820, 21.206707>,  <34.954754, 29.165497, 20.866865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466080, 28.746820, 21.206707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628548, 29.106716, 21.142834>,  <35.726028, 29.322653, 21.104509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628548, 29.106716, 21.142834>,  <35.466080, 28.746820, 21.206707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628548, 29.106716, 21.142834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281177, 0.043211, 0.958683,
		0.869463, -0.434286, -0.235435,
		0.406170, 0.899738, -0.159681,
		35.750397, 29.376638, 21.094929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130863, 28.770342, 21.559505>,  <35.466080, 28.746820, 21.206707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130863, 28.770342, 21.559505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042820, 29.157063, 21.507586>,  <35.989994, 29.389095, 21.476435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042820, 29.157063, 21.507586>,  <36.130863, 28.770342, 21.559505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042820, 29.157063, 21.507586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374208, 0.206570, 0.904045,
		0.900844, 0.150420, -0.407253,
		-0.220112, 0.966800, -0.129799,
		35.976788, 29.447104, 21.468645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719986, 29.213484, 21.758017>,  <36.130863, 28.770342, 21.559505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719986, 29.213484, 21.758017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.404881, 29.458254, 21.786209>,  <36.215816, 29.605116, 21.803125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.404881, 29.458254, 21.786209>,  <36.719986, 29.213484, 21.758017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404881, 29.458254, 21.786209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362663, 0.368274, 0.856066,
		0.497893, 0.699943, -0.512037,
		-0.787767, 0.611927, 0.070482,
		36.168549, 29.641832, 21.807354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992401, 29.743801, 21.940203>,  <36.719986, 29.213484, 21.758017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992401, 29.743801, 21.940203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611046, 29.794331, 22.049812>,  <36.382233, 29.824648, 22.115578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611046, 29.794331, 22.049812>,  <36.992401, 29.743801, 21.940203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611046, 29.794331, 22.049812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296994, 0.232425, 0.926160,
		0.053305, 0.964376, -0.259109,
		-0.953390, 0.126323, 0.274024,
		36.325027, 29.832228, 22.132019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015816, 30.260328, 22.306488>,  <36.992401, 29.743801, 21.940203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015816, 30.260328, 22.306488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659012, 30.122202, 22.423162>,  <36.444931, 30.039326, 22.493168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659012, 30.122202, 22.423162>,  <37.015816, 30.260328, 22.306488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659012, 30.122202, 22.423162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117127, 0.446678, 0.886995,
		-0.436584, 0.825370, -0.357994,
		-0.892007, -0.345317, 0.291686,
		36.391411, 30.018606, 22.510668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712952, 30.724764, 22.707132>,  <37.015816, 30.260328, 22.306488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712952, 30.724764, 22.707132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451588, 30.443226, 22.818596>,  <36.294769, 30.274303, 22.885475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451588, 30.443226, 22.818596>,  <36.712952, 30.724764, 22.707132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451588, 30.443226, 22.818596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046773, 0.404945, 0.913144,
		-0.755555, 0.583626, -0.297518,
		-0.653413, -0.703846, 0.278660,
		36.255562, 30.232073, 22.902193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088223, 30.989525, 22.819111>,  <36.712952, 30.724764, 22.707132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088223, 30.989525, 22.819111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144783, 30.656225, 23.032915>,  <36.178719, 30.456245, 23.161198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144783, 30.656225, 23.032915>,  <36.088223, 30.989525, 22.819111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144783, 30.656225, 23.032915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060802, 0.531607, 0.844806,
		-0.988083, -0.151959, 0.024509,
		0.141405, -0.833248, 0.534511,
		36.187206, 30.406250, 23.193268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669670, 31.052879, 23.451593>,  <36.088223, 30.989525, 22.819111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669670, 31.052879, 23.451593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864544, 30.724041, 23.569447>,  <35.981468, 30.526737, 23.640158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864544, 30.724041, 23.569447>,  <35.669670, 31.052879, 23.451593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864544, 30.724041, 23.569447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167285, 0.243278, 0.955422,
		-0.857128, -0.514753, -0.019004,
		0.487183, -0.822098, 0.294631,
		36.010700, 30.477411, 23.657835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266819, 30.716625, 23.904425>,  <35.669670, 31.052879, 23.451593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266819, 30.716625, 23.904425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.644768, 30.606661, 23.975571>,  <35.871536, 30.540682, 24.018257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.644768, 30.606661, 23.975571>,  <35.266819, 30.716625, 23.904425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644768, 30.606661, 23.975571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054154, 0.404519, 0.912925,
		-0.322924, -0.872231, 0.367332,
		0.944875, -0.274913, 0.177863,
		35.928230, 30.524187, 24.028929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189518, 30.075632, 24.219820>,  <35.266819, 30.716625, 23.904425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189518, 30.075632, 24.219820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898781, 30.123983, 24.490253>,  <34.724339, 30.152994, 24.652514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898781, 30.123983, 24.490253>,  <35.189518, 30.075632, 24.219820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898781, 30.123983, 24.490253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679692, 0.014722, -0.733350,
		-0.098599, -0.992558, 0.071459,
		-0.726840, 0.120877, 0.676085,
		34.680729, 30.160246, 24.693079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637779, 29.537077, 24.182747>,  <35.189518, 30.075632, 24.219820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637779, 29.537077, 24.182747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474213, 29.873188, 24.325134>,  <34.376072, 30.074856, 24.410566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474213, 29.873188, 24.325134>,  <34.637779, 29.537077, 24.182747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474213, 29.873188, 24.325134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746834, -0.083980, -0.659686,
		-0.524427, -0.535609, 0.661891,
		-0.408920, 0.840280, 0.355970,
		34.351536, 30.125273, 24.431925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960609, 29.387205, 24.352705>,  <34.637779, 29.537077, 24.182747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960609, 29.387205, 24.352705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.979767, 29.778177, 24.270407>,  <33.991261, 30.012760, 24.221027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.979767, 29.778177, 24.270407>,  <33.960609, 29.387205, 24.352705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979767, 29.778177, 24.270407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706169, -0.112546, -0.699042,
		-0.706422, 0.178770, 0.684842,
		0.047892, 0.977433, -0.205747,
		33.994133, 30.071407, 24.208683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247627, 29.684673, 24.222206>,  <33.960609, 29.387205, 24.352705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247627, 29.684673, 24.222206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.516144, 29.909521, 24.028965>,  <33.677254, 30.044430, 23.913021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.516144, 29.909521, 24.028965>,  <33.247627, 29.684673, 24.222206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516144, 29.909521, 24.028965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586593, 0.004497, -0.809869,
		-0.453070, 0.827045, 0.332753,
		0.671294, 0.562118, -0.483102,
		33.717533, 30.078157, 23.884035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726387, 30.149399, 23.948557>,  <33.247627, 29.684673, 24.222206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726387, 30.149399, 23.948557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076859, 30.174835, 23.757446>,  <33.287140, 30.190098, 23.642780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076859, 30.174835, 23.757446>,  <32.726387, 30.149399, 23.948557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076859, 30.174835, 23.757446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480738, 0.043925, -0.875763,
		-0.034706, 0.997009, 0.069057,
		0.876177, 0.063592, -0.477776,
		33.339710, 30.193913, 23.614113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565720, 30.355059, 23.295298>,  <32.726387, 30.149399, 23.948557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565720, 30.355059, 23.295298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954300, 30.277355, 23.240829>,  <33.187450, 30.230734, 23.208149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954300, 30.277355, 23.240829>,  <32.565720, 30.355059, 23.295298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954300, 30.277355, 23.240829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155748, -0.089270, -0.983755,
		0.178945, 0.976880, -0.116977,
		0.971453, -0.194257, -0.136172,
		33.245735, 30.219078, 23.199978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714039, 30.798000, 22.781496>,  <32.565720, 30.355059, 23.295298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714039, 30.798000, 22.781496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997299, 30.516020, 22.765654>,  <33.167255, 30.346832, 22.756147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997299, 30.516020, 22.765654>,  <32.714039, 30.798000, 22.781496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997299, 30.516020, 22.765654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223415, -0.170507, -0.959694,
		0.669783, 0.688456, -0.278241,
		0.708150, -0.704950, -0.039608,
		33.209743, 30.304535, 22.753771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791889, 31.516720, 22.419741>,  <32.714039, 30.798000, 22.781496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791889, 31.516720, 22.419741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.392338, 31.516573, 22.438702>,  <32.152607, 31.516485, 22.450077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.392338, 31.516573, 22.438702>,  <32.791889, 31.516720, 22.419741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392338, 31.516573, 22.438702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047051, 0.114005, 0.992365,
		-0.005766, 0.993480, -0.113859,
		-0.998876, -0.000365, 0.047401,
		32.092674, 31.516464, 22.452923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623577, 32.098602, 22.824329>,  <32.791889, 31.516720, 22.419741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623577, 32.098602, 22.824329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306389, 31.855066, 22.833380>,  <32.116077, 31.708944, 22.838810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306389, 31.855066, 22.833380>,  <32.623577, 32.098602, 22.824329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306389, 31.855066, 22.833380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090507, 0.154439, 0.983848,
		-0.602502, 0.778113, -0.177569,
		-0.792969, -0.608842, 0.022625,
		32.068497, 31.672413, 22.840168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954199, 32.518490, 22.894651>,  <32.623577, 32.098602, 22.824329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954199, 32.518490, 22.894651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.864687, 32.146866, 23.012480>,  <31.810980, 31.923891, 23.083176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.864687, 32.146866, 23.012480>,  <31.954199, 32.518490, 22.894651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864687, 32.146866, 23.012480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194200, 0.338678, 0.920643,
		-0.955096, 0.148817, -0.256213,
		-0.223781, -0.929059, 0.294570,
		31.797552, 31.868149, 23.100851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439625, 32.573002, 23.464830>,  <31.954199, 32.518490, 22.894651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439625, 32.573002, 23.464830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565567, 32.195274, 23.503040>,  <31.641132, 31.968637, 23.525967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565567, 32.195274, 23.503040>,  <31.439625, 32.573002, 23.464830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565567, 32.195274, 23.503040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193126, 0.034800, 0.980556,
		-0.929283, -0.327183, -0.171416,
		0.314856, -0.944320, 0.095527,
		31.660025, 31.911978, 23.531698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904367, 32.198711, 23.791533>,  <31.439625, 32.573002, 23.464830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904367, 32.198711, 23.791533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241465, 31.994919, 23.861055>,  <31.443724, 31.872643, 23.902769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241465, 31.994919, 23.861055>,  <30.904367, 32.198711, 23.791533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241465, 31.994919, 23.861055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228153, -0.045604, 0.972557,
		-0.487577, -0.859270, -0.154673,
		0.842742, -0.509485, 0.173809,
		31.494287, 31.842073, 23.913198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727003, 31.690329, 24.258110>,  <30.904367, 32.198711, 23.791533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727003, 31.690329, 24.258110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.124947, 31.704954, 24.295893>,  <31.363712, 31.713730, 24.318562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.124947, 31.704954, 24.295893>,  <30.727003, 31.690329, 24.258110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124947, 31.704954, 24.295893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087736, -0.154861, 0.984033,
		0.050607, -0.987260, -0.150856,
		0.994857, 0.036563, 0.094456,
		31.423405, 31.715923, 24.324230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820841, 31.216297, 24.737610>,  <30.727003, 31.690329, 24.258110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820841, 31.216297, 24.737610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161285, 31.425482, 24.756018>,  <31.365553, 31.550993, 24.767061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161285, 31.425482, 24.756018>,  <30.820841, 31.216297, 24.737610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161285, 31.425482, 24.756018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008383, -0.074106, 0.997215,
		0.524917, -0.849127, -0.058689,
		0.851112, 0.522964, 0.046018,
		31.416618, 31.582371, 24.769823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.030018, 35.451405, 17.962654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.131294, 35.066425, 18.001829>,  <34.192059, 34.835438, 18.025333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.131294, 35.066425, 18.001829>,  <34.030018, 35.451405, 17.962654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131294, 35.066425, 18.001829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234091, 0.037277, 0.971500,
		-0.938667, -0.268901, -0.215862,
		0.253191, -0.962446, 0.097938,
		34.207253, 34.777691, 18.031210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458633, 35.164085, 18.301678>,  <34.030018, 35.451405, 17.962654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458633, 35.164085, 18.301678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.798874, 34.959095, 18.348738>,  <34.003017, 34.836102, 18.376974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.798874, 34.959095, 18.348738>,  <33.458633, 35.164085, 18.301678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798874, 34.959095, 18.348738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040160, 0.159773, 0.986337,
		-0.524275, -0.843704, 0.115322,
		0.850601, -0.512480, 0.117648,
		34.054054, 34.805351, 18.384031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347431, 34.725204, 18.711634>,  <33.458633, 35.164085, 18.301678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347431, 34.725204, 18.711634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743183, 34.766430, 18.752640>,  <33.980633, 34.791164, 18.777243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743183, 34.766430, 18.752640>,  <33.347431, 34.725204, 18.711634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743183, 34.766430, 18.752640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096823, -0.058792, 0.993564,
		0.108425, -0.992936, -0.048189,
		0.989378, 0.103062, 0.102514,
		34.039997, 34.797348, 18.783394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651581, 34.196877, 19.189831>,  <33.347431, 34.725204, 18.711634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651581, 34.196877, 19.189831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.921093, 34.492447, 19.190960>,  <34.082802, 34.669788, 19.191637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.921093, 34.492447, 19.190960>,  <33.651581, 34.196877, 19.189831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921093, 34.492447, 19.190960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073495, 0.063212, 0.995290,
		0.735265, -0.670818, 0.096898,
		0.673784, 0.738923, 0.002824,
		34.123230, 34.714123, 19.191807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138210, 34.020142, 19.730373>,  <33.651581, 34.196877, 19.189831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138210, 34.020142, 19.730373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.180836, 34.411346, 19.658665>,  <34.206413, 34.646069, 19.615639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.180836, 34.411346, 19.658665>,  <34.138210, 34.020142, 19.730373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180836, 34.411346, 19.658665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033425, 0.183720, 0.982410,
		0.993744, -0.098699, 0.052268,
		0.106565, 0.978011, -0.179272,
		34.212807, 34.704750, 19.604883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654884, 34.212124, 20.141430>,  <34.138210, 34.020142, 19.730373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654884, 34.212124, 20.141430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.477943, 34.564373, 20.073513>,  <34.371780, 34.775723, 20.032763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.477943, 34.564373, 20.073513>,  <34.654884, 34.212124, 20.141430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477943, 34.564373, 20.073513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154888, 0.261490, 0.952698,
		0.883366, 0.395128, -0.252068,
		-0.442350, 0.880623, -0.169791,
		34.345238, 34.828560, 20.022575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009502, 34.679722, 20.558460>,  <34.654884, 34.212124, 20.141430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009502, 34.679722, 20.558460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.663464, 34.869202, 20.492472>,  <34.455841, 34.982887, 20.452879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.663464, 34.869202, 20.492472>,  <35.009502, 34.679722, 20.558460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663464, 34.869202, 20.492472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042732, 0.397294, 0.916696,
		0.499777, 0.785983, -0.363941,
		-0.865099, 0.473696, -0.164972,
		34.403934, 35.011311, 20.442980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170185, 35.431374, 20.790182>,  <35.009502, 34.679722, 20.558460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170185, 35.431374, 20.790182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777443, 35.356476, 20.802208>,  <34.541798, 35.311539, 20.809423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777443, 35.356476, 20.802208>,  <35.170185, 35.431374, 20.790182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777443, 35.356476, 20.802208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079360, 0.549683, 0.831595,
		-0.172235, 0.814119, -0.554568,
		-0.981854, -0.187241, 0.030066,
		34.482887, 35.300304, 20.811228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817001, 36.037182, 20.734949>,  <35.170185, 35.431374, 20.790182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817001, 36.037182, 20.734949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.570267, 35.779808, 20.916281>,  <34.422226, 35.625385, 21.025080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.570267, 35.779808, 20.916281>,  <34.817001, 36.037182, 20.734949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570267, 35.779808, 20.916281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118143, 0.645117, 0.754895,
		-0.778173, 0.412091, -0.473950,
		-0.616838, -0.643432, 0.453327,
		34.385216, 35.586777, 21.052279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471016, 36.499203, 21.217436>,  <34.817001, 36.037182, 20.734949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471016, 36.499203, 21.217436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.379051, 36.132851, 21.349075>,  <34.323872, 35.913040, 21.428059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.379051, 36.132851, 21.349075>,  <34.471016, 36.499203, 21.217436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379051, 36.132851, 21.349075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109310, 0.360317, 0.926403,
		-0.967054, 0.177016, -0.182956,
		-0.229910, -0.915880, 0.329096,
		34.310078, 35.858086, 21.447803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978107, 36.683155, 21.711472>,  <34.471016, 36.499203, 21.217436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978107, 36.683155, 21.711472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.070499, 36.307163, 21.811945>,  <34.125935, 36.081570, 21.872229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.070499, 36.307163, 21.811945>,  <33.978107, 36.683155, 21.711472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070499, 36.307163, 21.811945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090489, 0.236294, 0.967459,
		-0.968742, -0.246189, -0.030479,
		0.230976, -0.939976, 0.251185,
		34.139793, 36.025169, 21.887300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538197, 36.377209, 22.223366>,  <33.978107, 36.683155, 21.711472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538197, 36.377209, 22.223366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.895065, 36.198521, 22.250092>,  <34.109188, 36.091309, 22.266127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.895065, 36.198521, 22.250092>,  <33.538197, 36.377209, 22.223366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895065, 36.198521, 22.250092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028527, 0.203351, 0.978690,
		-0.450785, -0.871258, 0.194169,
		0.892176, -0.446718, 0.066813,
		34.162720, 36.064507, 22.270136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925392, 35.948269, 22.089218>,  <33.538197, 36.377209, 22.223366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925392, 35.948269, 22.089218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.687263, 35.730080, 22.325203>,  <32.544388, 35.599167, 22.466793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.687263, 35.730080, 22.325203>,  <32.925392, 35.948269, 22.089218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687263, 35.730080, 22.325203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334349, -0.499481, -0.799205,
		0.730619, -0.673036, 0.114973,
		-0.595321, -0.545473, 0.589960,
		32.508667, 35.566437, 22.502192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023216, 35.102951, 22.003044>,  <32.925392, 35.948269, 22.089218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023216, 35.102951, 22.003044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.663731, 35.236195, 22.117138>,  <32.448040, 35.316139, 22.185595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.663731, 35.236195, 22.117138>,  <33.023216, 35.102951, 22.003044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663731, 35.236195, 22.117138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424568, -0.498006, -0.756129,
		-0.109821, -0.800644, 0.588989,
		-0.898711, 0.333105, 0.285236,
		32.394115, 35.336124, 22.202709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640327, 34.513897, 21.923464>,  <33.023216, 35.102951, 22.003044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640327, 34.513897, 21.923464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.358154, 34.793285, 21.971622>,  <32.188850, 34.960918, 22.000517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.358154, 34.793285, 21.971622>,  <32.640327, 34.513897, 21.923464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358154, 34.793285, 21.971622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537633, -0.416637, -0.733051,
		-0.461860, -0.581845, 0.669434,
		-0.705433, 0.698477, 0.120391,
		32.146523, 35.002827, 22.007740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968056, 34.218864, 21.929174>,  <32.640327, 34.513897, 21.923464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968056, 34.218864, 21.929174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.849899, 34.589809, 21.837318>,  <31.779005, 34.812378, 21.782204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.849899, 34.589809, 21.837318>,  <31.968056, 34.218864, 21.929174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849899, 34.589809, 21.837318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450686, -0.347203, -0.822394,
		-0.842394, -0.139430, 0.520511,
		-0.295389, 0.927367, -0.229642,
		31.761282, 34.868019, 21.768425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269218, 34.201019, 21.874054>,  <31.968056, 34.218864, 21.929174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269218, 34.201019, 21.874054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340376, 34.540775, 21.675301>,  <31.383070, 34.744629, 21.556049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340376, 34.540775, 21.675301>,  <31.269218, 34.201019, 21.874054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340376, 34.540775, 21.675301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627055, -0.291300, -0.722458,
		-0.758390, 0.440094, 0.480793,
		0.177895, 0.849389, -0.496882,
		31.393744, 34.795593, 21.526236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628952, 34.576881, 21.760811>,  <31.269218, 34.201019, 21.874054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628952, 34.576881, 21.760811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.894539, 34.687531, 21.482925>,  <31.053890, 34.753918, 21.316195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.894539, 34.687531, 21.482925>,  <30.628952, 34.576881, 21.760811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894539, 34.687531, 21.482925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615221, -0.325995, -0.717795,
		-0.425031, 0.903996, -0.046267,
		0.663967, 0.276621, -0.694715,
		31.093729, 34.770515, 21.274511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241682, 34.979328, 21.328274>,  <30.628952, 34.576881, 21.760811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241682, 34.979328, 21.328274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555763, 34.844772, 21.120312>,  <30.744211, 34.764038, 20.995535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555763, 34.844772, 21.120312>,  <30.241682, 34.979328, 21.328274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555763, 34.844772, 21.120312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606419, -0.247752, -0.755563,
		0.125358, 0.908548, -0.398529,
		0.785202, -0.336391, -0.519903,
		30.791325, 34.743855, 20.964340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978411, 35.086578, 20.607718>,  <30.241682, 34.979328, 21.328274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978411, 35.086578, 20.607718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305683, 34.859478, 20.571405>,  <30.502047, 34.723217, 20.549618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305683, 34.859478, 20.571405>,  <29.978411, 35.086578, 20.607718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305683, 34.859478, 20.571405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392469, -0.436098, -0.809806,
		0.420180, 0.698195, -0.579631,
		0.818179, -0.567752, -0.090781,
		30.551136, 34.689152, 20.544170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196131, 35.122902, 19.909670>,  <29.978411, 35.086578, 20.607718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196131, 35.122902, 19.909670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337910, 34.776470, 20.050682>,  <30.422977, 34.568611, 20.135290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337910, 34.776470, 20.050682>,  <30.196131, 35.122902, 19.909670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337910, 34.776470, 20.050682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496176, -0.493755, -0.714154,
		0.792576, 0.078213, -0.604737,
		0.354448, -0.866077, 0.352531,
		30.444244, 34.516647, 20.156441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544376, 34.759235, 19.283655>,  <30.196131, 35.122902, 19.909670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544376, 34.759235, 19.283655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448603, 34.485939, 19.559582>,  <30.391138, 34.321960, 19.725138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448603, 34.485939, 19.559582>,  <30.544376, 34.759235, 19.283655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448603, 34.485939, 19.559582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319301, -0.615551, -0.720517,
		0.916907, -0.392776, -0.070776,
		-0.239436, -0.683245, 0.689816,
		30.376772, 34.280964, 19.766527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017189, 34.231819, 19.208502>,  <30.544376, 34.759235, 19.283655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017189, 34.231819, 19.208502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701260, 34.064926, 19.388325>,  <30.511702, 33.964790, 19.496218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701260, 34.064926, 19.388325>,  <31.017189, 34.231819, 19.208502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701260, 34.064926, 19.388325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021384, -0.713790, -0.700033,
		0.612962, -0.562515, 0.554846,
		-0.789823, -0.417229, 0.449555,
		30.464314, 33.939758, 19.523191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949848, 33.567013, 19.026535>,  <31.017189, 34.231819, 19.208502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949848, 33.567013, 19.026535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577103, 33.598118, 19.168289>,  <30.353456, 33.616779, 19.253342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577103, 33.598118, 19.168289>,  <30.949848, 33.567013, 19.026535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577103, 33.598118, 19.168289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332372, -0.574612, -0.747897,
		0.145476, -0.814724, 0.561304,
		-0.931861, 0.077760, 0.354383,
		30.297544, 33.621445, 19.274605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707520, 32.915852, 19.023056>,  <30.949848, 33.567013, 19.026535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707520, 32.915852, 19.023056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373236, 33.135319, 19.032513>,  <30.172667, 33.266998, 19.038187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373236, 33.135319, 19.032513>,  <30.707520, 32.915852, 19.023056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373236, 33.135319, 19.032513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454198, -0.666340, -0.591351,
		-0.308700, -0.504934, 0.806068,
		-0.835708, 0.548664, 0.023641,
		30.122522, 33.299919, 19.039604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320976, 33.043583, 19.523798>,  <30.707520, 32.915852, 19.023056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320976, 33.043583, 19.523798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.240826, 32.670246, 19.404650>,  <31.192736, 32.446243, 19.333160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.240826, 32.670246, 19.404650>,  <31.320976, 33.043583, 19.523798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240826, 32.670246, 19.404650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078493, -0.318353, 0.944717,
		-0.976569, 0.165921, 0.137052,
		-0.200379, -0.933339, -0.297871,
		31.180712, 32.390244, 19.315289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792688, 32.809090, 19.974871>,  <31.320976, 33.043583, 19.523798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792688, 32.809090, 19.974871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967623, 32.477085, 19.836411>,  <31.072582, 32.277882, 19.753334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967623, 32.477085, 19.836411>,  <30.792688, 32.809090, 19.974871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967623, 32.477085, 19.836411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032736, -0.369965, 0.928469,
		-0.898703, -0.417383, -0.134627,
		0.437334, -0.830010, -0.346152,
		31.098824, 32.228081, 19.732565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477142, 32.333588, 20.366327>,  <30.792688, 32.809090, 19.974871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477142, 32.333588, 20.366327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818155, 32.164703, 20.243086>,  <31.022762, 32.063374, 20.169142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.818155, 32.164703, 20.243086>,  <30.477142, 32.333588, 20.366327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818155, 32.164703, 20.243086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168563, -0.335882, 0.926698,
		-0.494750, -0.841974, -0.215180,
		0.852531, -0.422213, -0.308103,
		31.073915, 32.038040, 20.150656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468948, 31.695562, 20.750259>,  <30.477142, 32.333588, 20.366327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468948, 31.695562, 20.750259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.847775, 31.756334, 20.637131>,  <31.075069, 31.792797, 20.569254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.847775, 31.756334, 20.637131>,  <30.468948, 31.695562, 20.750259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847775, 31.756334, 20.637131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318322, -0.329894, 0.888730,
		0.041724, -0.931712, -0.360793,
		0.947064, 0.151929, -0.282820,
		31.131893, 31.801912, 20.552284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670195, 31.126846, 21.005554>,  <30.468948, 31.695562, 20.750259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670195, 31.126846, 21.005554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.000704, 31.339165, 20.930159>,  <31.199009, 31.466557, 20.884922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.000704, 31.339165, 20.930159>,  <30.670195, 31.126846, 21.005554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000704, 31.339165, 20.930159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382864, -0.283811, 0.879128,
		0.413145, -0.798565, -0.437728,
		0.826273, 0.530798, -0.188487,
		31.248585, 31.498404, 20.873613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277597, 30.654322, 21.120836>,  <30.670195, 31.126846, 21.005554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277597, 30.654322, 21.120836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388866, 31.035061, 21.172377>,  <31.455627, 31.263504, 21.203300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388866, 31.035061, 21.172377>,  <31.277597, 30.654322, 21.120836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388866, 31.035061, 21.172377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391556, -0.234866, 0.889675,
		0.877100, -0.197029, -0.438036,
		0.278172, 0.951849, 0.128853,
		31.472319, 31.320616, 21.211033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940216, 30.708487, 21.481174>,  <31.277597, 30.654322, 21.120836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940216, 30.708487, 21.481174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.823706, 31.087002, 21.537310>,  <31.753799, 31.314112, 21.570992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.823706, 31.087002, 21.537310>,  <31.940216, 30.708487, 21.481174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823706, 31.087002, 21.537310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538196, 0.040815, 0.841831,
		0.790887, 0.320735, -0.521178,
		-0.291277, 0.946289, 0.140338,
		31.736322, 31.370888, 21.579411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559639, 31.024446, 21.780807>,  <31.940216, 30.708487, 21.481174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559639, 31.024446, 21.780807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.240322, 31.245588, 21.876366>,  <32.048733, 31.378273, 21.933701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.240322, 31.245588, 21.876366>,  <32.559639, 31.024446, 21.780807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240322, 31.245588, 21.876366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320904, 0.054795, 0.945525,
		0.509650, 0.831473, -0.221157,
		-0.798297, 0.552857, 0.238897,
		32.000832, 31.411446, 21.948034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205685, 30.948540, 22.096560>,  <32.559639, 31.024446, 21.780807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205685, 30.948540, 22.096560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.267994, 30.567696, 22.201799>,  <33.305378, 30.339190, 22.264944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.267994, 30.567696, 22.201799>,  <33.205685, 30.948540, 22.096560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267994, 30.567696, 22.201799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053626, -0.274110, -0.960202,
		0.986336, 0.135463, -0.093757,
		0.155771, -0.952110, 0.263101,
		33.314724, 30.282063, 22.280729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675922, 30.758703, 21.622335>,  <33.205685, 30.948540, 22.096560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675922, 30.758703, 21.622335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.524109, 30.419758, 21.770889>,  <33.433022, 30.216391, 21.860022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.524109, 30.419758, 21.770889>,  <33.675922, 30.758703, 21.622335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524109, 30.419758, 21.770889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035863, -0.387646, -0.921111,
		0.924481, -0.362915, 0.116737,
		-0.379538, -0.847363, 0.371386,
		33.410248, 30.165548, 21.882305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019806, 30.251772, 21.229151>,  <33.675922, 30.758703, 21.622335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019806, 30.251772, 21.229151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695808, 30.060213, 21.364538>,  <33.501408, 29.945278, 21.445770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695808, 30.060213, 21.364538>,  <34.019806, 30.251772, 21.229151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695808, 30.060213, 21.364538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135668, -0.408481, -0.902628,
		0.570524, -0.777046, 0.265897,
		-0.809998, -0.478897, 0.338468,
		33.452808, 29.916544, 21.466078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111187, 29.547642, 21.057274>,  <34.019806, 30.251772, 21.229151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111187, 29.547642, 21.057274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718338, 29.616629, 21.087437>,  <33.482628, 29.658020, 21.105536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718338, 29.616629, 21.087437>,  <34.111187, 29.547642, 21.057274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718338, 29.616629, 21.087437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134479, -0.362588, -0.922196,
		-0.131703, -0.915853, 0.379300,
		-0.982125, 0.172464, 0.075409,
		33.423702, 29.668367, 21.110060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886845, 28.984135, 20.697792>,  <34.111187, 29.547642, 21.057274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886845, 28.984135, 20.697792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.574989, 29.233372, 20.722841>,  <33.387875, 29.382914, 20.737871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.574989, 29.233372, 20.722841>,  <33.886845, 28.984135, 20.697792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574989, 29.233372, 20.722841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228010, -0.189306, -0.955078,
		-0.583248, -0.758893, 0.289661,
		-0.779636, 0.623093, 0.062623,
		33.341099, 29.420300, 20.741629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558842, 28.584505, 20.274979>,  <33.886845, 28.984135, 20.697792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558842, 28.584505, 20.274979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367088, 28.931557, 20.327759>,  <33.252037, 29.139788, 20.359426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367088, 28.931557, 20.327759>,  <33.558842, 28.584505, 20.274979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367088, 28.931557, 20.327759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283446, -0.010774, -0.958928,
		-0.830572, -0.497095, 0.251091,
		-0.479383, 0.867629, 0.131951,
		33.223274, 29.191845, 20.367344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867928, 28.501488, 19.911375>,  <33.558842, 28.584505, 20.274979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867928, 28.501488, 19.911375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.980663, 28.883400, 19.949244>,  <33.048306, 29.112547, 19.971964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.980663, 28.883400, 19.949244>,  <32.867928, 28.501488, 19.911375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980663, 28.883400, 19.949244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111240, 0.130523, -0.985185,
		-0.952992, 0.267131, 0.142996,
		0.281837, 0.954780, 0.094671,
		33.065216, 29.169834, 19.977646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416840, 28.929630, 19.458845>,  <32.867928, 28.501488, 19.911375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416840, 28.929630, 19.458845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.723248, 29.179600, 19.519098>,  <32.907093, 29.329582, 19.555250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.723248, 29.179600, 19.519098>,  <32.416840, 28.929630, 19.458845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723248, 29.179600, 19.519098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034050, 0.273446, -0.961285,
		-0.641918, 0.731231, 0.230742,
		0.766017, 0.624923, 0.150631,
		32.953053, 29.367077, 19.564287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347996, 29.646049, 19.108362>,  <32.416840, 28.929630, 19.458845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347996, 29.646049, 19.108362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.743172, 29.589018, 19.132545>,  <32.980278, 29.554798, 19.147055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.743172, 29.589018, 19.132545>,  <32.347996, 29.646049, 19.108362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743172, 29.589018, 19.132545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111602, 0.384783, -0.916235,
		0.107373, 0.911928, 0.396053,
		0.987935, -0.142579, 0.060458,
		33.039551, 29.546244, 19.150682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.773434, 34.428368, 33.875011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605019, 34.790718, 33.856636>,  <35.503971, 35.008129, 33.845612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605019, 34.790718, 33.856636>,  <35.773434, 34.428368, 33.875011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605019, 34.790718, 33.856636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888765, 0.401906, -0.220384,
		-0.181180, -0.133615, -0.974331,
		-0.421036, 0.905880, -0.045935,
		35.478706, 35.062481, 33.842854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450821, 34.829205, 33.722862>,  <35.773434, 34.428368, 33.875011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450821, 34.829205, 33.722862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778122, 34.621334, 33.624557>,  <36.974503, 34.496613, 33.565575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778122, 34.621334, 33.624557>,  <36.450821, 34.829205, 33.722862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778122, 34.621334, 33.624557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362115, -0.133914, -0.922464,
		0.446474, 0.843802, -0.297758,
		0.818250, -0.519679, -0.245764,
		37.023598, 34.465431, 33.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504047, 35.116158, 32.942310>,  <36.450821, 34.829205, 33.722862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504047, 35.116158, 32.942310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700806, 34.779072, 33.029819>,  <36.818863, 34.576820, 33.082325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700806, 34.779072, 33.029819>,  <36.504047, 35.116158, 32.942310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700806, 34.779072, 33.029819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333977, -0.414691, -0.846458,
		0.804048, 0.343306, -0.485435,
		0.491900, -0.842717, 0.218775,
		36.848377, 34.526257, 33.095451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872242, 34.980629, 32.375183>,  <36.504047, 35.116158, 32.942310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872242, 34.980629, 32.375183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834892, 34.640121, 32.581722>,  <36.812481, 34.435818, 32.705647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834892, 34.640121, 32.581722>,  <36.872242, 34.980629, 32.375183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834892, 34.640121, 32.581722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161142, -0.498854, -0.851574,
		0.982504, -0.162723, -0.090594,
		-0.093378, -0.851273, 0.516347,
		36.806877, 34.384739, 32.736626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946262, 34.566063, 31.923874>,  <36.872242, 34.980629, 32.375183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946262, 34.566063, 31.923874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813114, 34.279171, 32.168747>,  <36.733223, 34.107037, 32.315670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813114, 34.279171, 32.168747>,  <36.946262, 34.566063, 31.923874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813114, 34.279171, 32.168747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309646, -0.530069, -0.789396,
		0.890682, -0.452330, -0.045643,
		-0.332874, -0.717234, 0.612185,
		36.713253, 34.063999, 32.352402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226547, 33.900024, 31.783911>,  <36.946262, 34.566063, 31.923874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226547, 33.900024, 31.783911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897507, 33.791977, 31.984058>,  <36.700085, 33.727150, 32.104149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897507, 33.791977, 31.984058>,  <37.226547, 33.900024, 31.783911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897507, 33.791977, 31.984058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157749, -0.737020, -0.657204,
		0.546306, -0.619547, 0.563660,
		-0.822597, -0.270117, 0.500371,
		36.650726, 33.710941, 32.134171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135162, 33.107433, 31.629177>,  <37.226547, 33.900024, 31.783911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135162, 33.107433, 31.629177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784828, 33.252998, 31.755968>,  <36.574627, 33.340340, 31.832043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784828, 33.252998, 31.755968>,  <37.135162, 33.107433, 31.629177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784828, 33.252998, 31.755968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482418, -0.641794, -0.596132,
		-0.013505, -0.675031, 0.737666,
		-0.875837, 0.363914, 0.316980,
		36.522076, 33.362171, 31.851063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721462, 32.552567, 31.424923>,  <37.135162, 33.107433, 31.629177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721462, 32.552567, 31.424923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441410, 32.834846, 31.468403>,  <36.273380, 33.004215, 31.494490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441410, 32.834846, 31.468403>,  <36.721462, 32.552567, 31.424923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441410, 32.834846, 31.468403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627292, -0.535202, -0.565742,
		-0.341066, -0.464277, 0.817387,
		-0.700128, 0.705695, 0.108698,
		36.231373, 33.046555, 31.501013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224213, 32.205143, 31.613756>,  <36.721462, 32.552567, 31.424923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224213, 32.205143, 31.613756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057125, 32.539917, 31.472309>,  <35.956871, 32.740784, 31.387440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057125, 32.539917, 31.472309>,  <36.224213, 32.205143, 31.613756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057125, 32.539917, 31.472309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667446, -0.546735, -0.505566,
		-0.616463, 0.024838, 0.786992,
		-0.417718, 0.836938, -0.353620,
		35.931808, 32.790997, 31.366224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426640, 32.120640, 31.664989>,  <36.224213, 32.205143, 31.613756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426640, 32.120640, 31.664989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517513, 32.380344, 31.374653>,  <35.572037, 32.536167, 31.200451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517513, 32.380344, 31.374653>,  <35.426640, 32.120640, 31.664989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517513, 32.380344, 31.374653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583747, -0.505797, -0.635144,
		-0.779505, 0.568000, 0.264099,
		0.227181, 0.649265, -0.725840,
		35.585667, 32.575123, 31.156900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868729, 32.026817, 31.283787>,  <35.426640, 32.120640, 31.664989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868729, 32.026817, 31.283787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138100, 32.203285, 31.046513>,  <35.299721, 32.309166, 30.904148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138100, 32.203285, 31.046513>,  <34.868729, 32.026817, 31.283787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138100, 32.203285, 31.046513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359535, -0.505661, -0.784246,
		-0.645937, 0.741400, -0.181908,
		0.673424, 0.441172, -0.593185,
		35.340126, 32.335636, 30.868557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472252, 32.039730, 30.687737>,  <34.868729, 32.026817, 31.283787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472252, 32.039730, 30.687737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833973, 32.130966, 30.543400>,  <35.051006, 32.185707, 30.456799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833973, 32.130966, 30.543400>,  <34.472252, 32.039730, 30.687737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833973, 32.130966, 30.543400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248957, -0.404868, -0.879831,
		-0.346769, 0.885471, -0.309341,
		0.904307, 0.228086, -0.360840,
		35.105267, 32.199390, 30.435148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009197, 32.640530, 30.864479>,  <34.472252, 32.039730, 30.687737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009197, 32.640530, 30.864479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620152, 32.608036, 30.777374>,  <33.386723, 32.588539, 30.725111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620152, 32.608036, 30.777374>,  <34.009197, 32.640530, 30.864479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620152, 32.608036, 30.777374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230692, 0.223310, 0.947055,
		-0.028302, 0.971357, -0.235934,
		-0.972615, -0.081232, -0.217764,
		33.328365, 32.583668, 30.712046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661644, 33.219410, 31.098606>,  <34.009197, 32.640530, 30.864479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661644, 33.219410, 31.098606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383896, 32.931671, 31.106462>,  <33.217247, 32.759029, 31.111176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383896, 32.931671, 31.106462>,  <33.661644, 33.219410, 31.098606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383896, 32.931671, 31.106462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296616, 0.310970, 0.902948,
		-0.655641, 0.621157, -0.429299,
		-0.694372, -0.719348, 0.019640,
		33.175583, 32.715866, 31.112354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102104, 33.505714, 31.406755>,  <33.661644, 33.219410, 31.098606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102104, 33.505714, 31.406755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972076, 33.127533, 31.415279>,  <32.894058, 32.900623, 31.420395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972076, 33.127533, 31.415279>,  <33.102104, 33.505714, 31.406755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972076, 33.127533, 31.415279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379320, 0.150997, 0.912861,
		-0.866283, 0.288659, -0.407713,
		-0.325069, -0.945450, 0.021312,
		32.874557, 32.843899, 31.421673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481674, 33.487625, 31.679005>,  <33.102104, 33.505714, 31.406755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481674, 33.487625, 31.679005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570518, 33.104034, 31.749474>,  <32.623825, 32.873882, 31.791756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570518, 33.104034, 31.749474>,  <32.481674, 33.487625, 31.679005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570518, 33.104034, 31.749474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471725, 0.052440, 0.880185,
		-0.853312, -0.278604, -0.440724,
		0.222112, -0.958973, 0.176172,
		32.637154, 32.816341, 31.802324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883848, 33.211105, 31.843159>,  <32.481674, 33.487625, 31.679005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883848, 33.211105, 31.843159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140404, 32.928463, 31.962713>,  <32.294338, 32.758877, 32.034447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140404, 32.928463, 31.962713>,  <31.883848, 33.211105, 31.843159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140404, 32.928463, 31.962713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491621, -0.079439, 0.867178,
		-0.589007, -0.703138, -0.398332,
		0.641389, -0.706602, 0.298887,
		32.332821, 32.716484, 32.052380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522503, 32.667091, 32.309097>,  <31.883848, 33.211105, 31.843159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522503, 32.667091, 32.309097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909803, 32.664719, 32.409058>,  <32.142185, 32.663296, 32.469032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909803, 32.664719, 32.409058>,  <31.522503, 32.667091, 32.309097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909803, 32.664719, 32.409058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245883, 0.157473, 0.956422,
		-0.045028, -0.987505, 0.151015,
		0.968253, -0.005934, 0.249902,
		32.200279, 32.662937, 32.484028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456841, 32.098110, 32.830551>,  <31.522503, 32.667091, 32.309097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456841, 32.098110, 32.830551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.810799, 32.278755, 32.876171>,  <32.023174, 32.387142, 32.903542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.810799, 32.278755, 32.876171>,  <31.456841, 32.098110, 32.830551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810799, 32.278755, 32.876171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259277, 0.274159, 0.926074,
		0.386962, -0.849047, 0.359695,
		0.884893, 0.451616, 0.114049,
		32.076267, 32.414238, 32.910385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773611, 31.795898, 33.389874>,  <31.456841, 32.098110, 32.830551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773611, 31.795898, 33.389874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918676, 32.163754, 33.329552>,  <32.005714, 32.384468, 33.293358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918676, 32.163754, 33.329552>,  <31.773611, 31.795898, 33.389874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918676, 32.163754, 33.329552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340462, 0.281386, 0.897166,
		0.867503, -0.274024, 0.415150,
		0.362662, 0.919638, -0.150808,
		32.027473, 32.439644, 33.284309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782824, 32.117405, 34.145088>,  <31.773611, 31.795898, 33.389874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782824, 32.117405, 34.145088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842764, 32.426220, 33.898026>,  <31.878729, 32.611507, 33.749786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842764, 32.426220, 33.898026>,  <31.782824, 32.117405, 34.145088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842764, 32.426220, 33.898026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151002, 0.635257, 0.757395,
		0.977109, -0.020228, 0.211773,
		0.149850, 0.772036, -0.617661,
		31.887718, 32.657829, 33.712727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171963, 32.534580, 34.546921>,  <31.782824, 32.117405, 34.145088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171963, 32.534580, 34.546921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011677, 32.764832, 34.261803>,  <31.915506, 32.902985, 34.090733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011677, 32.764832, 34.261803>,  <32.171963, 32.534580, 34.546921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011677, 32.764832, 34.261803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062970, 0.758845, 0.648220,
		0.914037, 0.304635, -0.267831,
		-0.400713, 0.575632, -0.712795,
		31.891462, 32.937523, 34.047966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511383, 33.153053, 34.606903>,  <32.171963, 32.534580, 34.546921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511383, 33.153053, 34.606903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169670, 33.226891, 34.412533>,  <31.964642, 33.271191, 34.295910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169670, 33.226891, 34.412533>,  <32.511383, 33.153053, 34.606903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169670, 33.226891, 34.412533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154398, 0.802521, 0.576299,
		0.496346, 0.567350, -0.657081,
		-0.854285, 0.184591, -0.485926,
		31.913385, 33.282269, 34.266754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493614, 33.920692, 34.584641>,  <32.511383, 33.153053, 34.606903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493614, 33.920692, 34.584641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117931, 33.795864, 34.527382>,  <31.892521, 33.720966, 34.493027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117931, 33.795864, 34.527382>,  <32.493614, 33.920692, 34.584641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117931, 33.795864, 34.527382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343195, 0.865411, 0.365077,
		0.009950, 0.392012, -0.919906,
		-0.939212, -0.312074, -0.143148,
		31.836168, 33.702240, 34.484436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277889, 34.442715, 34.239082>,  <32.493614, 33.920692, 34.584641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277889, 34.442715, 34.239082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964010, 34.265690, 34.412701>,  <31.775684, 34.159477, 34.516872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964010, 34.265690, 34.412701>,  <32.277889, 34.442715, 34.239082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964010, 34.265690, 34.412701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248304, 0.865985, 0.434068,
		-0.567980, 0.232834, -0.789422,
		-0.784693, -0.442559, 0.434049,
		31.728601, 34.132923, 34.542915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749798, 34.939548, 34.228188>,  <32.277889, 34.442715, 34.239082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749798, 34.939548, 34.228188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644135, 34.679390, 34.513062>,  <31.580736, 34.523296, 34.683987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644135, 34.679390, 34.513062>,  <31.749798, 34.939548, 34.228188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644135, 34.679390, 34.513062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254784, 0.759242, 0.598863,
		-0.930218, -0.023260, -0.366269,
		-0.264157, -0.650393, 0.712187,
		31.564888, 34.484272, 34.726719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686607, 35.664974, 33.938637>,  <31.749798, 34.939548, 34.228188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686607, 35.664974, 33.938637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429197, 35.829109, 34.197094>,  <31.274752, 35.927589, 34.352169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429197, 35.829109, 34.197094>,  <31.686607, 35.664974, 33.938637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429197, 35.829109, 34.197094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606883, -0.240896, 0.757405,
		0.466443, 0.879542, -0.094003,
		-0.643525, 0.410335, 0.646143,
		31.236139, 35.952209, 34.390938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935120, 36.154152, 33.390141>,  <31.686607, 35.664974, 33.938637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935120, 36.154152, 33.390141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046551, 36.525978, 33.293560>,  <32.113411, 36.749073, 33.235611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046551, 36.525978, 33.293560>,  <31.935120, 36.154152, 33.390141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046551, 36.525978, 33.293560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226013, -0.180891, -0.957182,
		-0.933441, 0.321221, 0.159703,
		0.278578, 0.929567, -0.241451,
		32.130123, 36.804848, 33.221127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367172, 36.405659, 33.005947>,  <31.935120, 36.154152, 33.390141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367172, 36.405659, 33.005947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710932, 36.591038, 32.919556>,  <31.917187, 36.702267, 32.867722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710932, 36.591038, 32.919556>,  <31.367172, 36.405659, 33.005947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710932, 36.591038, 32.919556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161218, -0.155256, -0.974630,
		-0.485223, 0.872417, -0.058711,
		0.859400, 0.463448, -0.215983,
		31.968752, 36.730072, 32.854759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257681, 37.001015, 32.490902>,  <31.367172, 36.405659, 33.005947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257681, 37.001015, 32.490902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638809, 36.900791, 32.422379>,  <31.867487, 36.840656, 32.381264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638809, 36.900791, 32.422379>,  <31.257681, 37.001015, 32.490902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638809, 36.900791, 32.422379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146178, 0.115830, -0.982454,
		0.266009, 0.961146, 0.073738,
		0.952823, -0.250563, -0.171310,
		31.924656, 36.825623, 32.370987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458828, 37.506973, 31.982470>,  <31.257681, 37.001015, 32.490902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458828, 37.506973, 31.982470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759039, 37.242954, 31.969496>,  <31.939165, 37.084545, 31.961712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759039, 37.242954, 31.969496>,  <31.458828, 37.506973, 31.982470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759039, 37.242954, 31.969496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151903, 0.220079, -0.963582,
		0.643146, 0.718265, 0.265438,
		0.750525, -0.660045, -0.032436,
		31.984196, 37.044941, 31.959764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004116, 37.823029, 31.590137>,  <31.458828, 37.506973, 31.982470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004116, 37.823029, 31.590137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064533, 37.427628, 31.587221>,  <32.100784, 37.190388, 31.585470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064533, 37.427628, 31.587221>,  <32.004116, 37.823029, 31.590137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064533, 37.427628, 31.587221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184213, 0.035393, -0.982249,
		0.971212, 0.147017, 0.187440,
		0.151041, -0.988501, -0.007292,
		32.109844, 37.131077, 31.585033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506786, 37.751991, 31.124311>,  <32.004116, 37.823029, 31.590137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506786, 37.751991, 31.124311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366272, 37.377533, 31.130262>,  <32.281963, 37.152859, 31.133833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366272, 37.377533, 31.130262>,  <32.506786, 37.751991, 31.124311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366272, 37.377533, 31.130262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117664, -0.059908, -0.991245,
		0.928845, -0.346461, 0.131196,
		-0.351287, -0.936149, 0.014879,
		32.260887, 37.096687, 31.134726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974518, 37.316307, 30.720612>,  <32.506786, 37.751991, 31.124311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974518, 37.316307, 30.720612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622276, 37.126808, 30.724604>,  <32.410931, 37.013111, 30.726999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622276, 37.126808, 30.724604>,  <32.974518, 37.316307, 30.720612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622276, 37.126808, 30.724604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011024, -0.041539, -0.999076,
		0.473722, -0.879682, 0.041802,
		-0.880605, -0.473745, 0.009980,
		32.358093, 36.984684, 30.727598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061195, 36.946915, 30.201525>,  <32.974518, 37.316307, 30.720612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061195, 36.946915, 30.201525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665146, 36.913006, 30.246183>,  <32.427517, 36.892662, 30.272978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665146, 36.913006, 30.246183>,  <33.061195, 36.946915, 30.201525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665146, 36.913006, 30.246183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080387, -0.309108, -0.947623,
		0.114843, -0.947241, 0.299241,
		-0.990126, -0.084773, 0.111645,
		32.368107, 36.887573, 30.279676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911331, 36.303677, 30.023338>,  <33.061195, 36.946915, 30.201525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911331, 36.303677, 30.023338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559036, 36.489597, 29.986992>,  <32.347660, 36.601151, 29.965183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559036, 36.489597, 29.986992>,  <32.911331, 36.303677, 30.023338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559036, 36.489597, 29.986992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142584, -0.443194, -0.885013,
		-0.451642, -0.766502, 0.456611,
		-0.880732, 0.464815, -0.090874,
		32.294815, 36.629040, 29.959732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467903, 35.740112, 29.735456>,  <32.911331, 36.303677, 30.023338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467903, 35.740112, 29.735456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313457, 36.106365, 29.690689>,  <32.220791, 36.326118, 29.663830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313457, 36.106365, 29.690689>,  <32.467903, 35.740112, 29.735456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313457, 36.106365, 29.690689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218876, -0.208800, -0.953150,
		-0.896106, -0.343533, 0.281032,
		-0.386118, 0.915635, -0.111916,
		32.197620, 36.381054, 29.657114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909092, 35.573067, 29.275835>,  <32.467903, 35.740112, 29.735456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909092, 35.573067, 29.275835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044582, 35.948967, 29.257349>,  <32.125877, 36.174507, 29.246258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044582, 35.948967, 29.257349>,  <31.909092, 35.573067, 29.275835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044582, 35.948967, 29.257349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025286, -0.058193, -0.997985,
		-0.940546, 0.336874, -0.043474,
		0.338725, 0.939750, -0.046215,
		32.146198, 36.230892, 29.243484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533386, 35.788200, 28.686987>,  <31.909092, 35.573067, 29.275835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533386, 35.788200, 28.686987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820387, 36.057499, 28.758463>,  <31.992588, 36.219078, 28.801348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820387, 36.057499, 28.758463>,  <31.533386, 35.788200, 28.686987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820387, 36.057499, 28.758463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143498, 0.108164, -0.983722,
		-0.681616, 0.731463, -0.019001,
		0.717501, 0.673247, 0.178690,
		32.035637, 36.259472, 28.812069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297937, 36.345554, 28.302265>,  <31.533386, 35.788200, 28.686987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297937, 36.345554, 28.302265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689514, 36.387020, 28.372612>,  <31.924459, 36.411900, 28.414820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689514, 36.387020, 28.372612>,  <31.297937, 36.345554, 28.302265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689514, 36.387020, 28.372612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139084, 0.291940, -0.946270,
		-0.149434, 0.950803, 0.271374,
		0.978941, 0.103661, 0.175867,
		31.983196, 36.418118, 28.425373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518610, 37.003742, 27.918762>,  <31.297937, 36.345554, 28.302265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518610, 37.003742, 27.918762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.855984, 36.800442, 27.988384>,  <32.058407, 36.678459, 28.030157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.855984, 36.800442, 27.988384>,  <31.518610, 37.003742, 27.918762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855984, 36.800442, 27.988384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297916, 0.172878, -0.938807,
		0.447064, 0.843676, 0.297228,
		0.843433, -0.508256, 0.174057,
		32.109013, 36.647964, 28.040602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118004, 37.425819, 27.684450>,  <31.518610, 37.003742, 27.918762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118004, 37.425819, 27.684450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181545, 37.031128, 27.670986>,  <32.219669, 36.794312, 27.662909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181545, 37.031128, 27.670986>,  <32.118004, 37.425819, 27.684450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181545, 37.031128, 27.670986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290029, 0.079225, -0.953733,
		0.943742, 0.141743, 0.298765,
		0.158855, -0.986728, -0.033658,
		32.229202, 36.735111, 27.660889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662094, 37.448120, 27.297867>,  <32.118004, 37.425819, 27.684450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662094, 37.448120, 27.297867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558369, 37.062096, 27.282808>,  <32.496132, 36.830482, 27.273773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558369, 37.062096, 27.282808>,  <32.662094, 37.448120, 27.297867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558369, 37.062096, 27.282808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349015, -0.057295, -0.935364,
		0.900524, -0.255693, 0.351677,
		-0.259316, -0.965059, -0.037645,
		32.480576, 36.772579, 27.271515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979317, 37.249557, 26.758068>,  <32.662094, 37.448120, 27.297867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979317, 37.249557, 26.758068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763069, 36.923660, 26.841892>,  <32.633320, 36.728123, 26.892187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763069, 36.923660, 26.841892>,  <32.979317, 37.249557, 26.758068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763069, 36.923660, 26.841892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201549, -0.367283, -0.908009,
		0.816766, -0.448653, 0.362773,
		-0.540622, -0.814747, 0.209559,
		32.600883, 36.679237, 26.904760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369263, 36.688549, 26.615452>,  <32.979317, 37.249557, 26.758068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369263, 36.688549, 26.615452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990044, 36.570557, 26.567812>,  <32.762512, 36.499760, 26.539228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990044, 36.570557, 26.567812>,  <33.369263, 36.688549, 26.615452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990044, 36.570557, 26.567812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209505, -0.297223, -0.931540,
		0.239391, -0.908098, 0.343583,
		-0.948050, -0.294985, -0.119098,
		32.705627, 36.482059, 26.532082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469978, 36.169689, 26.232613>,  <33.369263, 36.688549, 26.615452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469978, 36.169689, 26.232613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077099, 36.228786, 26.186195>,  <32.841373, 36.264244, 26.158344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077099, 36.228786, 26.186195>,  <33.469978, 36.169689, 26.232613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077099, 36.228786, 26.186195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048694, -0.396369, -0.916799,
		-0.181448, -0.906125, 0.382117,
		-0.982194, 0.147745, -0.116043,
		32.782440, 36.273109, 26.151382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178406, 35.511028, 25.944235>,  <33.469978, 36.169689, 26.232613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178406, 35.511028, 25.944235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932209, 35.811096, 25.847563>,  <32.784489, 35.991138, 25.789558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932209, 35.811096, 25.847563>,  <33.178406, 35.511028, 25.944235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932209, 35.811096, 25.847563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083471, -0.366970, -0.926480,
		-0.783707, -0.550071, 0.288486,
		-0.615496, 0.750170, -0.241682,
		32.747559, 36.036148, 25.775059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607410, 35.189796, 25.626429>,  <33.178406, 35.511028, 25.944235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607410, 35.189796, 25.626429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591553, 35.567825, 25.496645>,  <32.582039, 35.794643, 25.418776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591553, 35.567825, 25.496645>,  <32.607410, 35.189796, 25.626429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591553, 35.567825, 25.496645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255699, -0.323498, -0.911026,
		-0.965943, 0.046845, 0.254479,
		-0.039646, 0.945069, -0.324459,
		32.579659, 35.851345, 25.399307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095737, 35.136131, 25.156832>,  <32.607410, 35.189796, 25.626429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095737, 35.136131, 25.156832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272030, 35.487865, 25.084686>,  <32.377804, 35.698906, 25.041399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272030, 35.487865, 25.084686>,  <32.095737, 35.136131, 25.156832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272030, 35.487865, 25.084686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180338, -0.110098, -0.977423,
		-0.879338, 0.463307, 0.110054,
		0.440730, 0.879332, -0.180365,
		32.404247, 35.751663, 25.030577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615715, 35.695168, 24.777105>,  <32.095737, 35.136131, 25.156832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615715, 35.695168, 24.777105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999584, 35.746716, 24.677168>,  <32.229904, 35.777645, 24.617207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999584, 35.746716, 24.677168>,  <31.615715, 35.695168, 24.777105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999584, 35.746716, 24.677168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247663, -0.032929, -0.968287,
		-0.133010, 0.991115, 0.000315,
		0.959673, 0.128869, -0.249842,
		32.287487, 35.785378, 24.602215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550766, 36.010391, 24.210588>,  <31.615715, 35.695168, 24.777105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550766, 36.010391, 24.210588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940582, 35.923786, 24.187304>,  <32.174473, 35.871822, 24.173332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940582, 35.923786, 24.187304>,  <31.550766, 36.010391, 24.210588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940582, 35.923786, 24.187304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116514, -0.267242, -0.956560,
		0.191553, 0.938990, -0.285666,
		0.974542, -0.216516, -0.058215,
		32.232944, 35.858829, 24.169840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840187, 36.395882, 23.612436>,  <31.550766, 36.010391, 24.210588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840187, 36.395882, 23.612436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093018, 36.096165, 23.691469>,  <32.244717, 35.916336, 23.738888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093018, 36.096165, 23.691469>,  <31.840187, 36.395882, 23.612436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093018, 36.096165, 23.691469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061247, -0.205870, -0.976661,
		0.772481, 0.629427, -0.084234,
		0.632078, -0.749292, 0.197581,
		32.282642, 35.871376, 23.750744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387249, 36.526134, 23.241163>,  <31.840187, 36.395882, 23.612436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387249, 36.526134, 23.241163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395546, 36.131088, 23.303379>,  <32.400524, 35.894062, 23.340708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395546, 36.131088, 23.303379>,  <32.387249, 36.526134, 23.241163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395546, 36.131088, 23.303379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167298, -0.149949, -0.974437,
		0.985688, 0.046231, 0.162115,
		0.020740, -0.987612, 0.155537,
		32.401768, 35.834805, 23.350040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922710, 36.312336, 22.780621>,  <32.387249, 36.526134, 23.241163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922710, 36.312336, 22.780621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694927, 35.996532, 22.872169>,  <32.558258, 35.807049, 22.927099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694927, 35.996532, 22.872169>,  <32.922710, 36.312336, 22.780621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694927, 35.996532, 22.872169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152756, -0.171937, -0.973192,
		0.807700, -0.589157, -0.022691,
		-0.569461, -0.789514, 0.228871,
		32.524090, 35.759678, 22.940830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527946, 36.013165, 22.866770>,  <32.922710, 36.312336, 22.780621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527946, 36.013165, 22.866770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913097, 36.059185, 22.769089>,  <34.144188, 36.086796, 22.710480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913097, 36.059185, 22.769089>,  <33.527946, 36.013165, 22.866770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913097, 36.059185, 22.769089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198504, 0.311303, 0.929347,
		0.182944, -0.943321, 0.276907,
		0.962874, 0.115051, -0.244204,
		34.201962, 36.093700, 22.695827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877792, 35.735653, 23.385740>,  <33.527946, 36.013165, 22.866770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877792, 35.735653, 23.385740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146416, 35.971401, 23.206120>,  <34.307590, 36.112850, 23.098347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146416, 35.971401, 23.206120>,  <33.877792, 35.735653, 23.385740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146416, 35.971401, 23.206120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321800, 0.313908, 0.893256,
		0.667423, -0.744378, 0.021147,
		0.671559, 0.589375, -0.449050,
		34.347885, 36.148212, 23.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603275, 35.584873, 23.637156>,  <33.877792, 35.735653, 23.385740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603275, 35.584873, 23.637156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607330, 35.966450, 23.517225>,  <34.609764, 36.195396, 23.445267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607330, 35.966450, 23.517225>,  <34.603275, 35.584873, 23.637156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607330, 35.966450, 23.517225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395399, 0.271579, 0.877442,
		0.918453, -0.127444, -0.374435,
		0.010136, 0.953941, -0.299824,
		34.610371, 36.252632, 23.427279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201900, 35.767666, 23.929874>,  <34.603275, 35.584873, 23.637156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201900, 35.767666, 23.929874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025524, 36.115688, 23.841713>,  <34.919697, 36.324501, 23.788816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025524, 36.115688, 23.841713>,  <35.201900, 35.767666, 23.929874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025524, 36.115688, 23.841713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422142, 0.417747, 0.804540,
		0.792065, 0.261714, -0.551488,
		-0.440941, 0.870054, -0.220402,
		34.893242, 36.376705, 23.775593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809223, 36.205273, 24.018471>,  <35.201900, 35.767666, 23.929874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809223, 36.205273, 24.018471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489086, 36.445000, 24.011932>,  <35.297005, 36.588837, 24.008009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489086, 36.445000, 24.011932>,  <35.809223, 36.205273, 24.018471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489086, 36.445000, 24.011932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409762, 0.566708, 0.714799,
		0.437652, 0.565389, -0.699139,
		-0.800347, 0.599314, -0.016346,
		35.248981, 36.624794, 24.007029>
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
