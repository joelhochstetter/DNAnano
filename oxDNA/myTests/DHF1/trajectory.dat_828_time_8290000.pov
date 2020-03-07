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
	<2.044027, 2.560928, 3.066582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.283543, 2.420944, 3.354743>,  <2.427252, 2.336954, 3.527640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.283543, 2.420944, 3.354743>,  <2.044027, 2.560928, 3.066582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.283543, 2.420944, 3.354743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060563, 0.877123, 0.476431,
		-0.798614, -0.328911, 0.504017,
		0.598788, -0.349960, 0.720403,
		2.463179, 2.315956, 3.570864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.732060, 2.590088, 3.770341>,  <2.044027, 2.560928, 3.066582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.732060, 2.590088, 3.770341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130634, 2.622681, 3.761626>,  <2.369779, 2.642236, 3.756397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130634, 2.622681, 3.761626>,  <1.732060, 2.590088, 3.770341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.130634, 2.622681, 3.761626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070858, 0.948822, 0.307760,
		0.045749, -0.305119, 0.951214,
		0.996437, 0.081481, -0.021788,
		2.429565, 2.647125, 3.755090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.084617, 2.830953, 4.432880>,  <1.732060, 2.590088, 3.770341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.084617, 2.830953, 4.432880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.280266, 2.943817, 4.102754>,  <2.397655, 3.011536, 3.904678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.280266, 2.943817, 4.102754>,  <2.084617, 2.830953, 4.432880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.280266, 2.943817, 4.102754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201238, 0.957206, 0.207988,
		0.848683, 0.064353, 0.524972,
		0.489122, 0.282160, -0.825315,
		2.427002, 3.028465, 3.855159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.642602, 3.130317, 4.607858>,  <2.084617, 2.830953, 4.432880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.642602, 3.130317, 4.607858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.496109, 3.294365, 4.273749>,  <2.408213, 3.392793, 4.073285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.496109, 3.294365, 4.273749>,  <2.642602, 3.130317, 4.607858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.496109, 3.294365, 4.273749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027857, 0.892401, 0.450384,
		0.930106, 0.188213, -0.315401,
		-0.366232, 0.410119, -0.835270,
		2.386239, 3.417401, 4.023168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.056547, 3.683223, 4.414748>,  <2.642602, 3.130317, 4.607858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.056547, 3.683223, 4.414748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.696037, 3.758232, 4.258523>,  <2.479731, 3.803237, 4.164788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.696037, 3.758232, 4.258523>,  <3.056547, 3.683223, 4.414748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.696037, 3.758232, 4.258523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064710, 0.949630, 0.306620,
		0.428387, 0.251075, -0.868012,
		-0.901275, 0.187522, -0.390562,
		2.425655, 3.814489, 4.141354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175040, 4.422462, 4.282937>,  <3.056547, 3.683223, 4.414748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175040, 4.422462, 4.282937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.785843, 4.350571, 4.224996>,  <2.552325, 4.307436, 4.190231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.785843, 4.350571, 4.224996>,  <3.175040, 4.422462, 4.282937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.785843, 4.350571, 4.224996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213097, 0.940587, 0.264360,
		0.088733, 0.288088, -0.953484,
		-0.972993, -0.179727, -0.144852,
		2.493945, 4.296653, 4.181540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.974701, 4.984091, 3.921351>,  <3.175040, 4.422462, 4.282937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.974701, 4.984091, 3.921351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635921, 4.827133, 4.064854>,  <2.432654, 4.732959, 4.150955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635921, 4.827133, 4.064854>,  <2.974701, 4.984091, 3.921351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635921, 4.827133, 4.064854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254182, 0.891493, 0.375010,
		-0.466980, 0.226425, -0.854788,
		-0.846948, -0.392393, 0.358756,
		2.381837, 4.709415, 4.172481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.506331, 5.549329, 3.854739>,  <2.974701, 4.984091, 3.921351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.506331, 5.549329, 3.854739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.330929, 5.309166, 4.122238>,  <2.225688, 5.165068, 4.282738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.330929, 5.309166, 4.122238>,  <2.506331, 5.549329, 3.854739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.330929, 5.309166, 4.122238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338528, 0.799644, 0.495951,
		-0.832533, -0.008913, -0.553903,
		-0.438505, -0.600408, 0.668748,
		2.199377, 5.129044, 4.322863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.932720, 5.801595, 5.120869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.564186, 5.785202, 5.275512>,  <2.343066, 5.775366, 5.368297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.564186, 5.785202, 5.275512>,  <2.932720, 5.801595, 5.120869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.564186, 5.785202, 5.275512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191892, -0.816914, -0.543901,
		0.338114, -0.575301, 0.744787,
		-0.921334, -0.040982, 0.386606,
		2.287786, 5.772908, 5.391493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.791821, 5.033680, 5.319968>,  <2.932720, 5.801595, 5.120869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.791821, 5.033680, 5.319968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.477516, 5.243385, 5.188680>,  <2.288934, 5.369208, 5.109907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.477516, 5.243385, 5.188680>,  <2.791821, 5.033680, 5.319968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.477516, 5.243385, 5.188680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319375, -0.798323, -0.510568,
		-0.529697, -0.296360, 0.794728,
		-0.785761, 0.524263, -0.328219,
		2.241788, 5.400664, 5.090214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.255819, 4.632002, 5.484348>,  <2.791821, 5.033680, 5.319968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.255819, 4.632002, 5.484348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.134857, 4.872566, 5.188549>,  <2.062280, 5.016905, 5.011070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.134857, 4.872566, 5.188549>,  <2.255819, 4.632002, 5.484348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.134857, 4.872566, 5.188549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282933, -0.797492, -0.532875,
		-0.910220, 0.048084, 0.411325,
		-0.302405, 0.601410, -0.739497,
		2.044136, 5.052989, 4.966700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.645077, 4.384305, 5.273698>,  <2.255819, 4.632002, 5.484348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.645077, 4.384305, 5.273698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.817192, 4.600349, 4.984386>,  <1.920461, 4.729976, 4.810799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.817192, 4.600349, 4.984386>,  <1.645077, 4.384305, 5.273698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.817192, 4.600349, 4.984386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079980, -0.775285, -0.626527,
		-0.899142, 0.327435, -0.290398,
		0.430288, 0.540110, -0.723280,
		1.946278, 4.762383, 4.767403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.324051, 4.119798, 4.728666>,  <1.645077, 4.384305, 5.273698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.324051, 4.119798, 4.728666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.652817, 4.288918, 4.575985>,  <1.850076, 4.390389, 4.484376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.652817, 4.288918, 4.575985>,  <1.324051, 4.119798, 4.728666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.652817, 4.288918, 4.575985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052940, -0.723914, -0.687856,
		-0.567145, 0.545152, -0.617378,
		0.821914, 0.422799, -0.381704,
		1.899391, 4.415757, 4.461474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.198754, 4.076749, 4.077302>,  <1.324051, 4.119798, 4.728666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.198754, 4.076749, 4.077302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.588081, 4.168198, 4.085140>,  <1.821678, 4.223067, 4.089843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.588081, 4.168198, 4.085140>,  <1.198754, 4.076749, 4.077302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.588081, 4.168198, 4.085140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183373, -0.723654, -0.665357,
		-0.137934, 0.651197, -0.746268,
		0.973318, 0.228621, 0.019596,
		1.880077, 4.236784, 4.091019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.373638, 3.933887, 3.407948>,  <1.198754, 4.076749, 4.077302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.373638, 3.933887, 3.407948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.707108, 3.922844, 3.628575>,  <1.907189, 3.916218, 3.760952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.707108, 3.922844, 3.628575>,  <1.373638, 3.933887, 3.407948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.707108, 3.922844, 3.628575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372939, -0.708478, -0.599146,
		0.407315, 0.705193, -0.580342,
		0.833673, -0.027609, 0.551568,
		1.957209, 3.914561, 3.794046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.873743, 3.937501, 2.977508>,  <1.373638, 3.933887, 3.407948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.873743, 3.937501, 2.977508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.014038, 3.759560, 3.307135>,  <2.098215, 3.652794, 3.504911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.014038, 3.759560, 3.307135>,  <1.873743, 3.937501, 2.977508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.014038, 3.759560, 3.307135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211304, -0.819682, -0.532422,
		0.912323, 0.360869, -0.193494,
		0.350738, -0.444855, 0.824068,
		2.119259, 3.626103, 3.554355>
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
