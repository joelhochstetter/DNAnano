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
	<24.490744, 34.762787, 34.718472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262856, 35.082298, 34.795799>,  <24.126123, 35.274006, 34.842194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262856, 35.082298, 34.795799>,  <24.490744, 34.762787, 34.718472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262856, 35.082298, 34.795799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086331, 0.292090, -0.952486,
		-0.817293, -0.525960, -0.235369,
		-0.569719, 0.798780, 0.193317,
		24.091940, 35.321934, 34.853794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853752, 34.978443, 34.168941>,  <24.490744, 34.762787, 34.718472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853752, 34.978443, 34.168941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933270, 34.914833, 34.555763>,  <24.980980, 34.876667, 34.787857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933270, 34.914833, 34.555763>,  <24.853752, 34.978443, 34.168941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933270, 34.914833, 34.555763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502091, 0.863941, 0.038857,
		-0.841657, 0.477824, 0.251589,
		0.198791, -0.159025, 0.967054,
		24.992907, 34.867126, 34.845879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532875, 35.526966, 34.533115>,  <24.853752, 34.978443, 34.168941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532875, 35.526966, 34.533115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851131, 35.354015, 34.702824>,  <25.042086, 35.250244, 34.804649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851131, 35.354015, 34.702824>,  <24.532875, 35.526966, 34.533115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.851131, 35.354015, 34.702824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474450, 0.880252, 0.007337,
		-0.376636, 0.195457, 0.905507,
		0.795640, -0.432381, 0.424269,
		25.089823, 35.224300, 34.830105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676355, 35.904510, 35.058609>,  <24.532875, 35.526966, 34.533115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676355, 35.904510, 35.058609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018896, 35.737255, 34.937405>,  <25.224421, 35.636902, 34.864681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018896, 35.737255, 34.937405>,  <24.676355, 35.904510, 35.058609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018896, 35.737255, 34.937405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342688, 0.899128, -0.272274,
		0.386296, 0.129324, 0.913264,
		0.856353, -0.418143, -0.303011,
		25.275803, 35.611813, 34.846500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264566, 36.220844, 35.359459>,  <24.676355, 35.904510, 35.058609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264566, 36.220844, 35.359459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365931, 36.104130, 34.990536>,  <25.426748, 36.034100, 34.769184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365931, 36.104130, 34.990536>,  <25.264566, 36.220844, 35.359459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365931, 36.104130, 34.990536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425644, 0.889803, -0.164553,
		0.868683, -0.350874, 0.349682,
		0.253411, -0.291785, -0.922304,
		25.441954, 36.016594, 34.713844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964041, 36.464157, 35.204678>,  <25.264566, 36.220844, 35.359459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964041, 36.464157, 35.204678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721245, 36.454166, 34.886951>,  <25.575567, 36.448174, 34.696316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721245, 36.454166, 34.886951>,  <25.964041, 36.464157, 35.204678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721245, 36.454166, 34.886951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327087, 0.903072, -0.278344,
		0.724277, -0.428762, -0.539987,
		-0.606990, -0.024976, -0.794317,
		25.539148, 36.446674, 34.648655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412294, 36.942902, 34.697952>,  <25.964041, 36.464157, 35.204678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412294, 36.942902, 34.697952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742706, 36.726501, 34.761189>,  <26.940954, 36.596661, 34.799129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742706, 36.726501, 34.761189>,  <26.412294, 36.942902, 34.697952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742706, 36.726501, 34.761189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422320, -0.779846, -0.462045,
		0.373252, 0.314899, -0.872652,
		0.826032, -0.540998, 0.158091,
		26.990517, 36.564201, 34.808617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547913, 36.684025, 34.165577>,  <26.412294, 36.942902, 34.697952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547913, 36.684025, 34.165577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701071, 36.400959, 34.403095>,  <26.792965, 36.231117, 34.545609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701071, 36.400959, 34.403095>,  <26.547913, 36.684025, 34.165577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701071, 36.400959, 34.403095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540706, -0.692857, -0.477060,
		0.749018, -0.138407, -0.647932,
		0.382896, -0.707667, 0.593800,
		26.815939, 36.188660, 34.581234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999708, 36.143673, 33.829876>,  <26.547913, 36.684025, 34.165577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999708, 36.143673, 33.829876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812584, 35.977596, 34.141972>,  <26.700310, 35.877953, 34.329227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812584, 35.977596, 34.141972>,  <26.999708, 36.143673, 33.829876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812584, 35.977596, 34.141972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394670, -0.691756, -0.604739,
		0.790816, -0.590839, 0.159748,
		-0.467810, -0.415190, 0.780238,
		26.672241, 35.853039, 34.376041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036161, 36.748638, 33.482235>,  <26.999708, 36.143673, 33.829876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036161, 36.748638, 33.482235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365534, 36.938992, 33.358624>,  <27.563156, 37.053204, 33.284458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365534, 36.938992, 33.358624>,  <27.036161, 36.748638, 33.482235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365534, 36.938992, 33.358624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549822, 0.534602, -0.641792,
		-0.140215, 0.698378, 0.701860,
		0.823429, 0.475887, -0.309024,
		27.612562, 37.081757, 33.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000513, 37.494862, 33.601803>,  <27.036161, 36.748638, 33.482235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000513, 37.494862, 33.601803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220030, 37.404350, 33.279903>,  <27.351740, 37.350044, 33.086761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220030, 37.404350, 33.279903>,  <27.000513, 37.494862, 33.601803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220030, 37.404350, 33.279903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590160, 0.576934, -0.564676,
		0.592062, 0.784822, 0.183077,
		0.548794, -0.226278, -0.804751,
		27.384668, 37.336468, 33.038479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943020, 37.970119, 33.108864>,  <27.000513, 37.494862, 33.601803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943020, 37.970119, 33.108864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093216, 37.675560, 32.883751>,  <27.183334, 37.498825, 32.748684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093216, 37.675560, 32.883751>,  <26.943020, 37.970119, 33.108864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093216, 37.675560, 32.883751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352737, 0.447976, -0.821519,
		0.857078, 0.506988, -0.091543,
		0.375492, -0.736397, -0.562784,
		27.205864, 37.454639, 32.714916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358324, 38.233490, 32.683952>,  <26.943020, 37.970119, 33.108864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358324, 38.233490, 32.683952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238554, 37.904476, 32.490547>,  <27.166693, 37.707069, 32.374504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238554, 37.904476, 32.490547>,  <27.358324, 38.233490, 32.683952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238554, 37.904476, 32.490547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202781, 0.550049, -0.810140,
		0.932322, -0.144528, -0.331492,
		-0.299425, -0.822531, -0.483516,
		27.148727, 37.657719, 32.345493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761696, 38.196747, 32.090572>,  <27.358324, 38.233490, 32.683952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761696, 38.196747, 32.090572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414728, 37.999023, 32.067802>,  <27.206547, 37.880390, 32.054142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414728, 37.999023, 32.067802>,  <27.761696, 38.196747, 32.090572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414728, 37.999023, 32.067802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181294, 0.420506, -0.888992,
		0.463379, -0.760807, -0.454371,
		-0.867417, -0.494315, -0.056924,
		27.154503, 37.850731, 32.050728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729662, 37.690170, 31.528130>,  <27.761696, 38.196747, 32.090572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729662, 37.690170, 31.528130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382086, 37.871174, 31.608301>,  <27.173540, 37.979778, 31.656404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382086, 37.871174, 31.608301>,  <27.729662, 37.690170, 31.528130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382086, 37.871174, 31.608301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049327, 0.323778, -0.944846,
		-0.492450, -0.830903, -0.259023,
		-0.868942, 0.452513, 0.200430,
		27.121403, 38.006927, 31.668430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317156, 37.477100, 32.097275>,  <27.729662, 37.690170, 31.528130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317156, 37.477100, 32.097275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046677, 37.472076, 32.391918>,  <27.884390, 37.469063, 32.568707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046677, 37.472076, 32.391918>,  <28.317156, 37.477100, 32.097275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046677, 37.472076, 32.391918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548511, -0.676071, 0.491999,
		0.491825, 0.736729, 0.464046,
		-0.676198, -0.012557, 0.736613,
		27.843817, 37.468307, 32.612904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635689, 37.629749, 32.753689>,  <28.317156, 37.477100, 32.097275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635689, 37.629749, 32.753689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317080, 37.415077, 32.865059>,  <28.125914, 37.286274, 32.931881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317080, 37.415077, 32.865059>,  <28.635689, 37.629749, 32.753689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317080, 37.415077, 32.865059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544997, -0.437942, 0.714972,
		-0.261776, 0.721235, 0.641321,
		-0.796525, -0.536681, 0.278428,
		28.078123, 37.254074, 32.948586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654171, 37.567474, 33.486122>,  <28.635689, 37.629749, 32.753689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654171, 37.567474, 33.486122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439093, 37.255627, 33.357700>,  <28.310045, 37.068520, 33.280647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439093, 37.255627, 33.357700>,  <28.654171, 37.567474, 33.486122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439093, 37.255627, 33.357700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495485, -0.600276, 0.627824,
		-0.682186, 0.178500, 0.709056,
		-0.537696, -0.779619, -0.321056,
		28.277784, 37.021740, 33.261383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080658, 37.636532, 34.078533>,  <28.654171, 37.567474, 33.486122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080658, 37.636532, 34.078533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067417, 37.285942, 33.886410>,  <29.059473, 37.075588, 33.771137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067417, 37.285942, 33.886410>,  <29.080658, 37.636532, 34.078533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067417, 37.285942, 33.886410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092033, 0.481203, -0.871765,
		0.995206, 0.015348, -0.096592,
		-0.033100, -0.876475, -0.480308,
		29.057487, 37.022999, 33.742317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740026, 37.521870, 33.723392>,  <29.080658, 37.636532, 34.078533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740026, 37.521870, 33.723392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425869, 37.387695, 33.515301>,  <29.237373, 37.307190, 33.390446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425869, 37.387695, 33.515301>,  <29.740026, 37.521870, 33.723392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425869, 37.387695, 33.515301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313398, 0.509276, -0.801511,
		0.533800, -0.792539, -0.294855,
		-0.785392, -0.335440, -0.520232,
		29.190250, 37.287064, 33.359230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766214, 36.761852, 34.066502>,  <29.740026, 37.521870, 33.723392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766214, 36.761852, 34.066502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552536, 36.435558, 34.155239>,  <29.424330, 36.239780, 34.208481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552536, 36.435558, 34.155239>,  <29.766214, 36.761852, 34.066502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552536, 36.435558, 34.155239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844340, -0.501951, 0.187444,
		-0.041549, 0.287443, 0.956896,
		-0.534195, -0.815733, 0.221844,
		29.392277, 36.190838, 34.221794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957338, 36.531101, 34.820831>,  <29.766214, 36.761852, 34.066502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957338, 36.531101, 34.820831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830788, 36.261333, 34.553982>,  <29.754858, 36.099472, 34.393871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830788, 36.261333, 34.553982>,  <29.957338, 36.531101, 34.820831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830788, 36.261333, 34.553982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864225, -0.494905, 0.090472,
		-0.391181, -0.547925, 0.739429,
		-0.316375, -0.674424, -0.667128,
		29.735876, 36.059006, 34.353844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781374, 35.819878, 35.004627>,  <29.957338, 36.531101, 34.820831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781374, 35.819878, 35.004627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898214, 35.807983, 34.622257>,  <29.968319, 35.800846, 34.392834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898214, 35.807983, 34.622257>,  <29.781374, 35.819878, 35.004627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898214, 35.807983, 34.622257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856122, -0.437397, 0.275208,
		-0.426303, -0.898777, -0.102304,
		0.292098, -0.029738, -0.955926,
		29.985844, 35.799061, 34.335480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094559, 35.170399, 34.740593>,  <29.781374, 35.819878, 35.004627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094559, 35.170399, 34.740593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251144, 35.466728, 34.522259>,  <30.345097, 35.644524, 34.391258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251144, 35.466728, 34.522259>,  <30.094559, 35.170399, 34.740593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251144, 35.466728, 34.522259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898421, -0.435971, 0.052625,
		-0.198984, -0.510993, -0.836237,
		0.391466, 0.740821, -0.545838,
		30.368584, 35.688976, 34.358509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611118, 34.930813, 34.138042>,  <30.094559, 35.170399, 34.740593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611118, 34.930813, 34.138042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664566, 35.287670, 34.310654>,  <30.696634, 35.501785, 34.414223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664566, 35.287670, 34.310654>,  <30.611118, 34.930813, 34.138042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664566, 35.287670, 34.310654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955891, -0.230947, 0.181480,
		0.261567, 0.388247, -0.883655,
		0.133619, 0.892148, 0.431530,
		30.704651, 35.555313, 34.440113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195139, 35.284096, 33.922264>,  <30.611118, 34.930813, 34.138042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195139, 35.284096, 33.922264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132317, 35.429096, 34.289726>,  <31.094624, 35.516098, 34.510204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132317, 35.429096, 34.289726>,  <31.195139, 35.284096, 33.922264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132317, 35.429096, 34.289726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962551, -0.151944, 0.224519,
		0.220973, 0.919514, -0.325062,
		-0.157057, 0.362501, 0.918655,
		31.085199, 35.537846, 34.565323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591936, 35.828671, 33.994507>,  <31.195139, 35.284096, 33.922264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591936, 35.828671, 33.994507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504717, 35.660828, 34.346958>,  <31.452385, 35.560123, 34.558430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504717, 35.660828, 34.346958>,  <31.591936, 35.828671, 33.994507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504717, 35.660828, 34.346958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955310, -0.276415, 0.104770,
		0.199595, 0.864595, 0.461127,
		-0.218046, -0.419608, 0.881127,
		31.439302, 35.534946, 34.611298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459429, 36.324379, 34.620049>,  <31.591936, 35.828671, 33.994507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459429, 36.324379, 34.620049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463957, 36.095783, 34.948261>,  <31.466675, 35.958626, 35.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463957, 36.095783, 34.948261>,  <31.459429, 36.324379, 34.620049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463957, 36.095783, 34.948261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384786, 0.759883, 0.523944,
		-0.922936, 0.309796, 0.228505,
		0.011322, -0.571493, 0.820529,
		31.467354, 35.924335, 35.194420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379940, 36.747581, 35.226158>,  <31.459429, 36.324379, 34.620049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379940, 36.747581, 35.226158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545612, 36.413460, 35.370781>,  <31.645016, 36.212986, 35.457554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545612, 36.413460, 35.370781>,  <31.379940, 36.747581, 35.226158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545612, 36.413460, 35.370781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389384, 0.521652, 0.759118,
		-0.822700, -0.173627, 0.541311,
		0.414179, -0.835304, 0.361556,
		31.669867, 36.162868, 35.479248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170736, 36.607555, 35.980923>,  <31.379940, 36.747581, 35.226158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170736, 36.607555, 35.980923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527399, 36.452942, 35.886658>,  <31.741396, 36.360172, 35.830097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527399, 36.452942, 35.886658>,  <31.170736, 36.607555, 35.980923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527399, 36.452942, 35.886658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437955, 0.604668, 0.665261,
		-0.114647, -0.696396, 0.708441,
		0.891657, -0.386536, -0.235666,
		31.794895, 36.336983, 35.815956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604696, 36.441509, 36.574478>,  <31.170736, 36.607555, 35.980923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604696, 36.441509, 36.574478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856419, 36.493229, 36.267948>,  <32.007454, 36.524261, 36.084030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856419, 36.493229, 36.267948>,  <31.604696, 36.441509, 36.574478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856419, 36.493229, 36.267948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571955, 0.590536, 0.569328,
		0.526155, -0.796586, 0.297676,
		0.629307, 0.129298, -0.766325,
		32.045212, 36.532017, 36.038052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190395, 36.537197, 36.970974>,  <31.604696, 36.441509, 36.574478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190395, 36.537197, 36.970974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330811, 36.670925, 36.621117>,  <32.415062, 36.751160, 36.411201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330811, 36.670925, 36.621117>,  <32.190395, 36.537197, 36.970974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330811, 36.670925, 36.621117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747403, 0.462646, 0.476810,
		0.564056, -0.821092, -0.087461,
		0.351042, 0.334316, -0.874644,
		32.436123, 36.771221, 36.358723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856049, 36.257324, 36.692886>,  <32.190395, 36.537197, 36.970974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856049, 36.257324, 36.692886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763355, 36.638454, 36.614471>,  <32.707737, 36.867130, 36.567425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763355, 36.638454, 36.614471>,  <32.856049, 36.257324, 36.692886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763355, 36.638454, 36.614471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565539, 0.295926, 0.769802,
		0.791495, 0.067527, -0.607434,
		-0.231738, 0.952821, -0.196034,
		32.693832, 36.924301, 36.555660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273113, 36.825485, 36.331131>,  <32.856049, 36.257324, 36.692886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273113, 36.825485, 36.331131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171501, 36.981480, 35.977097>,  <33.110535, 37.075077, 35.764675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171501, 36.981480, 35.977097>,  <33.273113, 36.825485, 36.331131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171501, 36.981480, 35.977097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228916, 0.864862, 0.446779,
		0.939715, 0.316107, -0.130428,
		-0.254032, 0.389988, -0.885086,
		33.095291, 37.098476, 35.711571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585289, 37.386986, 35.935253>,  <33.273113, 36.825485, 36.331131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585289, 37.386986, 35.935253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207405, 37.466728, 35.831112>,  <32.980675, 37.514576, 35.768627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207405, 37.466728, 35.831112>,  <33.585289, 37.386986, 35.935253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207405, 37.466728, 35.831112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034779, 0.850404, 0.524980,
		0.326062, 0.486899, -0.810317,
		-0.944709, 0.199358, -0.260350,
		32.923992, 37.526535, 35.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646435, 38.106674, 35.851589>,  <33.585289, 37.386986, 35.935253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646435, 38.106674, 35.851589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269005, 37.986252, 35.906765>,  <33.042545, 37.913998, 35.939869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269005, 37.986252, 35.906765>,  <33.646435, 38.106674, 35.851589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269005, 37.986252, 35.906765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215222, 0.874095, 0.435474,
		-0.251672, 0.381216, -0.889570,
		-0.943579, -0.301052, 0.137939,
		32.985931, 37.895935, 35.948147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175091, 38.602684, 35.481789>,  <33.646435, 38.106674, 35.851589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175091, 38.602684, 35.481789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995079, 38.420036, 35.788769>,  <32.887074, 38.310448, 35.972958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995079, 38.420036, 35.788769>,  <33.175091, 38.602684, 35.481789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995079, 38.420036, 35.788769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227943, 0.889659, 0.395662,
		-0.863435, 0.003123, -0.504451,
		-0.450025, -0.456615, 0.767451,
		32.860073, 38.283051, 36.019005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553761, 38.967106, 35.629112>,  <33.175091, 38.602684, 35.481789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553761, 38.967106, 35.629112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677711, 38.774971, 35.957321>,  <32.752083, 38.659691, 36.154247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677711, 38.774971, 35.957321>,  <32.553761, 38.967106, 35.629112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677711, 38.774971, 35.957321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044937, 0.869437, 0.491997,
		-0.949715, -0.115585, 0.291001,
		0.309875, -0.480333, 0.820523,
		32.770676, 38.630871, 36.203480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183186, 39.321075, 36.250111>,  <32.553761, 38.967106, 35.629112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183186, 39.321075, 36.250111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510811, 39.121864, 36.364033>,  <32.707386, 39.002338, 36.432384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510811, 39.121864, 36.364033>,  <32.183186, 39.321075, 36.250111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510811, 39.121864, 36.364033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237585, 0.746302, 0.621761,
		-0.522203, -0.441593, 0.729588,
		0.819059, -0.498025, 0.284805,
		32.756527, 38.972458, 36.449474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280575, 39.492405, 37.017132>,  <32.183186, 39.321075, 36.250111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280575, 39.492405, 37.017132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590984, 39.385246, 36.788742>,  <32.777229, 39.320950, 36.651707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590984, 39.385246, 36.788742>,  <32.280575, 39.492405, 37.017132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590984, 39.385246, 36.788742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496174, 0.818191, 0.290473,
		0.389351, -0.508719, 0.767861,
		0.776026, -0.267897, -0.570977,
		32.823792, 39.304878, 36.617451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939960, 39.715672, 37.208057>,  <32.280575, 39.492405, 37.017132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939960, 39.715672, 37.208057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725410, 39.404461, 37.338890>,  <32.596680, 39.217735, 37.417389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725410, 39.404461, 37.338890>,  <32.939960, 39.715672, 37.208057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725410, 39.404461, 37.338890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196962, -0.492237, -0.847885,
		0.820678, -0.390358, 0.417263,
		-0.536371, -0.778025, 0.327082,
		32.564499, 39.171055, 37.437016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314926, 39.118401, 37.117325>,  <32.939960, 39.715672, 37.208057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314926, 39.118401, 37.117325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932106, 39.002556, 37.112076>,  <32.702412, 38.933048, 37.108925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932106, 39.002556, 37.112076>,  <33.314926, 39.118401, 37.117325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932106, 39.002556, 37.112076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205140, -0.644539, -0.736537,
		0.204849, -0.707598, 0.676270,
		-0.957055, -0.289609, -0.013123,
		32.644989, 38.915672, 37.108139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270416, 38.486309, 37.361904>,  <33.314926, 39.118401, 37.117325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270416, 38.486309, 37.361904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972164, 38.566837, 37.107815>,  <32.793213, 38.615154, 36.955360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972164, 38.566837, 37.107815>,  <33.270416, 38.486309, 37.361904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972164, 38.566837, 37.107815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244443, -0.804176, -0.541800,
		-0.619909, -0.559257, 0.550404,
		-0.745628, 0.201324, -0.635223,
		32.748474, 38.627235, 36.917248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813076, 37.954147, 37.316383>,  <33.270416, 38.486309, 37.361904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813076, 37.954147, 37.316383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792377, 38.160290, 36.974216>,  <32.779957, 38.283974, 36.768917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792377, 38.160290, 36.974216>,  <32.813076, 37.954147, 37.316383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792377, 38.160290, 36.974216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080204, -0.851650, -0.517938,
		-0.995434, -0.095411, 0.002740,
		-0.051751, 0.515354, -0.855414,
		32.776852, 38.314896, 36.717594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251755, 37.718834, 37.005478>,  <32.813076, 37.954147, 37.316383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251755, 37.718834, 37.005478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485664, 37.881008, 36.724434>,  <32.626011, 37.978313, 36.555809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485664, 37.881008, 36.724434>,  <32.251755, 37.718834, 37.005478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485664, 37.881008, 36.724434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008874, -0.869285, -0.494232,
		-0.811149, 0.282778, -0.511931,
		0.584772, 0.405439, -0.702611,
		32.661095, 38.002640, 36.513649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895441, 37.665554, 36.301357>,  <32.251755, 37.718834, 37.005478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895441, 37.665554, 36.301357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294712, 37.666546, 36.325470>,  <32.534275, 37.667141, 36.339939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294712, 37.666546, 36.325470>,  <31.895441, 37.665554, 36.301357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294712, 37.666546, 36.325470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030264, -0.884974, -0.464656,
		0.052199, 0.465634, -0.883437,
		0.998178, 0.002482, 0.060286,
		32.594166, 37.667290, 36.343555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217957, 37.764687, 35.614857>,  <31.895441, 37.665554, 36.301357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217957, 37.764687, 35.614857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439919, 37.543549, 35.863518>,  <32.573093, 37.410866, 36.012714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439919, 37.543549, 35.863518>,  <32.217957, 37.764687, 35.614857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439919, 37.543549, 35.863518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299370, -0.829889, -0.470810,
		0.776184, 0.075150, -0.626012,
		0.554901, -0.552845, 0.621649,
		32.606388, 37.377697, 36.050011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677532, 37.275928, 35.152897>,  <32.217957, 37.764687, 35.614857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677532, 37.275928, 35.152897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619335, 37.123119, 35.517948>,  <32.584419, 37.031433, 35.736980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619335, 37.123119, 35.517948>,  <32.677532, 37.275928, 35.152897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619335, 37.123119, 35.517948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332576, -0.849882, -0.408771,
		0.931787, -0.362991, -0.003402,
		-0.145489, -0.382019, 0.912631,
		32.575687, 37.008514, 35.791737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016029, 36.656326, 35.202187>,  <32.677532, 37.275928, 35.152897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016029, 36.656326, 35.202187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702446, 36.659107, 35.450497>,  <32.514297, 36.660778, 35.599483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702446, 36.659107, 35.450497>,  <33.016029, 36.656326, 35.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702446, 36.659107, 35.450497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435219, -0.719228, -0.541568,
		0.442711, -0.694739, 0.566873,
		-0.783959, 0.006956, 0.620774,
		32.467258, 36.661194, 35.636730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959991, 36.280952, 35.843117>,  <33.016029, 36.656326, 35.202187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959991, 36.280952, 35.843117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765934, 36.027767, 36.084442>,  <32.649498, 35.875854, 36.229237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765934, 36.027767, 36.084442>,  <32.959991, 36.280952, 35.843117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765934, 36.027767, 36.084442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381761, -0.774038, -0.505098,
		0.786697, -0.014725, 0.617164,
		-0.485146, -0.632968, 0.603312,
		32.620392, 35.837875, 36.265434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929127, 35.803886, 35.382999>,  <32.959991, 36.280952, 35.843117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929127, 35.803886, 35.382999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583855, 35.966446, 35.502834>,  <32.376690, 36.063984, 35.574734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583855, 35.966446, 35.502834>,  <32.929127, 35.803886, 35.382999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583855, 35.966446, 35.502834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500555, -0.766423, -0.402542,
		0.066013, -0.497425, 0.864991,
		-0.863184, 0.406403, 0.299583,
		32.324898, 36.088367, 35.592709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433594, 35.313015, 35.680523>,  <32.929127, 35.803886, 35.382999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433594, 35.313015, 35.680523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215797, 35.596291, 35.500748>,  <32.085117, 35.766254, 35.392883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215797, 35.596291, 35.500748>,  <32.433594, 35.313015, 35.680523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215797, 35.596291, 35.500748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475768, -0.702060, -0.529865,
		-0.690766, -0.074695, 0.719210,
		-0.544507, 0.708190, -0.449421,
		32.052448, 35.808746, 35.365917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465717, 34.575363, 35.687241>,  <32.433594, 35.313015, 35.680523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465717, 34.575363, 35.687241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182526, 34.331512, 35.544624>,  <32.012611, 34.185200, 35.459053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182526, 34.331512, 35.544624>,  <32.465717, 34.575363, 35.687241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182526, 34.331512, 35.544624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704804, -0.577741, -0.411662,
		0.044971, -0.542741, 0.838696,
		-0.707975, -0.609629, -0.356544,
		31.970133, 34.148624, 35.437660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683689, 33.953438, 36.040001>,  <32.465717, 34.575363, 35.687241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683689, 33.953438, 36.040001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494335, 33.934906, 35.688148>,  <32.380722, 33.923786, 35.477036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494335, 33.934906, 35.688148>,  <32.683689, 33.953438, 36.040001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494335, 33.934906, 35.688148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781907, -0.481946, -0.395411,
		-0.405618, -0.874975, 0.264372,
		-0.473388, -0.046329, -0.879635,
		32.352318, 33.921009, 35.424259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799534, 33.273403, 35.803757>,  <32.683689, 33.953438, 36.040001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799534, 33.273403, 35.803757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711025, 33.492413, 35.480953>,  <32.657921, 33.623817, 35.287273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711025, 33.492413, 35.480953>,  <32.799534, 33.273403, 35.803757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711025, 33.492413, 35.480953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807225, -0.361495, -0.466592,
		-0.547200, -0.754676, -0.361989,
		-0.221269, 0.547526, -0.807004,
		32.644646, 33.656670, 35.238853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900627, 32.853142, 35.126305>,  <32.799534, 33.273403, 35.803757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900627, 32.853142, 35.126305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877941, 33.232014, 35.000050>,  <32.864330, 33.459339, 34.924297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877941, 33.232014, 35.000050>,  <32.900627, 32.853142, 35.126305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877941, 33.232014, 35.000050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471201, -0.253329, -0.844863,
		-0.880200, -0.196645, -0.431947,
		-0.056713, 0.947183, -0.315640,
		32.860928, 33.516167, 34.905357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421898, 33.006424, 34.529316>,  <32.900627, 32.853142, 35.126305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421898, 33.006424, 34.529316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746792, 33.239746, 34.531521>,  <32.941727, 33.379738, 34.532845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746792, 33.239746, 34.531521>,  <32.421898, 33.006424, 34.529316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746792, 33.239746, 34.531521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210630, -0.284458, -0.935264,
		-0.543975, 0.760816, -0.353908,
		0.812235, 0.583304, 0.005513,
		32.990463, 33.414738, 34.533176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269985, 33.504120, 33.891666>,  <32.421898, 33.006424, 34.529316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269985, 33.504120, 33.891666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628719, 33.374565, 34.012188>,  <32.843960, 33.296833, 34.084499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628719, 33.374565, 34.012188>,  <32.269985, 33.504120, 33.891666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628719, 33.374565, 34.012188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133078, -0.452033, -0.882019,
		0.421873, 0.831122, -0.362297,
		0.896835, -0.323886, 0.301304,
		32.897770, 33.277401, 34.102581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949974, 33.752495, 33.581078>,  <32.269985, 33.504120, 33.891666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949974, 33.752495, 33.581078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944645, 33.364994, 33.680141>,  <32.941448, 33.132492, 33.739578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944645, 33.364994, 33.680141>,  <32.949974, 33.752495, 33.581078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944645, 33.364994, 33.680141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234946, -0.243781, -0.940942,
		0.971917, 0.045647, 0.230853,
		-0.013326, -0.968755, 0.247659,
		32.940647, 33.074368, 33.754440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573772, 33.439186, 33.217453>,  <32.949974, 33.752495, 33.581078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573772, 33.439186, 33.217453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297207, 33.157330, 33.281239>,  <33.131268, 32.988216, 33.319508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297207, 33.157330, 33.281239>,  <33.573772, 33.439186, 33.217453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297207, 33.157330, 33.281239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246588, -0.437633, -0.864680,
		0.679077, -0.558528, 0.476341,
		-0.691410, -0.704645, 0.159460,
		33.089783, 32.945934, 33.329075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920139, 32.795799, 33.115032>,  <33.573772, 33.439186, 33.217453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920139, 32.795799, 33.115032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532322, 32.711121, 33.065758>,  <33.299633, 32.660313, 33.036194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532322, 32.711121, 33.065758>,  <33.920139, 32.795799, 33.115032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532322, 32.711121, 33.065758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219825, -0.530305, -0.818812,
		0.108017, -0.820951, 0.560689,
		-0.969541, -0.211699, -0.123183,
		33.241459, 32.647610, 33.028801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971397, 32.191467, 32.846840>,  <33.920139, 32.795799, 33.115032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971397, 32.191467, 32.846840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586891, 32.291317, 32.800098>,  <33.356186, 32.351227, 32.772053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586891, 32.291317, 32.800098>,  <33.971397, 32.191467, 32.846840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586891, 32.291317, 32.800098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099090, -0.708615, -0.698602,
		-0.257195, -0.659963, 0.705903,
		-0.961265, 0.249625, -0.116857,
		33.298512, 32.366203, 32.765041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547409, 31.602190, 32.711155>,  <33.971397, 32.191467, 32.846840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547409, 31.602190, 32.711155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347858, 31.910952, 32.553532>,  <33.228127, 32.096207, 32.458958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347858, 31.910952, 32.553532>,  <33.547409, 31.602190, 32.711155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347858, 31.910952, 32.553532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251690, -0.564127, -0.786392,
		-0.829319, -0.293134, 0.475713,
		-0.498881, 0.771902, -0.394062,
		33.198193, 32.142521, 32.435314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227692, 31.269066, 32.216572>,  <33.547409, 31.602190, 32.711155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227692, 31.269066, 32.216572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147564, 31.649849, 32.123920>,  <33.099487, 31.878319, 32.068329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147564, 31.649849, 32.123920>,  <33.227692, 31.269066, 32.216572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147564, 31.649849, 32.123920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294990, -0.284057, -0.912301,
		-0.934266, -0.114423, 0.337719,
		-0.200320, 0.951955, -0.231631,
		33.087467, 31.935436, 32.054432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769081, 31.309721, 31.786972>,  <33.227692, 31.269066, 32.216572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769081, 31.309721, 31.786972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850468, 31.682320, 31.666365>,  <32.899300, 31.905880, 31.594000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850468, 31.682320, 31.666365>,  <32.769081, 31.309721, 31.786972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850468, 31.682320, 31.666365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296343, -0.234927, -0.925738,
		-0.933158, 0.277708, 0.228244,
		0.203465, 0.931498, -0.301520,
		32.911507, 31.961769, 31.575909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190159, 31.406225, 31.318760>,  <32.769081, 31.309721, 31.786972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190159, 31.406225, 31.318760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462269, 31.688547, 31.239695>,  <32.625534, 31.857941, 31.192255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462269, 31.688547, 31.239695>,  <32.190159, 31.406225, 31.318760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462269, 31.688547, 31.239695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123314, -0.155624, -0.980089,
		-0.722512, 0.691102, -0.018831,
		0.680272, 0.705804, -0.197663,
		32.666351, 31.900288, 31.180395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603745, 30.972231, 31.546665>,  <32.190159, 31.406225, 31.318760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603745, 30.972231, 31.546665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256706, 30.784731, 31.480276>,  <31.048483, 30.672232, 31.440443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256706, 30.784731, 31.480276>,  <31.603745, 30.972231, 31.546665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256706, 30.784731, 31.480276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244599, -0.111685, -0.963171,
		0.432950, -0.876242, 0.211554,
		-0.867598, -0.468750, -0.165974,
		30.996428, 30.644106, 31.430483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509222, 30.198738, 31.306520>,  <31.603745, 30.972231, 31.546665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509222, 30.198738, 31.306520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228907, 30.416098, 31.121649>,  <31.060717, 30.546513, 31.010725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228907, 30.416098, 31.121649>,  <31.509222, 30.198738, 31.306520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228907, 30.416098, 31.121649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470451, -0.134987, -0.872041,
		-0.536254, -0.828550, -0.161045,
		-0.700791, 0.543399, -0.462179,
		31.018669, 30.579117, 30.982994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569431, 29.972210, 30.688084>,  <31.509222, 30.198738, 31.306520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569431, 29.972210, 30.688084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367777, 30.304729, 30.594460>,  <31.246784, 30.504242, 30.538284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367777, 30.304729, 30.594460>,  <31.569431, 29.972210, 30.688084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367777, 30.304729, 30.594460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499359, 0.059467, -0.864352,
		-0.704617, -0.552633, -0.445097,
		-0.504138, 0.831300, -0.234061,
		31.216536, 30.554119, 30.524240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515726, 29.942396, 29.997835>,  <31.569431, 29.972210, 30.688084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515726, 29.942396, 29.997835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430405, 30.331125, 30.037954>,  <31.379211, 30.564363, 30.062027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430405, 30.331125, 30.037954>,  <31.515726, 29.942396, 29.997835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430405, 30.331125, 30.037954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462201, 0.190826, -0.865999,
		-0.860738, -0.138364, -0.489882,
		-0.213305, 0.971823, 0.100300,
		31.366413, 30.622673, 30.068045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286137, 30.250393, 29.243494>,  <31.515726, 29.942396, 29.997835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286137, 30.250393, 29.243494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439457, 30.541580, 29.470877>,  <31.531448, 30.716293, 29.607306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439457, 30.541580, 29.470877>,  <31.286137, 30.250393, 29.243494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439457, 30.541580, 29.470877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708289, 0.163343, -0.686764,
		-0.592796, 0.665869, -0.453003,
		0.383301, 0.727968, 0.568457,
		31.554447, 30.759970, 29.641415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301308, 30.790411, 28.704977>,  <31.286137, 30.250393, 29.243494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301308, 30.790411, 28.704977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544512, 30.875940, 29.010815>,  <31.690434, 30.927258, 29.194317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544512, 30.875940, 29.010815>,  <31.301308, 30.790411, 28.704977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544512, 30.875940, 29.010815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731115, 0.224645, -0.644210,
		-0.309509, 0.950691, -0.019744,
		0.608009, 0.213824, 0.764594,
		31.726915, 30.940088, 29.240192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589111, 31.431337, 28.551065>,  <31.301308, 30.790411, 28.704977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589111, 31.431337, 28.551065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846689, 31.286955, 28.820894>,  <32.001236, 31.200325, 28.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846689, 31.286955, 28.820894>,  <31.589111, 31.431337, 28.551065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846689, 31.286955, 28.820894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738868, 0.064611, -0.670745,
		0.198523, 0.930343, 0.308303,
		0.643943, -0.360954, 0.674574,
		32.039871, 31.178669, 29.023266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127316, 31.883028, 28.577162>,  <31.589111, 31.431337, 28.551065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127316, 31.883028, 28.577162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283688, 31.546587, 28.726681>,  <32.377510, 31.344723, 28.816393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283688, 31.546587, 28.726681>,  <32.127316, 31.883028, 28.577162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283688, 31.546587, 28.726681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801167, 0.111026, -0.588051,
		0.453110, 0.529359, 0.717266,
		0.390926, -0.841102, 0.373798,
		32.400967, 31.294256, 28.838820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814545, 31.991949, 28.672972>,  <32.127316, 31.883028, 28.577162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814545, 31.991949, 28.672972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794693, 31.592831, 28.655340>,  <32.782784, 31.353359, 28.644760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794693, 31.592831, 28.655340>,  <32.814545, 31.991949, 28.672972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794693, 31.592831, 28.655340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763607, -0.009460, -0.645612,
		0.643771, -0.065703, 0.762392,
		-0.049630, -0.997794, -0.044081,
		32.779804, 31.293491, 28.642117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518757, 31.730555, 28.676458>,  <32.814545, 31.991949, 28.672972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518757, 31.730555, 28.676458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303829, 31.430235, 28.522789>,  <33.174873, 31.250044, 28.430588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303829, 31.430235, 28.522789>,  <33.518757, 31.730555, 28.676458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303829, 31.430235, 28.522789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622663, -0.045915, -0.781142,
		0.568840, -0.658934, 0.492166,
		-0.537318, -0.750799, -0.384175,
		33.142635, 31.204996, 28.407536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977673, 31.228601, 28.595446>,  <33.518757, 31.730555, 28.676458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977673, 31.228601, 28.595446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690929, 31.128426, 28.335171>,  <33.518883, 31.068319, 28.179007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690929, 31.128426, 28.335171>,  <33.977673, 31.228601, 28.595446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690929, 31.128426, 28.335171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630401, 0.165852, -0.758346,
		0.297839, -0.953820, 0.038986,
		-0.716859, -0.250442, -0.650686,
		33.475872, 31.053293, 28.139965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317028, 30.736925, 28.090931>,  <33.977673, 31.228601, 28.595446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317028, 30.736925, 28.090931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984043, 30.839783, 27.894609>,  <33.784252, 30.901497, 27.776815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984043, 30.839783, 27.894609>,  <34.317028, 30.736925, 28.090931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984043, 30.839783, 27.894609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500714, -0.030201, -0.865086,
		-0.237276, -0.965900, -0.103616,
		-0.832458, 0.257146, -0.490806,
		33.734306, 30.916925, 27.747368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370544, 30.444332, 27.443069>,  <34.317028, 30.736925, 28.090931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370544, 30.444332, 27.443069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094341, 30.719103, 27.352449>,  <33.928619, 30.883965, 27.298077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094341, 30.719103, 27.352449>,  <34.370544, 30.444332, 27.443069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094341, 30.719103, 27.352449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358441, 0.052916, -0.932051,
		-0.628263, -0.724797, -0.282762,
		-0.690511, 0.686927, -0.226552,
		33.887188, 30.925180, 27.284483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379581, 30.353163, 26.678471>,  <34.370544, 30.444332, 27.443069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379581, 30.353163, 26.678471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156551, 30.681831, 26.725742>,  <34.022732, 30.879032, 26.754105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156551, 30.681831, 26.725742>,  <34.379581, 30.353163, 26.678471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156551, 30.681831, 26.725742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101416, 0.073871, -0.992098,
		-0.823908, -0.565154, 0.042142,
		-0.557575, 0.821671, 0.118179,
		33.989281, 30.928333, 26.761196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737385, 30.262497, 26.275177>,  <34.379581, 30.353163, 26.678471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737385, 30.262497, 26.275177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796989, 30.656059, 26.314615>,  <33.832752, 30.892197, 26.338278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796989, 30.656059, 26.314615>,  <33.737385, 30.262497, 26.275177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796989, 30.656059, 26.314615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052188, 0.107394, -0.992846,
		-0.987457, 0.142800, 0.067351,
		0.149011, 0.983908, 0.098595,
		33.841694, 30.951231, 26.344194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117489, 30.607342, 25.960135>,  <33.737385, 30.262497, 26.275177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117489, 30.607342, 25.960135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449017, 30.830883, 25.971085>,  <33.647934, 30.965008, 25.977655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449017, 30.830883, 25.971085>,  <33.117489, 30.607342, 25.960135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449017, 30.830883, 25.971085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040940, 0.109367, -0.993158,
		-0.558023, 0.822024, 0.113524,
		0.828815, 0.558853, 0.027375,
		33.697662, 30.998539, 25.979298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058392, 30.942688, 25.308956>,  <33.117489, 30.607342, 25.960135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058392, 30.942688, 25.308956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427700, 31.050484, 25.418467>,  <33.649284, 31.115162, 25.484173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427700, 31.050484, 25.418467>,  <33.058392, 30.942688, 25.308956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427700, 31.050484, 25.418467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264740, 0.070074, -0.961771,
		-0.278373, 0.960450, -0.006648,
		0.923267, 0.269490, 0.273776,
		33.704681, 31.131330, 25.500599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172646, 31.421350, 24.818651>,  <33.058392, 30.942688, 25.308956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172646, 31.421350, 24.818651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520920, 31.311398, 24.981791>,  <33.729885, 31.245426, 25.079674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520920, 31.311398, 24.981791>,  <33.172646, 31.421350, 24.818651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520920, 31.311398, 24.981791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404214, -0.072484, -0.911788,
		0.280196, 0.958742, 0.048000,
		0.870690, -0.274881, 0.407846,
		33.782127, 31.228933, 25.104145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692043, 31.965517, 24.659048>,  <33.172646, 31.421350, 24.818651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692043, 31.965517, 24.659048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875553, 31.616205, 24.724669>,  <33.985657, 31.406618, 24.764040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875553, 31.616205, 24.724669>,  <33.692043, 31.965517, 24.659048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875553, 31.616205, 24.724669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316693, -0.011802, -0.948455,
		0.830201, 0.487078, 0.271147,
		0.458771, -0.873279, 0.164052,
		34.013184, 31.354221, 24.773884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405880, 32.119987, 24.521921>,  <33.692043, 31.965517, 24.659048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405880, 32.119987, 24.521921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342270, 31.726044, 24.494331>,  <34.304104, 31.489677, 24.477777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342270, 31.726044, 24.494331>,  <34.405880, 32.119987, 24.521921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342270, 31.726044, 24.494331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274293, 0.023039, -0.961370,
		0.948407, -0.171798, 0.266477,
		-0.159022, -0.984863, -0.068973,
		34.294563, 31.430584, 24.473639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861881, 31.971537, 24.112568>,  <34.405880, 32.119987, 24.521921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861881, 31.971537, 24.112568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648468, 31.633308, 24.120039>,  <34.520420, 31.430372, 24.124521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648468, 31.633308, 24.120039>,  <34.861881, 31.971537, 24.112568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648468, 31.633308, 24.120039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277102, -0.195627, -0.940715,
		0.799096, -0.496729, 0.338684,
		-0.533536, -0.845571, 0.018680,
		34.488407, 31.379637, 24.125643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273735, 31.452780, 23.780260>,  <34.861881, 31.971537, 24.112568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273735, 31.452780, 23.780260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899605, 31.314804, 23.748817>,  <34.675125, 31.232019, 23.729952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899605, 31.314804, 23.748817>,  <35.273735, 31.452780, 23.780260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899605, 31.314804, 23.748817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147806, -0.179127, -0.972660,
		0.321427, -0.921374, 0.218526,
		-0.935328, -0.344939, -0.078608,
		34.619007, 31.211323, 23.725235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359249, 30.900833, 23.369928>,  <35.273735, 31.452780, 23.780260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359249, 30.900833, 23.369928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980537, 31.028057, 23.350119>,  <34.753311, 31.104391, 23.338234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980537, 31.028057, 23.350119>,  <35.359249, 30.900833, 23.369928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980537, 31.028057, 23.350119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053713, 0.004413, -0.998547,
		-0.317381, -0.948060, -0.021262,
		-0.946776, 0.318061, -0.049523,
		34.696507, 31.123476, 23.335262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149475, 30.645651, 22.725832>,  <35.359249, 30.900833, 23.369928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149475, 30.645651, 22.725832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844852, 30.890793, 22.810156>,  <34.662079, 31.037878, 22.860750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844852, 30.890793, 22.810156>,  <35.149475, 30.645651, 22.725832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844852, 30.890793, 22.810156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228729, 0.050187, -0.972195,
		-0.606395, -0.788600, 0.101958,
		-0.761557, 0.612855, 0.210809,
		34.616386, 31.074650, 22.873398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681408, 30.435667, 22.338266>,  <35.149475, 30.645651, 22.725832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681408, 30.435667, 22.338266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571285, 30.806824, 22.438843>,  <34.505211, 31.029518, 22.499189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571285, 30.806824, 22.438843>,  <34.681408, 30.435667, 22.338266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571285, 30.806824, 22.438843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270272, 0.176297, -0.946505,
		-0.922583, -0.328535, 0.202248,
		-0.275305, 0.927892, 0.251443,
		34.488693, 31.085192, 22.514277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935040, 30.564720, 22.033661>,  <34.681408, 30.435667, 22.338266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935040, 30.564720, 22.033661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108654, 30.921350, 22.085365>,  <34.212822, 31.135328, 22.116388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108654, 30.921350, 22.085365>,  <33.935040, 30.564720, 22.033661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108654, 30.921350, 22.085365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157089, 0.216183, -0.963633,
		-0.887094, 0.397946, 0.233887,
		0.434036, 0.891574, 0.129262,
		34.238865, 31.188822, 22.124144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494953, 31.049829, 21.700266>,  <33.935040, 30.564720, 22.033661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494953, 31.049829, 21.700266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850067, 31.230047, 21.737906>,  <34.063133, 31.338179, 21.760489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850067, 31.230047, 21.737906>,  <33.494953, 31.049829, 21.700266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850067, 31.230047, 21.737906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022237, 0.246190, -0.968967,
		-0.459729, 0.858138, 0.228581,
		0.887781, 0.450545, 0.094098,
		34.116402, 31.365211, 21.766134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352451, 31.617109, 21.362335>,  <33.494953, 31.049829, 21.700266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352451, 31.617109, 21.362335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751213, 31.586355, 21.368904>,  <33.990471, 31.567904, 21.372845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751213, 31.586355, 21.368904>,  <33.352451, 31.617109, 21.362335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751213, 31.586355, 21.368904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044674, 0.382106, -0.923038,
		0.064692, 0.920915, 0.384358,
		0.996905, -0.076883, 0.016422,
		34.050285, 31.563290, 21.373831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563553, 32.202374, 20.951532>,  <33.352451, 31.617109, 21.362335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563553, 32.202374, 20.951532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864483, 31.939129, 20.963539>,  <34.045040, 31.781183, 20.970743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864483, 31.939129, 20.963539>,  <33.563553, 32.202374, 20.951532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864483, 31.939129, 20.963539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244885, 0.237061, -0.940124,
		0.611587, 0.714630, 0.339508,
		0.752325, -0.658108, 0.030019,
		34.090179, 31.741697, 20.972546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162331, 32.612610, 20.697260>,  <33.563553, 32.202374, 20.951532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162331, 32.612610, 20.697260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240074, 32.224819, 20.637478>,  <34.286720, 31.992144, 20.601608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240074, 32.224819, 20.637478>,  <34.162331, 32.612610, 20.697260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240074, 32.224819, 20.637478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332177, 0.208407, -0.919905,
		0.922976, 0.129143, 0.362543,
		0.194356, -0.969478, -0.149457,
		34.298382, 31.933975, 20.592642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857857, 32.566929, 20.428701>,  <34.162331, 32.612610, 20.697260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857857, 32.566929, 20.428701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680843, 32.228130, 20.310877>,  <34.574635, 32.024853, 20.240183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680843, 32.228130, 20.310877>,  <34.857857, 32.566929, 20.428701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680843, 32.228130, 20.310877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349573, 0.139553, -0.926457,
		0.825813, -0.512954, 0.234331,
		-0.442529, -0.846996, -0.294560,
		34.548084, 31.974031, 20.222509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325726, 32.280575, 19.845844>,  <34.857857, 32.566929, 20.428701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325726, 32.280575, 19.845844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988506, 32.065941, 19.831177>,  <34.786175, 31.937162, 19.822376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988506, 32.065941, 19.831177>,  <35.325726, 32.280575, 19.845844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988506, 32.065941, 19.831177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082355, -0.061413, -0.994709,
		0.531489, -0.841612, 0.095965,
		-0.843052, -0.536580, -0.036671,
		34.735592, 31.904966, 19.820175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403881, 31.549953, 19.464235>,  <35.325726, 32.280575, 19.845844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403881, 31.549953, 19.464235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031094, 31.694099, 19.448400>,  <34.807419, 31.780588, 19.438900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031094, 31.694099, 19.448400>,  <35.403881, 31.549953, 19.464235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031094, 31.694099, 19.448400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070947, 0.074215, -0.994715,
		-0.355525, -0.929854, -0.094733,
		-0.931971, 0.360367, -0.039585,
		34.751503, 31.802210, 19.436525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201496, 31.369335, 18.845261>,  <35.403881, 31.549953, 19.464235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201496, 31.369335, 18.845261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930080, 31.644217, 18.949053>,  <34.767231, 31.809145, 19.011328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930080, 31.644217, 18.949053>,  <35.201496, 31.369335, 18.845261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930080, 31.644217, 18.949053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184200, 0.182778, -0.965745,
		-0.711092, -0.703094, 0.002561,
		-0.678542, 0.687205, 0.259482,
		34.726517, 31.850378, 19.026897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720440, 31.208952, 18.446760>,  <35.201496, 31.369335, 18.845261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720440, 31.208952, 18.446760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671082, 31.592571, 18.548742>,  <34.641464, 31.822742, 18.609932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671082, 31.592571, 18.548742>,  <34.720440, 31.208952, 18.446760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671082, 31.592571, 18.548742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133360, 0.238562, -0.961927,
		-0.983355, -0.152702, 0.098460,
		-0.123400, 0.959047, 0.254955,
		34.634060, 31.880285, 18.625229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113098, 31.379087, 18.104811>,  <34.720440, 31.208952, 18.446760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113098, 31.379087, 18.104811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303188, 31.726614, 18.160414>,  <34.417240, 31.935129, 18.193775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303188, 31.726614, 18.160414>,  <34.113098, 31.379087, 18.104811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303188, 31.726614, 18.160414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144237, 0.232777, -0.961775,
		-0.867962, 0.437008, 0.235936,
		0.475223, 0.868815, 0.139009,
		34.445755, 31.987259, 18.202116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666286, 31.861124, 17.723036>,  <34.113098, 31.379087, 18.104811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666286, 31.861124, 17.723036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035488, 32.002220, 17.784527>,  <34.257011, 32.086880, 17.821421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035488, 32.002220, 17.784527>,  <33.666286, 31.861124, 17.723036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035488, 32.002220, 17.784527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009070, 0.379462, -0.925163,
		-0.384678, 0.855325, 0.347047,
		0.923006, 0.352742, 0.153728,
		34.312389, 32.108044, 17.830645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550732, 32.451641, 17.436317>,  <33.666286, 31.861124, 17.723036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550732, 32.451641, 17.436317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946060, 32.392082, 17.423357>,  <34.183258, 32.356346, 17.415581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946060, 32.392082, 17.423357>,  <33.550732, 32.451641, 17.436317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946060, 32.392082, 17.423357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012139, 0.135031, -0.990767,
		0.151894, 0.979590, 0.131647,
		0.988322, -0.148894, -0.032402,
		34.242558, 32.347416, 17.413637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840851, 32.910103, 16.895281>,  <33.550732, 32.451641, 17.436317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840851, 32.910103, 16.895281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135746, 32.649593, 16.967197>,  <34.312683, 32.493286, 17.010347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135746, 32.649593, 16.967197>,  <33.840851, 32.910103, 16.895281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135746, 32.649593, 16.967197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196797, -0.047572, -0.979290,
		0.646341, 0.757348, 0.093098,
		0.737234, -0.651276, 0.179791,
		34.356915, 32.454212, 17.021135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470871, 33.154972, 16.561497>,  <33.840851, 32.910103, 16.895281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470871, 33.154972, 16.561497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479591, 32.759705, 16.622215>,  <34.484825, 32.522545, 16.658648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479591, 32.759705, 16.622215>,  <34.470871, 33.154972, 16.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479591, 32.759705, 16.622215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165772, -0.146159, -0.975273,
		0.985923, 0.046424, 0.160625,
		0.021800, -0.988171, 0.151797,
		34.486130, 32.463253, 16.667755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808975, 33.047264, 16.028021>,  <34.470871, 33.154972, 16.561497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808975, 33.047264, 16.028021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672565, 32.680679, 16.111732>,  <34.590721, 32.460728, 16.161959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672565, 32.680679, 16.111732>,  <34.808975, 33.047264, 16.028021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672565, 32.680679, 16.111732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033815, -0.234440, -0.971542,
		0.939447, -0.324241, 0.110939,
		-0.341023, -0.916464, 0.209280,
		34.570259, 32.405739, 16.174517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070938, 32.638012, 15.488493>,  <34.808975, 33.047264, 16.028021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070938, 32.638012, 15.488493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813107, 32.373035, 15.641171>,  <34.658405, 32.214050, 15.732779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813107, 32.373035, 15.641171>,  <35.070938, 32.638012, 15.488493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813107, 32.373035, 15.641171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100167, -0.421775, -0.901151,
		0.757946, -0.619097, 0.205513,
		-0.644580, -0.662438, 0.381696,
		34.619732, 32.174305, 15.755680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309265, 31.928589, 15.499842>,  <35.070938, 32.638012, 15.488493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309265, 31.928589, 15.499842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910336, 31.940414, 15.473078>,  <34.670979, 31.947510, 15.457019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910336, 31.940414, 15.473078>,  <35.309265, 31.928589, 15.499842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910336, 31.940414, 15.473078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043985, -0.488505, -0.871452,
		-0.058448, -0.872060, 0.485896,
		-0.997321, 0.029563, -0.066910,
		34.611137, 31.949284, 15.453005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120148, 31.475344, 14.977817>,  <35.309265, 31.928589, 15.499842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120148, 31.475344, 14.977817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783028, 31.688379, 15.008910>,  <34.580757, 31.816200, 15.027567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783028, 31.688379, 15.008910>,  <35.120148, 31.475344, 14.977817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783028, 31.688379, 15.008910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369263, -0.467076, -0.803421,
		-0.391583, -0.705826, 0.590315,
		-0.842798, 0.532587, 0.077736,
		34.530190, 31.848156, 15.032230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447262, 31.180990, 15.055566>,  <35.120148, 31.475344, 14.977817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447262, 31.180990, 15.055566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414593, 31.509680, 14.829966>,  <34.394993, 31.706894, 14.694605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414593, 31.509680, 14.829966>,  <34.447262, 31.180990, 15.055566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414593, 31.509680, 14.829966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442046, -0.537051, -0.718451,
		-0.893267, 0.190639, 0.407101,
		-0.081669, 0.821725, -0.564001,
		34.390091, 31.756197, 14.660766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795429, 31.061140, 14.637245>,  <34.447262, 31.180990, 15.055566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795429, 31.061140, 14.637245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985783, 31.365967, 14.461614>,  <34.099995, 31.548862, 14.356235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985783, 31.365967, 14.461614>,  <33.795429, 31.061140, 14.637245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985783, 31.365967, 14.461614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497486, -0.178456, -0.848917,
		-0.725288, 0.622421, 0.294193,
		0.475884, 0.762066, -0.439078,
		34.128548, 31.594587, 14.329890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281559, 31.430031, 14.328036>,  <33.795429, 31.061140, 14.637245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281559, 31.430031, 14.328036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650043, 31.446884, 14.173326>,  <33.871136, 31.456995, 14.080499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650043, 31.446884, 14.173326>,  <33.281559, 31.430031, 14.328036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650043, 31.446884, 14.173326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347939, -0.355634, -0.867446,
		-0.174097, 0.933675, -0.312954,
		0.921210, 0.042131, -0.386777,
		33.926407, 31.459524, 14.057293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070133, 31.808254, 13.799204>,  <33.281559, 31.430031, 14.328036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070133, 31.808254, 13.799204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420662, 31.630520, 13.724763>,  <33.630978, 31.523880, 13.680099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420662, 31.630520, 13.724763>,  <33.070133, 31.808254, 13.799204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420662, 31.630520, 13.724763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346116, -0.312037, -0.884780,
		0.335067, 0.839762, -0.427235,
		0.876318, -0.444334, -0.186102,
		33.683556, 31.497219, 13.668932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504265, 32.221336, 13.437463>,  <33.070133, 31.808254, 13.799204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504265, 32.221336, 13.437463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535549, 31.826746, 13.379839>,  <33.554321, 31.589993, 13.345264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535549, 31.826746, 13.379839>,  <33.504265, 32.221336, 13.437463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535549, 31.826746, 13.379839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335134, 0.110076, -0.935718,
		0.938918, 0.121464, -0.321992,
		0.078213, -0.986474, -0.144059,
		33.559013, 31.530804, 13.336621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647228, 32.345509, 14.200614>,  <33.504265, 32.221336, 13.437463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647228, 32.345509, 14.200614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393749, 32.532108, 14.447453>,  <33.241661, 32.644066, 14.595555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393749, 32.532108, 14.447453>,  <33.647228, 32.345509, 14.200614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393749, 32.532108, 14.447453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642705, 0.761453, 0.084376,
		-0.430528, 0.450080, -0.782351,
		-0.633700, 0.466495, 0.617095,
		33.203640, 32.672058, 14.632581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106461, 32.976627, 14.182395>,  <33.647228, 32.345509, 14.200614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106461, 32.976627, 14.182395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280506, 33.021244, 14.539771>,  <33.384933, 33.048016, 14.754197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280506, 33.021244, 14.539771>,  <33.106461, 32.976627, 14.182395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280506, 33.021244, 14.539771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309076, 0.913497, -0.264566,
		-0.845666, 0.391257, 0.362999,
		0.435112, 0.111540, 0.893441,
		33.411041, 33.054707, 14.807803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763218, 33.588505, 14.238069>,  <33.106461, 32.976627, 14.182395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763218, 33.588505, 14.238069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370110, 33.527569, 14.279943>,  <32.134247, 33.491009, 14.305069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370110, 33.527569, 14.279943>,  <32.763218, 33.588505, 14.238069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370110, 33.527569, 14.279943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103128, 0.018126, 0.994503,
		-0.153397, 0.988162, -0.002104,
		-0.982768, -0.152337, 0.104688,
		32.075279, 33.481869, 14.311350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324635, 34.038364, 14.695763>,  <32.763218, 33.588505, 14.238069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324635, 34.038364, 14.695763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157219, 33.675087, 14.694118>,  <32.056770, 33.457123, 14.693132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157219, 33.675087, 14.694118>,  <32.324635, 34.038364, 14.695763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157219, 33.675087, 14.694118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063318, 0.024666, 0.997689,
		-0.905989, 0.417831, -0.067829,
		-0.418538, -0.908190, -0.004110,
		32.031658, 33.402630, 14.692885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598379, 33.994278, 14.909749>,  <32.324635, 34.038364, 14.695763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598379, 33.994278, 14.909749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792870, 33.654415, 14.991394>,  <31.909563, 33.450497, 15.040381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792870, 33.654415, 14.991394>,  <31.598379, 33.994278, 14.909749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792870, 33.654415, 14.991394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116853, 0.168264, 0.978791,
		-0.865985, -0.499765, -0.017471,
		0.486226, -0.849660, 0.204113,
		31.938738, 33.399517, 15.052628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272730, 33.628223, 15.426044>,  <31.598379, 33.994278, 14.909749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272730, 33.628223, 15.426044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646976, 33.488983, 15.449537>,  <31.871525, 33.405441, 15.463633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646976, 33.488983, 15.449537>,  <31.272730, 33.628223, 15.426044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646976, 33.488983, 15.449537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019564, 0.217244, 0.975921,
		-0.352474, -0.911940, 0.210067,
		0.935617, -0.348096, 0.058731,
		31.927662, 33.384556, 15.467156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230124, 33.158630, 15.972997>,  <31.272730, 33.628223, 15.426044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230124, 33.158630, 15.972997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622221, 33.231339, 15.941809>,  <31.857479, 33.274963, 15.923096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622221, 33.231339, 15.941809>,  <31.230124, 33.158630, 15.972997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622221, 33.231339, 15.941809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050498, 0.151147, 0.987221,
		0.191242, -0.971654, 0.138981,
		0.980243, 0.181780, -0.077972,
		31.916294, 33.285870, 15.918417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452625, 33.087727, 16.681185>,  <31.230124, 33.158630, 15.972997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452625, 33.087727, 16.681185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776613, 33.274349, 16.539047>,  <31.971006, 33.386322, 16.453764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776613, 33.274349, 16.539047>,  <31.452625, 33.087727, 16.681185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776613, 33.274349, 16.539047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260385, 0.256825, 0.930720,
		0.525496, -0.846384, 0.086537,
		0.809972, 0.466557, -0.355346,
		32.019604, 33.414314, 16.432444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085835, 32.921585, 17.176317>,  <31.452625, 33.087727, 16.681185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085835, 32.921585, 17.176317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152100, 33.255203, 16.965826>,  <32.191860, 33.455376, 16.839531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152100, 33.255203, 16.965826>,  <32.085835, 32.921585, 17.176317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152100, 33.255203, 16.965826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335992, 0.453944, 0.825254,
		0.927181, -0.313526, -0.205031,
		0.165666, 0.834049, -0.526230,
		32.201797, 33.505417, 16.807957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827198, 33.073345, 17.307570>,  <32.085835, 32.921585, 17.176317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827198, 33.073345, 17.307570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662426, 33.423843, 17.207571>,  <32.563560, 33.634144, 17.147572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662426, 33.423843, 17.207571>,  <32.827198, 33.073345, 17.307570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662426, 33.423843, 17.207571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514167, 0.450028, 0.730141,
		0.752291, 0.172230, -0.635921,
		-0.411935, 0.876248, -0.249997,
		32.538845, 33.686718, 17.132572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308624, 33.512562, 17.433876>,  <32.827198, 33.073345, 17.307570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308624, 33.512562, 17.433876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980988, 33.741879, 17.425632>,  <32.784405, 33.879467, 17.420687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980988, 33.741879, 17.425632>,  <33.308624, 33.512562, 17.433876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980988, 33.741879, 17.425632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301370, 0.460592, 0.834884,
		0.488123, 0.677637, -0.550040,
		-0.819092, 0.573292, -0.020606,
		32.735260, 33.913864, 17.419451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554440, 34.161770, 17.590141>,  <33.308624, 33.512562, 17.433876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554440, 34.161770, 17.590141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165047, 34.152119, 17.681128>,  <32.931412, 34.146328, 17.735720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165047, 34.152119, 17.681128>,  <33.554440, 34.161770, 17.590141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165047, 34.152119, 17.681128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195785, 0.426340, 0.883121,
		-0.118287, 0.904241, -0.410312,
		-0.973487, -0.024128, 0.227467,
		32.873001, 34.144878, 17.749367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499119, 34.655632, 18.020714>,  <33.554440, 34.161770, 17.590141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499119, 34.655632, 18.020714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179276, 34.423569, 18.082735>,  <32.987370, 34.284328, 18.119947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179276, 34.423569, 18.082735>,  <33.499119, 34.655632, 18.020714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179276, 34.423569, 18.082735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087967, 0.368571, 0.925428,
		-0.594048, 0.726338, -0.345746,
		-0.799606, -0.580163, 0.155055,
		32.939392, 34.249519, 18.129251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033356, 35.062088, 18.325453>,  <33.499119, 34.655632, 18.020714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033356, 35.062088, 18.325453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939983, 34.687801, 18.431246>,  <32.883961, 34.463230, 18.494722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939983, 34.687801, 18.431246>,  <33.033356, 35.062088, 18.325453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939983, 34.687801, 18.431246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007959, 0.270149, 0.962786,
		-0.972341, 0.226848, -0.055614,
		-0.233430, -0.935713, 0.264482,
		32.869953, 34.407089, 18.510590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679493, 35.160851, 18.924875>,  <33.033356, 35.062088, 18.325453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679493, 35.160851, 18.924875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760487, 34.769161, 18.929123>,  <32.809082, 34.534145, 18.931671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760487, 34.769161, 18.929123>,  <32.679493, 35.160851, 18.924875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760487, 34.769161, 18.929123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202299, 0.052436, 0.977919,
		-0.958162, -0.195868, 0.208714,
		0.202487, -0.979228, 0.010618,
		32.821232, 34.475391, 18.932308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291294, 34.839367, 19.453844>,  <32.679493, 35.160851, 18.924875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291294, 34.839367, 19.453844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574917, 34.562439, 19.400282>,  <32.745090, 34.396282, 19.368145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574917, 34.562439, 19.400282>,  <32.291294, 34.839367, 19.453844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574917, 34.562439, 19.400282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113308, -0.075565, 0.990682,
		-0.695985, -0.717626, 0.024865,
		0.709060, -0.692317, -0.133905,
		32.787636, 34.354744, 19.360111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063766, 34.253624, 19.854998>,  <32.291294, 34.839367, 19.453844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063766, 34.253624, 19.854998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458332, 34.223518, 19.796577>,  <32.695072, 34.205456, 19.761524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458332, 34.223518, 19.796577>,  <32.063766, 34.253624, 19.854998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458332, 34.223518, 19.796577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129576, -0.190221, 0.973153,
		-0.101024, -0.978852, -0.177884,
		0.986410, -0.075263, -0.146053,
		32.754253, 34.200939, 19.752762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247158, 33.613564, 20.178087>,  <32.063766, 34.253624, 19.854998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247158, 33.613564, 20.178087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586479, 33.825348, 20.175333>,  <32.790073, 33.952419, 20.173681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586479, 33.825348, 20.175333>,  <32.247158, 33.613564, 20.178087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586479, 33.825348, 20.175333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242913, -0.377578, 0.893548,
		0.470498, -0.759676, -0.448915,
		0.848307, 0.529460, -0.006885,
		32.840973, 33.984184, 20.173267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593349, 33.220085, 20.630667>,  <32.247158, 33.613564, 20.178087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593349, 33.220085, 20.630667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799801, 33.561192, 20.598665>,  <32.923672, 33.765854, 20.579464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799801, 33.561192, 20.598665>,  <32.593349, 33.220085, 20.630667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799801, 33.561192, 20.598665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350092, -0.124792, 0.928365,
		0.781694, -0.507167, -0.362956,
		0.516130, 0.852765, -0.080006,
		32.954639, 33.817020, 20.574663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228775, 33.031223, 20.901979>,  <32.593349, 33.220085, 20.630667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228775, 33.031223, 20.901979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189575, 33.429253, 20.907864>,  <33.166058, 33.668072, 20.911394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189575, 33.429253, 20.907864>,  <33.228775, 33.031223, 20.901979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189575, 33.429253, 20.907864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178543, 0.003039, 0.983928,
		0.979040, 0.099049, -0.177962,
		-0.097998, 0.995078, 0.014709,
		33.160175, 33.727776, 20.912275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815578, 33.382114, 21.408142>,  <33.228775, 33.031223, 20.901979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815578, 33.382114, 21.408142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541851, 33.659256, 21.317230>,  <33.377613, 33.825542, 21.262684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541851, 33.659256, 21.317230>,  <33.815578, 33.382114, 21.408142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541851, 33.659256, 21.317230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051604, 0.356925, 0.932706,
		0.727355, 0.626539, -0.280004,
		-0.684318, 0.692858, -0.227280,
		33.336555, 33.867115, 21.249046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133270, 34.039387, 21.498711>,  <33.815578, 33.382114, 21.408142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133270, 34.039387, 21.498711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737087, 34.032085, 21.553347>,  <33.499378, 34.027706, 21.586128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737087, 34.032085, 21.553347>,  <34.133270, 34.039387, 21.498711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737087, 34.032085, 21.553347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129771, 0.209973, 0.969057,
		-0.046367, 0.977537, -0.205601,
		-0.990459, -0.018251, 0.136592,
		33.439949, 34.026611, 21.594324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005295, 34.517365, 22.012835>,  <34.133270, 34.039387, 21.498711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005295, 34.517365, 22.012835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644733, 34.344379, 22.004417>,  <33.428394, 34.240589, 21.999367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644733, 34.344379, 22.004417>,  <34.005295, 34.517365, 22.012835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644733, 34.344379, 22.004417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083129, 0.125167, 0.988647,
		-0.424921, 0.892921, -0.148777,
		-0.901405, -0.432465, -0.021042,
		33.374313, 34.214642, 21.998104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486572, 34.999641, 22.404615>,  <34.005295, 34.517365, 22.012835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486572, 34.999641, 22.404615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357353, 34.621658, 22.383818>,  <33.279823, 34.394871, 22.371340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357353, 34.621658, 22.383818>,  <33.486572, 34.999641, 22.404615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357353, 34.621658, 22.383818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167647, 0.003069, 0.985842,
		-0.931416, 0.327188, -0.159410,
		-0.323045, -0.944954, -0.051993,
		33.260441, 34.338173, 22.368219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884502, 35.003773, 22.863508>,  <33.486572, 34.999641, 22.404615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884502, 35.003773, 22.863508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006107, 34.624977, 22.821941>,  <33.079071, 34.397701, 22.797001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006107, 34.624977, 22.821941>,  <32.884502, 35.003773, 22.863508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006107, 34.624977, 22.821941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235609, -0.180428, 0.954952,
		-0.923075, -0.265830, -0.277970,
		0.304008, -0.946985, -0.103916,
		33.097309, 34.340881, 22.790766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522408, 34.607544, 23.315138>,  <32.884502, 35.003773, 22.863508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522408, 34.607544, 23.315138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790115, 34.321098, 23.235874>,  <32.950741, 34.149231, 23.188316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790115, 34.321098, 23.235874>,  <32.522408, 34.607544, 23.315138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790115, 34.321098, 23.235874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208517, -0.436991, 0.874962,
		-0.713163, -0.544264, -0.441785,
		0.669267, -0.716111, -0.198157,
		32.990894, 34.106266, 23.176428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256214, 33.950180, 23.613569>,  <32.522408, 34.607544, 23.315138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256214, 33.950180, 23.613569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652245, 33.926891, 23.562418>,  <32.889862, 33.912918, 23.531727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652245, 33.926891, 23.562418>,  <32.256214, 33.950180, 23.613569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652245, 33.926891, 23.562418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085602, -0.471789, 0.877546,
		-0.111421, -0.879787, -0.462125,
		0.990079, -0.058218, -0.127879,
		32.949268, 33.909428, 23.524054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403656, 33.195683, 23.678740>,  <32.256214, 33.950180, 23.613569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403656, 33.195683, 23.678740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733158, 33.405811, 23.764038>,  <32.930859, 33.531887, 23.815218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733158, 33.405811, 23.764038>,  <32.403656, 33.195683, 23.678740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733158, 33.405811, 23.764038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082804, -0.483570, 0.871381,
		0.560873, -0.700143, -0.441839,
		0.823751, 0.525320, 0.213247,
		32.980282, 33.563408, 23.828012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822327, 32.723370, 23.839079>,  <32.403656, 33.195683, 23.678740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822327, 32.723370, 23.839079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944317, 33.063412, 24.010807>,  <33.017509, 33.267437, 24.113844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944317, 33.063412, 24.010807>,  <32.822327, 32.723370, 23.839079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944317, 33.063412, 24.010807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113532, -0.480034, 0.869873,
		0.945570, -0.216546, -0.242911,
		0.304973, 0.850103, 0.429320,
		33.035809, 33.318443, 24.139603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207630, 32.437534, 24.427258>,  <32.822327, 32.723370, 23.839079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207630, 32.437534, 24.427258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188202, 32.830948, 24.496897>,  <33.176544, 33.066994, 24.538679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188202, 32.830948, 24.496897>,  <33.207630, 32.437534, 24.427258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188202, 32.830948, 24.496897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153725, -0.164864, 0.974263,
		0.986919, 0.074081, -0.143186,
		-0.048569, 0.983530, 0.174096,
		33.173630, 33.126007, 24.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720432, 32.689686, 24.900721>,  <33.207630, 32.437534, 24.427258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720432, 32.689686, 24.900721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408142, 32.939240, 24.914816>,  <33.220768, 33.088970, 24.923273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408142, 32.939240, 24.914816>,  <33.720432, 32.689686, 24.900721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408142, 32.939240, 24.914816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049200, -0.117591, 0.991843,
		0.622936, 0.772622, 0.122501,
		-0.780724, 0.623881, 0.035238,
		33.173923, 33.126404, 24.925386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647190, 32.759003, 25.583662>,  <33.720432, 32.689686, 24.900721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647190, 32.759003, 25.583662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306778, 32.946915, 25.489811>,  <33.102531, 33.059662, 25.433500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306778, 32.946915, 25.489811>,  <33.647190, 32.759003, 25.583662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306778, 32.946915, 25.489811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364873, -0.207695, 0.907596,
		0.377639, 0.858003, 0.348165,
		-0.851033, 0.469780, -0.234629,
		33.051468, 33.087849, 25.419422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487862, 33.134712, 26.153425>,  <33.647190, 32.759003, 25.583662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487862, 33.134712, 26.153425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135948, 33.113186, 25.964499>,  <32.924801, 33.100269, 25.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135948, 33.113186, 25.964499>,  <33.487862, 33.134712, 26.153425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135948, 33.113186, 25.964499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467763, -0.079079, 0.880309,
		-0.084723, 0.995415, 0.044400,
		-0.879784, -0.053814, -0.472318,
		32.872013, 33.097042, 25.822803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009930, 33.541855, 26.469753>,  <33.487862, 33.134712, 26.153425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009930, 33.541855, 26.469753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752468, 33.301506, 26.280157>,  <32.597992, 33.157295, 26.166399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752468, 33.301506, 26.280157>,  <33.009930, 33.541855, 26.469753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752468, 33.301506, 26.280157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603353, 0.017377, 0.797285,
		-0.470830, 0.799156, -0.373723,
		-0.643649, -0.600872, -0.473992,
		32.559372, 33.121243, 26.137960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351906, 33.908081, 26.511169>,  <33.009930, 33.541855, 26.469753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351906, 33.908081, 26.511169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236160, 33.534481, 26.427341>,  <32.166714, 33.310322, 26.377045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236160, 33.534481, 26.427341>,  <32.351906, 33.908081, 26.511169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236160, 33.534481, 26.427341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758881, 0.090399, 0.644925,
		-0.583413, 0.345656, -0.734950,
		-0.289361, -0.933997, -0.209572,
		32.149353, 33.254284, 26.364470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661688, 33.930889, 26.547941>,  <32.351906, 33.908081, 26.511169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661688, 33.930889, 26.547941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745861, 33.541378, 26.582539>,  <31.796366, 33.307671, 26.603298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745861, 33.541378, 26.582539>,  <31.661688, 33.930889, 26.547941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745861, 33.541378, 26.582539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716348, -0.093385, 0.691466,
		-0.665254, -0.207470, -0.717212,
		0.210435, -0.973774, 0.086496,
		31.808992, 33.249245, 26.608488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012564, 33.623550, 26.621195>,  <31.661688, 33.930889, 26.547941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012564, 33.623550, 26.621195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257036, 33.328590, 26.736227>,  <31.403719, 33.151615, 26.805246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257036, 33.328590, 26.736227>,  <31.012564, 33.623550, 26.621195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257036, 33.328590, 26.736227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595418, -0.188968, 0.780877,
		-0.521474, -0.648487, -0.554554,
		0.611181, -0.737398, 0.287579,
		31.440392, 33.107372, 26.822500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585558, 32.971642, 26.698713>,  <31.012564, 33.623550, 26.621195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585558, 32.971642, 26.698713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926954, 32.923401, 26.901497>,  <31.131792, 32.894455, 27.023167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926954, 32.923401, 26.901497>,  <30.585558, 32.971642, 26.698713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926954, 32.923401, 26.901497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519306, -0.277657, 0.808225,
		0.043287, -0.953080, -0.299607,
		0.853491, -0.120603, 0.506959,
		31.183002, 32.887218, 27.053585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481897, 32.330879, 27.032673>,  <30.585558, 32.971642, 26.698713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481897, 32.330879, 27.032673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766132, 32.534546, 27.226917>,  <30.936674, 32.656746, 27.343464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766132, 32.534546, 27.226917>,  <30.481897, 32.330879, 27.032673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766132, 32.534546, 27.226917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504891, -0.111702, 0.855925,
		0.490050, -0.853390, 0.177698,
		0.710588, 0.509164, 0.485609,
		30.979309, 32.687294, 27.372601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697401, 31.898794, 27.668579>,  <30.481897, 32.330879, 27.032673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697401, 31.898794, 27.668579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792534, 32.283398, 27.723627>,  <30.849613, 32.514160, 27.756655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792534, 32.283398, 27.723627>,  <30.697401, 31.898794, 27.668579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792534, 32.283398, 27.723627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463129, -0.012284, 0.886206,
		0.853784, -0.274505, 0.442380,
		0.237834, 0.961507, 0.137619,
		30.863884, 32.571850, 27.764914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886208, 31.917698, 28.394653>,  <30.697401, 31.898794, 27.668579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886208, 31.917698, 28.394653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819317, 32.294643, 28.278734>,  <30.779182, 32.520813, 28.209183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819317, 32.294643, 28.278734>,  <30.886208, 31.917698, 28.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819317, 32.294643, 28.278734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479796, 0.178996, 0.858927,
		0.861296, 0.282680, 0.422210,
		-0.167227, 0.942366, -0.289797,
		30.769148, 32.577354, 28.191795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062544, 32.320797, 28.976147>,  <30.886208, 31.917698, 28.394653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062544, 32.320797, 28.976147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848406, 32.567570, 28.745390>,  <30.719923, 32.715633, 28.606936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848406, 32.567570, 28.745390>,  <31.062544, 32.320797, 28.976147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848406, 32.567570, 28.745390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545667, 0.268730, 0.793746,
		0.644712, 0.739719, 0.192774,
		-0.535345, 0.616928, -0.576894,
		30.687803, 32.752647, 28.572321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002951, 33.084908, 29.226395>,  <31.062544, 32.320797, 28.976147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002951, 33.084908, 29.226395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673189, 32.987694, 29.021925>,  <30.475332, 32.929367, 28.899244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673189, 32.987694, 29.021925>,  <31.002951, 33.084908, 29.226395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673189, 32.987694, 29.021925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556502, 0.183242, 0.810388,
		-0.103282, 0.952554, -0.286313,
		-0.824402, -0.243032, -0.511172,
		30.425869, 32.914783, 28.868574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627478, 33.663059, 29.253397>,  <31.002951, 33.084908, 29.226395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627478, 33.663059, 29.253397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356966, 33.378658, 29.176331>,  <30.194660, 33.208015, 29.130091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356966, 33.378658, 29.176331>,  <30.627478, 33.663059, 29.253397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356966, 33.378658, 29.176331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664837, 0.476473, 0.575295,
		-0.317238, 0.517150, -0.794931,
		-0.676278, -0.711005, -0.192665,
		30.154083, 33.165356, 29.118530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317881, 34.278435, 29.083225>,  <30.627478, 33.663059, 29.253397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317881, 34.278435, 29.083225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499220, 34.601479, 29.234081>,  <30.608023, 34.795307, 29.324594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499220, 34.601479, 29.234081>,  <30.317881, 34.278435, 29.083225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499220, 34.601479, 29.234081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377966, 0.209013, -0.901918,
		-0.807229, 0.551428, -0.210495,
		0.453347, 0.807614, 0.377142,
		30.635223, 34.843761, 29.347223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200819, 34.751781, 28.602411>,  <30.317881, 34.278435, 29.083225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200819, 34.751781, 28.602411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504995, 34.906662, 28.810951>,  <30.687502, 34.999592, 28.936075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504995, 34.906662, 28.810951>,  <30.200819, 34.751781, 28.602411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504995, 34.906662, 28.810951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285870, 0.521250, -0.804100,
		-0.583100, 0.760509, 0.285692,
		0.760442, 0.387200, 0.521348,
		30.733128, 35.022823, 28.967356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115280, 35.419888, 28.539070>,  <30.200819, 34.751781, 28.602411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115280, 35.419888, 28.539070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503197, 35.361755, 28.617432>,  <30.735947, 35.326874, 28.664450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503197, 35.361755, 28.617432>,  <30.115280, 35.419888, 28.539070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503197, 35.361755, 28.617432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243927, 0.578909, -0.778052,
		-0.000335, 0.802336, 0.596873,
		0.969793, -0.145333, 0.195906,
		30.794134, 35.318157, 28.676203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378359, 36.051601, 28.497681>,  <30.115280, 35.419888, 28.539070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378359, 36.051601, 28.497681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706478, 35.825417, 28.463350>,  <30.903349, 35.689705, 28.442751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706478, 35.825417, 28.463350>,  <30.378359, 36.051601, 28.497681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706478, 35.825417, 28.463350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311080, 0.567036, -0.762692,
		0.479941, 0.598934, 0.641042,
		0.820296, -0.565463, -0.085827,
		30.952566, 35.655777, 28.437601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875299, 36.534473, 28.353510>,  <30.378359, 36.051601, 28.497681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875299, 36.534473, 28.353510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075190, 36.205807, 28.243866>,  <31.195124, 36.008606, 28.178080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075190, 36.205807, 28.243866>,  <30.875299, 36.534473, 28.353510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075190, 36.205807, 28.243866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521208, 0.537997, -0.662497,
		0.691823, 0.188198, 0.697110,
		0.499724, -0.821670, -0.274109,
		31.225107, 35.959305, 28.161633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567776, 36.796284, 28.298666>,  <30.875299, 36.534473, 28.353510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567776, 36.796284, 28.298666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535236, 36.459084, 28.085974>,  <31.515713, 36.256763, 27.958359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535236, 36.459084, 28.085974>,  <31.567776, 36.796284, 28.298666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535236, 36.459084, 28.085974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491804, 0.430077, -0.757075,
		0.866898, -0.323095, 0.379603,
		-0.081349, -0.842997, -0.531732,
		31.510832, 36.206184, 27.926455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206547, 36.685841, 28.065182>,  <31.567776, 36.796284, 28.298666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206547, 36.685841, 28.065182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983648, 36.458035, 27.823477>,  <31.849909, 36.321350, 27.678455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983648, 36.458035, 27.823477>,  <32.206547, 36.685841, 28.065182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983648, 36.458035, 27.823477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505720, 0.344401, -0.790971,
		0.658578, -0.746351, 0.096099,
		-0.557246, -0.569514, -0.604260,
		31.816475, 36.287182, 27.642199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647652, 36.337719, 27.540472>,  <32.206547, 36.685841, 28.065182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647652, 36.337719, 27.540472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282757, 36.337879, 27.376608>,  <32.063820, 36.337975, 27.278290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282757, 36.337879, 27.376608>,  <32.647652, 36.337719, 27.540472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282757, 36.337879, 27.376608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403539, 0.173095, -0.898440,
		0.070549, -0.984905, -0.158066,
		-0.912238, 0.000402, -0.409659,
		32.009087, 36.337997, 27.253710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754341, 35.925968, 27.027739>,  <32.647652, 36.337719, 27.540472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754341, 35.925968, 27.027739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445057, 36.162052, 26.934967>,  <32.259487, 36.303703, 26.879303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445057, 36.162052, 26.934967>,  <32.754341, 35.925968, 27.027739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445057, 36.162052, 26.934967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410154, 0.186515, -0.892741,
		-0.483646, -0.785407, -0.386293,
		-0.773214, 0.590210, -0.231930,
		32.213093, 36.339115, 26.865389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641323, 35.601257, 26.387659>,  <32.754341, 35.925968, 27.027739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641323, 35.601257, 26.387659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452991, 35.953434, 26.410065>,  <32.339993, 36.164742, 26.423508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452991, 35.953434, 26.410065>,  <32.641323, 35.601257, 26.387659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452991, 35.953434, 26.410065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282174, 0.210444, -0.935998,
		-0.835882, -0.424889, -0.347522,
		-0.470829, 0.880445, 0.056014,
		32.311745, 36.217567, 26.426868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263279, 35.623531, 25.903259>,  <32.641323, 35.601257, 26.387659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263279, 35.623531, 25.903259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297771, 36.016258, 25.970909>,  <32.318466, 36.251892, 26.011499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297771, 36.016258, 25.970909>,  <32.263279, 35.623531, 25.903259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297771, 36.016258, 25.970909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383241, 0.124005, -0.915286,
		-0.919615, 0.143741, -0.365579,
		0.086230, 0.981815, 0.169124,
		32.323639, 36.310802, 26.021646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130047, 35.856724, 25.360336>,  <32.263279, 35.623531, 25.903259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130047, 35.856724, 25.360336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306217, 36.184170, 25.507792>,  <32.411919, 36.380638, 25.596266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306217, 36.184170, 25.507792>,  <32.130047, 35.856724, 25.360336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306217, 36.184170, 25.507792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237800, 0.289573, -0.927145,
		-0.865724, 0.495999, -0.067132,
		0.440423, 0.818616, 0.368639,
		32.438343, 36.429756, 25.618383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858845, 36.412239, 25.121624>,  <32.130047, 35.856724, 25.360336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858845, 36.412239, 25.121624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218437, 36.553448, 25.225323>,  <32.434193, 36.638172, 25.287542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218437, 36.553448, 25.225323>,  <31.858845, 36.412239, 25.121624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218437, 36.553448, 25.225323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118377, 0.374044, -0.919825,
		-0.421686, 0.857595, 0.294469,
		0.898982, 0.353018, 0.259248,
		32.488132, 36.659355, 25.303097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894855, 37.101444, 24.896883>,  <31.858845, 36.412239, 25.121624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894855, 37.101444, 24.896883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286510, 37.042091, 24.952406>,  <32.521503, 37.006477, 24.985720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286510, 37.042091, 24.952406>,  <31.894855, 37.101444, 24.896883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286510, 37.042091, 24.952406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173836, 0.258060, -0.950361,
		0.105199, 0.954666, 0.278472,
		0.979140, -0.148386, 0.138808,
		32.580254, 36.997574, 24.994049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206623, 37.645451, 24.648090>,  <31.894855, 37.101444, 24.896883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206623, 37.645451, 24.648090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471336, 37.345936, 24.633347>,  <32.630165, 37.166225, 24.624500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471336, 37.345936, 24.633347>,  <32.206623, 37.645451, 24.648090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471336, 37.345936, 24.633347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175775, 0.202771, -0.963321,
		0.728797, 0.631032, 0.265809,
		0.661784, -0.748788, -0.036859,
		32.669872, 37.121300, 24.622290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748001, 37.891590, 24.103004>,  <32.206623, 37.645451, 24.648090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748001, 37.891590, 24.103004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804741, 37.496849, 24.133968>,  <32.838787, 37.260002, 24.152546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804741, 37.496849, 24.133968>,  <32.748001, 37.891590, 24.103004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804741, 37.496849, 24.133968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358573, -0.021661, -0.933250,
		0.922661, 0.160139, 0.350787,
		0.141852, -0.986857, 0.077408,
		32.847298, 37.200790, 24.157190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517338, 37.700569, 23.950417>,  <32.748001, 37.891590, 24.103004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517338, 37.700569, 23.950417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299114, 37.367073, 23.916372>,  <33.168179, 37.166977, 23.895947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299114, 37.367073, 23.916372>,  <33.517338, 37.700569, 23.950417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299114, 37.367073, 23.916372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322912, -0.115407, -0.939366,
		0.773365, -0.539963, 0.332186,
		-0.545559, -0.833739, -0.085109,
		33.135445, 37.116951, 23.890839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948017, 37.276646, 23.586460>,  <33.517338, 37.700569, 23.950417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948017, 37.276646, 23.586460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590118, 37.101994, 23.548967>,  <33.375381, 36.997204, 23.526472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590118, 37.101994, 23.548967>,  <33.948017, 37.276646, 23.586460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590118, 37.101994, 23.548967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219288, -0.246726, -0.943949,
		0.389031, -0.865147, 0.316504,
		-0.894744, -0.436631, -0.093732,
		33.321693, 36.971004, 23.520847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089077, 36.646694, 23.297386>,  <33.948017, 37.276646, 23.586460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089077, 36.646694, 23.297386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705589, 36.741383, 23.234375>,  <33.475494, 36.798195, 23.196568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705589, 36.741383, 23.234375>,  <34.089077, 36.646694, 23.297386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705589, 36.741383, 23.234375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083976, -0.293576, -0.952240,
		-0.271651, -0.926165, 0.261581,
		-0.958725, 0.236710, -0.157526,
		33.417973, 36.812397, 23.187117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801342, 36.019421, 23.005699>,  <34.089077, 36.646694, 23.297386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801342, 36.019421, 23.005699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570477, 36.320839, 22.879810>,  <33.431957, 36.501690, 22.804277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570477, 36.320839, 22.879810>,  <33.801342, 36.019421, 23.005699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570477, 36.320839, 22.879810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305533, -0.158140, -0.938958,
		-0.757319, -0.638090, -0.138960,
		-0.577164, 0.753547, -0.314720,
		33.397327, 36.546902, 22.785395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308834, 35.717495, 22.503645>,  <33.801342, 36.019421, 23.005699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308834, 35.717495, 22.503645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361477, 36.108700, 22.438936>,  <33.393063, 36.343422, 22.400110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361477, 36.108700, 22.438936>,  <33.308834, 35.717495, 22.503645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361477, 36.108700, 22.438936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333830, -0.197385, -0.921735,
		-0.933401, 0.067299, -0.352467,
		0.131603, 0.978013, -0.161773,
		33.400959, 36.402103, 22.390404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969479, 35.795891, 21.870020>,  <33.308834, 35.717495, 22.503645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969479, 35.795891, 21.870020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204300, 36.119144, 21.889151>,  <33.345192, 36.313095, 21.900629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204300, 36.119144, 21.889151>,  <32.969479, 35.795891, 21.870020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204300, 36.119144, 21.889151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300187, -0.162440, -0.939947,
		-0.751834, 0.566157, -0.337953,
		0.587055, 0.808133, 0.047825,
		33.380417, 36.361584, 21.903498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895435, 36.089725, 21.195017>,  <32.969479, 35.795891, 21.870020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895435, 36.089725, 21.195017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221325, 36.276756, 21.332186>,  <33.416859, 36.388973, 21.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221325, 36.276756, 21.332186>,  <32.895435, 36.089725, 21.195017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221325, 36.276756, 21.332186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412953, -0.052724, -0.909225,
		-0.407048, 0.882381, -0.236041,
		0.814728, 0.467572, 0.342921,
		33.465744, 36.417027, 21.435062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148651, 36.672710, 20.707996>,  <32.895435, 36.089725, 21.195017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148651, 36.672710, 20.707996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468826, 36.583733, 20.930639>,  <33.660931, 36.530346, 21.064226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468826, 36.583733, 20.930639>,  <33.148651, 36.672710, 20.707996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468826, 36.583733, 20.930639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550714, -0.093712, -0.829416,
		0.236657, 0.970432, 0.047491,
		0.800442, -0.222441, 0.556608,
		33.708958, 36.516998, 21.097622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684761, 37.072441, 20.375479>,  <33.148651, 36.672710, 20.707996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684761, 37.072441, 20.375479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856163, 36.779610, 20.587305>,  <33.959003, 36.603909, 20.714401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856163, 36.779610, 20.587305>,  <33.684761, 37.072441, 20.375479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856163, 36.779610, 20.587305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677979, -0.126916, -0.724041,
		0.597269, 0.669288, 0.441954,
		0.428501, -0.732083, 0.529567,
		33.984715, 36.559986, 20.746176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389278, 37.248737, 20.454889>,  <33.684761, 37.072441, 20.375479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389278, 37.248737, 20.454889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374077, 36.852383, 20.506569>,  <34.364956, 36.614571, 20.537577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374077, 36.852383, 20.506569>,  <34.389278, 37.248737, 20.454889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374077, 36.852383, 20.506569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738015, -0.115001, -0.664912,
		0.673713, 0.070085, 0.735662,
		-0.038002, -0.990890, 0.129201,
		34.362675, 36.555115, 20.545330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084244, 36.997814, 20.449982>,  <34.389278, 37.248737, 20.454889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084244, 36.997814, 20.449982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891140, 36.657799, 20.365721>,  <34.775276, 36.453789, 20.315165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891140, 36.657799, 20.365721>,  <35.084244, 36.997814, 20.449982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891140, 36.657799, 20.365721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704790, -0.234331, -0.669597,
		0.519822, -0.471719, 0.712226,
		-0.482758, -0.850041, -0.210653,
		34.746311, 36.402786, 20.302525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556713, 36.481346, 20.395947>,  <35.084244, 36.997814, 20.449982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556713, 36.481346, 20.395947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246136, 36.299423, 20.221458>,  <35.059788, 36.190269, 20.116766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246136, 36.299423, 20.221458>,  <35.556713, 36.481346, 20.395947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246136, 36.299423, 20.221458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564139, -0.193131, -0.802775,
		0.280858, -0.869399, 0.406528,
		-0.776445, -0.454804, -0.436219,
		35.013203, 36.162983, 20.090593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790005, 35.880581, 20.226290>,  <35.556713, 36.481346, 20.395947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790005, 35.880581, 20.226290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481869, 35.969917, 19.987396>,  <35.296986, 36.023521, 19.844061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481869, 35.969917, 19.987396>,  <35.790005, 35.880581, 20.226290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481869, 35.969917, 19.987396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545398, -0.254422, -0.798630,
		-0.330321, -0.940949, 0.074179,
		-0.770343, 0.223347, -0.597233,
		35.250767, 36.036922, 19.808226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766914, 35.356586, 19.706860>,  <35.790005, 35.880581, 20.226290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766914, 35.356586, 19.706860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581696, 35.679459, 19.560415>,  <35.470562, 35.873184, 19.472549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581696, 35.679459, 19.560415>,  <35.766914, 35.356586, 19.706860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581696, 35.679459, 19.560415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324142, -0.230228, -0.917566,
		-0.824934, -0.543552, -0.155035,
		-0.463051, 0.807184, -0.366111,
		35.442780, 35.921616, 19.450583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683563, 35.051830, 19.007017>,  <35.766914, 35.356586, 19.706860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683563, 35.051830, 19.007017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609283, 35.444645, 18.993681>,  <35.564716, 35.680336, 18.985680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609283, 35.444645, 18.993681>,  <35.683563, 35.051830, 19.007017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609283, 35.444645, 18.993681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381585, 0.040808, -0.923433,
		-0.905488, -0.184204, -0.382310,
		-0.185702, 0.982041, -0.033339,
		35.553574, 35.739258, 18.983679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289639, 35.136456, 18.441744>,  <35.683563, 35.051830, 19.007017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289639, 35.136456, 18.441744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434364, 35.505238, 18.497004>,  <35.521198, 35.726509, 18.530159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434364, 35.505238, 18.497004>,  <35.289639, 35.136456, 18.441744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434364, 35.505238, 18.497004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116134, 0.102459, -0.987935,
		-0.924989, 0.373491, -0.070000,
		0.361812, 0.921958, 0.138149,
		35.542908, 35.781826, 18.538448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854595, 35.518997, 17.995665>,  <35.289639, 35.136456, 18.441744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854595, 35.518997, 17.995665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168289, 35.746742, 18.094303>,  <35.356506, 35.883389, 18.153486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168289, 35.746742, 18.094303>,  <34.854595, 35.518997, 17.995665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168289, 35.746742, 18.094303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124925, 0.244404, -0.961593,
		-0.607762, 0.784917, 0.120542,
		0.784231, 0.569361, 0.246595,
		35.403557, 35.917549, 18.168282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707344, 36.156593, 17.611158>,  <34.854595, 35.518997, 17.995665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707344, 36.156593, 17.611158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097443, 36.137634, 17.697559>,  <35.331501, 36.126259, 17.749399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097443, 36.137634, 17.697559>,  <34.707344, 36.156593, 17.611158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097443, 36.137634, 17.697559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217878, 0.373073, -0.901857,
		-0.037839, 0.926591, 0.374163,
		0.975242, -0.047397, 0.216001,
		35.390015, 36.123417, 17.762360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993248, 36.711483, 17.274303>,  <34.707344, 36.156593, 17.611158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993248, 36.711483, 17.274303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290554, 36.447464, 17.317936>,  <35.468937, 36.289055, 17.344116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290554, 36.447464, 17.317936>,  <34.993248, 36.711483, 17.274303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290554, 36.447464, 17.317936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279431, 0.158147, -0.947052,
		0.607845, 0.734392, 0.301982,
		0.743265, -0.660044, 0.109084,
		35.513535, 36.249451, 17.350660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572353, 36.977345, 16.925001>,  <34.993248, 36.711483, 17.274303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572353, 36.977345, 16.925001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662930, 36.587933, 16.937386>,  <35.717274, 36.354286, 16.944817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662930, 36.587933, 16.937386>,  <35.572353, 36.977345, 16.925001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662930, 36.587933, 16.937386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303388, 0.040289, -0.952015,
		0.925571, 0.224964, 0.304481,
		0.226437, -0.973534, 0.030961,
		35.730862, 36.295872, 16.946674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156342, 36.847488, 16.445028>,  <35.572353, 36.977345, 16.925001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156342, 36.847488, 16.445028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994148, 36.485882, 16.499195>,  <35.896832, 36.268917, 16.531694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994148, 36.485882, 16.499195>,  <36.156342, 36.847488, 16.445028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994148, 36.485882, 16.499195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043191, -0.166923, -0.985024,
		0.913080, -0.393565, 0.106730,
		-0.405486, -0.904015, 0.135416,
		35.872501, 36.214676, 16.539820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665958, 36.185772, 16.342541>,  <36.156342, 36.847488, 16.445028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665958, 36.185772, 16.342541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280487, 36.146538, 16.243179>,  <36.049206, 36.122997, 16.183563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280487, 36.146538, 16.243179>,  <36.665958, 36.185772, 16.342541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280487, 36.146538, 16.243179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262561, -0.177838, -0.948386,
		0.048844, -0.979159, 0.197131,
		-0.963678, -0.098082, -0.248402,
		35.991383, 36.117115, 16.168659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123856, 36.552238, 16.856094>,  <36.665958, 36.185772, 16.342541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123856, 36.552238, 16.856094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511253, 36.586803, 16.949524>,  <37.743690, 36.607544, 17.005583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511253, 36.586803, 16.949524>,  <37.123856, 36.552238, 16.856094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511253, 36.586803, 16.949524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247627, 0.234108, 0.940146,
		0.026556, -0.968363, 0.248129,
		0.968492, 0.086410, 0.233576,
		37.801800, 36.612728, 17.019596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232895, 36.178795, 17.415886>,  <37.123856, 36.552238, 16.856094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232895, 36.178795, 17.415886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542297, 36.432156, 17.424730>,  <37.727940, 36.584171, 17.430037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542297, 36.432156, 17.424730>,  <37.232895, 36.178795, 17.415886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542297, 36.432156, 17.424730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148769, 0.147541, 0.977803,
		0.616083, -0.759625, 0.208354,
		0.773505, 0.633404, 0.022111,
		37.774349, 36.622177, 17.431364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643486, 35.985386, 18.053335>,  <37.232895, 36.178795, 17.415886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643486, 35.985386, 18.053335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706024, 36.369930, 17.962696>,  <37.743546, 36.600655, 17.908312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706024, 36.369930, 17.962696>,  <37.643486, 35.985386, 18.053335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706024, 36.369930, 17.962696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072689, 0.239998, 0.968048,
		0.985024, -0.134880, 0.107403,
		0.156347, 0.961357, -0.226600,
		37.752930, 36.658337, 17.894716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983025, 36.213711, 18.593311>,  <37.643486, 35.985386, 18.053335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983025, 36.213711, 18.593311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905663, 36.572044, 18.433271>,  <37.859245, 36.787045, 18.337248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905663, 36.572044, 18.433271>,  <37.983025, 36.213711, 18.593311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905663, 36.572044, 18.433271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128053, 0.381262, 0.915555,
		0.972726, 0.228308, 0.040976,
		-0.193406, 0.895832, -0.400099,
		37.847641, 36.840794, 18.313242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329300, 36.737846, 19.087063>,  <37.983025, 36.213711, 18.593311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329300, 36.737846, 19.087063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081650, 36.956959, 18.861986>,  <37.933060, 37.088425, 18.726940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081650, 36.956959, 18.861986>,  <38.329300, 36.737846, 19.087063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081650, 36.956959, 18.861986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281480, 0.514127, 0.810211,
		0.733115, 0.660006, -0.164118,
		-0.619122, 0.547782, -0.562692,
		37.895912, 37.121292, 18.693178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582470, 37.502113, 19.236202>,  <38.329300, 36.737846, 19.087063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582470, 37.502113, 19.236202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204300, 37.449902, 19.116779>,  <37.977398, 37.418575, 19.045126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204300, 37.449902, 19.116779>,  <38.582470, 37.502113, 19.236202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204300, 37.449902, 19.116779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324253, 0.467236, 0.822527,
		0.032135, 0.874445, -0.484060,
		-0.945425, -0.130526, -0.298556,
		37.920673, 37.410744, 19.027212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230064, 38.130894, 19.353128>,  <38.582470, 37.502113, 19.236202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230064, 38.130894, 19.353128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930855, 37.869644, 19.306000>,  <37.751328, 37.712894, 19.277723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930855, 37.869644, 19.306000>,  <38.230064, 38.130894, 19.353128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930855, 37.869644, 19.306000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547547, 0.507022, 0.665673,
		-0.375030, 0.562455, -0.736883,
		-0.748027, -0.653126, -0.117822,
		37.706448, 37.673706, 19.270653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623013, 38.504280, 19.203827>,  <38.230064, 38.130894, 19.353128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623013, 38.504280, 19.203827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497955, 38.148552, 19.337311>,  <37.422920, 37.935116, 19.417400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497955, 38.148552, 19.337311>,  <37.623013, 38.504280, 19.203827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497955, 38.148552, 19.337311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602686, 0.457268, 0.653969,
		-0.734183, 0.003335, -0.678943,
		-0.312640, -0.889323, 0.333709,
		37.404163, 37.881756, 19.437424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025555, 38.648991, 19.419140>,  <37.623013, 38.504280, 19.203827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025555, 38.648991, 19.419140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055660, 38.283066, 19.577860>,  <37.073723, 38.063511, 19.673092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055660, 38.283066, 19.577860>,  <37.025555, 38.648991, 19.419140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055660, 38.283066, 19.577860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403737, 0.335895, 0.850983,
		-0.911774, -0.224250, -0.344064,
		0.075264, -0.914815, 0.396798,
		37.078239, 38.008621, 19.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419502, 38.488125, 19.718746>,  <37.025555, 38.648991, 19.419140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419502, 38.488125, 19.718746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675755, 38.252460, 19.915716>,  <36.829506, 38.111061, 20.033899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675755, 38.252460, 19.915716>,  <36.419502, 38.488125, 19.718746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675755, 38.252460, 19.915716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428664, 0.257653, 0.865945,
		-0.637053, -0.765839, -0.087489,
		0.640633, -0.589157, 0.492426,
		36.867943, 38.075714, 20.063444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089458, 37.950352, 20.205778>,  <36.419502, 38.488125, 19.718746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089458, 37.950352, 20.205778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453232, 38.010330, 20.360929>,  <36.671494, 38.046318, 20.454021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453232, 38.010330, 20.360929>,  <36.089458, 37.950352, 20.205778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453232, 38.010330, 20.360929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384313, -0.053284, 0.921664,
		0.158871, -0.987257, 0.009170,
		0.909431, 0.149950, 0.387880,
		36.726063, 38.055313, 20.477293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151768, 37.696911, 20.943033>,  <36.089458, 37.950352, 20.205778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151768, 37.696911, 20.943033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477177, 37.929245, 20.954449>,  <36.672421, 38.068645, 20.961298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477177, 37.929245, 20.954449>,  <36.151768, 37.696911, 20.943033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477177, 37.929245, 20.954449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285621, 0.356327, 0.889636,
		0.506567, -0.731885, 0.455779,
		0.813518, 0.580840, 0.028538,
		36.721233, 38.103497, 20.963011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472446, 37.543659, 21.534544>,  <36.151768, 37.696911, 20.943033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472446, 37.543659, 21.534544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532288, 37.921906, 21.419001>,  <36.568192, 38.148853, 21.349674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532288, 37.921906, 21.419001>,  <36.472446, 37.543659, 21.534544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532288, 37.921906, 21.419001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305061, 0.322037, 0.896231,
		0.940509, -0.045956, 0.336646,
		0.149599, 0.945611, -0.288859,
		36.577168, 38.205589, 21.332342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979675, 37.957989, 22.089973>,  <36.472446, 37.543659, 21.534544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979675, 37.957989, 22.089973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718571, 38.182388, 21.886332>,  <36.561909, 38.317028, 21.764147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718571, 38.182388, 21.886332>,  <36.979675, 37.957989, 22.089973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718571, 38.182388, 21.886332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349777, 0.372921, 0.859411,
		0.671983, 0.739061, -0.047203,
		-0.652760, 0.560998, -0.509102,
		36.522743, 38.350689, 21.733601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112576, 38.613682, 22.335384>,  <36.979675, 37.957989, 22.089973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112576, 38.613682, 22.335384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738071, 38.613018, 22.194866>,  <36.513367, 38.612617, 22.110556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738071, 38.613018, 22.194866>,  <37.112576, 38.613682, 22.335384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738071, 38.613018, 22.194866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343156, 0.218395, 0.913536,
		0.075202, 0.975859, -0.205046,
		-0.936263, -0.001663, -0.351296,
		36.457191, 38.612518, 22.089478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692898, 39.013199, 22.763357>,  <37.112576, 38.613682, 22.335384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692898, 39.013199, 22.763357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397972, 38.829048, 22.565599>,  <36.221016, 38.718559, 22.446945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397972, 38.829048, 22.565599>,  <36.692898, 39.013199, 22.763357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397972, 38.829048, 22.565599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603159, 0.119013, 0.788692,
		-0.304257, 0.879709, -0.365431,
		-0.737310, -0.460378, -0.494395,
		36.176781, 38.690933, 22.417280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131344, 39.400475, 22.901527>,  <36.692898, 39.013199, 22.763357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131344, 39.400475, 22.901527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975655, 39.047878, 22.794582>,  <35.882240, 38.836323, 22.730415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975655, 39.047878, 22.794582>,  <36.131344, 39.400475, 22.901527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975655, 39.047878, 22.794582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621825, 0.037302, 0.782268,
		-0.679586, 0.470731, -0.562650,
		-0.389226, -0.881488, -0.267362,
		35.858887, 38.783432, 22.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359825, 39.440517, 23.018902>,  <36.131344, 39.400475, 22.901527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359825, 39.440517, 23.018902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445206, 39.049809, 23.026411>,  <35.496433, 38.815384, 23.030916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445206, 39.049809, 23.026411>,  <35.359825, 39.440517, 23.018902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445206, 39.049809, 23.026411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653261, -0.128418, 0.746163,
		-0.726421, -0.171536, -0.665498,
		0.213456, -0.976773, 0.018772,
		35.509243, 38.756775, 23.032043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656513, 39.092804, 23.075472>,  <35.359825, 39.440517, 23.018902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656513, 39.092804, 23.075472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930042, 38.816391, 23.169165>,  <35.094158, 38.650543, 23.225380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930042, 38.816391, 23.169165>,  <34.656513, 39.092804, 23.075472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930042, 38.816391, 23.169165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464714, -0.164986, 0.869954,
		-0.562524, -0.703740, -0.433954,
		0.683818, -0.691035, 0.234230,
		35.135189, 38.609081, 23.239433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337490, 38.770195, 23.619495>,  <34.656513, 39.092804, 23.075472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337490, 38.770195, 23.619495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711372, 38.633678, 23.659195>,  <34.935703, 38.551769, 23.683014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711372, 38.633678, 23.659195>,  <34.337490, 38.770195, 23.619495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711372, 38.633678, 23.659195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187716, -0.236905, 0.953225,
		-0.301813, -0.909614, -0.285501,
		0.934704, -0.341289, 0.099248,
		34.991783, 38.531292, 23.688969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286572, 38.016827, 23.837206>,  <34.337490, 38.770195, 23.619495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286572, 38.016827, 23.837206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641735, 38.172615, 23.935129>,  <34.854832, 38.266087, 23.993883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641735, 38.172615, 23.935129>,  <34.286572, 38.016827, 23.837206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641735, 38.172615, 23.935129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157154, -0.243341, 0.957125,
		0.432346, -0.888311, -0.154857,
		0.887908, 0.389472, 0.244809,
		34.908108, 38.289455, 24.008572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632492, 37.576653, 24.136637>,  <34.286572, 38.016827, 23.837206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632492, 37.576653, 24.136637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794456, 37.910679, 24.285608>,  <34.891636, 38.111095, 24.374990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794456, 37.910679, 24.285608>,  <34.632492, 37.576653, 24.136637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794456, 37.910679, 24.285608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243346, -0.294202, 0.924245,
		0.881378, -0.464869, 0.084084,
		0.404915, 0.835070, 0.372427,
		34.915932, 38.161201, 24.397337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961620, 37.325428, 24.788315>,  <34.632492, 37.576653, 24.136637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961620, 37.325428, 24.788315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962738, 37.720856, 24.848619>,  <34.963409, 37.958111, 24.884802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962738, 37.720856, 24.848619>,  <34.961620, 37.325428, 24.788315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962738, 37.720856, 24.848619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268471, -0.144483, 0.952391,
		0.963284, -0.043138, 0.264998,
		0.002796, 0.988566, 0.150760,
		34.963577, 38.017426, 24.893847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521114, 37.496189, 25.284883>,  <34.961620, 37.325428, 24.788315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521114, 37.496189, 25.284883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233765, 37.774288, 25.294466>,  <35.061356, 37.941147, 25.300217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233765, 37.774288, 25.294466>,  <35.521114, 37.496189, 25.284883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233765, 37.774288, 25.294466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096895, -0.134101, 0.986219,
		0.688880, 0.706149, 0.163700,
		-0.718370, 0.695248, 0.023957,
		35.018253, 37.982864, 25.301653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629974, 37.870007, 25.909348>,  <35.521114, 37.496189, 25.284883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629974, 37.870007, 25.909348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268635, 38.024612, 25.834976>,  <35.051830, 38.117374, 25.790354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268635, 38.024612, 25.834976>,  <35.629974, 37.870007, 25.909348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268635, 38.024612, 25.834976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171544, 0.071726, 0.982562,
		0.393111, 0.919490, 0.001511,
		-0.903347, 0.386515, -0.185930,
		34.997631, 38.140568, 25.779198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523960, 38.394646, 26.453234>,  <35.629974, 37.870007, 25.909348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523960, 38.394646, 26.453234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167782, 38.257011, 26.334095>,  <34.954075, 38.174431, 26.262611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167782, 38.257011, 26.334095>,  <35.523960, 38.394646, 26.453234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167782, 38.257011, 26.334095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362302, 0.139913, 0.921499,
		-0.275406, 0.928454, -0.249249,
		-0.890443, -0.344090, -0.297848,
		34.900650, 38.153786, 26.244741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063465, 38.891273, 26.640205>,  <35.523960, 38.394646, 26.453234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063465, 38.891273, 26.640205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835548, 38.563892, 26.610628>,  <34.698799, 38.367462, 26.592882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835548, 38.563892, 26.610628>,  <35.063465, 38.891273, 26.640205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835548, 38.563892, 26.610628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519785, 0.289244, 0.803842,
		-0.636520, 0.496458, -0.590230,
		-0.569794, -0.818454, -0.073942,
		34.664612, 38.318356, 26.588446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465378, 39.178612, 26.743650>,  <35.063465, 38.891273, 26.640205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465378, 39.178612, 26.743650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418522, 38.787209, 26.811541>,  <34.390408, 38.552368, 26.852274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418522, 38.787209, 26.811541>,  <34.465378, 39.178612, 26.743650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418522, 38.787209, 26.811541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550125, 0.206220, 0.809219,
		-0.826826, 0.001421, -0.562456,
		-0.117140, -0.978505, 0.169726,
		34.383381, 38.493656, 26.862459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687672, 39.023376, 26.843132>,  <34.465378, 39.178612, 26.743650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687672, 39.023376, 26.843132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898846, 38.738029, 27.027475>,  <34.025551, 38.566822, 27.138083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898846, 38.738029, 27.027475>,  <33.687672, 39.023376, 26.843132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898846, 38.738029, 27.027475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576159, 0.097839, 0.811461,
		-0.623960, -0.693927, -0.359361,
		0.527934, -0.713368, 0.460860,
		34.057228, 38.524021, 27.165733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260757, 38.685577, 27.198109>,  <33.687672, 39.023376, 26.843132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260757, 38.685577, 27.198109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583271, 38.547146, 27.389997>,  <33.776779, 38.464088, 27.505131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583271, 38.547146, 27.389997>,  <33.260757, 38.685577, 27.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583271, 38.547146, 27.389997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528292, -0.056468, 0.847183,
		-0.266107, -0.936503, -0.228362,
		0.806285, -0.346083, 0.479721,
		33.825157, 38.443321, 27.533915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977985, 38.206928, 27.636480>,  <33.260757, 38.685577, 27.198109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977985, 38.206928, 27.636480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334385, 38.242725, 27.814518>,  <33.548225, 38.264202, 27.921341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334385, 38.242725, 27.814518>,  <32.977985, 38.206928, 27.636480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334385, 38.242725, 27.814518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429724, -0.150059, 0.890404,
		0.146475, -0.984618, -0.095245,
		0.891000, 0.089493, 0.445095,
		33.601685, 38.269573, 27.948046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052212, 37.626640, 28.178707>,  <32.977985, 38.206928, 27.636480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052212, 37.626640, 28.178707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331295, 37.895489, 28.277864>,  <33.498745, 38.056797, 28.337358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331295, 37.895489, 28.277864>,  <33.052212, 37.626640, 28.178707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331295, 37.895489, 28.277864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333224, -0.001829, 0.942846,
		0.634161, -0.740438, 0.222691,
		0.697712, 0.672122, 0.247892,
		33.540607, 38.097126, 28.352232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441650, 37.368965, 28.658329>,  <33.052212, 37.626640, 28.178707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441650, 37.368965, 28.658329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470112, 37.764717, 28.709024>,  <33.487190, 38.002167, 28.739443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470112, 37.764717, 28.709024>,  <33.441650, 37.368965, 28.658329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470112, 37.764717, 28.709024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232812, -0.107080, 0.966609,
		0.969915, -0.098288, 0.222720,
		0.071158, 0.989380, 0.126741,
		33.491459, 38.061531, 28.747047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467854, 37.435478, 29.298660>,  <33.441650, 37.368965, 28.658329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467854, 37.435478, 29.298660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446400, 37.826233, 29.215885>,  <33.433529, 38.060684, 29.166220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446400, 37.826233, 29.215885>,  <33.467854, 37.435478, 29.298660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446400, 37.826233, 29.215885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499567, 0.153187, 0.852624,
		0.864613, 0.149110, 0.479802,
		-0.053636, 0.976883, -0.206938,
		33.430309, 38.119297, 29.153805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783073, 37.787823, 29.821693>,  <33.467854, 37.435478, 29.298660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783073, 37.787823, 29.821693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535637, 38.055485, 29.656973>,  <33.387177, 38.216080, 29.558140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535637, 38.055485, 29.656973>,  <33.783073, 37.787823, 29.821693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535637, 38.055485, 29.656973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426273, 0.154458, 0.891310,
		0.660029, 0.726896, 0.189695,
		-0.618590, 0.669153, -0.411803,
		33.350060, 38.256229, 29.533432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829571, 38.525673, 30.131351>,  <33.783073, 37.787823, 29.821693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829571, 38.525673, 30.131351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463047, 38.473881, 29.979767>,  <33.243134, 38.442806, 29.888817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463047, 38.473881, 29.979767>,  <33.829571, 38.525673, 30.131351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463047, 38.473881, 29.979767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397069, 0.170717, 0.901771,
		-0.052064, 0.976776, -0.207841,
		-0.916311, -0.129477, -0.378960,
		33.188152, 38.435036, 29.866079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348019, 39.023190, 30.376623>,  <33.829571, 38.525673, 30.131351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348019, 39.023190, 30.376623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098122, 38.734905, 30.256441>,  <32.948185, 38.561935, 30.184332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098122, 38.734905, 30.256441>,  <33.348019, 39.023190, 30.376623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098122, 38.734905, 30.256441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468857, 0.038550, 0.882432,
		-0.624395, 0.692164, -0.361995,
		-0.624743, -0.720710, -0.300455,
		32.910698, 38.518692, 30.166304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753487, 39.174232, 30.656210>,  <33.348019, 39.023190, 30.376623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753487, 39.174232, 30.656210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669189, 38.800346, 30.541742>,  <32.618610, 38.576015, 30.473063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669189, 38.800346, 30.541742>,  <32.753487, 39.174232, 30.656210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669189, 38.800346, 30.541742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512034, -0.143822, 0.846839,
		-0.832712, 0.324993, -0.448298,
		-0.210742, -0.934717, -0.286169,
		32.605968, 38.519932, 30.455891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057961, 39.050167, 30.985329>,  <32.753487, 39.174232, 30.656210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057961, 39.050167, 30.985329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201950, 38.690136, 30.887117>,  <32.288345, 38.474117, 30.828190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201950, 38.690136, 30.887117>,  <32.057961, 39.050167, 30.985329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201950, 38.690136, 30.887117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671457, -0.432658, 0.601625,
		-0.647737, -0.051708, -0.760108,
		0.359976, -0.900074, -0.245529,
		32.309944, 38.420113, 30.813459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551096, 38.641819, 30.817768>,  <32.057961, 39.050167, 30.985329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551096, 38.641819, 30.817768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847704, 38.414631, 30.960625>,  <32.025669, 38.278316, 31.046339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847704, 38.414631, 30.960625>,  <31.551096, 38.641819, 30.817768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847704, 38.414631, 30.960625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605149, -0.336324, 0.721582,
		-0.289725, -0.751193, -0.593100,
		0.741522, -0.567974, 0.357142,
		32.070160, 38.244240, 31.067768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501307, 37.857208, 30.698694>,  <31.551096, 38.641819, 30.817768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501307, 37.857208, 30.698694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704742, 37.946423, 31.031342>,  <31.826805, 37.999950, 31.230930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704742, 37.946423, 31.031342>,  <31.501307, 37.857208, 30.698694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704742, 37.946423, 31.031342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654215, -0.527834, 0.541659,
		0.559766, -0.819541, -0.122538,
		0.508591, 0.223036, 0.831619,
		31.857319, 38.013332, 31.280827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461462, 37.229401, 31.063267>,  <31.501307, 37.857208, 30.698694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461462, 37.229401, 31.063267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528694, 37.553108, 31.288416>,  <31.569035, 37.747334, 31.423506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528694, 37.553108, 31.288416>,  <31.461462, 37.229401, 31.063267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528694, 37.553108, 31.288416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863713, -0.154312, 0.479779,
		0.475130, -0.566804, 0.673042,
		0.168082, 0.809272, 0.562874,
		31.579119, 37.795891, 31.457277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090738, 37.042439, 31.714762>,  <31.461462, 37.229401, 31.063267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090738, 37.042439, 31.714762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096706, 37.442074, 31.698767>,  <31.100288, 37.681854, 31.689169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096706, 37.442074, 31.698767>,  <31.090738, 37.042439, 31.714762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096706, 37.442074, 31.698767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912415, 0.029965, 0.408168,
		0.408994, 0.030396, 0.912030,
		0.014922, 0.999089, -0.039989,
		31.101183, 37.741802, 31.686769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803267, 37.389469, 32.280018>,  <31.090738, 37.042439, 31.714762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803267, 37.389469, 32.280018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748091, 37.655094, 31.986080>,  <30.714985, 37.814468, 31.809719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748091, 37.655094, 31.986080>,  <30.803267, 37.389469, 32.280018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748091, 37.655094, 31.986080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816713, 0.343466, 0.463692,
		0.560314, 0.664116, 0.494973,
		-0.137939, 0.664064, -0.734841,
		30.706709, 37.854313, 31.765627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241884, 36.892403, 32.711517>,  <30.803267, 37.389469, 32.280018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241884, 36.892403, 32.711517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417439, 37.202579, 32.529938>,  <31.522772, 37.388683, 32.420990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417439, 37.202579, 32.529938>,  <31.241884, 36.892403, 32.711517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417439, 37.202579, 32.529938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363581, 0.308745, 0.878912,
		0.821698, -0.550791, -0.146431,
		0.438887, 0.775439, -0.453952,
		31.549105, 37.435211, 32.393753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025864, 36.968117, 32.956959>,  <31.241884, 36.892403, 32.711517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025864, 36.968117, 32.956959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870232, 37.327557, 32.875824>,  <31.776854, 37.543221, 32.827141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870232, 37.327557, 32.875824>,  <32.025864, 36.968117, 32.956959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870232, 37.327557, 32.875824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491390, 0.388698, 0.779391,
		0.779201, 0.203570, -0.592795,
		-0.389078, 0.898595, -0.202841,
		31.753508, 37.597134, 32.814972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507782, 37.472561, 32.622444>,  <32.025864, 36.968117, 32.956959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507782, 37.472561, 32.622444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244694, 37.626366, 32.881535>,  <32.086842, 37.718647, 33.036991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244694, 37.626366, 32.881535>,  <32.507782, 37.472561, 32.622444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244694, 37.626366, 32.881535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753253, 0.339686, 0.563226,
		-0.003459, 0.858351, -0.513052,
		-0.657722, 0.384510, 0.647730,
		32.047379, 37.741718, 33.075855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777691, 36.935860, 32.140663>,  <32.507782, 37.472561, 32.622444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777691, 36.935860, 32.140663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948528, 36.861923, 32.494709>,  <33.051029, 36.817562, 32.707138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948528, 36.861923, 32.494709>,  <32.777691, 36.935860, 32.140663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948528, 36.861923, 32.494709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374886, -0.854588, -0.359360,
		0.822834, 0.485296, -0.295690,
		0.427089, -0.184844, 0.885115,
		33.076656, 36.806469, 32.760242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520267, 36.795841, 32.229591>,  <32.777691, 36.935860, 32.140663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520267, 36.795841, 32.229591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276760, 36.617149, 32.491840>,  <33.130657, 36.509933, 32.649189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276760, 36.617149, 32.491840>,  <33.520267, 36.795841, 32.229591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276760, 36.617149, 32.491840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034173, -0.840392, -0.540901,
		0.792614, -0.306877, 0.526868,
		-0.608765, -0.446731, 0.655619,
		33.094131, 36.483131, 32.688526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834892, 36.358826, 32.590618>,  <33.520267, 36.795841, 32.229591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834892, 36.358826, 32.590618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464027, 36.253078, 32.484425>,  <33.241508, 36.189629, 32.420708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464027, 36.253078, 32.484425>,  <33.834892, 36.358826, 32.590618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464027, 36.253078, 32.484425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372827, -0.580845, -0.723616,
		0.037097, -0.769887, 0.637101,
		-0.927159, -0.264372, -0.265487,
		33.185879, 36.173767, 32.404778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831470, 35.693752, 32.486759>,  <33.834892, 36.358826, 32.590618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831470, 35.693752, 32.486759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541389, 35.827518, 32.246010>,  <33.367340, 35.907776, 32.101559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541389, 35.827518, 32.246010>,  <33.831470, 35.693752, 32.486759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541389, 35.827518, 32.246010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420383, -0.477252, -0.771692,
		-0.545311, -0.812648, 0.205521,
		-0.725200, 0.334415, -0.601874,
		33.323830, 35.927841, 32.065449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769791, 35.128681, 32.015354>,  <33.831470, 35.693752, 32.486759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769791, 35.128681, 32.015354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593983, 35.454529, 31.863976>,  <33.488499, 35.650036, 31.773148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593983, 35.454529, 31.863976>,  <33.769791, 35.128681, 32.015354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593983, 35.454529, 31.863976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266106, -0.284324, -0.921058,
		-0.857911, -0.505529, -0.091809,
		-0.439518, 0.814616, -0.378449,
		33.462128, 35.698914, 31.750441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401230, 34.900402, 31.442247>,  <33.769791, 35.128681, 32.015354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401230, 34.900402, 31.442247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477699, 35.289780, 31.391863>,  <33.523582, 35.523407, 31.361631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477699, 35.289780, 31.391863>,  <33.401230, 34.900402, 31.442247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477699, 35.289780, 31.391863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580954, -0.215653, -0.784848,
		-0.791166, 0.076866, -0.606752,
		0.191177, 0.973440, -0.125962,
		33.535053, 35.581810, 31.354074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946415, 35.435032, 31.927357>,  <33.401230, 34.900402, 31.442247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946415, 35.435032, 31.927357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948624, 35.052670, 32.044811>,  <32.949947, 34.823254, 32.115284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948624, 35.052670, 32.044811>,  <32.946415, 35.435032, 31.927357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948624, 35.052670, 32.044811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977439, 0.056845, 0.203426,
		-0.211147, -0.288133, -0.934022,
		0.005519, -0.955902, 0.293635,
		32.950279, 34.765900, 32.132900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335049, 35.183254, 31.701967>,  <32.946415, 35.435032, 31.927357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335049, 35.183254, 31.701967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441219, 34.911121, 31.975229>,  <32.504921, 34.747841, 32.139187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441219, 34.911121, 31.975229>,  <32.335049, 35.183254, 31.701967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441219, 34.911121, 31.975229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894960, 0.089694, 0.437038,
		-0.358606, -0.727394, -0.585064,
		0.265422, -0.680333, 0.683153,
		32.520847, 34.707020, 32.180176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765968, 34.702744, 31.845694>,  <32.335049, 35.183254, 31.701967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765968, 34.702744, 31.845694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010849, 34.755363, 32.157566>,  <32.157776, 34.786938, 32.344688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010849, 34.755363, 32.157566>,  <31.765968, 34.702744, 31.845694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010849, 34.755363, 32.157566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767152, -0.140047, 0.625991,
		0.191545, -0.981366, 0.015186,
		0.612200, 0.131555, 0.779682,
		32.194508, 34.794830, 32.391472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645836, 34.196049, 32.425972>,  <31.765968, 34.702744, 31.845694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645836, 34.196049, 32.425972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788027, 34.545700, 32.558353>,  <31.873343, 34.755493, 32.637783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788027, 34.545700, 32.558353>,  <31.645836, 34.196049, 32.425972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788027, 34.545700, 32.558353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851229, 0.156519, 0.500910,
		0.386062, -0.459778, 0.799725,
		0.355479, 0.874132, 0.330950,
		31.894670, 34.807938, 32.657639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664488, 33.729019, 31.816881>,  <31.645836, 34.196049, 32.425972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664488, 33.729019, 31.816881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549294, 33.348553, 31.772432>,  <31.480177, 33.120274, 31.745762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549294, 33.348553, 31.772432>,  <31.664488, 33.729019, 31.816881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549294, 33.348553, 31.772432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116062, 0.149851, -0.981873,
		0.950576, -0.269866, -0.153549,
		-0.287984, -0.951166, -0.111124,
		31.462898, 33.063202, 31.739096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831978, 33.492405, 32.506195>,  <31.664488, 33.729019, 31.816881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831978, 33.492405, 32.506195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659910, 33.467197, 32.866413>,  <31.556669, 33.452072, 33.082542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659910, 33.467197, 32.866413>,  <31.831978, 33.492405, 32.506195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659910, 33.467197, 32.866413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808857, 0.469888, -0.353490,
		-0.400880, -0.880474, -0.253103,
		-0.430169, -0.063017, 0.900546,
		31.530859, 33.448292, 33.136578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137527, 32.873173, 32.512741>,  <31.831978, 33.492405, 32.506195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137527, 32.873173, 32.512741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395111, 32.579266, 32.598000>,  <32.549660, 32.402920, 32.649155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395111, 32.579266, 32.598000>,  <32.137527, 32.873173, 32.512741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395111, 32.579266, 32.598000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170556, 0.409463, 0.896243,
		-0.745809, -0.540788, 0.388996,
		0.643956, -0.734771, 0.213147,
		32.588299, 32.358833, 32.661945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952803, 32.423676, 33.101505>,  <32.137527, 32.873173, 32.512741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952803, 32.423676, 33.101505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349094, 32.448994, 33.053421>,  <32.586868, 32.464184, 33.024570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349094, 32.448994, 33.053421>,  <31.952803, 32.423676, 33.101505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349094, 32.448994, 33.053421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098552, 0.274201, 0.956609,
		0.093511, -0.959587, 0.265421,
		0.990729, 0.063296, -0.120209,
		32.646313, 32.467983, 33.017357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323288, 31.967831, 33.524036>,  <31.952803, 32.423676, 33.101505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323288, 31.967831, 33.524036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566002, 32.282547, 33.478817>,  <32.711628, 32.471378, 33.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566002, 32.282547, 33.478817>,  <32.323288, 31.967831, 33.524036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566002, 32.282547, 33.478817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013649, 0.152510, 0.988208,
		0.794752, -0.598082, 0.103279,
		0.606781, 0.786790, -0.113044,
		32.748035, 32.518585, 33.444904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803337, 31.853380, 34.037071>,  <32.323288, 31.967831, 33.524036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803337, 31.853380, 34.037071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862679, 32.236290, 33.937782>,  <32.898281, 32.466038, 33.878208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862679, 32.236290, 33.937782>,  <32.803337, 31.853380, 34.037071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862679, 32.236290, 33.937782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079583, 0.261743, 0.961851,
		0.985728, -0.122936, 0.115013,
		0.148350, 0.957276, -0.248223,
		32.907185, 32.523472, 33.863316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457138, 32.251751, 34.362957>,  <32.803337, 31.853380, 34.037071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457138, 32.251751, 34.362957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120632, 32.463177, 34.317539>,  <32.918728, 32.590031, 34.290291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120632, 32.463177, 34.317539>,  <33.457138, 32.251751, 34.362957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120632, 32.463177, 34.317539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074754, 0.321733, 0.943875,
		0.535428, 0.785562, -0.310175,
		-0.841266, 0.528564, -0.113540,
		32.868252, 32.621746, 34.283478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267944, 32.402706, 34.558685>,  <33.457138, 32.251751, 34.362957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267944, 32.402706, 34.558685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395416, 32.737072, 34.737434>,  <34.471901, 32.937691, 34.844685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395416, 32.737072, 34.737434>,  <34.267944, 32.402706, 34.558685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395416, 32.737072, 34.737434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703488, 0.107384, -0.702548,
		-0.635255, 0.538257, -0.553832,
		0.318679, 0.835911, 0.446874,
		34.491020, 32.987846, 34.871498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386784, 32.977863, 34.057442>,  <34.267944, 32.402706, 34.558685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386784, 32.977863, 34.057442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641556, 33.067276, 34.352562>,  <34.794418, 33.120922, 34.529633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641556, 33.067276, 34.352562>,  <34.386784, 32.977863, 34.057442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641556, 33.067276, 34.352562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625080, 0.410404, -0.663960,
		-0.451212, 0.884083, 0.121675,
		0.636932, 0.223530, 0.737802,
		34.832634, 33.134335, 34.573902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758747, 33.550465, 33.827412>,  <34.386784, 32.977863, 34.057442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758747, 33.550465, 33.827412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993416, 33.461220, 34.138805>,  <35.134216, 33.407673, 34.325642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993416, 33.461220, 34.138805>,  <34.758747, 33.550465, 33.827412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993416, 33.461220, 34.138805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719020, 0.585796, -0.373969,
		-0.372597, 0.779143, 0.504091,
		0.586670, -0.223112, 0.778485,
		35.169418, 33.394287, 34.372353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158207, 34.115520, 33.915268>,  <34.758747, 33.550465, 33.827412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158207, 34.115520, 33.915268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347198, 33.840706, 34.136082>,  <35.460594, 33.675816, 34.268570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347198, 33.840706, 34.136082>,  <35.158207, 34.115520, 33.915268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347198, 33.840706, 34.136082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873164, 0.450024, -0.187252,
		-0.119779, 0.570489, 0.812524,
		0.472481, -0.687038, 0.552034,
		35.488941, 33.634594, 34.301693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673103, 34.525761, 34.397755>,  <35.158207, 34.115520, 33.915268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673103, 34.525761, 34.397755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773514, 34.148682, 34.309837>,  <35.833759, 33.922436, 34.257088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773514, 34.148682, 34.309837>,  <35.673103, 34.525761, 34.397755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773514, 34.148682, 34.309837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904807, 0.309197, -0.292781,
		0.343964, -0.125378, 0.930575,
		0.251022, -0.942697, -0.219796,
		35.848820, 33.865871, 34.243900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248665, 34.244209, 34.735031>,  <35.673103, 34.525761, 34.397755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248665, 34.244209, 34.735031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241817, 34.107964, 34.359013>,  <36.237709, 34.026215, 34.133400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241817, 34.107964, 34.359013>,  <36.248665, 34.244209, 34.735031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241817, 34.107964, 34.359013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902043, 0.400307, -0.161473,
		0.431308, -0.850726, 0.300398,
		-0.017117, -0.340617, -0.940046,
		36.236683, 34.005779, 34.077000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887886, 33.916553, 34.469849>,  <36.248665, 34.244209, 34.735031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887886, 33.916553, 34.469849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708149, 34.011600, 34.125378>,  <36.600307, 34.068626, 33.918694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708149, 34.011600, 34.125378>,  <36.887886, 33.916553, 34.469849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708149, 34.011600, 34.125378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834864, 0.454776, -0.310130,
		0.317952, -0.858323, -0.402727,
		-0.449342, 0.237616, -0.861180,
		36.573345, 34.082886, 33.867023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243961, 33.669483, 33.822857>,  <36.887886, 33.916553, 34.469849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243961, 33.669483, 33.822857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063137, 34.025368, 33.797382>,  <36.954643, 34.238899, 33.782097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063137, 34.025368, 33.797382>,  <37.243961, 33.669483, 33.822857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063137, 34.025368, 33.797382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839812, 0.400464, -0.366531,
		-0.300602, -0.219180, -0.928224,
		-0.452056, 0.889713, -0.063690,
		36.927521, 34.292282, 33.778275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237614, 33.991119, 33.139076>,  <37.243961, 33.669483, 33.822857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237614, 33.991119, 33.139076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211075, 34.304787, 33.385876>,  <37.195152, 34.492985, 33.533955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211075, 34.304787, 33.385876>,  <37.237614, 33.991119, 33.139076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211075, 34.304787, 33.385876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697518, 0.478615, -0.533289,
		-0.713490, 0.394984, -0.578723,
		-0.066345, 0.784165, 0.616995,
		37.191170, 34.540035, 33.570972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041866, 34.451576, 32.771801>,  <37.237614, 33.991119, 33.139076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041866, 34.451576, 32.771801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247063, 34.622425, 33.069637>,  <37.370182, 34.724934, 33.248337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247063, 34.622425, 33.069637>,  <37.041866, 34.451576, 32.771801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247063, 34.622425, 33.069637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687779, 0.314494, -0.654258,
		-0.513613, 0.847740, -0.132430,
		0.512992, 0.427118, 0.744587,
		37.400959, 34.750561, 33.293015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269615, 35.205822, 32.703217>,  <37.041866, 34.451576, 32.771801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269615, 35.205822, 32.703217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553215, 35.020592, 32.915966>,  <37.723373, 34.909454, 33.043613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553215, 35.020592, 32.915966>,  <37.269615, 35.205822, 32.703217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553215, 35.020592, 32.915966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703541, 0.516349, -0.488276,
		-0.048523, 0.720379, 0.691881,
		0.708996, -0.463074, 0.531871,
		37.765915, 34.881668, 33.075527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696507, 35.697433, 33.148682>,  <37.269615, 35.205822, 32.703217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696507, 35.697433, 33.148682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875378, 35.378956, 32.985661>,  <37.982700, 35.187870, 32.887848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875378, 35.378956, 32.985661>,  <37.696507, 35.697433, 33.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875378, 35.378956, 32.985661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618933, 0.604391, -0.501631,
		0.645717, -0.027925, 0.763066,
		0.447182, -0.796199, -0.407549,
		38.009533, 35.140095, 32.863396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443466, 35.803978, 33.117561>,  <37.696507, 35.697433, 33.148682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443466, 35.803978, 33.117561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383511, 35.521057, 32.841225>,  <38.347538, 35.351307, 32.675423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383511, 35.521057, 32.841225>,  <38.443466, 35.803978, 33.117561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383511, 35.521057, 32.841225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743842, 0.379638, -0.550068,
		0.651332, -0.596324, 0.469216,
		-0.149887, -0.707300, -0.690841,
		38.338543, 35.308868, 32.633972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014557, 35.409462, 33.095512>,  <38.443466, 35.803978, 33.117561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014557, 35.409462, 33.095512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803673, 35.408680, 32.755619>,  <38.677143, 35.408211, 32.551682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803673, 35.408680, 32.755619>,  <39.014557, 35.409462, 33.095512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803673, 35.408680, 32.755619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744210, 0.481586, -0.462846,
		0.410126, -0.876397, -0.252440,
		-0.527209, -0.001957, -0.849734,
		38.645512, 35.408092, 32.500698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610569, 35.801060, 33.414040>,  <39.014557, 35.409462, 33.095512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610569, 35.801060, 33.414040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840450, 35.496677, 33.534473>,  <39.978378, 35.314049, 33.606735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840450, 35.496677, 33.534473>,  <39.610569, 35.801060, 33.414040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840450, 35.496677, 33.534473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751662, 0.636325, 0.173480,
		-0.323599, 0.126613, 0.937685,
		0.574707, -0.760960, 0.301085,
		40.012863, 35.268391, 33.624798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829460, 35.884441, 34.117588>,  <39.610569, 35.801060, 33.414040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829460, 35.884441, 34.117588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469902, 35.921127, 33.946201>,  <39.254169, 35.943138, 33.843369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469902, 35.921127, 33.946201>,  <39.829460, 35.884441, 34.117588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469902, 35.921127, 33.946201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422001, -0.444391, 0.790210,
		-0.117929, 0.891126, 0.438164,
		-0.898892, 0.091717, -0.428463,
		39.200233, 35.948643, 33.817661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474403, 36.213902, 34.511471>,  <39.829460, 35.884441, 34.117588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474403, 36.213902, 34.511471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231667, 35.983044, 34.292877>,  <39.086025, 35.844528, 34.161720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231667, 35.983044, 34.292877>,  <39.474403, 36.213902, 34.511471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231667, 35.983044, 34.292877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399336, -0.373086, 0.837459,
		-0.687220, 0.726438, -0.004069,
		-0.606844, -0.577143, -0.546485,
		39.049614, 35.809902, 34.128933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231167, 35.775696, 35.116802>,  <39.474403, 36.213902, 34.511471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231167, 35.775696, 35.116802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016178, 35.648182, 34.804520>,  <38.887184, 35.571674, 34.617149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016178, 35.648182, 34.804520>,  <39.231167, 35.775696, 35.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016178, 35.648182, 34.804520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646705, -0.438334, 0.624209,
		-0.541200, 0.840379, 0.029430,
		-0.537472, -0.318789, -0.780703,
		38.854939, 35.552544, 34.570309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010647, 35.361618, 35.783089>,  <39.231167, 35.775696, 35.116802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010647, 35.361618, 35.783089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886089, 34.987293, 35.849178>,  <38.811356, 34.762699, 35.888832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886089, 34.987293, 35.849178>,  <39.010647, 35.361618, 35.783089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886089, 34.987293, 35.849178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848056, -0.195217, 0.492638,
		-0.428760, 0.293521, 0.854406,
		-0.311394, -0.935807, 0.165221,
		38.792671, 34.706551, 35.898743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894398, 35.296814, 36.541996>,  <39.010647, 35.361618, 35.783089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894398, 35.296814, 36.541996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001385, 34.989979, 36.308743>,  <39.065578, 34.805878, 36.168793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001385, 34.989979, 36.308743>,  <38.894398, 35.296814, 36.541996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001385, 34.989979, 36.308743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818108, -0.138947, 0.558027,
		-0.509078, -0.626317, 0.590395,
		0.267468, -0.767086, -0.583130,
		39.081627, 34.759853, 36.133804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903255, 34.578934, 36.809048>,  <38.894398, 35.296814, 36.541996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903255, 34.578934, 36.809048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172684, 34.690327, 36.535187>,  <39.334339, 34.757164, 36.370869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172684, 34.690327, 36.535187>,  <38.903255, 34.578934, 36.809048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172684, 34.690327, 36.535187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703756, 0.041473, 0.709231,
		0.225903, -0.959545, -0.168049,
		0.673570, 0.278483, -0.684655,
		39.374756, 34.773872, 36.329792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469059, 34.241661, 36.848080>,  <38.903255, 34.578934, 36.809048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469059, 34.241661, 36.848080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641693, 34.576336, 36.713207>,  <39.745274, 34.777142, 36.632282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641693, 34.576336, 36.713207>,  <39.469059, 34.241661, 36.848080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641693, 34.576336, 36.713207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792632, -0.173291, 0.584555,
		0.430657, -0.519547, -0.737973,
		0.431588, 0.836684, -0.337181,
		39.771168, 34.827343, 36.612053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255276, 34.205399, 36.627476>,  <39.469059, 34.241661, 36.848080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255276, 34.205399, 36.627476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163090, 34.574482, 36.751087>,  <40.107777, 34.795933, 36.825253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163090, 34.574482, 36.751087>,  <40.255276, 34.205399, 36.627476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163090, 34.574482, 36.751087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779657, -0.014924, 0.626028,
		0.582253, 0.385213, -0.715956,
		-0.230469, 0.922707, 0.309024,
		40.093948, 34.851295, 36.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431717, 34.220573, 35.960400>,  <40.255276, 34.205399, 36.627476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431717, 34.220573, 35.960400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783047, 34.045578, 35.883301>,  <40.993843, 33.940578, 35.837040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783047, 34.045578, 35.883301>,  <40.431717, 34.220573, 35.960400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783047, 34.045578, 35.883301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395207, -0.437593, -0.807666,
		0.269003, 0.785565, -0.557248,
		0.878322, -0.437493, -0.192746,
		41.046543, 33.914330, 35.825478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579147, 34.360809, 35.214531>,  <40.431717, 34.220573, 35.960400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579147, 34.360809, 35.214531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735935, 34.015408, 35.341476>,  <40.830009, 33.808167, 35.417645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735935, 34.015408, 35.341476>,  <40.579147, 34.360809, 35.214531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735935, 34.015408, 35.341476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366524, -0.462988, -0.807033,
		0.843812, 0.200012, -0.497973,
		0.391971, -0.863503, 0.317365,
		40.853527, 33.756355, 35.436687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709370, 33.911026, 34.681534>,  <40.579147, 34.360809, 35.214531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709370, 33.911026, 34.681534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693291, 33.656837, 34.989964>,  <40.683643, 33.504326, 35.175022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693291, 33.656837, 34.989964>,  <40.709370, 33.911026, 34.681534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693291, 33.656837, 34.989964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782094, -0.460269, -0.420097,
		0.621862, -0.619943, -0.478496,
		-0.040199, -0.635471, 0.771078,
		40.681232, 33.466198, 35.221287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674896, 33.259388, 34.454441>,  <40.709370, 33.911026, 34.681534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674896, 33.259388, 34.454441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472393, 33.236534, 34.798637>,  <40.350891, 33.222820, 35.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472393, 33.236534, 34.798637>,  <40.674896, 33.259388, 34.454441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472393, 33.236534, 34.798637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754612, -0.453655, -0.474087,
		0.417453, -0.889344, 0.186550,
		-0.506255, -0.057136, 0.860489,
		40.320515, 33.219395, 35.056786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584896, 33.435078, 33.717873>,  <40.674896, 33.259388, 34.454441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584896, 33.435078, 33.717873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874001, 33.197163, 33.858639>,  <41.047462, 33.054413, 33.943100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874001, 33.197163, 33.858639>,  <40.584896, 33.435078, 33.717873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874001, 33.197163, 33.858639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544287, 0.176098, -0.820208,
		0.425879, 0.784356, 0.451013,
		0.722757, -0.594790, 0.351918,
		41.090828, 33.018726, 33.964214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243340, 33.843063, 33.898605>,  <40.584896, 33.435078, 33.717873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243340, 33.843063, 33.898605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295288, 33.467247, 33.771866>,  <41.326458, 33.241756, 33.695820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295288, 33.467247, 33.771866>,  <41.243340, 33.843063, 33.898605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295288, 33.467247, 33.771866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428008, 0.341375, -0.836823,
		0.894395, -0.026933, 0.446467,
		0.129874, -0.939541, -0.316851,
		41.334251, 33.185383, 33.676811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856258, 33.833591, 33.563213>,  <41.243340, 33.843063, 33.898605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856258, 33.833591, 33.563213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643105, 33.527042, 33.419712>,  <41.515213, 33.343113, 33.333611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643105, 33.527042, 33.419712>,  <41.856258, 33.833591, 33.563213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643105, 33.527042, 33.419712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262115, 0.253617, -0.931115,
		0.804571, -0.590208, 0.065731,
		-0.532880, -0.766377, -0.358754,
		41.483242, 33.297131, 33.312084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228130, 34.414818, 34.007790>,  <41.856258, 33.833591, 33.563213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228130, 34.414818, 34.007790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373909, 34.420525, 33.635345>,  <42.461376, 34.423950, 33.411877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373909, 34.420525, 33.635345>,  <42.228130, 34.414818, 34.007790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373909, 34.420525, 33.635345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931195, -0.013380, 0.364275,
		-0.007260, -0.999808, -0.018166,
		0.364448, 0.014271, -0.931114,
		42.483242, 34.424805, 33.356010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770504, 33.875130, 34.054195>,  <42.228130, 34.414818, 34.007790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770504, 33.875130, 34.054195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849388, 34.173401, 33.799614>,  <42.896721, 34.352364, 33.646866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849388, 34.173401, 33.799614>,  <42.770504, 33.875130, 34.054195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849388, 34.173401, 33.799614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893943, 0.129733, 0.428994,
		0.402459, -0.653559, -0.641005,
		0.197213, 0.745674, -0.636457,
		42.908554, 34.397102, 33.608677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283970, 33.833870, 33.450016>,  <42.770504, 33.875130, 34.054195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283970, 33.833870, 33.450016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322681, 34.198757, 33.609261>,  <43.345909, 34.417690, 33.704807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322681, 34.198757, 33.609261>,  <43.283970, 33.833870, 33.450016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322681, 34.198757, 33.609261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978413, -0.013808, -0.206198,
		-0.182600, 0.409475, -0.893861,
		0.096775, 0.912217, 0.398115,
		43.351715, 34.472424, 33.728695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865540, 34.102219, 33.082302>,  <43.283970, 33.833870, 33.450016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865540, 34.102219, 33.082302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849297, 34.355000, 33.391880>,  <43.839550, 34.506668, 33.577625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849297, 34.355000, 33.391880>,  <43.865540, 34.102219, 33.082302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849297, 34.355000, 33.391880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987295, -0.093711, 0.128321,
		0.153620, 0.769321, -0.620118,
		-0.040608, 0.631952, 0.773943,
		43.837112, 34.544586, 33.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434147, 34.554611, 33.132168>,  <43.865540, 34.102219, 33.082302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434147, 34.554611, 33.132168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354088, 34.559277, 33.524048>,  <44.306053, 34.562077, 33.759174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354088, 34.559277, 33.524048>,  <44.434147, 34.554611, 33.132168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354088, 34.559277, 33.524048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978747, -0.043189, 0.200470,
		0.044650, 0.998999, -0.002771,
		-0.200149, 0.011663, 0.979696,
		44.294044, 34.562775, 33.817955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824368, 35.186539, 33.413990>,  <44.434147, 34.554611, 33.132168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824368, 35.186539, 33.413990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773895, 34.898823, 33.687252>,  <44.743610, 34.726192, 33.851208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773895, 34.898823, 33.687252>,  <44.824368, 35.186539, 33.413990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773895, 34.898823, 33.687252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958215, 0.089838, 0.271577,
		-0.256716, 0.688875, 0.677900,
		-0.126181, -0.719292, 0.683152,
		44.736042, 34.683037, 33.892197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107643, 35.489151, 34.027828>,  <44.824368, 35.186539, 33.413990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107643, 35.489151, 34.027828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125420, 35.090248, 34.004147>,  <45.136086, 34.850906, 33.989937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125420, 35.090248, 34.004147>,  <45.107643, 35.489151, 34.027828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125420, 35.090248, 34.004147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997170, 0.040682, 0.063217,
		-0.060635, -0.061845, 0.996242,
		0.044438, -0.997256, -0.059203,
		45.138752, 34.791073, 33.986385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503654, 35.227642, 34.558064>,  <45.107643, 35.489151, 34.027828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503654, 35.227642, 34.558064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523197, 35.002335, 34.228134>,  <45.534924, 34.867149, 34.030174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523197, 35.002335, 34.228134>,  <45.503654, 35.227642, 34.558064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523197, 35.002335, 34.228134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988480, 0.145705, -0.040956,
		0.143251, -0.813323, 0.563901,
		0.048853, -0.563272, -0.824826,
		45.537853, 34.833351, 33.980686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113907, 35.201580, 34.774704>,  <45.503654, 35.227642, 34.558064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113907, 35.201580, 34.774704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890854, 34.975559, 35.017937>,  <45.757023, 34.839947, 35.163876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890854, 34.975559, 35.017937>,  <46.113907, 35.201580, 34.774704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890854, 34.975559, 35.017937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003306, -0.734061, -0.679075,
		0.830082, -0.376663, 0.411203,
		-0.557630, -0.565048, 0.608086,
		45.723564, 34.806046, 35.200363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246876, 35.921234, 34.931625>,  <46.113907, 35.201580, 34.774704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246876, 35.921234, 34.931625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257648, 36.248890, 35.160812>,  <46.264111, 36.445484, 35.298325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257648, 36.248890, 35.160812>,  <46.246876, 35.921234, 34.931625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257648, 36.248890, 35.160812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993936, -0.039182, 0.102738,
		0.106606, -0.572261, 0.813113,
		0.026933, 0.819135, 0.572968,
		46.265728, 36.494629, 35.332703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902752, 35.675457, 35.241802>,  <46.246876, 35.921234, 34.931625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902752, 35.675457, 35.241802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.281273, 35.729546, 35.359261>,  <47.508385, 35.761997, 35.429737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.281273, 35.729546, 35.359261>,  <46.902752, 35.675457, 35.241802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.281273, 35.729546, 35.359261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187695, -0.969357, -0.158485,
		0.263221, 0.205091, -0.942684,
		0.946301, 0.135220, 0.293649,
		47.565163, 35.770111, 35.447357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.228603, 35.390404, 34.765068>,  <46.902752, 35.675457, 35.241802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.228603, 35.390404, 34.765068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482052, 35.400578, 35.074356>,  <47.634121, 35.406681, 35.259930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482052, 35.400578, 35.074356>,  <47.228603, 35.390404, 34.765068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482052, 35.400578, 35.074356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269202, -0.944249, -0.189538,
		0.725294, 0.328249, -0.605145,
		0.633623, 0.025435, 0.773224,
		47.672138, 35.408207, 35.306324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.910507, 35.103897, 34.510834>,  <47.228603, 35.390404, 34.765068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.910507, 35.103897, 34.510834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907227, 35.060799, 34.908493>,  <47.905258, 35.034939, 35.147087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907227, 35.060799, 34.908493>,  <47.910507, 35.103897, 34.510834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.907227, 35.060799, 34.908493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438024, -0.894109, -0.093295,
		0.898926, 0.434693, 0.054530,
		-0.008201, -0.107751, 0.994144,
		47.904766, 35.028473, 35.206738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.937851, 33.987923, 23.182699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731785, 33.645393, 23.197212>,  <36.608143, 33.439877, 23.205921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731785, 33.645393, 23.197212>,  <36.937851, 33.987923, 23.182699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731785, 33.645393, 23.197212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020449, 0.054603, 0.998299,
		-0.856844, 0.513551, -0.045641,
		-0.515170, -0.856320, 0.036284,
		36.577232, 33.388496, 23.208097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350170, 34.131897, 23.604057>,  <36.937851, 33.987923, 23.182699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350170, 34.131897, 23.604057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420555, 33.738857, 23.627836>,  <36.462788, 33.503033, 23.642103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420555, 33.738857, 23.627836>,  <36.350170, 34.131897, 23.604057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420555, 33.738857, 23.627836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131587, 0.036367, 0.990637,
		-0.975563, -0.182136, -0.122899,
		0.175961, -0.982601, 0.059445,
		36.473343, 33.444077, 23.645670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872414, 33.947731, 24.124020>,  <36.350170, 34.131897, 23.604057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872414, 33.947731, 24.124020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096104, 33.619347, 24.077908>,  <36.230320, 33.422318, 24.050241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096104, 33.619347, 24.077908>,  <35.872414, 33.947731, 24.124020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096104, 33.619347, 24.077908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193532, -0.264494, 0.944769,
		-0.806109, -0.506030, -0.306794,
		0.559227, -0.820961, -0.115278,
		36.263870, 33.373058, 24.043324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417557, 33.329147, 24.322556>,  <35.872414, 33.947731, 24.124020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417557, 33.329147, 24.322556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796265, 33.201904, 24.342276>,  <36.023491, 33.125561, 24.354109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796265, 33.201904, 24.342276>,  <35.417557, 33.329147, 24.322556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796265, 33.201904, 24.342276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160473, -0.333639, 0.928942,
		-0.279049, -0.887410, -0.366927,
		0.946774, -0.318102, 0.049303,
		36.080296, 33.106472, 24.357067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442982, 32.621521, 24.641104>,  <35.417557, 33.329147, 24.322556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442982, 32.621521, 24.641104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810577, 32.760906, 24.714888>,  <36.031136, 32.844540, 24.759157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810577, 32.760906, 24.714888>,  <35.442982, 32.621521, 24.641104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810577, 32.760906, 24.714888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113265, -0.214796, 0.970069,
		0.377659, -0.912378, -0.157926,
		0.918991, 0.348468, 0.184460,
		36.086273, 32.865448, 24.770226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813126, 32.139133, 24.987400>,  <35.442982, 32.621521, 24.641104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813126, 32.139133, 24.987400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983292, 32.490891, 25.072899>,  <36.085392, 32.701946, 25.124199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983292, 32.490891, 25.072899>,  <35.813126, 32.139133, 24.987400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983292, 32.490891, 25.072899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337667, -0.064895, 0.939026,
		0.839646, -0.471649, 0.269336,
		0.425413, 0.879395, 0.213749,
		36.110916, 32.754707, 25.137024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205624, 31.978024, 25.668344>,  <35.813126, 32.139133, 24.987400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205624, 31.978024, 25.668344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242847, 32.373497, 25.621283>,  <36.265182, 32.610783, 25.593046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242847, 32.373497, 25.621283>,  <36.205624, 31.978024, 25.668344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242847, 32.373497, 25.621283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307191, 0.140911, 0.941158,
		0.947087, -0.051439, 0.316828,
		0.093057, 0.988685, -0.117653,
		36.270763, 32.670101, 25.585987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637459, 32.211227, 26.222540>,  <36.205624, 31.978024, 25.668344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637459, 32.211227, 26.222540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405449, 32.516201, 26.107813>,  <36.266243, 32.699184, 26.038977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405449, 32.516201, 26.107813>,  <36.637459, 32.211227, 26.222540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405449, 32.516201, 26.107813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211750, 0.198873, 0.956876,
		0.786596, 0.615745, 0.046094,
		-0.580025, 0.762435, -0.286816,
		36.231441, 32.744930, 26.021769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674683, 32.629810, 26.777294>,  <36.637459, 32.211227, 26.222540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674683, 32.629810, 26.777294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346489, 32.750435, 26.583035>,  <36.149570, 32.822811, 26.466478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346489, 32.750435, 26.583035>,  <36.674683, 32.629810, 26.777294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346489, 32.750435, 26.583035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509694, -0.001217, 0.860355,
		0.258862, 0.953445, 0.154705,
		-0.820489, 0.301566, -0.485650,
		36.100342, 32.840904, 26.437340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470974, 33.189301, 27.111330>,  <36.674683, 32.629810, 26.777294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470974, 33.189301, 27.111330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146244, 33.062084, 26.915457>,  <35.951405, 32.985756, 26.797932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146244, 33.062084, 26.915457>,  <36.470974, 33.189301, 27.111330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146244, 33.062084, 26.915457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533351, 0.062576, 0.843576,
		-0.237648, 0.946010, -0.220428,
		-0.811825, -0.318040, -0.489685,
		35.902695, 32.966671, 26.768551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969284, 33.712044, 27.221514>,  <36.470974, 33.189301, 27.111330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969284, 33.712044, 27.221514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757046, 33.387836, 27.122299>,  <35.629704, 33.193310, 27.062771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757046, 33.387836, 27.122299>,  <35.969284, 33.712044, 27.221514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757046, 33.387836, 27.122299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652643, 0.203942, 0.729702,
		-0.540854, 0.549057, -0.637192,
		-0.530598, -0.810521, -0.248035,
		35.597866, 33.144680, 27.047888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313419, 33.903046, 27.227913>,  <35.969284, 33.712044, 27.221514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313419, 33.903046, 27.227913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269886, 33.506660, 27.259254>,  <35.243767, 33.268829, 27.278059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269886, 33.506660, 27.259254>,  <35.313419, 33.903046, 27.227913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269886, 33.506660, 27.259254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585679, 0.127614, 0.800434,
		-0.803203, 0.041227, -0.594278,
		-0.108838, -0.990967, 0.078355,
		35.237236, 33.209370, 27.282761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560425, 33.683640, 27.008877>,  <35.313419, 33.903046, 27.227913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560425, 33.683640, 27.008877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716099, 33.362728, 27.189936>,  <34.809502, 33.170181, 27.298571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716099, 33.362728, 27.189936>,  <34.560425, 33.683640, 27.008877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716099, 33.362728, 27.189936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815476, -0.071538, 0.574352,
		-0.428408, -0.592651, -0.682079,
		0.389184, -0.802276, 0.452645,
		34.832855, 33.122044, 27.325729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031143, 33.144070, 26.949259>,  <34.560425, 33.683640, 27.008877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031143, 33.144070, 26.949259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272480, 33.085770, 27.262880>,  <34.417282, 33.050789, 27.451054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272480, 33.085770, 27.262880>,  <34.031143, 33.144070, 26.949259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272480, 33.085770, 27.262880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775242, 0.123392, 0.619495,
		-0.187040, -0.981596, -0.038548,
		0.603337, -0.145754, 0.784054,
		34.453480, 33.042046, 27.498096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629856, 32.727924, 27.435522>,  <34.031143, 33.144070, 26.949259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629856, 32.727924, 27.435522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926491, 32.871277, 27.662367>,  <34.104473, 32.957287, 27.798473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926491, 32.871277, 27.662367>,  <33.629856, 32.727924, 27.435522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926491, 32.871277, 27.662367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643114, 0.139179, 0.753016,
		0.190939, -0.923141, 0.333695,
		0.741584, 0.358385, 0.567110,
		34.148968, 32.978790, 27.832500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486729, 32.508522, 28.090139>,  <33.629856, 32.727924, 27.435522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486729, 32.508522, 28.090139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791679, 32.751102, 28.180470>,  <33.974651, 32.896652, 28.234669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791679, 32.751102, 28.180470>,  <33.486729, 32.508522, 28.090139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791679, 32.751102, 28.180470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236892, -0.063209, 0.969478,
		0.602218, -0.792602, 0.095474,
		0.762375, 0.606454, 0.225827,
		34.020393, 32.933037, 28.248217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935623, 32.308784, 28.610954>,  <33.486729, 32.508522, 28.090139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935623, 32.308784, 28.610954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.969620, 32.705082, 28.653297>,  <33.990017, 32.942860, 28.678703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.969620, 32.705082, 28.653297>,  <33.935623, 32.308784, 28.610954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969620, 32.705082, 28.653297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243006, -0.082426, 0.966516,
		0.966294, -0.107867, 0.233751,
		0.084988, 0.990742, 0.105860,
		33.995117, 33.002304, 28.685055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193462, 32.379753, 29.302338>,  <33.935623, 32.308784, 28.610954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193462, 32.379753, 29.302338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061020, 32.746128, 29.211632>,  <33.981552, 32.965954, 29.157207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061020, 32.746128, 29.211632>,  <34.193462, 32.379753, 29.302338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061020, 32.746128, 29.211632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374079, 0.093210, 0.922701,
		0.866274, 0.390344, 0.311770,
		-0.331110, 0.915938, -0.226765,
		33.961685, 33.020908, 29.143602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457939, 32.979214, 29.678219>,  <34.193462, 32.379753, 29.302338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457939, 32.979214, 29.678219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100334, 33.119320, 29.566463>,  <33.885773, 33.203384, 29.499411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100334, 33.119320, 29.566463>,  <34.457939, 32.979214, 29.678219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100334, 33.119320, 29.566463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156228, 0.340731, 0.927090,
		0.419927, 0.872476, -0.249895,
		-0.894010, 0.350270, -0.279387,
		33.832130, 33.224400, 29.482647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469906, 33.581627, 30.008448>,  <34.457939, 32.979214, 29.678219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469906, 33.581627, 30.008448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084316, 33.508076, 29.931570>,  <33.852962, 33.463943, 29.885443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084316, 33.508076, 29.931570>,  <34.469906, 33.581627, 30.008448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084316, 33.508076, 29.931570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249819, 0.377809, 0.891544,
		-0.091321, 0.907441, -0.410135,
		-0.963977, -0.183876, -0.192194,
		33.795124, 33.452911, 29.873913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122631, 34.203579, 30.067490>,  <34.469906, 33.581627, 30.008448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122631, 34.203579, 30.067490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.792519, 33.977833, 30.059376>,  <33.594452, 33.842384, 30.054508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.792519, 33.977833, 30.059376>,  <34.122631, 34.203579, 30.067490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792519, 33.977833, 30.059376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313668, 0.428220, 0.847490,
		-0.469607, 0.705776, -0.530423,
		-0.825276, -0.564365, -0.020284,
		33.544937, 33.808525, 30.053291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473640, 34.663296, 30.177027>,  <34.122631, 34.203579, 30.067490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473640, 34.663296, 30.177027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.387188, 34.288528, 30.286915>,  <33.335316, 34.063667, 30.352848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.387188, 34.288528, 30.286915>,  <33.473640, 34.663296, 30.177027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387188, 34.288528, 30.286915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375817, 0.339524, 0.862256,
		-0.901137, 0.083119, -0.425492,
		-0.216135, -0.936918, 0.274720,
		33.322346, 34.007454, 30.369331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208817, 35.042522, 30.632551>,  <33.473640, 34.663296, 30.177027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208817, 35.042522, 30.632551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458511, 35.310463, 30.793360>,  <33.608330, 35.471230, 30.889845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458511, 35.310463, 30.793360>,  <33.208817, 35.042522, 30.632551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458511, 35.310463, 30.793360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547151, -0.007554, -0.837000,
		-0.557631, 0.742454, -0.371227,
		0.624238, 0.669855, 0.402022,
		33.645782, 35.511421, 30.913967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157993, 35.539860, 30.186773>,  <33.208817, 35.042522, 30.632551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157993, 35.539860, 30.186773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500904, 35.608418, 30.380966>,  <33.706650, 35.649551, 30.497482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500904, 35.608418, 30.380966>,  <33.157993, 35.539860, 30.186773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500904, 35.608418, 30.380966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470922, 0.120090, -0.873963,
		-0.208096, 0.977856, 0.022236,
		0.857280, 0.171397, 0.485484,
		33.758087, 35.659836, 30.526611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420185, 35.981937, 29.797520>,  <33.157993, 35.539860, 30.186773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420185, 35.981937, 29.797520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746315, 35.918861, 30.020367>,  <33.941994, 35.881016, 30.154076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746315, 35.918861, 30.020367>,  <33.420185, 35.981937, 29.797520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746315, 35.918861, 30.020367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570553, 0.382601, -0.726695,
		-0.098564, 0.910358, 0.401913,
		0.815325, -0.157686, 0.557118,
		33.990913, 35.871555, 30.187502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950397, 36.613449, 29.749386>,  <33.420185, 35.981937, 29.797520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950397, 36.613449, 29.749386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132435, 36.265778, 29.826756>,  <34.241657, 36.057175, 29.873177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132435, 36.265778, 29.826756>,  <33.950397, 36.613449, 29.749386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132435, 36.265778, 29.826756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503660, 0.072134, -0.860885,
		0.734313, 0.489204, 0.470600,
		0.455095, -0.869181, 0.193424,
		34.268963, 36.005024, 29.884783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620636, 36.786316, 29.646320>,  <33.950397, 36.613449, 29.749386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620636, 36.786316, 29.646320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617081, 36.386333, 29.645929>,  <34.614948, 36.146343, 29.645695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617081, 36.386333, 29.645929>,  <34.620636, 36.786316, 29.646320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617081, 36.386333, 29.645929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626000, -0.004801, -0.779808,
		0.779773, -0.007544, 0.626017,
		-0.008889, -0.999960, -0.000979,
		34.614414, 36.086346, 29.645636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321949, 36.533398, 29.664330>,  <34.620636, 36.786316, 29.646320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321949, 36.533398, 29.664330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102203, 36.244801, 29.495739>,  <34.970356, 36.071640, 29.394585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102203, 36.244801, 29.495739>,  <35.321949, 36.533398, 29.664330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102203, 36.244801, 29.495739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741237, -0.187963, -0.644390,
		0.385704, -0.666417, 0.638060,
		-0.549364, -0.721497, -0.421475,
		34.937393, 36.028351, 29.369297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689735, 35.906494, 29.604443>,  <35.321949, 36.533398, 29.664330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689735, 35.906494, 29.604443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392384, 35.852089, 29.342484>,  <35.213974, 35.819447, 29.185308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392384, 35.852089, 29.342484>,  <35.689735, 35.906494, 29.604443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392384, 35.852089, 29.342484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668247, -0.108641, -0.735964,
		0.028951, -0.984732, 0.171651,
		-0.743376, -0.136012, -0.654899,
		35.169373, 35.811287, 29.146013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914936, 35.366749, 29.185095>,  <35.689735, 35.906494, 29.604443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914936, 35.366749, 29.185095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636116, 35.553333, 28.967272>,  <35.468826, 35.665283, 28.836578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636116, 35.553333, 28.967272>,  <35.914936, 35.366749, 29.185095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636116, 35.553333, 28.967272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600765, -0.034652, -0.798675,
		-0.391419, -0.883864, -0.256078,
		-0.697046, 0.466459, -0.544558,
		35.427002, 35.693272, 28.803904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887791, 35.043911, 28.623875>,  <35.914936, 35.366749, 29.185095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887791, 35.043911, 28.623875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698242, 35.378021, 28.512331>,  <35.584515, 35.578487, 28.445404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698242, 35.378021, 28.512331>,  <35.887791, 35.043911, 28.623875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698242, 35.378021, 28.512331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420357, -0.063699, -0.905120,
		-0.773787, -0.546131, -0.320928,
		-0.473872, 0.835274, -0.278859,
		35.556080, 35.628605, 28.428673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608475, 34.916809, 27.862860>,  <35.887791, 35.043911, 28.623875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608475, 34.916809, 27.862860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624897, 35.314182, 27.905575>,  <35.634750, 35.552605, 27.931204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624897, 35.314182, 27.905575>,  <35.608475, 34.916809, 27.862860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624897, 35.314182, 27.905575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329940, 0.087402, -0.939947,
		-0.943109, 0.073820, -0.324186,
		0.041053, 0.993434, 0.106786,
		35.637211, 35.612213, 27.937611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112667, 35.218555, 27.283741>,  <35.608475, 34.916809, 27.862860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112667, 35.218555, 27.283741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377583, 35.488846, 27.413216>,  <35.536530, 35.651020, 27.490900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377583, 35.488846, 27.413216>,  <35.112667, 35.218555, 27.283741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377583, 35.488846, 27.413216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410697, 0.033927, -0.911141,
		-0.626661, 0.736373, -0.255049,
		0.662287, 0.675724, 0.323687,
		35.576267, 35.691563, 27.510323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245369, 35.773205, 26.718285>,  <35.112667, 35.218555, 27.283741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245369, 35.773205, 26.718285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563190, 35.837353, 26.952536>,  <35.753883, 35.875843, 27.093086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563190, 35.837353, 26.952536>,  <35.245369, 35.773205, 26.718285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563190, 35.837353, 26.952536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568472, 0.142407, -0.810284,
		-0.213346, 0.976730, 0.021983,
		0.794559, 0.160374, 0.585626,
		35.801559, 35.885464, 27.128223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647621, 36.368328, 26.537289>,  <35.245369, 35.773205, 26.718285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647621, 36.368328, 26.537289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915035, 36.127380, 26.711742>,  <36.075481, 35.982811, 26.816416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915035, 36.127380, 26.711742>,  <35.647621, 36.368328, 26.537289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915035, 36.127380, 26.711742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597418, 0.085740, -0.797334,
		0.442896, 0.793599, 0.417186,
		0.668532, -0.602370, 0.436136,
		36.115597, 35.946671, 26.842583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189613, 36.712715, 26.363945>,  <35.647621, 36.368328, 26.537289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189613, 36.712715, 26.363945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291927, 36.340729, 26.469578>,  <36.353317, 36.117538, 26.532957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291927, 36.340729, 26.469578>,  <36.189613, 36.712715, 26.363945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291927, 36.340729, 26.469578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623502, -0.050064, -0.780217,
		0.738795, 0.364223, 0.567030,
		0.255785, -0.929965, 0.264081,
		36.368664, 36.061741, 26.548801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879509, 36.740005, 26.244865>,  <36.189613, 36.712715, 26.363945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879509, 36.740005, 26.244865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755169, 36.360477, 26.267174>,  <36.680565, 36.132759, 26.280560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755169, 36.360477, 26.267174>,  <36.879509, 36.740005, 26.244865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755169, 36.360477, 26.267174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591116, -0.238943, -0.770382,
		0.744281, -0.206505, 0.635139,
		-0.310850, -0.948821, 0.055772,
		36.661915, 36.075832, 26.283905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491920, 36.364681, 26.250023>,  <36.879509, 36.740005, 26.244865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491920, 36.364681, 26.250023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.212479, 36.111752, 26.116085>,  <37.044815, 35.959991, 26.035723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.212479, 36.111752, 26.116085>,  <37.491920, 36.364681, 26.250023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212479, 36.111752, 26.116085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588090, -0.240870, -0.772096,
		0.407564, -0.736303, 0.540137,
		-0.698600, -0.632328, -0.334842,
		37.002899, 35.922054, 26.015633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874882, 35.851807, 25.866310>,  <37.491920, 36.364681, 26.250023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874882, 35.851807, 25.866310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506123, 35.739578, 25.759436>,  <37.284866, 35.672241, 25.695311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506123, 35.739578, 25.759436>,  <37.874882, 35.851807, 25.866310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506123, 35.739578, 25.759436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302626, -0.090857, -0.948769,
		0.241919, -0.955524, 0.168668,
		-0.921896, -0.280569, -0.267186,
		37.229553, 35.655407, 25.679279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891323, 35.314400, 25.457115>,  <37.874882, 35.851807, 25.866310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891323, 35.314400, 25.457115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526199, 35.421276, 25.333574>,  <37.307125, 35.485401, 25.259449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526199, 35.421276, 25.333574>,  <37.891323, 35.314400, 25.457115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526199, 35.421276, 25.333574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326996, 0.025122, -0.944692,
		-0.244655, -0.963316, -0.110302,
		-0.912808, 0.267192, -0.308854,
		37.252357, 35.501434, 25.240917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.785931, 34.853306, 24.814209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553238, 35.178059, 24.794491>,  <37.413620, 35.372910, 24.782660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553238, 35.178059, 24.794491>,  <37.785931, 34.853306, 24.814209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553238, 35.178059, 24.794491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083375, -0.119807, -0.989290,
		-0.809095, -0.571393, 0.137386,
		-0.581734, 0.811885, -0.049296,
		37.378719, 35.421623, 24.779701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155033, 34.605537, 24.477308>,  <37.785931, 34.853306, 24.814209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155033, 34.605537, 24.477308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226158, 34.997295, 24.439001>,  <37.268833, 35.232349, 24.416016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226158, 34.997295, 24.439001>,  <37.155033, 34.605537, 24.477308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226158, 34.997295, 24.439001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093394, -0.113677, -0.989118,
		-0.979622, 0.166936, -0.111683,
		0.177815, 0.979393, -0.095770,
		37.279503, 35.291115, 24.410271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795383, 34.787640, 23.883526>,  <37.155033, 34.605537, 24.477308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795383, 34.787640, 23.883526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028946, 35.107407, 23.940069>,  <37.169083, 35.299267, 23.973995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028946, 35.107407, 23.940069>,  <36.795383, 34.787640, 23.883526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028946, 35.107407, 23.940069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199768, 0.027280, -0.979463,
		-0.786859, 0.600153, -0.143769,
		0.583906, 0.799420, 0.141356,
		37.204117, 35.347233, 23.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605511, 35.333958, 23.507412>,  <36.795383, 34.787640, 23.883526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605511, 35.333958, 23.507412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996414, 35.397545, 23.563549>,  <37.230957, 35.435699, 23.597231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996414, 35.397545, 23.563549>,  <36.605511, 35.333958, 23.507412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996414, 35.397545, 23.563549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137631, 0.027982, -0.990088,
		-0.161323, 0.986886, 0.005466,
		0.977258, 0.158972, 0.140340,
		37.289593, 35.445236, 23.605652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725941, 35.673431, 22.915817>,  <36.605511, 35.333958, 23.507412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725941, 35.673431, 22.915817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087730, 35.601452, 23.070501>,  <37.304806, 35.558266, 23.163311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087730, 35.601452, 23.070501>,  <36.725941, 35.673431, 22.915817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087730, 35.601452, 23.070501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362657, -0.152783, -0.919314,
		0.224512, 0.971738, -0.072928,
		0.904475, -0.179949, 0.386709,
		37.359074, 35.547466, 23.186514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203712, 36.141918, 22.578180>,  <36.725941, 35.673431, 22.915817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203712, 36.141918, 22.578180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405594, 35.826050, 22.717716>,  <37.526722, 35.636528, 22.801437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405594, 35.826050, 22.717716>,  <37.203712, 36.141918, 22.578180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405594, 35.826050, 22.717716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270910, -0.238791, -0.932517,
		0.819682, 0.565151, 0.093410,
		0.504707, -0.789673, 0.348837,
		37.557007, 35.589149, 22.822367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894535, 36.209770, 22.343884>,  <37.203712, 36.141918, 22.578180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894535, 36.209770, 22.343884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867615, 35.821625, 22.436716>,  <37.851463, 35.588737, 22.492416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867615, 35.821625, 22.436716>,  <37.894535, 36.209770, 22.343884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867615, 35.821625, 22.436716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402869, -0.239233, -0.883439,
		0.912780, 0.034045, 0.407030,
		-0.067298, -0.970365, 0.232083,
		37.847424, 35.530514, 22.506340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587524, 35.959209, 22.195225>,  <37.894535, 36.209770, 22.343884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587524, 35.959209, 22.195225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358032, 35.631767, 22.184555>,  <38.220337, 35.435303, 22.178152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358032, 35.631767, 22.184555>,  <38.587524, 35.959209, 22.195225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358032, 35.631767, 22.184555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596383, -0.395215, -0.698665,
		0.561391, -0.416755, 0.714951,
		-0.573732, -0.818609, -0.026675,
		38.185913, 35.386185, 22.176552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083324, 35.398705, 22.136156>,  <38.587524, 35.959209, 22.195225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083324, 35.398705, 22.136156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732571, 35.264671, 21.998289>,  <38.522118, 35.184250, 21.915569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732571, 35.264671, 21.998289>,  <39.083324, 35.398705, 22.136156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732571, 35.264671, 21.998289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449704, -0.318512, -0.834456,
		0.169834, -0.886717, 0.429986,
		-0.876882, -0.335086, -0.344666,
		38.469505, 35.164146, 21.894890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282528, 34.843117, 21.749971>,  <39.083324, 35.398705, 22.136156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282528, 34.843117, 21.749971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914143, 34.936615, 21.625275>,  <38.693111, 34.992714, 21.550457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914143, 34.936615, 21.625275>,  <39.282528, 34.843117, 21.749971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914143, 34.936615, 21.625275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228605, -0.323753, -0.918109,
		-0.315525, -0.916815, 0.244733,
		-0.920969, 0.233739, -0.311740,
		38.637852, 35.006741, 21.531752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086891, 34.274418, 21.260185>,  <39.282528, 34.843117, 21.749971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086891, 34.274418, 21.260185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834488, 34.573483, 21.177404>,  <38.683044, 34.752922, 21.127735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834488, 34.573483, 21.177404>,  <39.086891, 34.274418, 21.260185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834488, 34.573483, 21.177404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096994, -0.188641, -0.977245,
		-0.769687, -0.636725, 0.046516,
		-0.631011, 0.747660, -0.206953,
		38.645184, 34.797779, 21.115318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556702, 34.026669, 20.800064>,  <39.086891, 34.274418, 21.260185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556702, 34.026669, 20.800064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600170, 34.419575, 20.738958>,  <38.626251, 34.655319, 20.702295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600170, 34.419575, 20.738958>,  <38.556702, 34.026669, 20.800064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600170, 34.419575, 20.738958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259751, -0.176395, -0.949428,
		-0.959541, 0.063498, -0.274315,
		0.108675, 0.982269, -0.152765,
		38.632774, 34.714256, 20.693129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494625, 34.083191, 20.053719>,  <38.556702, 34.026669, 20.800064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494625, 34.083191, 20.053719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611568, 34.450230, 20.161457>,  <38.681736, 34.670452, 20.226101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611568, 34.450230, 20.161457>,  <38.494625, 34.083191, 20.053719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611568, 34.450230, 20.161457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210271, 0.213079, -0.954140,
		-0.932905, 0.335588, -0.130648,
		0.292360, 0.917594, 0.269346,
		38.699276, 34.725510, 20.242262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149868, 34.507168, 19.658804>,  <38.494625, 34.083191, 20.053719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149868, 34.507168, 19.658804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471016, 34.716717, 19.772619>,  <38.663704, 34.842445, 19.840908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471016, 34.716717, 19.772619>,  <38.149868, 34.507168, 19.658804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471016, 34.716717, 19.772619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224654, 0.176240, -0.958369,
		-0.552210, 0.833365, 0.023807,
		0.802866, 0.523873, 0.284540,
		38.711876, 34.873878, 19.857981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101009, 35.108452, 19.268276>,  <38.149868, 34.507168, 19.658804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101009, 35.108452, 19.268276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483150, 35.046284, 19.368792>,  <38.712437, 35.008984, 19.429102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483150, 35.046284, 19.368792>,  <38.101009, 35.108452, 19.268276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483150, 35.046284, 19.368792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247429, -0.044026, -0.967905,
		0.161498, 0.986866, -0.003604,
		0.955352, -0.155423, 0.251289,
		38.769756, 34.999657, 19.444178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470444, 35.555866, 18.924597>,  <38.101009, 35.108452, 19.268276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470444, 35.555866, 18.924597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759235, 35.292381, 19.009298>,  <38.932510, 35.134289, 19.060120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759235, 35.292381, 19.009298>,  <38.470444, 35.555866, 18.924597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759235, 35.292381, 19.009298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255493, -0.030605, -0.966327,
		0.643011, 0.751773, 0.146200,
		0.721984, -0.658712, 0.211752,
		38.975830, 35.094769, 19.072824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073303, 35.775738, 18.552145>,  <38.470444, 35.555866, 18.924597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073303, 35.775738, 18.552145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.162014, 35.400501, 18.658575>,  <39.215240, 35.175358, 18.722433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.162014, 35.400501, 18.658575>,  <39.073303, 35.775738, 18.552145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162014, 35.400501, 18.658575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344156, -0.180008, -0.921495,
		0.912345, 0.295935, 0.282930,
		0.221773, -0.938094, 0.266077,
		39.228546, 35.119072, 18.738398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758137, 35.605240, 18.403576>,  <39.073303, 35.775738, 18.552145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758137, 35.605240, 18.403576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.592079, 35.241337, 18.402710>,  <39.492443, 35.022995, 18.402191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.592079, 35.241337, 18.402710>,  <39.758137, 35.605240, 18.403576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592079, 35.241337, 18.402710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494976, -0.223873, -0.839571,
		0.763317, -0.349615, 0.543246,
		-0.415145, -0.909753, -0.002165,
		39.467537, 34.968410, 18.402060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371117, 35.197796, 18.245026>,  <39.758137, 35.605240, 18.403576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371117, 35.197796, 18.245026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055695, 34.963573, 18.169861>,  <39.866440, 34.823040, 18.124762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055695, 34.963573, 18.169861>,  <40.371117, 35.197796, 18.245026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055695, 34.963573, 18.169861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381978, -0.226905, -0.895883,
		0.481949, -0.778230, 0.402596,
		-0.788554, -0.585553, -0.187910,
		39.819130, 34.787907, 18.113487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567204, 34.534695, 17.834318>,  <40.371117, 35.197796, 18.245026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567204, 34.534695, 17.834318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170067, 34.541565, 17.787048>,  <39.931786, 34.545689, 17.758686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170067, 34.541565, 17.787048>,  <40.567204, 34.534695, 17.834318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170067, 34.541565, 17.787048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103429, -0.370912, -0.922891,
		-0.059685, -0.928509, 0.366481,
		-0.992845, 0.017178, -0.118172,
		39.872215, 34.546719, 17.751596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406410, 33.856831, 17.620901>,  <40.567204, 34.534695, 17.834318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406410, 33.856831, 17.620901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111485, 34.097481, 17.497995>,  <39.934528, 34.241871, 17.424252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111485, 34.097481, 17.497995>,  <40.406410, 33.856831, 17.620901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111485, 34.097481, 17.497995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230232, -0.203818, -0.951552,
		-0.635103, -0.772338, 0.011765,
		-0.737318, 0.601625, -0.307262,
		39.890289, 34.277969, 17.405817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018665, 33.476387, 17.140188>,  <40.406410, 33.856831, 17.620901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018665, 33.476387, 17.140188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932846, 33.860027, 17.066336>,  <39.881355, 34.090214, 17.022024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932846, 33.860027, 17.066336>,  <40.018665, 33.476387, 17.140188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932846, 33.860027, 17.066336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227654, -0.134722, -0.964377,
		-0.949813, -0.248933, -0.189440,
		-0.214543, 0.959105, -0.184631,
		39.868484, 34.147758, 17.010946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711765, 33.493912, 16.523144>,  <40.018665, 33.476387, 17.140188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711765, 33.493912, 16.523144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.898830, 33.840931, 16.590853>,  <40.011070, 34.049141, 16.631477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.898830, 33.840931, 16.590853>,  <39.711765, 33.493912, 16.523144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898830, 33.840931, 16.590853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352840, -0.007641, -0.935652,
		-0.810431, 0.497293, -0.309679,
		0.467659, 0.867549, 0.169273,
		40.039127, 34.101196, 16.641634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443649, 32.987263, 16.007856>,  <39.711765, 33.493912, 16.523144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443649, 32.987263, 16.007856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255257, 32.867451, 15.675963>,  <39.142223, 32.795563, 15.476828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255257, 32.867451, 15.675963>,  <39.443649, 32.987263, 16.007856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255257, 32.867451, 15.675963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877988, 0.250375, 0.407983,
		0.085540, 0.920647, -0.380908,
		-0.470978, -0.299534, -0.829734,
		39.113964, 32.777592, 15.427043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950798, 33.555054, 15.667601>,  <39.443649, 32.987263, 16.007856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950798, 33.555054, 15.667601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804474, 33.189140, 15.599064>,  <38.716679, 32.969593, 15.557941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804474, 33.189140, 15.599064>,  <38.950798, 33.555054, 15.667601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804474, 33.189140, 15.599064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782046, 0.202325, 0.589465,
		-0.504564, 0.349632, -0.789413,
		-0.365814, -0.914780, -0.171342,
		38.694729, 32.914707, 15.547661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260929, 33.686890, 15.511804>,  <38.950798, 33.555054, 15.667601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260929, 33.686890, 15.511804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302788, 33.310452, 15.640418>,  <38.327904, 33.084587, 15.717587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302788, 33.310452, 15.640418>,  <38.260929, 33.686890, 15.511804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302788, 33.310452, 15.640418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732608, 0.145701, 0.664874,
		-0.672559, -0.305134, -0.674209,
		0.104643, -0.941097, 0.321536,
		38.334179, 33.028122, 15.736879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551613, 33.390717, 15.570040>,  <38.260929, 33.686890, 15.511804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551613, 33.390717, 15.570040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757381, 33.164680, 15.828045>,  <37.880844, 33.029057, 15.982848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757381, 33.164680, 15.828045>,  <37.551613, 33.390717, 15.570040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757381, 33.164680, 15.828045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781352, 0.001066, 0.624089,
		-0.353356, -0.825027, -0.440988,
		0.514420, -0.565093, 0.645013,
		37.911709, 32.995152, 16.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058250, 33.018665, 15.937066>,  <37.551613, 33.390717, 15.570040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058250, 33.018665, 15.937066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374504, 32.965019, 16.176037>,  <37.564255, 32.932831, 16.319420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374504, 32.965019, 16.176037>,  <37.058250, 33.018665, 15.937066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374504, 32.965019, 16.176037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607773, -0.053535, 0.792305,
		-0.074281, -0.989518, -0.123841,
		0.790629, -0.134120, 0.597425,
		37.611694, 32.924786, 16.355265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905048, 32.481884, 16.463264>,  <37.058250, 33.018665, 15.937066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905048, 32.481884, 16.463264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228828, 32.643425, 16.633766>,  <37.423096, 32.740349, 16.736067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228828, 32.643425, 16.633766>,  <36.905048, 32.481884, 16.463264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228828, 32.643425, 16.633766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395074, -0.162470, 0.904168,
		0.434407, -0.900280, 0.028042,
		0.809448, 0.403856, 0.426255,
		37.471664, 32.764584, 16.761642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284218, 32.031960, 17.036949>,  <36.905048, 32.481884, 16.463264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284218, 32.031960, 17.036949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303879, 32.422119, 17.122904>,  <37.315674, 32.656216, 17.174477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303879, 32.422119, 17.122904>,  <37.284218, 32.031960, 17.036949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303879, 32.422119, 17.122904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170386, -0.203805, 0.964071,
		0.984151, -0.084000, 0.156177,
		0.049152, 0.975401, 0.214887,
		37.318623, 32.714741, 17.187370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426266, 32.014553, 17.732897>,  <37.284218, 32.031960, 17.036949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426266, 32.014553, 17.732897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333549, 32.400253, 17.681532>,  <37.277920, 32.631676, 17.650713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333549, 32.400253, 17.681532>,  <37.426266, 32.014553, 17.732897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333549, 32.400253, 17.681532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309923, 0.051926, 0.949343,
		0.922074, 0.259848, 0.286808,
		-0.231792, 0.964252, -0.128413,
		37.264011, 32.689529, 17.643007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507690, 32.241966, 18.361595>,  <37.426266, 32.014553, 17.732897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507690, 32.241966, 18.361595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300266, 32.547321, 18.207541>,  <37.175812, 32.730534, 18.115108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300266, 32.547321, 18.207541>,  <37.507690, 32.241966, 18.361595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300266, 32.547321, 18.207541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362533, 0.211639, 0.907622,
		0.774381, 0.610281, 0.167006,
		-0.518559, 0.763391, -0.385136,
		37.144699, 32.776340, 18.091999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780518, 32.850231, 18.716833>,  <37.507690, 32.241966, 18.361595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780518, 32.850231, 18.716833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396751, 32.919643, 18.627914>,  <37.166492, 32.961292, 18.574564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396751, 32.919643, 18.627914>,  <37.780518, 32.850231, 18.716833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396751, 32.919643, 18.627914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181354, 0.223986, 0.957570,
		0.215962, 0.959018, -0.183424,
		-0.959412, 0.173534, -0.222295,
		37.108929, 32.971703, 18.561226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646713, 33.455204, 19.023283>,  <37.780518, 32.850231, 18.716833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646713, 33.455204, 19.023283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285862, 33.286671, 18.986099>,  <37.069351, 33.185551, 18.963789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285862, 33.286671, 18.986099>,  <37.646713, 33.455204, 19.023283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285862, 33.286671, 18.986099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259430, 0.357537, 0.897142,
		-0.344761, 0.833453, -0.431851,
		-0.902129, -0.421335, -0.092957,
		37.015224, 33.160271, 18.958212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183334, 33.916965, 19.289614>,  <37.646713, 33.455204, 19.023283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183334, 33.916965, 19.289614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958393, 33.586304, 19.281561>,  <36.823429, 33.387909, 19.276730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958393, 33.586304, 19.281561>,  <37.183334, 33.916965, 19.289614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958393, 33.586304, 19.281561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433195, 0.273780, 0.858712,
		-0.704344, 0.491621, -0.512063,
		-0.562354, -0.826652, -0.020132,
		36.789688, 33.338306, 19.275520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558823, 34.153355, 19.599478>,  <37.183334, 33.916965, 19.289614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558823, 34.153355, 19.599478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577976, 33.755177, 19.632450>,  <36.589470, 33.516270, 19.652233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577976, 33.755177, 19.632450>,  <36.558823, 34.153355, 19.599478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577976, 33.755177, 19.632450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448880, 0.052277, 0.892062,
		-0.892308, -0.079722, -0.444332,
		0.047888, -0.995446, 0.082433,
		36.592342, 33.456543, 19.657181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944286, 33.897320, 19.826155>,  <36.558823, 34.153355, 19.599478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944286, 33.897320, 19.826155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210117, 33.622150, 19.942835>,  <36.369617, 33.457047, 20.012842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210117, 33.622150, 19.942835>,  <35.944286, 33.897320, 19.826155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210117, 33.622150, 19.942835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195936, 0.216283, 0.956468,
		-0.721070, -0.692804, 0.008948,
		0.664580, -0.687927, 0.291700,
		36.409492, 33.415771, 20.030344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660179, 33.652233, 20.483057>,  <35.944286, 33.897320, 19.826155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660179, 33.652233, 20.483057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033585, 33.508957, 20.489544>,  <36.257626, 33.422993, 20.493435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033585, 33.508957, 20.489544>,  <35.660179, 33.652233, 20.483057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033585, 33.508957, 20.489544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052000, -0.090499, 0.994538,
		-0.354764, -0.929253, -0.103107,
		0.933509, -0.358188, 0.016215,
		36.313637, 33.401501, 20.494408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562279, 33.055344, 21.058096>,  <35.660179, 33.652233, 20.483057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562279, 33.055344, 21.058096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951263, 33.123547, 20.994539>,  <36.184654, 33.164467, 20.956406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951263, 33.123547, 20.994539>,  <35.562279, 33.055344, 21.058096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951263, 33.123547, 20.994539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174431, -0.080295, 0.981390,
		0.154578, -0.982079, -0.107826,
		0.972461, 0.170509, -0.158893,
		36.243000, 33.174698, 20.946871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883305, 32.474808, 21.323015>,  <35.562279, 33.055344, 21.058096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883305, 32.474808, 21.323015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150688, 32.772034, 21.310223>,  <36.311119, 32.950367, 21.302547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150688, 32.772034, 21.310223>,  <35.883305, 32.474808, 21.323015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150688, 32.772034, 21.310223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190237, -0.129248, 0.973193,
		0.719008, -0.656624, -0.227755,
		0.668459, 0.743061, -0.031984,
		36.351227, 32.994953, 21.300627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523693, 32.222839, 21.543711>,  <35.883305, 32.474808, 21.323015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523693, 32.222839, 21.543711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546764, 32.618210, 21.599829>,  <36.560608, 32.855434, 21.633499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546764, 32.618210, 21.599829>,  <36.523693, 32.222839, 21.543711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546764, 32.618210, 21.599829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114454, -0.146151, 0.982619,
		0.991753, -0.040623, -0.121560,
		0.057683, 0.988428, 0.140296,
		36.564068, 32.914738, 21.641918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085640, 32.324726, 21.949795>,  <36.523693, 32.222839, 21.543711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085640, 32.324726, 21.949795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919392, 32.685535, 21.996471>,  <36.819641, 32.902020, 22.024477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919392, 32.685535, 21.996471>,  <37.085640, 32.324726, 21.949795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919392, 32.685535, 21.996471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129602, -0.068253, 0.989214,
		0.900256, 0.426264, -0.088536,
		-0.415624, 0.902020, 0.116690,
		36.794704, 32.956142, 22.031479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504448, 32.796272, 22.469597>,  <37.085640, 32.324726, 21.949795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504448, 32.796272, 22.469597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120892, 32.908463, 22.452362>,  <36.890759, 32.975777, 22.442020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120892, 32.908463, 22.452362>,  <37.504448, 32.796272, 22.469597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120892, 32.908463, 22.452362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074362, -0.101828, 0.992019,
		0.273854, 0.954443, 0.118500,
		-0.958892, 0.280480, -0.043089,
		36.833225, 32.992607, 22.439436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477962, 33.324120, 22.914951>,  <37.504448, 32.796272, 22.469597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477962, 33.324120, 22.914951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090939, 33.233269, 22.870691>,  <36.858723, 33.178761, 22.844135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090939, 33.233269, 22.870691>,  <37.477962, 33.324120, 22.914951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090939, 33.233269, 22.870691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185057, 0.338962, 0.922420,
		-0.171997, 0.912973, -0.369997,
		-0.967559, -0.227124, -0.110651,
		36.800671, 33.165131, 22.837496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.854050, 36.045803, 27.849623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525169, 35.985191, 27.630161>,  <36.327843, 35.948826, 27.498484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525169, 35.985191, 27.630161>,  <36.854050, 36.045803, 27.849623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525169, 35.985191, 27.630161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568884, 0.186868, 0.800907,
		-0.018836, 0.970628, -0.239847,
		-0.822202, -0.151531, -0.548655,
		36.278507, 35.939732, 27.465565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416229, 36.697395, 27.891226>,  <36.854050, 36.045803, 27.849623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416229, 36.697395, 27.891226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.176792, 36.395512, 27.783825>,  <36.033131, 36.214382, 27.719385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.176792, 36.395512, 27.783825>,  <36.416229, 36.697395, 27.891226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176792, 36.395512, 27.783825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566312, 0.161641, 0.808185,
		-0.566546, 0.635832, -0.524160,
		-0.598595, -0.754712, -0.268502,
		35.997215, 36.169098, 27.703274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654690, 36.929821, 28.024498>,  <36.416229, 36.697395, 27.891226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654690, 36.929821, 28.024498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646629, 36.530334, 28.005932>,  <35.641792, 36.290642, 27.994791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646629, 36.530334, 28.005932>,  <35.654690, 36.929821, 28.024498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646629, 36.530334, 28.005932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669264, -0.021015, 0.742728,
		-0.742752, 0.046034, -0.667983,
		-0.020153, -0.998719, -0.046418,
		35.640583, 36.230721, 27.992006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910950, 36.690136, 28.043879>,  <35.654690, 36.929821, 28.024498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910950, 36.690136, 28.043879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.107727, 36.355446, 28.140114>,  <35.225792, 36.154633, 28.197855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.107727, 36.355446, 28.140114>,  <34.910950, 36.690136, 28.043879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107727, 36.355446, 28.140114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621140, -0.143668, 0.770419,
		-0.610065, -0.528439, -0.590401,
		0.491941, -0.836727, 0.240587,
		35.255310, 36.104427, 28.212290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429050, 36.227974, 28.134613>,  <34.910950, 36.690136, 28.043879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429050, 36.227974, 28.134613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.742699, 36.081848, 28.335293>,  <34.930885, 35.994171, 28.455702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.742699, 36.081848, 28.335293>,  <34.429050, 36.227974, 28.134613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742699, 36.081848, 28.335293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612632, -0.326399, 0.719823,
		-0.099206, -0.871785, -0.479738,
		0.784117, -0.365314, 0.501703,
		34.977932, 35.972252, 28.485804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224670, 35.557236, 28.388432>,  <34.429050, 36.227974, 28.134613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224670, 35.557236, 28.388432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.542191, 35.648087, 28.614101>,  <34.732704, 35.702599, 28.749502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.542191, 35.648087, 28.614101>,  <34.224670, 35.557236, 28.388432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542191, 35.648087, 28.614101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454355, -0.395168, 0.798376,
		0.404276, -0.890087, -0.210488,
		0.793802, 0.227128, 0.564172,
		34.780331, 35.716225, 28.783354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204067, 35.033844, 28.929434>,  <34.224670, 35.557236, 28.388432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204067, 35.033844, 28.929434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.427422, 35.333332, 29.072334>,  <34.561436, 35.513023, 29.158075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.427422, 35.333332, 29.072334>,  <34.204067, 35.033844, 28.929434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427422, 35.333332, 29.072334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396299, -0.137579, 0.907755,
		0.728801, -0.648457, 0.219893,
		0.558387, 0.748717, 0.357251,
		34.594936, 35.557945, 29.179510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608871, 34.806232, 29.503178>,  <34.204067, 35.033844, 28.929434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608871, 34.806232, 29.503178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.612762, 35.203644, 29.548454>,  <34.615097, 35.442089, 29.575621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.612762, 35.203644, 29.548454>,  <34.608871, 34.806232, 29.503178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612762, 35.203644, 29.548454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248072, -0.107262, 0.962785,
		0.968693, -0.037441, 0.245423,
		0.009723, 0.993526, 0.113192,
		34.615681, 35.501701, 29.582413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901257, 34.901073, 30.128302>,  <34.608871, 34.806232, 29.503178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901257, 34.901073, 30.128302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.704067, 35.239677, 30.047901>,  <34.585754, 35.442841, 29.999660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.704067, 35.239677, 30.047901>,  <34.901257, 34.901073, 30.128302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704067, 35.239677, 30.047901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408569, -0.021268, 0.912479,
		0.768147, 0.531950, 0.356341,
		-0.492972, 0.846508, -0.201002,
		34.556175, 35.493629, 29.987600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035637, 35.344242, 30.733206>,  <34.901257, 34.901073, 30.128302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035637, 35.344242, 30.733206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.705620, 35.494686, 30.564520>,  <34.507610, 35.584953, 30.463308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.705620, 35.494686, 30.564520>,  <35.035637, 35.344242, 30.733206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705620, 35.494686, 30.564520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392681, 0.155041, 0.906512,
		0.406333, 0.913511, 0.019776,
		-0.825043, 0.376111, -0.421717,
		34.458107, 35.607521, 30.438005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830376, 35.777309, 31.250332>,  <35.035637, 35.344242, 30.733206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830376, 35.777309, 31.250332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504093, 35.749310, 31.020647>,  <34.308323, 35.732510, 30.882837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504093, 35.749310, 31.020647>,  <34.830376, 35.777309, 31.250332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504093, 35.749310, 31.020647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566210, 0.299830, 0.767794,
		0.118420, 0.951421, -0.284209,
		-0.815710, -0.069999, -0.574210,
		34.259380, 35.728310, 30.848385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441349, 36.552078, 31.228212>,  <34.830376, 35.777309, 31.250332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441349, 36.552078, 31.228212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.201775, 36.247261, 31.129776>,  <34.058029, 36.064369, 31.070713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.201775, 36.247261, 31.129776>,  <34.441349, 36.552078, 31.228212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201775, 36.247261, 31.129776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678789, 0.320073, 0.660908,
		-0.424873, 0.562889, -0.708971,
		-0.598940, -0.762043, -0.246092,
		34.022091, 36.018650, 31.055948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771492, 36.836872, 31.153852>,  <34.441349, 36.552078, 31.228212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771492, 36.836872, 31.153852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736134, 36.448517, 31.242901>,  <33.714920, 36.215504, 31.296329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736134, 36.448517, 31.242901>,  <33.771492, 36.836872, 31.153852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736134, 36.448517, 31.242901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746884, 0.212478, 0.630093,
		-0.659052, -0.110574, -0.743924,
		-0.088396, -0.970890, 0.222620,
		33.709614, 36.157249, 31.309687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037609, 36.624115, 31.124182>,  <33.771492, 36.836872, 31.153852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037609, 36.624115, 31.124182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245804, 36.408440, 31.389019>,  <33.370720, 36.279034, 31.547922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245804, 36.408440, 31.389019>,  <33.037609, 36.624115, 31.124182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245804, 36.408440, 31.389019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634728, 0.274347, 0.722395,
		-0.571153, -0.796244, -0.199447,
		0.520485, -0.539193, 0.662093,
		33.401951, 36.246681, 31.587646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984165, 37.356049, 31.335630>,  <33.037609, 36.624115, 31.124182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984165, 37.356049, 31.335630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.691479, 37.618942, 31.263365>,  <32.515869, 37.776680, 31.220005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.691479, 37.618942, 31.263365>,  <32.984165, 37.356049, 31.335630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691479, 37.618942, 31.263365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273279, 0.040051, -0.961101,
		-0.624433, -0.752621, -0.208914,
		-0.731712, 0.657235, -0.180666,
		32.471966, 37.816113, 31.209166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727322, 37.165718, 30.669836>,  <32.984165, 37.356049, 31.335630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727322, 37.165718, 30.669836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.599026, 37.541897, 30.714876>,  <32.522049, 37.767605, 30.741901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.599026, 37.541897, 30.714876>,  <32.727322, 37.165718, 30.669836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599026, 37.541897, 30.714876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129295, 0.161244, -0.978409,
		-0.938301, -0.299256, -0.173313,
		-0.320740, 0.940450, 0.112603,
		32.502804, 37.824032, 30.748657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330284, 37.296501, 30.155996>,  <32.727322, 37.165718, 30.669836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330284, 37.296501, 30.155996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.418064, 37.678841, 30.234163>,  <32.470734, 37.908245, 30.281063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.418064, 37.678841, 30.234163>,  <32.330284, 37.296501, 30.155996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418064, 37.678841, 30.234163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060705, 0.186532, -0.980572,
		-0.973733, 0.227050, -0.017090,
		0.219451, 0.955852, 0.195416,
		32.483898, 37.965595, 30.292788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060047, 37.713501, 29.678764>,  <32.330284, 37.296501, 30.155996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060047, 37.713501, 29.678764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.338650, 37.960827, 29.824396>,  <32.505814, 38.109222, 29.911776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.338650, 37.960827, 29.824396>,  <32.060047, 37.713501, 29.678764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338650, 37.960827, 29.824396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218514, 0.300521, -0.928407,
		-0.683465, 0.726202, 0.074205,
		0.696511, 0.618318, 0.364081,
		32.547604, 38.146324, 29.933620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994078, 38.392475, 29.302637>,  <32.060047, 37.713501, 29.678764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994078, 38.392475, 29.302637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.347618, 38.418949, 29.487864>,  <32.559742, 38.434834, 29.598999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.347618, 38.418949, 29.487864>,  <31.994078, 38.392475, 29.302637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347618, 38.418949, 29.487864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416912, 0.337441, -0.843989,
		-0.212118, 0.939017, 0.270653,
		0.883850, 0.066187, 0.463064,
		32.612774, 38.438805, 29.626783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452595, 38.989662, 28.952919>,  <31.994078, 38.392475, 29.302637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452595, 38.989662, 28.952919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.720089, 38.755768, 29.136600>,  <32.880585, 38.615429, 29.246809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.720089, 38.755768, 29.136600>,  <32.452595, 38.989662, 28.952919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720089, 38.755768, 29.136600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579138, 0.022364, -0.814923,
		0.466249, 0.810912, 0.353601,
		0.668739, -0.584740, 0.459203,
		32.920712, 38.580345, 29.274361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030869, 39.322235, 28.884731>,  <32.452595, 38.989662, 28.952919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030869, 39.322235, 28.884731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.159554, 38.951057, 28.960022>,  <33.236763, 38.728352, 29.005198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.159554, 38.951057, 28.960022>,  <33.030869, 39.322235, 28.884731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159554, 38.951057, 28.960022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612451, 0.052332, -0.788775,
		0.722085, 0.369037, 0.585153,
		0.321709, -0.927940, 0.188228,
		33.256065, 38.672676, 29.016491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735180, 39.353031, 28.759100>,  <33.030869, 39.322235, 28.884731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735180, 39.353031, 28.759100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.633419, 38.966469, 28.744450>,  <33.572361, 38.734531, 28.735661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.633419, 38.966469, 28.744450>,  <33.735180, 39.353031, 28.759100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633419, 38.966469, 28.744450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629824, -0.136825, -0.764592,
		0.733894, -0.217582, 0.643474,
		-0.254405, -0.966404, -0.036624,
		33.557098, 38.676548, 28.733463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348011, 38.987465, 28.730837>,  <33.735180, 39.353031, 28.759100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348011, 38.987465, 28.730837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094955, 38.701637, 28.611399>,  <33.943123, 38.530140, 28.539736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094955, 38.701637, 28.611399>,  <34.348011, 38.987465, 28.730837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094955, 38.701637, 28.611399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537560, -0.127630, -0.833510,
		0.557489, -0.687827, 0.464866,
		-0.632642, -0.714566, -0.298596,
		33.905163, 38.487267, 28.521820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777672, 38.434135, 28.464100>,  <34.348011, 38.987465, 28.730837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777672, 38.434135, 28.464100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417492, 38.383873, 28.297539>,  <34.201382, 38.353714, 28.197601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417492, 38.383873, 28.297539>,  <34.777672, 38.434135, 28.464100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417492, 38.383873, 28.297539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434323, -0.311197, -0.845293,
		-0.023367, -0.942001, 0.334794,
		-0.900454, -0.125657, -0.416404,
		34.147354, 38.346176, 28.172617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761192, 37.807953, 28.150377>,  <34.777672, 38.434135, 28.464100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761192, 37.807953, 28.150377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.477715, 38.009903, 27.953257>,  <34.307629, 38.131073, 27.834984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.477715, 38.009903, 27.953257>,  <34.761192, 37.807953, 28.150377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477715, 38.009903, 27.953257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441368, -0.227659, -0.867967,
		-0.550408, -0.832628, -0.061498,
		-0.708693, 0.504879, -0.492800,
		34.265106, 38.161366, 27.805416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625256, 37.345360, 27.547400>,  <34.761192, 37.807953, 28.150377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625256, 37.345360, 27.547400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.455395, 37.693466, 27.447554>,  <34.353477, 37.902332, 27.387646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.455395, 37.693466, 27.447554>,  <34.625256, 37.345360, 27.547400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455395, 37.693466, 27.447554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321015, -0.113061, -0.940302,
		-0.846536, -0.479427, -0.231358,
		-0.424648, 0.870269, -0.249613,
		34.327999, 37.954548, 27.372669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223949, 37.194714, 27.058800>,  <34.625256, 37.345360, 27.547400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223949, 37.194714, 27.058800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289383, 37.584347, 26.996307>,  <34.328644, 37.818127, 26.958811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289383, 37.584347, 26.996307>,  <34.223949, 37.194714, 27.058800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289383, 37.584347, 26.996307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131317, -0.178456, -0.975146,
		-0.977751, 0.139000, -0.157106,
		0.163582, 0.974080, -0.156233,
		34.338459, 37.876572, 26.949438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704964, 37.450745, 26.511257>,  <34.223949, 37.194714, 27.058800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704964, 37.450745, 26.511257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023098, 37.692104, 26.534397>,  <34.213978, 37.836922, 26.548281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023098, 37.692104, 26.534397>,  <33.704964, 37.450745, 26.511257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023098, 37.692104, 26.534397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160095, -0.117054, -0.980137,
		-0.584647, 0.788798, -0.189699,
		0.795335, 0.603404, 0.057848,
		34.261700, 37.873127, 26.551752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056461, 37.452553, 26.091812>,  <33.704964, 37.450745, 26.511257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056461, 37.452553, 26.091812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.858841, 37.135365, 25.949203>,  <32.740269, 36.945053, 25.863638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.858841, 37.135365, 25.949203>,  <33.056461, 37.452553, 26.091812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858841, 37.135365, 25.949203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490697, -0.084198, 0.867253,
		-0.717725, 0.603414, -0.347510,
		-0.494053, -0.792971, -0.356524,
		32.710625, 36.897472, 25.842247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313766, 37.606422, 26.233149>,  <33.056461, 37.452553, 26.091812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313766, 37.606422, 26.233149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.322979, 37.213585, 26.158363>,  <32.328506, 36.977882, 26.113493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.322979, 37.213585, 26.158363>,  <32.313766, 37.606422, 26.233149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322979, 37.213585, 26.158363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431515, -0.178460, 0.884278,
		-0.901812, 0.060312, -0.427899,
		0.023030, -0.982097, -0.186963,
		32.329887, 36.918957, 26.102274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745037, 37.402473, 26.498554>,  <32.313766, 37.606422, 26.233149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745037, 37.402473, 26.498554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.893829, 37.031841, 26.476358>,  <31.983105, 36.809464, 26.463041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.893829, 37.031841, 26.476358>,  <31.745037, 37.402473, 26.498554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893829, 37.031841, 26.476358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563374, -0.272871, 0.779840,
		-0.737726, -0.258825, -0.623514,
		0.371981, -0.926580, -0.055489,
		32.005424, 36.753868, 26.459711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132271, 36.945736, 26.496881>,  <31.745037, 37.402473, 26.498554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132271, 36.945736, 26.496881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.465588, 36.763489, 26.622126>,  <31.665577, 36.654140, 26.697271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.465588, 36.763489, 26.622126>,  <31.132271, 36.945736, 26.496881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465588, 36.763489, 26.622126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493578, -0.358035, 0.792585,
		-0.249011, -0.814999, -0.523230,
		0.833292, -0.455617, 0.313111,
		31.715574, 36.626804, 26.716059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897028, 36.275505, 26.694784>,  <31.132271, 36.945736, 26.496881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897028, 36.275505, 26.694784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.261507, 36.293945, 26.858538>,  <31.480194, 36.305008, 26.956789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.261507, 36.293945, 26.858538>,  <30.897028, 36.275505, 26.694784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261507, 36.293945, 26.858538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284418, -0.648503, 0.706081,
		0.298037, -0.759815, -0.577802,
		0.911197, 0.046101, 0.409382,
		31.534866, 36.307774, 26.981352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101900, 35.577003, 26.799200>,  <30.897028, 36.275505, 26.694784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101900, 35.577003, 26.799200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.303566, 35.814838, 27.049728>,  <31.424566, 35.957539, 27.200047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.303566, 35.814838, 27.049728>,  <31.101900, 35.577003, 26.799200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303566, 35.814838, 27.049728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338510, -0.531144, 0.776722,
		0.794498, -0.603614, -0.066511,
		0.504167, 0.594589, 0.626322,
		31.454817, 35.993214, 27.237625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516056, 35.128201, 27.160021>,  <31.101900, 35.577003, 26.799200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516056, 35.128201, 27.160021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.509645, 35.444145, 27.405252>,  <31.505800, 35.633713, 27.552391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.509645, 35.444145, 27.405252>,  <31.516056, 35.128201, 27.160021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509645, 35.444145, 27.405252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254320, -0.596213, 0.761480,
		0.966987, -0.143716, 0.210431,
		-0.016025, 0.789858, 0.613081,
		31.504839, 35.681103, 27.589176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720284, 34.778419, 27.775084>,  <31.516056, 35.128201, 27.160021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720284, 34.778419, 27.775084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.587109, 35.140915, 27.879309>,  <31.507204, 35.358410, 27.941845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.587109, 35.140915, 27.879309>,  <31.720284, 34.778419, 27.775084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587109, 35.140915, 27.879309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082241, -0.303183, 0.949377,
		0.939357, 0.294652, 0.175470,
		-0.332935, 0.906234, 0.260564,
		31.487228, 35.412785, 27.957478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993078, 34.863068, 28.426765>,  <31.720284, 34.778419, 27.775084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993078, 34.863068, 28.426765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.671576, 35.100822, 28.416300>,  <31.478674, 35.243473, 28.410021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.671576, 35.100822, 28.416300>,  <31.993078, 34.863068, 28.426765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671576, 35.100822, 28.416300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282723, -0.342878, 0.895825,
		0.523494, 0.727421, 0.443635,
		-0.803755, 0.594385, -0.026164,
		31.430449, 35.279137, 28.408451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054413, 35.281002, 29.091278>,  <31.993078, 34.863068, 28.426765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054413, 35.281002, 29.091278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.675877, 35.282482, 28.962013>,  <31.448755, 35.283371, 28.884455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.675877, 35.282482, 28.962013>,  <32.054413, 35.281002, 29.091278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675877, 35.282482, 28.962013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320850, -0.130671, 0.938073,
		-0.038755, 0.991419, 0.124847,
		-0.946337, 0.003702, -0.323161,
		31.391975, 35.283592, 28.865065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724775, 35.318798, 29.696907>,  <32.054413, 35.281002, 29.091278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724775, 35.318798, 29.696907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.411331, 35.275166, 29.452267>,  <31.223265, 35.248985, 29.305483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.411331, 35.275166, 29.452267>,  <31.724775, 35.318798, 29.696907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411331, 35.275166, 29.452267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551154, -0.332211, 0.765418,
		-0.286672, 0.936876, 0.200204,
		-0.783612, -0.109080, -0.611599,
		31.176247, 35.242443, 29.268787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178823, 35.854038, 29.896610>,  <31.724775, 35.318798, 29.696907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178823, 35.854038, 29.896610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.018473, 35.531219, 29.723186>,  <30.922262, 35.337528, 29.619133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.018473, 35.531219, 29.723186>,  <31.178823, 35.854038, 29.896610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018473, 35.531219, 29.723186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582071, -0.141081, 0.800805,
		-0.707454, 0.573386, -0.413203,
		-0.400876, -0.807047, -0.433560,
		30.898211, 35.289104, 29.593119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.262672, 37.675831, 22.085917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321541, 37.292469, 22.183739>,  <33.356861, 37.062454, 22.242432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321541, 37.292469, 22.183739>,  <33.262672, 37.675831, 22.085917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321541, 37.292469, 22.183739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477516, 0.147679, 0.866123,
		-0.866209, -0.244247, -0.435918,
		0.147172, -0.958402, 0.244553,
		33.365692, 37.004948, 22.257105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656574, 37.481575, 22.421370>,  <33.262672, 37.675831, 22.085917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656574, 37.481575, 22.421370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889774, 37.182362, 22.548212>,  <33.029694, 37.002834, 22.624317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889774, 37.182362, 22.548212>,  <32.656574, 37.481575, 22.421370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889774, 37.182362, 22.548212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414002, 0.062317, 0.908140,
		-0.699081, -0.660728, -0.273357,
		0.582999, -0.748034, 0.317107,
		33.064674, 36.957951, 22.643345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178921, 36.944305, 22.789707>,  <32.656574, 37.481575, 22.421370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178921, 36.944305, 22.789707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552818, 36.898773, 22.924351>,  <32.777157, 36.871452, 23.005136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552818, 36.898773, 22.924351>,  <32.178921, 36.944305, 22.789707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552818, 36.898773, 22.924351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345150, -0.065700, 0.936245,
		-0.084481, -0.991323, -0.100709,
		0.934738, -0.113854, 0.336605,
		32.833241, 36.864624, 23.025333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131695, 36.534153, 23.362434>,  <32.178921, 36.944305, 22.789707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131695, 36.534153, 23.362434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514961, 36.642395, 23.399721>,  <32.744923, 36.707340, 23.422092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514961, 36.642395, 23.399721>,  <32.131695, 36.534153, 23.362434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514961, 36.642395, 23.399721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045504, -0.177513, 0.983066,
		0.282568, -0.946184, -0.157774,
		0.958167, 0.270603, 0.093214,
		32.802410, 36.723576, 23.427685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495594, 35.986069, 23.800041>,  <32.131695, 36.534153, 23.362434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495594, 35.986069, 23.800041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701633, 36.327888, 23.826609>,  <32.825256, 36.532982, 23.842548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701633, 36.327888, 23.826609>,  <32.495594, 35.986069, 23.800041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701633, 36.327888, 23.826609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097409, -0.135350, 0.985998,
		0.851576, -0.501419, -0.152960,
		0.515101, 0.854552, 0.066418,
		32.856163, 36.584255, 23.846535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982349, 35.837460, 24.310547>,  <32.495594, 35.986069, 23.800041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982349, 35.837460, 24.310547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961933, 36.235229, 24.273624>,  <32.949684, 36.473892, 24.251471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961933, 36.235229, 24.273624>,  <32.982349, 35.837460, 24.310547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961933, 36.235229, 24.273624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143616, 0.098774, 0.984692,
		0.988317, 0.037002, -0.147856,
		-0.051040, 0.994422, -0.092306,
		32.946621, 36.533558, 24.245934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544605, 36.118492, 24.607229>,  <32.982349, 35.837460, 24.310547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544605, 36.118492, 24.607229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270283, 36.409542, 24.613218>,  <33.105690, 36.584171, 24.616812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270283, 36.409542, 24.613218>,  <33.544605, 36.118492, 24.607229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270283, 36.409542, 24.613218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018778, -0.002872, 0.999820,
		0.727538, 0.685968, -0.011693,
		-0.685811, 0.727626, 0.014970,
		33.064541, 36.627831, 24.617710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796696, 36.505520, 25.143213>,  <33.544605, 36.118492, 24.607229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796696, 36.505520, 25.143213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429714, 36.659622, 25.103483>,  <33.209526, 36.752083, 25.079645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429714, 36.659622, 25.103483>,  <33.796696, 36.505520, 25.143213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429714, 36.659622, 25.103483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131467, -0.057938, 0.989626,
		0.375503, 0.920990, 0.103803,
		-0.917450, 0.385254, -0.099324,
		33.154480, 36.775200, 25.073687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664425, 36.956394, 25.702633>,  <33.796696, 36.505520, 25.143213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664425, 36.956394, 25.702633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294758, 36.869495, 25.576952>,  <33.072956, 36.817356, 25.501543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294758, 36.869495, 25.576952>,  <33.664425, 36.956394, 25.702633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294758, 36.869495, 25.576952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301577, -0.089896, 0.949194,
		-0.234453, 0.971969, 0.017563,
		-0.924166, -0.217245, -0.314200,
		33.017509, 36.804321, 25.482693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686623, 37.754810, 25.861898>,  <33.664425, 36.956394, 25.702633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686623, 37.754810, 25.861898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046768, 37.878689, 25.984163>,  <34.262856, 37.953014, 26.057522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046768, 37.878689, 25.984163>,  <33.686623, 37.754810, 25.861898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046768, 37.878689, 25.984163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293703, 0.085765, -0.952041,
		-0.321057, 0.946960, -0.013738,
		0.900367, 0.309694, 0.305660,
		34.316879, 37.971596, 26.075861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761196, 38.407043, 25.468880>,  <33.686623, 37.754810, 25.861898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761196, 38.407043, 25.468880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136063, 38.301521, 25.560207>,  <34.360981, 38.238209, 25.615004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136063, 38.301521, 25.560207>,  <33.761196, 38.407043, 25.468880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136063, 38.301521, 25.560207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295645, 0.253001, -0.921186,
		0.185247, 0.930805, 0.315096,
		0.937165, -0.263803, 0.228320,
		34.417213, 38.222382, 25.628704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190502, 39.037846, 25.413750>,  <33.761196, 38.407043, 25.468880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190502, 39.037846, 25.413750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442917, 38.730942, 25.367945>,  <34.594364, 38.546799, 25.340462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442917, 38.730942, 25.367945>,  <34.190502, 39.037846, 25.413750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442917, 38.730942, 25.367945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316047, 0.389077, -0.865294,
		0.708458, 0.509837, 0.488010,
		0.631032, -0.767258, -0.114512,
		34.632225, 38.500763, 25.333591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852104, 39.292988, 25.148447>,  <34.190502, 39.037846, 25.413750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852104, 39.292988, 25.148447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875088, 38.902554, 25.064579>,  <34.888878, 38.668293, 25.014257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875088, 38.902554, 25.064579>,  <34.852104, 39.292988, 25.148447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875088, 38.902554, 25.064579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492076, 0.210425, -0.844738,
		0.868654, -0.054634, 0.492398,
		0.057461, -0.976082, -0.209670,
		34.892326, 38.609730, 25.001678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437481, 39.249512, 24.840609>,  <34.852104, 39.292988, 25.148447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437481, 39.249512, 24.840609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285938, 38.909756, 24.693638>,  <35.195015, 38.705902, 24.605455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285938, 38.909756, 24.693638>,  <35.437481, 39.249512, 24.840609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285938, 38.909756, 24.693638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549727, 0.112845, -0.827687,
		0.744493, -0.515558, 0.424182,
		-0.378854, -0.849391, -0.367428,
		35.172283, 38.654938, 24.583408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982479, 38.930393, 24.401577>,  <35.437481, 39.249512, 24.840609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982479, 38.930393, 24.401577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658470, 38.734344, 24.272802>,  <35.464066, 38.616714, 24.195538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658470, 38.734344, 24.272802>,  <35.982479, 38.930393, 24.401577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658470, 38.734344, 24.272802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443223, -0.152263, -0.883386,
		0.383951, -0.858250, 0.340571,
		-0.810022, -0.490125, -0.321935,
		35.415462, 38.587307, 24.176222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244789, 38.411613, 24.001305>,  <35.982479, 38.930393, 24.401577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244789, 38.411613, 24.001305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860558, 38.425041, 23.890917>,  <35.630020, 38.433098, 23.824684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860558, 38.425041, 23.890917>,  <36.244789, 38.411613, 24.001305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860558, 38.425041, 23.890917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265145, -0.187797, -0.945744,
		-0.083573, -0.981634, 0.171493,
		-0.960580, 0.033568, -0.275970,
		35.572384, 38.435112, 23.808126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171707, 37.874905, 23.529371>,  <36.244789, 38.411613, 24.001305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171707, 37.874905, 23.529371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861782, 38.114517, 23.448547>,  <35.675827, 38.258286, 23.400053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861782, 38.114517, 23.448547>,  <36.171707, 37.874905, 23.529371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861782, 38.114517, 23.448547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152127, -0.133556, -0.979296,
		-0.613613, -0.789510, 0.012352,
		-0.774814, 0.599029, -0.202058,
		35.629337, 38.294228, 23.387930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693130, 37.484009, 23.110207>,  <36.171707, 37.874905, 23.529371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693130, 37.484009, 23.110207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657482, 37.879993, 23.066326>,  <35.636093, 38.117584, 23.039997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657482, 37.879993, 23.066326>,  <35.693130, 37.484009, 23.110207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657482, 37.879993, 23.066326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350320, -0.071947, -0.933863,
		-0.932381, -0.121656, -0.340391,
		-0.089120, 0.989961, -0.109701,
		35.630745, 38.176983, 23.033417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462067, 37.537079, 22.473087>,  <35.693130, 37.484009, 23.110207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462067, 37.537079, 22.473087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603672, 37.901638, 22.557022>,  <35.688633, 38.120373, 22.607382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603672, 37.901638, 22.557022>,  <35.462067, 37.537079, 22.473087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603672, 37.901638, 22.557022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340754, 0.083248, -0.936460,
		-0.870955, 0.403019, -0.281092,
		0.354010, 0.911398, 0.209836,
		35.709877, 38.175056, 22.619972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309856, 38.021378, 21.851606>,  <35.462067, 37.537079, 22.473087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309856, 38.021378, 21.851606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562202, 38.276127, 22.028877>,  <35.713608, 38.428978, 22.135241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562202, 38.276127, 22.028877>,  <35.309856, 38.021378, 21.851606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562202, 38.276127, 22.028877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558252, 0.024110, -0.829321,
		-0.538856, 0.770593, -0.340325,
		0.630863, 0.636872, 0.443177,
		35.751461, 38.467190, 22.161831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297726, 38.687691, 21.454844>,  <35.309856, 38.021378, 21.851606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297726, 38.687691, 21.454844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638268, 38.668262, 21.663778>,  <35.842594, 38.656605, 21.789139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638268, 38.668262, 21.663778>,  <35.297726, 38.687691, 21.454844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638268, 38.668262, 21.663778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524437, 0.102883, -0.845211,
		-0.012691, 0.993507, 0.113060,
		0.851355, -0.048566, 0.522337,
		35.893673, 38.653694, 21.820480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801876, 39.248619, 21.144241>,  <35.297726, 38.687691, 21.454844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801876, 39.248619, 21.144241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022907, 38.969566, 21.326654>,  <36.155525, 38.802135, 21.436102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022907, 38.969566, 21.326654>,  <35.801876, 39.248619, 21.144241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022907, 38.969566, 21.326654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545780, -0.110649, -0.830590,
		0.629908, 0.707858, 0.319613,
		0.552575, -0.697635, 0.456034,
		36.188679, 38.760277, 21.463465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539997, 39.438084, 20.964607>,  <35.801876, 39.248619, 21.144241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539997, 39.438084, 20.964607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555759, 39.050270, 21.061316>,  <36.565216, 38.817581, 21.119341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555759, 39.050270, 21.061316>,  <36.539997, 39.438084, 20.964607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555759, 39.050270, 21.061316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519159, -0.186871, -0.833999,
		0.853769, 0.158381, 0.495978,
		0.039406, -0.969533, 0.241769,
		36.567581, 38.759411, 21.133846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.006916, 30.862921, 20.993896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734680, 31.155561, 20.978098>,  <34.571339, 31.331146, 20.968618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734680, 31.155561, 20.978098>,  <35.006916, 30.862921, 20.993896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734680, 31.155561, 20.978098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058898, -0.000900, 0.998264,
		0.730296, 0.681732, 0.043702,
		-0.680587, 0.731602, -0.039495,
		34.530502, 31.375042, 20.966249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311325, 31.338812, 21.390480>,  <35.006916, 30.862921, 20.993896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311325, 31.338812, 21.390480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916290, 31.401558, 21.387308>,  <34.679268, 31.439205, 21.385405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916290, 31.401558, 21.387308>,  <35.311325, 31.338812, 21.390480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916290, 31.401558, 21.387308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016874, 0.156156, 0.987588,
		0.156156, 0.975197, -0.156865,
		-0.987588, 0.156865, -0.007929,
		34.620014, 31.448618, 21.384930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265942, 31.838200, 21.890680>,  <35.311325, 31.338812, 21.390480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265942, 31.838200, 21.890680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900139, 31.681364, 21.850777>,  <34.680656, 31.587263, 21.826834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900139, 31.681364, 21.850777>,  <35.265942, 31.838200, 21.890680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900139, 31.681364, 21.850777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106920, -0.003596, 0.994261,
		-0.390196, 0.919921, -0.038634,
		-0.914503, -0.392087, -0.099761,
		34.625790, 31.563738, 21.820848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966839, 32.283546, 22.299921>,  <35.265942, 31.838200, 21.890680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966839, 32.283546, 22.299921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731060, 31.963932, 22.252436>,  <34.589592, 31.772163, 22.223946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731060, 31.963932, 22.252436>,  <34.966839, 32.283546, 22.299921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731060, 31.963932, 22.252436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303969, 0.083242, 0.949038,
		-0.748433, 0.595494, -0.291949,
		-0.589449, -0.799035, -0.118711,
		34.554226, 31.724222, 22.216822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344124, 32.340076, 22.798691>,  <34.966839, 32.283546, 22.299921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344124, 32.340076, 22.798691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371719, 31.951872, 22.706305>,  <34.388279, 31.718948, 22.650873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371719, 31.951872, 22.706305>,  <34.344124, 32.340076, 22.798691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371719, 31.951872, 22.706305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387662, -0.239403, 0.890171,
		-0.919216, 0.028121, -0.392748,
		0.068992, -0.970513, -0.230964,
		34.392418, 31.660717, 22.637014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786156, 32.026024, 23.154890>,  <34.344124, 32.340076, 22.798691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786156, 32.026024, 23.154890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.043133, 31.729919, 23.075623>,  <34.197319, 31.552256, 23.028063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.043133, 31.729919, 23.075623>,  <33.786156, 32.026024, 23.154890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043133, 31.729919, 23.075623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209611, -0.418480, 0.883707,
		-0.737108, -0.526195, -0.424018,
		0.642444, -0.740266, -0.198168,
		34.235867, 31.507839, 23.016172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477501, 31.559782, 23.387638>,  <33.786156, 32.026024, 23.154890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477501, 31.559782, 23.387638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.836960, 31.386219, 23.361862>,  <34.052635, 31.282082, 23.346397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.836960, 31.386219, 23.361862>,  <33.477501, 31.559782, 23.387638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836960, 31.386219, 23.361862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132504, -0.408541, 0.903071,
		-0.418188, -0.803000, -0.424629,
		0.898644, -0.433919, -0.064446,
		34.106556, 31.256046, 23.342529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374432, 30.898863, 23.726254>,  <33.477501, 31.559782, 23.387638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374432, 30.898863, 23.726254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765148, 30.984503, 23.728651>,  <33.999580, 31.035887, 23.730089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765148, 30.984503, 23.728651>,  <33.374432, 30.898863, 23.726254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765148, 30.984503, 23.728651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053056, -0.268971, 0.961686,
		0.207511, -0.939050, -0.274088,
		0.976793, 0.214102, 0.005992,
		34.058186, 31.048733, 23.730448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748028, 30.317389, 24.000074>,  <33.374432, 30.898863, 23.726254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748028, 30.317389, 24.000074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959381, 30.652500, 24.055117>,  <34.086193, 30.853567, 24.088142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959381, 30.652500, 24.055117>,  <33.748028, 30.317389, 24.000074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959381, 30.652500, 24.055117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199581, -0.280103, 0.938994,
		0.825215, -0.468684, -0.315206,
		0.528382, 0.837781, 0.137605,
		34.117897, 30.903835, 24.096397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192005, 30.122749, 24.442535>,  <33.748028, 30.317389, 24.000074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192005, 30.122749, 24.442535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215771, 30.521818, 24.455925>,  <34.230030, 30.761259, 24.463959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215771, 30.521818, 24.455925>,  <34.192005, 30.122749, 24.442535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215771, 30.521818, 24.455925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170536, -0.043183, 0.984405,
		0.983559, -0.052780, -0.172704,
		0.059415, 0.997672, 0.033473,
		34.233597, 30.821119, 24.465967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681324, 30.262856, 24.962961>,  <34.192005, 30.122749, 24.442535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681324, 30.262856, 24.962961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463020, 30.594864, 24.916979>,  <34.332039, 30.794069, 24.889389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463020, 30.594864, 24.916979>,  <34.681324, 30.262856, 24.962961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463020, 30.594864, 24.916979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001050, 0.136508, 0.990638,
		0.837945, 0.540766, -0.073628,
		-0.545755, 0.830023, -0.114954,
		34.299294, 30.843870, 24.882492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900227, 30.648815, 25.591555>,  <34.681324, 30.262856, 24.962961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900227, 30.648815, 25.591555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.580727, 30.841488, 25.447348>,  <34.389027, 30.957092, 25.360823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.580727, 30.841488, 25.447348>,  <34.900227, 30.648815, 25.591555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580727, 30.841488, 25.447348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279643, 0.233331, 0.931320,
		0.532721, 0.844712, -0.051674,
		-0.798754, 0.481683, -0.360518,
		34.341099, 30.985992, 25.339191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978928, 31.266171, 25.793303>,  <34.900227, 30.648815, 25.591555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978928, 31.266171, 25.793303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.589344, 31.206295, 25.725195>,  <34.355595, 31.170370, 25.684330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.589344, 31.206295, 25.725195>,  <34.978928, 31.266171, 25.793303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589344, 31.206295, 25.725195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193019, 0.153552, 0.969105,
		-0.118919, 0.976737, -0.178447,
		-0.973962, -0.149688, -0.170269,
		34.297157, 31.161388, 25.674114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622513, 31.885921, 26.001329>,  <34.978928, 31.266171, 25.793303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622513, 31.885921, 26.001329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344864, 31.598038, 25.995426>,  <34.178276, 31.425308, 25.991884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344864, 31.598038, 25.995426>,  <34.622513, 31.885921, 26.001329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344864, 31.598038, 25.995426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218659, 0.191263, 0.956873,
		-0.685847, 0.667412, -0.290130,
		-0.694120, -0.719708, -0.014759,
		34.136627, 31.382126, 25.990999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926464, 32.537983, 26.012341>,  <34.622513, 31.885921, 26.001329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926464, 32.537983, 26.012341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.212193, 32.667660, 26.260418>,  <35.383629, 32.745464, 26.409266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.212193, 32.667660, 26.260418>,  <34.926464, 32.537983, 26.012341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212193, 32.667660, 26.260418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602213, 0.166680, -0.780741,
		-0.356483, 0.931192, -0.076169,
		0.714324, 0.324191, 0.620194,
		35.426491, 32.764915, 26.446476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008007, 33.152821, 25.802738>,  <34.926464, 32.537983, 26.012341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008007, 33.152821, 25.802738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346172, 33.087975, 26.006304>,  <35.549072, 33.049068, 26.128443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346172, 33.087975, 26.006304>,  <35.008007, 33.152821, 25.802738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346172, 33.087975, 26.006304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519457, 0.027890, -0.854042,
		0.124257, 0.986378, 0.107790,
		0.845414, -0.162113, 0.508915,
		35.599796, 33.039341, 26.158978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479408, 33.749519, 25.599144>,  <35.008007, 33.152821, 25.802738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479408, 33.749519, 25.599144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700729, 33.440544, 25.723848>,  <35.833523, 33.255161, 25.798672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700729, 33.440544, 25.723848>,  <35.479408, 33.749519, 25.599144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700729, 33.440544, 25.723848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504623, 0.013055, -0.863241,
		0.662728, 0.634959, 0.397012,
		0.553306, -0.772435, 0.311763,
		35.866722, 33.208813, 25.817377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270691, 33.977631, 25.636608>,  <35.479408, 33.749519, 25.599144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270691, 33.977631, 25.636608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.275787, 33.578110, 25.617678>,  <36.278847, 33.338398, 25.606319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.275787, 33.578110, 25.617678>,  <36.270691, 33.977631, 25.636608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275787, 33.578110, 25.617678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414263, 0.048349, -0.908872,
		0.910068, -0.008024, 0.414381,
		0.012742, -0.998798, -0.047325,
		36.279610, 33.278469, 25.603479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877357, 33.917103, 25.246191>,  <36.270691, 33.977631, 25.636608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877357, 33.917103, 25.246191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670383, 33.576168, 25.215794>,  <36.546200, 33.371605, 25.197556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670383, 33.576168, 25.215794>,  <36.877357, 33.917103, 25.246191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670383, 33.576168, 25.215794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170097, -0.015413, -0.985307,
		0.838646, -0.522758, 0.152956,
		-0.517435, -0.852341, -0.075993,
		36.515152, 33.320465, 25.192995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238281, 33.319279, 24.949219>,  <36.877357, 33.917103, 25.246191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238281, 33.319279, 24.949219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868572, 33.190292, 24.867500>,  <36.646748, 33.112900, 24.818470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868572, 33.190292, 24.867500>,  <37.238281, 33.319279, 24.949219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868572, 33.190292, 24.867500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240127, -0.075109, -0.967831,
		0.296746, -0.943597, 0.146853,
		-0.924273, -0.322463, -0.204295,
		36.591290, 33.093555, 24.806211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328693, 32.780247, 24.478916>,  <37.238281, 33.319279, 24.949219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328693, 32.780247, 24.478916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942593, 32.879307, 24.445532>,  <36.710934, 32.938744, 24.425501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942593, 32.879307, 24.445532>,  <37.328693, 32.780247, 24.478916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942593, 32.879307, 24.445532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073279, -0.050064, -0.996054,
		-0.250849, -0.967556, 0.030176,
		-0.965248, 0.247648, -0.083460,
		36.653019, 32.953602, 24.420494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084305, 32.329060, 23.960114>,  <37.328693, 32.780247, 24.478916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084305, 32.329060, 23.960114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827518, 32.634525, 23.987526>,  <36.673447, 32.817806, 24.003973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827518, 32.634525, 23.987526>,  <37.084305, 32.329060, 23.960114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827518, 32.634525, 23.987526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059285, 0.039675, -0.997452,
		-0.764440, -0.644391, 0.019804,
		-0.641963, 0.763667, 0.068532,
		36.634930, 32.863625, 24.008085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536678, 32.203156, 23.493900>,  <37.084305, 32.329060, 23.960114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536678, 32.203156, 23.493900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.521294, 32.598537, 23.552525>,  <36.512062, 32.835766, 23.587700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.521294, 32.598537, 23.552525>,  <36.536678, 32.203156, 23.493900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521294, 32.598537, 23.552525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076919, 0.143306, -0.986685,
		-0.996295, -0.049225, 0.070518,
		-0.038464, 0.988453, 0.146562,
		36.509754, 32.895073, 23.596493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908607, 32.312790, 23.298828>,  <36.536678, 32.203156, 23.493900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908607, 32.312790, 23.298828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144184, 32.634377, 23.265860>,  <36.285530, 32.827328, 23.246078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144184, 32.634377, 23.265860>,  <35.908607, 32.312790, 23.298828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144184, 32.634377, 23.265860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268169, 0.098198, -0.958354,
		-0.762388, 0.586516, 0.273430,
		0.588940, 0.803963, -0.082420,
		36.320866, 32.875565, 23.241133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589211, 32.814751, 22.747725>,  <35.908607, 32.312790, 23.298828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589211, 32.814751, 22.747725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962547, 32.954269, 22.781698>,  <36.186550, 33.037979, 22.802082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962547, 32.954269, 22.781698>,  <35.589211, 32.814751, 22.747725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962547, 32.954269, 22.781698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020598, 0.184172, -0.982678,
		-0.358394, 0.918925, 0.164711,
		0.933343, 0.348793, 0.084934,
		36.242550, 33.058907, 22.807178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690823, 33.527802, 22.612972>,  <35.589211, 32.814751, 22.747725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690823, 33.527802, 22.612972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043339, 33.350582, 22.547213>,  <36.254848, 33.244251, 22.507757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043339, 33.350582, 22.547213>,  <35.690823, 33.527802, 22.612972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043339, 33.350582, 22.547213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016165, 0.375946, -0.926500,
		0.472293, 0.813861, 0.338481,
		0.881293, -0.443051, -0.164401,
		36.307728, 33.217667, 22.497892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115513, 34.056862, 22.310322>,  <35.690823, 33.527802, 22.612972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115513, 34.056862, 22.310322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.326332, 33.727634, 22.225672>,  <36.452824, 33.530098, 22.174881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.326332, 33.727634, 22.225672>,  <36.115513, 34.056862, 22.310322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326332, 33.727634, 22.225672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145669, 0.332829, -0.931668,
		0.837257, 0.460207, 0.295312,
		0.527049, -0.823064, -0.211625,
		36.484447, 33.480717, 22.162184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719734, 34.214245, 21.868313>,  <36.115513, 34.056862, 22.310322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719734, 34.214245, 21.868313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670742, 33.825340, 21.788609>,  <36.641346, 33.591999, 21.740786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670742, 33.825340, 21.788609>,  <36.719734, 34.214245, 21.868313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670742, 33.825340, 21.788609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057325, 0.193506, -0.979423,
		0.990814, -0.131381, 0.032034,
		-0.122479, -0.972263, -0.199260,
		36.633999, 33.533661, 21.728830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443165, 34.388332, 22.179960>,  <36.719734, 34.214245, 21.868313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443165, 34.388332, 22.179960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716244, 34.680580, 22.175484>,  <37.880089, 34.855927, 22.172798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716244, 34.680580, 22.175484>,  <37.443165, 34.388332, 22.179960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716244, 34.680580, 22.175484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117404, 0.124794, 0.985212,
		0.721209, -0.671286, 0.170974,
		0.682696, 0.730617, -0.011191,
		37.921051, 34.899765, 22.172127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901443, 34.305119, 22.865837>,  <37.443165, 34.388332, 22.179960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901443, 34.305119, 22.865837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919613, 34.689537, 22.756788>,  <37.930515, 34.920189, 22.691359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919613, 34.689537, 22.756788>,  <37.901443, 34.305119, 22.865837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919613, 34.689537, 22.756788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300350, 0.273417, 0.913801,
		0.952747, 0.040370, 0.301071,
		0.045428, 0.961048, -0.272622,
		37.933243, 34.977852, 22.675001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263577, 34.647408, 23.393274>,  <37.901443, 34.305119, 22.865837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263577, 34.647408, 23.393274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059246, 34.934341, 23.203753>,  <37.936649, 35.106503, 23.090040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059246, 34.934341, 23.203753>,  <38.263577, 34.647408, 23.393274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059246, 34.934341, 23.203753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332145, 0.343661, 0.878394,
		0.792930, 0.606076, 0.062708,
		-0.510824, 0.717334, -0.473805,
		37.905998, 35.149540, 23.061611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546574, 35.289433, 23.653597>,  <38.263577, 34.647408, 23.393274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546574, 35.289433, 23.653597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172272, 35.353542, 23.527948>,  <37.947689, 35.392010, 23.452559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172272, 35.353542, 23.527948>,  <38.546574, 35.289433, 23.653597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172272, 35.353542, 23.527948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235950, 0.377443, 0.895469,
		0.262087, 0.912057, -0.315377,
		-0.935755, 0.160278, -0.314123,
		37.891544, 35.401627, 23.433712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451912, 35.948784, 23.933529>,  <38.546574, 35.289433, 23.653597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451912, 35.948784, 23.933529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108913, 35.769020, 23.833345>,  <37.903114, 35.661163, 23.773235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108913, 35.769020, 23.833345>,  <38.451912, 35.948784, 23.933529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108913, 35.769020, 23.833345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437235, 0.379992, 0.815127,
		-0.271155, 0.808478, -0.522340,
		-0.857497, -0.449411, -0.250458,
		37.851665, 35.634197, 23.758207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001839, 36.320961, 24.214529>,  <38.451912, 35.948784, 23.933529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001839, 36.320961, 24.214529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753700, 36.019611, 24.127268>,  <37.604816, 35.838802, 24.074911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753700, 36.019611, 24.127268>,  <38.001839, 36.320961, 24.214529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753700, 36.019611, 24.127268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418003, 0.082219, 0.904717,
		-0.663656, 0.652430, -0.365918,
		-0.620350, -0.753376, -0.218153,
		37.567596, 35.793598, 24.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331459, 36.601940, 24.328302>,  <38.001839, 36.320961, 24.214529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331459, 36.601940, 24.328302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297165, 36.203850, 24.346981>,  <37.276588, 35.964996, 24.358189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297165, 36.203850, 24.346981>,  <37.331459, 36.601940, 24.328302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297165, 36.203850, 24.346981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377831, 0.075846, 0.922762,
		-0.921896, 0.061468, -0.382529,
		-0.085734, -0.995223, 0.046698,
		37.271446, 35.905281, 24.360991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691803, 36.527813, 24.662573>,  <37.331459, 36.601940, 24.328302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691803, 36.527813, 24.662573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882275, 36.178493, 24.703751>,  <36.996559, 35.968903, 24.728456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882275, 36.178493, 24.703751>,  <36.691803, 36.527813, 24.662573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882275, 36.178493, 24.703751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450656, -0.141836, 0.881358,
		-0.755090, -0.466077, -0.461098,
		0.476181, -0.873301, 0.102942,
		37.025127, 35.916504, 24.734632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189991, 36.117935, 24.918728>,  <36.691803, 36.527813, 24.662573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189991, 36.117935, 24.918728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.522568, 35.922787, 25.025070>,  <36.722115, 35.805698, 25.088877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.522568, 35.922787, 25.025070>,  <36.189991, 36.117935, 24.918728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522568, 35.922787, 25.025070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430341, -0.262815, 0.863560,
		-0.351437, -0.832410, -0.428468,
		0.831444, -0.487874, 0.265857,
		36.771999, 35.776424, 25.104828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034447, 35.558979, 25.160563>,  <36.189991, 36.117935, 24.918728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034447, 35.558979, 25.160563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.389359, 35.584187, 25.343325>,  <36.602306, 35.599312, 25.452982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.389359, 35.584187, 25.343325>,  <36.034447, 35.558979, 25.160563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389359, 35.584187, 25.343325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441720, -0.168951, 0.881101,
		0.132724, -0.983607, -0.122068,
		0.887281, 0.063023, 0.456903,
		36.655544, 35.603092, 25.480396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051437, 35.058483, 25.652285>,  <36.034447, 35.558979, 25.160563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051437, 35.058483, 25.652285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350613, 35.299240, 25.764221>,  <36.530117, 35.443695, 25.831383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350613, 35.299240, 25.764221>,  <36.051437, 35.058483, 25.652285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350613, 35.299240, 25.764221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251211, -0.133558, 0.958674,
		0.614394, -0.787329, 0.051308,
		0.747939, 0.601893, 0.279843,
		36.574993, 35.479809, 25.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235294, 34.799282, 26.303516>,  <36.051437, 35.058483, 25.652285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235294, 34.799282, 26.303516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403530, 35.162029, 26.292984>,  <36.504471, 35.379677, 26.286665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403530, 35.162029, 26.292984>,  <36.235294, 34.799282, 26.303516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403530, 35.162029, 26.292984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108577, 0.079130, 0.990934,
		0.900730, -0.413917, 0.131746,
		0.420590, 0.906869, -0.026333,
		36.529709, 35.434090, 26.285084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667072, 34.811275, 26.894747>,  <36.235294, 34.799282, 26.303516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667072, 34.811275, 26.894747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590431, 35.195297, 26.813175>,  <36.544445, 35.425709, 26.764233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590431, 35.195297, 26.813175>,  <36.667072, 34.811275, 26.894747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590431, 35.195297, 26.813175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391074, 0.115894, 0.913033,
		0.900194, 0.254693, 0.353246,
		-0.191604, 0.960052, -0.203931,
		36.532951, 35.483315, 26.751995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847385, 35.210918, 27.587492>,  <36.667072, 34.811275, 26.894747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847385, 35.210918, 27.587492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.617878, 35.441280, 27.354557>,  <36.480171, 35.579498, 27.214796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.617878, 35.441280, 27.354557>,  <36.847385, 35.210918, 27.587492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617878, 35.441280, 27.354557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596830, 0.192915, 0.778831,
		0.560876, 0.794428, 0.233029,
		-0.573770, 0.575907, -0.582339,
		36.445747, 35.614052, 27.179855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.856945, 38.731297, 20.776909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.503845, 38.554779, 20.841434>,  <37.291985, 38.448868, 20.880150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.503845, 38.554779, 20.841434>,  <37.856945, 38.731297, 20.776909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503845, 38.554779, 20.841434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141288, -0.576752, -0.804609,
		0.448106, -0.687473, 0.571474,
		-0.882745, -0.441292, 0.161314,
		37.239021, 38.422390, 20.889828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908039, 38.000053, 20.873489>,  <37.856945, 38.731297, 20.776909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908039, 38.000053, 20.873489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534470, 38.058014, 20.742775>,  <37.310326, 38.092789, 20.664347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534470, 38.058014, 20.742775>,  <37.908039, 38.000053, 20.873489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534470, 38.058014, 20.742775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218040, -0.493508, -0.841967,
		-0.283269, -0.857586, 0.429307,
		-0.933926, 0.144897, -0.326784,
		37.254292, 38.101482, 20.644739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765434, 37.313099, 20.644857>,  <37.908039, 38.000053, 20.873489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765434, 37.313099, 20.644857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482410, 37.541061, 20.477730>,  <37.312595, 37.677837, 20.377453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482410, 37.541061, 20.477730>,  <37.765434, 37.313099, 20.644857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482410, 37.541061, 20.477730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149173, -0.457481, -0.876618,
		-0.690732, -0.682584, 0.238679,
		-0.707556, 0.569904, -0.417820,
		37.270142, 37.712032, 20.352385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273628, 36.897247, 20.337530>,  <37.765434, 37.313099, 20.644857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273628, 36.897247, 20.337530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206486, 37.228882, 20.124199>,  <37.166199, 37.427864, 19.996201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206486, 37.228882, 20.124199>,  <37.273628, 36.897247, 20.337530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206486, 37.228882, 20.124199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212244, -0.497921, -0.840849,
		-0.962692, -0.254340, -0.092388,
		-0.167859, 0.829087, -0.533327,
		37.156128, 37.477608, 19.964201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998425, 36.675522, 19.747335>,  <37.273628, 36.897247, 20.337530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998425, 36.675522, 19.747335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136364, 37.041065, 19.661600>,  <37.219128, 37.260391, 19.610159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136364, 37.041065, 19.661600>,  <36.998425, 36.675522, 19.747335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136364, 37.041065, 19.661600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135428, -0.274398, -0.952032,
		-0.928835, 0.299283, -0.218389,
		0.344853, 0.913857, -0.214340,
		37.239819, 37.315224, 19.597298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691883, 36.871635, 19.150333>,  <36.998425, 36.675522, 19.747335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691883, 36.871635, 19.150333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017704, 37.101501, 19.181982>,  <37.213196, 37.239422, 19.200972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.017704, 37.101501, 19.181982>,  <36.691883, 36.871635, 19.150333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017704, 37.101501, 19.181982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090690, 0.008567, -0.995842,
		-0.572956, 0.818342, -0.045138,
		0.814553, 0.574667, 0.079124,
		37.262070, 37.273903, 19.205719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667953, 37.376518, 18.608414>,  <36.691883, 36.871635, 19.150333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667953, 37.376518, 18.608414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048241, 37.342461, 18.727673>,  <37.276413, 37.322025, 18.799229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048241, 37.342461, 18.727673>,  <36.667953, 37.376518, 18.608414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048241, 37.342461, 18.727673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288000, -0.113786, -0.950846,
		0.114881, 0.989850, -0.083658,
		0.950715, -0.085141, 0.298149,
		37.333454, 37.316917, 18.817118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920692, 37.735779, 18.149923>,  <36.667953, 37.376518, 18.608414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920692, 37.735779, 18.149923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232800, 37.544945, 18.311695>,  <37.420063, 37.430443, 18.408758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232800, 37.544945, 18.311695>,  <36.920692, 37.735779, 18.149923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232800, 37.544945, 18.311695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392893, -0.129231, -0.910458,
		0.486634, 0.869302, 0.086610,
		0.780270, -0.477089, 0.404431,
		37.466881, 37.401817, 18.433025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543926, 37.965813, 17.743399>,  <36.920692, 37.735779, 18.149923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543926, 37.965813, 17.743399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639488, 37.610325, 17.899908>,  <37.696827, 37.397030, 17.993814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639488, 37.610325, 17.899908>,  <37.543926, 37.965813, 17.743399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639488, 37.610325, 17.899908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417746, -0.269683, -0.867617,
		0.876590, 0.370735, 0.306830,
		0.238909, -0.888722, 0.391274,
		37.711163, 37.343708, 18.017290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172390, 37.895504, 17.599327>,  <37.543926, 37.965813, 17.743399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172390, 37.895504, 17.599327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043690, 37.525517, 17.680229>,  <37.966469, 37.303524, 17.728771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043690, 37.525517, 17.680229>,  <38.172390, 37.895504, 17.599327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043690, 37.525517, 17.680229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507123, -0.348744, -0.788165,
		0.799565, -0.151022, 0.581281,
		-0.321749, -0.924970, 0.202257,
		37.947166, 37.248024, 17.740906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770283, 37.434441, 17.412960>,  <38.172390, 37.895504, 17.599327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770283, 37.434441, 17.412960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465759, 37.175171, 17.419727>,  <38.283047, 37.019611, 17.423788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465759, 37.175171, 17.419727>,  <38.770283, 37.434441, 17.412960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465759, 37.175171, 17.419727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318919, -0.397051, -0.860605,
		0.564538, -0.649788, 0.508992,
		-0.761307, -0.648171, 0.016921,
		38.237366, 36.980721, 17.424803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084709, 36.693375, 17.362455>,  <38.770283, 37.434441, 17.412960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084709, 36.693375, 17.362455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698475, 36.683655, 17.258871>,  <38.466736, 36.677822, 17.196720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698475, 36.683655, 17.258871>,  <39.084709, 36.693375, 17.362455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698475, 36.683655, 17.258871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208129, -0.669299, -0.713247,
		-0.155988, -0.742595, 0.651322,
		-0.965583, -0.024301, -0.258959,
		38.408798, 36.676365, 17.181183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888817, 36.028259, 17.119318>,  <39.084709, 36.693375, 17.362455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888817, 36.028259, 17.119318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646572, 36.286404, 16.933090>,  <38.501225, 36.441288, 16.821354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646572, 36.286404, 16.933090>,  <38.888817, 36.028259, 17.119318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646572, 36.286404, 16.933090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135203, -0.493105, -0.859399,
		-0.784193, -0.583405, 0.211374,
		-0.605608, 0.645356, -0.465568,
		38.464890, 36.480011, 16.793419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549316, 35.760815, 17.398071>,  <38.888817, 36.028259, 17.119318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549316, 35.760815, 17.398071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.618481, 35.967419, 17.062614>,  <39.659977, 36.091381, 16.861340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.618481, 35.967419, 17.062614>,  <39.549316, 35.760815, 17.398071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618481, 35.967419, 17.062614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972448, 0.045646, 0.228608,
		0.156359, -0.855064, -0.494387,
		0.172907, 0.516510, -0.838642,
		39.670353, 36.122372, 16.811022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813362, 35.415554, 16.774302>,  <39.549316, 35.760815, 17.398071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813362, 35.415554, 16.774302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809326, 35.018688, 16.824125>,  <39.806904, 34.780571, 16.854019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809326, 35.018688, 16.824125>,  <39.813362, 35.415554, 16.774302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809326, 35.018688, 16.824125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499098, 0.112938, 0.859154,
		-0.866487, -0.053494, -0.496326,
		-0.010095, -0.992161, 0.124558,
		39.806297, 34.721039, 16.861492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085693, 35.121498, 16.803764>,  <39.813362, 35.415554, 16.774302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085693, 35.121498, 16.803764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333111, 34.879791, 17.004667>,  <39.481560, 34.734768, 17.125210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333111, 34.879791, 17.004667>,  <39.085693, 35.121498, 16.803764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333111, 34.879791, 17.004667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548642, 0.125446, 0.826592,
		-0.562492, -0.786842, -0.253935,
		0.618542, -0.604271, 0.502257,
		39.518673, 34.698509, 17.155344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616192, 34.742142, 17.409998>,  <39.085693, 35.121498, 16.803764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616192, 34.742142, 17.409998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.000732, 34.701656, 17.512421>,  <39.231457, 34.677364, 17.573875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.000732, 34.701656, 17.512421>,  <38.616192, 34.742142, 17.409998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000732, 34.701656, 17.512421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270146, -0.167007, 0.948225,
		-0.053211, -0.980747, -0.187894,
		0.961348, -0.101214, 0.256058,
		39.289135, 34.671291, 17.589237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638565, 34.265587, 17.916237>,  <38.616192, 34.742142, 17.409998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638565, 34.265587, 17.916237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.997589, 34.437733, 17.954554>,  <39.213001, 34.541019, 17.977543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.997589, 34.437733, 17.954554>,  <38.638565, 34.265587, 17.916237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997589, 34.437733, 17.954554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032963, -0.151152, 0.987961,
		0.439663, -0.889909, -0.121482,
		0.897558, 0.430365, 0.095790,
		39.266857, 34.566841, 17.983290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986828, 33.793003, 18.549215>,  <38.638565, 34.265587, 17.916237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986828, 33.793003, 18.549215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.152573, 34.153858, 18.501141>,  <39.252018, 34.370373, 18.472296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.152573, 34.153858, 18.501141>,  <38.986828, 33.793003, 18.549215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152573, 34.153858, 18.501141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111473, 0.181370, 0.977077,
		0.903261, -0.391464, 0.175717,
		0.414360, 0.902143, -0.120187,
		39.276882, 34.424500, 18.465084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232670, 33.908501, 19.140533>,  <38.986828, 33.793003, 18.549215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232670, 33.908501, 19.140533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283779, 34.276417, 18.992126>,  <39.314445, 34.497166, 18.903082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283779, 34.276417, 18.992126>,  <39.232670, 33.908501, 19.140533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283779, 34.276417, 18.992126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016951, 0.376055, 0.926442,
		0.991659, -0.112085, 0.063641,
		0.127773, 0.919793, -0.371018,
		39.322109, 34.552353, 18.880821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869347, 34.227150, 19.478640>,  <39.232670, 33.908501, 19.140533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869347, 34.227150, 19.478640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619930, 34.511173, 19.347788>,  <39.470280, 34.681587, 19.269276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619930, 34.511173, 19.347788>,  <39.869347, 34.227150, 19.478640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619930, 34.511173, 19.347788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221161, 0.241137, 0.944955,
		0.749856, 0.661568, 0.006678,
		-0.623542, 0.710057, -0.327131,
		39.432869, 34.724190, 19.249649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050564, 34.886124, 19.825970>,  <39.869347, 34.227150, 19.478640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050564, 34.886124, 19.825970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673203, 34.919910, 19.697691>,  <39.446785, 34.940182, 19.620724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673203, 34.919910, 19.697691>,  <40.050564, 34.886124, 19.825970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673203, 34.919910, 19.697691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285979, 0.282435, 0.915667,
		0.167923, 0.955560, -0.242295,
		-0.943407, 0.084471, -0.320698,
		39.390179, 34.945251, 19.601482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810699, 35.475384, 20.130005>,  <40.050564, 34.886124, 19.825970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810699, 35.475384, 20.130005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468178, 35.287060, 20.045073>,  <39.262665, 35.174065, 19.994114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468178, 35.287060, 20.045073>,  <39.810699, 35.475384, 20.130005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468178, 35.287060, 20.045073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347668, 0.221445, 0.911092,
		-0.381928, 0.853993, -0.353309,
		-0.856305, -0.470806, -0.212330,
		39.211285, 35.145817, 19.981373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263149, 35.851551, 20.377739>,  <39.810699, 35.475384, 20.130005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263149, 35.851551, 20.377739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088936, 35.492222, 20.354691>,  <38.984409, 35.276623, 20.340862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088936, 35.492222, 20.354691>,  <39.263149, 35.851551, 20.377739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088936, 35.492222, 20.354691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428774, 0.150748, 0.890746,
		-0.791495, 0.412655, -0.450835,
		-0.435533, -0.898326, -0.057619,
		38.958275, 35.222725, 20.337404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703602, 36.005836, 20.599632>,  <39.263149, 35.851551, 20.377739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703602, 36.005836, 20.599632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677696, 35.606831, 20.610712>,  <38.662151, 35.367428, 20.617359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677696, 35.606831, 20.610712>,  <38.703602, 36.005836, 20.599632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677696, 35.606831, 20.610712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379952, 0.050316, 0.923637,
		-0.922736, 0.049295, -0.382267,
		-0.064765, -0.997516, 0.027698,
		38.658268, 35.307575, 20.619022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970245, 35.835690, 20.803394>,  <38.703602, 36.005836, 20.599632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970245, 35.835690, 20.803394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172115, 35.504299, 20.900499>,  <38.293236, 35.305466, 20.958763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172115, 35.504299, 20.900499>,  <37.970245, 35.835690, 20.803394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172115, 35.504299, 20.900499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392162, 0.030514, 0.919390,
		-0.769098, -0.559197, -0.309496,
		0.504676, -0.828473, 0.242764,
		38.323517, 35.255756, 20.973330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499802, 35.220776, 21.003866>,  <37.970245, 35.835690, 20.803394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499802, 35.220776, 21.003866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862377, 35.189075, 21.169796>,  <38.079922, 35.170055, 21.269354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862377, 35.189075, 21.169796>,  <37.499802, 35.220776, 21.003866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862377, 35.189075, 21.169796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421098, -0.094679, 0.902060,
		-0.032220, -0.992348, -0.119196,
		0.906443, -0.079258, 0.414825,
		38.134312, 35.165298, 21.294243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236904, 34.798344, 21.522957>,  <37.499802, 35.220776, 21.003866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236904, 34.798344, 21.522957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602688, 34.932076, 21.614155>,  <37.822159, 35.012314, 21.668873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602688, 34.932076, 21.614155>,  <37.236904, 34.798344, 21.522957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602688, 34.932076, 21.614155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313726, 0.229854, 0.921272,
		0.255619, -0.913991, 0.315085,
		0.914459, 0.334345, 0.227988,
		37.877026, 35.032375, 21.682552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103477, 34.092834, 21.242777>,  <37.236904, 34.798344, 21.522957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103477, 34.092834, 21.242777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.856800, 33.779881, 21.277546>,  <36.708794, 33.592106, 21.298407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.856800, 33.779881, 21.277546>,  <37.103477, 34.092834, 21.242777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856800, 33.779881, 21.277546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019778, -0.094983, -0.995282,
		0.786954, -0.615505, 0.043101,
		-0.616695, -0.782389, 0.086921,
		36.671791, 33.545162, 21.303621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495544, 33.548038, 20.951975>,  <37.103477, 34.092834, 21.242777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495544, 33.548038, 20.951975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.106209, 33.458443, 20.932238>,  <36.872608, 33.404686, 20.920395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.106209, 33.458443, 20.932238>,  <37.495544, 33.548038, 20.951975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106209, 33.458443, 20.932238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083579, -0.146034, -0.985743,
		0.213595, -0.963587, 0.160862,
		-0.973340, -0.223995, -0.049343,
		36.814205, 33.391243, 20.917435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553337, 32.946976, 20.529598>,  <37.495544, 33.548038, 20.951975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553337, 32.946976, 20.529598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166256, 33.047287, 20.539898>,  <36.934006, 33.107471, 20.546078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166256, 33.047287, 20.539898>,  <37.553337, 32.946976, 20.529598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166256, 33.047287, 20.539898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109830, -0.327450, -0.938464,
		-0.226911, -0.910982, 0.344416,
		-0.967703, 0.250775, 0.025751,
		36.875946, 33.122520, 20.547623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074028, 32.384548, 20.335573>,  <37.553337, 32.946976, 20.529598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074028, 32.384548, 20.335573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861053, 32.707596, 20.234180>,  <36.733269, 32.901424, 20.173344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861053, 32.707596, 20.234180>,  <37.074028, 32.384548, 20.335573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861053, 32.707596, 20.234180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162239, -0.391276, -0.905860,
		-0.830774, -0.441192, 0.339359,
		-0.532441, 0.807622, -0.253483,
		36.701321, 32.949883, 20.158136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512157, 32.168434, 19.880930>,  <37.074028, 32.384548, 20.335573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512157, 32.168434, 19.880930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563564, 32.552273, 19.780809>,  <36.594410, 32.782578, 19.720737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563564, 32.552273, 19.780809>,  <36.512157, 32.168434, 19.880930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563564, 32.552273, 19.780809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100329, -0.238520, -0.965941,
		-0.986619, 0.149253, 0.065622,
		0.128518, 0.959600, -0.250303,
		36.602119, 32.840153, 19.705719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100555, 32.271053, 19.246763>,  <36.512157, 32.168434, 19.880930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100555, 32.271053, 19.246763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331333, 32.597450, 19.261168>,  <36.469799, 32.793289, 19.269810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331333, 32.597450, 19.261168>,  <36.100555, 32.271053, 19.246763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331333, 32.597450, 19.261168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056064, 0.004420, -0.998417,
		-0.814856, 0.578051, -0.043198,
		0.576945, 0.815989, 0.036010,
		36.504417, 32.842247, 19.271971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827152, 32.673668, 18.652758>,  <36.100555, 32.271053, 19.246763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827152, 32.673668, 18.652758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.198418, 32.800190, 18.731209>,  <36.421177, 32.876102, 18.778278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.198418, 32.800190, 18.731209>,  <35.827152, 32.673668, 18.652758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198418, 32.800190, 18.731209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200537, 0.018892, -0.979504,
		-0.313526, 0.948470, -0.045895,
		0.928163, 0.316303, 0.196126,
		36.476868, 32.895081, 18.790047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068996, 33.059460, 18.665182>,  <35.827152, 32.673668, 18.652758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068996, 33.059460, 18.665182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891308, 32.732159, 18.519238>,  <34.784695, 32.535778, 18.431671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891308, 32.732159, 18.519238>,  <35.068996, 33.059460, 18.665182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891308, 32.732159, 18.519238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262177, -0.270697, 0.926276,
		-0.856696, 0.507134, -0.094277,
		-0.444225, -0.818253, -0.364863,
		34.758041, 32.486683, 18.409779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331081, 33.088535, 18.853195>,  <35.068996, 33.059460, 18.665182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331081, 33.088535, 18.853195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437496, 32.707184, 18.796206>,  <34.501347, 32.478374, 18.762011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437496, 32.707184, 18.796206>,  <34.331081, 33.088535, 18.853195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437496, 32.707184, 18.796206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405142, -0.244699, 0.880899,
		-0.874691, -0.176629, -0.451351,
		0.266037, -0.953375, -0.142476,
		34.517307, 32.421173, 18.753462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698738, 32.655403, 19.031927>,  <34.331081, 33.088535, 18.853195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698738, 32.655403, 19.031927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030125, 32.431690, 19.043575>,  <34.228954, 32.297462, 19.050564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030125, 32.431690, 19.043575>,  <33.698738, 32.655403, 19.031927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030125, 32.431690, 19.043575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184987, -0.224200, 0.956825,
		-0.528610, -0.798081, -0.289202,
		0.828463, -0.559286, 0.029121,
		34.278664, 32.263905, 19.052311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433475, 32.015457, 19.410183>,  <33.698738, 32.655403, 19.031927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433475, 32.015457, 19.410183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829849, 31.962799, 19.420876>,  <34.067673, 31.931206, 19.427292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829849, 31.962799, 19.420876>,  <33.433475, 32.015457, 19.410183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829849, 31.962799, 19.420876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072757, -0.358699, 0.930613,
		-0.112918, -0.924124, -0.365026,
		0.990937, -0.131641, 0.026733,
		34.127129, 31.923307, 19.428896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515091, 31.404270, 19.714930>,  <33.433475, 32.015457, 19.410183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515091, 31.404270, 19.714930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.881798, 31.561045, 19.745733>,  <34.101822, 31.655109, 19.764215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.881798, 31.561045, 19.745733>,  <33.515091, 31.404270, 19.714930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881798, 31.561045, 19.745733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043379, -0.289355, 0.956238,
		0.397070, -0.873303, -0.282272,
		0.916763, 0.391938, 0.077012,
		34.156826, 31.678627, 19.768837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064850, 30.823912, 19.907782>,  <33.515091, 31.404270, 19.714930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064850, 30.823912, 19.907782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202991, 31.182056, 20.020247>,  <34.285877, 31.396944, 20.087725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202991, 31.182056, 20.020247>,  <34.064850, 30.823912, 19.907782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202991, 31.182056, 20.020247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185865, -0.358917, 0.914676,
		0.919882, -0.263632, -0.290371,
		0.345357, 0.895364, 0.281161,
		34.306599, 31.450666, 20.104595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700722, 30.717133, 20.328165>,  <34.064850, 30.823912, 19.907782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700722, 30.717133, 20.328165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574547, 31.084684, 20.422955>,  <34.498840, 31.305216, 20.479828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574547, 31.084684, 20.422955>,  <34.700722, 30.717133, 20.328165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574547, 31.084684, 20.422955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165676, -0.192563, 0.967197,
		0.934372, 0.344351, -0.091495,
		-0.315437, 0.918881, 0.236976,
		34.479916, 31.360348, 20.494047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.148224, 35.381351, 16.218559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514427, 35.542259, 16.216507>,  <35.734150, 35.638805, 16.215277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514427, 35.542259, 16.216507>,  <35.148224, 35.381351, 16.218559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514427, 35.542259, 16.216507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038194, 0.099600, 0.994294,
		0.400485, -0.910087, 0.106549,
		0.915507, 0.402270, -0.005129,
		35.789078, 35.662941, 16.214968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529415, 34.984547, 16.689833>,  <35.148224, 35.381351, 16.218559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529415, 34.984547, 16.689833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.650269, 35.363110, 16.644188>,  <35.722778, 35.590248, 16.616800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.650269, 35.363110, 16.644188>,  <35.529415, 34.984547, 16.689833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650269, 35.363110, 16.644188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120030, 0.080987, 0.989461,
		0.945679, -0.312644, -0.089129,
		0.302131, 0.946411, -0.114114,
		35.740910, 35.647034, 16.609953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011517, 35.051014, 17.126034>,  <35.529415, 34.984547, 16.689833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011517, 35.051014, 17.126034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.901691, 35.429707, 17.058714>,  <35.835796, 35.656921, 17.018322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.901691, 35.429707, 17.058714>,  <36.011517, 35.051014, 17.126034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901691, 35.429707, 17.058714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028546, 0.182974, 0.982703,
		0.961147, 0.265006, -0.077262,
		-0.274559, 0.946727, -0.168300,
		35.819324, 35.713726, 17.008224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551273, 35.451847, 17.453320>,  <36.011517, 35.051014, 17.126034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551273, 35.451847, 17.453320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.225895, 35.681995, 17.419249>,  <36.030666, 35.820084, 17.398806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.225895, 35.681995, 17.419249>,  <36.551273, 35.451847, 17.453320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225895, 35.681995, 17.419249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071128, 0.243749, 0.967227,
		0.577272, 0.780730, -0.239202,
		-0.813448, 0.575367, -0.085178,
		35.981861, 35.854607, 17.393696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651417, 35.976646, 17.953283>,  <36.551273, 35.451847, 17.453320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651417, 35.976646, 17.953283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260376, 36.029758, 17.887972>,  <36.025749, 36.061626, 17.848785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260376, 36.029758, 17.887972>,  <36.651417, 35.976646, 17.953283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260376, 36.029758, 17.887972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139065, 0.174746, 0.974743,
		0.157961, 0.975619, -0.152367,
		-0.977604, 0.132783, -0.163278,
		35.967094, 36.069592, 17.838989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449646, 36.664673, 18.356575>,  <36.651417, 35.976646, 17.953283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449646, 36.664673, 18.356575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.139877, 36.419151, 18.295233>,  <35.954018, 36.271839, 18.258427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.139877, 36.419151, 18.295233>,  <36.449646, 36.664673, 18.356575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139877, 36.419151, 18.295233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287529, 0.125535, 0.949509,
		-0.563559, 0.779415, -0.273703,
		-0.774421, -0.613802, -0.153358,
		35.907551, 36.235012, 18.249226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890419, 37.013409, 18.735729>,  <36.449646, 36.664673, 18.356575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890419, 37.013409, 18.735729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.792847, 36.629280, 18.681656>,  <35.734303, 36.398804, 18.649212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.792847, 36.629280, 18.681656>,  <35.890419, 37.013409, 18.735729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792847, 36.629280, 18.681656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589601, 0.036177, 0.806884,
		-0.769981, 0.276525, -0.575034,
		-0.243926, -0.960325, -0.135184,
		35.719669, 36.341183, 18.641100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180977, 36.966164, 18.877172>,  <35.890419, 37.013409, 18.735729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180977, 36.966164, 18.877172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.300613, 36.586006, 18.911360>,  <35.372395, 36.357914, 18.931873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.300613, 36.586006, 18.911360>,  <35.180977, 36.966164, 18.877172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300613, 36.586006, 18.911360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598350, -0.117018, 0.792644,
		-0.743319, -0.288211, -0.603665,
		0.299088, -0.950390, 0.085470,
		35.390339, 36.300888, 18.937000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588543, 36.645760, 18.799671>,  <35.180977, 36.966164, 18.877172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588543, 36.645760, 18.799671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.845486, 36.397854, 18.980019>,  <34.999649, 36.249111, 19.088226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.845486, 36.397854, 18.980019>,  <34.588543, 36.645760, 18.799671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845486, 36.397854, 18.980019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654032, -0.136602, 0.744031,
		-0.399531, -0.772811, -0.493089,
		0.642352, -0.619760, 0.450867,
		35.038193, 36.211926, 19.115278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202843, 36.198952, 19.052765>,  <34.588543, 36.645760, 18.799671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202843, 36.198952, 19.052765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527592, 36.139858, 19.278700>,  <34.722443, 36.104401, 19.414261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527592, 36.139858, 19.278700>,  <34.202843, 36.198952, 19.052765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527592, 36.139858, 19.278700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568313, 0.021625, 0.822528,
		-0.133729, -0.988791, -0.066402,
		0.811872, -0.147733, 0.564835,
		34.771152, 36.095539, 19.448151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011677, 35.708630, 19.435734>,  <34.202843, 36.198952, 19.052765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011677, 35.708630, 19.435734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.326500, 35.845356, 19.641142>,  <34.515392, 35.927391, 19.764387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.326500, 35.845356, 19.641142>,  <34.011677, 35.708630, 19.435734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326500, 35.845356, 19.641142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582491, 0.137742, 0.801081,
		0.203088, -0.929618, 0.307515,
		0.787057, 0.341814, 0.513521,
		34.562618, 35.947899, 19.795198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977821, 35.348248, 20.085546>,  <34.011677, 35.708630, 19.435734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977821, 35.348248, 20.085546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184238, 35.688725, 20.123863>,  <34.308086, 35.893009, 20.146852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184238, 35.688725, 20.123863>,  <33.977821, 35.348248, 20.085546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184238, 35.688725, 20.123863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408719, 0.146409, 0.900841,
		0.752764, -0.504020, 0.423451,
		0.516039, 0.851192, 0.095791,
		34.339050, 35.944080, 20.152601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976536, 34.632126, 20.057491>,  <33.977821, 35.348248, 20.085546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976536, 34.632126, 20.057491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636288, 34.430115, 20.116007>,  <33.432140, 34.308910, 20.151115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636288, 34.430115, 20.116007>,  <33.976536, 34.632126, 20.057491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636288, 34.430115, 20.116007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139968, -0.050688, -0.988858,
		0.506812, -0.861615, -0.027571,
		-0.850617, -0.505024, 0.146288,
		33.381104, 34.278606, 20.159893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037689, 34.067020, 19.471964>,  <33.976536, 34.632126, 20.057491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037689, 34.067020, 19.471964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.651466, 34.114941, 19.564354>,  <33.419731, 34.143692, 19.619789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.651466, 34.114941, 19.564354>,  <34.037689, 34.067020, 19.471964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651466, 34.114941, 19.564354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253388, -0.231197, -0.939331,
		-0.059128, -0.965503, 0.253589,
		-0.965556, 0.119797, 0.230977,
		33.361801, 34.150879, 19.633646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751663, 33.488712, 19.113840>,  <34.037689, 34.067020, 19.471964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751663, 33.488712, 19.113840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.449215, 33.731731, 19.211140>,  <33.267746, 33.877541, 19.269520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.449215, 33.731731, 19.211140>,  <33.751663, 33.488712, 19.113840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449215, 33.731731, 19.211140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397869, -0.131648, -0.907948,
		-0.519595, -0.783301, 0.341264,
		-0.756123, 0.607544, 0.243247,
		33.222378, 33.913994, 19.284113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125347, 33.193626, 18.928099>,  <33.751663, 33.488712, 19.113840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125347, 33.193626, 18.928099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.045914, 33.585293, 18.945045>,  <32.998253, 33.820293, 18.955214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.045914, 33.585293, 18.945045>,  <33.125347, 33.193626, 18.928099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045914, 33.585293, 18.945045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523053, -0.069323, -0.849477,
		-0.828843, -0.190854, 0.525923,
		-0.198584, 0.979167, 0.042369,
		32.986340, 33.879044, 18.957756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321323, 33.264622, 18.855284>,  <33.125347, 33.193626, 18.928099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321323, 33.264622, 18.855284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488277, 33.609093, 18.739246>,  <32.588451, 33.815777, 18.669624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488277, 33.609093, 18.739246>,  <32.321323, 33.264622, 18.855284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488277, 33.609093, 18.739246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507826, -0.043684, -0.860352,
		-0.753591, 0.506417, 0.419097,
		0.417389, 0.861182, -0.290091,
		32.613495, 33.867447, 18.652220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857441, 33.568653, 18.324638>,  <32.321323, 33.264622, 18.855284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857441, 33.568653, 18.324638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182323, 33.791767, 18.256298>,  <32.377254, 33.925636, 18.215294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182323, 33.791767, 18.256298>,  <31.857441, 33.568653, 18.324638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182323, 33.791767, 18.256298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173159, -0.049153, -0.983666,
		-0.557076, 0.828526, 0.056664,
		0.812208, 0.557788, -0.170849,
		32.425987, 33.959103, 18.205044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594448, 34.194221, 18.072823>,  <31.857441, 33.568653, 18.324638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594448, 34.194221, 18.072823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978786, 34.196213, 17.962009>,  <32.209389, 34.197407, 17.895521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978786, 34.196213, 17.962009>,  <31.594448, 34.194221, 18.072823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978786, 34.196213, 17.962009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274594, -0.116511, -0.954475,
		-0.037025, 0.993177, -0.110584,
		0.960847, 0.004974, -0.277034,
		32.267040, 34.197704, 17.878899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635653, 34.617996, 17.372992>,  <31.594448, 34.194221, 18.072823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635653, 34.617996, 17.372992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962538, 34.389378, 17.402643>,  <32.158669, 34.252205, 17.420433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962538, 34.389378, 17.402643>,  <31.635653, 34.617996, 17.372992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962538, 34.389378, 17.402643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102062, -0.270103, -0.957407,
		0.567225, 0.774841, -0.279065,
		0.817214, -0.571547, 0.074128,
		32.207703, 34.217915, 17.424881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954014, 34.723293, 16.616169>,  <31.635653, 34.617996, 17.372992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954014, 34.723293, 16.616169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.168957, 34.426548, 16.776615>,  <32.297920, 34.248501, 16.872883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.168957, 34.426548, 16.776615>,  <31.954014, 34.723293, 16.616169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168957, 34.426548, 16.776615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045509, -0.500433, -0.864578,
		0.842127, 0.446332, -0.302672,
		0.537356, -0.741859, 0.401116,
		32.330162, 34.203991, 16.896950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491566, 34.601376, 16.116350>,  <31.954014, 34.723293, 16.616169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491566, 34.601376, 16.116350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.422935, 34.266209, 16.323603>,  <32.381756, 34.065109, 16.447954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.422935, 34.266209, 16.323603>,  <32.491566, 34.601376, 16.116350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422935, 34.266209, 16.323603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015261, -0.523607, -0.851823,
		0.985053, -0.154060, 0.077052,
		-0.171576, -0.837915, 0.518131,
		32.371464, 34.014835, 16.479042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022015, 34.096813, 15.933260>,  <32.491566, 34.601376, 16.116350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022015, 34.096813, 15.933260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.720455, 33.884392, 16.087984>,  <32.539520, 33.756939, 16.180819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.720455, 33.884392, 16.087984>,  <33.022015, 34.096813, 15.933260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720455, 33.884392, 16.087984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041863, -0.548731, -0.834951,
		0.655660, -0.645658, 0.391454,
		-0.753895, -0.531056, 0.386810,
		32.494286, 33.725075, 16.204027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211533, 33.437065, 15.849329>,  <33.022015, 34.096813, 15.933260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211533, 33.437065, 15.849329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.812431, 33.416710, 15.866767>,  <32.572971, 33.404495, 15.877230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.812431, 33.416710, 15.866767>,  <33.211533, 33.437065, 15.849329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812431, 33.416710, 15.866767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017654, -0.427971, -0.903620,
		0.064641, -0.902359, 0.426111,
		-0.997753, -0.050888, 0.043594,
		32.513107, 33.401443, 15.879846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032413, 32.770714, 15.508234>,  <33.211533, 33.437065, 15.849329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032413, 32.770714, 15.508234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692467, 32.981331, 15.499569>,  <32.488499, 33.107700, 15.494370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692467, 32.981331, 15.499569>,  <33.032413, 32.770714, 15.508234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692467, 32.981331, 15.499569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235717, -0.416579, -0.878008,
		-0.471337, -0.741086, 0.478154,
		-0.849870, 0.526547, -0.021663,
		32.437504, 33.139294, 15.493071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507729, 32.224064, 15.434464>,  <33.032413, 32.770714, 15.508234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507729, 32.224064, 15.434464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.372997, 32.579552, 15.310057>,  <32.292160, 32.792843, 15.235412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.372997, 32.579552, 15.310057>,  <32.507729, 32.224064, 15.434464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372997, 32.579552, 15.310057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304268, -0.415335, -0.857274,
		-0.891050, -0.194119, 0.410303,
		-0.336826, 0.888715, -0.311020,
		32.271950, 32.846165, 15.216751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263863, 31.933762, 15.450500>,  <32.507729, 32.224064, 15.434464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263863, 31.933762, 15.450500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662338, 31.945723, 15.483261>,  <33.901424, 31.952900, 15.502918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662338, 31.945723, 15.483261>,  <33.263863, 31.933762, 15.450500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662338, 31.945723, 15.483261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084809, 0.114243, 0.989826,
		0.020241, -0.993003, 0.116343,
		0.996192, 0.029902, 0.081903,
		33.961197, 31.954693, 15.507832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581692, 31.506500, 16.089342>,  <33.263863, 31.933762, 15.450500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581692, 31.506500, 16.089342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.893658, 31.730160, 15.976857>,  <34.080837, 31.864355, 15.909367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.893658, 31.730160, 15.976857>,  <33.581692, 31.506500, 16.089342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893658, 31.730160, 15.976857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329181, 0.015683, 0.944137,
		0.532324, -0.828918, -0.171831,
		0.779917, 0.559150, -0.281213,
		34.127632, 31.897905, 15.892493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110130, 31.205757, 16.453371>,  <33.581692, 31.506500, 16.089342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110130, 31.205757, 16.453371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.246120, 31.568047, 16.352114>,  <34.327713, 31.785421, 16.291359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.246120, 31.568047, 16.352114>,  <34.110130, 31.205757, 16.453371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246120, 31.568047, 16.352114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379670, 0.114078, 0.918061,
		0.860389, -0.408226, -0.305093,
		0.339972, 0.905725, -0.253142,
		34.348110, 31.839764, 16.276171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733063, 31.236795, 16.772116>,  <34.110130, 31.205757, 16.453371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733063, 31.236795, 16.772116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.638397, 31.623770, 16.736206>,  <34.581596, 31.855955, 16.714661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.638397, 31.623770, 16.736206>,  <34.733063, 31.236795, 16.772116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638397, 31.623770, 16.736206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308318, 0.162403, 0.937318,
		0.921375, 0.194149, -0.336712,
		-0.236663, 0.967435, -0.089775,
		34.567398, 31.914000, 16.709274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296505, 31.580976, 17.121191>,  <34.733063, 31.236795, 16.772116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296505, 31.580976, 17.121191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.017750, 31.867538, 17.107904>,  <34.850494, 32.039474, 17.099934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.017750, 31.867538, 17.107904>,  <35.296505, 31.580976, 17.121191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017750, 31.867538, 17.107904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163800, 0.204085, 0.965152,
		0.698220, 0.667167, -0.259572,
		-0.696892, 0.716406, -0.033214,
		34.808681, 32.082458, 17.097940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516109, 32.221809, 17.375711>,  <35.296505, 31.580976, 17.121191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516109, 32.221809, 17.375711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.117958, 32.248215, 17.403584>,  <34.879066, 32.264057, 17.420307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.117958, 32.248215, 17.403584>,  <35.516109, 32.221809, 17.375711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117958, 32.248215, 17.403584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080834, 0.185079, 0.979393,
		0.051753, 0.980504, -0.189560,
		-0.995383, 0.066009, 0.069680,
		34.819344, 32.268017, 17.424488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506889, 32.576187, 17.968454>,  <35.516109, 32.221809, 17.375711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506889, 32.576187, 17.968454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.136517, 32.429344, 17.932940>,  <34.914291, 32.341240, 17.911631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.136517, 32.429344, 17.932940>,  <35.506889, 32.576187, 17.968454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136517, 32.429344, 17.932940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159454, 0.166856, 0.973002,
		-0.342381, 0.915091, -0.213033,
		-0.925932, -0.367106, -0.088787,
		34.858738, 32.319214, 17.906303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975410, 33.292664, 17.987627>,  <35.506889, 32.576187, 17.968454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975410, 33.292664, 17.987627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329311, 33.235619, 18.165110>,  <36.541653, 33.201389, 18.271599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329311, 33.235619, 18.165110>,  <35.975410, 33.292664, 17.987627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329311, 33.235619, 18.165110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455001, 0.058125, -0.888592,
		0.100936, 0.988070, 0.116316,
		0.884752, -0.142615, 0.443707,
		36.594738, 33.192833, 18.298222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467697, 33.763535, 17.772280>,  <35.975410, 33.292664, 17.987627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467697, 33.763535, 17.772280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.710236, 33.463524, 17.877968>,  <36.855759, 33.283520, 17.941381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.710236, 33.463524, 17.877968>,  <36.467697, 33.763535, 17.772280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710236, 33.463524, 17.877968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378190, -0.020299, -0.925505,
		0.699513, 0.661100, 0.271343,
		0.606344, -0.750023, 0.264221,
		36.892139, 33.238518, 17.957233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083153, 33.933746, 17.406366>,  <36.467697, 33.763535, 17.772280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083153, 33.933746, 17.406366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115837, 33.542385, 17.482306>,  <37.135448, 33.307568, 17.527870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115837, 33.542385, 17.482306>,  <37.083153, 33.933746, 17.406366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115837, 33.542385, 17.482306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567425, -0.110932, -0.815919,
		0.819361, 0.174396, 0.546108,
		0.081712, -0.978407, 0.189850,
		37.140350, 33.248863, 17.539261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914246, 33.798473, 17.521675>,  <37.083153, 33.933746, 17.406366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914246, 33.798473, 17.521675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.723000, 33.471432, 17.393341>,  <37.608253, 33.275208, 17.316339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.723000, 33.471432, 17.393341>,  <37.914246, 33.798473, 17.521675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723000, 33.471432, 17.393341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617733, -0.053360, -0.784576,
		0.624349, -0.573310, 0.530570,
		-0.478116, -0.817600, -0.320837,
		37.579563, 33.226151, 17.297091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400780, 33.491264, 17.293951>,  <37.914246, 33.798473, 17.521675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400780, 33.491264, 17.293951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112011, 33.263237, 17.137054>,  <37.938751, 33.126423, 17.042917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112011, 33.263237, 17.137054>,  <38.400780, 33.491264, 17.293951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112011, 33.263237, 17.137054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591205, -0.213563, -0.777732,
		0.359590, -0.793357, 0.491201,
		-0.721922, -0.570066, -0.392242,
		37.895435, 33.092216, 17.019382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601974, 32.673927, 17.136068>,  <38.400780, 33.491264, 17.293951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601974, 32.673927, 17.136068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.304882, 32.777561, 16.889095>,  <38.126625, 32.839741, 16.740911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.304882, 32.777561, 16.889095>,  <38.601974, 32.673927, 17.136068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304882, 32.777561, 16.889095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462589, -0.468137, -0.752900,
		-0.484114, -0.844819, 0.227846,
		-0.742728, 0.259091, -0.617436,
		38.082062, 32.855286, 16.703865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591278, 32.139736, 16.692421>,  <38.601974, 32.673927, 17.136068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591278, 32.139736, 16.692421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.381340, 32.422092, 16.502157>,  <38.255379, 32.591507, 16.387999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.381340, 32.422092, 16.502157>,  <38.591278, 32.139736, 16.692421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381340, 32.422092, 16.502157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461608, -0.233467, -0.855810,
		-0.715163, -0.668734, -0.203314,
		-0.524843, 0.705895, -0.475660,
		38.223888, 32.633862, 16.359459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429249, 31.799784, 16.158194>,  <38.591278, 32.139736, 16.692421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429249, 31.799784, 16.158194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389317, 32.175556, 16.027040>,  <38.365356, 32.401020, 15.948348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389317, 32.175556, 16.027040>,  <38.429249, 31.799784, 16.158194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389317, 32.175556, 16.027040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370431, -0.270753, -0.888523,
		-0.923480, -0.210156, -0.320966,
		-0.099826, 0.939429, -0.327884,
		38.359367, 32.457386, 15.928676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268944, 31.697374, 15.437936>,  <38.429249, 31.799784, 16.158194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268944, 31.697374, 15.437936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384445, 32.077881, 15.481225>,  <38.453747, 32.306187, 15.507198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384445, 32.077881, 15.481225>,  <38.268944, 31.697374, 15.437936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384445, 32.077881, 15.481225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641150, -0.108181, -0.759752,
		-0.711020, 0.288767, -0.641143,
		0.288751, 0.951268, 0.108224,
		38.471069, 32.363262, 15.513692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.015423, 32.779282, 30.667355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097488, 33.161369, 30.582067>,  <33.146729, 33.390621, 30.530895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097488, 33.161369, 30.582067>,  <33.015423, 32.779282, 30.667355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097488, 33.161369, 30.582067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180974, -0.251118, -0.950888,
		-0.961850, 0.156501, -0.224390,
		0.205164, 0.955221, -0.213215,
		33.159039, 33.447937, 30.518103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487228, 33.049541, 30.037004>,  <33.015423, 32.779282, 30.667355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487228, 33.049541, 30.037004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819382, 33.271324, 30.059048>,  <33.018673, 33.404396, 30.072273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819382, 33.271324, 30.059048>,  <32.487228, 33.049541, 30.037004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819382, 33.271324, 30.059048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245480, -0.275255, -0.929502,
		-0.500201, 0.785372, -0.364676,
		0.830384, 0.554459, 0.055110,
		33.068497, 33.437660, 30.075581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516163, 33.353676, 29.484360>,  <32.487228, 33.049541, 30.037004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516163, 33.353676, 29.484360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901627, 33.385624, 29.586317>,  <33.132904, 33.404793, 29.647491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901627, 33.385624, 29.586317>,  <32.516163, 33.353676, 29.484360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901627, 33.385624, 29.586317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262134, -0.099317, -0.959907,
		-0.051357, 0.991845, -0.116646,
		0.963664, 0.079875, 0.254896,
		33.190727, 33.409588, 29.662786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839409, 33.819843, 29.000996>,  <32.516163, 33.353676, 29.484360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839409, 33.819843, 29.000996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149757, 33.641247, 29.179283>,  <33.335968, 33.534088, 29.286255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149757, 33.641247, 29.179283>,  <32.839409, 33.819843, 29.000996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149757, 33.641247, 29.179283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463235, -0.076435, -0.882933,
		0.428291, 0.891517, 0.147526,
		0.775874, -0.446492, 0.445718,
		33.382519, 33.507298, 29.312998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455166, 34.205925, 28.846987>,  <32.839409, 33.819843, 29.000996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455166, 34.205925, 28.846987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620064, 33.852600, 28.936260>,  <33.719002, 33.640606, 28.989824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620064, 33.852600, 28.936260>,  <33.455166, 34.205925, 28.846987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620064, 33.852600, 28.936260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442201, -0.020187, -0.896689,
		0.796563, 0.468346, 0.382281,
		0.412244, -0.883314, 0.223183,
		33.743736, 33.587605, 29.003216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051838, 34.318428, 28.558489>,  <33.455166, 34.205925, 28.846987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051838, 34.318428, 28.558489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043076, 33.922012, 28.611195>,  <34.037819, 33.684162, 28.642818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043076, 33.922012, 28.611195>,  <34.051838, 34.318428, 28.558489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043076, 33.922012, 28.611195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568280, -0.120774, -0.813923,
		0.822544, 0.057051, 0.565833,
		-0.021903, -0.991039, 0.131763,
		34.036503, 33.624702, 28.650723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709213, 34.035999, 28.361094>,  <34.051838, 34.318428, 28.558489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709213, 34.035999, 28.361094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506638, 33.691193, 28.352703>,  <34.385094, 33.484306, 28.347670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506638, 33.691193, 28.352703>,  <34.709213, 34.035999, 28.361094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506638, 33.691193, 28.352703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612142, -0.342290, -0.712825,
		0.607291, -0.373842, 0.701028,
		-0.506439, -0.862021, -0.020974,
		34.354706, 33.432587, 28.346411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135056, 33.464272, 28.523640>,  <34.709213, 34.035999, 28.361094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135056, 33.464272, 28.523640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837040, 33.319859, 28.299295>,  <34.658230, 33.233212, 28.164688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837040, 33.319859, 28.299295>,  <35.135056, 33.464272, 28.523640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837040, 33.319859, 28.299295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660697, -0.514920, -0.546202,
		-0.091603, -0.777504, 0.622171,
		-0.745042, -0.361033, -0.560863,
		34.613525, 33.211548, 28.131037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249149, 32.721081, 28.495567>,  <35.135056, 33.464272, 28.523640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249149, 32.721081, 28.495567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017174, 32.819729, 28.184992>,  <34.877991, 32.878918, 27.998648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017174, 32.819729, 28.184992>,  <35.249149, 32.721081, 28.495567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017174, 32.819729, 28.184992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646656, -0.440323, -0.622858,
		-0.495490, -0.863305, 0.095882,
		-0.579936, 0.246618, -0.776437,
		34.843193, 32.893715, 27.952061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402153, 32.213192, 28.074076>,  <35.249149, 32.721081, 28.495567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402153, 32.213192, 28.074076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.206657, 32.480293, 27.849489>,  <35.089359, 32.640553, 27.714737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.206657, 32.480293, 27.849489>,  <35.402153, 32.213192, 28.074076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206657, 32.480293, 27.849489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431367, -0.374432, -0.820806,
		-0.758325, -0.643358, -0.105046,
		-0.488739, 0.667751, -0.561464,
		35.060036, 32.680618, 27.681049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197517, 31.873152, 27.433968>,  <35.402153, 32.213192, 28.074076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197517, 31.873152, 27.433968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204723, 32.269585, 27.381155>,  <35.209045, 32.507442, 27.349466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204723, 32.269585, 27.381155>,  <35.197517, 31.873152, 27.433968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204723, 32.269585, 27.381155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355703, -0.129768, -0.925546,
		-0.934426, -0.030289, -0.354868,
		0.018016, 0.991082, -0.132033,
		35.210129, 32.566910, 27.341545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883904, 32.068569, 26.750336>,  <35.197517, 31.873152, 27.433968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883904, 32.068569, 26.750336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.101124, 32.391373, 26.843142>,  <35.231457, 32.585056, 26.898825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.101124, 32.391373, 26.843142>,  <34.883904, 32.068569, 26.750336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101124, 32.391373, 26.843142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476753, -0.068873, -0.876335,
		-0.691231, 0.586509, -0.422146,
		0.543052, 0.807009, 0.232013,
		35.264038, 32.633476, 26.912745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141239, 32.209980, 26.467833>,  <34.883904, 32.068569, 26.750336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141239, 32.209980, 26.467833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046520, 31.823833, 26.424038>,  <33.989689, 31.592144, 26.397760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046520, 31.823833, 26.424038>,  <34.141239, 32.209980, 26.467833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046520, 31.823833, 26.424038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151840, -0.074537, 0.985591,
		-0.959620, 0.250012, -0.128932,
		-0.236799, -0.965370, -0.109489,
		33.975479, 31.534222, 26.391191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479168, 32.096161, 26.751293>,  <34.141239, 32.209980, 26.467833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479168, 32.096161, 26.751293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609692, 31.719067, 26.778910>,  <33.688007, 31.492809, 26.795479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609692, 31.719067, 26.778910>,  <33.479168, 32.096161, 26.751293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609692, 31.719067, 26.778910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355259, -0.054625, 0.933170,
		-0.875964, -0.329029, -0.352741,
		0.326309, -0.942738, 0.069041,
		33.707584, 31.436245, 26.799622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969208, 31.826056, 27.095694>,  <33.479168, 32.096161, 26.751293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969208, 31.826056, 27.095694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260277, 31.559639, 27.161282>,  <33.434917, 31.399790, 27.200634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260277, 31.559639, 27.161282>,  <32.969208, 31.826056, 27.095694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260277, 31.559639, 27.161282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357082, -0.163725, 0.919612,
		-0.585653, -0.727725, -0.356969,
		0.727670, -0.666040, 0.163971,
		33.478577, 31.359827, 27.210474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609592, 31.214489, 27.159893>,  <32.969208, 31.826056, 27.095694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609592, 31.214489, 27.159893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.956673, 31.130224, 27.339987>,  <33.164921, 31.079664, 27.448042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.956673, 31.130224, 27.339987>,  <32.609592, 31.214489, 27.159893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956673, 31.130224, 27.339987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496932, -0.389799, 0.775316,
		0.012170, -0.896481, -0.442915,
		0.867704, -0.210663, 0.450234,
		33.216984, 31.067024, 27.475058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755703, 30.388256, 27.400286>,  <32.609592, 31.214489, 27.159893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755703, 30.388256, 27.400286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929020, 30.666311, 27.629734>,  <33.033009, 30.833145, 27.767403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929020, 30.666311, 27.629734>,  <32.755703, 30.388256, 27.400286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929020, 30.666311, 27.629734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523037, -0.324374, 0.788172,
		0.733957, -0.641531, 0.223036,
		0.433289, 0.695140, 0.573620,
		33.059006, 30.874853, 27.801821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429485, 30.205729, 27.929207>,  <32.755703, 30.388256, 27.400286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429485, 30.205729, 27.929207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663204, 30.497173, 28.072159>,  <32.803436, 30.672041, 28.157930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663204, 30.497173, 28.072159>,  <32.429485, 30.205729, 27.929207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663204, 30.497173, 28.072159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372715, -0.150254, 0.915700,
		0.720889, -0.668242, 0.183771,
		0.584297, 0.728612, 0.357380,
		32.838493, 30.715757, 28.179373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753082, 29.981802, 28.557663>,  <32.429485, 30.205729, 27.929207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753082, 29.981802, 28.557663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781006, 30.375759, 28.621052>,  <32.797760, 30.612133, 28.659084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781006, 30.375759, 28.621052>,  <32.753082, 29.981802, 28.557663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781006, 30.375759, 28.621052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612993, -0.082976, 0.785719,
		0.786998, -0.151992, 0.597940,
		0.069808, 0.984893, 0.158472,
		32.801949, 30.671227, 28.668594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807240, 30.164614, 29.313623>,  <32.753082, 29.981802, 28.557663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807240, 30.164614, 29.313623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696571, 30.522118, 29.172400>,  <32.630169, 30.736620, 29.087666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696571, 30.522118, 29.172400>,  <32.807240, 30.164614, 29.313623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696571, 30.522118, 29.172400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665539, 0.086810, 0.741297,
		0.693189, 0.440070, 0.570813,
		-0.276670, 0.893758, -0.353059,
		32.613571, 30.790245, 29.066483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818291, 30.653664, 29.930580>,  <32.807240, 30.164614, 29.313623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818291, 30.653664, 29.930580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573322, 30.804876, 29.652866>,  <32.426342, 30.895605, 29.486238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573322, 30.804876, 29.652866>,  <32.818291, 30.653664, 29.930580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573322, 30.804876, 29.652866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716092, 0.106762, 0.689793,
		0.334887, 0.919616, 0.205322,
		-0.612424, 0.378033, -0.694282,
		32.389595, 30.918285, 29.444582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421394, 31.261898, 30.233875>,  <32.818291, 30.653664, 29.930580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421394, 31.261898, 30.233875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202965, 31.148092, 29.918697>,  <32.071907, 31.079809, 29.729591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202965, 31.148092, 29.918697>,  <32.421394, 31.261898, 30.233875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202965, 31.148092, 29.918697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829424, 0.051452, 0.556245,
		-0.117719, 0.957290, -0.264080,
		-0.546075, -0.284515, -0.787943,
		32.039143, 31.062738, 29.682314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970026, 31.807627, 30.198496>,  <32.421394, 31.261898, 30.233875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970026, 31.807627, 30.198496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851429, 31.460361, 30.039307>,  <31.780272, 31.252003, 29.943792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851429, 31.460361, 30.039307>,  <31.970026, 31.807627, 30.198496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851429, 31.460361, 30.039307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818718, 0.016498, 0.573959,
		-0.491725, 0.496003, -0.715673,
		-0.296492, -0.868164, -0.397974,
		31.762482, 31.199913, 29.919914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204962, 31.855171, 30.381092>,  <31.970026, 31.807627, 30.198496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204962, 31.855171, 30.381092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237089, 31.470222, 30.277256>,  <31.256367, 31.239252, 30.214954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237089, 31.470222, 30.277256>,  <31.204962, 31.855171, 30.381092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237089, 31.470222, 30.277256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729842, -0.234157, 0.642263,
		-0.678881, 0.137874, -0.721187,
		0.080320, -0.962373, -0.259591,
		31.261185, 31.181511, 30.199379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568764, 31.648746, 30.345140>,  <31.204962, 31.855171, 30.381092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568764, 31.648746, 30.345140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758289, 31.298389, 30.381615>,  <30.872004, 31.088175, 30.403500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758289, 31.298389, 30.381615>,  <30.568764, 31.648746, 30.345140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758289, 31.298389, 30.381615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644202, -0.274144, 0.714038,
		-0.600422, -0.397062, -0.694144,
		0.473812, -0.875892, 0.091186,
		30.900433, 31.035622, 30.408970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157881, 31.143938, 30.211155>,  <30.568764, 31.648746, 30.345140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157881, 31.143938, 30.211155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428446, 30.980137, 30.456030>,  <30.590784, 30.881855, 30.602955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428446, 30.980137, 30.456030>,  <30.157881, 31.143938, 30.211155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428446, 30.980137, 30.456030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724916, -0.223177, 0.651682,
		-0.130241, -0.884589, -0.447816,
		0.676413, -0.409504, 0.612186,
		30.631371, 30.857285, 30.639685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876394, 31.347691, 29.433378>,  <30.157881, 31.143938, 30.211155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876394, 31.347691, 29.433378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184570, 31.598698, 29.478357>,  <30.369476, 31.749302, 29.505344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184570, 31.598698, 29.478357>,  <29.876394, 31.347691, 29.433378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184570, 31.598698, 29.478357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606458, 0.667038, 0.432746,
		0.196549, -0.401599, 0.894476,
		0.770439, 0.627518, 0.112447,
		30.415703, 31.786953, 29.512091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887939, 31.826590, 28.800940>,  <29.876394, 31.347691, 29.433378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887939, 31.826590, 28.800940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.225428, 32.039509, 28.828632>,  <30.427921, 32.167259, 28.845249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.225428, 32.039509, 28.828632>,  <29.887939, 31.826590, 28.800940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225428, 32.039509, 28.828632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298147, -0.571974, 0.764169,
		0.446364, -0.624105, -0.641290,
		0.843722, 0.532296, 0.069234,
		30.478544, 32.199196, 28.849403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265743, 32.331352, 28.729805>,  <29.887939, 31.826590, 28.800940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265743, 32.331352, 28.729805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.536922, 32.603703, 28.840649>,  <29.699631, 32.767113, 28.907154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.536922, 32.603703, 28.840649>,  <29.265743, 32.331352, 28.729805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536922, 32.603703, 28.840649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457741, -0.096043, -0.883883,
		-0.575204, 0.726071, -0.376779,
		0.677949, 0.680880, 0.277108,
		29.740307, 32.807968, 28.923780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410872, 32.785892, 28.083729>,  <29.265743, 32.331352, 28.729805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410872, 32.785892, 28.083729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.723171, 32.818779, 28.331493>,  <29.910551, 32.838509, 28.480152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.723171, 32.818779, 28.331493>,  <29.410872, 32.785892, 28.083729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723171, 32.818779, 28.331493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621829, -0.004949, -0.783137,
		-0.061319, 0.996602, -0.054987,
		0.780749, 0.082214, 0.619413,
		29.957396, 32.843445, 28.517317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856195, 33.374851, 27.811390>,  <29.410872, 32.785892, 28.083729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856195, 33.374851, 27.811390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.116856, 33.184040, 28.047289>,  <30.273251, 33.069553, 28.188828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.116856, 33.184040, 28.047289>,  <29.856195, 33.374851, 27.811390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116856, 33.184040, 28.047289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724650, 0.161776, -0.669859,
		0.224132, 0.863873, 0.451096,
		0.651650, -0.477024, 0.589747,
		30.312351, 33.040932, 28.224213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490032, 33.813675, 27.842972>,  <29.856195, 33.374851, 27.811390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490032, 33.813675, 27.842972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.598150, 33.440601, 27.938511>,  <30.663021, 33.216759, 27.995834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.598150, 33.440601, 27.938511>,  <30.490032, 33.813675, 27.842972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598150, 33.440601, 27.938511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818063, 0.091677, -0.567775,
		0.507656, 0.348858, 0.787771,
		0.270294, -0.932681, 0.238847,
		30.679239, 33.160797, 28.010164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286987, 33.796307, 27.971449>,  <30.490032, 33.813675, 27.842972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286987, 33.796307, 27.971449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172909, 33.417801, 27.910463>,  <31.104462, 33.190697, 27.873873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172909, 33.417801, 27.910463>,  <31.286987, 33.796307, 27.971449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172909, 33.417801, 27.910463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720790, -0.106895, -0.684861,
		0.631763, -0.305215, 0.712545,
		-0.285198, -0.946265, -0.152464,
		31.087349, 33.133923, 27.864725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893423, 33.403374, 28.006857>,  <31.286987, 33.796307, 27.971449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893423, 33.403374, 28.006857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611624, 33.202251, 27.806511>,  <31.442543, 33.081577, 27.686302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611624, 33.202251, 27.806511>,  <31.893423, 33.403374, 28.006857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611624, 33.202251, 27.806511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650249, -0.174540, -0.739399,
		0.284352, -0.846595, 0.449912,
		-0.704499, -0.502805, -0.500867,
		31.400274, 33.051411, 27.656250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155972, 32.682232, 27.900623>,  <31.893423, 33.403374, 28.006857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155972, 32.682232, 27.900623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867298, 32.758072, 27.634321>,  <31.694096, 32.803577, 27.474541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867298, 32.758072, 27.634321>,  <32.155972, 32.682232, 27.900623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867298, 32.758072, 27.634321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630230, -0.217859, -0.745216,
		-0.286335, -0.957386, 0.037733,
		-0.721680, 0.189601, -0.665755,
		31.650795, 32.814953, 27.434595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305805, 32.336224, 27.369368>,  <32.155972, 32.682232, 27.900623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305805, 32.336224, 27.369368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027908, 32.566662, 27.197113>,  <31.861170, 32.704926, 27.093761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027908, 32.566662, 27.197113>,  <32.305805, 32.336224, 27.369368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027908, 32.566662, 27.197113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496386, -0.049248, -0.866704,
		-0.520509, -0.815900, -0.251750,
		-0.694745, 0.576092, -0.430635,
		31.819485, 32.739491, 27.067923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935352, 31.921690, 26.876476>,  <32.305805, 32.336224, 27.369368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935352, 31.921690, 26.876476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929520, 32.308647, 26.775333>,  <31.926020, 32.540821, 26.714647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929520, 32.308647, 26.775333>,  <31.935352, 31.921690, 26.876476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929520, 32.308647, 26.775333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542050, -0.204851, -0.814996,
		-0.840220, -0.148944, -0.521388,
		-0.014582, 0.967394, -0.252855,
		31.925144, 32.598866, 26.699476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049149, 32.002132, 26.052607>,  <31.935352, 31.921690, 26.876476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049149, 32.002132, 26.052607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086849, 32.382065, 26.171894>,  <32.109470, 32.610023, 26.243465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086849, 32.382065, 26.171894>,  <32.049149, 32.002132, 26.052607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086849, 32.382065, 26.171894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476646, 0.219934, -0.851139,
		-0.874029, 0.222363, -0.432006,
		0.094249, 0.949834, 0.298216,
		32.115124, 32.667015, 26.261358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817408, 32.338779, 25.493561>,  <32.049149, 32.002132, 26.052607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817408, 32.338779, 25.493561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033340, 32.611427, 25.691135>,  <32.162899, 32.775017, 25.809679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033340, 32.611427, 25.691135>,  <31.817408, 32.338779, 25.493561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033340, 32.611427, 25.691135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433201, 0.278153, -0.857303,
		-0.721746, 0.676774, -0.145123,
		0.539834, 0.681622, 0.493934,
		32.195290, 32.815914, 25.839315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764244, 32.989857, 25.167128>,  <31.817408, 32.338779, 25.493561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764244, 32.989857, 25.167128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104839, 33.056198, 25.366110>,  <32.309196, 33.096004, 25.485498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104839, 33.056198, 25.366110>,  <31.764244, 32.989857, 25.167128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104839, 33.056198, 25.366110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446594, 0.267812, -0.853716,
		-0.274816, 0.949089, 0.153969,
		0.851487, 0.165853, 0.497456,
		32.360287, 33.105953, 25.515347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894640, 33.714561, 25.178797>,  <31.764244, 32.989857, 25.167128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894640, 33.714561, 25.178797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241108, 33.525463, 25.243616>,  <32.448990, 33.412003, 25.282507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241108, 33.525463, 25.243616>,  <31.894640, 33.714561, 25.178797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241108, 33.525463, 25.243616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398168, 0.456866, -0.795447,
		0.302010, 0.753515, 0.583956,
		0.866171, -0.472746, 0.162048,
		32.500957, 33.383640, 25.292231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348244, 34.182186, 25.094704>,  <31.894640, 33.714561, 25.178797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348244, 34.182186, 25.094704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600407, 33.874195, 25.055260>,  <32.751705, 33.689400, 25.031593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600407, 33.874195, 25.055260>,  <32.348244, 34.182186, 25.094704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600407, 33.874195, 25.055260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497732, 0.498418, -0.709818,
		0.595693, 0.398392, 0.697448,
		0.630407, -0.769976, -0.098611,
		32.789528, 33.643204, 25.025677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991653, 34.450317, 25.009604>,  <32.348244, 34.182186, 25.094704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991653, 34.450317, 25.009604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017437, 34.082020, 24.855679>,  <33.032906, 33.861042, 24.763325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017437, 34.082020, 24.855679>,  <32.991653, 34.450317, 25.009604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017437, 34.082020, 24.855679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400905, 0.377018, -0.834945,
		0.913849, -0.100455, 0.393431,
		0.064457, -0.920742, -0.384811,
		33.036774, 33.805798, 24.740236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627449, 34.390949, 24.627438>,  <32.991653, 34.450317, 25.009604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627449, 34.390949, 24.627438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436443, 34.066292, 24.492846>,  <33.321838, 33.871498, 24.412090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436443, 34.066292, 24.492846>,  <33.627449, 34.390949, 24.627438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436443, 34.066292, 24.492846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361811, 0.167337, -0.917110,
		0.800669, -0.559677, 0.213754,
		-0.477517, -0.811640, -0.336479,
		33.293190, 33.822800, 24.391901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127789, 34.064236, 24.165155>,  <33.627449, 34.390949, 24.627438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127789, 34.064236, 24.165155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759754, 33.946320, 24.061974>,  <33.538933, 33.875572, 24.000065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759754, 33.946320, 24.061974>,  <34.127789, 34.064236, 24.165155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759754, 33.946320, 24.061974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233574, 0.115769, -0.965422,
		0.314460, -0.948523, -0.037662,
		-0.920086, -0.294790, -0.257955,
		33.483727, 33.857883, 23.984587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230553, 33.880642, 23.499619>,  <34.127789, 34.064236, 24.165155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230553, 33.880642, 23.499619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831154, 33.875591, 23.520948>,  <33.591515, 33.872562, 23.533747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831154, 33.875591, 23.520948>,  <34.230553, 33.880642, 23.499619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831154, 33.875591, 23.520948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054559, 0.137680, -0.988973,
		0.005143, -0.990396, -0.138162,
		-0.998497, -0.012625, 0.053327,
		33.531605, 33.871803, 23.536947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958122, 33.317566, 23.116333>,  <34.230553, 33.880642, 23.499619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958122, 33.317566, 23.116333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638054, 33.557335, 23.124474>,  <33.446014, 33.701199, 23.129358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638054, 33.557335, 23.124474>,  <33.958122, 33.317566, 23.116333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638054, 33.557335, 23.124474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030849, -0.007246, -0.999498,
		-0.598978, -0.800397, 0.024290,
		-0.800171, 0.599427, 0.020351,
		33.398003, 33.737164, 23.130579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322048, 33.047470, 22.688147>,  <33.958122, 33.317566, 23.116333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322048, 33.047470, 22.688147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242165, 33.438271, 22.718044>,  <33.194233, 33.672752, 22.735983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242165, 33.438271, 22.718044>,  <33.322048, 33.047470, 22.688147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242165, 33.438271, 22.718044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165585, 0.041532, -0.985321,
		-0.965763, -0.209155, 0.153483,
		-0.199710, 0.977000, 0.074743,
		33.182251, 33.731369, 22.740467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632996, 33.208328, 22.404444>,  <33.322048, 33.047470, 22.688147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632996, 33.208328, 22.404444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805138, 33.568630, 22.380991>,  <32.908424, 33.784813, 22.366919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805138, 33.568630, 22.380991>,  <32.632996, 33.208328, 22.404444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805138, 33.568630, 22.380991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273926, 0.068431, -0.959313,
		-0.860093, 0.428906, 0.276189,
		0.430355, 0.900754, -0.058631,
		32.934242, 33.838856, 22.363401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159882, 33.662800, 21.935537>,  <32.632996, 33.208328, 22.404444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159882, 33.662800, 21.935537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511341, 33.853313, 21.949005>,  <32.722218, 33.967621, 21.957085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511341, 33.853313, 21.949005>,  <32.159882, 33.662800, 21.935537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511341, 33.853313, 21.949005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059743, 0.179626, -0.981919,
		-0.473718, 0.860750, 0.186283,
		0.878648, 0.476282, 0.033669,
		32.774937, 33.996197, 21.959106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132095, 34.235397, 21.633387>,  <32.159882, 33.662800, 21.935537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132095, 34.235397, 21.633387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527534, 34.177399, 21.617105>,  <32.764797, 34.142597, 21.607338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527534, 34.177399, 21.617105>,  <32.132095, 34.235397, 21.633387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527534, 34.177399, 21.617105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012442, 0.190697, -0.981570,
		0.150088, 0.970881, 0.186717,
		0.988594, -0.144998, -0.040701,
		32.824112, 34.133900, 21.604895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397949, 34.745590, 21.190136>,  <32.132095, 34.235397, 21.633387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397949, 34.745590, 21.190136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664558, 34.448750, 21.218489>,  <32.824524, 34.270645, 21.235500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664558, 34.448750, 21.218489>,  <32.397949, 34.745590, 21.190136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664558, 34.448750, 21.218489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022493, -0.075019, -0.996929,
		0.745143, 0.666072, -0.033309,
		0.666525, -0.742105, 0.070882,
		32.864517, 34.226116, 21.239754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911350, 35.057758, 20.910078>,  <32.397949, 34.745590, 21.190136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911350, 35.057758, 20.910078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012665, 34.670887, 20.918146>,  <33.073452, 34.438763, 20.922987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012665, 34.670887, 20.918146>,  <32.911350, 35.057758, 20.910078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012665, 34.670887, 20.918146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361453, 0.075275, -0.929347,
		0.897329, 0.242678, 0.368657,
		0.253283, -0.967182, 0.020170,
		33.088650, 34.380733, 20.924196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599491, 34.962345, 20.667246>,  <32.911350, 35.057758, 20.910078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599491, 34.962345, 20.667246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409641, 34.614315, 20.614035>,  <33.295731, 34.405495, 20.582108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409641, 34.614315, 20.614035>,  <33.599491, 34.962345, 20.667246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409641, 34.614315, 20.614035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322799, -0.031458, -0.945945,
		0.818862, -0.491906, 0.295792,
		-0.474621, -0.870080, -0.133027,
		33.267254, 34.353291, 20.574127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168598, 35.280056, 20.804802>,  <33.599491, 34.962345, 20.667246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168598, 35.280056, 20.804802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236496, 35.663193, 20.712084>,  <34.277233, 35.893074, 20.656454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236496, 35.663193, 20.712084>,  <34.168598, 35.280056, 20.804802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236496, 35.663193, 20.712084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248994, 0.269260, 0.930323,
		0.953514, -0.100199, 0.284201,
		0.169741, 0.957841, -0.231794,
		34.287418, 35.950546, 20.642546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662106, 35.623684, 21.371847>,  <34.168598, 35.280056, 20.804802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662106, 35.623684, 21.371847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431145, 35.885353, 21.176437>,  <34.292568, 36.042355, 21.059193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431145, 35.885353, 21.176437>,  <34.662106, 35.623684, 21.371847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431145, 35.885353, 21.176437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375898, 0.318158, 0.870331,
		0.724778, 0.686170, 0.062198,
		-0.577406, 0.654176, -0.488523,
		34.257923, 36.081608, 21.029881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782475, 36.259396, 21.722942>,  <34.662106, 35.623684, 21.371847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782475, 36.259396, 21.722942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440533, 36.324642, 21.525919>,  <34.235367, 36.363792, 21.407705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440533, 36.324642, 21.525919>,  <34.782475, 36.259396, 21.722942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440533, 36.324642, 21.525919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396562, 0.406783, 0.822961,
		0.334606, 0.898843, -0.283053,
		-0.854855, 0.163120, -0.492560,
		34.184074, 36.373577, 21.378151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612007, 36.889721, 21.871592>,  <34.782475, 36.259396, 21.722942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612007, 36.889721, 21.871592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263786, 36.742657, 21.740767>,  <34.054855, 36.654419, 21.662271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263786, 36.742657, 21.740767>,  <34.612007, 36.889721, 21.871592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263786, 36.742657, 21.740767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479815, 0.486739, 0.729974,
		-0.109185, 0.792409, -0.600138,
		-0.870549, -0.367658, -0.327065,
		34.002621, 36.632359, 21.642647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117519, 37.497265, 21.939508>,  <34.612007, 36.889721, 21.871592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117519, 37.497265, 21.939508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875416, 37.178879, 21.935369>,  <33.730156, 36.987846, 21.932886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875416, 37.178879, 21.935369>,  <34.117519, 37.497265, 21.939508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875416, 37.178879, 21.935369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597055, 0.445330, 0.667238,
		-0.526490, 0.410026, -0.744773,
		-0.605255, -0.795965, -0.010347,
		33.693840, 36.940090, 21.932266>
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
