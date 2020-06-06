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
	<23.792187, 35.148304, 35.329132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.126678, 35.172016, 35.111065>,  <24.327374, 35.186245, 34.980225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.126678, 35.172016, 35.111065>,  <23.792187, 35.148304, 35.329132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.126678, 35.172016, 35.111065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548283, -0.071779, 0.833207,
		0.010267, -0.995657, -0.092530,
		0.836230, 0.059287, -0.545164,
		24.377548, 35.189800, 34.947517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103397, 34.886135, 35.797821>,  <23.792187, 35.148304, 35.329132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103397, 34.886135, 35.797821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393948, 35.004692, 35.549778>,  <24.568277, 35.075825, 35.400951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393948, 35.004692, 35.549778>,  <24.103397, 34.886135, 35.797821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393948, 35.004692, 35.549778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668039, -0.092377, 0.738370,
		0.161561, -0.950589, -0.265100,
		0.726376, 0.296389, -0.620106,
		24.611860, 35.093609, 35.363747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657299, 34.421062, 35.741722>,  <24.103397, 34.886135, 35.797821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657299, 34.421062, 35.741722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783350, 34.793262, 35.667042>,  <24.858980, 35.016582, 35.622234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783350, 34.793262, 35.667042>,  <24.657299, 34.421062, 35.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783350, 34.793262, 35.667042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738104, -0.116632, 0.664529,
		0.596572, -0.347214, -0.723563,
		0.315125, 0.930505, -0.186701,
		24.877888, 35.072414, 35.611031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423767, 34.357586, 35.664562>,  <24.657299, 34.421062, 35.741722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423767, 34.357586, 35.664562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270247, 34.690586, 35.824383>,  <25.178135, 34.890385, 35.920273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270247, 34.690586, 35.824383>,  <25.423767, 34.357586, 35.664562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270247, 34.690586, 35.824383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664625, -0.051345, 0.745411,
		0.641070, 0.551639, -0.533595,
		-0.383800, 0.832501, 0.399549,
		25.155107, 34.940338, 35.944248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931114, 34.944263, 35.732723>,  <25.423767, 34.357586, 35.664562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931114, 34.944263, 35.732723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649717, 34.905014, 36.014282>,  <25.480881, 34.881466, 36.183220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649717, 34.905014, 36.014282>,  <25.931114, 34.944263, 35.732723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649717, 34.905014, 36.014282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708587, -0.020428, 0.705328,
		-0.054830, 0.994965, 0.083900,
		-0.703490, -0.098123, 0.703899,
		25.438671, 34.875576, 36.225452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166222, 34.528774, 35.251587>,  <25.931114, 34.944263, 35.732723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166222, 34.528774, 35.251587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986683, 34.752365, 34.972706>,  <25.878960, 34.886520, 34.805378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986683, 34.752365, 34.972706>,  <26.166222, 34.528774, 35.251587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986683, 34.752365, 34.972706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135069, -0.728804, -0.671268,
		-0.883342, -0.395466, 0.251622,
		-0.448847, 0.558973, -0.697199,
		25.852030, 34.920055, 34.763546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629564, 34.174667, 34.975285>,  <26.166222, 34.528774, 35.251587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629564, 34.174667, 34.975285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767357, 34.444756, 34.714390>,  <25.850033, 34.606808, 34.557854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767357, 34.444756, 34.714390>,  <25.629564, 34.174667, 34.975285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767357, 34.444756, 34.714390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029660, -0.686587, -0.726442,
		-0.938324, 0.269593, -0.216491,
		0.344484, 0.675217, -0.652237,
		25.870703, 34.647320, 34.518719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206467, 34.276745, 34.479298>,  <25.629564, 34.174667, 34.975285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206467, 34.276745, 34.479298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561234, 34.368683, 34.319023>,  <25.774094, 34.423847, 34.222858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561234, 34.368683, 34.319023>,  <25.206467, 34.276745, 34.479298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561234, 34.368683, 34.319023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133151, -0.703391, -0.698221,
		-0.442324, 0.672615, -0.593244,
		0.886916, 0.229849, -0.400686,
		25.827309, 34.437637, 34.198818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093285, 34.219856, 33.756363>,  <25.206467, 34.276745, 34.479298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093285, 34.219856, 33.756363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490990, 34.201866, 33.795181>,  <25.729612, 34.191071, 33.818474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490990, 34.201866, 33.795181>,  <25.093285, 34.219856, 33.756363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490990, 34.201866, 33.795181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031220, -0.745762, -0.665481,
		0.102303, 0.664693, -0.740080,
		0.994263, -0.044976, 0.097045,
		25.789268, 34.188374, 33.824295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340057, 34.197933, 33.031956>,  <25.093285, 34.219856, 33.756363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340057, 34.197933, 33.031956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635973, 34.068073, 33.267689>,  <25.813522, 33.990158, 33.409126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635973, 34.068073, 33.267689>,  <25.340057, 34.197933, 33.031956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635973, 34.068073, 33.267689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363428, -0.544315, -0.756070,
		0.566242, 0.773512, -0.284691,
		0.739791, -0.324653, 0.589330,
		25.857910, 33.970676, 33.444489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930862, 34.252502, 32.619068>,  <25.340057, 34.197933, 33.031956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930862, 34.252502, 32.619068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975584, 33.968330, 32.896999>,  <26.002417, 33.797829, 33.063759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975584, 33.968330, 32.896999>,  <25.930862, 34.252502, 32.619068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975584, 33.968330, 32.896999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294910, -0.643992, -0.705905,
		0.948962, 0.283836, 0.137511,
		0.111805, -0.710430, 0.694830,
		26.009125, 33.755199, 33.105450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673246, 34.086983, 32.606590>,  <25.930862, 34.252502, 32.619068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673246, 34.086983, 32.606590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447266, 33.795223, 32.760895>,  <26.311678, 33.620167, 32.853477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447266, 33.795223, 32.760895>,  <26.673246, 34.086983, 32.606590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447266, 33.795223, 32.760895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360086, -0.638594, -0.680100,
		0.742406, -0.245317, 0.623420,
		-0.564952, -0.729395, 0.385761,
		26.277781, 33.576405, 32.876621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124638, 33.536583, 32.708134>,  <26.673246, 34.086983, 32.606590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124638, 33.536583, 32.708134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750927, 33.395031, 32.690697>,  <26.526701, 33.310101, 32.680237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750927, 33.395031, 32.690697>,  <27.124638, 33.536583, 32.708134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750927, 33.395031, 32.690697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246204, -0.551865, -0.796761,
		0.257899, -0.755127, 0.602720,
		-0.934276, -0.353877, -0.043590,
		26.470644, 33.288868, 32.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212234, 32.921890, 32.437847>,  <27.124638, 33.536583, 32.708134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212234, 32.921890, 32.437847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815170, 32.952435, 32.400349>,  <26.576931, 32.970760, 32.377850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815170, 32.952435, 32.400349>,  <27.212234, 32.921890, 32.437847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815170, 32.952435, 32.400349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017998, -0.673385, -0.739073,
		-0.119568, -0.735337, 0.667070,
		-0.992663, 0.076364, -0.093749,
		26.517372, 32.975342, 32.372223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994720, 32.249157, 32.444187>,  <27.212234, 32.921890, 32.437847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994720, 32.249157, 32.444187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705664, 32.474800, 32.284401>,  <26.532230, 32.610184, 32.188530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705664, 32.474800, 32.284401>,  <26.994720, 32.249157, 32.444187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705664, 32.474800, 32.284401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026657, -0.554742, -0.831595,
		-0.690711, -0.611593, 0.385841,
		-0.722640, 0.564106, -0.399470,
		26.488873, 32.644032, 32.164558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422541, 31.833267, 32.131519>,  <26.994720, 32.249157, 32.444187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422541, 31.833267, 32.131519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372971, 32.187523, 31.952509>,  <26.343229, 32.400078, 31.845102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372971, 32.187523, 31.952509>,  <26.422541, 31.833267, 32.131519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372971, 32.187523, 31.952509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005742, -0.451640, -0.892182,
		-0.992275, -0.107994, 0.061055,
		-0.123926, 0.885641, -0.447530,
		26.335793, 32.453217, 31.818251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926546, 31.705349, 31.645069>,  <26.422541, 31.833267, 32.131519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926546, 31.705349, 31.645069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100220, 32.041615, 31.515598>,  <26.204424, 32.243374, 31.437916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100220, 32.041615, 31.515598>,  <25.926546, 31.705349, 31.645069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100220, 32.041615, 31.515598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084006, -0.319963, -0.943699,
		-0.896898, 0.436932, -0.068302,
		0.434186, 0.840663, -0.323679,
		26.230476, 32.293812, 31.418495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409378, 31.973900, 31.202217>,  <25.926546, 31.705349, 31.645069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409378, 31.973900, 31.202217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736633, 32.166897, 31.077095>,  <25.932987, 32.282696, 31.002022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736633, 32.166897, 31.077095>,  <25.409378, 31.973900, 31.202217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736633, 32.166897, 31.077095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211150, -0.253906, -0.943900,
		-0.534849, 0.838291, -0.105852,
		0.818140, 0.482493, -0.312807,
		25.982075, 32.311646, 30.983253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248220, 32.316650, 30.495745>,  <25.409378, 31.973900, 31.202217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248220, 32.316650, 30.495745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645977, 32.305271, 30.536482>,  <25.884632, 32.298443, 30.560925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645977, 32.305271, 30.536482>,  <25.248220, 32.316650, 30.495745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645977, 32.305271, 30.536482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097220, -0.132893, -0.986351,
		0.041591, 0.990722, -0.129382,
		0.994393, -0.028445, 0.101845,
		25.944296, 32.296738, 30.567036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431913, 32.641453, 29.945850>,  <25.248220, 32.316650, 30.495745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431913, 32.641453, 29.945850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754093, 32.422150, 30.035881>,  <25.947401, 32.290569, 30.089899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754093, 32.422150, 30.035881>,  <25.431913, 32.641453, 29.945850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754093, 32.422150, 30.035881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022579, -0.351113, -0.936061,
		0.592231, 0.759034, -0.270426,
		0.805452, -0.548258, 0.225079,
		25.995729, 32.257671, 30.103405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901352, 32.656292, 29.433449>,  <25.431913, 32.641453, 29.945850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901352, 32.656292, 29.433449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018015, 32.308533, 29.592987>,  <26.088013, 32.099876, 29.688711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018015, 32.308533, 29.592987>,  <25.901352, 32.656292, 29.433449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018015, 32.308533, 29.592987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146876, -0.371326, -0.916812,
		0.945179, 0.325976, 0.019394,
		0.291657, -0.869400, 0.398847,
		26.105513, 32.047714, 29.712641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646168, 32.448818, 29.182796>,  <25.901352, 32.656292, 29.433449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646168, 32.448818, 29.182796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464077, 32.111137, 29.295996>,  <26.354822, 31.908527, 29.363914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464077, 32.111137, 29.295996>,  <26.646168, 32.448818, 29.182796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464077, 32.111137, 29.295996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339134, -0.458280, -0.821564,
		0.823261, -0.278022, 0.494919,
		-0.455225, -0.844205, 0.282997,
		26.327509, 31.857876, 29.380896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152615, 31.983505, 29.023109>,  <26.646168, 32.448818, 29.182796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152615, 31.983505, 29.023109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789307, 31.817415, 29.043633>,  <26.571321, 31.717760, 29.055946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789307, 31.817415, 29.043633>,  <27.152615, 31.983505, 29.023109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789307, 31.817415, 29.043633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171061, -0.480465, -0.860170,
		0.381817, -0.772489, 0.507421,
		-0.908270, -0.415227, 0.051306,
		26.516827, 31.692846, 29.059025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193449, 31.467382, 28.619169>,  <27.152615, 31.983505, 29.023109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193449, 31.467382, 28.619169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798487, 31.432690, 28.672092>,  <26.561508, 31.411875, 28.703846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798487, 31.432690, 28.672092>,  <27.193449, 31.467382, 28.619169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798487, 31.432690, 28.672092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065092, -0.539516, -0.839455,
		0.144189, -0.837496, 0.527077,
		-0.987407, -0.086732, 0.132307,
		26.502264, 31.406670, 28.711784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972057, 30.753525, 28.460014>,  <27.193449, 31.467382, 28.619169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972057, 30.753525, 28.460014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698713, 31.040154, 28.404104>,  <26.534706, 31.212132, 28.370558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698713, 31.040154, 28.404104>,  <26.972057, 30.753525, 28.460014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698713, 31.040154, 28.404104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175193, -0.346810, -0.921428,
		-0.708748, -0.605181, 0.362536,
		-0.683362, 0.716574, -0.139778,
		26.493704, 31.255125, 28.362171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244473, 30.449751, 28.425106>,  <26.972057, 30.753525, 28.460014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244473, 30.449751, 28.425106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307100, 30.777321, 28.204252>,  <26.344677, 30.973862, 28.071741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307100, 30.777321, 28.204252>,  <26.244473, 30.449751, 28.425106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307100, 30.777321, 28.204252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080926, -0.567785, -0.819189,
		-0.984346, 0.083578, -0.155170,
		0.156570, 0.818923, -0.552133,
		26.354071, 31.022997, 28.038612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623255, 30.719351, 28.021421>,  <26.244473, 30.449751, 28.425106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623255, 30.719351, 28.021421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993069, 30.753370, 27.872829>,  <26.214958, 30.773783, 27.783674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993069, 30.753370, 27.872829>,  <25.623255, 30.719351, 28.021421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993069, 30.753370, 27.872829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217543, -0.682572, -0.697690,
		-0.312900, 0.725853, -0.612561,
		0.924537, 0.085049, -0.371480,
		26.270430, 30.778885, 27.761385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523855, 30.927408, 27.331837>,  <25.623255, 30.719351, 28.021421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523855, 30.927408, 27.331837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871208, 30.736856, 27.386936>,  <26.079620, 30.622526, 27.419996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871208, 30.736856, 27.386936>,  <25.523855, 30.927408, 27.331837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871208, 30.736856, 27.386936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212793, -0.608870, -0.764197,
		0.447917, 0.634304, -0.630102,
		0.868383, -0.476378, 0.137747,
		26.131723, 30.593943, 27.428261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830160, 30.475578, 26.895760>,  <25.523855, 30.927408, 27.331837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830160, 30.475578, 26.895760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723463, 30.537228, 26.515213>,  <25.659445, 30.574217, 26.286886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723463, 30.537228, 26.515213>,  <25.830160, 30.475578, 26.895760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723463, 30.537228, 26.515213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240522, 0.966541, 0.089145,
		0.933272, -0.205046, -0.294888,
		-0.266743, 0.154124, -0.951364,
		25.643440, 30.583466, 26.229803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314016, 30.828806, 26.377060>,  <25.830160, 30.475578, 26.895760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314016, 30.828806, 26.377060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929060, 30.886150, 26.284756>,  <25.698086, 30.920557, 26.229372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929060, 30.886150, 26.284756>,  <26.314016, 30.828806, 26.377060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929060, 30.886150, 26.284756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166308, 0.982561, -0.083167,
		0.214814, -0.118416, -0.969450,
		-0.962391, 0.143361, -0.230762,
		25.640343, 30.929159, 26.215527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107183, 30.958204, 25.628967>,  <26.314016, 30.828806, 26.377060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107183, 30.958204, 25.628967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893524, 31.124647, 25.923325>,  <25.765329, 31.224512, 26.099939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893524, 31.124647, 25.923325>,  <26.107183, 30.958204, 25.628967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893524, 31.124647, 25.923325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453338, 0.875723, -0.166115,
		-0.713562, 0.244879, -0.656402,
		-0.534148, 0.416106, 0.735895,
		25.733280, 31.249479, 26.144093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890427, 31.481014, 25.331903>,  <26.107183, 30.958204, 25.628967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890427, 31.481014, 25.331903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920340, 31.579937, 25.718323>,  <25.938288, 31.639290, 25.950174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920340, 31.579937, 25.718323>,  <25.890427, 31.481014, 25.331903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920340, 31.579937, 25.718323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629688, 0.739477, -0.238048,
		-0.773240, 0.626111, -0.100425,
		0.074782, 0.247305, 0.966047,
		25.942774, 31.654129, 26.008137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726425, 32.179638, 25.532633>,  <25.890427, 31.481014, 25.331903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726425, 32.179638, 25.532633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997711, 32.050484, 25.796684>,  <26.160482, 31.972990, 25.955114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997711, 32.050484, 25.796684>,  <25.726425, 32.179638, 25.532633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997711, 32.050484, 25.796684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677692, 0.622196, -0.391925,
		-0.284181, 0.713173, 0.640800,
		0.678214, -0.322888, 0.660129,
		26.201176, 31.953617, 25.994722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013044, 32.674065, 26.024330>,  <25.726425, 32.179638, 25.532633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013044, 32.674065, 26.024330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302299, 32.404636, 25.963182>,  <26.475853, 32.242977, 25.926493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302299, 32.404636, 25.963182>,  <26.013044, 32.674065, 26.024330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302299, 32.404636, 25.963182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690170, 0.713348, 0.121655,
		0.027107, -0.193480, 0.980730,
		0.723139, -0.673573, -0.152871,
		26.519241, 32.202564, 25.917322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354143, 32.413486, 26.731541>,  <26.013044, 32.674065, 26.024330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354143, 32.413486, 26.731541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537977, 32.485813, 26.383728>,  <26.648277, 32.529209, 26.175041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537977, 32.485813, 26.383728>,  <26.354143, 32.413486, 26.731541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537977, 32.485813, 26.383728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612720, 0.644195, 0.457808,
		0.642930, -0.743181, 0.185268,
		0.459583, 0.180821, -0.869533,
		26.675854, 32.540058, 26.122868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120667, 32.272472, 26.801537>,  <26.354143, 32.413486, 26.731541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120667, 32.272472, 26.801537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070984, 32.545776, 26.513723>,  <27.041174, 32.709759, 26.341036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070984, 32.545776, 26.513723>,  <27.120667, 32.272472, 26.801537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070984, 32.545776, 26.513723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739543, 0.547212, 0.391964,
		0.661550, -0.483443, -0.573266,
		-0.124206, 0.683259, -0.719535,
		27.033722, 32.750755, 26.297863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800013, 32.385162, 26.423065>,  <27.120667, 32.272472, 26.801537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800013, 32.385162, 26.423065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554735, 32.700859, 26.436251>,  <27.407570, 32.890278, 26.444162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554735, 32.700859, 26.436251>,  <27.800013, 32.385162, 26.423065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554735, 32.700859, 26.436251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704152, 0.527216, 0.475618,
		0.358001, 0.314856, -0.879034,
		-0.613192, 0.789246, 0.032962,
		27.370777, 32.937634, 26.446140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210642, 33.038330, 26.252674>,  <27.800013, 32.385162, 26.423065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210642, 33.038330, 26.252674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892242, 33.113804, 26.482729>,  <27.701202, 33.159088, 26.620762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892242, 33.113804, 26.482729>,  <28.210642, 33.038330, 26.252674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892242, 33.113804, 26.482729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599241, 0.379712, 0.704790,
		-0.085405, 0.905659, -0.415317,
		-0.796000, 0.188682, 0.575137,
		27.653442, 33.170410, 26.655270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280325, 33.765614, 26.489197>,  <28.210642, 33.038330, 26.252674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280325, 33.765614, 26.489197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033178, 33.568756, 26.734482>,  <27.884890, 33.450642, 26.881653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033178, 33.568756, 26.734482>,  <28.280325, 33.765614, 26.489197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033178, 33.568756, 26.734482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388707, 0.486737, 0.782300,
		-0.683481, 0.721718, -0.109438,
		-0.617868, -0.492148, 0.613212,
		27.847818, 33.421112, 26.918446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013403, 34.250160, 26.889742>,  <28.280325, 33.765614, 26.489197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013403, 34.250160, 26.889742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923649, 33.922371, 27.100691>,  <27.869797, 33.725697, 27.227261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923649, 33.922371, 27.100691>,  <28.013403, 34.250160, 26.889742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923649, 33.922371, 27.100691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131528, 0.510752, 0.849608,
		-0.965584, 0.260002, -0.006820,
		-0.224383, -0.819470, 0.527371,
		27.856335, 33.676529, 27.258902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606869, 34.511150, 27.474993>,  <28.013403, 34.250160, 26.889742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606869, 34.511150, 27.474993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724674, 34.147350, 27.592348>,  <27.795359, 33.929070, 27.662762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724674, 34.147350, 27.592348>,  <27.606869, 34.511150, 27.474993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724674, 34.147350, 27.592348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219370, 0.363148, 0.905539,
		-0.930128, -0.202334, 0.306468,
		0.294514, -0.909497, 0.293388,
		27.813028, 33.874500, 27.680365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258253, 34.335041, 28.107801>,  <27.606869, 34.511150, 27.474993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258253, 34.335041, 28.107801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574562, 34.090378, 28.117279>,  <27.764347, 33.943581, 28.122965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574562, 34.090378, 28.117279>,  <27.258253, 34.335041, 28.107801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574562, 34.090378, 28.117279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111439, 0.181915, 0.976979,
		-0.601883, -0.769927, 0.212015,
		0.790771, -0.611654, 0.023692,
		27.811794, 33.906883, 28.124386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118069, 33.831501, 28.642805>,  <27.258253, 34.335041, 28.107801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118069, 33.831501, 28.642805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515224, 33.820175, 28.596556>,  <27.753517, 33.813381, 28.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515224, 33.820175, 28.596556>,  <27.118069, 33.831501, 28.642805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515224, 33.820175, 28.596556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115429, -0.008424, 0.993280,
		-0.029105, -0.999563, -0.005095,
		0.992889, -0.028322, -0.115624,
		27.813091, 33.811680, 28.561869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409681, 33.359486, 29.274137>,  <27.118069, 33.831501, 28.642805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409681, 33.359486, 29.274137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725910, 33.559189, 29.132301>,  <27.915648, 33.679012, 29.047199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725910, 33.559189, 29.132301>,  <27.409681, 33.359486, 29.274137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725910, 33.559189, 29.132301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409596, -0.000668, 0.912267,
		0.455223, -0.866451, -0.205024,
		0.790572, 0.499262, -0.354590,
		27.963081, 33.708969, 29.025925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015270, 33.140289, 29.614048>,  <27.409681, 33.359486, 29.274137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015270, 33.140289, 29.614048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126902, 33.497555, 29.472980>,  <28.193880, 33.711914, 29.388340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126902, 33.497555, 29.472980>,  <28.015270, 33.140289, 29.614048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126902, 33.497555, 29.472980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228013, 0.295123, 0.927853,
		0.932805, -0.339356, -0.121290,
		0.279077, 0.893163, -0.352670,
		28.210625, 33.765503, 29.367180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550611, 33.316338, 30.017136>,  <28.015270, 33.140289, 29.614048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550611, 33.316338, 30.017136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478157, 33.674301, 29.854006>,  <28.434685, 33.889080, 29.756128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478157, 33.674301, 29.854006>,  <28.550611, 33.316338, 30.017136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478157, 33.674301, 29.854006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129899, 0.432821, 0.892072,
		0.974842, 0.108610, -0.194648,
		-0.181136, 0.894913, -0.407824,
		28.423817, 33.942776, 29.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124968, 33.831383, 30.165493>,  <28.550611, 33.316338, 30.017136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124968, 33.831383, 30.165493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813402, 34.070446, 30.089487>,  <28.626463, 34.213882, 30.043882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813402, 34.070446, 30.089487>,  <29.124968, 33.831383, 30.165493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813402, 34.070446, 30.089487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192809, 0.516532, 0.834278,
		0.596760, 0.613192, -0.517565,
		-0.778911, 0.597655, -0.190017,
		28.579729, 34.249741, 30.032482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317299, 34.506992, 30.414392>,  <29.124968, 33.831383, 30.165493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317299, 34.506992, 30.414392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919401, 34.536713, 30.386209>,  <28.680662, 34.554543, 30.369299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919401, 34.536713, 30.386209>,  <29.317299, 34.506992, 30.414392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919401, 34.536713, 30.386209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014954, 0.575325, 0.817788,
		0.101297, 0.814543, -0.571190,
		-0.994744, 0.074298, -0.070460,
		28.620977, 34.559002, 30.365072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158670, 35.200085, 30.655659>,  <29.317299, 34.506992, 30.414392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158670, 35.200085, 30.655659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831448, 34.974277, 30.699659>,  <28.635115, 34.838795, 30.726059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831448, 34.974277, 30.699659>,  <29.158670, 35.200085, 30.655659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831448, 34.974277, 30.699659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197387, 0.455217, 0.868226,
		-0.540204, 0.688546, -0.483823,
		-0.818057, -0.564519, 0.110000,
		28.586031, 34.804920, 30.732660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605375, 35.671825, 30.779989>,  <29.158670, 35.200085, 30.655659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605375, 35.671825, 30.779989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504675, 35.308685, 30.914110>,  <28.444256, 35.090801, 30.994583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504675, 35.308685, 30.914110>,  <28.605375, 35.671825, 30.779989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504675, 35.308685, 30.914110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365539, 0.409996, 0.835634,
		-0.896105, 0.087803, -0.435071,
		-0.251749, -0.907851, 0.335304,
		28.429150, 35.036331, 31.014702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986845, 35.792461, 31.141550>,  <28.605375, 35.671825, 30.779989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986845, 35.792461, 31.141550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133366, 35.445450, 31.276138>,  <28.221277, 35.237244, 31.356892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133366, 35.445450, 31.276138>,  <27.986845, 35.792461, 31.141550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133366, 35.445450, 31.276138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279826, 0.242163, 0.929007,
		-0.887424, -0.434450, -0.154053,
		0.366301, -0.867531, 0.336472,
		28.243256, 35.185192, 31.377079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461948, 35.617786, 31.625013>,  <27.986845, 35.792461, 31.141550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461948, 35.617786, 31.625013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770538, 35.384106, 31.725834>,  <27.955692, 35.243896, 31.786325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770538, 35.384106, 31.725834>,  <27.461948, 35.617786, 31.625013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770538, 35.384106, 31.725834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159682, 0.205688, 0.965502,
		-0.615894, -0.785110, 0.065397,
		0.771477, -0.584204, 0.252050,
		28.001982, 35.208843, 31.801449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265688, 35.109055, 32.161648>,  <27.461948, 35.617786, 31.625013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265688, 35.109055, 32.161648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663671, 35.148708, 32.167744>,  <27.902462, 35.172501, 32.171402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663671, 35.148708, 32.167744>,  <27.265688, 35.109055, 32.161648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663671, 35.148708, 32.167744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026720, 0.115548, 0.992942,
		0.096675, -0.988342, 0.117614,
		0.994957, 0.099135, 0.015238,
		27.962158, 35.178448, 32.172314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519081, 34.819962, 32.807407>,  <27.265688, 35.109055, 32.161648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519081, 34.819962, 32.807407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845724, 35.019707, 32.691624>,  <28.041710, 35.139553, 32.622154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845724, 35.019707, 32.691624>,  <27.519081, 34.819962, 32.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845724, 35.019707, 32.691624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322987, 0.020282, 0.946186,
		0.478361, -0.866156, -0.144725,
		0.816609, 0.499362, -0.289459,
		28.090708, 35.169514, 32.604786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977350, 34.618446, 33.365845>,  <27.519081, 34.819962, 32.807407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977350, 34.618446, 33.365845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115799, 34.939400, 33.171368>,  <28.198868, 35.131969, 33.054680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115799, 34.939400, 33.171368>,  <27.977350, 34.618446, 33.365845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115799, 34.939400, 33.171368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254316, 0.418579, 0.871846,
		0.903062, -0.425413, -0.059179,
		0.346124, 0.802381, -0.486193,
		28.219637, 35.180115, 33.025509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777100, 34.783375, 33.488289>,  <27.977350, 34.618446, 33.365845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777100, 34.783375, 33.488289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587236, 35.116749, 33.375095>,  <28.473318, 35.316772, 33.307178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587236, 35.116749, 33.375095>,  <28.777100, 34.783375, 33.488289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587236, 35.116749, 33.375095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201527, 0.415874, 0.886812,
		0.856788, 0.363905, -0.365359,
		-0.474659, 0.833440, -0.282980,
		28.444839, 35.366779, 33.290203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138315, 35.180923, 33.813705>,  <28.777100, 34.783375, 33.488289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138315, 35.180923, 33.813705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805738, 35.382175, 33.719418>,  <28.606192, 35.502926, 33.662846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805738, 35.382175, 33.719418>,  <29.138315, 35.180923, 33.813705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805738, 35.382175, 33.719418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038967, 0.476021, 0.878570,
		0.554241, 0.721296, -0.415390,
		-0.831443, 0.503126, -0.235724,
		28.556305, 35.533112, 33.648701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180058, 36.014149, 33.856495>,  <29.138315, 35.180923, 33.813705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180058, 36.014149, 33.856495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803703, 35.896015, 33.922844>,  <28.577890, 35.825134, 33.962654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803703, 35.896015, 33.922844>,  <29.180058, 36.014149, 33.856495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803703, 35.896015, 33.922844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003100, 0.482162, 0.876076,
		-0.338715, 0.824801, -0.452743,
		-0.940884, -0.295336, 0.165873,
		28.521439, 35.807415, 33.972607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399775, 35.900078, 34.672058>,  <29.180058, 36.014149, 33.856495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399775, 35.900078, 34.672058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472902, 36.176250, 34.392094>,  <29.516779, 36.341953, 34.224113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472902, 36.176250, 34.392094>,  <29.399775, 35.900078, 34.672058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472902, 36.176250, 34.392094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823906, 0.280842, 0.492246,
		0.536429, -0.666654, -0.517510,
		0.182819, 0.690435, -0.699912,
		29.527748, 36.383381, 34.182121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089460, 35.943920, 34.132591>,  <29.399775, 35.900078, 34.672058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089460, 35.943920, 34.132591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942266, 36.298336, 34.245392>,  <29.853951, 36.510986, 34.313072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942266, 36.298336, 34.245392>,  <30.089460, 35.943920, 34.132591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942266, 36.298336, 34.245392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801906, 0.148895, 0.578600,
		0.470673, 0.439053, -0.765310,
		-0.367987, 0.886037, 0.281999,
		29.831871, 36.564148, 34.329990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525175, 36.563305, 33.980663>,  <30.089460, 35.943920, 34.132591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525175, 36.563305, 33.980663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304787, 36.543972, 34.313911>,  <30.172554, 36.532372, 34.513863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304787, 36.543972, 34.313911>,  <30.525175, 36.563305, 33.980663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304787, 36.543972, 34.313911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830139, 0.070453, 0.553088,
		-0.085430, 0.996343, 0.001307,
		-0.550973, -0.048335, 0.833122,
		30.139494, 36.529472, 34.563847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799860, 37.121117, 34.503223>,  <30.525175, 36.563305, 33.980663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799860, 37.121117, 34.503223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603582, 36.823761, 34.685036>,  <30.485817, 36.645348, 34.794121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603582, 36.823761, 34.685036>,  <30.799860, 37.121117, 34.503223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603582, 36.823761, 34.685036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709398, -0.037942, 0.703786,
		-0.505940, 0.667784, 0.545976,
		-0.490692, -0.743388, 0.454528,
		30.456375, 36.600746, 34.821396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582163, 37.364674, 35.063705>,  <30.799860, 37.121117, 34.503223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582163, 37.364674, 35.063705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658312, 36.974102, 35.104401>,  <30.704000, 36.739761, 35.128819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658312, 36.974102, 35.104401>,  <30.582163, 37.364674, 35.063705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658312, 36.974102, 35.104401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647176, 0.202748, 0.734886,
		-0.738189, -0.074060, 0.670517,
		0.190371, -0.976426, 0.101736,
		30.715424, 36.681175, 35.134922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303257, 37.074127, 35.623306>,  <30.582163, 37.364674, 35.063705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303257, 37.074127, 35.623306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631229, 36.848076, 35.586777>,  <30.828012, 36.712444, 35.564857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631229, 36.848076, 35.586777>,  <30.303257, 37.074127, 35.623306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631229, 36.848076, 35.586777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372429, 0.405439, 0.834815,
		-0.434752, -0.718504, 0.542903,
		0.819932, -0.565130, -0.091326,
		30.877209, 36.678535, 35.559380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524183, 36.768772, 36.267746>,  <30.303257, 37.074127, 35.623306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524183, 36.768772, 36.267746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872023, 36.759525, 36.070457>,  <31.080727, 36.753975, 35.952084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872023, 36.759525, 36.070457>,  <30.524183, 36.768772, 36.267746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872023, 36.759525, 36.070457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481739, 0.258795, 0.837229,
		0.108286, -0.965656, 0.236185,
		0.869598, -0.023119, -0.493218,
		31.132902, 36.752590, 35.922493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006516, 36.348400, 36.711201>,  <30.524183, 36.768772, 36.267746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006516, 36.348400, 36.711201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215542, 36.589947, 36.470448>,  <31.340958, 36.734875, 36.325996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215542, 36.589947, 36.470448>,  <31.006516, 36.348400, 36.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215542, 36.589947, 36.470448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596765, 0.245131, 0.764057,
		0.608931, -0.758454, -0.232271,
		0.522565, 0.603869, -0.601887,
		31.372311, 36.771107, 36.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706791, 36.209843, 36.917534>,  <31.006516, 36.348400, 36.711201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706791, 36.209843, 36.917534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701336, 36.571529, 36.746796>,  <31.698063, 36.788544, 36.644352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701336, 36.571529, 36.746796>,  <31.706791, 36.209843, 36.917534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701336, 36.571529, 36.746796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513062, 0.372735, 0.773199,
		0.858243, -0.208453, -0.469005,
		-0.013639, 0.904221, -0.426847,
		31.697245, 36.842796, 36.618740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441784, 36.416985, 36.931973>,  <31.706791, 36.209843, 36.917534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441784, 36.416985, 36.931973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193226, 36.722630, 36.862690>,  <32.044090, 36.906017, 36.821121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193226, 36.722630, 36.862690>,  <32.441784, 36.416985, 36.931973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193226, 36.722630, 36.862690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577795, 0.596221, 0.557381,
		0.529171, 0.246276, -0.811989,
		-0.621395, 0.764113, -0.173206,
		32.006809, 36.951862, 36.810730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926659, 36.964214, 36.965771>,  <32.441784, 36.416985, 36.931973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926659, 36.964214, 36.965771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573372, 37.142334, 37.024605>,  <32.361401, 37.249207, 37.059906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573372, 37.142334, 37.024605>,  <32.926659, 36.964214, 36.965771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573372, 37.142334, 37.024605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456252, 0.743424, 0.489035,
		0.108422, 0.499031, -0.859775,
		-0.883221, 0.445296, 0.147081,
		32.308407, 37.275925, 37.068729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033714, 37.725975, 37.016979>,  <32.926659, 36.964214, 36.965771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033714, 37.725975, 37.016979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661236, 37.706944, 37.161541>,  <32.437748, 37.695526, 37.248276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661236, 37.706944, 37.161541>,  <33.033714, 37.725975, 37.016979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661236, 37.706944, 37.161541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214092, 0.731042, 0.647875,
		-0.295023, 0.680672, -0.670557,
		-0.931196, -0.047577, 0.361400,
		32.381878, 37.692669, 37.269962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849899, 38.414341, 37.118847>,  <33.033714, 37.725975, 37.016979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849899, 38.414341, 37.118847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601650, 38.200977, 37.348736>,  <32.452702, 38.072960, 37.486668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601650, 38.200977, 37.348736>,  <32.849899, 38.414341, 37.118847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601650, 38.200977, 37.348736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251725, 0.558623, 0.790300,
		-0.742607, 0.635148, -0.212420,
		-0.620620, -0.533411, 0.574720,
		32.415462, 38.040955, 37.521152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356216, 38.867722, 37.424614>,  <32.849899, 38.414341, 37.118847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356216, 38.867722, 37.424614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330856, 38.556904, 37.675114>,  <32.315639, 38.370415, 37.825413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330856, 38.556904, 37.675114>,  <32.356216, 38.867722, 37.424614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330856, 38.556904, 37.675114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111674, 0.618044, 0.778171,
		-0.991720, 0.119273, 0.047591,
		-0.063401, -0.777043, 0.626247,
		32.311836, 38.323792, 37.862988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991430, 39.155998, 37.936844>,  <32.356216, 38.867722, 37.424614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991430, 39.155998, 37.936844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175156, 38.822380, 38.059090>,  <32.285393, 38.622208, 38.132435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175156, 38.822380, 38.059090>,  <31.991430, 39.155998, 37.936844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175156, 38.822380, 38.059090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077842, 0.380522, 0.921490,
		-0.884856, -0.399465, 0.239703,
		0.459315, -0.834045, 0.305612,
		32.312950, 38.572166, 38.150772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711325, 39.129608, 38.587063>,  <31.991430, 39.155998, 37.936844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711325, 39.129608, 38.587063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051365, 38.919067, 38.580299>,  <32.255390, 38.792744, 38.576241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051365, 38.919067, 38.580299>,  <31.711325, 39.129608, 38.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051365, 38.919067, 38.580299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221375, 0.328043, 0.918358,
		-0.477833, -0.784438, 0.395390,
		0.850099, -0.526351, -0.016905,
		32.306396, 38.761162, 38.575230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750158, 38.852600, 39.219067>,  <31.711325, 39.129608, 38.587063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750158, 38.852600, 39.219067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126366, 38.772514, 39.109272>,  <32.352089, 38.724464, 39.043396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126366, 38.772514, 39.109272>,  <31.750158, 38.852600, 39.219067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126366, 38.772514, 39.109272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317243, 0.228379, 0.920435,
		-0.121593, -0.952764, 0.278310,
		0.940517, -0.200211, -0.274488,
		32.408520, 38.712452, 39.026924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120296, 38.284546, 39.760387>,  <31.750158, 38.852600, 39.219067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120296, 38.284546, 39.760387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371456, 38.544239, 39.588696>,  <32.522152, 38.700054, 39.485680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371456, 38.544239, 39.588696>,  <32.120296, 38.284546, 39.760387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371456, 38.544239, 39.588696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324097, 0.283295, 0.902610,
		0.707602, -0.705862, -0.032533,
		0.627902, 0.649232, -0.429227,
		32.559826, 38.739010, 39.459927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762325, 38.149326, 40.135235>,  <32.120296, 38.284546, 39.760387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762325, 38.149326, 40.135235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809288, 38.500717, 39.949982>,  <32.837467, 38.711552, 39.838829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809288, 38.500717, 39.949982>,  <32.762325, 38.149326, 40.135235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809288, 38.500717, 39.949982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563047, 0.325275, 0.759720,
		0.818043, -0.349961, -0.456435,
		0.117405, 0.878478, -0.463134,
		32.844509, 38.764259, 39.811043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437511, 38.226704, 40.016823>,  <32.762325, 38.149326, 40.135235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437511, 38.226704, 40.016823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286949, 38.596073, 39.986851>,  <33.196613, 38.817696, 39.968868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286949, 38.596073, 39.986851>,  <33.437511, 38.226704, 40.016823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286949, 38.596073, 39.986851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609293, 0.307663, 0.730825,
		0.697911, 0.229433, -0.678440,
		-0.376406, 0.923420, -0.074930,
		33.174026, 38.873100, 39.964371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959507, 38.678486, 40.074787>,  <33.437511, 38.226704, 40.016823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959507, 38.678486, 40.074787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645973, 38.911999, 40.159458>,  <33.457855, 39.052105, 40.210262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645973, 38.911999, 40.159458>,  <33.959507, 38.678486, 40.074787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645973, 38.911999, 40.159458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552773, 0.500639, 0.666186,
		0.282929, 0.639190, -0.715114,
		-0.783833, 0.583778, 0.211682,
		33.410824, 39.087132, 40.222961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218361, 39.319454, 40.078377>,  <33.959507, 38.678486, 40.074787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218361, 39.319454, 40.078377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878262, 39.349934, 40.286713>,  <33.674202, 39.368221, 40.411716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878262, 39.349934, 40.286713>,  <34.218361, 39.319454, 40.078377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878262, 39.349934, 40.286713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477929, 0.526436, 0.703171,
		-0.220609, 0.846793, -0.484017,
		-0.850245, 0.076200, 0.520843,
		33.623188, 39.372795, 40.442966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386646, 39.839233, 40.515060>,  <34.218361, 39.319454, 40.078377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386646, 39.839233, 40.515060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047493, 39.709553, 40.682865>,  <33.844002, 39.631744, 40.783546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047493, 39.709553, 40.682865>,  <34.386646, 39.839233, 40.515060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047493, 39.709553, 40.682865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199173, 0.538527, 0.818730,
		-0.491355, 0.777740, -0.392034,
		-0.847880, -0.324204, 0.419513,
		33.793129, 39.612293, 40.808720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089333, 40.420357, 40.753128>,  <34.386646, 39.839233, 40.515060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089333, 40.420357, 40.753128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959637, 40.107082, 40.965351>,  <33.881821, 39.919117, 41.092686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959637, 40.107082, 40.965351>,  <34.089333, 40.420357, 40.753128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959637, 40.107082, 40.965351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324768, 0.434613, 0.840022,
		-0.888480, 0.444674, 0.113436,
		-0.324235, -0.783183, 0.530562,
		33.862366, 39.872128, 41.124519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784275, 40.707787, 41.374702>,  <34.089333, 40.420357, 40.753128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784275, 40.707787, 41.374702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792828, 40.323257, 41.484539>,  <33.797958, 40.092541, 41.550442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792828, 40.323257, 41.484539>,  <33.784275, 40.707787, 41.374702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792828, 40.323257, 41.484539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223756, 0.272294, 0.935836,
		-0.974410, 0.041429, 0.220925,
		0.021385, -0.961322, 0.274596,
		33.799244, 40.034863, 41.566917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226059, 40.536858, 41.905415>,  <33.784275, 40.707787, 41.374702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226059, 40.536858, 41.905415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523952, 40.274715, 41.955814>,  <33.702690, 40.117428, 41.986053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523952, 40.274715, 41.955814>,  <33.226059, 40.536858, 41.905415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523952, 40.274715, 41.955814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042960, 0.235486, 0.970928,
		-0.665975, -0.717672, 0.203530,
		0.744736, -0.655358, 0.125997,
		33.747372, 40.078110, 41.993614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967510, 40.106464, 42.437504>,  <33.226059, 40.536858, 41.905415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967510, 40.106464, 42.437504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364178, 40.065323, 42.406460>,  <33.602177, 40.040638, 42.387833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364178, 40.065323, 42.406460>,  <32.967510, 40.106464, 42.437504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364178, 40.065323, 42.406460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094926, 0.175898, 0.979821,
		-0.087126, -0.979021, 0.184195,
		0.991664, -0.102852, -0.077610,
		33.661678, 40.034466, 42.383179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174984, 39.872887, 43.039547>,  <32.967510, 40.106464, 42.437504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174984, 39.872887, 43.039547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535816, 39.988041, 42.910938>,  <33.752316, 40.057133, 42.833775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535816, 39.988041, 42.910938>,  <33.174984, 39.872887, 43.039547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535816, 39.988041, 42.910938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337773, -0.007246, 0.941200,
		0.268627, -0.957638, -0.103776,
		0.902081, 0.287884, -0.321517,
		33.806442, 40.074406, 42.814484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671368, 39.391369, 43.280575>,  <33.174984, 39.872887, 43.039547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671368, 39.391369, 43.280575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867226, 39.735912, 43.226448>,  <33.984741, 39.942638, 43.193974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867226, 39.735912, 43.226448>,  <33.671368, 39.391369, 43.280575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867226, 39.735912, 43.226448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391075, -0.078247, 0.917026,
		0.779300, -0.501936, -0.375169,
		0.489644, 0.861358, -0.135317,
		34.014118, 39.994320, 43.185852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381691, 39.347485, 43.595413>,  <33.671368, 39.391369, 43.280575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381691, 39.347485, 43.595413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350227, 39.745220, 43.566830>,  <34.331348, 39.983860, 43.549679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350227, 39.745220, 43.566830>,  <34.381691, 39.347485, 43.595413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350227, 39.745220, 43.566830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262579, 0.089818, 0.960721,
		0.961700, 0.056800, -0.268156,
		-0.078654, 0.994337, -0.071463,
		34.326630, 40.043522, 43.545391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024502, 39.645206, 43.903965>,  <34.381691, 39.347485, 43.595413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024502, 39.645206, 43.903965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758312, 39.943443, 43.889862>,  <34.598598, 40.122387, 43.881401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758312, 39.943443, 43.889862>,  <35.024502, 39.645206, 43.903965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758312, 39.943443, 43.889862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186514, 0.211839, 0.959342,
		0.722746, 0.631837, -0.280036,
		-0.665470, 0.745591, -0.035259,
		34.558670, 40.167122, 43.879284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240723, 40.143833, 44.344032>,  <35.024502, 39.645206, 43.903965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240723, 40.143833, 44.344032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862259, 40.261269, 44.289490>,  <34.635181, 40.331730, 44.256763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862259, 40.261269, 44.289490>,  <35.240723, 40.143833, 44.344032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862259, 40.261269, 44.289490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036551, 0.321643, 0.946155,
		0.321643, 0.900194, -0.293593,
		-0.946155, 0.293593, -0.136357,
		34.578411, 40.349346, 44.248581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156017, 40.862312, 44.580578>,  <35.240723, 40.143833, 44.344032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156017, 40.862312, 44.580578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787674, 40.710045, 44.614307>,  <34.566669, 40.618683, 44.634544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787674, 40.710045, 44.614307>,  <35.156017, 40.862312, 44.580578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787674, 40.710045, 44.614307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027958, 0.151258, 0.988099,
		-0.388896, 0.912256, -0.128645,
		-0.920857, -0.380671, 0.084328,
		34.511417, 40.595844, 44.639606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733078, 41.364258, 44.922665>,  <35.156017, 40.862312, 44.580578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733078, 41.364258, 44.922665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555340, 41.011795, 44.987316>,  <34.448696, 40.800320, 45.026108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555340, 41.011795, 44.987316>,  <34.733078, 41.364258, 44.922665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555340, 41.011795, 44.987316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037398, 0.162019, 0.986079,
		-0.895074, 0.444206, -0.039040,
		-0.444347, -0.881153, 0.161631,
		34.422035, 40.747448, 45.035805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298996, 41.521400, 45.389481>,  <34.733078, 41.364258, 44.922665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298996, 41.521400, 45.389481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349361, 41.125751, 45.419907>,  <34.379581, 40.888363, 45.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349361, 41.125751, 45.419907>,  <34.298996, 41.521400, 45.389481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349361, 41.125751, 45.419907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064273, 0.068379, 0.995587,
		-0.989957, -0.130249, -0.054964,
		0.125916, -0.989120, 0.076063,
		34.387135, 40.829014, 45.442726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753349, 41.344364, 45.758354>,  <34.298996, 41.521400, 45.389481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753349, 41.344364, 45.758354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009468, 41.040901, 45.806454>,  <34.163139, 40.858822, 45.835312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009468, 41.040901, 45.806454>,  <33.753349, 41.344364, 45.758354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009468, 41.040901, 45.806454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096583, 0.075790, 0.992435,
		-0.762035, -0.647063, -0.024746,
		0.640293, -0.758660, 0.120250,
		34.201557, 40.813305, 45.842529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393929, 41.016914, 46.320637>,  <33.753349, 41.344364, 45.758354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393929, 41.016914, 46.320637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770084, 40.887814, 46.277752>,  <33.995777, 40.810352, 46.252022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770084, 40.887814, 46.277752>,  <33.393929, 41.016914, 46.320637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770084, 40.887814, 46.277752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083890, -0.085373, 0.992811,
		-0.329583, -0.942626, -0.053209,
		0.940392, -0.322750, -0.107214,
		34.052200, 40.790989, 46.245586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452385, 40.475761, 46.759972>,  <33.393929, 41.016914, 46.320637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452385, 40.475761, 46.759972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795216, 40.671017, 46.694077>,  <34.000916, 40.788170, 46.654541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795216, 40.671017, 46.694077>,  <33.452385, 40.475761, 46.759972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795216, 40.671017, 46.694077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096216, 0.162475, 0.982010,
		0.506126, -0.857508, 0.092286,
		0.857076, 0.488141, -0.164739,
		34.052338, 40.817459, 46.644653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904457, 40.434898, 47.420082>,  <33.452385, 40.475761, 46.759972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904457, 40.434898, 47.420082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104145, 40.703796, 47.201408>,  <34.223957, 40.865135, 47.070206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104145, 40.703796, 47.201408>,  <33.904457, 40.434898, 47.420082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104145, 40.703796, 47.201408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407172, 0.374922, 0.832854,
		0.764849, -0.638369, -0.086553,
		0.499217, 0.672249, -0.546684,
		34.253910, 40.905472, 47.037403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578003, 40.301193, 47.617748>,  <33.904457, 40.434898, 47.420082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578003, 40.301193, 47.617748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561657, 40.677769, 47.483875>,  <34.551849, 40.903717, 47.403549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561657, 40.677769, 47.483875>,  <34.578003, 40.301193, 47.617748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561657, 40.677769, 47.483875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482253, 0.311950, 0.818608,
		0.875078, -0.127950, -0.466762,
		-0.040865, 0.941443, -0.334685,
		34.549397, 40.960201, 47.383469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284389, 40.612465, 47.673794>,  <34.578003, 40.301193, 47.617748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284389, 40.612465, 47.673794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016350, 40.909351, 47.670071>,  <34.855526, 41.087482, 47.667839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016350, 40.909351, 47.670071>,  <35.284389, 40.612465, 47.673794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016350, 40.909351, 47.670071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460077, 0.425148, 0.779473,
		0.582490, 0.518045, -0.626367,
		-0.670100, 0.742212, -0.009304,
		34.815319, 41.132015, 47.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695633, 41.134274, 47.648132>,  <35.284389, 40.612465, 47.673794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695633, 41.134274, 47.648132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343437, 41.280540, 47.768818>,  <35.132122, 41.368301, 47.841228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343437, 41.280540, 47.768818>,  <35.695633, 41.134274, 47.648132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343437, 41.280540, 47.768818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469932, 0.589319, 0.657166,
		0.062497, 0.720411, -0.690726,
		-0.880488, 0.365665, 0.301713,
		35.079292, 41.390240, 47.859333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923416, 41.775272, 47.810604>,  <35.695633, 41.134274, 47.648132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923416, 41.775272, 47.810604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570576, 41.706223, 47.985916>,  <35.358871, 41.664791, 48.091103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570576, 41.706223, 47.985916>,  <35.923416, 41.775272, 47.810604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570576, 41.706223, 47.985916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284581, 0.546146, 0.787869,
		-0.375376, 0.819709, -0.432631,
		-0.882103, -0.172629, 0.438284,
		35.305946, 41.654434, 48.117401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804001, 42.415730, 48.150734>,  <35.923416, 41.775272, 47.810604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804001, 42.415730, 48.150734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550713, 42.155247, 48.318047>,  <35.398739, 41.998955, 48.418434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550713, 42.155247, 48.318047>,  <35.804001, 42.415730, 48.150734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550713, 42.155247, 48.318047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251590, 0.337893, 0.906935,
		-0.731940, 0.679523, -0.050122,
		-0.633220, -0.651211, 0.418278,
		35.360748, 41.959885, 48.443531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686764, 42.706635, 48.850906>,  <35.804001, 42.415730, 48.150734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686764, 42.706635, 48.850906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555878, 42.329865, 48.881104>,  <35.477345, 42.103802, 48.899223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555878, 42.329865, 48.881104>,  <35.686764, 42.706635, 48.850906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555878, 42.329865, 48.881104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389164, -0.061527, 0.919112,
		-0.861092, 0.330130, 0.386697,
		-0.327219, -0.941928, 0.075494,
		35.457710, 42.047287, 48.903751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465168, 42.704208, 49.457748>,  <35.686764, 42.706635, 48.850906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465168, 42.704208, 49.457748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532196, 42.323940, 49.353325>,  <35.572411, 42.095779, 49.290668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532196, 42.323940, 49.353325>,  <35.465168, 42.704208, 49.457748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532196, 42.323940, 49.353325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520168, -0.139689, 0.842563,
		-0.837465, -0.276981, 0.471100,
		0.167566, -0.950668, -0.261061,
		35.582466, 42.038738, 49.275005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195610, 42.198971, 49.993137>,  <35.465168, 42.704208, 49.457748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195610, 42.198971, 49.993137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490402, 42.048866, 49.768269>,  <35.667278, 41.958801, 49.633347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490402, 42.048866, 49.768269>,  <35.195610, 42.198971, 49.993137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490402, 42.048866, 49.768269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518763, -0.219132, 0.826357,
		-0.433293, -0.900642, 0.033178,
		0.736982, -0.375266, -0.562168,
		35.711498, 41.936287, 49.599617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453423, 41.541203, 50.246918>,  <35.195610, 42.198971, 49.993137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453423, 41.541203, 50.246918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753620, 41.729931, 50.061817>,  <35.933739, 41.843166, 49.950756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753620, 41.729931, 50.061817>,  <35.453423, 41.541203, 50.246918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753620, 41.729931, 50.061817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600147, -0.193364, 0.776166,
		0.276732, -0.860230, -0.428281,
		0.750495, 0.471821, -0.462754,
		35.978767, 41.871479, 49.922993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509590, 41.977001, 50.868004>,  <35.453423, 41.541203, 50.246918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509590, 41.977001, 50.868004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650421, 41.602634, 50.872124>,  <35.734921, 41.378014, 50.874596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650421, 41.602634, 50.872124>,  <35.509590, 41.977001, 50.868004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650421, 41.602634, 50.872124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348064, 0.141135, 0.926786,
		-0.868844, -0.322720, 0.375449,
		0.352081, -0.935913, 0.010297,
		35.756046, 41.321861, 50.875214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339607, 41.615780, 51.576641>,  <35.509590, 41.977001, 50.868004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339607, 41.615780, 51.576641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664883, 41.461765, 51.402069>,  <35.860046, 41.369354, 51.297325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664883, 41.461765, 51.402069>,  <35.339607, 41.615780, 51.576641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664883, 41.461765, 51.402069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464201, -0.023235, 0.885425,
		-0.351064, -0.922608, 0.159842,
		0.813186, -0.385040, -0.436432,
		35.908840, 41.346252, 51.271141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521309, 41.061783, 51.961468>,  <35.339607, 41.615780, 51.576641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521309, 41.061783, 51.961468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836777, 41.210304, 51.765457>,  <36.026058, 41.299416, 51.647850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836777, 41.210304, 51.765457>,  <35.521309, 41.061783, 51.961468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836777, 41.210304, 51.765457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552711, -0.079121, 0.829609,
		0.269266, -0.925134, -0.267625,
		0.788674, 0.371305, -0.490026,
		36.073380, 41.321697, 51.618450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081139, 40.775204, 52.142769>,  <35.521309, 41.061783, 51.961468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081139, 40.775204, 52.142769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236019, 41.116318, 52.002583>,  <36.328949, 41.320988, 51.918468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236019, 41.116318, 52.002583>,  <36.081139, 40.775204, 52.142769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236019, 41.116318, 52.002583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622695, 0.038451, 0.781520,
		0.679946, -0.520842, -0.516138,
		0.387202, 0.852787, -0.350470,
		36.352180, 41.372154, 51.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770939, 40.372566, 52.356937>,  <36.081139, 40.775204, 52.142769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770939, 40.372566, 52.356937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084801, 40.256569, 52.137764>,  <37.273117, 40.186970, 52.006260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084801, 40.256569, 52.137764>,  <36.770939, 40.372566, 52.356937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084801, 40.256569, 52.137764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486020, 0.260930, -0.834086,
		0.384849, 0.920772, 0.063798,
		0.784650, -0.289990, -0.547932,
		37.320194, 40.169571, 51.973385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859970, 40.355953, 51.631336>,  <36.770939, 40.372566, 52.356937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859970, 40.355953, 51.631336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145248, 40.132637, 51.461792>,  <37.316414, 39.998646, 51.360065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145248, 40.132637, 51.461792>,  <36.859970, 40.355953, 51.631336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145248, 40.132637, 51.461792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636231, -0.261776, -0.725730,
		0.294214, 0.787262, -0.541901,
		0.713196, -0.558294, -0.423862,
		37.359207, 39.965149, 51.334633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128223, 40.599167, 51.007347>,  <36.859970, 40.355953, 51.631336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128223, 40.599167, 51.007347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128910, 40.199169, 51.007633>,  <37.129322, 39.959171, 51.007805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128910, 40.199169, 51.007633>,  <37.128223, 40.599167, 51.007347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128910, 40.199169, 51.007633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442196, -0.001402, -0.896917,
		0.896917, 0.001222, -0.442198,
		0.001716, -0.999998, 0.000717,
		37.129425, 39.899170, 51.007847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459656, 40.233795, 50.393459>,  <37.128223, 40.599167, 51.007347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459656, 40.233795, 50.393459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142326, 40.024387, 50.517761>,  <36.951927, 39.898743, 50.592342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142326, 40.024387, 50.517761>,  <37.459656, 40.233795, 50.393459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142326, 40.024387, 50.517761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347402, -0.029891, -0.937240,
		0.499950, -0.851490, -0.158158,
		-0.793323, -0.523518, 0.310753,
		36.904331, 39.867332, 50.610989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376102, 39.536552, 50.140343>,  <37.459656, 40.233795, 50.393459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376102, 39.536552, 50.140343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006985, 39.672501, 50.212948>,  <36.785515, 39.754070, 50.256508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006985, 39.672501, 50.212948>,  <37.376102, 39.536552, 50.140343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006985, 39.672501, 50.212948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245481, -0.155506, -0.956847,
		-0.296981, -0.927526, 0.226932,
		-0.922790, 0.339873, 0.181508,
		36.730148, 39.774464, 50.267399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787605, 39.042850, 50.108414>,  <37.376102, 39.536552, 50.140343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787605, 39.042850, 50.108414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651661, 39.406105, 50.010605>,  <36.570095, 39.624058, 49.951920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651661, 39.406105, 50.010605>,  <36.787605, 39.042850, 50.108414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651661, 39.406105, 50.010605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009485, -0.263293, -0.964669,
		-0.940429, -0.325530, 0.098095,
		-0.339857, 0.908134, -0.244521,
		36.549706, 39.678547, 49.937248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180775, 39.036266, 49.553059>,  <36.787605, 39.042850, 50.108414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180775, 39.036266, 49.553059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329453, 39.406940, 49.530800>,  <36.418659, 39.629345, 49.517445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329453, 39.406940, 49.530800>,  <36.180775, 39.036266, 49.553059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329453, 39.406940, 49.530800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046957, -0.078630, -0.995797,
		-0.927168, 0.367516, -0.072740,
		0.371691, 0.926687, -0.055646,
		36.440960, 39.684948, 49.514107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975643, 39.317604, 48.950603>,  <36.180775, 39.036266, 49.553059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975643, 39.317604, 48.950603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271095, 39.579632, 49.014236>,  <36.448368, 39.736847, 49.052414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271095, 39.579632, 49.014236>,  <35.975643, 39.317604, 48.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271095, 39.579632, 49.014236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075661, 0.153931, -0.985181,
		-0.669847, 0.739724, 0.064136,
		0.738635, 0.655067, 0.159078,
		36.492687, 39.776154, 49.061958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786213, 39.852566, 48.422588>,  <35.975643, 39.317604, 48.950603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786213, 39.852566, 48.422588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166767, 39.875275, 48.543674>,  <36.395100, 39.888901, 48.616325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166767, 39.875275, 48.543674>,  <35.786213, 39.852566, 48.422588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166767, 39.875275, 48.543674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301676, 0.026219, -0.953050,
		-0.062044, 0.998043, 0.007817,
		0.951390, 0.056773, 0.302712,
		36.452183, 39.892307, 48.634487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991756, 40.267281, 47.980202>,  <35.786213, 39.852566, 48.422588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991756, 40.267281, 47.980202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328770, 40.094910, 48.109470>,  <36.530979, 39.991486, 48.187031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328770, 40.094910, 48.109470>,  <35.991756, 40.267281, 47.980202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328770, 40.094910, 48.109470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322254, -0.077489, -0.943477,
		0.431611, 0.899054, 0.073580,
		0.842535, -0.430926, 0.323169,
		36.581532, 39.965633, 48.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608543, 40.665203, 47.589584>,  <35.991756, 40.267281, 47.980202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608543, 40.665203, 47.589584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740761, 40.313435, 47.726612>,  <36.820091, 40.102371, 47.808830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740761, 40.313435, 47.726612>,  <36.608543, 40.665203, 47.589584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740761, 40.313435, 47.726612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369320, -0.213506, -0.904443,
		0.868531, 0.425474, 0.254216,
		0.330541, -0.879424, 0.342573,
		36.839924, 40.049606, 47.829384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336414, 40.615898, 47.343788>,  <36.608543, 40.665203, 47.589584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336414, 40.615898, 47.343788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250340, 40.236416, 47.436436>,  <37.198696, 40.008724, 47.492023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250340, 40.236416, 47.436436>,  <37.336414, 40.615898, 47.343788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250340, 40.236416, 47.436436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201430, -0.275195, -0.940050,
		0.955574, -0.155630, 0.250317,
		-0.215186, -0.948708, 0.231621,
		37.185783, 39.951805, 47.505920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926758, 40.100735, 47.224606>,  <37.336414, 40.615898, 47.343788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926758, 40.100735, 47.224606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617889, 39.850090, 47.182461>,  <37.432568, 39.699703, 47.157173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617889, 39.850090, 47.182461>,  <37.926758, 40.100735, 47.224606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617889, 39.850090, 47.182461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415161, -0.372007, -0.830212,
		0.481029, -0.684809, 0.547400,
		-0.772173, -0.626616, -0.105360,
		37.386238, 39.662106, 47.150852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167068, 39.652077, 46.817791>,  <37.926758, 40.100735, 47.224606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167068, 39.652077, 46.817791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785450, 39.533100, 46.832382>,  <37.556480, 39.461716, 46.841137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785450, 39.533100, 46.832382>,  <38.167068, 39.652077, 46.817791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785450, 39.533100, 46.832382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130740, -0.522685, -0.842441,
		0.269643, -0.798956, 0.537551,
		-0.954044, -0.297438, 0.036483,
		37.499237, 39.443871, 46.843327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250854, 38.880131, 46.727310>,  <38.167068, 39.652077, 46.817791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250854, 38.880131, 46.727310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889153, 39.017387, 46.625664>,  <37.672131, 39.099743, 46.564674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889153, 39.017387, 46.625664>,  <38.250854, 38.880131, 46.727310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889153, 39.017387, 46.625664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082974, -0.442572, -0.892886,
		-0.418848, -0.828484, 0.371727,
		-0.904258, 0.343140, -0.254113,
		37.617874, 39.120331, 46.549431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874950, 38.288372, 46.464592>,  <38.250854, 38.880131, 46.727310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874950, 38.288372, 46.464592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705082, 38.613117, 46.304325>,  <37.603161, 38.807964, 46.208164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705082, 38.613117, 46.304325>,  <37.874950, 38.288372, 46.464592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705082, 38.613117, 46.304325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088916, -0.403020, -0.910861,
		-0.900971, -0.422442, 0.098964,
		-0.424670, 0.811860, -0.400671,
		37.577682, 38.856674, 46.184124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261921, 38.027668, 46.068138>,  <37.874950, 38.288372, 46.464592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261921, 38.027668, 46.068138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356918, 38.389851, 45.927429>,  <37.413918, 38.607159, 45.843002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356918, 38.389851, 45.927429>,  <37.261921, 38.027668, 46.068138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356918, 38.389851, 45.927429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110534, -0.334596, -0.935857,
		-0.965079, 0.261148, 0.020618,
		0.237498, 0.905454, -0.351777,
		37.428169, 38.661488, 45.821896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761597, 38.209026, 45.633610>,  <37.261921, 38.027668, 46.068138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761597, 38.209026, 45.633610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052174, 38.462215, 45.526558>,  <37.226521, 38.614128, 45.462326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052174, 38.462215, 45.526558>,  <36.761597, 38.209026, 45.633610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052174, 38.462215, 45.526558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257711, -0.110101, -0.959929,
		-0.637072, 0.766307, 0.083141,
		0.726446, 0.632970, -0.267628,
		37.270107, 38.652107, 45.446270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432049, 38.680622, 45.186497>,  <36.761597, 38.209026, 45.633610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432049, 38.680622, 45.186497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824329, 38.689262, 45.108776>,  <37.059700, 38.694447, 45.062141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824329, 38.689262, 45.108776>,  <36.432049, 38.680622, 45.186497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824329, 38.689262, 45.108776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190156, -0.125413, -0.973710,
		-0.045398, 0.991869, -0.118886,
		0.980704, 0.021598, -0.194303,
		37.118542, 38.695744, 45.050484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435829, 38.987385, 44.546524>,  <36.432049, 38.680622, 45.186497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435829, 38.987385, 44.546524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819237, 38.877140, 44.575584>,  <37.049282, 38.810993, 44.593021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819237, 38.877140, 44.575584>,  <36.435829, 38.987385, 44.546524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819237, 38.877140, 44.575584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006255, -0.275167, -0.961376,
		0.284956, 0.921044, -0.265477,
		0.958520, -0.275611, 0.072650,
		37.106792, 38.794456, 44.597378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794010, 39.375584, 44.041489>,  <36.435829, 38.987385, 44.546524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794010, 39.375584, 44.041489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985527, 39.034618, 44.125530>,  <37.100437, 38.830040, 44.175957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985527, 39.034618, 44.125530>,  <36.794010, 39.375584, 44.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985527, 39.034618, 44.125530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095585, -0.288508, -0.952694,
		0.872710, 0.436059, -0.219613,
		0.478791, -0.852417, 0.210103,
		37.129166, 38.778893, 44.188560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150066, 39.209091, 43.427498>,  <36.794010, 39.375584, 44.041489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150066, 39.209091, 43.427498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129543, 38.850552, 43.603649>,  <37.117229, 38.635429, 43.709339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129543, 38.850552, 43.603649>,  <37.150066, 39.209091, 43.427498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129543, 38.850552, 43.603649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095091, -0.434568, -0.895605,
		0.994146, -0.087823, -0.062940,
		-0.051303, -0.896347, 0.440375,
		37.114151, 38.581646, 43.735764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724705, 38.828259, 43.244656>,  <37.150066, 39.209091, 43.427498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724705, 38.828259, 43.244656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 38.566547, 43.358849>,  <37.276512, 38.409523, 43.427364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 38.566547, 43.358849>,  <37.724705, 38.828259, 43.244656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444584, 38.566547, 43.358849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062688, -0.454740, -0.888415,
		0.711085, -0.604266, 0.359472,
		-0.700306, -0.654274, 0.285478,
		37.234493, 38.370266, 43.444492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861019, 38.271793, 42.785866>,  <37.724705, 38.828259, 43.244656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861019, 38.271793, 42.785866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530098, 38.138401, 42.966690>,  <37.331543, 38.058365, 43.075184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530098, 38.138401, 42.966690>,  <37.861019, 38.271793, 42.785866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530098, 38.138401, 42.966690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156329, -0.636267, -0.755464,
		0.539560, -0.695670, 0.474256,
		-0.827307, -0.333478, 0.452057,
		37.281906, 38.038357, 43.102306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970238, 37.545811, 43.016659>,  <37.861019, 38.271793, 42.785866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970238, 37.545811, 43.016659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581814, 37.612751, 42.948505>,  <37.348759, 37.652916, 42.907612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581814, 37.612751, 42.948505>,  <37.970238, 37.545811, 43.016659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581814, 37.612751, 42.948505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009282, -0.686444, -0.727124,
		-0.238643, -0.707664, 0.665027,
		-0.971063, 0.167351, -0.170384,
		37.290497, 37.662956, 42.897388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617989, 36.750637, 42.964382>,  <37.970238, 37.545811, 43.016659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617989, 36.750637, 42.964382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364620, 37.019356, 42.810772>,  <37.212601, 37.180588, 42.718605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364620, 37.019356, 42.810772>,  <37.617989, 36.750637, 42.964382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364620, 37.019356, 42.810772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194319, -0.618468, -0.761405,
		-0.749015, -0.407663, 0.522291,
		-0.633417, 0.671795, -0.384025,
		37.174595, 37.220894, 42.695564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017982, 36.447231, 42.779942>,  <37.617989, 36.750637, 42.964382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017982, 36.447231, 42.779942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981953, 36.786858, 42.571724>,  <36.960335, 36.990635, 42.446793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981953, 36.786858, 42.571724>,  <37.017982, 36.447231, 42.779942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981953, 36.786858, 42.571724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302742, -0.521279, -0.797882,
		-0.948807, 0.085722, 0.304003,
		-0.090074, 0.849070, -0.520544,
		36.954929, 37.041580, 42.415562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310524, 36.368965, 42.402157>,  <37.017982, 36.447231, 42.779942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310524, 36.368965, 42.402157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515095, 36.660126, 42.219463>,  <36.637836, 36.834820, 42.109848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515095, 36.660126, 42.219463>,  <36.310524, 36.368965, 42.402157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515095, 36.660126, 42.219463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203088, -0.414058, -0.887305,
		-0.834981, 0.546552, -0.063934,
		0.511431, 0.727899, -0.456729,
		36.668526, 36.878494, 42.082443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793869, 36.626347, 41.928757>,  <36.310524, 36.368965, 42.402157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793869, 36.626347, 41.928757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136135, 36.770893, 41.780563>,  <36.341496, 36.857620, 41.691647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136135, 36.770893, 41.780563>,  <35.793869, 36.626347, 41.928757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136135, 36.770893, 41.780563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305428, -0.225312, -0.925175,
		-0.417800, 0.904793, -0.082420,
		0.855661, 0.361365, -0.370485,
		36.392834, 36.879303, 41.669418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619305, 37.085106, 41.451969>,  <35.793869, 36.626347, 41.928757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619305, 37.085106, 41.451969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998043, 36.989674, 41.365658>,  <36.225285, 36.932415, 41.313869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998043, 36.989674, 41.365658>,  <35.619305, 37.085106, 41.451969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998043, 36.989674, 41.365658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247723, -0.112862, -0.962235,
		0.205221, 0.964541, -0.165966,
		0.946846, -0.238584, -0.215778,
		36.282097, 36.918098, 41.300926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679226, 37.462666, 40.886459>,  <35.619305, 37.085106, 41.451969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679226, 37.462666, 40.886459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967777, 37.186268, 40.867958>,  <36.140907, 37.020428, 40.856857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967777, 37.186268, 40.867958>,  <35.679226, 37.462666, 40.886459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967777, 37.186268, 40.867958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387464, -0.347338, -0.853948,
		0.574012, 0.633938, -0.518298,
		0.721375, -0.690998, -0.046253,
		36.184189, 36.978970, 40.854084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122158, 37.531273, 40.320999>,  <35.679226, 37.462666, 40.886459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122158, 37.531273, 40.320999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156834, 37.145084, 40.419266>,  <36.177639, 36.913372, 40.478226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156834, 37.145084, 40.419266>,  <36.122158, 37.531273, 40.320999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156834, 37.145084, 40.419266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342986, -0.260444, -0.902513,
		0.935332, -0.006023, -0.353720,
		0.086689, -0.965470, 0.245667,
		36.182838, 36.855442, 40.492966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321236, 37.219353, 39.698471>,  <36.122158, 37.531273, 40.320999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321236, 37.219353, 39.698471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229847, 36.890160, 39.906509>,  <36.175014, 36.692642, 40.031330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229847, 36.890160, 39.906509>,  <36.321236, 37.219353, 39.698471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229847, 36.890160, 39.906509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424225, -0.396677, -0.814052,
		0.876261, -0.406625, -0.258500,
		-0.228473, -0.822984, 0.520093,
		36.161304, 36.643265, 40.062538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467941, 36.634460, 39.304153>,  <36.321236, 37.219353, 39.698471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467941, 36.634460, 39.304153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211418, 36.504364, 39.582127>,  <36.057503, 36.426304, 39.748913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211418, 36.504364, 39.582127>,  <36.467941, 36.634460, 39.304153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211418, 36.504364, 39.582127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559685, -0.421256, -0.713650,
		0.524857, -0.846616, 0.088120,
		-0.641309, -0.325245, 0.694938,
		36.019024, 36.406792, 39.790607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257206, 36.004719, 39.051315>,  <36.467941, 36.634460, 39.304153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257206, 36.004719, 39.051315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957394, 36.077847, 39.305805>,  <35.777508, 36.121723, 39.458500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957394, 36.077847, 39.305805>,  <36.257206, 36.004719, 39.051315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957394, 36.077847, 39.305805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659040, -0.296410, -0.691236,
		0.062210, -0.937399, 0.342655,
		-0.749531, 0.182821, 0.636223,
		35.732533, 36.132694, 39.496674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672424, 35.387417, 39.124496>,  <36.257206, 36.004719, 39.051315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672424, 35.387417, 39.124496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493584, 35.726955, 39.237316>,  <35.386280, 35.930679, 39.305008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493584, 35.726955, 39.237316>,  <35.672424, 35.387417, 39.124496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493584, 35.726955, 39.237316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764521, -0.198961, -0.613124,
		-0.464332, -0.489766, 0.737919,
		-0.447105, 0.848848, 0.282053,
		35.359451, 35.981609, 39.321934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132072, 35.077625, 39.100994>,  <35.672424, 35.387417, 39.124496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132072, 35.077625, 39.100994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047787, 35.467587, 39.072269>,  <34.997215, 35.701565, 39.055035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047787, 35.467587, 39.072269>,  <35.132072, 35.077625, 39.100994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047787, 35.467587, 39.072269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683109, -0.199402, -0.702568,
		-0.699257, -0.098985, 0.707984,
		-0.210717, 0.974905, -0.071816,
		34.984573, 35.760059, 39.050724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379940, 35.063263, 39.001232>,  <35.132072, 35.077625, 39.100994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379940, 35.063263, 39.001232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480381, 35.428284, 38.872112>,  <34.540646, 35.647297, 38.794640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480381, 35.428284, 38.872112>,  <34.379940, 35.063263, 39.001232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480381, 35.428284, 38.872112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699585, -0.059383, -0.712078,
		-0.668975, 0.404632, 0.623494,
		0.251105, 0.912549, -0.322800,
		34.555714, 35.702049, 38.775272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827385, 35.408024, 39.036335>,  <34.379940, 35.063263, 39.001232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827385, 35.408024, 39.036335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031567, 35.602890, 38.752895>,  <34.154076, 35.719810, 38.582832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031567, 35.602890, 38.752895>,  <33.827385, 35.408024, 39.036335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031567, 35.602890, 38.752895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743073, -0.164810, -0.648599,
		-0.432759, 0.857617, 0.277872,
		0.510453, 0.487167, -0.708595,
		34.184704, 35.749039, 38.540318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382351, 35.950684, 38.650444>,  <33.827385, 35.408024, 39.036335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382351, 35.950684, 38.650444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699200, 35.900780, 38.411453>,  <33.889309, 35.870838, 38.268059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699200, 35.900780, 38.411453>,  <33.382351, 35.950684, 38.650444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699200, 35.900780, 38.411453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603508, -0.013756, -0.797239,
		0.091242, 0.992092, -0.086187,
		0.792120, -0.124756, -0.597480,
		33.936836, 35.863354, 38.232208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282784, 36.287132, 38.102215>,  <33.382351, 35.950684, 38.650444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282784, 36.287132, 38.102215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577969, 36.070786, 37.940781>,  <33.755077, 35.940979, 37.843918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577969, 36.070786, 37.940781>,  <33.282784, 36.287132, 38.102215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577969, 36.070786, 37.940781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356382, 0.195512, -0.913656,
		0.573069, 0.818072, -0.048474,
		0.737959, -0.540863, -0.403588,
		33.799355, 35.908527, 37.819706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452618, 36.567390, 37.377647>,  <33.282784, 36.287132, 38.102215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452618, 36.567390, 37.377647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619537, 36.203888, 37.376030>,  <33.719688, 35.985786, 37.375061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619537, 36.203888, 37.376030>,  <33.452618, 36.567390, 37.377647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619537, 36.203888, 37.376030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123426, -0.052270, -0.990976,
		0.900346, 0.414037, -0.133976,
		0.417304, -0.908758, -0.004042,
		33.744728, 35.931259, 37.374817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921944, 36.511509, 36.841293>,  <33.452618, 36.567390, 37.377647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921944, 36.511509, 36.841293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787258, 36.140049, 36.903549>,  <33.706448, 35.917171, 36.940903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787258, 36.140049, 36.903549>,  <33.921944, 36.511509, 36.841293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787258, 36.140049, 36.903549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094972, -0.130958, -0.986828,
		0.936805, -0.347061, -0.044101,
		-0.336714, -0.928654, 0.155643,
		33.686245, 35.861454, 36.950241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248062, 36.176094, 36.354187>,  <33.921944, 36.511509, 36.841293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248062, 36.176094, 36.354187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958805, 35.932636, 36.484795>,  <33.785252, 35.786560, 36.563160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958805, 35.932636, 36.484795>,  <34.248062, 36.176094, 36.354187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958805, 35.932636, 36.484795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250937, -0.208928, -0.945188,
		0.643507, -0.765438, -0.001649,
		-0.723138, -0.608649, 0.326523,
		33.741863, 35.750042, 36.582752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290619, 35.498470, 36.112766>,  <34.248062, 36.176094, 36.354187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290619, 35.498470, 36.112766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896648, 35.535198, 36.171394>,  <33.660267, 35.557236, 36.206570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896648, 35.535198, 36.171394>,  <34.290619, 35.498470, 36.112766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896648, 35.535198, 36.171394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170526, -0.374028, -0.911605,
		-0.028880, -0.922861, 0.384049,
		-0.984930, 0.091818, 0.146570,
		33.601170, 35.562744, 36.215366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000454, 35.767704, 35.787033>,  <34.290619, 35.498470, 36.112766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000454, 35.767704, 35.787033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148331, 36.101887, 35.624382>,  <35.237057, 36.302395, 35.526791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148331, 36.101887, 35.624382>,  <35.000454, 35.767704, 35.787033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148331, 36.101887, 35.624382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571975, 0.140259, 0.808190,
		0.732238, -0.531363, -0.426005,
		0.369692, 0.835452, -0.406629,
		35.259239, 36.352524, 35.502392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824764, 35.889629, 35.835842>,  <35.000454, 35.767704, 35.787033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824764, 35.889629, 35.835842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645935, 36.247288, 35.825855>,  <35.538639, 36.461884, 35.819862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645935, 36.247288, 35.825855>,  <35.824764, 35.889629, 35.835842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645935, 36.247288, 35.825855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546253, 0.295017, 0.783947,
		0.708331, 0.336844, -0.620326,
		-0.447074, 0.894148, -0.024968,
		35.511814, 36.515533, 35.818363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332607, 36.271389, 36.344322>,  <35.824764, 35.889629, 35.835842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332607, 36.271389, 36.344322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067043, 36.557076, 36.255672>,  <35.907707, 36.728489, 36.202484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067043, 36.557076, 36.255672>,  <36.332607, 36.271389, 36.344322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067043, 36.557076, 36.255672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449752, 0.618123, 0.644707,
		0.597454, 0.328349, -0.731598,
		-0.663907, 0.714220, -0.221624,
		35.867870, 36.771343, 36.189186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734493, 36.915600, 36.107155>,  <36.332607, 36.271389, 36.344322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734493, 36.915600, 36.107155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396732, 37.062222, 36.263420>,  <36.194077, 37.150196, 36.357178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396732, 37.062222, 36.263420>,  <36.734493, 36.915600, 36.107155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396732, 37.062222, 36.263420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535702, 0.575691, 0.617740,
		0.001535, 0.730902, -0.682481,
		-0.844405, 0.366555, 0.390662,
		36.143410, 37.172188, 36.380619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905678, 37.568081, 36.221512>,  <36.734493, 36.915600, 36.107155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905678, 37.568081, 36.221512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581722, 37.492245, 36.443550>,  <36.387348, 37.446743, 36.576775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581722, 37.492245, 36.443550>,  <36.905678, 37.568081, 36.221512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581722, 37.492245, 36.443550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451024, 0.403775, 0.795954,
		-0.375036, 0.894999, -0.241506,
		-0.809892, -0.189587, 0.555096,
		36.338753, 37.435368, 36.610081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838722, 38.164280, 36.531780>,  <36.905678, 37.568081, 36.221512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838722, 38.164280, 36.531780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659664, 37.905243, 36.778435>,  <36.552231, 37.749821, 36.926430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659664, 37.905243, 36.778435>,  <36.838722, 38.164280, 36.531780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659664, 37.905243, 36.778435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340045, 0.514505, 0.787181,
		-0.827035, 0.562060, -0.010105,
		-0.447642, -0.647590, 0.616639,
		36.525372, 37.710964, 36.963425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537373, 38.482403, 37.147560>,  <36.838722, 38.164280, 36.531780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537373, 38.482403, 37.147560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592705, 38.105053, 37.268162>,  <36.625904, 37.878643, 37.340523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592705, 38.105053, 37.268162>,  <36.537373, 38.482403, 37.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592705, 38.105053, 37.268162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371659, 0.331626, 0.867118,
		-0.918006, -0.007891, 0.396488,
		0.138328, -0.943378, 0.301502,
		36.634205, 37.822041, 37.358612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389709, 38.485687, 37.836899>,  <36.537373, 38.482403, 37.147560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389709, 38.485687, 37.836899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568520, 38.128708, 37.812527>,  <36.675804, 37.914520, 37.797901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568520, 38.128708, 37.812527>,  <36.389709, 38.485687, 37.836899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568520, 38.128708, 37.812527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446110, 0.163375, 0.879940,
		-0.775343, -0.420536, 0.471161,
		0.447023, -0.892445, -0.060934,
		36.702625, 37.860973, 37.794247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438000, 38.216167, 38.488220>,  <36.389709, 38.485687, 37.836899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438000, 38.216167, 38.488220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717674, 37.993034, 38.309353>,  <36.885479, 37.859154, 38.202030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717674, 37.993034, 38.309353>,  <36.438000, 38.216167, 38.488220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717674, 37.993034, 38.309353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596255, 0.109859, 0.795243,
		-0.394485, -0.822652, 0.409421,
		0.699187, -0.557831, -0.447172,
		36.927429, 37.825684, 38.175201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576637, 37.737610, 38.909016>,  <36.438000, 38.216167, 38.488220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576637, 37.737610, 38.909016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896091, 37.739288, 38.668297>,  <37.087765, 37.740295, 38.523865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896091, 37.739288, 38.668297>,  <36.576637, 37.737610, 38.909016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896091, 37.739288, 38.668297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601816, -0.005657, 0.798615,
		-0.000012, -0.999975, -0.007074,
		0.798635, 0.004247, -0.601801,
		37.135681, 37.740547, 38.487755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062962, 37.200577, 39.191551>,  <36.576637, 37.737610, 38.909016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062962, 37.200577, 39.191551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269958, 37.432693, 38.940010>,  <37.394157, 37.571964, 38.789085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269958, 37.432693, 38.940010>,  <37.062962, 37.200577, 39.191551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269958, 37.432693, 38.940010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737684, 0.069865, 0.671521,
		0.433613, -0.811407, -0.391917,
		0.517495, 0.580291, -0.628856,
		37.425209, 37.606781, 38.751354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690315, 36.920597, 39.217728>,  <37.062962, 37.200577, 39.191551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690315, 36.920597, 39.217728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724579, 37.303860, 39.108475>,  <37.745136, 37.533817, 39.042923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724579, 37.303860, 39.108475>,  <37.690315, 36.920597, 39.217728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724579, 37.303860, 39.108475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765995, 0.111971, 0.633020,
		0.637114, -0.263441, -0.724351,
		0.085657, 0.958155, -0.273133,
		37.750275, 37.591305, 39.026535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414516, 36.982670, 39.209354>,  <37.690315, 36.920597, 39.217728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414516, 36.982670, 39.209354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239361, 37.341709, 39.229603>,  <38.134266, 37.557133, 39.241753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239361, 37.341709, 39.229603>,  <38.414516, 36.982670, 39.209354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239361, 37.341709, 39.229603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645701, 0.274825, 0.712419,
		0.625558, 0.344647, -0.699926,
		-0.437890, 0.897602, 0.050620,
		38.107994, 37.610989, 39.244789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952435, 37.390793, 39.459290>,  <38.414516, 36.982670, 39.209354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952435, 37.390793, 39.459290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671635, 37.674843, 39.480930>,  <38.503155, 37.845272, 39.493916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671635, 37.674843, 39.480930>,  <38.952435, 37.390793, 39.459290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671635, 37.674843, 39.480930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557279, 0.500424, 0.662583,
		0.443443, 0.495279, -0.747032,
		-0.701996, 0.710123, 0.054099,
		38.461037, 37.887878, 39.497158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339043, 38.066555, 39.534943>,  <38.952435, 37.390793, 39.459290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339043, 38.066555, 39.534943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966846, 38.084026, 39.680428>,  <38.743530, 38.094509, 39.767719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966846, 38.084026, 39.680428>,  <39.339043, 38.066555, 39.534943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966846, 38.084026, 39.680428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348821, 0.408912, 0.843276,
		-0.111892, 0.911528, -0.395724,
		-0.930486, 0.043681, 0.363714,
		38.687702, 38.097130, 39.789543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196484, 38.786961, 39.878498>,  <39.339043, 38.066555, 39.534943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196484, 38.786961, 39.878498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928001, 38.528801, 40.024345>,  <38.766914, 38.373905, 40.111855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928001, 38.528801, 40.024345>,  <39.196484, 38.786961, 39.878498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928001, 38.528801, 40.024345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142984, 0.369922, 0.917994,
		-0.727355, 0.668293, -0.156010,
		-0.671201, -0.645400, 0.364620,
		38.726643, 38.335182, 40.133732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715866, 39.164719, 40.264412>,  <39.196484, 38.786961, 39.878498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715866, 39.164719, 40.264412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725422, 38.785591, 40.391582>,  <38.731155, 38.558117, 40.467884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725422, 38.785591, 40.391582>,  <38.715866, 39.164719, 40.264412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725422, 38.785591, 40.391582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005427, 0.318132, 0.948031,
		-0.999700, -0.020920, 0.012743,
		0.023887, -0.947815, 0.317923,
		38.732590, 38.501247, 40.486958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397083, 39.207119, 40.888943>,  <38.715866, 39.164719, 40.264412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397083, 39.207119, 40.888943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574356, 38.848972, 40.906448>,  <38.680721, 38.634087, 40.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574356, 38.848972, 40.906448>,  <38.397083, 39.207119, 40.888943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574356, 38.848972, 40.906448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086936, 0.091515, 0.992002,
		-0.892206, -0.435834, 0.118397,
		0.443183, -0.895362, 0.043760,
		38.707310, 38.580364, 40.919575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140217, 38.909870, 41.451706>,  <38.397083, 39.207119, 40.888943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140217, 38.909870, 41.451706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455082, 38.668625, 41.400105>,  <38.644001, 38.523880, 41.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455082, 38.668625, 41.400105>,  <38.140217, 38.909870, 41.451706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455082, 38.668625, 41.400105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141917, -0.026425, 0.989526,
		-0.600201, -0.797221, 0.064791,
		0.787159, -0.603109, -0.128999,
		38.691231, 38.487694, 41.361404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213112, 38.382828, 42.019661>,  <38.140217, 38.909870, 41.451706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213112, 38.382828, 42.019661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580769, 38.422276, 41.867111>,  <38.801365, 38.445946, 41.775581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580769, 38.422276, 41.867111>,  <38.213112, 38.382828, 42.019661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580769, 38.422276, 41.867111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377594, 0.055217, 0.924323,
		0.112217, -0.993592, 0.013513,
		0.919146, 0.098622, -0.381371,
		38.856514, 38.451862, 41.752701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612377, 37.894070, 42.402004>,  <38.213112, 38.382828, 42.019661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612377, 37.894070, 42.402004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859806, 38.161457, 42.236828>,  <39.008263, 38.321888, 42.137722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859806, 38.161457, 42.236828>,  <38.612377, 37.894070, 42.402004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859806, 38.161457, 42.236828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479914, 0.094701, 0.872189,
		0.622136, -0.737688, -0.262228,
		0.618570, 0.668468, -0.412943,
		39.045376, 38.361996, 42.112946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298157, 37.763603, 42.632828>,  <38.612377, 37.894070, 42.402004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298157, 37.763603, 42.632828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302914, 38.148712, 42.524807>,  <39.305767, 38.379776, 42.459995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302914, 38.148712, 42.524807>,  <39.298157, 37.763603, 42.632828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302914, 38.148712, 42.524807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373704, 0.246219, 0.894271,
		0.927472, -0.111553, -0.356864,
		0.011892, 0.962773, -0.270049,
		39.306480, 38.437546, 42.443790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786083, 38.027206, 42.996876>,  <39.298157, 37.763603, 42.632828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786083, 38.027206, 42.996876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597469, 38.362225, 42.886478>,  <39.484303, 38.563236, 42.820240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597469, 38.362225, 42.886478>,  <39.786083, 38.027206, 42.996876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597469, 38.362225, 42.886478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204819, 0.408434, 0.889512,
		0.857733, 0.362905, -0.364135,
		-0.471534, 0.837545, -0.275998,
		39.456009, 38.613487, 42.803680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230007, 38.492512, 43.275715>,  <39.786083, 38.027206, 42.996876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230007, 38.492512, 43.275715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884251, 38.690647, 43.241142>,  <39.676796, 38.809528, 43.220398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884251, 38.690647, 43.241142>,  <40.230007, 38.492512, 43.275715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884251, 38.690647, 43.241142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154801, 0.425706, 0.891521,
		0.478400, 0.757242, -0.444655,
		-0.864390, 0.495337, -0.086436,
		39.624935, 38.839249, 43.215210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323353, 39.229012, 43.338989>,  <40.230007, 38.492512, 43.275715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323353, 39.229012, 43.338989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947411, 39.173546, 43.463852>,  <39.721844, 39.140266, 43.538769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947411, 39.173546, 43.463852>,  <40.323353, 39.229012, 43.338989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947411, 39.173546, 43.463852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187913, 0.553243, 0.811548,
		-0.285232, 0.821397, -0.493912,
		-0.939857, -0.138667, 0.312154,
		39.665455, 39.131947, 43.557499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268654, 39.776310, 43.708096>,  <40.323353, 39.229012, 43.338989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268654, 39.776310, 43.708096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934647, 39.586288, 43.819141>,  <39.734241, 39.472275, 43.885769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934647, 39.586288, 43.819141>,  <40.268654, 39.776310, 43.708096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934647, 39.586288, 43.819141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088129, 0.382568, 0.919715,
		-0.543125, 0.792441, -0.277584,
		-0.835014, -0.475057, 0.277619,
		39.684143, 39.443771, 43.902428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810970, 40.271027, 44.031883>,  <40.268654, 39.776310, 43.708096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810970, 40.271027, 44.031883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690231, 39.925228, 44.192646>,  <39.617790, 39.717747, 44.289104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690231, 39.925228, 44.192646>,  <39.810970, 40.271027, 44.031883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690231, 39.925228, 44.192646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086205, 0.395098, 0.914585,
		-0.949452, 0.310709, -0.044734,
		-0.301844, -0.864498, 0.401911,
		39.599678, 39.665878, 44.313221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221725, 40.460266, 44.362007>,  <39.810970, 40.271027, 44.031883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221725, 40.460266, 44.362007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353687, 40.119564, 44.524822>,  <39.432865, 39.915142, 44.622513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353687, 40.119564, 44.524822>,  <39.221725, 40.460266, 44.362007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353687, 40.119564, 44.524822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073310, 0.406764, 0.910587,
		-0.941165, -0.330244, 0.071750,
		0.329901, -0.851752, 0.407042,
		39.452656, 39.864037, 44.646935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763866, 40.261040, 44.861271>,  <39.221725, 40.460266, 44.362007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763866, 40.261040, 44.861271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113831, 40.093918, 44.959229>,  <39.323807, 39.993645, 45.018005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113831, 40.093918, 44.959229>,  <38.763866, 40.261040, 44.861271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113831, 40.093918, 44.959229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111014, 0.319192, 0.941165,
		-0.471396, -0.850619, 0.232881,
		0.874907, -0.417808, 0.244896,
		39.376301, 39.968575, 45.032696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755848, 40.165478, 45.580956>,  <38.763866, 40.261040, 44.861271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755848, 40.165478, 45.580956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147846, 40.101749, 45.533241>,  <39.383045, 40.063515, 45.504612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147846, 40.101749, 45.533241>,  <38.755848, 40.165478, 45.580956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147846, 40.101749, 45.533241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143775, 0.152285, 0.977823,
		-0.137621, -0.975411, 0.172145,
		0.979995, -0.159319, -0.119282,
		39.441845, 40.053955, 45.497456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049004, 39.521317, 45.987705>,  <38.755848, 40.165478, 45.580956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049004, 39.521317, 45.987705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384533, 39.730659, 45.927738>,  <39.585850, 39.856266, 45.891758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384533, 39.730659, 45.927738>,  <39.049004, 39.521317, 45.987705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384533, 39.730659, 45.927738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252690, -0.130373, 0.958724,
		0.482210, -0.842081, -0.241606,
		0.838821, 0.523357, -0.149918,
		39.636181, 39.887665, 45.882763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605045, 39.080784, 46.278362>,  <39.049004, 39.521317, 45.987705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605045, 39.080784, 46.278362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707458, 39.467449, 46.276867>,  <39.768906, 39.699448, 46.275970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707458, 39.467449, 46.276867>,  <39.605045, 39.080784, 46.278362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707458, 39.467449, 46.276867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213313, -0.052728, 0.975560,
		0.942840, -0.250568, -0.219702,
		0.256028, 0.966662, -0.003736,
		39.784267, 39.757446, 46.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121193, 39.027122, 46.671089>,  <39.605045, 39.080784, 46.278362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121193, 39.027122, 46.671089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081642, 39.424927, 46.657394>,  <40.057911, 39.663609, 46.649178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081642, 39.424927, 46.657394>,  <40.121193, 39.027122, 46.671089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081642, 39.424927, 46.657394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229666, 0.056287, 0.971640,
		0.968234, 0.088208, -0.233971,
		-0.098876, 0.994510, -0.034241,
		40.051979, 39.723278, 46.647121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715420, 39.457504, 46.889824>,  <40.121193, 39.027122, 46.671089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715420, 39.457504, 46.889824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409912, 39.706890, 46.956703>,  <40.226608, 39.856522, 46.996830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409912, 39.706890, 46.956703>,  <40.715420, 39.457504, 46.889824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409912, 39.706890, 46.956703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139468, -0.093512, 0.985801,
		0.630248, 0.776239, -0.015532,
		-0.763765, 0.623465, 0.167196,
		40.180782, 39.893929, 47.006863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948872, 39.887295, 47.415310>,  <40.715420, 39.457504, 46.889824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948872, 39.887295, 47.415310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571480, 40.019672, 47.422550>,  <40.345047, 40.099098, 47.426895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571480, 40.019672, 47.422550>,  <40.948872, 39.887295, 47.415310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571480, 40.019672, 47.422550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039927, 0.059279, 0.997443,
		0.329022, 0.941788, -0.069142,
		-0.943478, 0.330941, 0.018099,
		40.288437, 40.118954, 47.427979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902538, 40.535774, 47.767536>,  <40.948872, 39.887295, 47.415310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902538, 40.535774, 47.767536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545792, 40.357674, 47.799358>,  <40.331745, 40.250813, 47.818451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545792, 40.357674, 47.799358>,  <40.902538, 40.535774, 47.767536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545792, 40.357674, 47.799358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031963, 0.237493, 0.970863,
		-0.451173, 0.863335, -0.226043,
		-0.891864, -0.445252, 0.079555,
		40.278233, 40.224098, 47.823223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446564, 41.010735, 48.035866>,  <40.902538, 40.535774, 47.767536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446564, 41.010735, 48.035866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252731, 40.675793, 48.137074>,  <40.136433, 40.474827, 48.197800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252731, 40.675793, 48.137074>,  <40.446564, 41.010735, 48.035866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252731, 40.675793, 48.137074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178771, 0.377950, 0.908402,
		-0.856282, 0.394964, -0.332842,
		-0.484584, -0.837351, 0.253024,
		40.107357, 40.424587, 48.212982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858418, 41.240868, 48.443542>,  <40.446564, 41.010735, 48.035866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858418, 41.240868, 48.443542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928257, 40.852501, 48.509068>,  <39.970161, 40.619480, 48.548382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928257, 40.852501, 48.509068>,  <39.858418, 41.240868, 48.443542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928257, 40.852501, 48.509068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227031, 0.122186, 0.966192,
		-0.958108, -0.205889, -0.199094,
		0.174601, -0.970917, 0.163811,
		39.980637, 40.561226, 48.558212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163937, 40.914787, 48.815197>,  <39.858418, 41.240868, 48.443542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163937, 40.914787, 48.815197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505177, 40.723438, 48.898502>,  <39.709923, 40.608627, 48.948486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505177, 40.723438, 48.898502>,  <39.163937, 40.914787, 48.815197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505177, 40.723438, 48.898502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188001, 0.090515, 0.977989,
		-0.486696, -0.873479, -0.012716,
		0.853102, -0.478374, 0.208268,
		39.761108, 40.579926, 48.960983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206707, 41.476501, 48.264236>,  <39.163937, 40.914787, 48.815197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206707, 41.476501, 48.264236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324619, 41.858688, 48.258644>,  <39.395367, 42.088001, 48.255287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324619, 41.858688, 48.258644>,  <39.206707, 41.476501, 48.264236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324619, 41.858688, 48.258644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637124, 0.185621, -0.748076,
		-0.712163, 0.229426, 0.663466,
		0.294781, 0.955462, -0.013981,
		39.413055, 42.145329, 48.254448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528538, 41.871578, 48.400719>,  <39.206707, 41.476501, 48.264236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528538, 41.871578, 48.400719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774494, 42.127777, 48.216690>,  <38.922066, 42.281498, 48.106274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774494, 42.127777, 48.216690>,  <38.528538, 41.871578, 48.400719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774494, 42.127777, 48.216690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728645, 0.238279, -0.642106,
		-0.301644, 0.730056, 0.613213,
		0.614889, 0.640501, -0.460076,
		38.958961, 42.319927, 48.078667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101864, 42.438900, 48.109154>,  <38.528538, 41.871578, 48.400719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101864, 42.438900, 48.109154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443993, 42.476093, 47.905281>,  <38.649269, 42.498409, 47.782959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443993, 42.476093, 47.905281>,  <38.101864, 42.438900, 48.109154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443993, 42.476093, 47.905281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513364, 0.284673, -0.809579,
		0.069816, 0.954104, 0.291222,
		0.855326, 0.092981, -0.509678,
		38.700592, 42.503986, 47.752377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007439, 43.051857, 47.627110>,  <38.101864, 42.438900, 48.109154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007439, 43.051857, 47.627110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310352, 42.838905, 47.475796>,  <38.492100, 42.711136, 47.385006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310352, 42.838905, 47.475796>,  <38.007439, 43.051857, 47.627110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310352, 42.838905, 47.475796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356220, 0.148773, -0.922483,
		0.547388, 0.833331, -0.076981,
		0.757280, -0.532378, -0.378285,
		38.537537, 42.679192, 47.362309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286640, 43.479946, 47.131332>,  <38.007439, 43.051857, 47.627110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286640, 43.479946, 47.131332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442921, 43.131298, 47.012917>,  <38.536690, 42.922112, 46.941868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442921, 43.131298, 47.012917>,  <38.286640, 43.479946, 47.131332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442921, 43.131298, 47.012917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379010, 0.140754, -0.914625,
		0.838872, 0.469544, -0.275359,
		0.390699, -0.871617, -0.296037,
		38.560131, 42.869812, 46.924107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720757, 43.572254, 46.511147>,  <38.286640, 43.479946, 47.131332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720757, 43.572254, 46.511147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623016, 43.184402, 46.515198>,  <38.564373, 42.951691, 46.517628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623016, 43.184402, 46.515198>,  <38.720757, 43.572254, 46.511147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623016, 43.184402, 46.515198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338909, 0.075616, -0.937776,
		0.908533, -0.232578, -0.347094,
		-0.244352, -0.969634, 0.010123,
		38.549709, 42.893513, 46.518234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898121, 43.344429, 45.867897>,  <38.720757, 43.572254, 46.511147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898121, 43.344429, 45.867897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671436, 43.030918, 45.969513>,  <38.535427, 42.842812, 46.030483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671436, 43.030918, 45.969513>,  <38.898121, 43.344429, 45.867897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671436, 43.030918, 45.969513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225949, -0.148669, -0.962728,
		0.792332, -0.602985, -0.092842,
		-0.566708, -0.783777, 0.254039,
		38.501423, 42.795784, 46.045723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285572, 42.799522, 45.489689>,  <38.898121, 43.344429, 45.867897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285572, 42.799522, 45.489689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900948, 42.721966, 45.567455>,  <38.670174, 42.675430, 45.614117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900948, 42.721966, 45.567455>,  <39.285572, 42.799522, 45.489689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900948, 42.721966, 45.567455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122219, -0.331810, -0.935396,
		0.245875, -0.923206, 0.295360,
		-0.961566, -0.193891, 0.194417,
		38.612476, 42.663799, 45.625782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113750, 42.058174, 45.147079>,  <39.285572, 42.799522, 45.489689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113750, 42.058174, 45.147079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746258, 42.204422, 45.206741>,  <38.525761, 42.292171, 45.242538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746258, 42.204422, 45.206741>,  <39.113750, 42.058174, 45.147079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746258, 42.204422, 45.206741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242185, -0.223384, -0.944164,
		-0.311887, -0.903560, 0.293778,
		-0.918735, 0.365621, 0.149158,
		38.470638, 42.314106, 45.251488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612511, 41.526237, 44.986034>,  <39.113750, 42.058174, 45.147079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612511, 41.526237, 44.986034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416290, 41.872456, 44.945667>,  <38.298557, 42.080189, 44.921448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416290, 41.872456, 44.945667>,  <38.612511, 41.526237, 44.986034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416290, 41.872456, 44.945667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143992, -0.194732, -0.970230,
		-0.859435, -0.461414, 0.220158,
		-0.490549, 0.865550, -0.100919,
		38.269127, 42.132122, 44.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858467, 41.434525, 44.756943>,  <38.612511, 41.526237, 44.986034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858467, 41.434525, 44.756943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976761, 41.799068, 44.642429>,  <38.047737, 42.017796, 44.573723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976761, 41.799068, 44.642429>,  <37.858467, 41.434525, 44.756943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976761, 41.799068, 44.642429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307255, -0.193014, -0.931847,
		-0.904509, 0.363540, 0.222940,
		0.295734, 0.911364, -0.286283,
		38.065479, 42.072479, 44.556545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294380, 41.931236, 44.353210>,  <37.858467, 41.434525, 44.756943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294380, 41.931236, 44.353210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667854, 42.021103, 44.241665>,  <37.891937, 42.075024, 44.174736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667854, 42.021103, 44.241665>,  <37.294380, 41.931236, 44.353210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667854, 42.021103, 44.241665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254499, -0.131549, -0.958084,
		-0.251932, 0.965516, -0.065648,
		0.933681, 0.224665, -0.278865,
		37.947960, 42.088501, 44.158005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251892, 42.457924, 43.831562>,  <37.294380, 41.931236, 44.353210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251892, 42.457924, 43.831562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599335, 42.267620, 43.776173>,  <37.807800, 42.153439, 43.742939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599335, 42.267620, 43.776173>,  <37.251892, 42.457924, 43.831562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599335, 42.267620, 43.776173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225311, -0.130336, -0.965530,
		0.441314, 0.869865, -0.220405,
		0.868607, -0.475761, -0.138471,
		37.859917, 42.124893, 43.734631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602715, 42.731308, 43.209370>,  <37.251892, 42.457924, 43.831562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602715, 42.731308, 43.209370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770752, 42.372128, 43.261833>,  <37.871574, 42.156620, 43.293312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770752, 42.372128, 43.261833>,  <37.602715, 42.731308, 43.209370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770752, 42.372128, 43.261833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025424, -0.132830, -0.990813,
		0.907124, 0.419569, -0.032972,
		0.420094, -0.897952, 0.131161,
		37.896782, 42.102741, 43.301182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115345, 42.606983, 42.708340>,  <37.602715, 42.731308, 43.209370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115345, 42.606983, 42.708340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016052, 42.236591, 42.822147>,  <37.956478, 42.014359, 42.890430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016052, 42.236591, 42.822147>,  <38.115345, 42.606983, 42.708340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016052, 42.236591, 42.822147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000325, -0.293789, -0.955870,
		0.968702, -0.237181, 0.073227,
		-0.248227, -0.925977, 0.284517,
		37.941586, 41.958797, 42.907501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397675, 42.231915, 42.089119>,  <38.115345, 42.606983, 42.708340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397675, 42.231915, 42.089119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165325, 41.956593, 42.262936>,  <38.025917, 41.791401, 42.367226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165325, 41.956593, 42.262936>,  <38.397675, 42.231915, 42.089119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165325, 41.956593, 42.262936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010434, -0.527494, -0.849495,
		0.813928, -0.497981, 0.299224,
		-0.580871, -0.688305, 0.434539,
		37.991062, 41.750099, 42.393299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824280, 41.685997, 42.161987>,  <38.397675, 42.231915, 42.089119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824280, 41.685997, 42.161987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442440, 41.566925, 42.166451>,  <38.213337, 41.495480, 42.169128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442440, 41.566925, 42.166451>,  <38.824280, 41.685997, 42.161987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442440, 41.566925, 42.166451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172676, -0.583475, -0.793562,
		0.242741, -0.755607, 0.608387,
		-0.954599, -0.297684, 0.011158,
		38.156059, 41.477619, 42.169796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808495, 40.864494, 42.094452>,  <38.824280, 41.685997, 42.161987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808495, 40.864494, 42.094452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461803, 41.014145, 41.962505>,  <38.253788, 41.103935, 41.883339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461803, 41.014145, 41.962505>,  <38.808495, 40.864494, 42.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461803, 41.014145, 41.962505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000112, -0.661493, -0.749952,
		-0.498776, -0.649970, 0.573378,
		-0.866731, 0.374122, -0.329864,
		38.201786, 41.126381, 41.863544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598011, 40.306240, 41.721737>,  <38.808495, 40.864494, 42.094452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598011, 40.306240, 41.721737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336384, 40.587704, 41.610703>,  <38.179405, 40.756580, 41.544083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336384, 40.587704, 41.610703>,  <38.598011, 40.306240, 41.721737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336384, 40.587704, 41.610703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130178, -0.466206, -0.875046,
		-0.745147, -0.536207, 0.396533,
		-0.654072, 0.703657, -0.277590,
		38.140163, 40.798801, 41.527424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005703, 39.972507, 41.430523>,  <38.598011, 40.306240, 41.721737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005703, 39.972507, 41.430523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978584, 40.347267, 41.293335>,  <37.962315, 40.572124, 41.211021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978584, 40.347267, 41.293335>,  <38.005703, 39.972507, 41.430523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978584, 40.347267, 41.293335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207779, -0.349477, -0.913615,
		-0.975824, 0.009324, 0.218360,
		-0.067793, 0.936898, -0.342966,
		37.958244, 40.628338, 41.190445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495159, 39.877789, 40.930748>,  <38.005703, 39.972507, 41.430523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495159, 39.877789, 40.930748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672779, 40.225346, 40.843258>,  <37.779350, 40.433880, 40.790764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672779, 40.225346, 40.843258>,  <37.495159, 39.877789, 40.930748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672779, 40.225346, 40.843258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100019, -0.194515, -0.975787,
		-0.890401, 0.455177, 0.000531,
		0.444052, 0.868895, -0.218723,
		37.805996, 40.486015, 40.777641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191055, 40.156090, 40.386417>,  <37.495159, 39.877789, 40.930748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191055, 40.156090, 40.386417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520393, 40.381512, 40.359558>,  <37.717995, 40.516766, 40.343441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520393, 40.381512, 40.359558>,  <37.191055, 40.156090, 40.386417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520393, 40.381512, 40.359558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040507, -0.059660, -0.997397,
		-0.566095, 0.823921, -0.026293,
		0.823344, 0.563556, -0.067147,
		37.767395, 40.550579, 40.339413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998920, 40.663471, 39.831543>,  <37.191055, 40.156090, 40.386417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998920, 40.663471, 39.831543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398022, 40.673199, 39.856514>,  <37.637482, 40.679035, 39.871498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398022, 40.673199, 39.856514>,  <36.998920, 40.663471, 39.831543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398022, 40.673199, 39.856514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060585, 0.070289, -0.995685,
		-0.028603, 0.997230, 0.068658,
		0.997753, 0.024320, 0.062428,
		37.697350, 40.680496, 39.875244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284046, 41.084560, 39.219643>,  <36.998920, 40.663471, 39.831543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284046, 41.084560, 39.219643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577671, 40.852619, 39.361015>,  <37.753845, 40.713455, 39.445839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577671, 40.852619, 39.361015>,  <37.284046, 41.084560, 39.219643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577671, 40.852619, 39.361015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377836, -0.083710, -0.922081,
		0.564257, 0.810410, 0.157640,
		0.734067, -0.579853, 0.353436,
		37.797890, 40.678665, 39.467045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844963, 41.377960, 38.996742>,  <37.284046, 41.084560, 39.219643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844963, 41.377960, 38.996742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933620, 40.990490, 39.041542>,  <37.986813, 40.758007, 39.068424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933620, 40.990490, 39.041542>,  <37.844963, 41.377960, 38.996742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933620, 40.990490, 39.041542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357918, -0.026028, -0.933390,
		0.907067, 0.246964, 0.340937,
		0.221640, -0.968675, 0.112002,
		38.000111, 40.699886, 39.075142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542820, 41.290508, 38.781414>,  <37.844963, 41.377960, 38.996742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542820, 41.290508, 38.781414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349949, 40.943424, 38.733112>,  <38.234226, 40.735172, 38.704132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349949, 40.943424, 38.733112>,  <38.542820, 41.290508, 38.781414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349949, 40.943424, 38.733112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358042, -0.069379, -0.931124,
		0.799569, -0.492204, 0.344130,
		-0.482178, -0.867711, -0.120757,
		38.205296, 40.683109, 38.696884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919758, 41.043148, 38.371567>,  <38.542820, 41.290508, 38.781414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919758, 41.043148, 38.371567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619545, 40.779133, 38.358578>,  <38.439419, 40.620724, 38.350784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619545, 40.779133, 38.358578>,  <38.919758, 41.043148, 38.371567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619545, 40.779133, 38.358578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394917, -0.408578, -0.822864,
		0.529856, -0.630406, 0.567310,
		-0.750528, -0.660040, -0.032470,
		38.394386, 40.581120, 38.348835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165237, 40.373585, 38.289501>,  <38.919758, 41.043148, 38.371567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165237, 40.373585, 38.289501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791763, 40.335934, 38.151299>,  <38.567680, 40.313343, 38.068375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791763, 40.335934, 38.151299>,  <39.165237, 40.373585, 38.289501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791763, 40.335934, 38.151299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353656, -0.393969, -0.848361,
		-0.056265, -0.914291, 0.401131,
		-0.933682, -0.094129, -0.345511,
		38.511658, 40.307693, 38.047646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165241, 39.712154, 38.030365>,  <39.165237, 40.373585, 38.289501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165241, 39.712154, 38.030365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861763, 39.913132, 37.864506>,  <38.679676, 40.033718, 37.764988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861763, 39.913132, 37.864506>,  <39.165241, 39.712154, 38.030365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861763, 39.913132, 37.864506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292252, -0.306348, -0.905947,
		-0.582213, -0.808519, 0.085585,
		-0.758694, 0.502442, -0.414651,
		38.634155, 40.063866, 37.740112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870651, 39.220646, 37.610416>,  <39.165241, 39.712154, 38.030365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870651, 39.220646, 37.610416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745762, 39.571220, 37.463783>,  <38.670830, 39.781563, 37.375805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745762, 39.571220, 37.463783>,  <38.870651, 39.220646, 37.610416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745762, 39.571220, 37.463783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367983, -0.244178, -0.897199,
		-0.875846, -0.415021, -0.246275,
		-0.312221, 0.876433, -0.366583,
		38.652096, 39.834152, 37.353809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473312, 39.057110, 36.901031>,  <38.870651, 39.220646, 37.610416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473312, 39.057110, 36.901031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569626, 39.445297, 36.906815>,  <38.627415, 39.678211, 36.910286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569626, 39.445297, 36.906815>,  <38.473312, 39.057110, 36.901031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569626, 39.445297, 36.906815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377807, -0.079995, -0.922422,
		-0.894028, 0.227564, -0.385913,
		0.240781, 0.970472, 0.014458,
		38.641861, 39.736439, 36.911152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265110, 39.248043, 36.325085>,  <38.473312, 39.057110, 36.901031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265110, 39.248043, 36.325085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523117, 39.539387, 36.417557>,  <38.677921, 39.714195, 36.473042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523117, 39.539387, 36.417557>,  <38.265110, 39.248043, 36.325085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523117, 39.539387, 36.417557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438072, -0.104557, -0.892838,
		-0.626139, 0.677166, -0.386517,
		0.645013, 0.728363, 0.231181,
		38.716621, 39.757896, 36.486912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203735, 39.643913, 35.772827>,  <38.265110, 39.248043, 36.325085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203735, 39.643913, 35.772827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544811, 39.768314, 35.940727>,  <38.749458, 39.842957, 36.041470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544811, 39.768314, 35.940727>,  <38.203735, 39.643913, 35.772827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544811, 39.768314, 35.940727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451570, -0.034778, -0.891558,
		-0.262678, 0.949773, -0.170094,
		0.852693, 0.311002, 0.419753,
		38.800617, 39.861614, 36.066654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392857, 40.229347, 35.382561>,  <38.203735, 39.643913, 35.772827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392857, 40.229347, 35.382561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722988, 40.099510, 35.567371>,  <38.921066, 40.021606, 35.678257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722988, 40.099510, 35.567371>,  <38.392857, 40.229347, 35.382561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722988, 40.099510, 35.567371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505371, 0.059685, -0.860836,
		0.251847, 0.943968, 0.213301,
		0.825332, -0.324595, 0.462023,
		38.970589, 40.002132, 35.705978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879044, 40.663708, 35.135761>,  <38.392857, 40.229347, 35.382561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879044, 40.663708, 35.135761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056202, 40.328915, 35.264328>,  <39.162495, 40.128040, 35.341469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056202, 40.328915, 35.264328>,  <38.879044, 40.663708, 35.135761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056202, 40.328915, 35.264328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428878, -0.117046, -0.895748,
		0.787343, 0.534571, 0.307122,
		0.442893, -0.836979, 0.321421,
		39.189072, 40.077820, 35.360756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456486, 40.692039, 34.874218>,  <38.879044, 40.663708, 35.135761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456486, 40.692039, 34.874218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474888, 40.304222, 34.970440>,  <39.485928, 40.071529, 35.028172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474888, 40.304222, 34.970440>,  <39.456486, 40.692039, 34.874218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474888, 40.304222, 34.970440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498838, -0.186337, -0.846427,
		0.865473, 0.158935, 0.475074,
		0.046003, -0.969545, 0.240552,
		39.488689, 40.013359, 35.042606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093075, 40.491348, 34.779236>,  <39.456486, 40.692039, 34.874218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093075, 40.491348, 34.779236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881702, 40.152607, 34.755241>,  <39.754879, 39.949360, 34.740845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881702, 40.152607, 34.755241>,  <40.093075, 40.491348, 34.779236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881702, 40.152607, 34.755241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323372, -0.135437, -0.936530,
		0.784981, -0.514287, 0.345418,
		-0.528428, -0.846856, -0.059990,
		39.723175, 39.898552, 34.737244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528149, 39.994133, 34.446285>,  <40.093075, 40.491348, 34.779236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528149, 39.994133, 34.446285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168514, 39.832550, 34.378803>,  <39.952732, 39.735600, 34.338314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168514, 39.832550, 34.378803>,  <40.528149, 39.994133, 34.446285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168514, 39.832550, 34.378803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188549, -0.009527, -0.982018,
		0.395084, -0.914729, 0.084731,
		-0.899087, -0.403956, -0.168707,
		39.898788, 39.711365, 34.328190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583542, 39.252956, 34.390553>,  <40.528149, 39.994133, 34.446285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583542, 39.252956, 34.390553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747299, 39.296947, 34.752834>,  <40.845554, 39.323341, 34.970203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747299, 39.296947, 34.752834>,  <40.583542, 39.252956, 34.390553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747299, 39.296947, 34.752834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869337, -0.348258, -0.350670,
		0.276852, 0.930925, -0.238184,
		0.409397, 0.109978, 0.905703,
		40.870117, 39.329941, 35.024544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183731, 39.713982, 34.462410>,  <40.583542, 39.252956, 34.390553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183731, 39.713982, 34.462410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200893, 39.403915, 34.714531>,  <41.211189, 39.217876, 34.865803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200893, 39.403915, 34.714531>,  <41.183731, 39.713982, 34.462410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200893, 39.403915, 34.714531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798657, -0.352428, -0.487793,
		0.600255, 0.524325, 0.603968,
		0.042906, -0.775163, 0.630302,
		41.213764, 39.171368, 34.903622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878300, 39.638359, 34.731773>,  <41.183731, 39.713982, 34.462410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878300, 39.638359, 34.731773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716553, 39.273075, 34.751892>,  <41.619503, 39.053905, 34.763962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716553, 39.273075, 34.751892>,  <41.878300, 39.638359, 34.731773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716553, 39.273075, 34.751892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910409, -0.407165, -0.073297,
		0.087413, 0.016148, 0.996041,
		-0.404370, -0.913212, 0.050293,
		41.595242, 38.999111, 34.766979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033615, 39.213043, 35.449898>,  <41.878300, 39.638359, 34.731773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033615, 39.213043, 35.449898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979984, 38.990105, 35.122143>,  <41.947807, 38.856342, 34.925491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979984, 38.990105, 35.122143>,  <42.033615, 39.213043, 35.449898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979984, 38.990105, 35.122143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990703, -0.094597, -0.097764,
		-0.023023, -0.824876, 0.564845,
		-0.134076, -0.557343, -0.819385,
		41.939762, 38.822903, 34.876328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520996, 38.598267, 35.538742>,  <42.033615, 39.213043, 35.449898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520996, 38.598267, 35.538742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430454, 38.658199, 35.153763>,  <42.376129, 38.694160, 34.922775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430454, 38.658199, 35.153763>,  <42.520996, 38.598267, 35.538742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430454, 38.658199, 35.153763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973932, 0.019705, -0.225985,
		-0.014896, -0.988514, -0.150389,
		-0.226353, 0.149835, -0.962452,
		42.362549, 38.703152, 34.865028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618351, 37.942738, 35.038502>,  <42.520996, 38.598267, 35.538742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618351, 37.942738, 35.038502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690910, 38.317326, 34.918419>,  <42.734444, 38.542080, 34.846371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690910, 38.317326, 34.918419>,  <42.618351, 37.942738, 35.038502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690910, 38.317326, 34.918419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952981, -0.242743, -0.181395,
		-0.242743, -0.253184, -0.936469,
		0.181395, 0.936469, -0.300204,
		42.745327, 38.598267, 34.828358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854126, 38.055859, 34.340328>,  <42.618351, 37.942738, 35.038502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854126, 38.055859, 34.340328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002506, 38.345905, 34.572399>,  <43.091534, 38.519932, 34.711643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002506, 38.345905, 34.572399>,  <42.854126, 38.055859, 34.340328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002506, 38.345905, 34.572399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924786, -0.345392, -0.159609,
		0.084654, 0.595748, -0.798698,
		0.370950, 0.725113, 0.580178,
		43.113792, 38.563438, 34.746452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127323, 37.539124, 34.729862>,  <42.854126, 38.055859, 34.340328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127323, 37.539124, 34.729862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442417, 37.337711, 34.587914>,  <43.631474, 37.216866, 34.502747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442417, 37.337711, 34.587914>,  <43.127323, 37.539124, 34.729862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442417, 37.337711, 34.587914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558737, -0.826602, -0.067391,
		-0.259402, 0.251365, -0.932484,
		0.787733, -0.503532, -0.354869,
		43.678738, 37.186653, 34.481453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800388, 37.076050, 34.266991>,  <43.127323, 37.539124, 34.729862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800388, 37.076050, 34.266991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155231, 36.915943, 34.358917>,  <43.368137, 36.819878, 34.414074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155231, 36.915943, 34.358917>,  <42.800388, 37.076050, 34.266991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155231, 36.915943, 34.358917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414817, -0.909751, 0.016723,
		0.202381, -0.110167, -0.973091,
		0.887113, -0.400270, 0.229816,
		43.421364, 36.795860, 34.427860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902355, 36.469372, 33.832481>,  <42.800388, 37.076050, 34.266991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902355, 36.469372, 33.832481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130600, 36.452656, 34.160545>,  <43.267548, 36.442627, 34.357384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130600, 36.452656, 34.160545>,  <42.902355, 36.469372, 33.832481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130600, 36.452656, 34.160545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322047, -0.930093, 0.176669,
		0.755442, -0.364939, -0.544176,
		0.570607, -0.041787, 0.820159,
		43.301781, 36.440121, 34.406593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221649, 35.826626, 33.809872>,  <42.902355, 36.469372, 33.832481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221649, 35.826626, 33.809872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261715, 35.942207, 34.190708>,  <43.285755, 36.011555, 34.419209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261715, 35.942207, 34.190708>,  <43.221649, 35.826626, 33.809872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261715, 35.942207, 34.190708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214348, -0.928165, 0.304246,
		0.971608, -0.234554, -0.031036,
		0.100168, 0.288955, 0.952088,
		43.291767, 36.028893, 34.476334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727337, 35.373367, 34.153500>,  <43.221649, 35.826626, 33.809872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727337, 35.373367, 34.153500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507130, 35.516392, 34.455250>,  <43.375008, 35.602207, 34.636299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507130, 35.516392, 34.455250>,  <43.727337, 35.373367, 34.153500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507130, 35.516392, 34.455250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120484, -0.928201, 0.352032,
		0.826086, 0.102908, 0.554069,
		-0.550514, 0.357565, 0.754375,
		43.341976, 35.623661, 34.681561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922283, 34.926193, 34.696037>,  <43.727337, 35.373367, 34.153500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922283, 34.926193, 34.696037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576504, 35.081375, 34.823925>,  <43.369038, 35.174484, 34.900658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576504, 35.081375, 34.823925>,  <43.922283, 34.926193, 34.696037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576504, 35.081375, 34.823925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281759, -0.900591, 0.330980,
		0.416340, 0.196032, 0.887825,
		-0.864450, 0.387953, 0.319718,
		43.317169, 35.197762, 34.919842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833340, 34.721542, 35.439999>,  <43.922283, 34.926193, 34.696037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833340, 34.721542, 35.439999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461327, 34.819321, 35.330242>,  <43.238121, 34.877987, 35.264389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461327, 34.819321, 35.330242>,  <43.833340, 34.721542, 35.439999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461327, 34.819321, 35.330242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314879, -0.915045, 0.252079,
		-0.189457, 0.320841, 0.927991,
		-0.930031, 0.244447, -0.274388,
		43.182316, 34.892654, 35.247925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401695, 34.327427, 35.857624>,  <43.833340, 34.721542, 35.439999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401695, 34.327427, 35.857624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197365, 34.419659, 35.526352>,  <43.074768, 34.474998, 35.327587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197365, 34.419659, 35.526352>,  <43.401695, 34.327427, 35.857624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197365, 34.419659, 35.526352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432894, -0.901302, 0.016074,
		-0.742738, 0.366727, 0.560225,
		-0.510827, 0.230579, -0.828185,
		43.044117, 34.488831, 35.277897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676598, 34.119102, 35.992741>,  <43.401695, 34.327427, 35.857624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676598, 34.119102, 35.992741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698906, 34.153904, 35.594883>,  <42.712292, 34.174786, 35.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698906, 34.153904, 35.594883>,  <42.676598, 34.119102, 35.992741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698906, 34.153904, 35.594883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410755, -0.905990, -0.102284,
		-0.910038, 0.414261, -0.014793,
		0.055775, 0.087006, -0.994645,
		42.715637, 34.180004, 35.296490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989605, 33.833759, 35.793995>,  <42.676598, 34.119102, 35.992741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989605, 33.833759, 35.793995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242241, 33.837479, 35.483898>,  <42.393822, 33.839710, 35.297840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242241, 33.837479, 35.483898>,  <41.989605, 33.833759, 35.793995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242241, 33.837479, 35.483898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361561, -0.881004, -0.305131,
		-0.685833, 0.473017, -0.553072,
		0.631591, 0.009300, -0.775246,
		42.431717, 33.840267, 35.251324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643627, 33.485977, 35.238838>,  <41.989605, 33.833759, 35.793995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643627, 33.485977, 35.238838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033157, 33.448166, 35.156147>,  <42.266876, 33.425480, 35.106533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033157, 33.448166, 35.156147>,  <41.643627, 33.485977, 35.238838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033157, 33.448166, 35.156147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192258, -0.827729, -0.527164,
		-0.121277, 0.553108, -0.824235,
		0.973822, -0.094533, -0.206724,
		42.325302, 33.419807, 35.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770004, 33.086067, 34.625866>,  <41.643627, 33.485977, 35.238838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770004, 33.086067, 34.625866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147713, 33.070637, 34.756622>,  <42.374340, 33.061378, 34.835075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147713, 33.070637, 34.756622>,  <41.770004, 33.086067, 34.625866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147713, 33.070637, 34.756622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112985, -0.894786, -0.431964,
		0.309163, 0.444826, -0.840564,
		0.944274, -0.038576, 0.326893,
		42.430996, 33.059063, 34.854691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168224, 32.787853, 34.146545>,  <41.770004, 33.086067, 34.625866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168224, 32.787853, 34.146545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411583, 32.738300, 34.460106>,  <42.557598, 32.708569, 34.648243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411583, 32.738300, 34.460106>,  <42.168224, 32.787853, 34.146545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411583, 32.738300, 34.460106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087492, -0.971251, -0.221397,
		0.788796, 0.203282, -0.580066,
		0.608396, -0.123886, 0.783905,
		42.594101, 32.701134, 34.695278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705620, 32.405422, 33.800129>,  <42.168224, 32.787853, 34.146545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705620, 32.405422, 33.800129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750145, 32.334255, 34.191219>,  <42.776859, 32.291553, 34.425873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750145, 32.334255, 34.191219>,  <42.705620, 32.405422, 33.800129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750145, 32.334255, 34.191219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154557, -0.968773, -0.193883,
		0.981693, 0.172697, -0.080341,
		0.111315, -0.177917, 0.977729,
		42.783539, 32.280880, 34.484539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271370, 32.031315, 33.839886>,  <42.705620, 32.405422, 33.800129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271370, 32.031315, 33.839886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077477, 31.945690, 34.179111>,  <42.961140, 31.894316, 34.382648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077477, 31.945690, 34.179111>,  <43.271370, 32.031315, 33.839886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077477, 31.945690, 34.179111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266458, -0.959642, -0.089928,
		0.833089, 0.182383, 0.522207,
		-0.484730, -0.214064, 0.848064,
		42.932056, 31.881472, 34.433533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733215, 31.514355, 34.071316>,  <43.271370, 32.031315, 33.839886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733215, 31.514355, 34.071316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403397, 31.456631, 34.290146>,  <43.205505, 31.421995, 34.421444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403397, 31.456631, 34.290146>,  <43.733215, 31.514355, 34.071316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403397, 31.456631, 34.290146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133146, -0.989262, -0.060278,
		0.549900, 0.023139, 0.834910,
		-0.824549, -0.144312, 0.547076,
		43.156033, 31.413338, 34.454269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948154, 31.001562, 34.704697>,  <43.733215, 31.514355, 34.071316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948154, 31.001562, 34.704697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556679, 30.973616, 34.627453>,  <43.321793, 30.956848, 34.581108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556679, 30.973616, 34.627453>,  <43.948154, 31.001562, 34.704697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556679, 30.973616, 34.627453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092163, -0.989762, -0.108986,
		-0.183513, -0.124460, 0.975107,
		-0.978687, -0.069868, -0.193105,
		43.263073, 30.952656, 34.569523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531052, 30.626635, 35.236397>,  <43.948154, 31.001562, 34.704697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531052, 30.626635, 35.236397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304485, 30.610989, 34.907120>,  <43.168545, 30.601601, 34.709553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304485, 30.610989, 34.907120>,  <43.531052, 30.626635, 35.236397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304485, 30.610989, 34.907120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131933, -0.981686, 0.137427,
		-0.813491, 0.186447, 0.550882,
		-0.566416, -0.039116, -0.823191,
		43.134560, 30.599255, 34.660164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068775, 30.074198, 35.439938>,  <43.531052, 30.626635, 35.236397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068775, 30.074198, 35.439938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039894, 30.109100, 35.042511>,  <43.022568, 30.130041, 34.804054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039894, 30.109100, 35.042511>,  <43.068775, 30.074198, 35.439938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039894, 30.109100, 35.042511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170568, -0.982571, -0.073896,
		-0.982694, 0.164131, 0.085874,
		-0.072248, 0.087264, -0.993562,
		43.018234, 30.135277, 34.744442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489338, 29.704670, 35.318382>,  <43.068775, 30.074198, 35.439938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489338, 29.704670, 35.318382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700928, 29.726385, 34.979622>,  <42.827881, 29.739414, 34.776367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700928, 29.726385, 34.979622>,  <42.489338, 29.704670, 35.318382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700928, 29.726385, 34.979622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230265, -0.951332, -0.204806,
		-0.816804, 0.303348, -0.490726,
		0.528971, 0.054290, -0.846902,
		42.859619, 29.742672, 34.725552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110779, 29.280180, 34.788475>,  <42.489338, 29.704670, 35.318382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110779, 29.280180, 34.788475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474117, 29.286400, 34.621300>,  <42.692120, 29.290133, 34.520992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474117, 29.286400, 34.621300>,  <42.110779, 29.280180, 34.788475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474117, 29.286400, 34.621300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100033, -0.962226, -0.253210,
		-0.406090, 0.271809, -0.872474,
		0.908342, 0.015549, -0.417940,
		42.746620, 29.291065, 34.495918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095699, 28.831072, 34.095688>,  <42.110779, 29.280180, 34.788475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095699, 28.831072, 34.095688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480583, 28.868917, 34.197823>,  <42.711514, 28.891624, 34.259106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480583, 28.868917, 34.197823>,  <42.095699, 28.831072, 34.095688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480583, 28.868917, 34.197823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169952, -0.941307, -0.291647,
		0.212760, 0.324021, -0.921815,
		0.962211, 0.094613, 0.255340,
		42.769245, 28.897301, 34.274426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568794, 28.693325, 33.471252>,  <42.095699, 28.831072, 34.095688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568794, 28.693325, 33.471252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683685, 28.587959, 33.839626>,  <42.752621, 28.524740, 34.060650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683685, 28.587959, 33.839626>,  <42.568794, 28.693325, 33.471252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683685, 28.587959, 33.839626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046954, -0.964160, -0.261134,
		0.956711, 0.031763, -0.289300,
		0.287225, -0.263413, 0.920932,
		42.769852, 28.508936, 34.115906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996937, 28.168591, 33.482018>,  <42.568794, 28.693325, 33.471252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996937, 28.168591, 33.482018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845993, 28.142952, 33.851555>,  <42.755428, 28.127569, 34.073277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845993, 28.142952, 33.851555>,  <42.996937, 28.168591, 33.482018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845993, 28.142952, 33.851555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263044, -0.949093, -0.173291,
		0.887923, -0.308405, 0.341291,
		-0.377361, -0.064095, 0.923846,
		42.732784, 28.123724, 34.128708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450733, 27.642778, 33.539433>,  <42.996937, 28.168591, 33.482018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450733, 27.642778, 33.539433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112625, 27.451220, 33.444622>,  <42.909760, 27.336285, 33.387733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112625, 27.451220, 33.444622>,  <43.450733, 27.642778, 33.539433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112625, 27.451220, 33.444622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088840, -0.563364, 0.821418,
		-0.526909, 0.673259, 0.518738,
		-0.845266, -0.478897, -0.237030,
		42.859047, 27.307550, 33.373512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162769, 27.497585, 33.381226>,  <43.450733, 27.642778, 33.539433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162769, 27.497585, 33.381226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247406, 27.148954, 33.558125>,  <44.298187, 26.939775, 33.664265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247406, 27.148954, 33.558125>,  <44.162769, 27.497585, 33.381226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247406, 27.148954, 33.558125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600662, -0.472916, -0.644636,
		0.770996, -0.129242, -0.623588,
		0.211591, -0.871577, 0.442247,
		44.310883, 26.887482, 33.690800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645557, 27.541117, 32.746910>,  <44.162769, 27.497585, 33.381226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645557, 27.541117, 32.746910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946125, 27.289436, 32.667439>,  <45.126465, 27.138428, 32.619755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946125, 27.289436, 32.667439>,  <44.645557, 27.541117, 32.746910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946125, 27.289436, 32.667439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565252, 0.458504, 0.685758,
		-0.340384, -0.627597, 0.700186,
		0.751418, -0.629203, -0.198683,
		45.171551, 27.100676, 32.607834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078358, 27.257578, 33.330280>,  <44.645557, 27.541117, 32.746910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078358, 27.257578, 33.330280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352798, 27.232037, 33.040401>,  <45.517464, 27.216711, 32.866474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352798, 27.232037, 33.040401>,  <45.078358, 27.257578, 33.330280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352798, 27.232037, 33.040401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580077, 0.649207, 0.491977,
		0.439066, -0.757927, 0.482460,
		0.686099, -0.063854, -0.724701,
		45.558628, 27.212881, 32.822990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791092, 27.175005, 33.689079>,  <45.078358, 27.257578, 33.330280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791092, 27.175005, 33.689079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801056, 27.332991, 33.321735>,  <45.807034, 27.427782, 33.101330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801056, 27.332991, 33.321735>,  <45.791092, 27.175005, 33.689079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801056, 27.332991, 33.321735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453926, 0.814015, 0.362397,
		0.890691, -0.425893, -0.159009,
		0.024907, 0.394962, -0.918360,
		45.808529, 27.451479, 33.046227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495617, 27.457214, 33.628399>,  <45.791092, 27.175005, 33.689079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495617, 27.457214, 33.628399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258984, 27.662811, 33.379932>,  <46.117004, 27.786169, 33.230854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258984, 27.662811, 33.379932>,  <46.495617, 27.457214, 33.628399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258984, 27.662811, 33.379932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302062, 0.855622, 0.420320,
		0.747520, 0.061025, -0.661430,
		-0.591585, 0.513990, -0.621162,
		46.081509, 27.817009, 33.193584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831848, 28.019949, 33.351631>,  <46.495617, 27.457214, 33.628399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831848, 28.019949, 33.351631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436352, 28.073248, 33.378887>,  <46.199055, 28.105227, 33.395241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436352, 28.073248, 33.378887>,  <46.831848, 28.019949, 33.351631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436352, 28.073248, 33.378887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149398, 0.851974, 0.501817,
		0.008816, 0.506344, -0.862286,
		-0.988738, 0.133248, 0.068136,
		46.139729, 28.113222, 33.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753174, 28.761387, 33.420696>,  <46.831848, 28.019949, 33.351631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.753174, 28.761387, 33.420696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382969, 28.631002, 33.497822>,  <46.160847, 28.552771, 33.544098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382969, 28.631002, 33.497822>,  <46.753174, 28.761387, 33.420696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382969, 28.631002, 33.497822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199173, 0.851961, 0.484245,
		-0.322119, 0.409770, -0.853422,
		-0.925511, -0.325963, 0.192817,
		46.105316, 28.533215, 33.555668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200138, 29.164072, 33.028568>,  <46.753174, 28.761387, 33.420696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200138, 29.164072, 33.028568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219959, 29.046381, 33.410347>,  <46.231850, 28.975765, 33.639416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219959, 29.046381, 33.410347>,  <46.200138, 29.164072, 33.028568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219959, 29.046381, 33.410347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073411, 0.951966, 0.297274,
		-0.996070, -0.084797, 0.025570,
		0.049550, -0.294228, 0.954450,
		46.234825, 28.958113, 33.696682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758038, 29.537878, 33.381012>,  <46.200138, 29.164072, 33.028568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758038, 29.537878, 33.381012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000328, 29.403301, 33.669430>,  <46.145702, 29.322556, 33.842480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000328, 29.403301, 33.669430>,  <45.758038, 29.537878, 33.381012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000328, 29.403301, 33.669430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062532, 0.883274, 0.464668,
		-0.793213, -0.326549, 0.513984,
		0.605726, -0.336440, 0.721044,
		46.182045, 29.302370, 33.885742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433388, 29.705816, 33.982323>,  <45.758038, 29.537878, 33.381012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433388, 29.705816, 33.982323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812782, 29.672449, 34.104580>,  <46.040417, 29.652428, 34.177937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812782, 29.672449, 34.104580>,  <45.433388, 29.705816, 33.982323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812782, 29.672449, 34.104580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070711, 0.884644, 0.460874,
		-0.308836, -0.458744, 0.833171,
		0.948483, -0.083420, 0.305648,
		46.097328, 29.647423, 34.196274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408829, 30.134462, 34.630966>,  <45.433388, 29.705816, 33.982323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408829, 30.134462, 34.630966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789165, 30.091068, 34.514950>,  <46.017368, 30.065031, 34.445339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789165, 30.091068, 34.514950>,  <45.408829, 30.134462, 34.630966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789165, 30.091068, 34.514950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219976, 0.895861, 0.386062,
		0.217954, -0.430887, 0.875690,
		0.950845, -0.108487, -0.290041,
		46.074421, 30.058523, 34.427937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825142, 30.450148, 35.136776>,  <45.408829, 30.134462, 34.630966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825142, 30.450148, 35.136776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063046, 30.438313, 34.815434>,  <46.205788, 30.431211, 34.622627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063046, 30.438313, 34.815434>,  <45.825142, 30.450148, 35.136776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063046, 30.438313, 34.815434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324882, 0.922928, 0.206534,
		0.735329, -0.383835, 0.558536,
		0.594763, -0.029588, -0.803357,
		46.241474, 30.429436, 34.574425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.477119, 30.716085, 35.347385>,  <45.825142, 30.450148, 35.136776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.477119, 30.716085, 35.347385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505077, 30.715170, 34.948364>,  <46.521851, 30.714621, 34.708950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505077, 30.715170, 34.948364>,  <46.477119, 30.716085, 35.347385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505077, 30.715170, 34.948364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317017, 0.948208, 0.020038,
		0.945841, -0.317642, 0.067002,
		0.069896, -0.002288, -0.997552,
		46.526047, 30.714483, 34.649097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069824, 30.995674, 35.111195>,  <46.477119, 30.716085, 35.347385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069824, 30.995674, 35.111195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873051, 31.022917, 34.764008>,  <46.754986, 31.039263, 34.555695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873051, 31.022917, 34.764008>,  <47.069824, 30.995674, 35.111195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873051, 31.022917, 34.764008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235981, 0.970047, -0.057628,
		0.838043, -0.233173, -0.493268,
		-0.491931, 0.068107, -0.867966,
		46.725471, 31.043348, 34.503616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.450420, 31.433710, 34.663460>,  <47.069824, 30.995674, 35.111195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.450420, 31.433710, 34.663460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079037, 31.443769, 34.515232>,  <46.856205, 31.449804, 34.426296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079037, 31.443769, 34.515232>,  <47.450420, 31.433710, 34.663460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079037, 31.443769, 34.515232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000328, 0.997760, 0.066889,
		0.371424, 0.061983, -0.926392,
		-0.928463, 0.025148, -0.370572,
		46.800499, 31.451313, 34.404060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.496849, 31.885227, 34.055862>,  <47.450420, 31.433710, 34.663460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.496849, 31.885227, 34.055862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110600, 31.873411, 34.159168>,  <46.878849, 31.866322, 34.221153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110600, 31.873411, 34.159168>,  <47.496849, 31.885227, 34.055862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110600, 31.873411, 34.159168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064434, 0.989718, -0.127699,
		-0.251838, -0.139950, -0.957597,
		-0.965622, -0.029542, 0.258267,
		46.820911, 31.864548, 34.236649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088772, 32.319862, 33.559391>,  <47.496849, 31.885227, 34.055862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088772, 32.319862, 33.559391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838223, 32.293343, 33.870071>,  <46.687893, 32.277431, 34.056480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838223, 32.293343, 33.870071>,  <47.088772, 32.319862, 33.559391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838223, 32.293343, 33.870071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283539, 0.947505, -0.147785,
		-0.726132, -0.312794, -0.612285,
		-0.626369, -0.066295, 0.776702,
		46.650311, 32.273453, 34.103081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426796, 32.526672, 33.374676>,  <47.088772, 32.319862, 33.559391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426796, 32.526672, 33.374676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410938, 32.587708, 33.769672>,  <46.401424, 32.624329, 34.006672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410938, 32.587708, 33.769672>,  <46.426796, 32.526672, 33.374676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410938, 32.587708, 33.769672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313306, 0.936536, -0.157288,
		-0.948824, -0.315624, 0.010676,
		-0.039646, 0.152584, 0.987495,
		46.399044, 32.633484, 34.065922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853836, 32.912586, 33.473988>,  <46.426796, 32.526672, 33.374676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853836, 32.912586, 33.473988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002754, 32.954723, 33.842834>,  <46.092106, 32.980007, 34.064144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002754, 32.954723, 33.842834>,  <45.853836, 32.912586, 33.473988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002754, 32.954723, 33.842834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393781, 0.917608, 0.054154,
		-0.840437, -0.383273, 0.383103,
		0.372294, 0.105345, 0.922117,
		46.114441, 32.986328, 34.119469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336796, 33.185104, 33.811508>,  <45.853836, 32.912586, 33.473988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336796, 33.185104, 33.811508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667259, 33.286518, 34.012779>,  <45.865536, 33.347366, 34.133541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667259, 33.286518, 34.012779>,  <45.336796, 33.185104, 33.811508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667259, 33.286518, 34.012779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363004, 0.922507, 0.131182,
		-0.430926, -0.291032, 0.854168,
		0.826154, 0.253537, 0.503178,
		45.915104, 33.362579, 34.163734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142334, 33.409794, 34.473450>,  <45.336796, 33.185104, 33.811508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142334, 33.409794, 34.473450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485683, 33.593269, 34.381535>,  <45.691692, 33.703354, 34.326385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485683, 33.593269, 34.381535>,  <45.142334, 33.409794, 34.473450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485683, 33.593269, 34.381535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467939, 0.883619, 0.015836,
		0.210308, 0.093933, 0.973112,
		0.858373, 0.458688, -0.229787,
		45.743195, 33.730877, 34.312599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068817, 34.165752, 34.704372>,  <45.142334, 33.409794, 34.473450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068817, 34.165752, 34.704372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418781, 34.174942, 34.510872>,  <45.628757, 34.180454, 34.394772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418781, 34.174942, 34.510872>,  <45.068817, 34.165752, 34.704372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418781, 34.174942, 34.510872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017207, 0.999718, 0.016350,
		0.483988, -0.005981, 0.875055,
		0.874906, 0.022971, -0.483748,
		45.681252, 34.181831, 34.365746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477577, 34.723663, 34.947906>,  <45.068817, 34.165752, 34.704372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477577, 34.723663, 34.947906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625126, 34.680618, 34.578613>,  <45.713657, 34.654793, 34.357037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625126, 34.680618, 34.578613>,  <45.477577, 34.723663, 34.947906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625126, 34.680618, 34.578613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016409, 0.992367, -0.122226,
		0.929334, 0.060235, 0.364294,
		0.368875, -0.107611, -0.923229,
		45.735790, 34.648335, 34.301643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985405, 35.305687, 34.903366>,  <45.477577, 34.723663, 34.947906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985405, 35.305687, 34.903366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.928947, 35.189899, 34.524677>,  <45.895073, 35.120426, 34.297462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.928947, 35.189899, 34.524677>,  <45.985405, 35.305687, 34.903366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928947, 35.189899, 34.524677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138262, 0.941161, -0.308383,
		0.980287, -0.174422, -0.092817,
		-0.141145, -0.289471, -0.946723,
		45.886604, 35.103058, 34.240662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588905, 35.444725, 34.496162>,  <45.985405, 35.305687, 34.903366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588905, 35.444725, 34.496162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286106, 35.441055, 34.234821>,  <46.104427, 35.438854, 34.078018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286106, 35.441055, 34.234821>,  <46.588905, 35.444725, 34.496162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286106, 35.441055, 34.234821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314526, 0.871322, -0.376659,
		0.572736, -0.490626, -0.656703,
		-0.756998, -0.009176, -0.653352,
		46.059006, 35.438301, 34.038815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825947, 35.598160, 33.737770>,  <46.588905, 35.444725, 34.496162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825947, 35.598160, 33.737770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437252, 35.689754, 33.760738>,  <46.204037, 35.744709, 33.774521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437252, 35.689754, 33.760738>,  <46.825947, 35.598160, 33.737770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437252, 35.689754, 33.760738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211247, 0.952008, -0.221482,
		-0.105380, -0.203092, -0.973472,
		-0.971735, 0.228983, 0.057420,
		46.145733, 35.758450, 33.777966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662300, 36.211334, 33.228016>,  <46.825947, 35.598160, 33.737770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662300, 36.211334, 33.228016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340359, 36.182796, 33.463684>,  <46.147194, 36.165672, 33.605083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340359, 36.182796, 33.463684>,  <46.662300, 36.211334, 33.228016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340359, 36.182796, 33.463684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110119, 0.993462, -0.030127,
		-0.583164, -0.089126, -0.807450,
		-0.804856, -0.071347, 0.589166,
		46.098904, 36.161392, 33.640434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075199, 36.589497, 33.864178>,  <46.662300, 36.211334, 33.228016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075199, 36.589497, 33.864178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900986, 36.786179, 34.165783>,  <46.796459, 36.904186, 34.346745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900986, 36.786179, 34.165783>,  <47.075199, 36.589497, 33.864178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900986, 36.786179, 34.165783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400260, -0.856055, 0.327049,
		0.806289, -0.159360, 0.569652,
		-0.435535, 0.491705, 0.754013,
		46.770325, 36.933689, 34.391987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.738083, 36.698105, 34.301922>,  <47.075199, 36.589497, 33.864178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.738083, 36.698105, 34.301922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559677, 36.398766, 34.498306>,  <47.452633, 36.219162, 34.616138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559677, 36.398766, 34.498306>,  <47.738083, 36.698105, 34.301922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.559677, 36.398766, 34.498306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095593, -0.585239, -0.805207,
		0.889906, -0.312202, 0.332563,
		-0.446015, -0.748349, 0.490963,
		47.425873, 36.174259, 34.645596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.268257, 36.195171, 34.485332>,  <47.738083, 36.698105, 34.301922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.268257, 36.195171, 34.485332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.909561, 36.018467, 34.474743>,  <47.694344, 35.912445, 34.468391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.909561, 36.018467, 34.474743>,  <48.268257, 36.195171, 34.485332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.909561, 36.018467, 34.474743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352603, -0.677042, -0.645977,
		0.267449, -0.588607, 0.762898,
		-0.896740, -0.441765, -0.026470,
		47.640537, 35.885937, 34.466801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.189232, 35.497097, 34.787231>,  <48.268257, 36.195171, 34.485332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.189232, 35.497097, 34.787231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957817, 35.546535, 34.464737>,  <47.818970, 35.576199, 34.271240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957817, 35.546535, 34.464737>,  <48.189232, 35.497097, 34.787231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.957817, 35.546535, 34.464737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451482, -0.774695, -0.442732,
		-0.679310, -0.620138, 0.392385,
		-0.578534, 0.123598, -0.806239,
		47.784256, 35.583614, 34.222866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.003502, 34.775383, 34.909092>,  <48.189232, 35.497097, 34.787231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.003502, 34.775383, 34.909092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645741, 34.950344, 34.946438>,  <47.431084, 35.055321, 34.968845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645741, 34.950344, 34.946438>,  <48.003502, 34.775383, 34.909092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645741, 34.950344, 34.946438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351107, -0.557354, -0.752383,
		-0.277057, -0.705717, 0.652076,
		-0.894407, 0.437401, 0.093364,
		47.377419, 35.081566, 34.974445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.149673, 43.430828, 42.652462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.871288, 43.153748, 42.728142>,  <33.704258, 42.987499, 42.773548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.871288, 43.153748, 42.728142>,  <34.149673, 43.430828, 42.652462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871288, 43.153748, 42.728142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046754, -0.306634, -0.950679,
		0.716551, -0.652794, 0.245793,
		-0.695966, -0.692702, 0.189198,
		33.662498, 42.945938, 42.784901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380833, 42.775532, 42.350067>,  <34.149673, 43.430828, 42.652462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380833, 42.775532, 42.350067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987045, 42.720463, 42.393639>,  <33.750774, 42.687420, 42.419781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987045, 42.720463, 42.393639>,  <34.380833, 42.775532, 42.350067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987045, 42.720463, 42.393639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000884, -0.616600, -0.787276,
		0.175555, -0.775145, 0.606902,
		-0.984469, -0.137674, 0.108932,
		33.691704, 42.679161, 42.426319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311333, 42.138783, 42.042213>,  <34.380833, 42.775532, 42.350067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311333, 42.138783, 42.042213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.936123, 42.275860, 42.062889>,  <33.710999, 42.358105, 42.075294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.936123, 42.275860, 42.062889>,  <34.311333, 42.138783, 42.042213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936123, 42.275860, 42.062889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221503, -0.478108, -0.849911,
		-0.266544, -0.808688, 0.524384,
		-0.938025, 0.342691, 0.051690,
		33.654716, 42.378666, 42.078396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926205, 41.568260, 41.900105>,  <34.311333, 42.138783, 42.042213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926205, 41.568260, 41.900105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668247, 41.865631, 41.829189>,  <33.513474, 42.044052, 41.786640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668247, 41.865631, 41.829189>,  <33.926205, 41.568260, 41.900105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668247, 41.865631, 41.829189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281496, -0.446705, -0.849244,
		-0.710543, -0.497768, 0.497349,
		-0.644894, 0.743426, -0.177284,
		33.474777, 42.088657, 41.776005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252972, 41.236210, 41.650249>,  <33.926205, 41.568260, 41.900105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252972, 41.236210, 41.650249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274845, 41.615177, 41.524128>,  <33.287968, 41.842556, 41.448456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274845, 41.615177, 41.524128>,  <33.252972, 41.236210, 41.650249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274845, 41.615177, 41.524128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125370, -0.306764, -0.943492,
		-0.990602, 0.091121, 0.102003,
		0.054681, 0.947414, -0.315305,
		33.291248, 41.899403, 41.429535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800236, 41.263531, 41.112282>,  <33.252972, 41.236210, 41.650249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800236, 41.263531, 41.112282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990677, 41.611988, 41.064213>,  <33.104942, 41.821060, 41.035370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990677, 41.611988, 41.064213>,  <32.800236, 41.263531, 41.112282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990677, 41.611988, 41.064213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076969, -0.177411, -0.981122,
		-0.876014, 0.457867, -0.151517,
		0.476104, 0.871139, -0.120173,
		33.133507, 41.873329, 41.028160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376431, 41.675972, 40.662197>,  <32.800236, 41.263531, 41.112282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376431, 41.675972, 40.662197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.753849, 41.807171, 40.643723>,  <32.980301, 41.885891, 40.632637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.753849, 41.807171, 40.643723>,  <32.376431, 41.675972, 40.662197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753849, 41.807171, 40.643723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018474, -0.191342, -0.981350,
		-0.330718, 0.925098, -0.186600,
		0.943549, 0.327997, -0.046190,
		33.036915, 41.905571, 40.629864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411396, 42.086697, 40.024593>,  <32.376431, 41.675972, 40.662197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411396, 42.086697, 40.024593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.787979, 41.978699, 40.105343>,  <33.013931, 41.913902, 40.153793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.787979, 41.978699, 40.105343>,  <32.411396, 42.086697, 40.024593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787979, 41.978699, 40.105343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173759, -0.124533, -0.976882,
		0.288889, 0.954776, -0.070330,
		0.941462, -0.269990, 0.201877,
		33.070419, 41.897701, 40.165905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805222, 42.419685, 39.542133>,  <32.411396, 42.086697, 40.024593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805222, 42.419685, 39.542133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057758, 42.130234, 39.653683>,  <33.209282, 41.956562, 39.720612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057758, 42.130234, 39.653683>,  <32.805222, 42.419685, 39.542133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057758, 42.130234, 39.653683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193824, -0.200949, -0.960235,
		0.750892, 0.660290, 0.013388,
		0.631343, -0.723628, 0.278871,
		33.247162, 41.913147, 39.737343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505150, 42.522266, 39.168800>,  <32.805222, 42.419685, 39.542133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505150, 42.522266, 39.168800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477028, 42.138985, 39.279728>,  <33.460155, 41.909016, 39.346283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477028, 42.138985, 39.279728>,  <33.505150, 42.522266, 39.168800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477028, 42.138985, 39.279728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340627, -0.284357, -0.896166,
		0.937566, 0.031462, 0.346380,
		-0.070301, -0.958202, 0.277320,
		33.455936, 41.851524, 39.362923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124821, 42.236202, 38.932392>,  <33.505150, 42.522266, 39.168800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124821, 42.236202, 38.932392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.871330, 41.931675, 38.987221>,  <33.719234, 41.748959, 39.020119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.871330, 41.931675, 38.987221>,  <34.124821, 42.236202, 38.932392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871330, 41.931675, 38.987221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308466, -0.411205, -0.857764,
		0.709394, -0.501306, 0.495431,
		-0.633726, -0.761316, 0.137070,
		33.681213, 41.703281, 39.028343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492355, 41.557537, 38.893513>,  <34.124821, 42.236202, 38.932392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492355, 41.557537, 38.893513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117195, 41.454624, 38.800438>,  <33.892097, 41.392876, 38.744595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117195, 41.454624, 38.800438>,  <34.492355, 41.557537, 38.893513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117195, 41.454624, 38.800438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332779, -0.477906, -0.812935,
		0.097957, -0.839887, 0.533849,
		-0.937903, -0.257286, -0.232683,
		33.835823, 41.377438, 38.730633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601830, 41.000923, 38.540108>,  <34.492355, 41.557537, 38.893513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601830, 41.000923, 38.540108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219250, 41.072353, 38.447750>,  <33.989700, 41.115211, 38.392338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219250, 41.072353, 38.447750>,  <34.601830, 41.000923, 38.540108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219250, 41.072353, 38.447750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097593, -0.549847, -0.829544,
		-0.275093, -0.815952, 0.508474,
		-0.956451, 0.178578, -0.230891,
		33.932316, 41.125927, 38.378483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302338, 40.318253, 38.446083>,  <34.601830, 41.000923, 38.540108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302338, 40.318253, 38.446083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033848, 40.540180, 38.249458>,  <33.872753, 40.673336, 38.131485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033848, 40.540180, 38.249458>,  <34.302338, 40.318253, 38.446083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033848, 40.540180, 38.249458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048923, -0.628542, -0.776235,
		-0.739641, -0.545074, 0.394747,
		-0.671220, 0.554824, -0.491562,
		33.832481, 40.706627, 38.101990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029839, 39.820698, 38.129234>,  <34.302338, 40.318253, 38.446083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029839, 39.820698, 38.129234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.934956, 40.158787, 37.937679>,  <33.878025, 40.361641, 37.822746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.934956, 40.158787, 37.937679>,  <34.029839, 39.820698, 38.129234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934956, 40.158787, 37.937679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226054, -0.431404, -0.873379,
		-0.944793, -0.315424, -0.088734,
		-0.237205, 0.845220, -0.478891,
		33.863792, 40.412354, 37.794014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716648, 39.608414, 37.513203>,  <34.029839, 39.820698, 38.129234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716648, 39.608414, 37.513203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802261, 39.989849, 37.428493>,  <33.853630, 40.218712, 37.377666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802261, 39.989849, 37.428493>,  <33.716648, 39.608414, 37.513203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802261, 39.989849, 37.428493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270333, -0.266156, -0.925247,
		-0.938674, 0.140788, -0.314755,
		0.214037, 0.953593, -0.211774,
		33.866474, 40.275928, 37.364960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419754, 39.711964, 36.932240>,  <33.716648, 39.608414, 37.513203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419754, 39.711964, 36.932240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720348, 39.973400, 36.968208>,  <33.900703, 40.130264, 36.989788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720348, 39.973400, 36.968208>,  <33.419754, 39.711964, 36.932240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720348, 39.973400, 36.968208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297255, -0.213749, -0.930565,
		-0.588992, 0.726034, -0.354913,
		0.751484, 0.653595, 0.089920,
		33.945793, 40.169479, 36.995186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420967, 40.089832, 36.284042>,  <33.419754, 39.711964, 36.932240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420967, 40.089832, 36.284042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.782143, 40.148975, 36.445454>,  <33.998848, 40.184460, 36.542301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.782143, 40.148975, 36.445454>,  <33.420967, 40.089832, 36.284042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782143, 40.148975, 36.445454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421486, -0.121295, -0.898686,
		-0.083931, 0.981543, -0.171841,
		0.902943, 0.147856, 0.403526,
		34.053024, 40.193333, 36.566513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781673, 40.374306, 35.705463>,  <33.420967, 40.089832, 36.284042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781673, 40.374306, 35.705463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.069046, 40.242302, 35.950394>,  <34.241470, 40.163097, 36.097351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.069046, 40.242302, 35.950394>,  <33.781673, 40.374306, 35.705463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069046, 40.242302, 35.950394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568557, -0.228556, -0.790257,
		0.400745, 0.915890, 0.023428,
		0.718433, -0.330011, 0.612328,
		34.284576, 40.143299, 36.134090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359493, 40.735500, 35.492237>,  <33.781673, 40.374306, 35.705463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359493, 40.735500, 35.492237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476749, 40.398224, 35.672504>,  <34.547104, 40.195858, 35.780666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476749, 40.398224, 35.672504>,  <34.359493, 40.735500, 35.492237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476749, 40.398224, 35.672504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626971, -0.186329, -0.756431,
		0.721786, 0.504299, 0.474033,
		0.293141, -0.843187, 0.450671,
		34.564693, 40.145267, 35.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986870, 40.710373, 35.261665>,  <34.359493, 40.735500, 35.492237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986870, 40.710373, 35.261665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922310, 40.334900, 35.383537>,  <34.883575, 40.109615, 35.456661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922310, 40.334900, 35.383537>,  <34.986870, 40.710373, 35.261665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922310, 40.334900, 35.383537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526407, -0.343023, -0.777966,
		0.834774, 0.034822, 0.549491,
		-0.161397, -0.938681, 0.304677,
		34.873890, 40.053295, 35.474941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642982, 40.501099, 35.151051>,  <34.986870, 40.710373, 35.261665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642982, 40.501099, 35.151051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428333, 40.167011, 35.199127>,  <35.299545, 39.966560, 35.227974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428333, 40.167011, 35.199127>,  <35.642982, 40.501099, 35.151051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428333, 40.167011, 35.199127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539506, -0.449118, -0.712198,
		0.648821, -0.317338, 0.691613,
		-0.536624, -0.835218, 0.120191,
		35.267345, 39.916447, 35.235184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446274, 40.329231, 35.182213>,  <35.642982, 40.501099, 35.151051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446274, 40.329231, 35.182213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718918, 40.582012, 35.034672>,  <36.882504, 40.733681, 34.946148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718918, 40.582012, 35.034672>,  <36.446274, 40.329231, 35.182213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718918, 40.582012, 35.034672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253127, 0.269328, 0.929188,
		0.686543, -0.726706, 0.023612,
		0.681605, 0.631950, -0.368854,
		36.923401, 40.771599, 34.924015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963768, 40.275581, 35.664635>,  <36.446274, 40.329231, 35.182213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963768, 40.275581, 35.664635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058456, 40.608341, 35.463875>,  <37.115269, 40.807999, 35.343418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058456, 40.608341, 35.463875>,  <36.963768, 40.275581, 35.664635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058456, 40.608341, 35.463875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219393, 0.457468, 0.861737,
		0.946483, -0.314103, -0.074222,
		0.236720, 0.831903, -0.501897,
		37.129471, 40.857914, 35.313305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452984, 40.532761, 36.040424>,  <36.963768, 40.275581, 35.664635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452984, 40.532761, 36.040424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375500, 40.857349, 35.819885>,  <37.329010, 41.052105, 35.687561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375500, 40.857349, 35.819885>,  <37.452984, 40.532761, 36.040424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375500, 40.857349, 35.819885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327198, 0.583253, 0.743477,
		0.924889, -0.036383, -0.378493,
		-0.193707, 0.811475, -0.551349,
		37.317387, 41.100792, 35.654480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091885, 40.981060, 36.088924>,  <37.452984, 40.532761, 36.040424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091885, 40.981060, 36.088924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762520, 41.187618, 35.994843>,  <37.564899, 41.311554, 35.938393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762520, 41.187618, 35.994843>,  <38.091885, 40.981060, 36.088924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762520, 41.187618, 35.994843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194099, 0.645828, 0.738398,
		0.533209, 0.562355, -0.632016,
		-0.823416, 0.516394, -0.235209,
		37.515495, 41.342537, 35.924278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209087, 41.556614, 36.449486>,  <38.091885, 40.981060, 36.088924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209087, 41.556614, 36.449486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823589, 41.616199, 36.360939>,  <37.592289, 41.651951, 36.307812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823589, 41.616199, 36.360939>,  <38.209087, 41.556614, 36.449486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823589, 41.616199, 36.360939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077276, 0.638261, 0.765932,
		0.255387, 0.755270, -0.603610,
		-0.963746, 0.148965, -0.221368,
		37.534466, 41.660889, 36.294529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112690, 42.222279, 36.515068>,  <38.209087, 41.556614, 36.449486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112690, 42.222279, 36.515068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742943, 42.070976, 36.534924>,  <37.521095, 41.980194, 36.546837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742943, 42.070976, 36.534924>,  <38.112690, 42.222279, 36.515068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742943, 42.070976, 36.534924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248284, 0.695262, 0.674512,
		-0.289654, 0.611172, -0.736593,
		-0.924368, -0.378259, 0.049641,
		37.465633, 41.957497, 36.549816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475544, 42.794456, 36.515793>,  <38.112690, 42.222279, 36.515068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475544, 42.794456, 36.515793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370899, 42.454075, 36.697971>,  <37.308113, 42.249844, 36.807278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370899, 42.454075, 36.697971>,  <37.475544, 42.794456, 36.515793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370899, 42.454075, 36.697971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231986, 0.513487, 0.826144,
		-0.936878, 0.110474, -0.331746,
		-0.261614, -0.850956, 0.455446,
		37.292416, 42.198788, 36.834606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825146, 42.961300, 36.711201>,  <37.475544, 42.794456, 36.515793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825146, 42.961300, 36.711201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931171, 42.653328, 36.943394>,  <36.994785, 42.468544, 37.082710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931171, 42.653328, 36.943394>,  <36.825146, 42.961300, 36.711201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931171, 42.653328, 36.943394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443055, 0.437445, 0.782524,
		-0.856413, -0.464603, -0.225168,
		0.265065, -0.769926, 0.580478,
		37.010693, 42.422352, 37.117538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171249, 42.841064, 37.021282>,  <36.825146, 42.961300, 36.711201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171249, 42.841064, 37.021282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477608, 42.689800, 37.229282>,  <36.661423, 42.599041, 37.354084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477608, 42.689800, 37.229282>,  <36.171249, 42.841064, 37.021282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477608, 42.689800, 37.229282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382247, 0.382514, 0.841172,
		-0.517005, -0.843018, 0.148415,
		0.765894, -0.378159, 0.520002,
		36.707375, 42.576351, 37.385284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854332, 42.856503, 37.670593>,  <36.171249, 42.841064, 37.021282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854332, 42.856503, 37.670593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223557, 42.746300, 37.777962>,  <36.445091, 42.680180, 37.842384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223557, 42.746300, 37.777962>,  <35.854332, 42.856503, 37.670593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223557, 42.746300, 37.777962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199863, 0.252701, 0.946677,
		-0.328643, -0.927491, 0.178197,
		0.923064, -0.275504, 0.268420,
		36.500477, 42.663651, 37.858486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854923, 42.374332, 38.188065>,  <35.854332, 42.856503, 37.670593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854923, 42.374332, 38.188065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213963, 42.541882, 38.242989>,  <36.429386, 42.642410, 38.275944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213963, 42.541882, 38.242989>,  <35.854923, 42.374332, 38.188065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213963, 42.541882, 38.242989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233017, 0.186453, 0.954431,
		0.374183, -0.888696, 0.264965,
		0.897602, 0.418873, 0.137314,
		36.483242, 42.667545, 38.284184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090176, 42.055305, 38.704556>,  <35.854923, 42.374332, 38.188065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090176, 42.055305, 38.704556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301655, 42.394417, 38.687778>,  <36.428543, 42.597881, 38.677711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301655, 42.394417, 38.687778>,  <36.090176, 42.055305, 38.704556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301655, 42.394417, 38.687778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133538, 0.131869, 0.982231,
		0.838240, -0.513702, 0.182929,
		0.528697, 0.847774, -0.041939,
		36.460262, 42.648750, 38.675198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463917, 41.980343, 39.236946>,  <36.090176, 42.055305, 38.704556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463917, 41.980343, 39.236946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469742, 42.371582, 39.153900>,  <36.473236, 42.606327, 39.104073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469742, 42.371582, 39.153900>,  <36.463917, 41.980343, 39.236946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469742, 42.371582, 39.153900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018588, 0.207339, 0.978093,
		0.999721, -0.018104, -0.015162,
		0.014564, 0.978102, -0.207618,
		36.474110, 42.665012, 39.091614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936749, 42.323124, 39.766460>,  <36.463917, 41.980343, 39.236946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936749, 42.323124, 39.766460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751350, 42.637123, 39.602043>,  <36.640114, 42.825523, 39.503395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751350, 42.637123, 39.602043>,  <36.936749, 42.323124, 39.766460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751350, 42.637123, 39.602043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028619, 0.476894, 0.878495,
		0.885638, 0.395413, -0.243503,
		-0.463494, 0.784997, -0.411039,
		36.612301, 42.872623, 39.478733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340065, 42.887280, 39.924026>,  <36.936749, 42.323124, 39.766460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340065, 42.887280, 39.924026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965942, 42.995235, 39.832493>,  <36.741470, 43.060009, 39.777573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965942, 42.995235, 39.832493>,  <37.340065, 42.887280, 39.924026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965942, 42.995235, 39.832493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119171, 0.368669, 0.921890,
		0.333170, 0.889519, -0.312656,
		-0.935305, 0.269887, -0.228835,
		36.685352, 43.076202, 39.763844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330311, 43.566055, 40.156902>,  <37.340065, 42.887280, 39.924026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330311, 43.566055, 40.156902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937344, 43.510780, 40.106674>,  <36.701565, 43.477615, 40.076538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937344, 43.510780, 40.106674>,  <37.330311, 43.566055, 40.156902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937344, 43.510780, 40.106674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176045, 0.461420, 0.869540,
		-0.062219, 0.876353, -0.477633,
		-0.982414, -0.138187, -0.125569,
		36.642620, 43.469326, 40.069004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923286, 44.235340, 40.345325>,  <37.330311, 43.566055, 40.156902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923286, 44.235340, 40.345325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692467, 43.911259, 40.386494>,  <36.553974, 43.716812, 40.411194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692467, 43.911259, 40.386494>,  <36.923286, 44.235340, 40.345325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692467, 43.911259, 40.386494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338420, 0.351892, 0.872722,
		-0.743295, 0.468774, -0.477246,
		-0.577049, -0.810199, 0.102917,
		36.519352, 43.668198, 40.417370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393543, 44.604916, 40.659370>,  <36.923286, 44.235340, 40.345325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393543, 44.604916, 40.659370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342827, 44.218090, 40.747650>,  <36.312397, 43.985996, 40.800617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342827, 44.218090, 40.747650>,  <36.393543, 44.604916, 40.659370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342827, 44.218090, 40.747650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172270, 0.240584, 0.955219,
		-0.976855, 0.083097, -0.197101,
		-0.126796, -0.967065, 0.220700,
		36.304787, 43.927971, 40.813862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.493168, 44.398258, 41.075745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732693, 44.087318, 41.152836>,  <35.876408, 43.900753, 41.199093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732693, 44.087318, 41.152836>,  <35.493168, 44.398258, 41.075745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732693, 44.087318, 41.152836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235273, 0.059289, 0.970119,
		-0.765553, -0.626263, -0.147388,
		0.598811, -0.777354, 0.192731,
		35.912334, 43.854111, 41.210655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125446, 43.944798, 41.471073>,  <35.493168, 44.398258, 41.075745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125446, 43.944798, 41.471073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508568, 43.858288, 41.546803>,  <35.738441, 43.806381, 41.592239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508568, 43.858288, 41.546803>,  <35.125446, 43.944798, 41.471073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508568, 43.858288, 41.546803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207346, -0.063720, 0.976190,
		-0.199064, -0.974250, -0.105875,
		0.957801, -0.216277, 0.189322,
		35.795910, 43.793404, 41.603600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092968, 43.461281, 42.066708>,  <35.125446, 43.944798, 41.471073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092968, 43.461281, 42.066708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475334, 43.578724, 42.065102>,  <35.704754, 43.649189, 42.064137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475334, 43.578724, 42.065102>,  <35.092968, 43.461281, 42.066708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475334, 43.578724, 42.065102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005607, 0.031921, 0.999475,
		0.293587, -0.955391, 0.032160,
		0.955916, 0.293613, -0.004015,
		35.762108, 43.666809, 42.063896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368519, 43.066940, 42.586117>,  <35.092968, 43.461281, 42.066708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368519, 43.066940, 42.586117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614838, 43.378670, 42.539734>,  <35.762627, 43.565708, 42.511906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614838, 43.378670, 42.539734>,  <35.368519, 43.066940, 42.586117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614838, 43.378670, 42.539734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013955, 0.157938, 0.987351,
		0.787783, -0.606387, 0.108132,
		0.615795, 0.779327, -0.115959,
		35.799576, 43.612469, 42.504948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850998, 42.897209, 43.081135>,  <35.368519, 43.066940, 42.586117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850998, 42.897209, 43.081135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914333, 43.285168, 43.007141>,  <35.952335, 43.517944, 42.962746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914333, 43.285168, 43.007141>,  <35.850998, 42.897209, 43.081135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914333, 43.285168, 43.007141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054116, 0.178546, 0.982442,
		0.985900, -0.165571, -0.024216,
		0.158340, 0.969900, -0.184988,
		35.961834, 43.576138, 42.951645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459702, 43.089684, 43.388344>,  <35.850998, 42.897209, 43.081135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459702, 43.089684, 43.388344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266121, 43.435005, 43.331078>,  <36.149975, 43.642200, 43.296719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266121, 43.435005, 43.331078>,  <36.459702, 43.089684, 43.388344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266121, 43.435005, 43.331078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130127, 0.232770, 0.963787,
		0.865367, 0.447795, -0.224989,
		-0.483950, 0.863306, -0.143161,
		36.120937, 43.693996, 43.288128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786537, 43.537575, 43.801884>,  <36.459702, 43.089684, 43.388344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786537, 43.537575, 43.801884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448315, 43.741165, 43.737423>,  <36.245380, 43.863319, 43.698746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448315, 43.741165, 43.737423>,  <36.786537, 43.537575, 43.801884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448315, 43.741165, 43.737423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058293, 0.388062, 0.919788,
		0.530688, 0.768342, -0.357800,
		-0.845560, 0.508978, -0.161151,
		36.194645, 43.893860, 43.689079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911457, 44.203598, 44.051891>,  <36.786537, 43.537575, 43.801884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911457, 44.203598, 44.051891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512054, 44.213928, 44.032608>,  <36.272415, 44.220127, 44.021038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512054, 44.213928, 44.032608>,  <36.911457, 44.203598, 44.051891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512054, 44.213928, 44.032608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024029, 0.584665, 0.810919,
		0.049127, 0.810864, -0.583169,
		-0.998504, 0.025825, -0.048208,
		36.212502, 44.221676, 44.018147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736389, 44.897686, 44.196335>,  <36.911457, 44.203598, 44.051891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736389, 44.897686, 44.196335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423492, 44.659027, 44.268002>,  <36.235752, 44.515831, 44.311001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423492, 44.659027, 44.268002>,  <36.736389, 44.897686, 44.196335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423492, 44.659027, 44.268002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088790, 0.391445, 0.915908,
		-0.616610, 0.700557, -0.359183,
		-0.782246, -0.596650, 0.179166,
		36.188820, 44.480034, 44.321751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180195, 45.338188, 44.577030>,  <36.736389, 44.897686, 44.196335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180195, 45.338188, 44.577030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117607, 44.953918, 44.668797>,  <36.080055, 44.723358, 44.723858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117607, 44.953918, 44.668797>,  <36.180195, 45.338188, 44.577030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117607, 44.953918, 44.668797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364508, 0.272044, 0.890576,
		-0.917961, 0.055722, -0.392737,
		-0.156466, -0.960670, 0.229415,
		36.070667, 44.665718, 44.737621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734119, 45.500565, 44.996834>,  <36.180195, 45.338188, 44.577030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734119, 45.500565, 44.996834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832901, 45.119141, 45.065819>,  <35.892170, 44.890285, 45.107212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832901, 45.119141, 45.065819>,  <35.734119, 45.500565, 44.996834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832901, 45.119141, 45.065819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013959, 0.181462, 0.983299,
		-0.968927, -0.240422, 0.058123,
		0.246953, -0.953556, 0.172467,
		35.906986, 44.833073, 45.117558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225136, 45.218506, 45.543003>,  <35.734119, 45.500565, 44.996834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225136, 45.218506, 45.543003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542030, 44.974503, 45.549179>,  <35.732170, 44.828098, 45.552883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542030, 44.974503, 45.549179>,  <35.225136, 45.218506, 45.543003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542030, 44.974503, 45.549179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038417, 0.075106, 0.996435,
		-0.608998, -0.788824, 0.082937,
		0.792241, -0.610013, 0.015436,
		35.779701, 44.791500, 45.553810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098862, 44.739307, 46.063862>,  <35.225136, 45.218506, 45.543003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098862, 44.739307, 46.063862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494328, 44.739887, 46.003815>,  <35.731609, 44.740234, 45.967785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494328, 44.739887, 46.003815>,  <35.098862, 44.739307, 46.063862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494328, 44.739887, 46.003815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150094, 0.011562, 0.988604,
		0.003141, -0.999932, 0.011217,
		0.988667, 0.001421, -0.150120,
		35.790928, 44.740322, 45.958778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406990, 44.335598, 46.547287>,  <35.098862, 44.739307, 46.063862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406990, 44.335598, 46.547287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728111, 44.547195, 46.437256>,  <35.920784, 44.674152, 46.371239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728111, 44.547195, 46.437256>,  <35.406990, 44.335598, 46.547287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728111, 44.547195, 46.437256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266551, 0.094261, 0.959200,
		0.533341, -0.843374, -0.065330,
		0.802806, 0.528995, -0.275075,
		35.968952, 44.705894, 46.354733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817547, 44.063400, 46.889351>,  <35.406990, 44.335598, 46.547287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817547, 44.063400, 46.889351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959896, 44.430866, 46.820759>,  <36.045303, 44.651348, 46.779602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959896, 44.430866, 46.820759>,  <35.817547, 44.063400, 46.889351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959896, 44.430866, 46.820759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201726, 0.103657, 0.973941,
		0.912504, -0.381189, -0.148430,
		0.355870, 0.918667, -0.171483,
		36.066658, 44.706467, 46.769314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505890, 44.122437, 47.175285>,  <35.817547, 44.063400, 46.889351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505890, 44.122437, 47.175285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405788, 44.509045, 47.152641>,  <36.345726, 44.741009, 47.139053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405788, 44.509045, 47.152641>,  <36.505890, 44.122437, 47.175285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405788, 44.509045, 47.152641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292030, 0.131105, 0.947381,
		0.923087, 0.220556, -0.315064,
		-0.250257, 0.966523, -0.056613,
		36.330711, 44.799000, 47.135658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130192, 44.575558, 47.321041>,  <36.505890, 44.122437, 47.175285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130192, 44.575558, 47.321041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786575, 44.760029, 47.409916>,  <36.580406, 44.870712, 47.463242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786575, 44.760029, 47.409916>,  <37.130192, 44.575558, 47.321041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786575, 44.760029, 47.409916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352605, 0.218417, 0.909925,
		0.371104, 0.860008, -0.350241,
		-0.859041, 0.461173, 0.222187,
		36.528862, 44.898380, 47.476574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362579, 44.913258, 47.902943>,  <37.130192, 44.575558, 47.321041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362579, 44.913258, 47.902943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966438, 44.968658, 47.904179>,  <36.728752, 45.001900, 47.904922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966438, 44.968658, 47.904179>,  <37.362579, 44.913258, 47.902943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966438, 44.968658, 47.904179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024318, 0.151825, 0.988108,
		0.136387, 0.978655, -0.153729,
		-0.990357, 0.138504, 0.003092,
		36.669331, 45.010208, 47.905106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259659, 45.584888, 48.209404>,  <37.362579, 44.913258, 47.902943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259659, 45.584888, 48.209404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934120, 45.357063, 48.255444>,  <36.738796, 45.220367, 48.283066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934120, 45.357063, 48.255444>,  <37.259659, 45.584888, 48.209404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934120, 45.357063, 48.255444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027112, 0.160640, 0.986641,
		-0.580443, 0.806097, -0.115295,
		-0.813849, -0.569563, 0.115097,
		36.689964, 45.186195, 48.289974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885487, 46.036385, 48.623062>,  <37.259659, 45.584888, 48.209404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885487, 46.036385, 48.623062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726620, 45.671074, 48.659264>,  <36.631302, 45.451889, 48.680984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726620, 45.671074, 48.659264>,  <36.885487, 46.036385, 48.623062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726620, 45.671074, 48.659264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034519, 0.083679, 0.995894,
		-0.917098, 0.398658, -0.001709,
		-0.397165, -0.913274, 0.090503,
		36.607471, 45.397091, 48.686413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526154, 46.077751, 49.229046>,  <36.885487, 46.036385, 48.623062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526154, 46.077751, 49.229046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563690, 45.683422, 49.173409>,  <36.586212, 45.446823, 49.140026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563690, 45.683422, 49.173409>,  <36.526154, 46.077751, 49.229046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563690, 45.683422, 49.173409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147804, -0.124371, 0.981166,
		-0.984554, -0.112636, 0.134037,
		0.093844, -0.985822, -0.139098,
		36.591843, 45.387676, 49.131680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100727, 45.762260, 49.724518>,  <36.526154, 46.077751, 49.229046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100727, 45.762260, 49.724518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333645, 45.461746, 49.600262>,  <36.473396, 45.281437, 49.525707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333645, 45.461746, 49.600262>,  <36.100727, 45.762260, 49.724518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333645, 45.461746, 49.600262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073294, -0.332034, 0.940416,
		-0.809669, -0.570365, -0.138276,
		0.582293, -0.751290, -0.310641,
		36.508331, 45.236359, 49.507069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806049, 45.152847, 49.843082>,  <36.100727, 45.762260, 49.724518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806049, 45.152847, 49.843082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201435, 45.092266, 49.843784>,  <36.438667, 45.055916, 49.844208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201435, 45.092266, 49.843784>,  <35.806049, 45.152847, 49.843082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201435, 45.092266, 49.843784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058866, -0.373436, 0.925787,
		-0.139555, -0.915210, -0.378043,
		0.988463, -0.151452, 0.001760,
		36.497974, 45.046829, 49.844311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615974, 44.538113, 50.216969>,  <35.806049, 45.152847, 49.843082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615974, 44.538113, 50.216969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.562008, 44.170124, 50.364185>,  <35.529629, 43.949333, 50.452515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.562008, 44.170124, 50.364185>,  <35.615974, 44.538113, 50.216969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562008, 44.170124, 50.364185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932554, 0.243424, 0.266621,
		-0.334874, -0.307248, -0.890763,
		-0.134915, -0.919969, 0.368041,
		35.521534, 43.894135, 50.474598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961231, 44.424858, 50.346718>,  <35.615974, 44.538113, 50.216969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961231, 44.424858, 50.346718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682419, 44.197357, 50.521381>,  <34.515133, 44.060856, 50.626179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682419, 44.197357, 50.521381>,  <34.961231, 44.424858, 50.346718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682419, 44.197357, 50.521381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195727, -0.434925, -0.878937,
		0.689812, -0.698111, 0.191836,
		-0.697030, -0.568754, 0.436656,
		34.473309, 44.026730, 50.652378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082188, 43.714859, 50.140812>,  <34.961231, 44.424858, 50.346718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082188, 43.714859, 50.140812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.698929, 43.702084, 50.254612>,  <34.468975, 43.694416, 50.322891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.698929, 43.702084, 50.254612>,  <35.082188, 43.714859, 50.140812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698929, 43.702084, 50.254612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231633, -0.497504, -0.835964,
		0.168241, -0.866873, 0.469282,
		-0.958144, -0.031942, 0.284497,
		34.411484, 43.692501, 50.339962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875778, 43.123959, 50.009090>,  <35.082188, 43.714859, 50.140812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875778, 43.123959, 50.009090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526585, 43.318104, 49.989780>,  <34.317070, 43.434589, 49.978195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526585, 43.318104, 49.989780>,  <34.875778, 43.123959, 50.009090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526585, 43.318104, 49.989780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175452, -0.404832, -0.897400,
		-0.455107, -0.774943, 0.438568,
		-0.872980, 0.485361, -0.048276,
		34.264690, 43.463711, 49.975300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445915, 42.698540, 49.766193>,  <34.875778, 43.123959, 50.009090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445915, 42.698540, 49.766193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246407, 43.039589, 49.703884>,  <34.126701, 43.244217, 49.666496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246407, 43.039589, 49.703884>,  <34.445915, 42.698540, 49.766193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246407, 43.039589, 49.703884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308413, -0.342552, -0.887435,
		-0.810008, -0.394580, 0.433813,
		-0.498768, 0.852622, -0.155776,
		34.096775, 43.295376, 49.657150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762943, 42.570419, 49.333950>,  <34.445915, 42.698540, 49.766193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762943, 42.570419, 49.333950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886475, 42.945621, 49.270996>,  <33.960594, 43.170742, 49.233223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886475, 42.945621, 49.270996>,  <33.762943, 42.570419, 49.333950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886475, 42.945621, 49.270996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116094, -0.127062, -0.985077,
		-0.944007, 0.322490, 0.069657,
		0.308826, 0.938006, -0.157387,
		33.979122, 43.227024, 49.223782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352386, 42.711048, 48.828506>,  <33.762943, 42.570419, 49.333950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352386, 42.711048, 48.828506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626198, 43.001125, 48.798798>,  <33.790485, 43.175171, 48.780972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626198, 43.001125, 48.798798>,  <33.352386, 42.711048, 48.828506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626198, 43.001125, 48.798798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105263, -0.002482, -0.994441,
		-0.721351, 0.688536, 0.074637,
		0.684524, 0.725197, -0.074268,
		33.831554, 43.218685, 48.776516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020805, 43.259037, 48.316963>,  <33.352386, 42.711048, 48.828506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020805, 43.259037, 48.316963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416138, 43.319969, 48.316170>,  <33.653336, 43.356529, 48.315693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416138, 43.319969, 48.316170>,  <33.020805, 43.259037, 48.316963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416138, 43.319969, 48.316170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006191, -0.053181, -0.998566,
		-0.152217, 0.986898, -0.053504,
		0.988328, 0.152329, -0.001985,
		33.712635, 43.365669, 48.315575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097084, 43.792755, 47.952030>,  <33.020805, 43.259037, 48.316963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097084, 43.792755, 47.952030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458492, 43.622559, 47.931610>,  <33.675339, 43.520443, 47.919357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458492, 43.622559, 47.931610>,  <33.097084, 43.792755, 47.952030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458492, 43.622559, 47.931610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049521, 0.014668, -0.998665,
		0.425670, 0.904845, -0.007818,
		0.903522, -0.425489, -0.051053,
		33.729549, 43.494911, 47.916294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517754, 44.177944, 47.449585>,  <33.097084, 43.792755, 47.952030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517754, 44.177944, 47.449585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711876, 43.828602, 47.466179>,  <33.828350, 43.618996, 47.476135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711876, 43.828602, 47.466179>,  <33.517754, 44.177944, 47.449585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711876, 43.828602, 47.466179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125306, 0.022517, -0.991862,
		0.865318, 0.486557, 0.120365,
		0.485308, -0.873359, 0.041485,
		33.857468, 43.566593, 47.478622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180817, 44.274273, 47.106503>,  <33.517754, 44.177944, 47.449585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180817, 44.274273, 47.106503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089718, 43.885632, 47.080826>,  <34.035057, 43.652447, 47.065418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089718, 43.885632, 47.080826>,  <34.180817, 44.274273, 47.106503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089718, 43.885632, 47.080826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127557, 0.035591, -0.991192,
		0.965328, -0.233934, 0.115829,
		-0.227751, -0.971601, -0.064197,
		34.021393, 43.594151, 47.061565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665787, 43.990601, 46.673988>,  <34.180817, 44.274273, 47.106503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665787, 43.990601, 46.673988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340931, 43.757797, 46.657562>,  <34.146015, 43.618114, 46.647705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340931, 43.757797, 46.657562>,  <34.665787, 43.990601, 46.673988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340931, 43.757797, 46.657562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092585, -0.059056, -0.993952,
		0.576065, -0.811034, 0.101848,
		-0.812143, -0.582010, -0.041069,
		34.097286, 43.583195, 46.645241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897758, 43.415066, 46.260513>,  <34.665787, 43.990601, 46.673988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897758, 43.415066, 46.260513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498253, 43.433163, 46.252201>,  <34.258549, 43.444023, 46.247215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498253, 43.433163, 46.252201>,  <34.897758, 43.415066, 46.260513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498253, 43.433163, 46.252201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010167, -0.223173, -0.974726,
		-0.048737, -0.973728, 0.222436,
		-0.998760, 0.045244, -0.020776,
		34.198624, 43.446735, 46.245968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713604, 43.151402, 45.709957>,  <34.897758, 43.415066, 46.260513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713604, 43.151402, 45.709957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339062, 43.256840, 45.802704>,  <34.114338, 43.320103, 45.858353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339062, 43.256840, 45.802704>,  <34.713604, 43.151402, 45.709957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339062, 43.256840, 45.802704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272459, -0.129157, -0.953459,
		-0.221383, -0.955947, 0.192756,
		-0.936352, 0.263598, 0.231864,
		34.058155, 43.335918, 45.872261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261662, 42.600258, 45.460941>,  <34.713604, 43.151402, 45.709957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261662, 42.600258, 45.460941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060978, 42.946259, 45.457809>,  <33.940567, 43.153858, 45.455929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060978, 42.946259, 45.457809>,  <34.261662, 42.600258, 45.460941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060978, 42.946259, 45.457809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305871, -0.185860, -0.933755,
		-0.809153, -0.466081, 0.357827,
		-0.501711, 0.865000, -0.007829,
		33.910465, 43.205757, 45.455460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612354, 42.450455, 45.224682>,  <34.261662, 42.600258, 45.460941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612354, 42.450455, 45.224682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644848, 42.845310, 45.169617>,  <33.664345, 43.082226, 45.136578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644848, 42.845310, 45.169617>,  <33.612354, 42.450455, 45.224682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644848, 42.845310, 45.169617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401261, -0.094038, -0.911124,
		-0.912354, 0.129256, 0.388463,
		0.081238, 0.987142, -0.137661,
		33.669220, 43.141453, 45.128319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969105, 42.689293, 45.020424>,  <33.612354, 42.450455, 45.224682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969105, 42.689293, 45.020424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231060, 42.973965, 44.918728>,  <33.388233, 43.144768, 44.857712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231060, 42.973965, 44.918728>,  <32.969105, 42.689293, 45.020424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231060, 42.973965, 44.918728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269746, -0.094130, -0.958320,
		-0.705946, 0.696172, 0.130328,
		0.654887, 0.711677, -0.254240,
		33.427525, 43.187469, 44.842457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597786, 43.063721, 44.480377>,  <32.969105, 42.689293, 45.020424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597786, 43.063721, 44.480377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991154, 43.124920, 44.441422>,  <33.227173, 43.161640, 44.418049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991154, 43.124920, 44.441422>,  <32.597786, 43.063721, 44.480377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991154, 43.124920, 44.441422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088255, -0.065430, -0.993947,
		-0.158441, 0.986058, -0.050842,
		0.983416, 0.152995, -0.097391,
		33.286179, 43.170818, 44.412205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643253, 43.521244, 43.943607>,  <32.597786, 43.063721, 44.480377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643253, 43.521244, 43.943607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999683, 43.340942, 43.964813>,  <33.213539, 43.232761, 43.977535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999683, 43.340942, 43.964813>,  <32.643253, 43.521244, 43.943607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999683, 43.340942, 43.964813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094967, -0.299388, -0.949394,
		0.443818, 0.840942, -0.309583,
		0.891070, -0.450758, 0.053012,
		33.267006, 43.205715, 43.980717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971241, 43.705662, 43.317810>,  <32.643253, 43.521244, 43.943607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971241, 43.705662, 43.317810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197197, 43.398998, 43.439877>,  <33.332771, 43.215000, 43.513115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197197, 43.398998, 43.439877>,  <32.971241, 43.705662, 43.317810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197197, 43.398998, 43.439877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104468, -0.300399, -0.948075,
		0.818525, 0.567441, -0.089602,
		0.564893, -0.766662, 0.305164,
		33.366665, 43.168999, 43.531425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625183, 43.760361, 42.993355>,  <32.971241, 43.705662, 43.317810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625183, 43.760361, 42.993355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582993, 43.372440, 43.081322>,  <33.557678, 43.139690, 43.134102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582993, 43.372440, 43.081322>,  <33.625183, 43.760361, 42.993355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582993, 43.372440, 43.081322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231614, -0.239031, -0.942984,
		0.967073, -0.048525, 0.249831,
		-0.105476, -0.969799, 0.219921,
		33.551350, 43.081501, 43.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.054062, 29.102585, 34.611164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674210, 29.028475, 34.510075>,  <43.446297, 28.984009, 34.449421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674210, 29.028475, 34.510075>,  <44.054062, 29.102585, 34.611164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674210, 29.028475, 34.510075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184197, 0.982487, -0.028139,
		0.253515, 0.019830, -0.967128,
		-0.949633, -0.185276, -0.252728,
		43.389320, 28.972893, 34.434258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946590, 29.398857, 33.982178>,  <44.054062, 29.102585, 34.611164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946590, 29.398857, 33.982178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574429, 29.370386, 34.126007>,  <43.351131, 29.353304, 34.212303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574429, 29.370386, 34.126007>,  <43.946590, 29.398857, 33.982178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574429, 29.370386, 34.126007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123060, 0.984684, -0.123507,
		-0.345271, -0.159159, -0.924909,
		-0.930400, -0.071175, 0.359569,
		43.295307, 29.349033, 34.233879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457138, 29.862003, 33.601269>,  <43.946590, 29.398857, 33.982178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457138, 29.862003, 33.601269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268208, 29.822828, 33.951653>,  <43.154850, 29.799324, 34.161884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268208, 29.822828, 33.951653>,  <43.457138, 29.862003, 33.601269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268208, 29.822828, 33.951653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298932, 0.952707, -0.054672,
		-0.829183, -0.287677, -0.479268,
		-0.472330, -0.097935, 0.875964,
		43.126507, 29.793447, 34.214443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839203, 30.301399, 33.441116>,  <43.457138, 29.862003, 33.601269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839203, 30.301399, 33.441116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877937, 30.248306, 33.835682>,  <42.901180, 30.216450, 34.072422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877937, 30.248306, 33.835682>,  <42.839203, 30.301399, 33.441116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877937, 30.248306, 33.835682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179033, 0.972579, 0.148449,
		-0.979066, -0.190975, 0.070419,
		0.096838, -0.132734, 0.986410,
		42.906990, 30.208487, 34.131603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348148, 30.759333, 33.673958>,  <42.839203, 30.301399, 33.441116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348148, 30.759333, 33.673958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607010, 30.680910, 33.968643>,  <42.762329, 30.633858, 34.145454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607010, 30.680910, 33.968643>,  <42.348148, 30.759333, 33.673958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607010, 30.680910, 33.968643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086010, 0.941419, 0.326085,
		-0.757490, -0.274393, 0.592383,
		0.647157, -0.196055, 0.736716,
		42.801155, 30.622093, 34.189659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012451, 30.898485, 34.327023>,  <42.348148, 30.759333, 33.673958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012451, 30.898485, 34.327023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407837, 30.908689, 34.386738>,  <42.645069, 30.914812, 34.422565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407837, 30.908689, 34.386738>,  <42.012451, 30.898485, 34.327023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407837, 30.908689, 34.386738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074117, 0.941093, 0.329924,
		-0.132076, -0.337183, 0.932129,
		0.988465, 0.025511, 0.149287,
		42.704376, 30.916344, 34.431522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028522, 31.198540, 35.029243>,  <42.012451, 30.898485, 34.327023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028522, 31.198540, 35.029243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392460, 31.254992, 34.873158>,  <42.610821, 31.288862, 34.779507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392460, 31.254992, 34.873158>,  <42.028522, 31.198540, 35.029243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392460, 31.254992, 34.873158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015018, 0.950970, 0.308919,
		0.414680, -0.275208, 0.867353,
		0.909844, 0.141128, -0.390215,
		42.665413, 31.297331, 34.756092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446655, 31.549063, 35.571960>,  <42.028522, 31.198540, 35.029243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446655, 31.549063, 35.571960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618797, 31.654381, 35.226597>,  <42.722084, 31.717571, 35.019379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618797, 31.654381, 35.226597>,  <42.446655, 31.549063, 35.571960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618797, 31.654381, 35.226597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048759, 0.948336, 0.313497,
		0.901340, -0.177015, 0.395286,
		0.430358, 0.263294, -0.863405,
		42.747906, 31.733370, 34.967575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867466, 31.991768, 35.787956>,  <42.446655, 31.549063, 35.571960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867466, 31.991768, 35.787956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842258, 32.082138, 35.399117>,  <42.827133, 32.136360, 35.165813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842258, 32.082138, 35.399117>,  <42.867466, 31.991768, 35.787956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842258, 32.082138, 35.399117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135967, 0.966902, 0.215902,
		0.988707, -0.118567, -0.091656,
		-0.063023, 0.225926, -0.972104,
		42.823353, 32.149918, 35.107487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485638, 32.468456, 35.649948>,  <42.867466, 31.991768, 35.787956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485638, 32.468456, 35.649948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.218258, 32.545399, 35.362564>,  <43.057831, 32.591564, 35.190136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.218258, 32.545399, 35.362564>,  <43.485638, 32.468456, 35.649948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218258, 32.545399, 35.362564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223578, 0.973268, 0.052567,
		0.709361, -0.125492, -0.693584,
		-0.668446, 0.192359, -0.718455,
		43.017723, 32.603107, 35.147026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717175, 33.061565, 35.231171>,  <43.485638, 32.468456, 35.649948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717175, 33.061565, 35.231171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.334717, 33.056156, 35.114140>,  <43.105244, 33.052910, 35.043919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.334717, 33.056156, 35.114140>,  <43.717175, 33.061565, 35.231171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334717, 33.056156, 35.114140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001187, 0.999104, -0.042298,
		0.292892, -0.040096, -0.955304,
		-0.956145, -0.013522, -0.292582,
		43.047874, 33.052101, 35.026363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549889, 33.381832, 34.529922>,  <43.717175, 33.061565, 35.231171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549889, 33.381832, 34.529922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207767, 33.417068, 34.734158>,  <43.002495, 33.438210, 34.856701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207767, 33.417068, 34.734158>,  <43.549889, 33.381832, 34.529922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207767, 33.417068, 34.734158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048926, 0.994770, -0.089660,
		-0.515819, -0.051705, -0.855136,
		-0.855300, 0.088087, 0.510592,
		42.951180, 33.443493, 34.887337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122490, 33.921825, 34.191711>,  <43.549889, 33.381832, 34.529922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122490, 33.921825, 34.191711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892460, 33.903412, 34.518433>,  <42.754440, 33.892365, 34.714466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892460, 33.903412, 34.518433>,  <43.122490, 33.921825, 34.191711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892460, 33.903412, 34.518433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090248, 0.995892, -0.007413,
		-0.813109, -0.077977, -0.576865,
		-0.575074, -0.046034, 0.816805,
		42.719936, 33.889603, 34.763474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506004, 34.301399, 34.015247>,  <43.122490, 33.921825, 34.191711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506004, 34.301399, 34.015247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567677, 34.273788, 34.409500>,  <42.604679, 34.257221, 34.646049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567677, 34.273788, 34.409500>,  <42.506004, 34.301399, 34.015247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567677, 34.273788, 34.409500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277512, 0.960426, 0.023854,
		-0.948270, 0.269846, 0.167234,
		0.154179, -0.069030, 0.985629,
		42.613930, 34.253078, 34.705189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377613, 34.876312, 34.243484>,  <42.506004, 34.301399, 34.015247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377613, 34.876312, 34.243484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.566032, 34.770672, 34.580143>,  <42.679085, 34.707287, 34.782139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.566032, 34.770672, 34.580143>,  <42.377613, 34.876312, 34.243484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566032, 34.770672, 34.580143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281876, 0.949169, 0.140088,
		-0.835860, 0.171251, 0.521546,
		0.471045, -0.264106, 0.841644,
		42.707344, 34.691441, 34.832638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090816, 35.350533, 34.758877>,  <42.377613, 34.876312, 34.243484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090816, 35.350533, 34.758877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423973, 35.191410, 34.912785>,  <42.623867, 35.095936, 35.005127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423973, 35.191410, 34.912785>,  <42.090816, 35.350533, 34.758877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423973, 35.191410, 34.912785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338910, 0.916235, 0.213667,
		-0.437535, -0.047559, 0.897943,
		0.832888, -0.397809, 0.384767,
		42.673840, 35.072067, 35.028214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235828, 35.758247, 35.346901>,  <42.090816, 35.350533, 34.758877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235828, 35.758247, 35.346901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575184, 35.582043, 35.229477>,  <42.778797, 35.476318, 35.159023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575184, 35.582043, 35.229477>,  <42.235828, 35.758247, 35.346901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575184, 35.582043, 35.229477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467577, 0.883587, 0.025403,
		0.248198, -0.158815, 0.955602,
		0.848392, -0.440512, -0.293563,
		42.829700, 35.449890, 35.141407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786800, 36.159309, 35.760929>,  <42.235828, 35.758247, 35.346901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786800, 36.159309, 35.760929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913887, 35.996120, 35.418556>,  <42.990139, 35.898205, 35.213135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913887, 35.996120, 35.418556>,  <42.786800, 36.159309, 35.760929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913887, 35.996120, 35.418556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569295, 0.803963, -0.171889,
		0.758262, -0.432664, 0.487689,
		0.317714, -0.407976, -0.855928,
		43.009201, 35.873726, 35.161777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491138, 36.286919, 35.758316>,  <42.786800, 36.159309, 35.760929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491138, 36.286919, 35.758316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.407143, 36.216049, 35.373711>,  <43.356747, 36.173527, 35.142948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.407143, 36.216049, 35.373711>,  <43.491138, 36.286919, 35.758316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407143, 36.216049, 35.373711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713114, 0.645034, -0.274591,
		0.668861, -0.743331, -0.009104,
		-0.209984, -0.177172, -0.961518,
		43.344147, 36.162899, 35.085255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053459, 36.256546, 35.438229>,  <43.491138, 36.286919, 35.758316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053459, 36.256546, 35.438229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.814369, 36.328510, 35.125729>,  <43.670914, 36.371689, 34.938229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.814369, 36.328510, 35.125729>,  <44.053459, 36.256546, 35.438229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814369, 36.328510, 35.125729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569475, 0.781196, -0.255796,
		0.564290, -0.597799, -0.569396,
		-0.597725, 0.179914, -0.781253,
		43.635052, 36.382484, 34.891354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494377, 36.288609, 34.831776>,  <44.053459, 36.256546, 35.438229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494377, 36.288609, 34.831776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.150974, 36.469982, 34.735966>,  <43.944935, 36.578804, 34.678478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.150974, 36.469982, 34.735966>,  <44.494377, 36.288609, 34.831776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150974, 36.469982, 34.735966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499995, 0.843893, -0.194551,
		0.113918, -0.286784, -0.951198,
		-0.858503, 0.453431, -0.239525,
		43.893425, 36.606010, 34.664108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458775, 36.630596, 34.049904>,  <44.494377, 36.288609, 34.831776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458775, 36.630596, 34.049904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231644, 36.803780, 34.329937>,  <44.095364, 36.907688, 34.497955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231644, 36.803780, 34.329937>,  <44.458775, 36.630596, 34.049904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231644, 36.803780, 34.329937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530575, 0.842756, -0.090846,
		-0.629332, 0.319862, -0.708258,
		-0.567831, 0.432956, 0.700084,
		44.061295, 36.933666, 34.539963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024223, 36.354843, 34.114922>,  <44.458775, 36.630596, 34.049904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024223, 36.354843, 34.114922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.345966, 36.268246, 33.893604>,  <45.539013, 36.216286, 33.760815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.345966, 36.268246, 33.893604>,  <45.024223, 36.354843, 34.114922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.345966, 36.268246, 33.893604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195227, -0.975847, 0.098024,
		-0.561155, 0.029172, -0.827197,
		0.804358, -0.216498, -0.553296,
		45.587273, 36.203297, 33.727615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819305, 35.822685, 33.665707>,  <45.024223, 36.354843, 34.114922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819305, 35.822685, 33.665707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216820, 35.800175, 33.704132>,  <45.455326, 35.786667, 33.727188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216820, 35.800175, 33.704132>,  <44.819305, 35.822685, 33.665707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216820, 35.800175, 33.704132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064357, -0.994453, 0.083189,
		0.090848, -0.088854, -0.991893,
		0.993783, -0.056278, 0.096063,
		45.514954, 35.783291, 33.732952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041157, 35.290817, 33.259712>,  <44.819305, 35.822685, 33.665707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041157, 35.290817, 33.259712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.348915, 35.342911, 33.509853>,  <45.533569, 35.374165, 33.659939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.348915, 35.342911, 33.509853>,  <45.041157, 35.290817, 33.259712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348915, 35.342911, 33.509853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098854, -0.991478, 0.084850,
		0.631077, -0.003464, -0.775712,
		0.769395, 0.130229, 0.625357,
		45.579735, 35.381981, 33.697460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565983, 34.855618, 33.021439>,  <45.041157, 35.290817, 33.259712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565983, 34.855618, 33.021439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658657, 34.936611, 33.402031>,  <45.714264, 34.985207, 33.630386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658657, 34.936611, 33.402031>,  <45.565983, 34.855618, 33.021439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658657, 34.936611, 33.402031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305517, -0.943754, 0.126446,
		0.923569, 0.261398, -0.280519,
		0.231688, 0.202485, 0.951483,
		45.728165, 34.997356, 33.687477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097851, 34.377754, 33.096207>,  <45.565983, 34.855618, 33.021439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097851, 34.377754, 33.096207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.985260, 34.478584, 33.466553>,  <45.917706, 34.539082, 33.688759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.985260, 34.478584, 33.466553>,  <46.097851, 34.377754, 33.096207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985260, 34.478584, 33.466553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319259, -0.885306, 0.338095,
		0.904900, 0.390757, 0.168716,
		-0.281478, 0.252078, 0.925866,
		45.900818, 34.554207, 33.744312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672062, 34.192715, 33.523365>,  <46.097851, 34.377754, 33.096207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672062, 34.192715, 33.523365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.376072, 34.198757, 33.792355>,  <46.198479, 34.202385, 33.953747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.376072, 34.198757, 33.792355>,  <46.672062, 34.192715, 33.523365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376072, 34.198757, 33.792355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353486, -0.841832, 0.407880,
		0.572269, 0.539528, 0.617590,
		-0.739970, 0.015108, 0.672470,
		46.154079, 34.203289, 33.994095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.983349, 34.182896, 34.246075>,  <46.672062, 34.192715, 33.523365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.983349, 34.182896, 34.246075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613750, 34.035656, 34.204639>,  <46.391991, 33.947311, 34.179779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613750, 34.035656, 34.204639>,  <46.983349, 34.182896, 34.246075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613750, 34.035656, 34.204639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308494, -0.877629, 0.366877,
		-0.225954, 0.307039, 0.924484,
		-0.924000, -0.368095, -0.103584,
		46.336552, 33.925228, 34.173565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914669, 33.745190, 34.858219>,  <46.983349, 34.182896, 34.246075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914669, 33.745190, 34.858219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613270, 33.613758, 34.630440>,  <46.432430, 33.534897, 34.493771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613270, 33.613758, 34.630440>,  <46.914669, 33.745190, 34.858219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613270, 33.613758, 34.630440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326082, -0.938887, 0.110280,
		-0.570885, -0.102592, 0.814595,
		-0.753499, -0.328582, -0.569450,
		46.387218, 33.515182, 34.459606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884884, 33.129219, 35.182247>,  <46.914669, 33.745190, 34.858219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884884, 33.129219, 35.182247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635586, 33.104187, 34.870438>,  <46.486008, 33.089169, 34.683353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635586, 33.104187, 34.870438>,  <46.884884, 33.129219, 35.182247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635586, 33.104187, 34.870438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141253, -0.989406, -0.033509,
		-0.769167, -0.130994, 0.625478,
		-0.623242, -0.062577, -0.779522,
		46.448612, 33.085415, 34.636581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464748, 32.601860, 35.376984>,  <46.884884, 33.129219, 35.182247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464748, 32.601860, 35.376984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.397877, 32.603306, 34.982616>,  <46.357754, 32.604172, 34.745995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.397877, 32.603306, 34.982616>,  <46.464748, 32.601860, 35.376984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397877, 32.603306, 34.982616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327568, -0.942984, -0.059001,
		-0.929920, -0.332819, 0.156461,
		-0.167176, 0.003615, -0.985920,
		46.347725, 32.604389, 34.686840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891205, 32.144302, 35.184772>,  <46.464748, 32.601860, 35.376984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891205, 32.144302, 35.184772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.119671, 32.182697, 34.858692>,  <46.256748, 32.205734, 34.663044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.119671, 32.182697, 34.858692>,  <45.891205, 32.144302, 35.184772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119671, 32.182697, 34.858692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027181, -0.994806, -0.098096,
		-0.820386, 0.033870, -0.570805,
		0.571163, 0.095992, -0.815205,
		46.291019, 32.211494, 34.614132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573002, 31.706554, 34.566513>,  <45.891205, 32.144302, 35.184772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573002, 31.706554, 34.566513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.965214, 31.757050, 34.506348>,  <46.200542, 31.787346, 34.470249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.965214, 31.757050, 34.506348>,  <45.573002, 31.706554, 34.566513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965214, 31.757050, 34.506348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077358, -0.952367, -0.294981,
		-0.180490, 0.277601, -0.943589,
		0.980530, 0.126236, -0.150418,
		46.259373, 31.794920, 34.461224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671185, 31.560122, 33.813152>,  <45.573002, 31.706554, 34.566513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671185, 31.560122, 33.813152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017155, 31.506432, 34.006603>,  <46.224735, 31.474218, 34.122673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017155, 31.506432, 34.006603>,  <45.671185, 31.560122, 33.813152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017155, 31.506432, 34.006603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036972, -0.943921, -0.328095,
		0.500540, 0.301658, -0.811457,
		0.864924, -0.134223, 0.483623,
		46.276630, 31.466166, 34.151691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061275, 31.151188, 33.373493>,  <45.671185, 31.560122, 33.813152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061275, 31.151188, 33.373493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.256439, 31.131742, 33.722107>,  <46.373539, 31.120075, 33.931274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.256439, 31.131742, 33.722107>,  <46.061275, 31.151188, 33.373493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256439, 31.131742, 33.722107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151845, -0.978498, -0.139588,
		0.859585, 0.200445, -0.470038,
		0.487911, -0.048615, 0.871539,
		46.402813, 31.117159, 33.983570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486694, 30.602428, 33.329010>,  <46.061275, 31.151188, 33.373493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486694, 30.602428, 33.329010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.466530, 30.658775, 33.724506>,  <46.454433, 30.692583, 33.961803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.466530, 30.658775, 33.724506>,  <46.486694, 30.602428, 33.329010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466530, 30.658775, 33.724506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120637, -0.981895, 0.146041,
		0.991416, 0.126641, 0.032501,
		-0.050407, 0.140867, 0.988744,
		46.451408, 30.701035, 34.021130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123169, 30.395611, 33.597328>,  <46.486694, 30.602428, 33.329010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123169, 30.395611, 33.597328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850067, 30.374262, 33.888805>,  <46.686207, 30.361452, 34.063694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850067, 30.374262, 33.888805>,  <47.123169, 30.395611, 33.597328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850067, 30.374262, 33.888805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103013, -0.994398, 0.023688,
		0.723349, 0.091238, 0.684428,
		-0.682755, -0.053370, 0.728696,
		46.645241, 30.358252, 34.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414967, 29.878904, 34.022263>,  <47.123169, 30.395611, 33.597328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414967, 29.878904, 34.022263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.044460, 29.955929, 34.151852>,  <46.822159, 30.002144, 34.229603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.044460, 29.955929, 34.151852>,  <47.414967, 29.878904, 34.022263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.044460, 29.955929, 34.151852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163745, -0.979865, 0.114250,
		0.339446, 0.052777, 0.939144,
		-0.926264, 0.192562, 0.323969,
		46.766582, 30.013697, 34.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337479, 29.505106, 34.551907>,  <47.414967, 29.878904, 34.022263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337479, 29.505106, 34.551907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.951488, 29.538181, 34.452324>,  <46.719894, 29.558027, 34.392574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.951488, 29.538181, 34.452324>,  <47.337479, 29.505106, 34.551907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951488, 29.538181, 34.452324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033949, -0.980406, -0.194040,
		-0.260122, -0.178793, 0.948878,
		-0.964978, 0.082688, -0.248956,
		46.661995, 29.562988, 34.377636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.943707, 28.919247, 34.840065>,  <47.337479, 29.505106, 34.551907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.943707, 28.919247, 34.840065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.707325, 29.056246, 34.547909>,  <46.565495, 29.138445, 34.372616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.707325, 29.056246, 34.547909>,  <46.943707, 28.919247, 34.840065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707325, 29.056246, 34.547909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204219, -0.939421, -0.275287,
		-0.780428, -0.013523, 0.625100,
		-0.590954, 0.342499, -0.730389,
		46.530037, 29.158995, 34.328793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328972, 28.471022, 34.880150>,  <46.943707, 28.919247, 34.840065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328972, 28.471022, 34.880150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.317120, 28.618237, 34.508415>,  <46.310009, 28.706566, 34.285374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.317120, 28.618237, 34.508415>,  <46.328972, 28.471022, 34.880150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.317120, 28.618237, 34.508415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243405, -0.904416, -0.350408,
		-0.969472, 0.215823, 0.116380,
		-0.029629, 0.368038, -0.929338,
		46.308231, 28.728647, 34.229614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.140179, 43.746998, 38.519711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941200, 43.405384, 38.580597>,  <36.821812, 43.200417, 38.617130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941200, 43.405384, 38.580597>,  <37.140179, 43.746998, 38.519711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941200, 43.405384, 38.580597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360048, -0.362901, -0.859458,
		0.789248, -0.372728, 0.488017,
		-0.497446, -0.854036, 0.152219,
		36.791965, 43.149174, 38.626263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628353, 43.214836, 38.465054>,  <37.140179, 43.746998, 38.519711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628353, 43.214836, 38.465054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271111, 43.042095, 38.414688>,  <37.056763, 42.938450, 38.384468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271111, 43.042095, 38.414688>,  <37.628353, 43.214836, 38.465054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271111, 43.042095, 38.414688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338991, -0.462140, -0.819458,
		0.295700, -0.774550, 0.559138,
		-0.893111, -0.431856, -0.125911,
		37.003178, 42.912537, 38.376915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810799, 42.649677, 38.184570>,  <37.628353, 43.214836, 38.465054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810799, 42.649677, 38.184570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419613, 42.601334, 38.116467>,  <37.184902, 42.572327, 38.075603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419613, 42.601334, 38.116467>,  <37.810799, 42.649677, 38.184570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419613, 42.601334, 38.116467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207955, -0.636827, -0.742433,
		-0.018697, -0.761476, 0.647924,
		-0.977959, -0.120857, -0.170260,
		37.126225, 42.565075, 38.065388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730301, 42.014557, 38.052010>,  <37.810799, 42.649677, 38.184570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730301, 42.014557, 38.052010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395355, 42.141945, 37.874287>,  <37.194389, 42.218376, 37.767654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395355, 42.141945, 37.874287>,  <37.730301, 42.014557, 38.052010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395355, 42.141945, 37.874287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181511, -0.604685, -0.775506,
		-0.515635, -0.730025, 0.448535,
		-0.837362, 0.318464, -0.444304,
		37.144146, 42.237484, 37.740993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276295, 41.360661, 37.850380>,  <37.730301, 42.014557, 38.052010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276295, 41.360661, 37.850380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186275, 41.680527, 37.627708>,  <37.132263, 41.872448, 37.494106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186275, 41.680527, 37.627708>,  <37.276295, 41.360661, 37.850380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186275, 41.680527, 37.627708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066574, -0.557376, -0.827587,
		-0.972071, -0.223305, 0.072198,
		-0.225046, 0.799666, -0.556676,
		37.118763, 41.920425, 37.460705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865078, 41.091393, 37.385265>,  <37.276295, 41.360661, 37.850380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865078, 41.091393, 37.385265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007244, 41.423969, 37.214443>,  <37.092545, 41.623516, 37.111950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007244, 41.423969, 37.214443>,  <36.865078, 41.091393, 37.385265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007244, 41.423969, 37.214443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028507, -0.466320, -0.884156,
		-0.934273, 0.302071, -0.189441,
		0.355418, 0.831444, -0.427059,
		37.113869, 41.673401, 37.086327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509907, 41.062805, 36.704861>,  <36.865078, 41.091393, 37.385265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509907, 41.062805, 36.704861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770203, 41.364567, 36.670433>,  <36.926380, 41.545624, 36.649776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770203, 41.364567, 36.670433>,  <36.509907, 41.062805, 36.704861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770203, 41.364567, 36.670433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093648, -0.192229, -0.976872,
		-0.753504, 0.627629, -0.195739,
		0.650740, 0.754407, -0.086069,
		36.965424, 41.590889, 36.644611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276485, 41.501652, 36.157009>,  <36.509907, 41.062805, 36.704861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276485, 41.501652, 36.157009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664059, 41.591267, 36.198902>,  <36.896603, 41.645035, 36.224037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664059, 41.591267, 36.198902>,  <36.276485, 41.501652, 36.157009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664059, 41.591267, 36.198902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161384, -0.251903, -0.954201,
		-0.187399, 0.941462, -0.280235,
		0.968936, 0.224041, 0.104731,
		36.954739, 41.658478, 36.230320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448456, 42.036240, 35.671597>,  <36.276485, 41.501652, 36.157009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448456, 42.036240, 35.671597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763596, 41.806652, 35.760910>,  <36.952679, 41.668900, 35.814499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763596, 41.806652, 35.760910>,  <36.448456, 42.036240, 35.671597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763596, 41.806652, 35.760910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032868, -0.401215, -0.915394,
		0.614996, 0.713850, -0.334960,
		0.787845, -0.573973, 0.223283,
		36.999950, 41.634460, 35.827896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758144, 42.112606, 35.048363>,  <36.448456, 42.036240, 35.671597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758144, 42.112606, 35.048363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916668, 41.800915, 35.242573>,  <37.011784, 41.613899, 35.359100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916668, 41.800915, 35.242573>,  <36.758144, 42.112606, 35.048363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916668, 41.800915, 35.242573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108517, -0.485365, -0.867551,
		0.911681, 0.396507, -0.107795,
		0.396310, -0.779232, 0.485526,
		37.035561, 41.567146, 35.388229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304119, 41.942398, 34.649597>,  <36.758144, 42.112606, 35.048363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304119, 41.942398, 34.649597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224346, 41.615547, 34.865944>,  <37.176483, 41.419437, 34.995750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224346, 41.615547, 34.865944>,  <37.304119, 41.942398, 34.649597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224346, 41.615547, 34.865944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176603, -0.572887, -0.800382,
		0.963866, -0.064104, 0.258559,
		-0.199433, -0.817124, 0.540865,
		37.164516, 41.370411, 35.028202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881268, 41.460770, 34.415543>,  <37.304119, 41.942398, 34.649597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881268, 41.460770, 34.415543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565300, 41.277367, 34.578419>,  <37.375721, 41.167324, 34.676144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565300, 41.277367, 34.578419>,  <37.881268, 41.460770, 34.415543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565300, 41.277367, 34.578419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118217, -0.537701, -0.834807,
		0.601712, -0.707564, 0.370535,
		-0.789916, -0.458510, 0.407186,
		37.328323, 41.139812, 34.700573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030613, 40.746510, 34.317364>,  <37.881268, 41.460770, 34.415543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030613, 40.746510, 34.317364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636349, 40.812397, 34.332020>,  <37.399792, 40.851929, 34.340813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636349, 40.812397, 34.332020>,  <38.030613, 40.746510, 34.317364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636349, 40.812397, 34.332020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140959, -0.684369, -0.715380,
		-0.092765, -0.710286, 0.697774,
		-0.985659, 0.164720, 0.036636,
		37.340652, 40.861813, 34.343010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157272, 40.042152, 34.699295>,  <38.030613, 40.746510, 34.317364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157272, 40.042152, 34.699295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460686, 39.789398, 34.762974>,  <38.642735, 39.637745, 34.801182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460686, 39.789398, 34.762974>,  <38.157272, 40.042152, 34.699295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460686, 39.789398, 34.762974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537952, -0.745106, -0.394238,
		0.367733, 0.213403, -0.905114,
		0.758538, -0.631883, 0.159199,
		38.688248, 39.599834, 34.810734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458393, 39.745300, 33.974121>,  <38.157272, 40.042152, 34.699295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458393, 39.745300, 33.974121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445293, 39.529629, 34.310741>,  <38.437435, 39.400227, 34.512714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445293, 39.529629, 34.310741>,  <38.458393, 39.745300, 33.974121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445293, 39.529629, 34.310741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703715, -0.585478, -0.402494,
		0.709727, -0.605395, -0.360256,
		-0.032746, -0.539178, 0.841555,
		38.435471, 39.367874, 34.563210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728321, 39.092377, 34.261261>,  <38.458393, 39.745300, 33.974121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728321, 39.092377, 34.261261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087341, 39.268696, 34.265102>,  <39.302753, 39.374489, 34.267406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087341, 39.268696, 34.265102>,  <38.728321, 39.092377, 34.261261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087341, 39.268696, 34.265102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103547, -0.231923, 0.967207,
		0.428573, -0.867126, -0.253808,
		0.897554, 0.440800, 0.009608,
		39.356609, 39.400936, 34.267986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217033, 38.708084, 34.745358>,  <38.728321, 39.092377, 34.261261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217033, 38.708084, 34.745358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340576, 39.088211, 34.729874>,  <39.414700, 39.316288, 34.720585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340576, 39.088211, 34.729874>,  <39.217033, 38.708084, 34.745358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340576, 39.088211, 34.729874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071346, 0.017431, 0.997299,
		0.948429, -0.310783, -0.062418,
		0.308855, 0.950321, -0.038705,
		39.433231, 39.373306, 34.718262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535641, 38.735870, 35.273235>,  <39.217033, 38.708084, 34.745358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535641, 38.735870, 35.273235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520958, 39.131882, 35.218842>,  <39.512150, 39.369488, 35.186207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520958, 39.131882, 35.218842>,  <39.535641, 38.735870, 35.273235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520958, 39.131882, 35.218842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147024, 0.129243, 0.980653,
		0.988452, 0.055985, 0.140814,
		-0.036703, 0.990031, -0.135982,
		39.509949, 39.428890, 35.178047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859314, 39.042084, 35.814114>,  <39.535641, 38.735870, 35.273235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859314, 39.042084, 35.814114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657562, 39.362709, 35.685684>,  <39.536510, 39.555084, 35.608627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657562, 39.362709, 35.685684>,  <39.859314, 39.042084, 35.814114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657562, 39.362709, 35.685684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188346, 0.260758, 0.946853,
		0.842688, 0.538051, 0.019449,
		-0.504383, 0.801565, -0.321077,
		39.506248, 39.603180, 35.589359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088699, 39.647659, 36.274952>,  <39.859314, 39.042084, 35.814114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088699, 39.647659, 36.274952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748734, 39.765369, 36.100113>,  <39.544754, 39.835995, 35.995209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748734, 39.765369, 36.100113>,  <40.088699, 39.647659, 36.274952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748734, 39.765369, 36.100113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362923, 0.274489, 0.890473,
		0.382021, 0.915456, -0.126493,
		-0.849910, 0.294272, -0.437100,
		39.493759, 39.853653, 35.968983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880886, 40.159912, 36.669685>,  <40.088699, 39.647659, 36.274952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880886, 40.159912, 36.669685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543930, 40.087597, 36.466633>,  <39.341755, 40.044209, 36.344803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543930, 40.087597, 36.466633>,  <39.880886, 40.159912, 36.669685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543930, 40.087597, 36.466633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528895, 0.457752, 0.714656,
		0.103165, 0.870505, -0.481227,
		-0.842394, -0.180791, -0.507630,
		39.291210, 40.033360, 36.314342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553650, 40.706444, 36.830341>,  <39.880886, 40.159912, 36.669685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553650, 40.706444, 36.830341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284153, 40.431236, 36.722488>,  <39.122456, 40.266113, 36.657776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284153, 40.431236, 36.722488>,  <39.553650, 40.706444, 36.830341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284153, 40.431236, 36.722488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611395, 0.314062, 0.726334,
		-0.415050, 0.654214, -0.632248,
		-0.673743, -0.688018, -0.269632,
		39.082031, 40.224831, 36.641598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955574, 41.020248, 36.963802>,  <39.553650, 40.706444, 36.830341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955574, 41.020248, 36.963802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851109, 40.635010, 36.937786>,  <38.788429, 40.403866, 36.922176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851109, 40.635010, 36.937786>,  <38.955574, 41.020248, 36.963802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851109, 40.635010, 36.937786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736347, 0.155201, 0.658564,
		-0.624168, 0.219888, -0.749709,
		-0.261165, -0.963100, -0.065042,
		38.772758, 40.346081, 36.918274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213688, 40.923611, 36.883835>,  <38.955574, 41.020248, 36.963802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213688, 40.923611, 36.883835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352325, 40.581303, 37.037472>,  <38.435509, 40.375916, 37.129654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352325, 40.581303, 37.037472>,  <38.213688, 40.923611, 36.883835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352325, 40.581303, 37.037472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593445, 0.117065, 0.796316,
		-0.726429, -0.503934, -0.467280,
		0.346589, -0.855772, 0.384096,
		38.456303, 40.324570, 37.152702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619148, 40.463940, 36.958858>,  <38.213688, 40.923611, 36.883835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619148, 40.463940, 36.958858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922321, 40.377079, 37.204910>,  <38.104225, 40.324963, 37.352543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922321, 40.377079, 37.204910>,  <37.619148, 40.463940, 36.958858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922321, 40.377079, 37.204910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633897, -0.022568, 0.773088,
		-0.153994, -0.975877, -0.154756,
		0.757932, -0.217150, 0.615130,
		38.149700, 40.311935, 37.389450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277363, 40.378994, 37.557224>,  <37.619148, 40.463940, 36.958858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277363, 40.378994, 37.557224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651745, 40.366405, 37.697510>,  <37.876373, 40.358852, 37.781681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651745, 40.366405, 37.697510>,  <37.277363, 40.378994, 37.557224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651745, 40.366405, 37.697510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350480, 0.012811, 0.936483,
		-0.033966, -0.999423, 0.000961,
		0.935954, -0.031472, 0.350712,
		37.932529, 40.356964, 37.802723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363846, 39.882938, 38.110332>,  <37.277363, 40.378994, 37.557224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363846, 39.882938, 38.110332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689926, 40.101456, 38.187279>,  <37.885574, 40.232567, 38.233448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689926, 40.101456, 38.187279>,  <37.363846, 39.882938, 38.110332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689926, 40.101456, 38.187279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217506, -0.019070, 0.975873,
		0.536786, -0.837374, 0.103277,
		0.815201, 0.546298, 0.192370,
		37.934486, 40.265347, 38.244991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744518, 39.469395, 38.581600>,  <37.363846, 39.882938, 38.110332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744518, 39.469395, 38.581600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882809, 39.840782, 38.635883>,  <37.965782, 40.063614, 38.668453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882809, 39.840782, 38.635883>,  <37.744518, 39.469395, 38.581600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882809, 39.840782, 38.635883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141297, -0.091460, 0.985733,
		0.927636, -0.359968, 0.099570,
		0.345726, 0.928471, 0.135704,
		37.986526, 40.119324, 38.676594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034687, 38.790798, 38.659435>,  <37.744518, 39.469395, 38.581600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034687, 38.790798, 38.659435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934975, 38.417942, 38.764484>,  <37.875149, 38.194229, 38.827515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934975, 38.417942, 38.764484>,  <38.034687, 38.790798, 38.659435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934975, 38.417942, 38.764484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379724, -0.155391, -0.911956,
		0.890881, -0.327058, -0.315221,
		-0.249280, -0.932141, 0.262627,
		37.860191, 38.138298, 38.843273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119507, 38.486477, 38.093750>,  <38.034687, 38.790798, 38.659435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119507, 38.486477, 38.093750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932625, 38.192299, 38.290054>,  <37.820496, 38.015793, 38.407837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932625, 38.192299, 38.290054>,  <38.119507, 38.486477, 38.093750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932625, 38.192299, 38.290054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409377, -0.312037, -0.857347,
		0.783663, -0.601463, -0.155287,
		-0.467207, -0.735442, 0.490757,
		37.792461, 37.971664, 38.437283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196972, 37.733097, 37.744373>,  <38.119507, 38.486477, 38.093750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196972, 37.733097, 37.744373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868099, 37.732594, 37.972065>,  <37.670776, 37.732292, 38.108681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868099, 37.732594, 37.972065>,  <38.196972, 37.733097, 37.744373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868099, 37.732594, 37.972065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509498, -0.444301, -0.736891,
		0.253838, -0.895877, 0.364652,
		-0.822179, -0.001262, 0.569228,
		37.621445, 37.732216, 38.142834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810993, 37.070889, 37.599533>,  <38.196972, 37.733097, 37.744373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810993, 37.070889, 37.599533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557819, 37.331169, 37.767334>,  <37.405914, 37.487335, 37.868015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557819, 37.331169, 37.767334>,  <37.810993, 37.070889, 37.599533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557819, 37.331169, 37.767334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707597, -0.266331, -0.654503,
		-0.314161, -0.711095, 0.629005,
		-0.632938, 0.650701, 0.419497,
		37.367939, 37.526379, 37.893185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237904, 36.724110, 37.573944>,  <37.810993, 37.070889, 37.599533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237904, 36.724110, 37.573944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075974, 37.077419, 37.668552>,  <36.978813, 37.289406, 37.725319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075974, 37.077419, 37.668552>,  <37.237904, 36.724110, 37.573944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075974, 37.077419, 37.668552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749857, -0.172657, -0.638674,
		-0.523288, -0.435908, 0.732226,
		-0.404827, 0.883275, 0.236519,
		36.954525, 37.342403, 37.739510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553867, 36.620556, 37.903561>,  <37.237904, 36.724110, 37.573944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553867, 36.620556, 37.903561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580002, 36.974976, 37.719975>,  <36.595684, 37.187626, 37.609825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580002, 36.974976, 37.719975>,  <36.553867, 36.620556, 37.903561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580002, 36.974976, 37.719975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780542, -0.241168, -0.576708,
		-0.621679, 0.395923, 0.675840,
		0.065341, 0.886049, -0.458963,
		36.599606, 37.240791, 37.582287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916721, 36.982464, 37.830379>,  <36.553867, 36.620556, 37.903561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916721, 36.982464, 37.830379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093819, 37.203232, 37.547714>,  <36.200077, 37.335693, 37.378117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093819, 37.203232, 37.547714>,  <35.916721, 36.982464, 37.830379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093819, 37.203232, 37.547714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777020, -0.157133, -0.609548,
		-0.447460, 0.818960, 0.359282,
		0.442741, 0.551918, -0.706659,
		36.226643, 37.368809, 37.335716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320183, 37.030796, 37.446396>,  <35.916721, 36.982464, 37.830379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320183, 37.030796, 37.446396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617504, 37.149052, 37.206364>,  <35.795898, 37.220005, 37.062344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617504, 37.149052, 37.206364>,  <35.320183, 37.030796, 37.446396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617504, 37.149052, 37.206364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575324, -0.175189, -0.798944,
		-0.341326, 0.939099, 0.039870,
		0.743302, 0.295638, -0.600083,
		35.840496, 37.237743, 37.026340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958580, 37.328415, 36.933884>,  <35.320183, 37.030796, 37.446396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958580, 37.328415, 36.933884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313812, 37.280327, 36.756413>,  <35.526951, 37.251472, 36.649929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313812, 37.280327, 36.756413>,  <34.958580, 37.328415, 36.933884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313812, 37.280327, 36.756413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459195, -0.276411, -0.844237,
		-0.021142, 0.953490, -0.300682,
		0.888084, -0.120223, -0.443682,
		35.580238, 37.244259, 36.623306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001568, 37.658012, 36.232052>,  <34.958580, 37.328415, 36.933884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001568, 37.658012, 36.232052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265072, 37.357327, 36.219639>,  <35.423176, 37.176914, 36.212189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265072, 37.357327, 36.219639>,  <35.001568, 37.658012, 36.232052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265072, 37.357327, 36.219639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422355, -0.335361, -0.842110,
		0.622615, 0.567858, -0.538412,
		0.658761, -0.751711, -0.031037,
		35.462700, 37.131813, 36.210327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144154, 37.751938, 35.593609>,  <35.001568, 37.658012, 36.232052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144154, 37.751938, 35.593609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251785, 37.377953, 35.686081>,  <35.316364, 37.153561, 35.741566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251785, 37.377953, 35.686081>,  <35.144154, 37.751938, 35.593609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251785, 37.377953, 35.686081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413488, -0.328932, -0.849018,
		0.869843, 0.132857, -0.475102,
		0.269075, -0.934961, 0.231184,
		35.332508, 37.097466, 35.755436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557323, 37.517399, 35.052090>,  <35.144154, 37.751938, 35.593609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557323, 37.517399, 35.052090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430847, 37.197803, 35.256691>,  <35.354961, 37.006046, 35.379452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430847, 37.197803, 35.256691>,  <35.557323, 37.517399, 35.052090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430847, 37.197803, 35.256691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238986, -0.454693, -0.857986,
		0.918100, -0.393531, -0.047178,
		-0.316192, -0.798992, 0.511502,
		35.335991, 36.958107, 35.410141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.858498, 39.248432, 41.639408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600582, 38.979599, 41.785046>,  <39.445835, 38.818298, 41.872429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600582, 38.979599, 41.785046>,  <39.858498, 39.248432, 41.639408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600582, 38.979599, 41.785046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109157, -0.390486, -0.914114,
		0.756530, -0.629150, 0.178417,
		-0.644785, -0.672080, 0.364091,
		39.407146, 38.777977, 41.894272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018551, 38.645527, 41.285652>,  <39.858498, 39.248432, 41.639408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018551, 38.645527, 41.285652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648193, 38.596672, 41.428654>,  <39.425980, 38.567360, 41.514454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648193, 38.596672, 41.428654>,  <40.018551, 38.645527, 41.285652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648193, 38.596672, 41.428654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278917, -0.417270, -0.864923,
		0.254816, -0.900538, 0.352280,
		-0.925891, -0.122139, 0.357502,
		39.370426, 38.560032, 41.535904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819466, 37.915096, 41.040916>,  <40.018551, 38.645527, 41.285652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819466, 37.915096, 41.040916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.469353, 38.086426, 41.130741>,  <39.259285, 38.189224, 41.184635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.469353, 38.086426, 41.130741>,  <39.819466, 37.915096, 41.040916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469353, 38.086426, 41.130741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393328, -0.360293, -0.845862,
		-0.281389, -0.828693, 0.483827,
		-0.875279, 0.428319, 0.224565,
		39.206768, 38.214920, 41.198112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278057, 37.431141, 40.970547>,  <39.819466, 37.915096, 41.040916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278057, 37.431141, 40.970547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111618, 37.793869, 40.943581>,  <39.011753, 38.011505, 40.927399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111618, 37.793869, 40.943581>,  <39.278057, 37.431141, 40.970547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111618, 37.793869, 40.943581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508736, -0.293607, -0.809310,
		-0.753690, -0.302455, 0.583500,
		-0.416100, 0.906816, -0.067419,
		38.986790, 38.065914, 40.923355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576000, 37.298225, 40.824944>,  <39.278057, 37.431141, 40.970547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576000, 37.298225, 40.824944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619370, 37.684689, 40.731323>,  <38.645393, 37.916569, 40.675152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619370, 37.684689, 40.731323>,  <38.576000, 37.298225, 40.824944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619370, 37.684689, 40.731323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510433, -0.147923, -0.847099,
		-0.853054, 0.211315, 0.477121,
		0.108427, 0.966160, -0.234048,
		38.651897, 37.974537, 40.661110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913059, 37.474922, 40.671066>,  <38.576000, 37.298225, 40.824944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913059, 37.474922, 40.671066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157127, 37.746536, 40.507801>,  <38.303570, 37.909504, 40.409840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157127, 37.746536, 40.507801>,  <37.913059, 37.474922, 40.671066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157127, 37.746536, 40.507801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537314, -0.023930, -0.843042,
		-0.582224, 0.733714, 0.350255,
		0.610171, 0.679037, -0.408168,
		38.340179, 37.950249, 40.385349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538746, 37.996895, 40.420166>,  <37.913059, 37.474922, 40.671066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538746, 37.996895, 40.420166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879349, 38.026360, 40.212509>,  <38.083710, 38.044037, 40.087914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879349, 38.026360, 40.212509>,  <37.538746, 37.996895, 40.420166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879349, 38.026360, 40.212509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517106, 0.281887, -0.808172,
		0.086811, 0.956616, 0.278118,
		0.851508, 0.073658, -0.519143,
		38.134800, 38.048458, 40.056767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464806, 38.555912, 39.944813>,  <37.538746, 37.996895, 40.420166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464806, 38.555912, 39.944813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751686, 38.335766, 39.773830>,  <37.923813, 38.203678, 39.671242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751686, 38.335766, 39.773830>,  <37.464806, 38.555912, 39.944813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751686, 38.335766, 39.773830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484492, 0.047094, -0.873527,
		0.500892, 0.833593, -0.232873,
		0.717199, -0.550367, -0.427458,
		37.966846, 38.170654, 39.645592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707806, 38.864704, 39.286427>,  <37.464806, 38.555912, 39.944813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707806, 38.864704, 39.286427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831604, 38.485809, 39.253075>,  <37.905884, 38.258472, 39.233063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831604, 38.485809, 39.253075>,  <37.707806, 38.864704, 39.286427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831604, 38.485809, 39.253075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464050, -0.073918, -0.882720,
		0.829983, 0.311890, -0.462443,
		0.309494, -0.947238, -0.083382,
		37.924454, 38.201637, 39.228062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211903, 39.478546, 39.306797>,  <37.707806, 38.864704, 39.286427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211903, 39.478546, 39.306797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151653, 39.865753, 39.226536>,  <38.115505, 40.098076, 39.178379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151653, 39.865753, 39.226536>,  <38.211903, 39.478546, 39.306797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151653, 39.865753, 39.226536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174586, 0.225823, 0.958396,
		0.973053, 0.109326, -0.203016,
		-0.150623, 0.968014, -0.200651,
		38.106468, 40.156158, 39.166340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720478, 39.832798, 39.676281>,  <38.211903, 39.478546, 39.306797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720478, 39.832798, 39.676281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.438419, 40.112473, 39.629097>,  <38.269184, 40.280277, 39.600784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.438419, 40.112473, 39.629097>,  <38.720478, 39.832798, 39.676281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438419, 40.112473, 39.629097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029175, 0.137616, 0.990056,
		0.708463, 0.701574, -0.076641,
		-0.705145, 0.699182, -0.117964,
		38.226875, 40.322227, 39.593708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949696, 40.396412, 40.069775>,  <38.720478, 39.832798, 39.676281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949696, 40.396412, 40.069775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571835, 40.500103, 39.989349>,  <38.345116, 40.562317, 39.941093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571835, 40.500103, 39.989349>,  <38.949696, 40.396412, 40.069775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571835, 40.500103, 39.989349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083056, 0.403939, 0.911008,
		0.317377, 0.877288, -0.360053,
		-0.944655, 0.259228, -0.201065,
		38.288437, 40.577873, 39.929031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913162, 41.028149, 40.139381>,  <38.949696, 40.396412, 40.069775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913162, 41.028149, 40.139381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545055, 40.888145, 40.209358>,  <38.324192, 40.804142, 40.251343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545055, 40.888145, 40.209358>,  <38.913162, 41.028149, 40.139381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545055, 40.888145, 40.209358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012248, 0.472630, 0.881176,
		-0.391102, 0.808774, -0.439232,
		-0.920266, -0.350009, 0.174940,
		38.268974, 40.783142, 40.261841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604534, 41.591877, 40.567093>,  <38.913162, 41.028149, 40.139381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604534, 41.591877, 40.567093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.335991, 41.296741, 40.595016>,  <38.174866, 41.119659, 40.611771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.335991, 41.296741, 40.595016>,  <38.604534, 41.591877, 40.567093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335991, 41.296741, 40.595016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308482, 0.363844, 0.878895,
		-0.673885, 0.568516, -0.471879,
		-0.671356, -0.737840, 0.069812,
		38.134583, 41.075390, 40.615959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947357, 41.795300, 40.657761>,  <38.604534, 41.591877, 40.567093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947357, 41.795300, 40.657761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966335, 41.440468, 40.841431>,  <37.977722, 41.227570, 40.951633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966335, 41.440468, 40.841431>,  <37.947357, 41.795300, 40.657761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966335, 41.440468, 40.841431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283565, 0.428815, 0.857735,
		-0.957779, -0.170899, -0.231200,
		0.047444, -0.887080, 0.459171,
		37.980568, 41.174343, 40.979183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404331, 41.857296, 41.153839>,  <37.947357, 41.795300, 40.657761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404331, 41.857296, 41.153839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628498, 41.549770, 41.277031>,  <37.763000, 41.365253, 41.350945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628498, 41.549770, 41.277031>,  <37.404331, 41.857296, 41.153839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628498, 41.549770, 41.277031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179707, 0.250122, 0.951391,
		-0.808477, -0.588524, 0.002012,
		0.560419, -0.768816, 0.307980,
		37.796623, 41.319126, 41.369427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009464, 41.429974, 41.658756>,  <37.404331, 41.857296, 41.153839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009464, 41.429974, 41.658756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396702, 41.361935, 41.732365>,  <37.629044, 41.321110, 41.776531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396702, 41.361935, 41.732365>,  <37.009464, 41.429974, 41.658756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396702, 41.361935, 41.732365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159930, 0.145977, 0.976275,
		-0.192927, -0.974555, 0.114116,
		0.968092, -0.170099, 0.184023,
		37.687130, 41.310905, 41.787571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946869, 41.161339, 42.320980>,  <37.009464, 41.429974, 41.658756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946869, 41.161339, 42.320980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330334, 41.249947, 42.249550>,  <37.560413, 41.303112, 42.206692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330334, 41.249947, 42.249550>,  <36.946869, 41.161339, 42.320980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330334, 41.249947, 42.249550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109791, 0.291000, 0.950403,
		0.262489, -0.930727, 0.254652,
		0.958668, 0.221512, -0.178570,
		37.617935, 41.316402, 42.195980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214893, 40.936951, 43.013672>,  <36.946869, 41.161339, 42.320980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214893, 40.936951, 43.013672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468494, 41.183365, 42.826679>,  <37.620655, 41.331215, 42.714485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468494, 41.183365, 42.826679>,  <37.214893, 40.936951, 43.013672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468494, 41.183365, 42.826679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322808, 0.338497, 0.883864,
		0.702732, -0.711280, 0.015748,
		0.634005, 0.616036, -0.467479,
		37.658695, 41.368176, 42.686436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042030, 40.744812, 43.095039>,  <37.214893, 40.936951, 43.013672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042030, 40.744812, 43.095039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024338, 41.142094, 43.051968>,  <38.013721, 41.380463, 43.026127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024338, 41.142094, 43.051968>,  <38.042030, 40.744812, 43.095039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024338, 41.142094, 43.051968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390258, 0.116396, 0.913319,
		0.919643, -0.001621, -0.392753,
		-0.044234, 0.993202, -0.107675,
		38.011066, 41.440056, 43.019665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638058, 41.038277, 43.436275>,  <38.042030, 40.744812, 43.095039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638058, 41.038277, 43.436275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398941, 41.353546, 43.377728>,  <38.255470, 41.542709, 43.342598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398941, 41.353546, 43.377728>,  <38.638058, 41.038277, 43.436275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398941, 41.353546, 43.377728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328364, 0.407309, 0.852218,
		0.731313, 0.461390, -0.502295,
		-0.597794, 0.788174, -0.146366,
		38.219604, 41.590000, 43.333817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045921, 41.596199, 43.598709>,  <38.638058, 41.038277, 43.436275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045921, 41.596199, 43.598709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673275, 41.738590, 43.628036>,  <38.449688, 41.824024, 43.645634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673275, 41.738590, 43.628036>,  <39.045921, 41.596199, 43.598709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673275, 41.738590, 43.628036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225187, 0.407004, 0.885233,
		0.285281, 0.841207, -0.459332,
		-0.931614, 0.355976, 0.073318,
		38.393791, 41.845383, 43.650032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171124, 42.312042, 43.767689>,  <39.045921, 41.596199, 43.598709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171124, 42.312042, 43.767689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799755, 42.229469, 43.891247>,  <38.576935, 42.179928, 43.965382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799755, 42.229469, 43.891247>,  <39.171124, 42.312042, 43.767689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799755, 42.229469, 43.891247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184142, 0.466445, 0.865171,
		-0.322679, 0.860126, -0.395046,
		-0.928423, -0.206428, 0.308897,
		38.521229, 42.167542, 43.983917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.356342, 40.104542, 44.682381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715733, 40.280121, 44.679108>,  <33.931366, 40.385468, 44.677143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715733, 40.280121, 44.679108>,  <33.356342, 40.104542, 44.682381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715733, 40.280121, 44.679108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047372, 0.078403, -0.995796,
		-0.436458, 0.895087, 0.091237,
		0.898477, 0.438945, -0.008183,
		33.985275, 40.411804, 44.676651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343388, 40.642803, 44.187485>,  <33.356342, 40.104542, 44.682381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343388, 40.642803, 44.187485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733158, 40.557663, 44.216286>,  <33.967022, 40.506577, 44.233566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733158, 40.557663, 44.216286>,  <33.343388, 40.642803, 44.187485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733158, 40.557663, 44.216286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098251, 0.115447, -0.988443,
		0.202080, 0.970240, 0.133408,
		0.974428, -0.212852, 0.071998,
		34.025486, 40.493809, 44.237885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653324, 41.137466, 43.854107>,  <33.343388, 40.642803, 44.187485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653324, 41.137466, 43.854107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929207, 40.848335, 43.871193>,  <34.094738, 40.674858, 43.881443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929207, 40.848335, 43.871193>,  <33.653324, 41.137466, 43.854107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929207, 40.848335, 43.871193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032150, -0.089503, -0.995467,
		0.723371, 0.685211, -0.084970,
		0.689710, -0.722824, 0.042714,
		34.136120, 40.631489, 43.884007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127495, 41.275925, 43.316975>,  <33.653324, 41.137466, 43.854107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127495, 41.275925, 43.316975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184689, 40.890305, 43.406567>,  <34.219006, 40.658932, 43.460320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184689, 40.890305, 43.406567>,  <34.127495, 41.275925, 43.316975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184689, 40.890305, 43.406567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044655, -0.232356, -0.971605,
		0.988718, 0.128918, -0.076272,
		0.142980, -0.964049, 0.223977,
		34.227581, 40.601089, 43.473759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723965, 41.063129, 42.867016>,  <34.127495, 41.275925, 43.316975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723965, 41.063129, 42.867016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510357, 40.737782, 42.959320>,  <34.382191, 40.542572, 43.014702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510357, 40.737782, 42.959320>,  <34.723965, 41.063129, 42.867016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510357, 40.737782, 42.959320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122280, -0.195763, -0.972998,
		0.836582, -0.547818, 0.005083,
		-0.534021, -0.813371, 0.230758,
		34.350151, 40.493771, 43.028549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955235, 40.459381, 42.366352>,  <34.723965, 41.063129, 42.867016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955235, 40.459381, 42.366352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.605259, 40.334290, 42.514229>,  <34.395271, 40.259235, 42.602955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.605259, 40.334290, 42.514229>,  <34.955235, 40.459381, 42.366352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605259, 40.334290, 42.514229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137544, -0.571523, -0.808977,
		0.464283, -0.758657, 0.457035,
		-0.874942, -0.312732, 0.369697,
		34.342777, 40.240471, 42.625137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936218, 39.739372, 42.340584>,  <34.955235, 40.459381, 42.366352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936218, 39.739372, 42.340584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555393, 39.861729, 42.339649>,  <34.326897, 39.935143, 42.339088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555393, 39.861729, 42.339649>,  <34.936218, 39.739372, 42.340584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555393, 39.861729, 42.339649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186535, -0.586589, -0.788111,
		-0.242447, -0.749895, 0.615529,
		-0.952063, 0.305893, -0.002335,
		34.269775, 39.953495, 42.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627300, 39.159203, 42.067348>,  <34.936218, 39.739372, 42.340584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627300, 39.159203, 42.067348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339474, 39.436691, 42.054916>,  <34.166779, 39.603184, 42.047455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339474, 39.436691, 42.054916>,  <34.627300, 39.159203, 42.067348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339474, 39.436691, 42.054916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349530, -0.400505, -0.847009,
		-0.600041, -0.598617, 0.530669,
		-0.719570, 0.693725, -0.031085,
		34.123604, 39.644810, 42.045589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923508, 38.791767, 41.984142>,  <34.627300, 39.159203, 42.067348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923508, 38.791767, 41.984142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860374, 39.171516, 41.875488>,  <33.822495, 39.399364, 41.810295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860374, 39.171516, 41.875488>,  <33.923508, 38.791767, 41.984142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860374, 39.171516, 41.875488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333384, -0.310165, -0.890310,
		-0.929485, -0.049965, 0.365460,
		-0.157837, 0.949369, -0.271636,
		33.813023, 39.456326, 41.793999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496597, 38.665844, 41.556854>,  <33.923508, 38.791767, 41.984142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496597, 38.665844, 41.556854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554024, 39.050747, 41.464375>,  <33.588478, 39.281689, 41.408886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554024, 39.050747, 41.464375>,  <33.496597, 38.665844, 41.556854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554024, 39.050747, 41.464375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401734, -0.156837, -0.902226,
		-0.904432, 0.222411, 0.364054,
		0.143568, 0.962255, -0.231199,
		33.597095, 39.339424, 41.395016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803219, 38.920502, 41.358387>,  <33.496597, 38.665844, 41.556854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803219, 38.920502, 41.358387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073723, 39.165543, 41.194729>,  <33.236023, 39.312565, 41.096535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073723, 39.165543, 41.194729>,  <32.803219, 38.920502, 41.358387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073723, 39.165543, 41.194729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465580, -0.074993, -0.881822,
		-0.570886, 0.786828, 0.234499,
		0.676257, 0.612598, -0.409145,
		33.276600, 39.349323, 41.071987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457859, 39.565662, 40.957291>,  <32.803219, 38.920502, 41.358387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457859, 39.565662, 40.957291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822403, 39.494316, 40.808910>,  <33.041130, 39.451508, 40.719883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822403, 39.494316, 40.808910>,  <32.457859, 39.565662, 40.957291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822403, 39.494316, 40.808910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395332, -0.128444, -0.909514,
		0.114581, 0.975545, -0.187573,
		0.911364, -0.178366, -0.370946,
		33.095814, 39.440807, 40.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441334, 39.947803, 40.315746>,  <32.457859, 39.565662, 40.957291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441334, 39.947803, 40.315746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754368, 39.701241, 40.280853>,  <32.942188, 39.553303, 40.259918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754368, 39.701241, 40.280853>,  <32.441334, 39.947803, 40.315746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754368, 39.701241, 40.280853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322789, -0.281957, -0.903497,
		0.532324, 0.735220, -0.419623,
		0.782585, -0.616403, -0.087228,
		32.989143, 39.516319, 40.254684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861210, 40.159935, 39.768002>,  <32.441334, 39.947803, 40.315746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861210, 40.159935, 39.768002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897507, 39.766693, 39.831596>,  <32.919285, 39.530750, 39.869751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897507, 39.766693, 39.831596>,  <32.861210, 40.159935, 39.768002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897507, 39.766693, 39.831596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244553, -0.176752, -0.953390,
		0.965381, 0.047632, -0.256459,
		0.090741, -0.983102, 0.158984,
		32.924728, 39.471764, 39.879292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403313, 40.598957, 39.774906>,  <32.861210, 40.159935, 39.768002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403313, 40.598957, 39.774906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.446648, 40.969700, 39.631130>,  <33.472649, 41.192146, 39.544865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.446648, 40.969700, 39.631130>,  <33.403313, 40.598957, 39.774906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446648, 40.969700, 39.631130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046963, 0.356397, 0.933154,
		0.993004, -0.117974, -0.004917,
		0.108336, 0.926857, -0.359444,
		33.479149, 41.247757, 39.523296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986473, 40.859245, 40.045010>,  <33.403313, 40.598957, 39.774906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986473, 40.859245, 40.045010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766491, 41.181759, 39.957878>,  <33.634502, 41.375267, 39.905598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766491, 41.181759, 39.957878>,  <33.986473, 40.859245, 40.045010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766491, 41.181759, 39.957878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232416, 0.398255, 0.887342,
		0.802204, 0.437373, -0.406417,
		-0.549957, 0.806287, -0.217829,
		33.601505, 41.423645, 39.892529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327610, 41.451817, 40.447868>,  <33.986473, 40.859245, 40.045010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327610, 41.451817, 40.447868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952419, 41.572971, 40.380402>,  <33.727303, 41.645664, 40.339920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952419, 41.572971, 40.380402>,  <34.327610, 41.451817, 40.447868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952419, 41.572971, 40.380402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001572, 0.482795, 0.875732,
		0.346684, 0.821685, -0.452377,
		-0.937981, 0.302891, -0.168669,
		33.671024, 41.663837, 40.329800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268154, 42.178181, 40.646709>,  <34.327610, 41.451817, 40.447868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268154, 42.178181, 40.646709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877663, 42.092899, 40.631134>,  <33.643368, 42.041729, 40.621788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877663, 42.092899, 40.631134>,  <34.268154, 42.178181, 40.646709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877663, 42.092899, 40.631134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152917, 0.550261, 0.820871,
		-0.153583, 0.807315, -0.569785,
		-0.976232, -0.213202, -0.038942,
		33.584793, 42.028938, 40.619453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932892, 42.828285, 40.711502>,  <34.268154, 42.178181, 40.646709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932892, 42.828285, 40.711502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683865, 42.538536, 40.829956>,  <33.534447, 42.364689, 40.901028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683865, 42.538536, 40.829956>,  <33.932892, 42.828285, 40.711502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683865, 42.538536, 40.829956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121193, 0.463099, 0.877982,
		-0.773125, 0.510713, -0.376099,
		-0.622567, -0.724370, 0.296139,
		33.497093, 42.321224, 40.918797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393299, 43.179535, 41.007290>,  <33.932892, 42.828285, 40.711502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393299, 43.179535, 41.007290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361050, 42.796947, 41.119480>,  <33.341702, 42.567394, 41.186794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361050, 42.796947, 41.119480>,  <33.393299, 43.179535, 41.007290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361050, 42.796947, 41.119480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159321, 0.290136, 0.943630,
		-0.983929, 0.031393, -0.175777,
		-0.080623, -0.956470, 0.280472,
		33.336864, 42.510006, 41.203621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837608, 43.223747, 41.480392>,  <33.393299, 43.179535, 41.007290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837608, 43.223747, 41.480392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025612, 42.876667, 41.545113>,  <33.138412, 42.668419, 41.583946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025612, 42.876667, 41.545113>,  <32.837608, 43.223747, 41.480392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025612, 42.876667, 41.545113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035233, 0.164720, 0.985711,
		-0.881958, -0.468993, 0.046848,
		0.470008, -0.867705, 0.161801,
		33.166615, 42.616356, 41.593655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445637, 42.819202, 42.038071>,  <32.837608, 43.223747, 41.480392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445637, 42.819202, 42.038071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.820129, 42.681831, 42.067783>,  <33.044827, 42.599407, 42.085609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.820129, 42.681831, 42.067783>,  <32.445637, 42.819202, 42.038071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820129, 42.681831, 42.067783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022240, 0.153057, 0.987967,
		-0.350667, -0.926622, 0.135659,
		0.936236, -0.343431, 0.074280,
		33.101002, 42.578804, 42.090069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457596, 42.339035, 42.573757>,  <32.445637, 42.819202, 42.038071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457596, 42.339035, 42.573757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836910, 42.460770, 42.537666>,  <33.064499, 42.533810, 42.516010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836910, 42.460770, 42.537666>,  <32.457596, 42.339035, 42.573757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836910, 42.460770, 42.537666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059771, 0.107974, 0.992355,
		0.311749, -0.946427, 0.084199,
		0.948283, 0.304333, -0.090230,
		33.121395, 42.552071, 42.510597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750229, 42.091141, 43.132893>,  <32.457596, 42.339035, 42.573757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750229, 42.091141, 43.132893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.019447, 42.363167, 43.016609>,  <33.180981, 42.526382, 42.946838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.019447, 42.363167, 43.016609>,  <32.750229, 42.091141, 43.132893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019447, 42.363167, 43.016609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231443, 0.179661, 0.956115,
		0.702453, -0.710795, -0.036477,
		0.673048, 0.680068, -0.290712,
		33.221363, 42.567188, 42.929394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316597, 41.851952, 43.560005>,  <32.750229, 42.091141, 43.132893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316597, 41.851952, 43.560005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372875, 42.226765, 43.432152>,  <33.406643, 42.451653, 43.355438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372875, 42.226765, 43.432152>,  <33.316597, 41.851952, 43.560005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372875, 42.226765, 43.432152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243432, 0.280191, 0.928566,
		0.959659, -0.208457, -0.188682,
		0.140699, 0.937037, -0.319633,
		33.415085, 42.507877, 43.336262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924984, 42.032417, 43.934067>,  <33.316597, 41.851952, 43.560005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924984, 42.032417, 43.934067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775501, 42.384159, 43.816029>,  <33.685814, 42.595203, 43.745205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775501, 42.384159, 43.816029>,  <33.924984, 42.032417, 43.934067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775501, 42.384159, 43.816029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264815, 0.406050, 0.874641,
		0.888943, 0.248711, -0.384608,
		-0.373703, 0.879356, -0.295093,
		33.663391, 42.647964, 43.727501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433979, 42.544903, 44.154613>,  <33.924984, 42.032417, 43.934067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433979, 42.544903, 44.154613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101181, 42.757130, 44.089764>,  <33.901501, 42.884464, 44.050854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101181, 42.757130, 44.089764>,  <34.433979, 42.544903, 44.154613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101181, 42.757130, 44.089764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107676, 0.441111, 0.890970,
		0.544232, 0.723826, -0.424132,
		-0.831996, 0.530564, -0.162128,
		33.851582, 42.916298, 44.041126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614170, 43.287262, 44.268394>,  <34.433979, 42.544903, 44.154613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614170, 43.287262, 44.268394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216927, 43.264156, 44.309196>,  <33.978580, 43.250294, 44.333679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216927, 43.264156, 44.309196>,  <34.614170, 43.287262, 44.268394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216927, 43.264156, 44.309196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066601, 0.438045, 0.896483,
		-0.096468, 0.897095, -0.431177,
		-0.993105, -0.057765, 0.102005,
		33.918995, 43.246826, 44.339798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892651, 43.951008, 44.010529>,  <34.614170, 43.287262, 44.268394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892651, 43.951008, 44.010529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.284752, 44.029453, 44.020649>,  <35.520012, 44.076519, 44.026722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.284752, 44.029453, 44.020649>,  <34.892651, 43.951008, 44.010529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284752, 44.029453, 44.020649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044056, -0.091857, -0.994797,
		-0.192768, 0.976269, -0.098684,
		0.980255, 0.196113, 0.025303,
		35.578827, 44.088287, 44.028240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006630, 44.407593, 43.527431>,  <34.892651, 43.951008, 44.010529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006630, 44.407593, 43.527431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369724, 44.244823, 43.568291>,  <35.587582, 44.147163, 43.592808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369724, 44.244823, 43.568291>,  <35.006630, 44.407593, 43.527431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369724, 44.244823, 43.568291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155497, 0.100167, -0.982745,
		0.389666, 0.907955, 0.154200,
		0.907734, -0.406920, 0.102153,
		35.642044, 44.122749, 43.598938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615475, 44.846409, 43.251484>,  <35.006630, 44.407593, 43.527431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615475, 44.846409, 43.251484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749252, 44.469608, 43.262695>,  <35.829521, 44.243530, 43.269421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749252, 44.469608, 43.262695>,  <35.615475, 44.846409, 43.251484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749252, 44.469608, 43.262695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088258, 0.001699, -0.996096,
		0.938273, 0.335615, 0.083708,
		0.334447, -0.941998, 0.028026,
		35.849586, 44.187008, 43.271103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085049, 44.885387, 42.761337>,  <35.615475, 44.846409, 43.251484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085049, 44.885387, 42.761337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023232, 44.493420, 42.811733>,  <35.986141, 44.258240, 42.841969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023232, 44.493420, 42.811733>,  <36.085049, 44.885387, 42.761337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023232, 44.493420, 42.811733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059331, -0.136494, -0.988863,
		0.986204, -0.145343, 0.079233,
		-0.154539, -0.979921, 0.125988,
		35.976871, 44.199444, 42.849529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672813, 44.615353, 42.514038>,  <36.085049, 44.885387, 42.761337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672813, 44.615353, 42.514038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415031, 44.309780, 42.500912>,  <36.260361, 44.126434, 42.493034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415031, 44.309780, 42.500912>,  <36.672813, 44.615353, 42.514038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415031, 44.309780, 42.500912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308921, -0.220867, -0.925087,
		0.699458, -0.606318, 0.378335,
		-0.644458, -0.763935, -0.032817,
		36.221695, 44.080601, 42.491066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969460, 44.105057, 42.144527>,  <36.672813, 44.615353, 42.514038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969460, 44.105057, 42.144527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602562, 43.949123, 42.111816>,  <36.382423, 43.855564, 42.092190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602562, 43.949123, 42.111816>,  <36.969460, 44.105057, 42.144527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602562, 43.949123, 42.111816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214199, -0.309649, -0.926410,
		0.335818, -0.867266, 0.367526,
		-0.917249, -0.389829, -0.081782,
		36.327389, 43.832176, 42.087280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016697, 43.429176, 41.892738>,  <36.969460, 44.105057, 42.144527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016697, 43.429176, 41.892738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649391, 43.543152, 41.782753>,  <36.429008, 43.611538, 41.716763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649391, 43.543152, 41.782753>,  <37.016697, 43.429176, 41.892738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649391, 43.543152, 41.782753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143768, -0.407090, -0.902002,
		-0.368946, -0.867807, 0.332851,
		-0.918264, 0.284937, -0.274957,
		36.373913, 43.628635, 41.700264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783844, 42.938587, 41.492943>,  <37.016697, 43.429176, 41.892738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783844, 42.938587, 41.492943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518616, 43.225517, 41.407352>,  <36.359478, 43.397675, 41.355999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518616, 43.225517, 41.407352>,  <36.783844, 42.938587, 41.492943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518616, 43.225517, 41.407352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026057, -0.307794, -0.951096,
		-0.748101, -0.625071, 0.222782,
		-0.663073, 0.717321, -0.213974,
		36.319695, 43.440712, 41.343159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217487, 42.635860, 41.089001>,  <36.783844, 42.938587, 41.492943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217487, 42.635860, 41.089001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224419, 43.027199, 41.006508>,  <36.228577, 43.262001, 40.957012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224419, 43.027199, 41.006508>,  <36.217487, 42.635860, 41.089001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224419, 43.027199, 41.006508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026716, -0.205734, -0.978243,
		-0.999493, 0.022459, 0.022573,
		0.017326, 0.978350, -0.206229,
		36.229618, 43.320705, 40.944637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647289, 42.767887, 40.654282>,  <36.217487, 42.635860, 41.089001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647289, 42.767887, 40.654282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928108, 43.043736, 40.583221>,  <36.096600, 43.209244, 40.540585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928108, 43.043736, 40.583221>,  <35.647289, 42.767887, 40.654282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928108, 43.043736, 40.583221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056617, -0.194618, -0.979244,
		-0.709877, 0.697533, -0.097587,
		0.702047, 0.689617, -0.177647,
		36.138721, 43.250622, 40.529926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369225, 43.313175, 40.156990>,  <35.647289, 42.767887, 40.654282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369225, 43.313175, 40.156990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767498, 43.324688, 40.121685>,  <36.006462, 43.331596, 40.100502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767498, 43.324688, 40.121685>,  <35.369225, 43.313175, 40.156990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767498, 43.324688, 40.121685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081418, -0.186006, -0.979169,
		-0.044602, 0.982127, -0.182859,
		0.995682, 0.028785, -0.088259,
		36.066204, 43.333324, 40.095207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458004, 43.438515, 39.514767>,  <35.369225, 43.313175, 40.156990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458004, 43.438515, 39.514767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841343, 43.351799, 39.589142>,  <36.071346, 43.299770, 39.633766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841343, 43.351799, 39.589142>,  <35.458004, 43.438515, 39.514767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841343, 43.351799, 39.589142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160313, -0.130482, -0.978404,
		0.236365, 0.967460, -0.090293,
		0.958348, -0.216786, 0.185938,
		36.128849, 43.286762, 39.644924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822590, 43.751911, 39.055092>,  <35.458004, 43.438515, 39.514767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822590, 43.751911, 39.055092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.081108, 43.476849, 39.187412>,  <36.236217, 43.311810, 39.266804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.081108, 43.476849, 39.187412>,  <35.822590, 43.751911, 39.055092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081108, 43.476849, 39.187412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420314, -0.041027, -0.906451,
		0.636899, 0.724876, 0.262516,
		0.646294, -0.687657, 0.330805,
		36.274998, 43.270550, 39.286655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460396, 43.936985, 38.877464>,  <35.822590, 43.751911, 39.055092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460396, 43.936985, 38.877464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446079, 43.540359, 38.927311>,  <36.437489, 43.302383, 38.957218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446079, 43.540359, 38.927311>,  <36.460396, 43.936985, 38.877464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446079, 43.540359, 38.927311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392900, -0.128614, -0.910543,
		0.918885, 0.016370, 0.394187,
		-0.035792, -0.991560, 0.124613,
		36.435341, 43.242893, 38.964695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.385187, 31.663183, 28.295750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.718998, 31.446714, 28.337128>,  <25.919285, 31.316833, 28.361956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.718998, 31.446714, 28.337128>,  <25.385187, 31.663183, 28.295750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718998, 31.446714, 28.337128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042124, 0.249873, 0.967362,
		-0.549356, -0.802931, 0.231322,
		0.834526, -0.541170, 0.103446,
		25.969357, 31.284363, 28.368162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255213, 31.191692, 28.861393>,  <25.385187, 31.663183, 28.295750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255213, 31.191692, 28.861393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648634, 31.252867, 28.822952>,  <25.884686, 31.289572, 28.799887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648634, 31.252867, 28.822952>,  <25.255213, 31.191692, 28.861393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648634, 31.252867, 28.822952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084853, 0.078477, 0.993298,
		0.159457, -0.985115, 0.064209,
		0.983551, 0.152940, -0.096103,
		25.943699, 31.298748, 28.794121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437286, 31.039457, 29.467640>,  <25.255213, 31.191692, 28.861393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437286, 31.039457, 29.467640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778826, 31.196148, 29.330530>,  <25.983749, 31.290163, 29.248264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778826, 31.196148, 29.330530>,  <25.437286, 31.039457, 29.467640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778826, 31.196148, 29.330530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248880, 0.271127, 0.929811,
		0.457169, -0.879226, 0.134008,
		0.853847, 0.391729, -0.342773,
		26.034981, 31.313667, 29.227697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850908, 30.799467, 29.883242>,  <25.437286, 31.039457, 29.467640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850908, 30.799467, 29.883242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001295, 31.136623, 29.729261>,  <26.091526, 31.338917, 29.636873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001295, 31.136623, 29.729261>,  <25.850908, 30.799467, 29.883242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001295, 31.136623, 29.729261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003058, 0.416553, 0.909106,
		0.926628, -0.340616, 0.159187,
		0.375966, 0.842890, -0.384949,
		26.114084, 31.389490, 29.613777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472168, 30.929968, 30.212360>,  <25.850908, 30.799467, 29.883242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472168, 30.929968, 30.212360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.339773, 31.275324, 30.060041>,  <26.260336, 31.482536, 29.968651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.339773, 31.275324, 30.060041>,  <26.472168, 30.929968, 30.212360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339773, 31.275324, 30.060041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215455, 0.462029, 0.860295,
		0.918709, 0.202702, -0.338948,
		-0.330987, 0.863389, -0.380798,
		26.240477, 31.534340, 29.945803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972725, 31.416279, 30.358116>,  <26.472168, 30.929968, 30.212360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972725, 31.416279, 30.358116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674089, 31.671972, 30.284376>,  <26.494907, 31.825388, 30.240133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674089, 31.671972, 30.284376>,  <26.972725, 31.416279, 30.358116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674089, 31.671972, 30.284376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189759, 0.470196, 0.861921,
		0.637650, 0.608518, -0.472343,
		-0.746588, 0.639235, -0.184348,
		26.450113, 31.863743, 30.229073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218010, 32.174656, 30.455027>,  <26.972725, 31.416279, 30.358116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218010, 32.174656, 30.455027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820936, 32.196827, 30.497938>,  <26.582693, 32.210129, 30.523685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820936, 32.196827, 30.497938>,  <27.218010, 32.174656, 30.455027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820936, 32.196827, 30.497938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119481, 0.579309, 0.806304,
		-0.017458, 0.813221, -0.581692,
		-0.992683, 0.055424, 0.107278,
		26.523130, 32.213455, 30.530121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169216, 32.796982, 30.809809>,  <27.218010, 32.174656, 30.455027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169216, 32.796982, 30.809809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801262, 32.644432, 30.846394>,  <26.580490, 32.552902, 30.868345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801262, 32.644432, 30.846394>,  <27.169216, 32.796982, 30.809809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801262, 32.644432, 30.846394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129031, 0.514529, 0.847709,
		-0.370353, 0.767994, -0.522517,
		-0.919886, -0.381372, 0.091463,
		26.525295, 32.530022, 30.873833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654600, 33.351494, 30.766937>,  <27.169216, 32.796982, 30.809809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654600, 33.351494, 30.766937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517059, 33.053833, 30.996023>,  <26.434534, 32.875237, 31.133474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517059, 33.053833, 30.996023>,  <26.654600, 33.351494, 30.766937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517059, 33.053833, 30.996023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038941, 0.620678, 0.783098,
		-0.938216, 0.246968, -0.242400,
		-0.343852, -0.744154, 0.572713,
		26.413904, 32.830585, 31.167837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070614, 33.551048, 31.181623>,  <26.654600, 33.351494, 30.766937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070614, 33.551048, 31.181623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185781, 33.209949, 31.355946>,  <26.254883, 33.005291, 31.460539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185781, 33.209949, 31.355946>,  <26.070614, 33.551048, 31.181623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185781, 33.209949, 31.355946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306336, 0.349152, 0.885580,
		-0.907337, -0.388477, -0.160699,
		0.287919, -0.852747, 0.435803,
		26.272158, 32.954124, 31.486687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487606, 33.330696, 31.663649>,  <26.070614, 33.551048, 31.181623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487606, 33.330696, 31.663649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801689, 33.130825, 31.809948>,  <25.990139, 33.010902, 31.897728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801689, 33.130825, 31.809948>,  <25.487606, 33.330696, 31.663649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801689, 33.130825, 31.809948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286982, 0.229740, 0.929979,
		-0.548715, -0.835191, 0.036995,
		0.785209, -0.499676, 0.365747,
		26.037252, 32.980923, 31.919672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272345, 33.285892, 32.346893>,  <25.487606, 33.330696, 31.663649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272345, 33.285892, 32.346893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.658010, 33.180508, 32.334435>,  <25.889410, 33.117275, 32.326958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.658010, 33.180508, 32.334435>,  <25.272345, 33.285892, 32.346893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658010, 33.180508, 32.334435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098455, 0.246318, 0.964175,
		-0.246356, -0.932691, 0.263431,
		0.964166, -0.263466, -0.031146,
		25.947260, 33.101467, 32.325092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284620, 32.797096, 32.864803>,  <25.272345, 33.285892, 32.346893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284620, 32.797096, 32.864803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.652874, 32.938610, 32.798748>,  <25.873827, 33.023518, 32.759113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.652874, 32.938610, 32.798748>,  <25.284620, 32.797096, 32.864803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652874, 32.938610, 32.798748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061335, 0.286663, 0.956066,
		0.385579, -0.890316, 0.242213,
		0.920634, 0.353783, -0.165139,
		25.929064, 33.044746, 32.749207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784014, 32.534096, 33.504307>,  <25.284620, 32.797096, 32.864803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784014, 32.534096, 33.504307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926544, 32.852093, 33.307934>,  <26.012062, 33.042892, 33.190109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926544, 32.852093, 33.307934>,  <25.784014, 32.534096, 33.504307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926544, 32.852093, 33.307934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084004, 0.496040, 0.864227,
		0.930578, -0.349187, 0.109970,
		0.356327, 0.794992, -0.490937,
		26.033442, 33.090591, 33.160652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215197, 32.859554, 34.042358>,  <25.784014, 32.534096, 33.504307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215197, 32.859554, 34.042358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161469, 33.143032, 33.765312>,  <26.129232, 33.313118, 33.599083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161469, 33.143032, 33.765312>,  <26.215197, 32.859554, 34.042358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161469, 33.143032, 33.765312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062244, 0.703603, 0.707861,
		0.988981, 0.051969, -0.138620,
		-0.134320, 0.708690, -0.692616,
		26.121172, 33.355640, 33.557526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737968, 33.328568, 34.118637>,  <26.215197, 32.859554, 34.042358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737968, 33.328568, 34.118637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474661, 33.538212, 33.902493>,  <26.316677, 33.663998, 33.772804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474661, 33.538212, 33.902493>,  <26.737968, 33.328568, 34.118637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474661, 33.538212, 33.902493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099207, 0.771957, 0.627886,
		0.746219, 0.359709, -0.560149,
		-0.658267, 0.524111, -0.540363,
		26.277182, 33.695446, 33.740383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078323, 34.056911, 33.964935>,  <26.737968, 33.328568, 34.118637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078323, 34.056911, 33.964935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681234, 34.093590, 33.933708>,  <26.442982, 34.115597, 33.914970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681234, 34.093590, 33.933708>,  <27.078323, 34.056911, 33.964935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681234, 34.093590, 33.933708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046268, 0.888934, 0.455693,
		0.111182, 0.448764, -0.886707,
		-0.992722, 0.091691, -0.078070,
		26.383417, 34.121098, 33.910286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005039, 34.826401, 33.773579>,  <27.078323, 34.056911, 33.964935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005039, 34.826401, 33.773579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648947, 34.701069, 33.905827>,  <26.435291, 34.625870, 33.985176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648947, 34.701069, 33.905827>,  <27.005039, 34.826401, 33.773579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648947, 34.701069, 33.905827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027208, 0.761117, 0.648044,
		-0.454694, 0.567914, -0.686096,
		-0.890232, -0.313329, 0.330623,
		26.381878, 34.607071, 34.005013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626200, 35.425602, 33.764317>,  <27.005039, 34.826401, 33.773579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626200, 35.425602, 33.764317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428011, 35.171722, 34.001522>,  <26.309097, 35.019394, 34.143845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428011, 35.171722, 34.001522>,  <26.626200, 35.425602, 33.764317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428011, 35.171722, 34.001522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047919, 0.701634, 0.710924,
		-0.867301, 0.323827, -0.378055,
		-0.495472, -0.634701, 0.593011,
		26.279369, 34.981312, 34.179424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245316, 35.523609, 33.980816>,  <26.626200, 35.425602, 33.764317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245316, 35.523609, 33.980816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616673, 35.671059, 33.962059>,  <27.839487, 35.759529, 33.950806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616673, 35.671059, 33.962059>,  <27.245316, 35.523609, 33.980816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616673, 35.671059, 33.962059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053996, -0.258675, -0.964454,
		-0.367653, 0.892862, -0.260057,
		0.928394, 0.368627, -0.046892,
		27.895191, 35.781647, 33.947990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419262, 36.144272, 33.393551>,  <27.245316, 35.523609, 33.980816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419262, 36.144272, 33.393551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775887, 35.985378, 33.480564>,  <27.989861, 35.890041, 33.532772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775887, 35.985378, 33.480564>,  <27.419262, 36.144272, 33.393551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775887, 35.985378, 33.480564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154391, -0.184971, -0.970541,
		0.425772, 0.898882, -0.103583,
		0.891561, -0.397237, 0.217535,
		28.043354, 35.866207, 33.545826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880648, 36.402134, 32.886639>,  <27.419262, 36.144272, 33.393551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880648, 36.402134, 32.886639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092840, 36.092094, 33.023930>,  <28.220156, 35.906071, 33.106304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092840, 36.092094, 33.023930>,  <27.880648, 36.402134, 32.886639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092840, 36.092094, 33.023930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294263, -0.211338, -0.932065,
		0.794983, 0.595442, 0.115973,
		0.530482, -0.775103, 0.343227,
		28.251986, 35.859562, 33.126896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660126, 36.361542, 32.476280>,  <27.880648, 36.402134, 32.886639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660126, 36.361542, 32.476280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522270, 36.010593, 32.609818>,  <28.439558, 35.800026, 32.689941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522270, 36.010593, 32.609818>,  <28.660126, 36.361542, 32.476280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522270, 36.010593, 32.609818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220574, -0.421358, -0.879662,
		0.912454, -0.229527, 0.338740,
		-0.344636, -0.877368, 0.333843,
		28.418879, 35.747383, 32.709969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112566, 35.795696, 32.235489>,  <28.660126, 36.361542, 32.476280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112566, 35.795696, 32.235489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797796, 35.582600, 32.360027>,  <28.608934, 35.454742, 32.434750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797796, 35.582600, 32.360027>,  <29.112566, 35.795696, 32.235489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797796, 35.582600, 32.360027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011833, -0.491444, -0.870829,
		0.616938, -0.688959, 0.380424,
		-0.786923, -0.532746, 0.311343,
		28.561720, 35.422775, 32.453430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225920, 35.047279, 32.288094>,  <29.112566, 35.795696, 32.235489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225920, 35.047279, 32.288094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832697, 35.110355, 32.250713>,  <28.596764, 35.148201, 32.228283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832697, 35.110355, 32.250713>,  <29.225920, 35.047279, 32.288094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832697, 35.110355, 32.250713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005836, -0.482656, -0.875791,
		-0.183207, -0.861498, 0.473558,
		-0.983057, 0.157687, -0.093454,
		28.537781, 35.157661, 32.222675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066166, 34.476616, 31.980938>,  <29.225920, 35.047279, 32.288094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066166, 34.476616, 31.980938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743988, 34.707939, 31.929058>,  <28.550682, 34.846733, 31.897930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743988, 34.707939, 31.929058>,  <29.066166, 34.476616, 31.980938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743988, 34.707939, 31.929058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189213, -0.458296, -0.868426,
		-0.561659, -0.674926, 0.478555,
		-0.805443, 0.578307, -0.129702,
		28.502356, 34.881432, 31.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510958, 34.011154, 31.855001>,  <29.066166, 34.476616, 31.980938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510958, 34.011154, 31.855001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428753, 34.370441, 31.699581>,  <28.379431, 34.586014, 31.606329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428753, 34.370441, 31.699581>,  <28.510958, 34.011154, 31.855001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428753, 34.370441, 31.699581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094138, -0.413328, -0.905703,
		-0.974117, -0.149554, 0.169499,
		-0.205510, 0.898217, -0.388551,
		28.367100, 34.639908, 31.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862566, 33.942482, 31.442385>,  <28.510958, 34.011154, 31.855001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862566, 33.942482, 31.442385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078615, 34.257980, 31.324982>,  <28.208244, 34.447281, 31.254539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078615, 34.257980, 31.324982>,  <27.862566, 33.942482, 31.442385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078615, 34.257980, 31.324982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150453, -0.252638, -0.955792,
		-0.828027, 0.560406, -0.017787,
		0.540125, 0.788745, -0.293505,
		28.240652, 34.494602, 31.236931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488441, 34.103779, 30.900654>,  <27.862566, 33.942482, 31.442385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488441, 34.103779, 30.900654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819323, 34.321098, 30.843306>,  <28.017851, 34.451492, 30.808897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819323, 34.321098, 30.843306>,  <27.488441, 34.103779, 30.900654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819323, 34.321098, 30.843306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128112, -0.066075, -0.989556,
		-0.547102, 0.836933, 0.014946,
		0.827204, 0.543303, -0.143370,
		28.067484, 34.484089, 30.800295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281939, 34.573586, 30.330427>,  <27.488441, 34.103779, 30.900654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281939, 34.573586, 30.330427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681698, 34.564846, 30.341236>,  <27.921553, 34.559601, 30.347721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681698, 34.564846, 30.341236>,  <27.281939, 34.573586, 30.330427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681698, 34.564846, 30.341236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022221, -0.196121, -0.980328,
		0.026720, 0.980336, -0.195517,
		0.999396, -0.021850, 0.027024,
		27.981516, 34.558292, 30.349344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559587, 35.025154, 29.797741>,  <27.281939, 34.573586, 30.330427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559587, 35.025154, 29.797741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854359, 34.767380, 29.879362>,  <28.031221, 34.612717, 29.928335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854359, 34.767380, 29.879362>,  <27.559587, 35.025154, 29.797741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854359, 34.767380, 29.879362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019622, -0.281345, -0.959406,
		0.675685, 0.711019, -0.194686,
		0.736929, -0.644436, 0.204052,
		28.075438, 34.574047, 29.940578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945658, 35.021946, 29.141243>,  <27.559587, 35.025154, 29.797741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945658, 35.021946, 29.141243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107208, 34.715019, 29.340485>,  <28.204138, 34.530865, 29.460030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107208, 34.715019, 29.340485>,  <27.945658, 35.021946, 29.141243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107208, 34.715019, 29.340485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251878, -0.430173, -0.866896,
		0.879455, 0.475581, 0.019533,
		0.403876, -0.767316, 0.498106,
		28.228371, 34.484825, 29.489916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605209, 34.923649, 28.862593>,  <27.945658, 35.021946, 29.141243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605209, 34.923649, 28.862593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507593, 34.566414, 29.013769>,  <28.449022, 34.352074, 29.104475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507593, 34.566414, 29.013769>,  <28.605209, 34.923649, 28.862593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507593, 34.566414, 29.013769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086878, -0.368021, -0.925750,
		0.965865, -0.258757, 0.012223,
		-0.244043, -0.893088, 0.377939,
		28.434380, 34.298489, 29.127151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000168, 34.377411, 28.605438>,  <28.605209, 34.923649, 28.862593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000168, 34.377411, 28.605438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676414, 34.171993, 28.719404>,  <28.482162, 34.048744, 28.787783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676414, 34.171993, 28.719404>,  <29.000168, 34.377411, 28.605438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676414, 34.171993, 28.719404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071275, -0.395657, -0.915629,
		0.582941, -0.761401, 0.283635,
		-0.809382, -0.513541, 0.284913,
		28.433599, 34.017929, 28.804878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112671, 33.800533, 28.311731>,  <29.000168, 34.377411, 28.605438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112671, 33.800533, 28.311731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725258, 33.806801, 28.411091>,  <28.492811, 33.810562, 28.470707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725258, 33.806801, 28.411091>,  <29.112671, 33.800533, 28.311731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725258, 33.806801, 28.411091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227784, -0.458028, -0.859258,
		0.100310, -0.888800, 0.447183,
		-0.968531, 0.015669, 0.248399,
		28.434698, 33.811501, 28.485611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816078, 33.109516, 28.149239>,  <29.112671, 33.800533, 28.311731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816078, 33.109516, 28.149239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515240, 33.373066, 28.143074>,  <28.334736, 33.531197, 28.139376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515240, 33.373066, 28.143074>,  <28.816078, 33.109516, 28.149239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515240, 33.373066, 28.143074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350427, -0.419599, -0.837340,
		-0.558167, -0.624360, 0.546465,
		-0.752098, 0.658872, -0.015414,
		28.289610, 33.570728, 28.138451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285515, 32.721924, 28.073841>,  <28.816078, 33.109516, 28.149239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285515, 32.721924, 28.073841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160355, 33.077068, 27.938906>,  <28.085258, 33.290154, 27.857944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160355, 33.077068, 27.938906>,  <28.285515, 32.721924, 28.073841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160355, 33.077068, 27.938906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383846, -0.443085, -0.810147,
		-0.868767, -0.124010, 0.479444,
		-0.312900, 0.887861, -0.337337,
		28.066484, 33.343426, 27.837704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615320, 32.632683, 27.870832>,  <28.285515, 32.721924, 28.073841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615320, 32.632683, 27.870832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.711601, 32.975712, 27.689007>,  <27.769369, 33.181530, 27.579912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.711601, 32.975712, 27.689007>,  <27.615320, 32.632683, 27.870832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711601, 32.975712, 27.689007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572565, -0.252707, -0.779941,
		-0.783729, 0.448001, 0.430190,
		0.240702, 0.857575, -0.454564,
		27.783812, 33.232983, 27.552637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949472, 33.064156, 27.767923>,  <27.615320, 32.632683, 27.870832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949472, 33.064156, 27.767923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234102, 33.153694, 27.501524>,  <27.404881, 33.207417, 27.341684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234102, 33.153694, 27.501524>,  <26.949472, 33.064156, 27.767923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234102, 33.153694, 27.501524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612437, -0.266969, -0.744075,
		-0.344358, 0.937348, -0.052878,
		0.711574, 0.223844, -0.666000,
		27.447575, 33.220848, 27.301723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642664, 33.492149, 27.367002>,  <26.949472, 33.064156, 27.767923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642664, 33.492149, 27.367002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948570, 33.358532, 27.146622>,  <27.132114, 33.278362, 27.014393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948570, 33.358532, 27.146622>,  <26.642664, 33.492149, 27.367002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948570, 33.358532, 27.146622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618977, -0.143503, -0.772188,
		0.178881, 0.931570, -0.316511,
		0.764767, -0.334043, -0.550951,
		27.177999, 33.258320, 26.981337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556128, 33.931847, 26.811064>,  <26.642664, 33.492149, 27.367002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556128, 33.931847, 26.811064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762432, 33.595837, 26.743706>,  <26.886215, 33.394230, 26.703291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762432, 33.595837, 26.743706>,  <26.556128, 33.931847, 26.811064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762432, 33.595837, 26.743706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625626, -0.235004, -0.743886,
		0.585306, 0.489018, -0.646744,
		0.515761, -0.840020, -0.168393,
		26.917160, 33.343830, 26.693188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427349, 33.723286, 26.178204>,  <26.556128, 33.931847, 26.811064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427349, 33.723286, 26.178204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566757, 33.373650, 26.313549>,  <26.650402, 33.163868, 26.394756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566757, 33.373650, 26.313549>,  <26.427349, 33.723286, 26.178204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566757, 33.373650, 26.313549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554840, -0.483352, -0.677143,
		0.755437, 0.048261, -0.653441,
		0.348522, -0.874094, 0.338365,
		26.671314, 33.111420, 26.415058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.334126, 43.328136, 44.232319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.234894, 42.946228, 44.297890>,  <38.175354, 42.717083, 44.337231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.234894, 42.946228, 44.297890>,  <38.334126, 43.328136, 44.232319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234894, 42.946228, 44.297890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126964, 0.135711, 0.982579,
		-0.960384, 0.264568, 0.087555,
		-0.248077, -0.954770, 0.163926,
		38.160469, 42.659798, 44.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752987, 43.332764, 44.684246>,  <38.334126, 43.328136, 44.232319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752987, 43.332764, 44.684246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.896255, 42.966709, 44.758255>,  <37.982216, 42.747078, 44.802662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.896255, 42.966709, 44.758255>,  <37.752987, 43.332764, 44.684246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896255, 42.966709, 44.758255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136285, 0.144805, 0.980029,
		-0.923655, -0.376237, -0.072855,
		0.358174, -0.915138, 0.185025,
		38.003708, 42.692169, 44.813763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357567, 42.904739, 45.241192>,  <37.752987, 43.332764, 44.684246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357567, 42.904739, 45.241192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.726391, 42.750122, 45.233257>,  <37.947685, 42.657352, 45.228497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.726391, 42.750122, 45.233257>,  <37.357567, 42.904739, 45.241192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726391, 42.750122, 45.233257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025091, -0.110845, 0.993521,
		-0.386239, -0.915585, -0.111904,
		0.922057, -0.386545, -0.019840,
		38.003010, 42.634159, 45.227306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340584, 42.367256, 45.768131>,  <37.357567, 42.904739, 45.241192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340584, 42.367256, 45.768131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728870, 42.451782, 45.722435>,  <37.961842, 42.502499, 45.695019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728870, 42.451782, 45.722435>,  <37.340584, 42.367256, 45.768131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728870, 42.451782, 45.722435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161088, -0.219838, 0.962144,
		0.178201, -0.952375, -0.247441,
		0.970718, 0.211315, -0.114241,
		38.020084, 42.515175, 45.688164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677040, 41.891705, 46.232628>,  <37.340584, 42.367256, 45.768131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677040, 41.891705, 46.232628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.975555, 42.154308, 46.188721>,  <38.154663, 42.311871, 46.162376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.975555, 42.154308, 46.188721>,  <37.677040, 41.891705, 46.232628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975555, 42.154308, 46.188721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270760, -0.148763, 0.951083,
		0.608065, -0.739503, -0.288777,
		0.746288, 0.656510, -0.109770,
		38.199440, 42.351261, 46.155788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262344, 41.605816, 46.516891>,  <37.677040, 41.891705, 46.232628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262344, 41.605816, 46.516891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347466, 41.996628, 46.512283>,  <38.398540, 42.231113, 46.509518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347466, 41.996628, 46.512283>,  <38.262344, 41.605816, 46.516891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347466, 41.996628, 46.512283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548592, -0.109713, 0.828861,
		0.808555, -0.182709, -0.559336,
		0.212806, 0.977026, -0.011524,
		38.411308, 42.289734, 46.508827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029503, 41.686707, 46.688072>,  <38.262344, 41.605816, 46.516891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029503, 41.686707, 46.688072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861885, 42.041607, 46.765213>,  <38.761314, 42.254547, 46.811497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861885, 42.041607, 46.765213>,  <39.029503, 41.686707, 46.688072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861885, 42.041607, 46.765213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486825, 0.040269, 0.872571,
		0.766421, 0.459532, -0.448809,
		-0.419047, 0.887248, 0.192849,
		38.736172, 42.307781, 46.823067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552189, 42.088318, 46.881657>,  <39.029503, 41.686707, 46.688072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552189, 42.088318, 46.881657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223671, 42.263760, 47.027588>,  <39.026558, 42.369026, 47.115147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223671, 42.263760, 47.027588>,  <39.552189, 42.088318, 46.881657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223671, 42.263760, 47.027588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448765, 0.101839, 0.887828,
		0.352252, 0.892891, -0.280470,
		-0.821297, 0.438604, 0.364825,
		38.977283, 42.395340, 47.137035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741558, 42.753372, 47.111851>,  <39.552189, 42.088318, 46.881657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741558, 42.753372, 47.111851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.402122, 42.650265, 47.296658>,  <39.198463, 42.588402, 47.407543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.402122, 42.650265, 47.296658>,  <39.741558, 42.753372, 47.111851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402122, 42.650265, 47.296658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467188, 0.044707, 0.883027,
		-0.248270, 0.965172, 0.082488,
		-0.848586, -0.257766, 0.462016,
		39.147549, 42.572933, 47.435261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833435, 43.158001, 47.703205>,  <39.741558, 42.753372, 47.111851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833435, 43.158001, 47.703205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525459, 42.934265, 47.826057>,  <39.340675, 42.800022, 47.899769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525459, 42.934265, 47.826057>,  <39.833435, 43.158001, 47.703205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525459, 42.934265, 47.826057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427327, -0.094504, 0.899144,
		-0.473903, 0.823533, 0.311784,
		-0.769940, -0.559341, 0.307132,
		39.294476, 42.766464, 47.918198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601494, 43.376812, 48.407364>,  <39.833435, 43.158001, 47.703205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601494, 43.376812, 48.407364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566750, 42.985077, 48.334320>,  <39.545902, 42.750034, 48.290493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566750, 42.985077, 48.334320>,  <39.601494, 43.376812, 48.407364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566750, 42.985077, 48.334320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567912, -0.199274, 0.798602,
		-0.818494, -0.034341, 0.573489,
		-0.086857, -0.979342, -0.182607,
		39.540691, 42.691273, 48.279537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919693, 43.521614, 48.878082>,  <39.601494, 43.376812, 48.407364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919693, 43.521614, 48.878082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211544, 43.794922, 48.889343>,  <39.386654, 43.958908, 48.896099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211544, 43.794922, 48.889343>,  <38.919693, 43.521614, 48.878082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211544, 43.794922, 48.889343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651613, -0.707131, 0.274531,
		0.207484, -0.181962, -0.961166,
		0.729624, 0.683269, 0.028150,
		39.430431, 43.999901, 48.897789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240570, 43.508202, 48.456760>,  <38.919693, 43.521614, 48.878082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240570, 43.508202, 48.456760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210304, 43.554535, 48.852913>,  <38.192146, 43.582336, 49.090603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210304, 43.554535, 48.852913>,  <38.240570, 43.508202, 48.456760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210304, 43.554535, 48.852913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093553, 0.988024, -0.122707,
		-0.992735, -0.101938, -0.063923,
		-0.075666, 0.115835, 0.990382,
		38.187603, 43.589287, 49.150028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552387, 43.913036, 48.724525>,  <38.240570, 43.508202, 48.456760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552387, 43.913036, 48.724525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.862324, 43.968319, 48.971272>,  <38.048286, 44.001488, 49.119320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.862324, 43.968319, 48.971272>,  <37.552387, 43.913036, 48.724525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862324, 43.968319, 48.971272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001870, 0.976307, -0.216383,
		-0.632152, 0.166509, 0.756743,
		0.774843, 0.138202, 0.616863,
		38.094776, 44.009781, 49.156330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343723, 44.239830, 49.349144>,  <37.552387, 43.913036, 48.724525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343723, 44.239830, 49.349144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041656, 44.498158, 49.394123>,  <36.860416, 44.653152, 49.421112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041656, 44.498158, 49.394123>,  <37.343723, 44.239830, 49.349144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041656, 44.498158, 49.394123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214828, -0.081742, -0.973225,
		-0.619336, -0.759102, 0.200469,
		-0.755164, 0.645820, 0.112451,
		36.815109, 44.691902, 49.427856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703636, 44.085281, 48.955406>,  <37.343723, 44.239830, 49.349144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703636, 44.085281, 48.955406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654812, 44.475525, 49.028381>,  <36.625519, 44.709671, 49.072166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654812, 44.475525, 49.028381>,  <36.703636, 44.085281, 48.955406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654812, 44.475525, 49.028381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376261, 0.124607, -0.918096,
		-0.918438, -0.180706, 0.351875,
		-0.122059, 0.975612, 0.182436,
		36.618195, 44.768208, 49.083111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013908, 44.269283, 48.724293>,  <36.703636, 44.085281, 48.955406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013908, 44.269283, 48.724293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.204079, 44.621174, 48.721241>,  <36.318180, 44.832306, 48.719410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.204079, 44.621174, 48.721241>,  <36.013908, 44.269283, 48.724293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204079, 44.621174, 48.721241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274226, 0.139948, -0.951428,
		-0.835927, 0.454422, 0.307778,
		0.475423, 0.879724, -0.007628,
		36.346706, 44.885090, 48.718952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517334, 44.722775, 48.493927>,  <36.013908, 44.269283, 48.724293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517334, 44.722775, 48.493927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880047, 44.872265, 48.415874>,  <36.097675, 44.961960, 48.369045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880047, 44.872265, 48.415874>,  <35.517334, 44.722775, 48.493927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880047, 44.872265, 48.415874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264825, 0.144788, -0.953365,
		-0.328041, 0.916171, 0.230262,
		0.906784, 0.373722, -0.195129,
		36.152081, 44.984383, 48.357334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454670, 45.402264, 48.091190>,  <35.517334, 44.722775, 48.493927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454670, 45.402264, 48.091190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820698, 45.260315, 48.014549>,  <36.040314, 45.175144, 47.968567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820698, 45.260315, 48.014549>,  <35.454670, 45.402264, 48.091190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820698, 45.260315, 48.014549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083886, 0.297206, -0.951121,
		0.394474, 0.886415, 0.242195,
		0.915070, -0.354875, -0.191598,
		36.095219, 45.153851, 47.957069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562218, 45.754444, 47.538738>,  <35.454670, 45.402264, 48.091190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562218, 45.754444, 47.538738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854496, 45.481796, 47.523399>,  <36.029861, 45.318207, 47.514198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854496, 45.481796, 47.523399>,  <35.562218, 45.754444, 47.538738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854496, 45.481796, 47.523399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029357, 0.024744, -0.999263,
		0.682070, 0.731284, -0.001930,
		0.730697, -0.681624, -0.038345,
		36.073704, 45.277309, 47.511894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949696, 46.034149, 47.073318>,  <35.562218, 45.754444, 47.538738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949696, 46.034149, 47.073318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063526, 45.651077, 47.090633>,  <36.131824, 45.421234, 47.101025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063526, 45.651077, 47.090633>,  <35.949696, 46.034149, 47.073318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063526, 45.651077, 47.090633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001883, -0.044600, -0.999003,
		0.958651, 0.284375, -0.010888,
		0.284578, -0.957675, 0.043291,
		36.148899, 45.363773, 47.103622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563629, 45.881783, 46.590603>,  <35.949696, 46.034149, 47.073318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563629, 45.881783, 46.590603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423386, 45.510620, 46.641300>,  <36.339241, 45.287922, 46.671719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423386, 45.510620, 46.641300>,  <36.563629, 45.881783, 46.590603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423386, 45.510620, 46.641300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002701, -0.136334, -0.990659,
		0.936518, -0.346991, 0.050306,
		-0.350609, -0.927906, 0.126742,
		36.318203, 45.232246, 46.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956161, 45.482288, 46.174679>,  <36.563629, 45.881783, 46.590603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956161, 45.482288, 46.174679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636517, 45.244976, 46.213528>,  <36.444729, 45.102589, 46.236835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636517, 45.244976, 46.213528>,  <36.956161, 45.482288, 46.174679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636517, 45.244976, 46.213528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004345, -0.155845, -0.987772,
		0.601163, -0.789765, 0.121960,
		-0.799114, -0.593282, 0.097120,
		36.396782, 45.066990, 46.242664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125477, 44.832798, 45.836124>,  <36.956161, 45.482288, 46.174679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125477, 44.832798, 45.836124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728245, 44.797989, 45.867657>,  <36.489906, 44.777103, 45.886578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728245, 44.797989, 45.867657>,  <37.125477, 44.832798, 45.836124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728245, 44.797989, 45.867657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056706, -0.232434, -0.970958,
		0.102818, -0.968711, 0.225891,
		-0.993083, -0.087023, 0.078830,
		36.430321, 44.771881, 45.891304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869488, 44.108482, 45.666138>,  <37.125477, 44.832798, 45.836124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869488, 44.108482, 45.666138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518333, 44.298084, 45.638878>,  <36.307640, 44.411846, 45.622524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518333, 44.298084, 45.638878>,  <36.869488, 44.108482, 45.666138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518333, 44.298084, 45.638878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162151, -0.428131, -0.889050,
		-0.450593, -0.769428, 0.452708,
		-0.877879, 0.474007, -0.068149,
		36.254967, 44.440285, 45.618435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256660, 43.637756, 45.539513>,  <36.869488, 44.108482, 45.666138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256660, 43.637756, 45.539513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154190, 43.992321, 45.385288>,  <36.092709, 44.205059, 45.292755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154190, 43.992321, 45.385288>,  <36.256660, 43.637756, 45.539513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154190, 43.992321, 45.385288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168830, -0.433768, -0.885065,
		-0.951772, -0.161639, 0.260774,
		-0.256177, 0.886407, -0.385559,
		36.077335, 44.258244, 45.269619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619411, 43.529442, 45.159710>,  <36.256660, 43.637756, 45.539513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619411, 43.529442, 45.159710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769196, 43.868973, 45.010433>,  <35.859066, 44.072689, 44.920868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769196, 43.868973, 45.010433>,  <35.619411, 43.529442, 45.159710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769196, 43.868973, 45.010433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222273, -0.308572, -0.924866,
		-0.900207, 0.429280, 0.073122,
		0.374463, 0.848824, -0.373196,
		35.881535, 44.123619, 44.898476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065266, 43.970192, 44.731171>,  <35.619411, 43.529442, 45.159710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065266, 43.970192, 44.731171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437195, 44.035088, 44.599045>,  <35.660351, 44.074024, 44.519768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437195, 44.035088, 44.599045>,  <35.065266, 43.970192, 44.731171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437195, 44.035088, 44.599045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311610, -0.130414, -0.941218,
		-0.195778, 0.978096, -0.070707,
		0.929823, 0.162236, -0.330316,
		35.716141, 44.083759, 44.499950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321579, 44.065399, 44.576130>,  <35.065266, 43.970192, 44.731171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321579, 44.065399, 44.576130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039219, 43.790958, 44.646519>,  <33.869804, 43.626293, 44.688751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.039219, 43.790958, 44.646519>,  <34.321579, 44.065399, 44.576130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039219, 43.790958, 44.646519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071791, 0.316467, 0.945883,
		-0.704666, 0.655063, -0.272650,
		-0.705898, -0.686105, 0.175976,
		33.827450, 43.585125, 44.699310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842339, 44.451660, 44.996571>,  <34.321579, 44.065399, 44.576130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842339, 44.451660, 44.996571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779881, 44.057938, 45.029453>,  <33.742405, 43.821705, 45.049183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779881, 44.057938, 45.029453>,  <33.842339, 44.451660, 44.996571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779881, 44.057938, 45.029453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004697, 0.083963, 0.996458,
		-0.987723, 0.155205, -0.017734,
		-0.156145, -0.984308, 0.082203,
		33.733036, 43.762646, 45.054115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240353, 44.327995, 45.462978>,  <33.842339, 44.451660, 44.996571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240353, 44.327995, 45.462978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458500, 43.993206, 45.481121>,  <33.589386, 43.792332, 45.492004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458500, 43.993206, 45.481121>,  <33.240353, 44.327995, 45.462978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458500, 43.993206, 45.481121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109955, -0.017797, 0.993777,
		-0.830956, -0.546957, -0.101735,
		0.545364, -0.836971, 0.045352,
		33.622108, 43.742115, 45.494728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960388, 43.929245, 45.953625>,  <33.240353, 44.327995, 45.462978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960388, 43.929245, 45.953625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300404, 43.720554, 45.924709>,  <33.504414, 43.595341, 45.907360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300404, 43.720554, 45.924709>,  <32.960388, 43.929245, 45.953625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300404, 43.720554, 45.924709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033321, -0.190234, 0.981173,
		-0.525660, -0.831629, -0.179091,
		0.850042, -0.521731, -0.072287,
		33.555416, 43.564034, 45.903023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895157, 43.224655, 46.208630>,  <32.960388, 43.929245, 45.953625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895157, 43.224655, 46.208630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285110, 43.309578, 46.235535>,  <33.519081, 43.360531, 46.251678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285110, 43.309578, 46.235535>,  <32.895157, 43.224655, 46.208630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285110, 43.309578, 46.235535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033760, -0.157649, 0.986918,
		0.220135, -0.964402, -0.146522,
		0.974885, 0.212308, 0.067262,
		33.577576, 43.373272, 46.255714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217670, 42.661400, 46.553238>,  <32.895157, 43.224655, 46.208630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217670, 42.661400, 46.553238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496735, 42.945988, 46.586918>,  <33.664173, 43.116741, 46.607128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496735, 42.945988, 46.586918>,  <33.217670, 42.661400, 46.553238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496735, 42.945988, 46.586918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102698, -0.215630, 0.971060,
		0.709033, -0.668819, -0.223502,
		0.697657, 0.711466, 0.084202,
		33.706032, 43.159428, 46.612179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728401, 42.366005, 46.875961>,  <33.217670, 42.661400, 46.553238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728401, 42.366005, 46.875961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793751, 42.757893, 46.922356>,  <33.832958, 42.993027, 46.950191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793751, 42.757893, 46.922356>,  <33.728401, 42.366005, 46.875961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793751, 42.757893, 46.922356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244977, -0.154168, 0.957193,
		0.955665, -0.127965, -0.265196,
		0.163372, 0.979723, 0.115984,
		33.842762, 43.051811, 46.957150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481533, 42.144119, 46.884182>,  <33.728401, 42.366005, 46.875961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481533, 42.144119, 46.884182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484829, 41.773674, 47.035046>,  <34.486805, 41.551407, 47.125565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484829, 41.773674, 47.035046>,  <34.481533, 42.144119, 46.884182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484829, 41.773674, 47.035046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078107, -0.376614, -0.923072,
		0.996911, -0.021852, -0.075439,
		0.008241, -0.926113, 0.377157,
		34.487301, 41.495842, 47.148193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959820, 41.791527, 46.365509>,  <34.481533, 42.144119, 46.884182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959820, 41.791527, 46.365509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738506, 41.536762, 46.580250>,  <34.605717, 41.383904, 46.709095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738506, 41.536762, 46.580250>,  <34.959820, 41.791527, 46.365509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738506, 41.536762, 46.580250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057634, -0.613676, -0.787452,
		0.830995, -0.466627, 0.302830,
		-0.553286, -0.636915, 0.536855,
		34.572521, 41.345688, 46.741306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300060, 41.108273, 46.480080>,  <34.959820, 41.791527, 46.365509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300060, 41.108273, 46.480080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905964, 41.049458, 46.515144>,  <34.669506, 41.014168, 46.536182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905964, 41.049458, 46.515144>,  <35.300060, 41.108273, 46.480080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905964, 41.049458, 46.515144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041860, -0.703462, -0.709499,
		0.165993, -0.695356, 0.699233,
		-0.985238, -0.147042, 0.087662,
		34.610394, 41.005344, 46.541443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301384, 40.383652, 46.216267>,  <35.300060, 41.108273, 46.480080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301384, 40.383652, 46.216267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919903, 40.503674, 46.224476>,  <34.691013, 40.575687, 46.229401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919903, 40.503674, 46.224476>,  <35.301384, 40.383652, 46.216267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919903, 40.503674, 46.224476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145197, -0.399577, -0.905127,
		-0.263383, -0.866202, 0.424644,
		-0.953702, 0.300053, 0.020528,
		34.633793, 40.593689, 46.230633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940960, 39.793213, 46.036884>,  <35.301384, 40.383652, 46.216267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940960, 39.793213, 46.036884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702366, 40.106163, 45.965229>,  <34.559208, 40.293934, 45.922237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702366, 40.106163, 45.965229>,  <34.940960, 39.793213, 46.036884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702366, 40.106163, 45.965229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365340, -0.463389, -0.807339,
		-0.714652, -0.416124, 0.562240,
		-0.596489, 0.782375, -0.179135,
		34.523418, 40.340874, 45.911488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401669, 39.544289, 45.670963>,  <34.940960, 39.793213, 46.036884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401669, 39.544289, 45.670963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376244, 39.929317, 45.565578>,  <34.360989, 40.160336, 45.502346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376244, 39.929317, 45.565578>,  <34.401669, 39.544289, 45.670963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376244, 39.929317, 45.565578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221745, -0.271022, -0.936683,
		-0.973031, -0.001116, 0.230673,
		-0.063562, 0.962572, -0.263465,
		34.357174, 40.218090, 45.486538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793552, 39.643349, 45.141663>,  <34.401669, 39.544289, 45.670963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793552, 39.643349, 45.141663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979134, 39.997009, 45.119629>,  <34.090481, 40.209206, 45.106407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979134, 39.997009, 45.119629>,  <33.793552, 39.643349, 45.141663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979134, 39.997009, 45.119629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160627, 0.022811, -0.986752,
		-0.871178, 0.466650, 0.152601,
		0.463949, 0.884148, -0.055085,
		34.118317, 40.262253, 45.103104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.126617, 39.290623, 48.606503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.051285, 39.683464, 48.605209>,  <40.006084, 39.919167, 48.604431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.051285, 39.683464, 48.605209>,  <40.126617, 39.290623, 48.606503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051285, 39.683464, 48.605209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280675, -0.056979, -0.958110,
		-0.941144, -0.179534, 0.286382,
		-0.188332, 0.982100, -0.003235,
		39.994785, 39.978096, 48.604240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328827, 39.425476, 48.326756>,  <40.126617, 39.290623, 48.606503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328827, 39.425476, 48.326756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.581951, 39.731823, 48.281151>,  <39.733826, 39.915630, 48.253788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.581951, 39.731823, 48.281151>,  <39.328827, 39.425476, 48.326756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581951, 39.731823, 48.281151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148797, -0.024222, -0.988571,
		-0.759875, 0.642543, 0.098630,
		0.632810, 0.765867, -0.114014,
		39.771793, 39.961582, 48.246948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057880, 39.788498, 47.807423>,  <39.328827, 39.425476, 48.326756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057880, 39.788498, 47.807423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.430752, 39.932526, 47.822392>,  <39.654472, 40.018944, 47.831371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.430752, 39.932526, 47.822392>,  <39.057880, 39.788498, 47.807423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430752, 39.932526, 47.822392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019955, 0.052098, -0.998443,
		-0.361458, 0.931470, 0.041379,
		0.932175, 0.360069, 0.037419,
		39.710403, 40.040546, 47.833618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022236, 40.404861, 47.425327>,  <39.057880, 39.788498, 47.807423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022236, 40.404861, 47.425327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.408657, 40.301785, 47.432636>,  <39.640511, 40.239937, 47.437023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.408657, 40.301785, 47.432636>,  <39.022236, 40.404861, 47.425327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408657, 40.301785, 47.432636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075979, 0.215802, -0.973477,
		0.246914, 0.941820, 0.228055,
		0.966054, -0.257692, 0.018274,
		39.698475, 40.224476, 47.438118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316593, 40.863556, 47.026260>,  <39.022236, 40.404861, 47.425327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316593, 40.863556, 47.026260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.579586, 40.562336, 47.036350>,  <39.737381, 40.381603, 47.042404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.579586, 40.562336, 47.036350>,  <39.316593, 40.863556, 47.026260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579586, 40.562336, 47.036350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127539, 0.078233, -0.988743,
		0.742600, 0.653295, 0.147479,
		0.657479, -0.753050, 0.025225,
		39.776829, 40.336422, 47.043919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866203, 41.130386, 46.705658>,  <39.316593, 40.863556, 47.026260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866203, 41.130386, 46.705658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.884624, 40.732086, 46.673782>,  <39.895679, 40.493107, 46.654655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.884624, 40.732086, 46.673782>,  <39.866203, 41.130386, 46.705658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884624, 40.732086, 46.673782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001654, 0.079701, -0.996817,
		0.998938, 0.046040, 0.002023,
		0.046055, -0.995755, -0.079693,
		39.898441, 40.433361, 46.649876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403889, 40.886879, 46.149124>,  <39.866203, 41.130386, 46.705658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403889, 40.886879, 46.149124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.190105, 40.553154, 46.203194>,  <40.061836, 40.352917, 46.235638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.190105, 40.553154, 46.203194>,  <40.403889, 40.886879, 46.149124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190105, 40.553154, 46.203194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006609, -0.155805, -0.987766,
		0.845169, -0.528814, 0.077758,
		-0.534459, -0.834315, 0.135176,
		40.029766, 40.302860, 46.243748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745548, 40.524384, 45.661240>,  <40.403889, 40.886879, 46.149124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745548, 40.524384, 45.661240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.390053, 40.355682, 45.733101>,  <40.176754, 40.254463, 45.776218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.390053, 40.355682, 45.733101>,  <40.745548, 40.524384, 45.661240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390053, 40.355682, 45.733101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132886, -0.138047, -0.981471,
		0.438734, -0.896142, 0.066643,
		-0.888738, -0.421749, 0.179650,
		40.123432, 40.229156, 45.786995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728317, 39.832027, 45.328770>,  <40.745548, 40.524384, 45.661240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728317, 39.832027, 45.328770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.336266, 39.891178, 45.381641>,  <40.101032, 39.926670, 45.413364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.336266, 39.891178, 45.381641>,  <40.728317, 39.832027, 45.328770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336266, 39.891178, 45.381641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188024, -0.480603, -0.856544,
		-0.063139, -0.864380, 0.498859,
		-0.980133, 0.147879, 0.132180,
		40.042225, 39.935543, 45.421295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385174, 39.113049, 45.345474>,  <40.728317, 39.832027, 45.328770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385174, 39.113049, 45.345474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.088543, 39.373970, 45.282784>,  <39.910564, 39.530521, 45.245171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.088543, 39.373970, 45.282784>,  <40.385174, 39.113049, 45.345474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088543, 39.373970, 45.282784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296883, -0.528592, -0.795268,
		-0.601597, -0.543226, 0.585650,
		-0.741580, 0.652301, -0.156724,
		39.866070, 39.569660, 45.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746834, 38.725266, 45.195549>,  <40.385174, 39.113049, 45.345474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746834, 38.725266, 45.195549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.644909, 39.075142, 45.030632>,  <39.583755, 39.285069, 44.931683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.644909, 39.075142, 45.030632>,  <39.746834, 38.725266, 45.195549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644909, 39.075142, 45.030632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312491, -0.477979, -0.820905,
		-0.915106, -0.080339, 0.395128,
		-0.254814, 0.874689, -0.412297,
		39.568466, 39.337547, 44.906944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065701, 38.619804, 44.838902>,  <39.746834, 38.725266, 45.195549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065701, 38.619804, 44.838902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.213474, 38.940666, 44.651260>,  <39.302139, 39.133183, 44.538673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.213474, 38.940666, 44.651260>,  <39.065701, 38.619804, 44.838902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213474, 38.940666, 44.651260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184215, -0.431581, -0.883064,
		-0.910814, 0.412651, -0.011671,
		0.369435, 0.802158, -0.469107,
		39.324306, 39.181313, 44.510529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403156, 38.878933, 44.976315>,  <39.065701, 38.619804, 44.838902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403156, 38.878933, 44.976315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.004128, 38.851135, 44.978260>,  <37.764709, 38.834457, 44.979427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.004128, 38.851135, 44.978260>,  <38.403156, 38.878933, 44.976315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004128, 38.851135, 44.978260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029664, 0.486946, 0.872928,
		-0.063032, 0.870663, -0.487825,
		-0.997571, -0.069493, 0.004866,
		37.704857, 38.830288, 44.979721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168461, 39.498932, 45.168266>,  <38.403156, 38.878933, 44.976315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168461, 39.498932, 45.168266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874878, 39.244514, 45.263557>,  <37.698727, 39.091866, 45.320732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874878, 39.244514, 45.263557>,  <38.168461, 39.498932, 45.168266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874878, 39.244514, 45.263557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144509, 0.488958, 0.860254,
		-0.663640, 0.596968, -0.450791,
		-0.733962, -0.636042, 0.238225,
		37.654690, 39.053703, 45.335026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606129, 39.915359, 45.416260>,  <38.168461, 39.498932, 45.168266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606129, 39.915359, 45.416260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553017, 39.544106, 45.555359>,  <37.521149, 39.321354, 45.638817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553017, 39.544106, 45.555359>,  <37.606129, 39.915359, 45.416260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553017, 39.544106, 45.555359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249102, 0.370841, 0.894665,
		-0.959332, 0.032167, -0.280440,
		-0.132778, -0.928139, 0.347747,
		37.513184, 39.265663, 45.659683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012424, 39.936005, 45.758888>,  <37.606129, 39.915359, 45.416260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012424, 39.936005, 45.758888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173130, 39.592339, 45.885643>,  <37.269554, 39.386139, 45.961697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173130, 39.592339, 45.885643>,  <37.012424, 39.936005, 45.758888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173130, 39.592339, 45.885643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420935, 0.134057, 0.897130,
		-0.813266, -0.493824, -0.307794,
		0.401763, -0.859166, 0.316892,
		37.293659, 39.334587, 45.980709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528839, 39.776390, 46.074818>,  <37.012424, 39.936005, 45.758888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528839, 39.776390, 46.074818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.834621, 39.562531, 46.218906>,  <37.018089, 39.434216, 46.305359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.834621, 39.562531, 46.218906>,  <36.528839, 39.776390, 46.074818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834621, 39.562531, 46.218906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306549, 0.190092, 0.932680,
		-0.567131, -0.823418, -0.018579,
		0.764454, -0.534647, 0.360225,
		37.063957, 39.402138, 46.326973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262730, 39.355274, 46.627327>,  <36.528839, 39.776390, 46.074818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262730, 39.355274, 46.627327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652740, 39.348789, 46.715919>,  <36.886749, 39.344898, 46.769073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652740, 39.348789, 46.715919>,  <36.262730, 39.355274, 46.627327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652740, 39.348789, 46.715919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216372, 0.155235, 0.963891,
		-0.050005, -0.987745, 0.147852,
		0.975029, -0.016208, 0.221483,
		36.945248, 39.343925, 46.782364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265987, 39.046028, 47.314423>,  <36.262730, 39.355274, 46.627327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265987, 39.046028, 47.314423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.635059, 39.183815, 47.245129>,  <36.856503, 39.266487, 47.203552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.635059, 39.183815, 47.245129>,  <36.265987, 39.046028, 47.314423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635059, 39.183815, 47.245129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157518, 0.073339, 0.984789,
		0.351932, -0.935930, 0.013408,
		0.922677, 0.344466, -0.173236,
		36.911861, 39.287155, 47.193157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784519, 38.749130, 47.783386>,  <36.265987, 39.046028, 47.314423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784519, 38.749130, 47.783386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.902637, 39.120991, 47.695251>,  <36.973507, 39.344109, 47.642372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.902637, 39.120991, 47.695251>,  <36.784519, 38.749130, 47.783386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902637, 39.120991, 47.695251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014901, 0.235074, 0.971863,
		0.955290, -0.283702, 0.083269,
		0.295294, 0.929653, -0.220336,
		36.991226, 39.399887, 47.629150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238186, 38.866013, 48.273689>,  <36.784519, 38.749130, 47.783386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238186, 38.866013, 48.273689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.146198, 39.232204, 48.141621>,  <37.091007, 39.451920, 48.062378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.146198, 39.232204, 48.141621>,  <37.238186, 38.866013, 48.273689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146198, 39.232204, 48.141621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119543, 0.310125, 0.943150,
		0.965829, 0.256363, 0.038121,
		-0.229966, 0.915478, -0.330174,
		37.077209, 39.506847, 48.042568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680073, 39.322304, 48.553654>,  <37.238186, 38.866013, 48.273689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680073, 39.322304, 48.553654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.349892, 39.530140, 48.465424>,  <37.151783, 39.654842, 48.412487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.349892, 39.530140, 48.465424>,  <37.680073, 39.322304, 48.553654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349892, 39.530140, 48.465424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059904, 0.307925, 0.949523,
		0.561279, 0.797002, -0.223053,
		-0.825456, 0.519586, -0.220576,
		37.102257, 39.686016, 48.399250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680370, 39.889454, 48.948212>,  <37.680073, 39.322304, 48.553654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680370, 39.889454, 48.948212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.293148, 39.926903, 48.855167>,  <37.060814, 39.949371, 48.799339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.293148, 39.926903, 48.855167>,  <37.680370, 39.889454, 48.948212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293148, 39.926903, 48.855167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198386, 0.281395, 0.938861,
		0.153352, 0.955014, -0.253832,
		-0.968053, 0.093619, -0.232614,
		37.002731, 39.954990, 48.785385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506290, 40.499535, 49.264416>,  <37.680370, 39.889454, 48.948212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506290, 40.499535, 49.264416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.174515, 40.282673, 49.210594>,  <36.975449, 40.152554, 49.178303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.174515, 40.282673, 49.210594>,  <37.506290, 40.499535, 49.264416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174515, 40.282673, 49.210594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337307, 0.294100, 0.894276,
		-0.445266, 0.787129, -0.426810,
		-0.829435, -0.542156, -0.134552,
		36.925686, 40.120026, 49.170227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975883, 40.880611, 49.478008>,  <37.506290, 40.499535, 49.264416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975883, 40.880611, 49.478008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805088, 40.519249, 49.493713>,  <36.702610, 40.302433, 49.503136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805088, 40.519249, 49.493713>,  <36.975883, 40.880611, 49.478008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805088, 40.519249, 49.493713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333825, 0.197835, 0.921641,
		-0.840383, 0.380421, -0.386052,
		-0.426986, -0.903405, 0.039264,
		36.676991, 40.248226, 49.505493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315014, 40.986935, 49.626442>,  <36.975883, 40.880611, 49.478008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315014, 40.986935, 49.626442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.437584, 40.629009, 49.756313>,  <36.511127, 40.414253, 49.834236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.437584, 40.629009, 49.756313>,  <36.315014, 40.986935, 49.626442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437584, 40.629009, 49.756313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296860, 0.234241, 0.925746,
		-0.904420, -0.380058, -0.193856,
		0.306428, -0.894811, 0.324677,
		36.529514, 40.360565, 49.853718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527782, 41.145821, 48.950840>,  <36.315014, 40.986935, 49.626442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527782, 41.145821, 48.950840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287361, 41.390125, 49.157028>,  <36.143108, 41.536705, 49.280743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287361, 41.390125, 49.157028>,  <36.527782, 41.145821, 48.950840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287361, 41.390125, 49.157028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767732, -0.262008, -0.584756,
		-0.222078, -0.747221, 0.626372,
		-0.601056, 0.610747, 0.515480,
		36.107044, 41.573353, 49.311668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892826, 40.794403, 48.914207>,  <36.527782, 41.145821, 48.950840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892826, 40.794403, 48.914207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797192, 41.168606, 49.018261>,  <35.739811, 41.393127, 49.080692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797192, 41.168606, 49.018261>,  <35.892826, 40.794403, 48.914207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797192, 41.168606, 49.018261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704243, 0.017380, -0.709746,
		-0.668491, -0.352887, 0.654668,
		-0.239082, 0.935505, 0.260137,
		35.725468, 41.449257, 49.096302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212242, 40.782188, 48.967381>,  <35.892826, 40.794403, 48.914207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212242, 40.782188, 48.967381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.315643, 41.165756, 48.920658>,  <35.377682, 41.395897, 48.892624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.315643, 41.165756, 48.920658>,  <35.212242, 40.782188, 48.967381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315643, 41.165756, 48.920658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713050, 0.107830, -0.692771,
		-0.651719, 0.262371, 0.711634,
		0.258499, 0.958923, -0.116809,
		35.393192, 41.453434, 48.885616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597977, 41.110859, 49.033173>,  <35.212242, 40.782188, 48.967381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597977, 41.110859, 49.033173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.867382, 41.331184, 48.835999>,  <35.029026, 41.463379, 48.717693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.867382, 41.331184, 48.835999>,  <34.597977, 41.110859, 49.033173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867382, 41.331184, 48.835999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586694, -0.007294, -0.809776,
		-0.449633, 0.834595, 0.318248,
		0.673514, 0.550816, -0.492932,
		35.069435, 41.496429, 48.688118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164921, 41.537189, 48.700813>,  <34.597977, 41.110859, 49.033173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164921, 41.537189, 48.700813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.503956, 41.601868, 48.498650>,  <34.707378, 41.640675, 48.377350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.503956, 41.601868, 48.498650>,  <34.164921, 41.537189, 48.700813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503956, 41.601868, 48.498650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494511, -0.104781, -0.862832,
		-0.192477, 0.981261, -0.008849,
		0.847591, 0.161700, -0.505413,
		34.758232, 41.650379, 48.347027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985710, 41.994255, 48.214565>,  <34.164921, 41.537189, 48.700813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985710, 41.994255, 48.214565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.315796, 41.806660, 48.088665>,  <34.513847, 41.694103, 48.013123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.315796, 41.806660, 48.088665>,  <33.985710, 41.994255, 48.214565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315796, 41.806660, 48.088665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449157, -0.207016, -0.869139,
		0.342453, 0.858602, -0.381481,
		0.825217, -0.468984, -0.314754,
		34.563362, 41.665966, 47.994240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012978, 42.139954, 47.518387>,  <33.985710, 41.994255, 48.214565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012978, 42.139954, 47.518387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.261261, 41.827942, 47.550079>,  <34.410233, 41.640736, 47.569096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.261261, 41.827942, 47.550079>,  <34.012978, 42.139954, 47.518387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261261, 41.827942, 47.550079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236229, -0.282417, -0.929751,
		0.747606, 0.558390, -0.359564,
		0.620711, -0.780026, 0.079228,
		34.447475, 41.593933, 47.573849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651432, 42.555412, 47.464153>,  <34.012978, 42.139954, 47.518387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651432, 42.555412, 47.464153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.412376, 42.875866, 47.476818>,  <34.268944, 43.068138, 47.484417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.412376, 42.875866, 47.476818>,  <34.651432, 42.555412, 47.464153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412376, 42.875866, 47.476818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242206, 0.142754, 0.959665,
		0.764305, 0.581204, -0.279357,
		-0.597641, 0.801139, 0.031663,
		34.233086, 43.116207, 47.486317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950825, 42.921368, 47.862701>,  <34.651432, 42.555412, 47.464153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950825, 42.921368, 47.862701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.587379, 43.088028, 47.874203>,  <34.369312, 43.188026, 47.881104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.587379, 43.088028, 47.874203>,  <34.950825, 42.921368, 47.862701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587379, 43.088028, 47.874203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116594, 0.186952, 0.975425,
		0.401039, 0.889635, -0.218445,
		-0.908611, 0.416653, 0.028751,
		34.314796, 43.213024, 47.882828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025723, 43.516148, 48.274361>,  <34.950825, 42.921368, 47.862701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025723, 43.516148, 48.274361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628258, 43.475403, 48.293362>,  <34.389778, 43.450954, 48.304760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628258, 43.475403, 48.293362>,  <35.025723, 43.516148, 48.274361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628258, 43.475403, 48.293362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011707, 0.326508, 0.945122,
		-0.111783, 0.939689, -0.323246,
		-0.993664, -0.101864, 0.047499,
		34.330158, 43.444843, 48.307610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763512, 44.084682, 48.679153>,  <35.025723, 43.516148, 48.274361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763512, 44.084682, 48.679153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462570, 43.822227, 48.702656>,  <34.282005, 43.664753, 48.716759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462570, 43.822227, 48.702656>,  <34.763512, 44.084682, 48.679153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462570, 43.822227, 48.702656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163043, 0.271886, 0.948417,
		-0.638269, 0.703961, -0.311532,
		-0.752350, -0.656138, 0.058760,
		34.236866, 43.625385, 48.720284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191257, 44.451378, 48.982552>,  <34.763512, 44.084682, 48.679153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191257, 44.451378, 48.982552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136433, 44.063465, 49.063282>,  <34.103539, 43.830715, 49.111721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136433, 44.063465, 49.063282>,  <34.191257, 44.451378, 48.982552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136433, 44.063465, 49.063282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085879, 0.214611, 0.972916,
		-0.986832, 0.116019, -0.112700,
		-0.137064, -0.969784, 0.201822,
		34.095314, 43.772530, 49.123829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584133, 44.449001, 49.526367>,  <34.191257, 44.451378, 48.982552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584133, 44.449001, 49.526367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741745, 44.081802, 49.544331>,  <33.836311, 43.861485, 49.555107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741745, 44.081802, 49.544331>,  <33.584133, 44.449001, 49.526367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741745, 44.081802, 49.544331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002208, 0.047915, 0.998849,
		-0.919094, -0.393678, 0.016853,
		0.394033, -0.917999, 0.044907,
		33.859955, 43.806404, 49.557804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139423, 44.065781, 50.056969>,  <33.584133, 44.449001, 49.526367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139423, 44.065781, 50.056969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.495300, 43.885361, 50.028683>,  <33.708828, 43.777107, 50.011711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.495300, 43.885361, 50.028683>,  <33.139423, 44.065781, 50.056969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495300, 43.885361, 50.028683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096633, 0.034669, 0.994716,
		-0.446214, -0.891826, 0.074431,
		0.889694, -0.451049, -0.070710,
		33.762207, 43.750046, 50.007469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158142, 43.570328, 50.556183>,  <33.139423, 44.065781, 50.056969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158142, 43.570328, 50.556183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552048, 43.614658, 50.502579>,  <33.788391, 43.641258, 50.470417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552048, 43.614658, 50.502579>,  <33.158142, 43.570328, 50.556183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552048, 43.614658, 50.502579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140487, -0.052848, 0.988671,
		0.102488, -0.992433, -0.067613,
		0.984763, 0.110826, -0.134008,
		33.847477, 43.647907, 50.462376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559769, 43.211662, 51.076874>,  <33.158142, 43.570328, 50.556183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559769, 43.211662, 51.076874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.841820, 43.467178, 50.953754>,  <34.011051, 43.620487, 50.879883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.841820, 43.467178, 50.953754>,  <33.559769, 43.211662, 51.076874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841820, 43.467178, 50.953754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437873, -0.050832, 0.897599,
		0.557734, -0.767697, -0.315553,
		0.705124, 0.638793, -0.307803,
		34.053356, 43.658817, 50.861412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.488003, 38.858757, 35.077965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735912, 39.160259, 35.165359>,  <34.884659, 39.341160, 35.217796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735912, 39.160259, 35.165359>,  <34.488003, 38.858757, 35.077965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735912, 39.160259, 35.165359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577798, 0.249876, 0.776989,
		0.531064, -0.607797, 0.590385,
		0.619774, 0.753754, 0.218483,
		34.921844, 39.386387, 35.230904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712055, 38.837524, 35.777531>,  <34.488003, 38.858757, 35.077965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712055, 38.837524, 35.777531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750664, 39.223217, 35.678783>,  <34.773830, 39.454632, 35.619537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750664, 39.223217, 35.678783>,  <34.712055, 38.837524, 35.777531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750664, 39.223217, 35.678783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373539, 0.264987, 0.888960,
		0.922579, 0.006410, 0.385755,
		0.096522, 0.964231, -0.246866,
		34.779621, 39.512486, 35.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046001, 39.154938, 36.408051>,  <34.712055, 38.837524, 35.777531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046001, 39.154938, 36.408051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887222, 39.459354, 36.202820>,  <34.791954, 39.642006, 36.079681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887222, 39.459354, 36.202820>,  <35.046001, 39.154938, 36.408051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887222, 39.459354, 36.202820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353786, 0.388936, 0.850625,
		0.846918, 0.519170, 0.114861,
		-0.396945, 0.761046, -0.513072,
		34.768139, 39.687668, 36.048897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069057, 39.615650, 37.005241>,  <35.046001, 39.154938, 36.408051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069057, 39.615650, 37.005241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852955, 39.791149, 36.718014>,  <34.723293, 39.896446, 36.545677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852955, 39.791149, 36.718014>,  <35.069057, 39.615650, 37.005241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852955, 39.791149, 36.718014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573058, 0.433057, 0.695749,
		0.616222, 0.787379, 0.017464,
		-0.540255, 0.438744, -0.718073,
		34.690880, 39.922771, 36.502590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210926, 40.385792, 37.117947>,  <35.069057, 39.615650, 37.005241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210926, 40.385792, 37.117947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854584, 40.328995, 36.945332>,  <34.640778, 40.294918, 36.841763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854584, 40.328995, 36.945332>,  <35.210926, 40.385792, 37.117947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854584, 40.328995, 36.945332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433693, 0.548616, 0.714794,
		0.135252, 0.823929, -0.550317,
		-0.890852, -0.141991, -0.431533,
		34.587330, 40.286396, 36.815872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940960, 40.968838, 37.140217>,  <35.210926, 40.385792, 37.117947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940960, 40.968838, 37.140217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618900, 40.741272, 37.073193>,  <34.425667, 40.604733, 37.032978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618900, 40.741272, 37.073193>,  <34.940960, 40.968838, 37.140217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618900, 40.741272, 37.073193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475208, 0.449807, 0.756209,
		-0.354849, 0.688484, -0.632513,
		-0.805146, -0.568915, -0.167559,
		34.377357, 40.570599, 37.022926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379097, 41.438667, 37.151009>,  <34.940960, 40.968838, 37.140217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379097, 41.438667, 37.151009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192654, 41.085876, 37.178925>,  <34.080788, 40.874203, 37.195675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192654, 41.085876, 37.178925>,  <34.379097, 41.438667, 37.151009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192654, 41.085876, 37.178925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600317, 0.373229, 0.707332,
		-0.649897, 0.287793, -0.703427,
		-0.466104, -0.881973, 0.069793,
		34.052822, 40.821285, 37.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617485, 41.482822, 37.065365>,  <34.379097, 41.438667, 37.151009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617485, 41.482822, 37.065365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715664, 41.179382, 37.306786>,  <33.774570, 40.997318, 37.451637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715664, 41.179382, 37.306786>,  <33.617485, 41.482822, 37.065365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715664, 41.179382, 37.306786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556350, 0.399628, 0.728542,
		-0.793871, -0.514603, -0.323962,
		0.245446, -0.758605, 0.603553,
		33.789299, 40.951801, 37.487850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005550, 41.457470, 37.459743>,  <33.617485, 41.482822, 37.065365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005550, 41.457470, 37.459743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270844, 41.239651, 37.665108>,  <33.430019, 41.108959, 37.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270844, 41.239651, 37.665108>,  <33.005550, 41.457470, 37.459743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270844, 41.239651, 37.665108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437937, 0.273912, 0.856261,
		-0.606903, -0.792743, -0.056809,
		0.663234, -0.544546, 0.513410,
		33.469814, 41.076286, 37.819130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650272, 41.154839, 37.982567>,  <33.005550, 41.457470, 37.459743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650272, 41.154839, 37.982567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032074, 41.156765, 38.101837>,  <33.261154, 41.157921, 38.173397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032074, 41.156765, 38.101837>,  <32.650272, 41.154839, 37.982567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032074, 41.156765, 38.101837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292981, 0.201618, 0.934619,
		-0.055614, -0.979452, 0.193856,
		0.954500, 0.004819, 0.298174,
		33.318424, 41.158211, 38.191288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613605, 40.996128, 38.603168>,  <32.650272, 41.154839, 37.982567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613605, 40.996128, 38.603168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992947, 41.118633, 38.636223>,  <33.220551, 41.192135, 38.656055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992947, 41.118633, 38.636223>,  <32.613605, 40.996128, 38.603168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992947, 41.118633, 38.636223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129891, 0.137264, 0.981981,
		0.289399, -0.942000, 0.169955,
		0.948355, 0.306260, 0.082633,
		33.277454, 41.210510, 38.661015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981201, 40.636414, 39.153820>,  <32.613605, 40.996128, 38.603168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981201, 40.636414, 39.153820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196827, 40.971012, 39.114445>,  <33.326202, 41.171772, 39.090820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196827, 40.971012, 39.114445>,  <32.981201, 40.636414, 39.153820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196827, 40.971012, 39.114445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089899, 0.173350, 0.980749,
		0.837455, -0.519835, 0.168647,
		0.539062, 0.836494, -0.098440,
		33.358547, 41.221962, 39.084911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104431, 39.910564, 39.101315>,  <32.981201, 40.636414, 39.153820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104431, 39.910564, 39.101315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014820, 39.581009, 39.309551>,  <32.961056, 39.383274, 39.434494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014820, 39.581009, 39.309551>,  <33.104431, 39.910564, 39.101315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014820, 39.581009, 39.309551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054723, -0.522692, -0.850763,
		0.973046, -0.219080, 0.072009,
		-0.224024, -0.823892, 0.520593,
		32.947613, 39.333843, 39.465729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488430, 39.356049, 38.878441>,  <33.104431, 39.910564, 39.101315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488430, 39.356049, 38.878441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176865, 39.183216, 39.060257>,  <32.989925, 39.079517, 39.169346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176865, 39.183216, 39.060257>,  <33.488430, 39.356049, 38.878441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176865, 39.183216, 39.060257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112123, -0.617170, -0.778800,
		0.617032, -0.657579, 0.432274,
		-0.778909, -0.432077, 0.454543,
		32.943192, 39.053593, 39.196621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616615, 38.687458, 38.634380>,  <33.488430, 39.356049, 38.878441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616615, 38.687458, 38.634380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240997, 38.669128, 38.770676>,  <33.015629, 38.658131, 38.852451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240997, 38.669128, 38.770676>,  <33.616615, 38.687458, 38.634380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240997, 38.669128, 38.770676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231666, -0.647953, -0.725595,
		0.254035, -0.760301, 0.597837,
		-0.939041, -0.045828, 0.340738,
		32.959286, 38.655380, 38.872898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365009, 37.956409, 38.576534>,  <33.616615, 38.687458, 38.634380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365009, 37.956409, 38.576534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044743, 38.195683, 38.589924>,  <32.852585, 38.339245, 38.597958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044743, 38.195683, 38.589924>,  <33.365009, 37.956409, 38.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044743, 38.195683, 38.589924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462965, -0.582281, -0.668291,
		-0.380265, -0.550574, 0.743147,
		-0.800664, 0.598179, 0.033475,
		32.804543, 38.375137, 38.599968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907467, 37.545048, 38.653343>,  <33.365009, 37.956409, 38.576534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907467, 37.545048, 38.653343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730576, 37.862869, 38.486912>,  <32.624443, 38.053562, 38.387054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730576, 37.862869, 38.486912>,  <32.907467, 37.545048, 38.653343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730576, 37.862869, 38.486912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535341, -0.606038, -0.588327,
		-0.719616, -0.037430, 0.693362,
		-0.442225, 0.794554, -0.416077,
		32.597908, 38.101234, 38.362087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301792, 37.308353, 38.680428>,  <32.907467, 37.545048, 38.653343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301792, 37.308353, 38.680428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308781, 37.621796, 38.432018>,  <32.312973, 37.809860, 38.282974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308781, 37.621796, 38.432018>,  <32.301792, 37.308353, 38.680428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308781, 37.621796, 38.432018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414895, -0.559431, -0.717565,
		-0.909701, 0.270198, 0.315336,
		0.017476, 0.783601, -0.621018,
		32.314022, 37.856876, 38.245712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684633, 37.339504, 38.343338>,  <32.301792, 37.308353, 38.680428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684633, 37.339504, 38.343338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912207, 37.556179, 38.095825>,  <32.048752, 37.686184, 37.947319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912207, 37.556179, 38.095825>,  <31.684633, 37.339504, 38.343338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912207, 37.556179, 38.095825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389835, -0.484873, -0.782897,
		-0.724114, 0.686639, -0.064693,
		0.568935, 0.541687, -0.618779,
		32.082886, 37.718685, 37.910191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211210, 37.680260, 37.789963>,  <31.684633, 37.339504, 38.343338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211210, 37.680260, 37.789963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576273, 37.648510, 37.629585>,  <31.795311, 37.629459, 37.533360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576273, 37.648510, 37.629585>,  <31.211210, 37.680260, 37.789963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576273, 37.648510, 37.629585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400379, -0.370842, -0.837958,
		-0.082172, 0.925297, -0.370233,
		0.912658, -0.079377, -0.400942,
		31.850071, 37.624699, 37.509304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096325, 37.774452, 37.088322>,  <31.211210, 37.680260, 37.789963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096325, 37.774452, 37.088322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472351, 37.638054, 37.088470>,  <31.697968, 37.556217, 37.088562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472351, 37.638054, 37.088470>,  <31.096325, 37.774452, 37.088322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472351, 37.638054, 37.088470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107297, -0.296851, -0.948877,
		0.323671, 0.891967, -0.315647,
		0.940066, -0.340992, 0.000376,
		31.754372, 37.535755, 37.088585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428228, 38.076408, 36.448689>,  <31.096325, 37.774452, 37.088322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428228, 38.076408, 36.448689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599527, 37.737385, 36.574066>,  <31.702307, 37.533970, 36.649292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599527, 37.737385, 36.574066>,  <31.428228, 38.076408, 36.448689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599527, 37.737385, 36.574066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311075, -0.463928, -0.829459,
		0.848433, 0.257707, -0.462330,
		0.428245, -0.847560, 0.313446,
		31.728001, 37.483116, 36.668098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789198, 37.917301, 35.852619>,  <31.428228, 38.076408, 36.448689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789198, 37.917301, 35.852619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756327, 37.598145, 36.091488>,  <31.736603, 37.406651, 36.234810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756327, 37.598145, 36.091488>,  <31.789198, 37.917301, 35.852619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756327, 37.598145, 36.091488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311823, -0.548527, -0.775812,
		0.946580, -0.249968, -0.203724,
		-0.082180, -0.797893, 0.597171,
		31.731672, 37.358776, 36.270638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158813, 37.408932, 35.512768>,  <31.789198, 37.917301, 35.852619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158813, 37.408932, 35.512768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905943, 37.204609, 35.745808>,  <31.754219, 37.082016, 35.885632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905943, 37.204609, 35.745808>,  <32.158813, 37.408932, 35.512768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905943, 37.204609, 35.745808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275477, -0.554609, -0.785188,
		0.724197, -0.656873, 0.209896,
		-0.632179, -0.510810, 0.582600,
		31.716290, 37.051365, 35.920586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223282, 36.818928, 35.288002>,  <32.158813, 37.408932, 35.512768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223282, 36.818928, 35.288002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865959, 36.810429, 35.467579>,  <31.651566, 36.805328, 35.575325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865959, 36.810429, 35.467579>,  <32.223282, 36.818928, 35.288002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865959, 36.810429, 35.467579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325340, -0.658597, -0.678531,
		0.310088, -0.752196, 0.581417,
		-0.893308, -0.021246, 0.448943,
		31.597967, 36.804054, 35.602261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128315, 36.188900, 35.350513>,  <32.223282, 36.818928, 35.288002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128315, 36.188900, 35.350513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781666, 36.386887, 35.325287>,  <31.573677, 36.505680, 35.310150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781666, 36.386887, 35.325287>,  <32.128315, 36.188900, 35.350513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781666, 36.386887, 35.325287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285676, -0.595809, -0.750600,
		-0.409098, -0.632468, 0.657741,
		-0.866619, 0.494970, -0.063063,
		31.521681, 36.535378, 35.306366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594292, 35.715332, 35.623646>,  <32.128315, 36.188900, 35.350513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594292, 35.715332, 35.623646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606445, 35.333942, 35.743626>,  <32.613739, 35.105110, 35.815613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606445, 35.333942, 35.743626>,  <32.594292, 35.715332, 35.623646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606445, 35.333942, 35.743626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648725, 0.247105, 0.719788,
		-0.760416, 0.172713, 0.626050,
		0.030384, -0.953472, 0.299946,
		32.615559, 35.047901, 35.833611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440983, 35.686584, 36.305027>,  <32.594292, 35.715332, 35.623646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440983, 35.686584, 36.305027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677689, 35.373276, 36.228817>,  <32.819714, 35.185291, 36.183090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677689, 35.373276, 36.228817>,  <32.440983, 35.686584, 36.305027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677689, 35.373276, 36.228817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618885, 0.290009, 0.729983,
		-0.516521, -0.549893, 0.656372,
		0.591767, -0.783270, -0.190525,
		32.855217, 35.138294, 36.171661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693867, 35.449497, 36.905781>,  <32.440983, 35.686584, 36.305027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693867, 35.449497, 36.905781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959808, 35.321640, 36.635727>,  <33.119373, 35.244926, 36.473694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959808, 35.321640, 36.635727>,  <32.693867, 35.449497, 36.905781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959808, 35.321640, 36.635727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728503, 0.077714, 0.680620,
		-0.165085, -0.944347, 0.284526,
		0.664854, -0.319638, -0.675130,
		33.159264, 35.225750, 36.433189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951916, 34.944649, 37.262375>,  <32.693867, 35.449497, 36.905781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951916, 34.944649, 37.262375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204754, 35.119362, 37.006351>,  <33.356457, 35.224190, 36.852737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204754, 35.119362, 37.006351>,  <32.951916, 34.944649, 37.262375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204754, 35.119362, 37.006351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547524, 0.332750, 0.767786,
		0.548337, -0.835761, -0.028820,
		0.632095, 0.436785, -0.640058,
		33.394382, 35.250397, 36.814335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607933, 34.642052, 37.201347>,  <32.951916, 34.944649, 37.262375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607933, 34.642052, 37.201347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647240, 35.031433, 37.118656>,  <33.670822, 35.265060, 37.069042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647240, 35.031433, 37.118656>,  <33.607933, 34.642052, 37.201347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647240, 35.031433, 37.118656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644886, 0.095924, 0.758236,
		0.757936, -0.207821, -0.618339,
		0.098264, 0.973452, -0.206725,
		33.676720, 35.323467, 37.056637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205368, 34.732685, 37.248379>,  <33.607933, 34.642052, 37.201347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205368, 34.732685, 37.248379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070713, 35.105659, 37.300900>,  <33.989922, 35.329445, 37.332413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070713, 35.105659, 37.300900>,  <34.205368, 34.732685, 37.248379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070713, 35.105659, 37.300900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421794, 0.024651, 0.906357,
		0.841884, 0.360491, -0.401594,
		-0.336633, 0.932437, 0.131299,
		33.969723, 35.385391, 37.340290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802410, 35.267914, 37.345055>,  <34.205368, 34.732685, 37.248379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802410, 35.267914, 37.345055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484406, 35.453190, 37.501724>,  <34.293602, 35.564358, 37.595726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484406, 35.453190, 37.501724>,  <34.802410, 35.267914, 37.345055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484406, 35.453190, 37.501724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478347, 0.081665, 0.874366,
		0.373014, 0.882487, -0.286492,
		-0.795012, 0.463193, 0.391673,
		34.245903, 35.592148, 37.619225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108376, 35.801636, 37.702393>,  <34.802410, 35.267914, 37.345055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108376, 35.801636, 37.702393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740936, 35.776653, 37.858482>,  <34.520473, 35.761662, 37.952137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740936, 35.776653, 37.858482>,  <35.108376, 35.801636, 37.702393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740936, 35.776653, 37.858482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337932, 0.387795, 0.857564,
		-0.204891, 0.919627, -0.335120,
		-0.918597, -0.062459, 0.390228,
		34.465359, 35.757915, 37.975552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962841, 36.434341, 37.752602>,  <35.108376, 35.801636, 37.702393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962841, 36.434341, 37.752602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780396, 36.175064, 37.996506>,  <34.670929, 36.019497, 38.142849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780396, 36.175064, 37.996506>,  <34.962841, 36.434341, 37.752602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780396, 36.175064, 37.996506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355276, 0.495589, 0.792572,
		-0.815928, 0.578137, 0.004242,
		-0.456113, -0.648189, 0.609764,
		34.643562, 35.980606, 38.179436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927177, 36.903721, 38.294582>,  <34.962841, 36.434341, 37.752602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927177, 36.903721, 38.294582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828735, 36.542786, 38.436123>,  <34.769669, 36.326225, 38.521049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828735, 36.542786, 38.436123>,  <34.927177, 36.903721, 38.294582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828735, 36.542786, 38.436123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364698, 0.252042, 0.896365,
		-0.898012, 0.349654, 0.267052,
		-0.246109, -0.902340, 0.353855,
		34.754902, 36.272083, 38.542278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857346, 37.087814, 39.022793>,  <34.927177, 36.903721, 38.294582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857346, 37.087814, 39.022793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879128, 36.688412, 39.020985>,  <34.892197, 36.448769, 39.019901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879128, 36.688412, 39.020985>,  <34.857346, 37.087814, 39.022793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879128, 36.688412, 39.020985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454555, 0.020761, 0.890477,
		-0.889053, -0.050543, 0.455007,
		0.054454, -0.998506, -0.004517,
		34.895462, 36.388859, 39.019630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875401, 37.111767, 39.718353>,  <34.857346, 37.087814, 39.022793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875401, 37.111767, 39.718353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007404, 36.754978, 39.594753>,  <35.086605, 36.540905, 39.520596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007404, 36.754978, 39.594753>,  <34.875401, 37.111767, 39.718353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007404, 36.754978, 39.594753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433393, -0.147632, 0.889031,
		-0.838609, -0.427305, 0.337855,
		0.330009, -0.891973, -0.308996,
		35.106407, 36.487385, 39.502056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712677, 36.527275, 40.258972>,  <34.875401, 37.111767, 39.718353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712677, 36.527275, 40.258972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041763, 36.440060, 40.048985>,  <35.239216, 36.387730, 39.922993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041763, 36.440060, 40.048985>,  <34.712677, 36.527275, 40.258972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041763, 36.440060, 40.048985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517930, -0.093071, 0.850345,
		-0.234265, -0.971493, 0.036355,
		0.822720, -0.218035, -0.524968,
		35.288578, 36.374649, 39.891495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107704, 36.050865, 40.704319>,  <34.712677, 36.527275, 40.258972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107704, 36.050865, 40.704319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387539, 36.157825, 40.439270>,  <35.555439, 36.222000, 40.280239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387539, 36.157825, 40.439270>,  <35.107704, 36.050865, 40.704319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387539, 36.157825, 40.439270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695299, -0.040979, 0.717551,
		0.164720, -0.962714, -0.214591,
		0.699590, 0.267400, -0.662624,
		35.597416, 36.238045, 40.240482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727962, 35.666546, 40.823650>,  <35.107704, 36.050865, 40.704319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727962, 35.666546, 40.823650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863056, 35.972061, 40.603630>,  <35.944111, 36.155373, 40.471619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863056, 35.972061, 40.603630>,  <35.727962, 35.666546, 40.823650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863056, 35.972061, 40.603630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688454, 0.198049, 0.697715,
		0.641847, -0.614328, -0.458948,
		0.337732, 0.763791, -0.550054,
		35.964375, 36.201199, 40.438614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447430, 35.670586, 40.833073>,  <35.727962, 35.666546, 40.823650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447430, 35.670586, 40.833073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357285, 36.045521, 40.726784>,  <36.303200, 36.270481, 40.663010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357285, 36.045521, 40.726784>,  <36.447430, 35.670586, 40.833073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357285, 36.045521, 40.726784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575329, 0.348140, 0.740132,
		0.786263, 0.013920, -0.617736,
		-0.225361, 0.937339, -0.265721,
		36.289677, 36.326721, 40.647068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091900, 35.911438, 40.906544>,  <36.447430, 35.670586, 40.833073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091900, 35.911438, 40.906544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816509, 36.201416, 40.897999>,  <36.651276, 36.375401, 40.892872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816509, 36.201416, 40.897999>,  <37.091900, 35.911438, 40.906544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816509, 36.201416, 40.897999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366839, 0.373497, 0.852015,
		0.625641, 0.578756, -0.523082,
		-0.688478, 0.724943, -0.021365,
		36.609966, 36.418900, 40.891590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442692, 36.443184, 40.981209>,  <37.091900, 35.911438, 40.906544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442692, 36.443184, 40.981209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085960, 36.592125, 41.083973>,  <36.871922, 36.681492, 41.145630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085960, 36.592125, 41.083973>,  <37.442692, 36.443184, 40.981209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085960, 36.592125, 41.083973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427798, 0.509497, 0.746593,
		0.147102, 0.775735, -0.613674,
		-0.891824, 0.372354, 0.256909,
		36.818413, 36.703831, 41.161045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516823, 37.148205, 41.171661>,  <37.442692, 36.443184, 40.981209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516823, 37.148205, 41.171661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155560, 37.070595, 41.324848>,  <36.938801, 37.024029, 41.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155560, 37.070595, 41.324848>,  <37.516823, 37.148205, 41.171661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155560, 37.070595, 41.324848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157209, 0.680621, 0.715570,
		-0.399498, 0.706477, -0.584203,
		-0.903154, -0.194027, 0.382971,
		36.884613, 37.012386, 41.439739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313866, 37.776161, 41.403301>,  <37.516823, 37.148205, 41.171661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313866, 37.776161, 41.403301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114788, 37.501114, 41.614765>,  <36.995342, 37.336086, 41.741646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114788, 37.501114, 41.614765>,  <37.313866, 37.776161, 41.403301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114788, 37.501114, 41.614765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053973, 0.632886, 0.772362,
		-0.865670, 0.355868, -0.352097,
		-0.497697, -0.687614, 0.528663,
		36.965481, 37.294830, 41.773365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700077, 38.031635, 41.659866>,  <37.313866, 37.776161, 41.403301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700077, 38.031635, 41.659866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822102, 37.739761, 41.904648>,  <36.895317, 37.564636, 42.051517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822102, 37.739761, 41.904648>,  <36.700077, 38.031635, 41.659866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822102, 37.739761, 41.904648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141785, 0.600627, 0.786858,
		-0.941720, -0.326805, 0.079768,
		0.305060, -0.729689, 0.611958,
		36.913620, 37.520855, 42.088234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463959, 38.217068, 42.268272>,  <36.700077, 38.031635, 41.659866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463959, 38.217068, 42.268272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651798, 37.889633, 42.400574>,  <36.764500, 37.693172, 42.479954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651798, 37.889633, 42.400574>,  <36.463959, 38.217068, 42.268272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651798, 37.889633, 42.400574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052342, 0.399783, 0.915114,
		-0.881330, -0.412420, 0.230582,
		0.469594, -0.818586, 0.330754,
		36.792675, 37.644058, 42.499802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009323, 38.006702, 42.837025>,  <36.463959, 38.217068, 42.268272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009323, 38.006702, 42.837025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398415, 37.913963, 42.834572>,  <36.631870, 37.858318, 42.833099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398415, 37.913963, 42.834572>,  <36.009323, 38.006702, 42.837025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398415, 37.913963, 42.834572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070663, 0.271084, 0.959958,
		-0.220903, -0.934216, 0.280076,
		0.972732, -0.231849, -0.006131,
		36.690235, 37.844410, 42.832733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108311, 37.576458, 43.434757>,  <36.009323, 38.006702, 42.837025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108311, 37.576458, 43.434757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471359, 37.719021, 43.346031>,  <36.689190, 37.804558, 43.292797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471359, 37.719021, 43.346031>,  <36.108311, 37.576458, 43.434757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471359, 37.719021, 43.346031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150925, 0.216020, 0.964654,
		0.391723, -0.909016, 0.142273,
		0.907620, 0.356405, -0.221813,
		36.743645, 37.825943, 43.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508575, 37.368309, 43.972118>,  <36.108311, 37.576458, 43.434757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508575, 37.368309, 43.972118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682549, 37.688221, 43.806614>,  <36.786930, 37.880169, 43.707314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682549, 37.688221, 43.806614>,  <36.508575, 37.368309, 43.972118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682549, 37.688221, 43.806614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261656, 0.327417, 0.907929,
		0.861610, -0.503147, -0.066863,
		0.434930, 0.799776, -0.413757,
		36.813026, 37.928154, 43.682487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046024, 37.494732, 44.483414>,  <36.508575, 37.368309, 43.972118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046024, 37.494732, 44.483414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074608, 37.820408, 44.252937>,  <37.091759, 38.015812, 44.114651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074608, 37.820408, 44.252937>,  <37.046024, 37.494732, 44.483414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074608, 37.820408, 44.252937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369782, 0.514876, 0.773410,
		0.926366, -0.268334, -0.264278,
		0.071462, 0.814186, -0.576189,
		37.096046, 38.064663, 44.080082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764427, 37.718220, 44.460991>,  <37.046024, 37.494732, 44.483414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764427, 37.718220, 44.460991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554611, 38.049736, 44.383049>,  <37.428722, 38.248646, 44.336285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554611, 38.049736, 44.383049>,  <37.764427, 37.718220, 44.460991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554611, 38.049736, 44.383049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487642, 0.480067, 0.729206,
		0.697900, 0.287480, -0.655966,
		-0.524539, 0.828789, -0.194851,
		37.397251, 38.298374, 44.324593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262913, 38.253582, 44.629360>,  <37.764427, 37.718220, 44.460991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262913, 38.253582, 44.629360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903366, 38.427597, 44.608261>,  <37.687637, 38.532005, 44.595600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903366, 38.427597, 44.608261>,  <38.262913, 38.253582, 44.629360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903366, 38.427597, 44.608261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177949, 0.472347, 0.863263,
		0.400469, 0.766570, -0.501991,
		-0.898865, 0.435039, -0.052749,
		37.633705, 38.558109, 44.592438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653458, 38.665756, 44.230698>,  <38.262913, 38.253582, 44.629360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653458, 38.665756, 44.230698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963543, 38.901283, 44.139179>,  <39.149593, 39.042599, 44.084267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963543, 38.901283, 44.139179>,  <38.653458, 38.665756, 44.230698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963543, 38.901283, 44.139179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158628, -0.169133, -0.972744,
		-0.611463, 0.790374, -0.037711,
		0.775210, 0.588815, -0.228795,
		39.196106, 39.077927, 44.070541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410168, 39.233711, 43.743549>,  <38.653458, 38.665756, 44.230698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410168, 39.233711, 43.743549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799248, 39.154835, 43.694611>,  <39.032696, 39.107510, 43.665245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799248, 39.154835, 43.694611>,  <38.410168, 39.233711, 43.743549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799248, 39.154835, 43.694611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172517, -0.261811, -0.949575,
		0.155219, 0.944759, -0.288683,
		0.972700, -0.197195, -0.122349,
		39.091057, 39.095676, 43.657906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451893, 39.436985, 43.152576>,  <38.410168, 39.233711, 43.743549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451893, 39.436985, 43.152576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809013, 39.257420, 43.137768>,  <39.023285, 39.149681, 43.128883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809013, 39.257420, 43.137768>,  <38.451893, 39.436985, 43.152576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809013, 39.257420, 43.137768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082405, -0.081976, -0.993222,
		0.442840, 0.889804, -0.110182,
		0.892806, -0.448918, -0.037022,
		39.076855, 39.122746, 43.126663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794609, 39.647110, 42.469311>,  <38.451893, 39.436985, 43.152576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794609, 39.647110, 42.469311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001469, 39.321320, 42.574528>,  <39.125584, 39.125847, 42.637657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001469, 39.321320, 42.574528>,  <38.794609, 39.647110, 42.469311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001469, 39.321320, 42.574528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040504, -0.330273, -0.943016,
		0.854938, 0.477023, -0.203789,
		0.517147, -0.814474, 0.263041,
		39.156612, 39.076977, 42.653439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362808, 39.690990, 42.091621>,  <38.794609, 39.647110, 42.469311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362808, 39.690990, 42.091621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304790, 39.309723, 42.197773>,  <39.269981, 39.080963, 42.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304790, 39.309723, 42.197773>,  <39.362808, 39.690990, 42.091621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304790, 39.309723, 42.197773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125796, -0.248278, -0.960486,
		0.981396, -0.172698, -0.083894,
		-0.145045, -0.953170, 0.265383,
		39.261276, 39.023773, 42.277390>
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
