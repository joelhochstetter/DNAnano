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
	<24.016899, 34.970810, 35.125843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374842, 35.060844, 35.280022>,  <24.589607, 35.114864, 35.372528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374842, 35.060844, 35.280022>,  <24.016899, 34.970810, 35.125843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374842, 35.060844, 35.280022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211857, -0.974256, 0.077088,
		0.392873, 0.012676, -0.919505,
		0.894856, 0.225089, 0.385445,
		24.643299, 35.128372, 35.395657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.500710, 34.711346, 34.759865>,  <24.016899, 34.970810, 35.125843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.500710, 34.711346, 34.759865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675503, 34.745281, 35.118050>,  <24.780378, 34.765640, 35.332958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675503, 34.745281, 35.118050>,  <24.500710, 34.711346, 34.759865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675503, 34.745281, 35.118050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180917, -0.983486, 0.004889,
		0.881087, 0.159867, -0.445115,
		0.436983, 0.084837, 0.895460,
		24.806599, 34.770733, 35.386688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046312, 34.187386, 34.799595>,  <24.500710, 34.711346, 34.759865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046312, 34.187386, 34.799595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025660, 34.275791, 35.189156>,  <25.013268, 34.328835, 35.422894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025660, 34.275791, 35.189156>,  <25.046312, 34.187386, 34.799595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025660, 34.275791, 35.189156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291581, -0.929375, 0.226369,
		0.955151, 0.295660, -0.016458,
		-0.051632, 0.221015, 0.973903,
		25.010170, 34.342094, 35.481327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694510, 33.950867, 35.171989>,  <25.046312, 34.187386, 34.799595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694510, 33.950867, 35.171989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376799, 33.914871, 35.412331>,  <25.186172, 33.893272, 35.556534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376799, 33.914871, 35.412331>,  <25.694510, 33.950867, 35.171989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376799, 33.914871, 35.412331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262481, -0.942739, 0.205784,
		0.547928, 0.321162, 0.772418,
		-0.794279, -0.089990, 0.600852,
		25.138515, 33.887875, 35.592587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287842, 33.642254, 35.110847>,  <25.694510, 33.950867, 35.171989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287842, 33.642254, 35.110847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500366, 33.519249, 34.795090>,  <26.627880, 33.445446, 34.605637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500366, 33.519249, 34.795090>,  <26.287842, 33.642254, 35.110847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500366, 33.519249, 34.795090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132809, -0.890039, 0.436110,
		-0.836703, -0.336548, -0.432046,
		0.531309, -0.307515, -0.789395,
		26.659760, 33.426994, 34.558270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181568, 32.905865, 35.023190>,  <26.287842, 33.642254, 35.110847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181568, 32.905865, 35.023190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495274, 32.932007, 34.776402>,  <26.683496, 32.947693, 34.628326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495274, 32.932007, 34.776402>,  <26.181568, 32.905865, 35.023190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495274, 32.932007, 34.776402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258838, -0.938227, 0.229635,
		-0.563854, -0.339791, -0.752736,
		0.784265, 0.065356, -0.616974,
		26.730553, 32.951614, 34.591309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325811, 32.371689, 34.493759>,  <26.181568, 32.905865, 35.023190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325811, 32.371689, 34.493759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687399, 32.502178, 34.604336>,  <26.904350, 32.580471, 34.670681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687399, 32.502178, 34.604336>,  <26.325811, 32.371689, 34.493759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687399, 32.502178, 34.604336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312270, -0.945291, 0.094402,
		0.292116, 0.000989, -0.956382,
		0.903966, 0.326226, 0.276444,
		26.958590, 32.600044, 34.687267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808319, 32.022465, 34.091187>,  <26.325811, 32.371689, 34.493759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808319, 32.022465, 34.091187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983974, 32.130833, 34.433826>,  <27.089369, 32.195854, 34.639408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983974, 32.130833, 34.433826>,  <26.808319, 32.022465, 34.091187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983974, 32.130833, 34.433826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309463, -0.940716, 0.138874,
		0.843439, 0.204100, -0.496944,
		0.439140, 0.270918, 0.856598,
		27.115717, 32.212109, 34.690807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398539, 31.615616, 34.090302>,  <26.808319, 32.022465, 34.091187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398539, 31.615616, 34.090302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331385, 31.727619, 34.468384>,  <27.291092, 31.794821, 34.695232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331385, 31.727619, 34.468384>,  <27.398539, 31.615616, 34.090302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331385, 31.727619, 34.468384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310019, -0.895169, 0.320249,
		0.935790, 0.346797, 0.063478,
		-0.167885, 0.280006, 0.945204,
		27.281019, 31.811621, 34.751945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949961, 31.253517, 34.516964>,  <27.398539, 31.615616, 34.090302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949961, 31.253517, 34.516964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667929, 31.343153, 34.786079>,  <27.498711, 31.396935, 34.947548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667929, 31.343153, 34.786079>,  <27.949961, 31.253517, 34.516964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667929, 31.343153, 34.786079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014719, -0.953176, 0.302056,
		0.708977, 0.203071, 0.675362,
		-0.705078, 0.224092, 0.672791,
		27.456406, 31.410381, 34.987915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145914, 30.861221, 35.123280>,  <27.949961, 31.253517, 34.516964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145914, 30.861221, 35.123280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774103, 30.977499, 35.214035>,  <27.551016, 31.047266, 35.268486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774103, 30.977499, 35.214035>,  <28.145914, 30.861221, 35.123280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774103, 30.977499, 35.214035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228802, -0.937173, 0.263356,
		0.289186, 0.192885, 0.937639,
		-0.929527, 0.290693, 0.226885,
		27.495245, 31.064707, 35.282101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818213, 30.714396, 35.914909>,  <28.145914, 30.861221, 35.123280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818213, 30.714396, 35.914909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582642, 30.689369, 35.592606>,  <27.441299, 30.674355, 35.399223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582642, 30.689369, 35.592606>,  <27.818213, 30.714396, 35.914909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582642, 30.689369, 35.592606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084241, -0.986816, 0.138194,
		-0.803784, 0.149264, 0.575891,
		-0.588926, -0.062565, -0.805761,
		27.405964, 30.670599, 35.350876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329515, 30.268267, 36.095459>,  <27.818213, 30.714396, 35.914909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329515, 30.268267, 36.095459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350111, 30.258955, 35.696098>,  <27.362469, 30.253368, 35.456482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350111, 30.258955, 35.696098>,  <27.329515, 30.268267, 36.095459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350111, 30.258955, 35.696098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374556, -0.926301, 0.040916,
		-0.925774, -0.376064, -0.038968,
		0.051483, -0.023284, -0.998402,
		27.365559, 30.251970, 35.396576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180204, 29.799343, 35.508289>,  <27.329515, 30.268267, 36.095459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180204, 29.799343, 35.508289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851688, 29.920115, 35.701916>,  <26.654579, 29.992577, 35.818092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851688, 29.920115, 35.701916>,  <27.180204, 29.799343, 35.508289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851688, 29.920115, 35.701916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198281, 0.946651, -0.254042,
		-0.534948, -0.112660, -0.837340,
		-0.821289, 0.301927, 0.484070,
		26.605301, 30.010693, 35.847137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812624, 30.279541, 35.033371>,  <27.180204, 29.799343, 35.508289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812624, 30.279541, 35.033371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766781, 30.372210, 35.419777>,  <26.739275, 30.427811, 35.651623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766781, 30.372210, 35.419777>,  <26.812624, 30.279541, 35.033371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766781, 30.372210, 35.419777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137230, 0.966796, -0.215578,
		-0.983887, 0.107861, -0.142593,
		-0.114606, 0.231672, 0.966020,
		26.732399, 30.441711, 35.709583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248602, 30.701609, 35.250618>,  <26.812624, 30.279541, 35.033371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248602, 30.701609, 35.250618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604280, 30.758728, 35.424484>,  <26.817688, 30.792999, 35.528805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604280, 30.758728, 35.424484>,  <26.248602, 30.701609, 35.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604280, 30.758728, 35.424484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033371, 0.927272, -0.372897,
		-0.456307, 0.346085, 0.819762,
		0.889197, 0.142799, 0.434670,
		26.871040, 30.801567, 35.554886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266113, 31.311712, 35.626137>,  <26.248602, 30.701609, 35.250618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266113, 31.311712, 35.626137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642916, 31.235157, 35.515869>,  <26.868998, 31.189224, 35.449707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642916, 31.235157, 35.515869>,  <26.266113, 31.311712, 35.626137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642916, 31.235157, 35.515869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092071, 0.937308, -0.336120,
		0.322716, 0.291246, 0.900572,
		0.942007, -0.191388, -0.275669,
		26.925518, 31.177740, 35.433167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654480, 31.709427, 35.983852>,  <26.266113, 31.311712, 35.626137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654480, 31.709427, 35.983852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877010, 31.631699, 35.660683>,  <27.010529, 31.585062, 35.466782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877010, 31.631699, 35.660683>,  <26.654480, 31.709427, 35.983852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877010, 31.631699, 35.660683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055950, 0.978826, -0.196899,
		0.829079, 0.064337, 0.555418,
		0.556325, -0.194320, -0.807924,
		27.043907, 31.573402, 35.418304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179008, 32.220490, 35.999619>,  <26.654480, 31.709427, 35.983852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179008, 32.220490, 35.999619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205425, 32.097969, 35.619762>,  <27.221275, 32.024456, 35.391850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205425, 32.097969, 35.619762>,  <27.179008, 32.220490, 35.999619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205425, 32.097969, 35.619762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098254, 0.949090, -0.299290,
		0.992968, -0.073541, 0.092774,
		0.066041, -0.306301, -0.949641,
		27.225237, 32.006077, 35.334869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790148, 32.568741, 35.718025>,  <27.179008, 32.220490, 35.999619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790148, 32.568741, 35.718025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553759, 32.444386, 35.420277>,  <27.411924, 32.369770, 35.241627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553759, 32.444386, 35.420277>,  <27.790148, 32.568741, 35.718025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553759, 32.444386, 35.420277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105756, 0.944648, -0.310574,
		0.799727, -0.104819, -0.591142,
		-0.590975, -0.310891, -0.744375,
		27.376467, 32.351116, 35.196964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020975, 32.947590, 35.229477>,  <27.790148, 32.568741, 35.718025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020975, 32.947590, 35.229477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656752, 32.817669, 35.127193>,  <27.438217, 32.739716, 35.065823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656752, 32.817669, 35.127193>,  <28.020975, 32.947590, 35.229477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656752, 32.817669, 35.127193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212627, 0.898474, -0.384101,
		0.354508, -0.295375, -0.887174,
		-0.910557, -0.324804, -0.255712,
		27.383585, 32.720226, 35.050480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972864, 33.001835, 34.440197>,  <28.020975, 32.947590, 35.229477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972864, 33.001835, 34.440197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663986, 33.049038, 34.689930>,  <27.478659, 33.077362, 34.839767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663986, 33.049038, 34.689930>,  <27.972864, 33.001835, 34.440197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663986, 33.049038, 34.689930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062419, 0.963758, -0.259373,
		-0.632312, -0.239257, -0.736843,
		-0.772195, 0.118011, 0.624330,
		27.432327, 33.084442, 34.877228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764505, 33.370113, 33.797768>,  <27.972864, 33.001835, 34.440197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764505, 33.370113, 33.797768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657150, 33.724606, 33.646736>,  <27.592737, 33.937302, 33.556118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657150, 33.724606, 33.646736>,  <27.764505, 33.370113, 33.797768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657150, 33.724606, 33.646736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949143, 0.176301, -0.260855,
		-0.164609, -0.428390, -0.888474,
		-0.268387, 0.886228, -0.377583,
		27.576633, 33.990475, 33.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760900, 33.330101, 33.046455>,  <27.764505, 33.370113, 33.797768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760900, 33.330101, 33.046455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859793, 33.688145, 33.194866>,  <27.919128, 33.902969, 33.283913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859793, 33.688145, 33.194866>,  <27.760900, 33.330101, 33.046455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859793, 33.688145, 33.194866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901732, -0.072401, -0.426190,
		-0.354624, 0.439932, -0.825047,
		0.247229, 0.895108, 0.371026,
		27.933962, 33.956676, 33.306175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029079, 33.729618, 32.536766>,  <27.760900, 33.330101, 33.046455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029079, 33.729618, 32.536766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195078, 33.868324, 32.873226>,  <28.294678, 33.951550, 33.075104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195078, 33.868324, 32.873226>,  <28.029079, 33.729618, 32.536766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195078, 33.868324, 32.873226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904993, -0.062187, -0.420857,
		-0.093631, 0.935888, -0.339629,
		0.414995, 0.346767, 0.841149,
		28.319576, 33.972355, 33.125572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562002, 34.214142, 32.316982>,  <28.029079, 33.729618, 32.536766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562002, 34.214142, 32.316982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648226, 34.114868, 32.694752>,  <28.699961, 34.055302, 32.921413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648226, 34.114868, 32.694752>,  <28.562002, 34.214142, 32.316982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648226, 34.114868, 32.694752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967739, 0.183492, -0.172661,
		-0.130442, 0.951175, 0.279733,
		0.215559, -0.248186, 0.944425,
		28.712894, 34.040413, 32.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868572, 34.740273, 32.581814>,  <28.562002, 34.214142, 32.316982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868572, 34.740273, 32.581814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978056, 34.394325, 32.750141>,  <29.043747, 34.186756, 32.851139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978056, 34.394325, 32.750141>,  <28.868572, 34.740273, 32.581814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978056, 34.394325, 32.750141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957695, 0.204628, -0.202354,
		0.088897, 0.458405, 0.884286,
		0.273710, -0.864865, 0.420822,
		29.060169, 34.134865, 32.876389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408623, 34.793556, 33.054962>,  <28.868572, 34.740273, 32.581814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408623, 34.793556, 33.054962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418436, 34.422844, 32.905037>,  <29.424324, 34.200417, 32.815083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418436, 34.422844, 32.905037>,  <29.408623, 34.793556, 33.054962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418436, 34.422844, 32.905037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962227, 0.123580, -0.242583,
		0.271139, -0.354700, 0.894803,
		0.024535, -0.926777, -0.374809,
		29.425797, 34.144810, 32.792595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922476, 34.408508, 33.449570>,  <29.408623, 34.793556, 33.054962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922476, 34.408508, 33.449570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891556, 34.204494, 33.106899>,  <29.873005, 34.082085, 32.901299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891556, 34.204494, 33.106899>,  <29.922476, 34.408508, 33.449570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891556, 34.204494, 33.106899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990064, 0.061969, -0.126228,
		0.117468, -0.857919, 0.500177,
		-0.077298, -0.510035, -0.856673,
		29.868366, 34.051483, 32.849895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388708, 33.894798, 33.462486>,  <29.922476, 34.408508, 33.449570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388708, 33.894798, 33.462486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318899, 33.982098, 33.078423>,  <30.277014, 34.034477, 32.847984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318899, 33.982098, 33.078423>,  <30.388708, 33.894798, 33.462486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318899, 33.982098, 33.078423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982833, -0.020650, -0.183340,
		-0.059842, -0.975674, -0.210901,
		-0.174525, 0.218251, -0.960160,
		30.266542, 34.047573, 32.790375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543808, 33.290482, 32.956776>,  <30.388708, 33.894798, 33.462486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543808, 33.290482, 32.956776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574757, 33.619656, 32.731640>,  <30.593327, 33.817162, 32.596558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574757, 33.619656, 32.731640>,  <30.543808, 33.290482, 32.956776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574757, 33.619656, 32.731640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892175, -0.309131, -0.329335,
		-0.445013, -0.476674, -0.758119,
		0.077373, 0.822934, -0.562844,
		30.597969, 33.866535, 32.562786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672571, 33.084412, 32.299202>,  <30.543808, 33.290482, 32.956776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672571, 33.084412, 32.299202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816486, 33.448895, 32.379452>,  <30.902836, 33.667583, 32.427601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816486, 33.448895, 32.379452>,  <30.672571, 33.084412, 32.299202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816486, 33.448895, 32.379452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904340, -0.287652, -0.315318,
		-0.229610, 0.294884, -0.927536,
		0.359790, 0.911208, 0.200628,
		30.924423, 33.722256, 32.439640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109083, 33.359161, 31.727409>,  <30.672571, 33.084412, 32.299202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109083, 33.359161, 31.727409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233355, 33.568058, 32.045086>,  <31.307917, 33.693398, 32.235691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233355, 33.568058, 32.045086>,  <31.109083, 33.359161, 31.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233355, 33.568058, 32.045086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943798, -0.268646, -0.192548,
		0.112801, 0.809379, -0.576353,
		0.310679, 0.522241, 0.794193,
		31.326559, 33.724731, 32.283344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692276, 33.756802, 31.452677>,  <31.109083, 33.359161, 31.727409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692276, 33.756802, 31.452677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732264, 33.707672, 31.847630>,  <31.756256, 33.678196, 32.084602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732264, 33.707672, 31.847630>,  <31.692276, 33.756802, 31.452677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732264, 33.707672, 31.847630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908592, -0.393201, -0.140901,
		0.405545, 0.911213, 0.072285,
		0.099969, -0.122819, 0.987381,
		31.762255, 33.670826, 32.143845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341328, 34.116508, 31.851204>,  <31.692276, 33.756802, 31.452677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341328, 34.116508, 31.851204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198090, 33.782337, 32.017979>,  <32.112148, 33.581837, 32.118042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198090, 33.782337, 32.017979>,  <32.341328, 34.116508, 31.851204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198090, 33.782337, 32.017979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868053, -0.462349, -0.180881,
		0.343883, 0.297151, 0.890756,
		-0.358091, -0.835425, 0.416936,
		32.090664, 33.531708, 32.143059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782104, 33.815262, 32.244972>,  <32.341328, 34.116508, 31.851204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782104, 33.815262, 32.244972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555416, 33.492512, 32.178299>,  <32.419403, 33.298862, 32.138294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555416, 33.492512, 32.178299>,  <32.782104, 33.815262, 32.244972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555416, 33.492512, 32.178299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823094, -0.563444, -0.071046,
		-0.036590, -0.177456, 0.983449,
		-0.566725, -0.806871, -0.166679,
		32.385399, 33.250450, 32.128296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794800, 33.275562, 32.716152>,  <32.782104, 33.815262, 32.244972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794800, 33.275562, 32.716152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714516, 33.085835, 32.373287>,  <32.666344, 32.971996, 32.167568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714516, 33.085835, 32.373287>,  <32.794800, 33.275562, 32.716152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714516, 33.085835, 32.373287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882589, -0.467271, 0.051907,
		-0.425150, -0.746108, 0.512416,
		-0.200709, -0.474321, -0.857167,
		32.654305, 32.943539, 32.116138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576786, 33.029858, 33.341427>,  <32.794800, 33.275562, 32.716152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576786, 33.029858, 33.341427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640896, 33.251026, 33.668499>,  <32.679363, 33.383728, 33.864742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640896, 33.251026, 33.668499>,  <32.576786, 33.029858, 33.341427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640896, 33.251026, 33.668499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969436, 0.244068, 0.024980,
		-0.185757, -0.796689, 0.575135,
		0.160274, 0.552917, 0.817677,
		32.688976, 33.416901, 33.913803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921408, 32.770859, 33.092323>,  <32.576786, 33.029858, 33.341427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921408, 32.770859, 33.092323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033882, 33.069649, 32.851337>,  <32.101368, 33.248924, 32.706745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033882, 33.069649, 32.851337>,  <31.921408, 32.770859, 33.092323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033882, 33.069649, 32.851337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878863, 0.452568, 0.150940,
		0.385403, 0.487038, 0.783747,
		0.281185, 0.746979, -0.602460,
		32.118237, 33.293743, 32.670601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863489, 33.463295, 33.423077>,  <31.921408, 32.770859, 33.092323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863489, 33.463295, 33.423077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833212, 33.529705, 33.029793>,  <31.815046, 33.569553, 32.793823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833212, 33.529705, 33.029793>,  <31.863489, 33.463295, 33.423077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833212, 33.529705, 33.029793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775719, 0.609749, 0.162684,
		0.626523, 0.775010, 0.082638,
		-0.075694, 0.166029, -0.983212,
		31.810503, 33.579514, 32.734829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720303, 34.187263, 33.389732>,  <31.863489, 33.463295, 33.423077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720303, 34.187263, 33.389732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595934, 34.028393, 33.044346>,  <31.521313, 33.933071, 32.837112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595934, 34.028393, 33.044346>,  <31.720303, 34.187263, 33.389732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595934, 34.028393, 33.044346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737958, 0.673409, -0.044028,
		0.598955, 0.623515, -0.502476,
		-0.310919, -0.397177, -0.863470,
		31.502659, 33.909241, 32.785305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534954, 34.695904, 32.894794>,  <31.720303, 34.187263, 33.389732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534954, 34.695904, 32.894794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325682, 34.374878, 32.780128>,  <31.200117, 34.182262, 32.711330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325682, 34.374878, 32.780128>,  <31.534954, 34.695904, 32.894794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325682, 34.374878, 32.780128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814331, 0.569975, -0.109518,
		0.251287, 0.176142, -0.951750,
		-0.523183, -0.802560, -0.286665,
		31.168726, 34.134109, 32.694130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238960, 34.757050, 32.177486>,  <31.534954, 34.695904, 32.894794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238960, 34.757050, 32.177486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007164, 34.561695, 32.438461>,  <30.868086, 34.444481, 32.595047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007164, 34.561695, 32.438461>,  <31.238960, 34.757050, 32.177486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007164, 34.561695, 32.438461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765485, 0.600912, -0.230081,
		-0.279688, -0.632758, -0.722075,
		-0.579489, -0.488387, 0.652435,
		30.833317, 34.415180, 32.634193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568384, 34.418285, 31.918686>,  <31.238960, 34.757050, 32.177486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568384, 34.418285, 31.918686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532747, 34.539955, 32.298061>,  <30.511366, 34.612957, 32.525688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532747, 34.539955, 32.298061>,  <30.568384, 34.418285, 31.918686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532747, 34.539955, 32.298061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828061, 0.506556, -0.240244,
		-0.553514, -0.806770, 0.206747,
		-0.089093, 0.304177, 0.948440,
		30.506020, 34.631207, 32.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141348, 33.888588, 31.597519>,  <30.568384, 34.418285, 31.918686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141348, 33.888588, 31.597519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193262, 33.850475, 31.992300>,  <30.224411, 33.827606, 32.229168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193262, 33.850475, 31.992300>,  <30.141348, 33.888588, 31.597519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193262, 33.850475, 31.992300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973321, -0.202187, 0.108472,
		0.189214, -0.974701, -0.118982,
		0.129784, -0.095283, 0.986953,
		30.232197, 33.821892, 32.288387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691452, 33.330242, 31.772579>,  <30.141348, 33.888588, 31.597519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691452, 33.330242, 31.772579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753010, 33.535965, 32.110054>,  <29.789946, 33.659397, 32.312538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753010, 33.535965, 32.110054>,  <29.691452, 33.330242, 31.772579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753010, 33.535965, 32.110054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887812, -0.302819, 0.346540,
		0.433711, -0.802367, 0.410002,
		0.153896, 0.514303, 0.843688,
		29.799179, 33.690254, 32.363159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539148, 32.884518, 32.403721>,  <29.691452, 33.330242, 31.772579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539148, 32.884518, 32.403721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493431, 33.267086, 32.511204>,  <29.466002, 33.496628, 32.575691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493431, 33.267086, 32.511204>,  <29.539148, 32.884518, 32.403721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493431, 33.267086, 32.511204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871680, -0.226295, 0.434701,
		0.476562, -0.184541, 0.859554,
		-0.114292, 0.956418, 0.268704,
		29.459143, 33.554012, 32.591816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488289, 33.002407, 33.120480>,  <29.539148, 32.884518, 32.403721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488289, 33.002407, 33.120480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540741, 33.394493, 33.179787>,  <29.572212, 33.629745, 33.215370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540741, 33.394493, 33.179787>,  <29.488289, 33.002407, 33.120480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540741, 33.394493, 33.179787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955217, 0.084909, 0.283462,
		0.265265, -0.178795, 0.947453,
		0.131129, 0.980215, 0.148265,
		29.580080, 33.688557, 33.224266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120146, 33.205593, 33.706104>,  <29.488289, 33.002407, 33.120480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120146, 33.205593, 33.706104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172701, 33.552845, 33.514648>,  <29.204235, 33.761196, 33.399776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172701, 33.552845, 33.514648>,  <29.120146, 33.205593, 33.706104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172701, 33.552845, 33.514648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942757, 0.258706, 0.210431,
		0.306507, 0.423593, 0.852422,
		0.131390, 0.868125, -0.478640,
		29.212118, 33.813282, 33.371056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101494, 33.853157, 34.192482>,  <29.120146, 33.205593, 33.706104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101494, 33.853157, 34.192482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977695, 33.926666, 33.819294>,  <28.903416, 33.970772, 33.595379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977695, 33.926666, 33.819294>,  <29.101494, 33.853157, 34.192482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977695, 33.926666, 33.819294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921131, 0.185641, 0.342134,
		0.236074, 0.965279, 0.111824,
		-0.309496, 0.183773, -0.932974,
		28.884848, 33.981796, 33.539402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857977, 34.497654, 34.141361>,  <29.101494, 33.853157, 34.192482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857977, 34.497654, 34.141361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686314, 34.325638, 33.823647>,  <28.583317, 34.222427, 33.633018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686314, 34.325638, 33.823647>,  <28.857977, 34.497654, 34.141361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686314, 34.325638, 33.823647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902334, 0.164949, 0.398229,
		-0.040237, 0.887614, -0.458828,
		-0.429156, -0.430039, -0.794286,
		28.557568, 34.196625, 33.585361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340191, 34.901150, 34.388527>,  <28.857977, 34.497654, 34.141361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340191, 34.901150, 34.388527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345608, 34.501289, 34.379425>,  <28.348858, 34.261372, 34.373966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345608, 34.501289, 34.379425>,  <28.340191, 34.901150, 34.388527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345608, 34.501289, 34.379425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028837, 0.023133, -0.999316,
		0.999492, 0.012878, 0.029141,
		0.013543, -0.999649, -0.022750,
		28.349670, 34.201393, 34.372601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989574, 34.342419, 34.685669>,  <28.340191, 34.901150, 34.388527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989574, 34.342419, 34.685669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135939, 34.074162, 34.943768>,  <28.223757, 33.913208, 35.098625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135939, 34.074162, 34.943768>,  <27.989574, 34.342419, 34.685669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135939, 34.074162, 34.943768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216564, 0.612938, 0.759873,
		-0.905102, -0.417783, 0.079043,
		0.365911, -0.670645, 0.645248,
		28.245712, 33.872967, 35.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461603, 34.149944, 35.217117>,  <27.989574, 34.342419, 34.685669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461603, 34.149944, 35.217117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816710, 34.056885, 35.375984>,  <28.029774, 34.001049, 35.471306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816710, 34.056885, 35.375984>,  <27.461603, 34.149944, 35.217117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816710, 34.056885, 35.375984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230915, 0.521318, 0.821526,
		-0.398179, -0.821037, 0.409087,
		0.887768, -0.232650, 0.397168,
		28.083040, 33.987091, 35.495136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302841, 33.928230, 35.857407>,  <27.461603, 34.149944, 35.217117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302841, 33.928230, 35.857407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675631, 34.070415, 35.828915>,  <27.899303, 34.155727, 35.811821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675631, 34.070415, 35.828915>,  <27.302841, 33.928230, 35.857407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675631, 34.070415, 35.828915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167821, 0.597174, 0.784360,
		0.321345, -0.719049, 0.616203,
		0.931973, 0.355462, -0.071228,
		27.955223, 34.177055, 35.807545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712389, 33.979759, 36.575687>,  <27.302841, 33.928230, 35.857407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712389, 33.979759, 36.575687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885632, 34.234200, 36.320251>,  <27.989576, 34.386864, 36.166992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885632, 34.234200, 36.320251>,  <27.712389, 33.979759, 36.575687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885632, 34.234200, 36.320251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232850, 0.763395, 0.602502,
		0.870747, -0.112252, 0.478747,
		0.433106, 0.636104, -0.638586,
		28.015564, 34.425030, 36.128677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351480, 34.435555, 36.814148>,  <27.712389, 33.979759, 36.575687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351480, 34.435555, 36.814148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084667, 34.626514, 36.585358>,  <27.924580, 34.741089, 36.448082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084667, 34.626514, 36.585358>,  <28.351480, 34.435555, 36.814148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084667, 34.626514, 36.585358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070264, 0.723996, 0.686217,
		0.741709, 0.497918, -0.449384,
		-0.667032, 0.477397, -0.571980,
		27.884558, 34.769733, 36.413765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587267, 35.081875, 36.663479>,  <28.351480, 34.435555, 36.814148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587267, 35.081875, 36.663479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187639, 35.095741, 36.653217>,  <27.947863, 35.104061, 36.647060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187639, 35.095741, 36.653217>,  <28.587267, 35.081875, 36.663479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187639, 35.095741, 36.653217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010499, 0.772453, 0.634985,
		0.041824, 0.634125, -0.772099,
		-0.999070, 0.034664, -0.025649,
		27.887918, 35.106140, 36.645523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132385, 34.931816, 36.127918>,  <28.587267, 35.081875, 36.663479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132385, 34.931816, 36.127918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081995, 35.015377, 35.740002>,  <29.051760, 35.065514, 35.507252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081995, 35.015377, 35.740002>,  <29.132385, 34.931816, 36.127918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081995, 35.015377, 35.740002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539867, 0.834578, 0.109650,
		0.832270, -0.509743, -0.217920,
		-0.125978, 0.208906, -0.969788,
		29.044201, 35.078049, 35.449066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608793, 34.454582, 35.722828>,  <29.132385, 34.931816, 36.127918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608793, 34.454582, 35.722828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647919, 34.837379, 35.613575>,  <29.671394, 35.067059, 35.548023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647919, 34.837379, 35.613575>,  <29.608793, 34.454582, 35.722828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647919, 34.837379, 35.613575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884050, 0.042485, 0.465457,
		0.457043, -0.286988, -0.841873,
		0.097813, 0.956992, -0.273129,
		29.677263, 35.124477, 35.531635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107908, 34.467541, 35.296074>,  <29.608793, 34.454582, 35.722828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107908, 34.467541, 35.296074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088236, 34.827900, 35.468571>,  <30.076431, 35.044113, 35.572067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088236, 34.827900, 35.468571>,  <30.107908, 34.467541, 35.296074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088236, 34.827900, 35.468571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978273, -0.043614, 0.202684,
		0.201405, 0.431842, -0.879175,
		-0.049183, 0.900894, 0.431243,
		30.073481, 35.098167, 35.597942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581375, 34.881149, 35.122395>,  <30.107908, 34.467541, 35.296074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581375, 34.881149, 35.122395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507137, 35.037750, 35.482899>,  <30.462595, 35.131710, 35.699203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507137, 35.037750, 35.482899>,  <30.581375, 34.881149, 35.122395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507137, 35.037750, 35.482899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954707, -0.145241, 0.259691,
		0.232572, 0.908641, -0.346818,
		-0.185593, 0.391506, 0.901265,
		30.451460, 35.155201, 35.753277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023695, 35.397972, 35.336700>,  <30.581375, 34.881149, 35.122395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023695, 35.397972, 35.336700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897802, 35.212799, 35.668156>,  <30.822266, 35.101696, 35.867027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897802, 35.212799, 35.668156>,  <31.023695, 35.397972, 35.336700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897802, 35.212799, 35.668156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902064, -0.417514, 0.109372,
		0.295336, 0.781905, 0.549000,
		-0.314733, -0.462932, 0.828636,
		30.803383, 35.073921, 35.916748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416941, 35.587814, 35.985851>,  <31.023695, 35.397972, 35.336700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416941, 35.587814, 35.985851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280796, 35.211712, 35.982414>,  <31.199108, 34.986050, 35.980350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280796, 35.211712, 35.982414>,  <31.416941, 35.587814, 35.985851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280796, 35.211712, 35.982414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939761, -0.340464, 0.030558,
		-0.031658, 0.002325, 0.999496,
		-0.340363, -0.940255, -0.008593,
		31.178688, 34.929634, 35.979836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473705, 35.083042, 36.569427>,  <31.416941, 35.587814, 35.985851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473705, 35.083042, 36.569427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487637, 34.888363, 36.220276>,  <31.495995, 34.771557, 36.010784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487637, 34.888363, 36.220276>,  <31.473705, 35.083042, 36.569427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487637, 34.888363, 36.220276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959240, -0.228807, 0.165849,
		-0.280439, -0.843074, 0.458890,
		0.034826, -0.486696, -0.872877,
		31.498085, 34.742355, 35.958412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743357, 34.349888, 36.574215>,  <31.473705, 35.083042, 36.569427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743357, 34.349888, 36.574215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867378, 34.555740, 36.254459>,  <31.941792, 34.679253, 36.062607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867378, 34.555740, 36.254459>,  <31.743357, 34.349888, 36.574215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867378, 34.555740, 36.254459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944573, -0.071304, 0.320464,
		0.107921, -0.854443, -0.508212,
		0.310056, 0.514628, -0.799389,
		31.960396, 34.710129, 36.014645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427837, 34.161160, 36.569305>,  <31.743357, 34.349888, 36.574215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427837, 34.161160, 36.569305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356544, 34.487984, 36.349979>,  <32.313770, 34.684078, 36.218384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356544, 34.487984, 36.349979>,  <32.427837, 34.161160, 36.569305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356544, 34.487984, 36.349979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886720, 0.374932, 0.270469,
		0.426570, -0.437996, -0.791326,
		-0.178229, 0.817059, -0.548315,
		32.303078, 34.733101, 36.185486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279930, 34.292572, 35.874046>,  <32.427837, 34.161160, 36.569305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279930, 34.292572, 35.874046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606991, 34.466534, 36.024940>,  <32.803226, 34.570911, 36.115479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606991, 34.466534, 36.024940>,  <32.279930, 34.292572, 35.874046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606991, 34.466534, 36.024940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344312, 0.155750, -0.925846,
		-0.461412, 0.886903, -0.022394,
		0.817648, 0.434907, 0.377236,
		32.852283, 34.597004, 36.138111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435577, 34.863419, 35.442513>,  <32.279930, 34.292572, 35.874046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435577, 34.863419, 35.442513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769249, 34.820015, 35.658794>,  <32.969452, 34.793972, 35.788563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769249, 34.820015, 35.658794>,  <32.435577, 34.863419, 35.442513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769249, 34.820015, 35.658794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551486, 0.161302, -0.818441,
		0.001589, 0.980922, 0.194394,
		0.834183, -0.108506, 0.540708,
		33.019505, 34.787464, 35.821007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885300, 35.334160, 35.190742>,  <32.435577, 34.863419, 35.442513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885300, 35.334160, 35.190742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106152, 35.046452, 35.359409>,  <33.238663, 34.873829, 35.460609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106152, 35.046452, 35.359409>,  <32.885300, 35.334160, 35.190742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106152, 35.046452, 35.359409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694516, 0.116946, -0.709909,
		0.461301, 0.684820, 0.564112,
		0.552131, -0.719267, 0.421672,
		33.271790, 34.830673, 35.485912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576862, 35.549065, 35.089005>,  <32.885300, 35.334160, 35.190742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576862, 35.549065, 35.089005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618610, 35.163300, 35.186180>,  <33.643661, 34.931843, 35.244488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618610, 35.163300, 35.186180>,  <33.576862, 35.549065, 35.089005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618610, 35.163300, 35.186180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615795, -0.129152, -0.777249,
		0.780963, 0.230727, 0.580398,
		0.104373, -0.964409, 0.242943,
		33.649921, 34.873978, 35.259064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276787, 35.436832, 35.019577>,  <33.576862, 35.549065, 35.089005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276787, 35.436832, 35.019577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123898, 35.070629, 34.969387>,  <34.032166, 34.850906, 34.939274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123898, 35.070629, 34.969387>,  <34.276787, 35.436832, 35.019577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123898, 35.070629, 34.969387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621019, -0.153941, -0.768529,
		0.684281, -0.371675, 0.627390,
		-0.382224, -0.915511, -0.125479,
		34.009232, 34.795975, 34.931744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826641, 34.961987, 35.032036>,  <34.276787, 35.436832, 35.019577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826641, 34.961987, 35.032036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523083, 34.796341, 34.831005>,  <34.340946, 34.696953, 34.710384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523083, 34.796341, 34.831005>,  <34.826641, 34.961987, 35.032036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523083, 34.796341, 34.831005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627974, -0.261043, -0.733147,
		0.172411, -0.871990, 0.458157,
		-0.758896, -0.414113, -0.502581,
		34.295414, 34.672108, 34.680229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152901, 34.379993, 34.669983>,  <34.826641, 34.961987, 35.032036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152901, 34.379993, 34.669983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803261, 34.402794, 34.477024>,  <34.593475, 34.416473, 34.361248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803261, 34.402794, 34.477024>,  <35.152901, 34.379993, 34.669983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803261, 34.402794, 34.477024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473266, -0.123753, -0.872184,
		-0.109412, -0.990675, 0.081195,
		-0.874098, 0.057001, -0.482393,
		34.541031, 34.419895, 34.332306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189877, 33.864651, 34.157810>,  <35.152901, 34.379993, 34.669983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189877, 33.864651, 34.157810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904945, 34.113716, 34.028263>,  <34.733986, 34.263153, 33.950535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904945, 34.113716, 34.028263>,  <35.189877, 33.864651, 34.157810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904945, 34.113716, 34.028263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410645, -0.004467, -0.911784,
		-0.569179, -0.782479, -0.252511,
		-0.712324, 0.622661, -0.323864,
		34.691250, 34.300514, 33.931103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069931, 33.630486, 33.500835>,  <35.189877, 33.864651, 34.157810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069931, 33.630486, 33.500835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928654, 34.001972, 33.455681>,  <34.843887, 34.224865, 33.428589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928654, 34.001972, 33.455681>,  <35.069931, 33.630486, 33.500835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928654, 34.001972, 33.455681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542619, 0.105064, -0.833383,
		-0.762115, -0.355598, -0.541046,
		-0.353194, 0.928715, -0.112884,
		34.822697, 34.280586, 33.421814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818695, 33.665283, 32.900631>,  <35.069931, 33.630486, 33.500835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818695, 33.665283, 32.900631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886158, 34.048405, 32.993729>,  <34.926636, 34.278278, 33.049587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886158, 34.048405, 32.993729>,  <34.818695, 33.665283, 32.900631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886158, 34.048405, 32.993729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561018, 0.100866, -0.821635,
		-0.810440, 0.269148, -0.520333,
		0.168658, 0.957802, 0.232743,
		34.936756, 34.335747, 33.063553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739098, 34.120590, 32.228554>,  <34.818695, 33.665283, 32.900631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739098, 34.120590, 32.228554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932850, 34.386372, 32.456196>,  <35.049103, 34.545841, 32.592781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932850, 34.386372, 32.456196>,  <34.739098, 34.120590, 32.228554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932850, 34.386372, 32.456196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505725, 0.318147, -0.801888,
		-0.713875, 0.676229, -0.181926,
		0.484381, 0.664452, 0.569103,
		35.078163, 34.585709, 32.626926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635983, 34.808601, 31.826683>,  <34.739098, 34.120590, 32.228554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635983, 34.808601, 31.826683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945766, 34.843334, 32.077335>,  <35.131638, 34.864174, 32.227726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945766, 34.843334, 32.077335>,  <34.635983, 34.808601, 31.826683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945766, 34.843334, 32.077335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533024, 0.443929, -0.720287,
		-0.340726, 0.891845, 0.297521,
		0.774462, 0.086835, 0.626633,
		35.178104, 34.869385, 32.265324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883358, 35.554623, 31.826393>,  <34.635983, 34.808601, 31.826683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883358, 35.554623, 31.826393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195793, 35.333881, 31.943258>,  <35.383255, 35.201435, 32.013378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195793, 35.333881, 31.943258>,  <34.883358, 35.554623, 31.826393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195793, 35.333881, 31.943258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601123, 0.537946, -0.590986,
		0.168971, 0.637237, 0.751916,
		0.781089, -0.551854, 0.292161,
		35.430119, 35.168324, 32.030907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486889, 35.968700, 31.898825>,  <34.883358, 35.554623, 31.826393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486889, 35.968700, 31.898825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642715, 35.603371, 31.851372>,  <35.736210, 35.384171, 31.822899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642715, 35.603371, 31.851372>,  <35.486889, 35.968700, 31.898825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642715, 35.603371, 31.851372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626724, 0.357271, -0.692513,
		0.674875, 0.195428, 0.711584,
		0.389564, -0.913327, -0.118634,
		35.759586, 35.329372, 31.815781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006119, 36.146408, 31.503305>,  <35.486889, 35.968700, 31.898825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006119, 36.146408, 31.503305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994553, 35.749714, 31.453291>,  <35.987614, 35.511700, 31.423283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994553, 35.749714, 31.453291>,  <36.006119, 36.146408, 31.503305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994553, 35.749714, 31.453291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481293, 0.095819, -0.871307,
		0.876083, -0.085372, 0.474543,
		-0.028915, -0.991731, -0.125034,
		35.985878, 35.452194, 31.415781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705261, 35.963322, 31.424545>,  <36.006119, 36.146408, 31.503305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705261, 35.963322, 31.424545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485195, 35.667469, 31.269491>,  <36.353157, 35.489956, 31.176458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485195, 35.667469, 31.269491>,  <36.705261, 35.963322, 31.424545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485195, 35.667469, 31.269491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428549, 0.148334, -0.891259,
		0.716707, -0.656457, 0.235363,
		-0.550161, -0.739636, -0.387636,
		36.320148, 35.445580, 31.153200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206982, 35.568489, 31.124502>,  <36.705261, 35.963322, 31.424545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206982, 35.568489, 31.124502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859497, 35.466038, 30.954922>,  <36.651005, 35.404568, 30.853172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859497, 35.466038, 30.954922>,  <37.206982, 35.568489, 31.124502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859497, 35.466038, 30.954922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405734, 0.122983, -0.905679,
		0.284110, -0.958787, -0.002917,
		-0.868712, -0.256130, -0.423953,
		36.598885, 35.389198, 30.827736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345490, 35.087055, 30.532022>,  <37.206982, 35.568489, 31.124502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345490, 35.087055, 30.532022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974133, 35.215878, 30.457870>,  <36.751316, 35.293171, 30.413380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974133, 35.215878, 30.457870>,  <37.345490, 35.087055, 30.532022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974133, 35.215878, 30.457870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227962, 0.099634, -0.968559,
		-0.293456, -0.941465, -0.165916,
		-0.928395, 0.322052, -0.185380,
		36.695614, 35.312492, 30.402256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081802, 34.616070, 30.093042>,  <37.345490, 35.087055, 30.532022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081802, 34.616070, 30.093042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884064, 34.961948, 30.057423>,  <36.765423, 35.169476, 30.036051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884064, 34.961948, 30.057423>,  <37.081802, 34.616070, 30.093042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884064, 34.961948, 30.057423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253405, 0.045360, -0.966296,
		-0.831512, -0.500246, -0.241542,
		-0.494342, 0.864694, -0.089048,
		36.735760, 35.221355, 30.030708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639103, 34.510792, 29.448151>,  <37.081802, 34.616070, 30.093042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639103, 34.510792, 29.448151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682671, 34.900726, 29.525946>,  <36.708813, 35.134689, 29.572622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682671, 34.900726, 29.525946>,  <36.639103, 34.510792, 29.448151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682671, 34.900726, 29.525946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323728, 0.150202, -0.934152,
		-0.939860, 0.164708, -0.299223,
		0.108918, 0.974839, 0.194489,
		36.715347, 35.193176, 29.584291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360966, 34.784447, 28.896900>,  <36.639103, 34.510792, 29.448151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360966, 34.784447, 28.896900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586708, 35.080021, 29.044128>,  <36.722153, 35.257366, 29.132465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586708, 35.080021, 29.044128>,  <36.360966, 34.784447, 28.896900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586708, 35.080021, 29.044128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223210, 0.292665, -0.929798,
		-0.794786, 0.606890, 0.000227,
		0.564352, 0.738940, 0.368070,
		36.756012, 35.301704, 29.154549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264290, 35.304192, 28.472321>,  <36.360966, 34.784447, 28.896900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264290, 35.304192, 28.472321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609077, 35.411205, 28.644567>,  <36.815952, 35.475414, 28.747915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609077, 35.411205, 28.644567>,  <36.264290, 35.304192, 28.472321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609077, 35.411205, 28.644567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345361, 0.311932, -0.885112,
		-0.371119, 0.911660, 0.176482,
		0.861973, 0.267532, 0.430616,
		36.867668, 35.491467, 28.773752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390053, 35.989826, 28.283035>,  <36.264290, 35.304192, 28.472321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390053, 35.989826, 28.283035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759418, 35.907818, 28.412821>,  <36.981037, 35.858612, 28.490692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759418, 35.907818, 28.412821>,  <36.390053, 35.989826, 28.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759418, 35.907818, 28.412821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382031, 0.409709, -0.828366,
		0.036896, 0.888879, 0.456654,
		0.923413, -0.205020, 0.324463,
		37.036442, 35.846313, 28.510160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825344, 36.619549, 28.254112>,  <36.390053, 35.989826, 28.283035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825344, 36.619549, 28.254112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096176, 36.325199, 28.251127>,  <37.258675, 36.148590, 28.249336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096176, 36.325199, 28.251127>,  <36.825344, 36.619549, 28.254112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096176, 36.325199, 28.251127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433874, 0.407357, -0.803625,
		0.594406, 0.540880, 0.595089,
		0.677079, -0.735873, -0.007462,
		37.299301, 36.104439, 28.248888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401356, 36.916031, 28.114603>,  <36.825344, 36.619549, 28.254112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401356, 36.916031, 28.114603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485332, 36.537693, 28.015570>,  <37.535717, 36.310688, 27.956150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485332, 36.537693, 28.015570>,  <37.401356, 36.916031, 28.114603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485332, 36.537693, 28.015570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475643, 0.320046, -0.819350,
		0.854218, 0.054254, 0.517076,
		0.209941, -0.945847, -0.247584,
		37.548313, 36.253941, 27.941294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165421, 36.943260, 27.871069>,  <37.401356, 36.916031, 28.114603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165421, 36.943260, 27.871069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999924, 36.622120, 27.699375>,  <37.900627, 36.429436, 27.596359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999924, 36.622120, 27.699375>,  <38.165421, 36.943260, 27.871069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999924, 36.622120, 27.699375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611818, 0.103938, -0.784140,
		0.674165, -0.587044, 0.448198,
		-0.413740, -0.802855, -0.429236,
		37.875801, 36.381264, 27.570604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677467, 36.668438, 27.573633>,  <38.165421, 36.943260, 27.871069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677467, 36.668438, 27.573633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373394, 36.513241, 27.365181>,  <38.190948, 36.420124, 27.240108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373394, 36.513241, 27.365181>,  <38.677467, 36.668438, 27.573633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373394, 36.513241, 27.365181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550484, 0.041392, -0.833819,
		0.345086, -0.920733, 0.182118,
		-0.760186, -0.387992, -0.521133,
		38.145340, 36.396843, 27.208841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976791, 36.227909, 27.316378>,  <38.677467, 36.668438, 27.573633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976791, 36.227909, 27.316378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648991, 36.253452, 27.088575>,  <38.452309, 36.268780, 26.951895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648991, 36.253452, 27.088575>,  <38.976791, 36.227909, 27.316378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648991, 36.253452, 27.088575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570364, 0.187443, -0.799719,
		0.055679, -0.980198, -0.190033,
		-0.819503, 0.063860, -0.569506,
		38.403141, 36.272610, 26.917725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130577, 35.844627, 26.691866>,  <38.976791, 36.227909, 27.316378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130577, 35.844627, 26.691866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819561, 36.084743, 26.616947>,  <38.632950, 36.228813, 26.571997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819561, 36.084743, 26.616947>,  <39.130577, 35.844627, 26.691866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819561, 36.084743, 26.616947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524907, 0.455566, -0.718980,
		-0.346272, -0.657349, -0.669319,
		-0.777539, 0.600293, -0.187297,
		38.586300, 36.264832, 26.560759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997787, 35.730507, 25.962988>,  <39.130577, 35.844627, 26.691866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997787, 35.730507, 25.962988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868786, 36.096100, 26.061481>,  <38.791386, 36.315456, 26.120579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868786, 36.096100, 26.061481>,  <38.997787, 35.730507, 25.962988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868786, 36.096100, 26.061481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556135, 0.393460, -0.732054,
		-0.765967, -0.099151, -0.635188,
		-0.322505, 0.913979, 0.246235,
		38.772034, 36.370293, 26.135351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983555, 36.077866, 25.401567>,  <38.997787, 35.730507, 25.962988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983555, 36.077866, 25.401567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967960, 36.385162, 25.657156>,  <38.958603, 36.569542, 25.810509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967960, 36.385162, 25.657156>,  <38.983555, 36.077866, 25.401567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967960, 36.385162, 25.657156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574846, 0.540293, -0.614521,
		-0.817332, 0.343352, -0.462686,
		-0.038989, 0.768241, 0.638973,
		38.956264, 36.615635, 25.848848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873734, 36.638771, 25.019884>,  <38.983555, 36.077866, 25.401567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873734, 36.638771, 25.019884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000191, 36.806004, 25.360533>,  <39.076065, 36.906342, 25.564922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000191, 36.806004, 25.360533>,  <38.873734, 36.638771, 25.019884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000191, 36.806004, 25.360533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509423, 0.682465, -0.524146,
		-0.800338, 0.599542, 0.002776,
		0.316143, 0.418080, 0.851624,
		39.095032, 36.931427, 25.616020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833401, 37.281044, 24.803988>,  <38.873734, 36.638771, 25.019884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833401, 37.281044, 24.803988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085819, 37.267010, 25.113966>,  <39.237270, 37.258591, 25.299953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085819, 37.267010, 25.113966>,  <38.833401, 37.281044, 24.803988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085819, 37.267010, 25.113966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631085, 0.604152, -0.486551,
		-0.451118, 0.796096, 0.403390,
		0.631050, -0.035081, 0.774948,
		39.275135, 37.256485, 25.346451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072205, 38.000114, 24.952774>,  <38.833401, 37.281044, 24.803988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072205, 38.000114, 24.952774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325977, 37.753021, 25.138634>,  <39.478241, 37.604763, 25.250151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325977, 37.753021, 25.138634>,  <39.072205, 38.000114, 24.952774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325977, 37.753021, 25.138634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772823, 0.494809, -0.397378,
		0.015561, 0.611202, 0.791322,
		0.634431, -0.617735, 0.464651,
		39.516308, 37.567699, 25.278028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587944, 38.413982, 25.355362>,  <39.072205, 38.000114, 24.952774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587944, 38.413982, 25.355362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720207, 38.051872, 25.248672>,  <39.799564, 37.834606, 25.184660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720207, 38.051872, 25.248672>,  <39.587944, 38.413982, 25.355362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720207, 38.051872, 25.248672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782326, 0.420998, -0.459050,
		0.527857, -0.056875, 0.847427,
		0.330657, -0.905277, -0.266722,
		39.819405, 37.780289, 25.168655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205463, 38.566402, 25.440277>,  <39.587944, 38.413982, 25.355362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205463, 38.566402, 25.440277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215736, 38.240807, 25.208153>,  <40.221901, 38.045448, 25.068878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215736, 38.240807, 25.208153>,  <40.205463, 38.566402, 25.440277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215736, 38.240807, 25.208153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680737, 0.439353, -0.586145,
		0.732078, -0.379988, 0.565395,
		0.025679, -0.813989, -0.580312,
		40.223442, 37.996609, 25.034060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937225, 38.570477, 25.250181>,  <40.205463, 38.566402, 25.440277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937225, 38.570477, 25.250181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722576, 38.337318, 25.006126>,  <40.593784, 38.197422, 24.859694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722576, 38.337318, 25.006126>,  <40.937225, 38.570477, 25.250181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722576, 38.337318, 25.006126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485831, 0.377767, -0.788200,
		0.689929, -0.719391, 0.080471,
		-0.536625, -0.582897, -0.610135,
		40.561588, 38.162449, 24.823086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380882, 38.203297, 24.882318>,  <40.937225, 38.570477, 25.250181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380882, 38.203297, 24.882318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054451, 38.214535, 24.651413>,  <40.858593, 38.221279, 24.512869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054451, 38.214535, 24.651413>,  <41.380882, 38.203297, 24.882318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054451, 38.214535, 24.651413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548047, 0.354724, -0.757506,
		0.183484, -0.934548, -0.304881,
		-0.816075, 0.028099, -0.577263,
		40.809628, 38.222965, 24.478233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550865, 37.876659, 24.263533>,  <41.380882, 38.203297, 24.882318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550865, 37.876659, 24.263533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239548, 38.114346, 24.182365>,  <41.052757, 38.256958, 24.133665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239548, 38.114346, 24.182365>,  <41.550865, 37.876659, 24.263533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239548, 38.114346, 24.182365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520315, 0.429428, -0.738149,
		-0.351480, -0.680075, -0.643398,
		-0.778289, 0.594214, -0.202918,
		41.006062, 38.292610, 24.121490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662872, 37.975952, 23.592575>,  <41.550865, 37.876659, 24.263533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662872, 37.975952, 23.592575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364849, 38.238522, 23.639896>,  <41.186035, 38.396061, 23.668289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364849, 38.238522, 23.639896>,  <41.662872, 37.975952, 23.592575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364849, 38.238522, 23.639896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322260, 0.509562, -0.797807,
		-0.583979, -0.556291, -0.591193,
		-0.745062, 0.656420, 0.118303,
		41.141331, 38.435448, 23.675386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356327, 38.115055, 22.984934>,  <41.662872, 37.975952, 23.592575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356327, 38.115055, 22.984934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244526, 38.449600, 23.173559>,  <41.177444, 38.650330, 23.286734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244526, 38.449600, 23.173559>,  <41.356327, 38.115055, 22.984934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244526, 38.449600, 23.173559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203822, 0.531628, -0.822088,
		-0.938261, -0.133662, -0.319062,
		-0.279504, 0.836365, 0.471562,
		41.160675, 38.700508, 23.315027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008900, 38.522572, 22.521044>,  <41.356327, 38.115055, 22.984934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008900, 38.522572, 22.521044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121143, 38.792950, 22.793617>,  <41.188488, 38.955177, 22.957161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121143, 38.792950, 22.793617>,  <41.008900, 38.522572, 22.521044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121143, 38.792950, 22.793617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127354, 0.677461, -0.724450,
		-0.951336, 0.290070, 0.104017,
		0.280609, 0.675949, 0.681434,
		41.205326, 38.995735, 22.998047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659924, 39.138401, 22.302382>,  <41.008900, 38.522572, 22.521044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659924, 39.138401, 22.302382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966927, 39.247307, 22.534523>,  <41.151127, 39.312649, 22.673807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966927, 39.247307, 22.534523>,  <40.659924, 39.138401, 22.302382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966927, 39.247307, 22.534523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208436, 0.750143, -0.627566,
		-0.606209, 0.602627, 0.518991,
		0.767506, 0.272260, 0.580353,
		41.197178, 39.328983, 22.708630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644669, 39.872383, 22.383945>,  <40.659924, 39.138401, 22.302382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644669, 39.872383, 22.383945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036366, 39.792084, 22.395142>,  <41.271385, 39.743904, 22.401859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036366, 39.792084, 22.395142>,  <40.644669, 39.872383, 22.383945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036366, 39.792084, 22.395142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176524, 0.776795, -0.604508,
		0.099613, 0.596901, 0.796108,
		0.979243, -0.200749, 0.027989,
		41.330139, 39.731857, 22.403538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943958, 40.583347, 22.542070>,  <40.644669, 39.872383, 22.383945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943958, 40.583347, 22.542070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219200, 40.358501, 22.358530>,  <41.384346, 40.223595, 22.248405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219200, 40.358501, 22.358530>,  <40.943958, 40.583347, 22.542070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219200, 40.358501, 22.358530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274313, 0.786954, -0.552681,
		0.671764, 0.254432, 0.695699,
		0.688103, -0.562111, -0.458853,
		41.425632, 40.189869, 22.220875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483707, 40.683727, 23.119791>,  <40.943958, 40.583347, 22.542070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483707, 40.683727, 23.119791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781174, 40.931049, 23.221504>,  <41.959656, 41.079441, 23.282532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781174, 40.931049, 23.221504>,  <41.483707, 40.683727, 23.119791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781174, 40.931049, 23.221504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381637, -0.080324, -0.920815,
		-0.548916, 0.781826, -0.295701,
		0.743669, 0.618301, 0.254282,
		42.004276, 41.116539, 23.297789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547771, 41.148411, 22.647770>,  <41.483707, 40.683727, 23.119791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547771, 41.148411, 22.647770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903446, 41.139904, 22.830589>,  <42.116852, 41.134800, 22.940281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903446, 41.139904, 22.830589>,  <41.547771, 41.148411, 22.647770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903446, 41.139904, 22.830589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435549, -0.266631, -0.859770,
		0.140152, 0.963564, -0.227820,
		0.889187, -0.021271, 0.457048,
		42.170204, 41.133522, 22.967705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963791, 41.072109, 22.074770>,  <41.547771, 41.148411, 22.647770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963791, 41.072109, 22.074770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201302, 41.014027, 22.391336>,  <42.343807, 40.979179, 22.581276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201302, 41.014027, 22.391336>,  <41.963791, 41.072109, 22.074770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201302, 41.014027, 22.391336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639126, -0.512421, -0.573536,
		0.488818, 0.846369, -0.211462,
		0.593781, -0.145203, 0.791417,
		42.379436, 40.970467, 22.628761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558228, 41.002674, 21.827084>,  <41.963791, 41.072109, 22.074770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558228, 41.002674, 21.827084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625423, 40.843616, 22.187897>,  <42.665741, 40.748180, 22.404385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625423, 40.843616, 22.187897>,  <42.558228, 41.002674, 21.827084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625423, 40.843616, 22.187897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733170, -0.561276, -0.383967,
		0.658971, 0.725843, 0.197255,
		0.167985, -0.397645, 0.902031,
		42.675819, 40.724323, 22.458506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363125, 41.079460, 22.099077>,  <42.558228, 41.002674, 21.827084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363125, 41.079460, 22.099077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188534, 40.770645, 22.283878>,  <43.083778, 40.585358, 22.394758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188534, 40.770645, 22.283878>,  <43.363125, 41.079460, 22.099077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188534, 40.770645, 22.283878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811320, -0.559703, -0.168796,
		0.388900, 0.301155, 0.870668,
		-0.436482, -0.772035, 0.462002,
		43.057590, 40.539036, 22.422480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654881, 40.979713, 22.861263>,  <43.363125, 41.079460, 22.099077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654881, 40.979713, 22.861263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287968, 41.137665, 22.840624>,  <43.067822, 41.232437, 22.828239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287968, 41.137665, 22.840624>,  <43.654881, 40.979713, 22.861263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287968, 41.137665, 22.840624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007014, 0.113526, 0.993510,
		0.398178, 0.911690, -0.101366,
		-0.917281, 0.394883, -0.051598,
		43.012783, 41.256130, 22.825144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316338, 41.326965, 23.483229>,  <43.654881, 40.979713, 22.861263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316338, 41.326965, 23.483229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965271, 41.269276, 23.300404>,  <42.754631, 41.234661, 23.190708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965271, 41.269276, 23.300404>,  <43.316338, 41.326965, 23.483229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965271, 41.269276, 23.300404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478808, 0.221622, 0.849486,
		-0.021217, 0.964409, -0.263563,
		-0.877663, -0.144220, -0.457065,
		42.701973, 41.226009, 23.163284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977367, 41.998730, 23.574224>,  <43.316338, 41.326965, 23.483229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977367, 41.998730, 23.574224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720921, 41.696995, 23.517738>,  <42.567051, 41.515953, 23.483847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720921, 41.696995, 23.517738>,  <42.977367, 41.998730, 23.574224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720921, 41.696995, 23.517738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440298, 0.210830, 0.872748,
		-0.628573, 0.621713, -0.467300,
		-0.641119, -0.754337, -0.141216,
		42.528584, 41.470695, 23.475374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245899, 42.204556, 23.784689>,  <42.977367, 41.998730, 23.574224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245899, 42.204556, 23.784689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251083, 41.806522, 23.823959>,  <42.254196, 41.567703, 23.847521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251083, 41.806522, 23.823959>,  <42.245899, 42.204556, 23.784689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251083, 41.806522, 23.823959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698864, 0.061204, 0.712631,
		-0.715137, -0.077848, -0.694636,
		0.012962, -0.995085, 0.098174,
		42.254971, 41.507996, 23.853411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611916, 42.085655, 23.998074>,  <42.245899, 42.204556, 23.784689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611916, 42.085655, 23.998074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792400, 41.734436, 24.061867>,  <41.900692, 41.523705, 24.100143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792400, 41.734436, 24.061867>,  <41.611916, 42.085655, 23.998074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792400, 41.734436, 24.061867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564802, -0.142606, 0.812811,
		-0.690945, -0.456828, -0.560270,
		0.451213, -0.878050, 0.159485,
		41.927765, 41.471020, 24.109713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056046, 41.488686, 24.157946>,  <41.611916, 42.085655, 23.998074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056046, 41.488686, 24.157946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385918, 41.342987, 24.331022>,  <41.583839, 41.255566, 24.434868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385918, 41.342987, 24.331022>,  <41.056046, 41.488686, 24.157946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385918, 41.342987, 24.331022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549228, -0.333008, 0.766456,
		-0.135088, -0.869730, -0.474680,
		0.824682, -0.364247, 0.432695,
		41.633324, 41.233711, 24.460831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865608, 40.902512, 24.453449>,  <41.056046, 41.488686, 24.157946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865608, 40.902512, 24.453449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214756, 40.951412, 24.642408>,  <41.424244, 40.980751, 24.755783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214756, 40.951412, 24.642408>,  <40.865608, 40.902512, 24.453449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214756, 40.951412, 24.642408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403615, -0.363171, 0.839763,
		0.274222, -0.923667, -0.267658,
		0.872867, 0.122251, 0.472396,
		41.476616, 40.988087, 24.784126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099396, 40.244030, 24.622849>,  <40.865608, 40.902512, 24.453449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099396, 40.244030, 24.622849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238331, 40.523361, 24.873192>,  <41.321693, 40.690960, 25.023397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238331, 40.523361, 24.873192>,  <41.099396, 40.244030, 24.622849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238331, 40.523361, 24.873192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370776, -0.510752, 0.775666,
		0.861325, -0.501473, 0.081517,
		0.347340, 0.698325, 0.625857,
		41.342533, 40.732857, 25.060949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156162, 39.887703, 25.163658>,  <41.099396, 40.244030, 24.622849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156162, 39.887703, 25.163658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211159, 40.249939, 25.324156>,  <41.244156, 40.467281, 25.420454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211159, 40.249939, 25.324156>,  <41.156162, 39.887703, 25.163658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211159, 40.249939, 25.324156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513263, -0.281324, 0.810814,
		0.847146, -0.317426, 0.426126,
		0.137494, 0.905592, 0.401245,
		41.252407, 40.521618, 25.444529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335003, 39.668884, 25.807575>,  <41.156162, 39.887703, 25.163658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335003, 39.668884, 25.807575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229809, 40.054771, 25.812672>,  <41.166695, 40.286304, 25.815729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229809, 40.054771, 25.812672>,  <41.335003, 39.668884, 25.807575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229809, 40.054771, 25.812672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372184, -0.113624, 0.921178,
		0.890124, 0.237510, 0.388933,
		-0.262982, 0.964717, 0.012742,
		41.150913, 40.344185, 25.816494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675690, 39.949799, 26.319309>,  <41.335003, 39.668884, 25.807575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675690, 39.949799, 26.319309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354702, 40.188042, 26.304920>,  <41.162109, 40.330986, 26.296288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354702, 40.188042, 26.304920>,  <41.675690, 39.949799, 26.319309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354702, 40.188042, 26.304920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126814, -0.111328, 0.985659,
		0.583060, 0.795525, 0.164868,
		-0.802471, 0.595606, -0.035973,
		41.113960, 40.366722, 26.294128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636196, 40.331177, 26.946720>,  <41.675690, 39.949799, 26.319309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636196, 40.331177, 26.946720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257557, 40.400726, 26.838118>,  <41.030373, 40.442455, 26.772955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257557, 40.400726, 26.838118>,  <41.636196, 40.331177, 26.946720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257557, 40.400726, 26.838118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312787, -0.291044, 0.904134,
		0.078187, 0.940776, 0.329888,
		-0.946600, 0.173876, -0.271507,
		40.973576, 40.452888, 26.756666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244770, 40.605179, 27.591930>,  <41.636196, 40.331177, 26.946720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244770, 40.605179, 27.591930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933132, 40.504211, 27.362394>,  <40.746147, 40.443630, 27.224672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933132, 40.504211, 27.362394>,  <41.244770, 40.605179, 27.591930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933132, 40.504211, 27.362394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512604, -0.270451, 0.814919,
		-0.360895, 0.929055, 0.081318,
		-0.779097, -0.252416, -0.573841,
		40.699402, 40.428486, 27.190243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636929, 40.886524, 27.957142>,  <41.244770, 40.605179, 27.591930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636929, 40.886524, 27.957142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514328, 40.581203, 27.729658>,  <40.440769, 40.398010, 27.593168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514328, 40.581203, 27.729658>,  <40.636929, 40.886524, 27.957142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514328, 40.581203, 27.729658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589497, -0.316886, 0.743018,
		-0.747362, 0.562987, -0.352838,
		-0.306500, -0.763301, -0.568708,
		40.422379, 40.352215, 27.559046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900921, 40.949638, 27.946180>,  <40.636929, 40.886524, 27.957142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900921, 40.949638, 27.946180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971214, 40.560665, 27.884880>,  <40.013390, 40.327282, 27.848101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971214, 40.560665, 27.884880>,  <39.900921, 40.949638, 27.946180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971214, 40.560665, 27.884880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651167, -0.231572, 0.722742,
		-0.738310, -0.027215, -0.673913,
		0.175729, -0.972437, -0.153251,
		40.023933, 40.268932, 27.838905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277374, 40.567772, 27.766361>,  <39.900921, 40.949638, 27.946180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277374, 40.567772, 27.766361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520313, 40.277653, 27.896023>,  <39.666077, 40.103580, 27.973820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520313, 40.277653, 27.896023>,  <39.277374, 40.567772, 27.766361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520313, 40.277653, 27.896023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740798, -0.369657, 0.560867,
		-0.286969, -0.580773, -0.761808,
		0.607344, -0.725298, 0.324156,
		39.702515, 40.060062, 27.993269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966984, 39.981800, 27.690527>,  <39.277374, 40.567772, 27.766361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966984, 39.981800, 27.690527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236973, 39.863819, 27.961058>,  <39.398968, 39.793030, 28.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236973, 39.863819, 27.961058>,  <38.966984, 39.981800, 27.690527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236973, 39.863819, 27.961058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725937, -0.429474, 0.537185,
		0.132020, -0.853554, -0.504000,
		0.674971, -0.294953, 0.676326,
		39.439465, 39.775333, 28.163956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692619, 39.350143, 27.874453>,  <38.966984, 39.981800, 27.690527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692619, 39.350143, 27.874453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958118, 39.429638, 28.162880>,  <39.117420, 39.477333, 28.335936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958118, 39.429638, 28.162880>,  <38.692619, 39.350143, 27.874453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958118, 39.429638, 28.162880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666043, -0.281606, 0.690713,
		0.340328, -0.938723, -0.054547,
		0.663749, 0.198738, 0.721068,
		39.157242, 39.489258, 28.379200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625843, 38.760231, 28.262571>,  <38.692619, 39.350143, 27.874453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625843, 38.760231, 28.262571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805485, 39.037384, 28.488216>,  <38.913269, 39.203674, 28.623604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805485, 39.037384, 28.488216>,  <38.625843, 38.760231, 28.262571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805485, 39.037384, 28.488216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500846, -0.327620, 0.801136,
		0.739906, -0.642326, 0.199891,
		0.449102, 0.692879, 0.564114,
		38.940216, 39.245247, 28.657452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906693, 38.410511, 28.930496>,  <38.625843, 38.760231, 28.262571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906693, 38.410511, 28.930496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888363, 38.801983, 29.010576>,  <38.877365, 39.036865, 29.058624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888363, 38.801983, 29.010576>,  <38.906693, 38.410511, 28.930496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888363, 38.801983, 29.010576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466378, -0.198189, 0.862098,
		0.883398, -0.053865, 0.465518,
		-0.045823, 0.978683, 0.200201,
		38.874615, 39.095589, 29.070637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206596, 38.545807, 29.593596>,  <38.906693, 38.410511, 28.930496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206596, 38.545807, 29.593596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957424, 38.844070, 29.498980>,  <38.807919, 39.023029, 29.442209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957424, 38.844070, 29.498980>,  <39.206596, 38.545807, 29.593596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957424, 38.844070, 29.498980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277032, 0.072503, 0.958121,
		0.731579, 0.662375, 0.161406,
		-0.622933, 0.745656, -0.236541,
		38.770546, 39.067768, 29.428017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293785, 38.994690, 30.169788>,  <39.206596, 38.545807, 29.593596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293785, 38.994690, 30.169788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961731, 39.131443, 29.993608>,  <38.762501, 39.213497, 29.887901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961731, 39.131443, 29.993608>,  <39.293785, 38.994690, 30.169788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961731, 39.131443, 29.993608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458376, 0.031290, 0.888207,
		0.317447, 0.939220, 0.130737,
		-0.830132, 0.341885, -0.440449,
		38.712692, 39.234009, 29.861473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012993, 39.561848, 30.556345>,  <39.293785, 38.994690, 30.169788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012993, 39.561848, 30.556345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691425, 39.431099, 30.357599>,  <38.498486, 39.352650, 30.238352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691425, 39.431099, 30.357599>,  <39.012993, 39.561848, 30.556345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691425, 39.431099, 30.357599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541841, 0.058092, 0.838471,
		-0.245213, 0.943280, -0.223816,
		-0.803915, -0.326876, -0.496863,
		38.450253, 39.333035, 30.208540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429485, 39.943157, 30.878731>,  <39.012993, 39.561848, 30.556345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429485, 39.943157, 30.878731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267731, 39.627590, 30.693655>,  <38.170677, 39.438251, 30.582609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267731, 39.627590, 30.693655>,  <38.429485, 39.943157, 30.878731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267731, 39.627590, 30.693655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484607, -0.244216, 0.839949,
		-0.775644, 0.563890, -0.283555,
		-0.404390, -0.788915, -0.462690,
		38.146412, 39.390915, 30.554848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745510, 40.010765, 31.072428>,  <38.429485, 39.943157, 30.878731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745510, 40.010765, 31.072428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772190, 39.632774, 30.944323>,  <37.788197, 39.405979, 30.867458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772190, 39.632774, 30.944323>,  <37.745510, 40.010765, 31.072428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772190, 39.632774, 30.944323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651360, -0.284384, 0.703460,
		-0.755832, 0.161690, -0.634488,
		0.066696, -0.944977, -0.320265,
		37.792198, 39.349281, 30.848244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104221, 39.708626, 30.932472>,  <37.745510, 40.010765, 31.072428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104221, 39.708626, 30.932472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335533, 39.403160, 31.047300>,  <37.474319, 39.219879, 31.116198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335533, 39.403160, 31.047300>,  <37.104221, 39.708626, 30.932472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335533, 39.403160, 31.047300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725528, -0.320465, 0.609025,
		-0.373098, -0.560461, -0.739380,
		0.578280, -0.763666, 0.287065,
		37.509018, 39.174061, 31.133421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689800, 39.206074, 31.153357>,  <37.104221, 39.708626, 30.932472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689800, 39.206074, 31.153357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037960, 39.058182, 31.283407>,  <37.246857, 38.969448, 31.361439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037960, 39.058182, 31.283407>,  <36.689800, 39.206074, 31.153357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037960, 39.058182, 31.283407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489818, -0.583381, 0.647877,
		-0.049865, -0.723165, -0.688873,
		0.870398, -0.369729, 0.325129,
		37.299080, 38.947262, 31.380945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587273, 38.443199, 31.199738>,  <36.689800, 39.206074, 31.153357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587273, 38.443199, 31.199738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877792, 38.535492, 31.458735>,  <37.052105, 38.590870, 31.614134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877792, 38.535492, 31.458735>,  <36.587273, 38.443199, 31.199738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877792, 38.535492, 31.458735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455814, -0.543412, 0.704937,
		0.514509, -0.807134, -0.289509,
		0.726301, 0.230734, 0.647493,
		37.095684, 38.604713, 31.652983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538422, 37.893047, 31.622192>,  <36.587273, 38.443199, 31.199738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538422, 37.893047, 31.622192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749405, 38.172569, 31.815462>,  <36.875996, 38.340282, 31.931425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749405, 38.172569, 31.815462>,  <36.538422, 37.893047, 31.622192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749405, 38.172569, 31.815462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373293, -0.320257, 0.870682,
		0.763179, -0.639613, 0.091938,
		0.527456, 0.698806, 0.483177,
		36.907642, 38.382210, 31.960415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957256, 37.592331, 32.234112>,  <36.538422, 37.893047, 31.622192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957256, 37.592331, 32.234112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929916, 37.982216, 32.319210>,  <36.913513, 38.216148, 32.370270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929916, 37.982216, 32.319210>,  <36.957256, 37.592331, 32.234112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929916, 37.982216, 32.319210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341202, -0.223225, 0.913100,
		0.937502, -0.010183, 0.347831,
		-0.068346, 0.974714, 0.212748,
		36.909412, 38.274632, 32.383034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396301, 37.730675, 32.886120>,  <36.957256, 37.592331, 32.234112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396301, 37.730675, 32.886120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124767, 38.022598, 32.853722>,  <36.961845, 38.197750, 32.834282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124767, 38.022598, 32.853722>,  <37.396301, 37.730675, 32.886120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124767, 38.022598, 32.853722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450623, -0.326966, 0.830682,
		0.579756, 0.600396, 0.550825,
		-0.678839, 0.729807, -0.080992,
		36.921116, 38.241539, 32.829426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329220, 38.097496, 33.586468>,  <37.396301, 37.730675, 32.886120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329220, 38.097496, 33.586468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000767, 38.222397, 33.395367>,  <36.803696, 38.297337, 33.280708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000767, 38.222397, 33.395367>,  <37.329220, 38.097496, 33.586468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000767, 38.222397, 33.395367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557653, -0.260698, 0.788074,
		0.121531, 0.913528, 0.388196,
		-0.821130, 0.312254, -0.477749,
		36.754429, 38.316074, 33.252041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077374, 38.471771, 34.065144>,  <37.329220, 38.097496, 33.586468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077374, 38.471771, 34.065144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780548, 38.376286, 33.814590>,  <36.602451, 38.318993, 33.664261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780548, 38.376286, 33.814590>,  <37.077374, 38.471771, 34.065144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780548, 38.376286, 33.814590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620731, -0.108031, 0.776545,
		-0.253042, 0.965062, -0.068012,
		-0.742066, -0.238715, -0.626381,
		36.557930, 38.304672, 33.626675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592949, 38.701614, 34.380287>,  <37.077374, 38.471771, 34.065144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592949, 38.701614, 34.380287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402821, 38.450142, 34.134090>,  <36.288742, 38.299259, 33.986374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402821, 38.450142, 34.134090>,  <36.592949, 38.701614, 34.380287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402821, 38.450142, 34.134090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596298, -0.284184, 0.750779,
		-0.646915, 0.723875, -0.239805,
		-0.475321, -0.628685, -0.615488,
		36.260223, 38.261536, 33.949444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896500, 38.861423, 34.351322>,  <36.592949, 38.701614, 34.380287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896500, 38.861423, 34.351322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859306, 38.484001, 34.224167>,  <35.836990, 38.257545, 34.147873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859306, 38.484001, 34.224167>,  <35.896500, 38.861423, 34.351322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859306, 38.484001, 34.224167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681775, -0.172339, 0.710973,
		-0.725629, 0.282835, -0.627270,
		-0.092985, -0.943559, -0.317884,
		35.831409, 38.200932, 34.128803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237289, 38.730335, 34.456177>,  <35.896500, 38.861423, 34.351322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237289, 38.730335, 34.456177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378731, 38.358044, 34.418861>,  <35.463596, 38.134670, 34.396473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378731, 38.358044, 34.418861>,  <35.237289, 38.730335, 34.456177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378731, 38.358044, 34.418861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636884, -0.312607, 0.704738,
		-0.685085, -0.189784, -0.703307,
		0.353606, -0.930731, -0.093292,
		35.484814, 38.078823, 34.390873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692593, 38.304562, 34.570740>,  <35.237289, 38.730335, 34.456177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692593, 38.304562, 34.570740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996590, 38.053963, 34.639919>,  <35.178989, 37.903603, 34.681427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996590, 38.053963, 34.639919>,  <34.692593, 38.304562, 34.570740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996590, 38.053963, 34.639919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551272, -0.480435, 0.682115,
		-0.344251, -0.613746, -0.710498,
		0.759994, -0.626497, 0.172950,
		35.224586, 37.866013, 34.691803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450378, 37.505753, 34.489254>,  <34.692593, 38.304562, 34.570740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450378, 37.505753, 34.489254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758858, 37.538963, 34.741718>,  <34.943943, 37.558891, 34.893196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758858, 37.538963, 34.741718>,  <34.450378, 37.505753, 34.489254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758858, 37.538963, 34.741718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464922, -0.603812, 0.647502,
		0.434861, -0.792791, -0.427057,
		0.771196, 0.083026, 0.631160,
		34.990215, 37.563869, 34.931065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654480, 36.841850, 34.628330>,  <34.450378, 37.505753, 34.489254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654480, 36.841850, 34.628330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792236, 37.050091, 34.940834>,  <34.874889, 37.175037, 35.128338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792236, 37.050091, 34.940834>,  <34.654480, 36.841850, 34.628330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792236, 37.050091, 34.940834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395150, -0.674486, 0.623639,
		0.851618, -0.523489, -0.026569,
		0.344388, 0.520604, 0.781261,
		34.895554, 37.206272, 35.175213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983349, 36.333355, 35.060028>,  <34.654480, 36.841850, 34.628330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983349, 36.333355, 35.060028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960541, 36.643471, 35.311638>,  <34.946857, 36.829540, 35.462605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960541, 36.643471, 35.311638>,  <34.983349, 36.333355, 35.060028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960541, 36.643471, 35.311638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170875, -0.628331, 0.758948,
		0.983641, -0.064208, 0.168306,
		-0.057021, 0.775292, 0.629024,
		34.943436, 36.876057, 35.500343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416290, 36.256226, 35.613930>,  <34.983349, 36.333355, 35.060028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416290, 36.256226, 35.613930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124943, 36.496223, 35.746281>,  <34.950134, 36.640224, 35.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124943, 36.496223, 35.746281>,  <35.416290, 36.256226, 35.613930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124943, 36.496223, 35.746281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150322, -0.611068, 0.777174,
		0.668493, 0.516331, 0.535276,
		-0.728369, 0.599999, 0.330879,
		34.906433, 36.676224, 35.845543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552483, 36.376633, 36.362759>,  <35.416290, 36.256226, 35.613930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552483, 36.376633, 36.362759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167267, 36.464775, 36.300785>,  <34.936138, 36.517662, 36.263603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167267, 36.464775, 36.300785>,  <35.552483, 36.376633, 36.362759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167267, 36.464775, 36.300785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251554, -0.529992, 0.809833,
		0.096342, 0.818871, 0.565834,
		-0.963036, 0.220359, -0.154930,
		34.878357, 36.530884, 36.254307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277927, 36.663181, 36.998360>,  <35.552483, 36.376633, 36.362759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277927, 36.663181, 36.998360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034050, 36.441845, 36.771347>,  <34.887722, 36.309044, 36.635139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034050, 36.441845, 36.771347>,  <35.277927, 36.663181, 36.998360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034050, 36.441845, 36.771347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185034, -0.596861, 0.780717,
		-0.770738, 0.581009, 0.261515,
		-0.609692, -0.553340, -0.567530,
		34.851143, 36.275845, 36.601089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148930, 36.611721, 37.038994>,  <35.277927, 36.663181, 36.998360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148930, 36.611721, 37.038994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482338, 36.479542, 37.216099>,  <36.682384, 36.400234, 37.322361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482338, 36.479542, 37.216099>,  <36.148930, 36.611721, 37.038994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482338, 36.479542, 37.216099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530124, 0.252686, -0.809393,
		0.155585, 0.909368, 0.385801,
		0.833524, -0.330452, 0.442764,
		36.732395, 36.380405, 37.348927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626076, 37.137215, 36.807785>,  <36.148930, 36.611721, 37.038994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626076, 37.137215, 36.807785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846603, 36.827892, 36.933033>,  <36.978920, 36.642300, 37.008183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846603, 36.827892, 36.933033>,  <36.626076, 37.137215, 36.807785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846603, 36.827892, 36.933033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596112, 0.102554, -0.796325,
		0.583689, 0.625686, 0.517516,
		0.551323, -0.773304, 0.313119,
		37.012001, 36.595901, 37.026970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281269, 37.361286, 36.600681>,  <36.626076, 37.137215, 36.807785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281269, 37.361286, 36.600681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352810, 36.975666, 36.679287>,  <37.395737, 36.744293, 36.726448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352810, 36.975666, 36.679287>,  <37.281269, 37.361286, 36.600681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352810, 36.975666, 36.679287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727391, -0.004927, -0.686205,
		0.662505, 0.265671, 0.700361,
		0.178854, -0.964051, 0.196511,
		37.406467, 36.686451, 36.738239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065304, 37.256557, 36.776867>,  <37.281269, 37.361286, 36.600681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065304, 37.256557, 36.776867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895779, 36.923401, 36.634499>,  <37.794064, 36.723507, 36.549076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895779, 36.923401, 36.634499>,  <38.065304, 37.256557, 36.776867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895779, 36.923401, 36.634499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616520, 0.022602, -0.787014,
		0.663540, -0.552980, 0.503913,
		-0.423814, -0.832888, -0.355920,
		37.768635, 36.673534, 36.527721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686810, 36.869225, 36.628502>,  <38.065304, 37.256557, 36.776867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686810, 36.869225, 36.628502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381187, 36.714989, 36.421600>,  <38.197815, 36.622448, 36.297459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381187, 36.714989, 36.421600>,  <38.686810, 36.869225, 36.628502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381187, 36.714989, 36.421600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546951, 0.038065, -0.836299,
		0.342154, -0.921886, 0.181812,
		-0.764052, -0.385586, -0.517251,
		38.151970, 36.599312, 36.266426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979324, 36.363789, 36.350594>,  <38.686810, 36.869225, 36.628502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979324, 36.363789, 36.350594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662716, 36.463413, 36.127361>,  <38.472752, 36.523190, 35.993420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662716, 36.463413, 36.127361>,  <38.979324, 36.363789, 36.350594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662716, 36.463413, 36.127361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594818, 0.104330, -0.797061,
		-0.140295, -0.962851, -0.230728,
		-0.791523, 0.249065, -0.558084,
		38.425259, 36.538132, 35.959934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020206, 35.890743, 35.713478>,  <38.979324, 36.363789, 36.350594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020206, 35.890743, 35.713478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801243, 36.216568, 35.636711>,  <38.669865, 36.412064, 35.590652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801243, 36.216568, 35.636711>,  <39.020206, 35.890743, 35.713478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801243, 36.216568, 35.636711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615962, 0.236936, -0.751300,
		-0.566508, -0.529484, -0.631439,
		-0.547412, 0.814560, -0.191916,
		38.637020, 36.460938, 35.579136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847698, 35.938694, 34.851799>,  <39.020206, 35.890743, 35.713478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847698, 35.938694, 34.851799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800648, 36.299976, 35.016911>,  <38.772419, 36.516747, 35.115978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800648, 36.299976, 35.016911>,  <38.847698, 35.938694, 34.851799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800648, 36.299976, 35.016911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344719, 0.426956, -0.835989,
		-0.931307, 0.043960, -0.361573,
		-0.117626, 0.903203, 0.412781,
		38.765362, 36.570938, 35.140743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732258, 36.350681, 34.179020>,  <38.847698, 35.938694, 34.851799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732258, 36.350681, 34.179020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827778, 36.612724, 34.465744>,  <38.885090, 36.769951, 34.637779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827778, 36.612724, 34.465744>,  <38.732258, 36.350681, 34.179020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827778, 36.612724, 34.465744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349814, 0.630569, -0.692830,
		-0.905871, 0.416200, -0.078582,
		0.238804, 0.655104, 0.716807,
		38.899418, 36.809254, 34.680786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554417, 36.980198, 33.897091>,  <38.732258, 36.350681, 34.179020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554417, 36.980198, 33.897091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819107, 37.060188, 34.186127>,  <38.977921, 37.108181, 34.359547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819107, 37.060188, 34.186127>,  <38.554417, 36.980198, 33.897091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819107, 37.060188, 34.186127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445518, 0.670288, -0.593487,
		-0.603024, 0.714650, 0.354453,
		0.661721, 0.199972, 0.722590,
		39.017624, 37.120178, 34.402905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602325, 37.645260, 33.805046>,  <38.554417, 36.980198, 33.897091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602325, 37.645260, 33.805046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924015, 37.526173, 34.010796>,  <39.117031, 37.454720, 34.134247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924015, 37.526173, 34.010796>,  <38.602325, 37.645260, 33.805046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924015, 37.526173, 34.010796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567529, 0.641633, -0.515964,
		-0.176429, 0.706875, 0.684982,
		0.804229, -0.297716, 0.514374,
		39.165283, 37.436859, 34.165108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903767, 38.206940, 34.014736>,  <38.602325, 37.645260, 33.805046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903767, 38.206940, 34.014736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206017, 37.944939, 34.013763>,  <39.387367, 37.787739, 34.013180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206017, 37.944939, 34.013763>,  <38.903767, 38.206940, 34.014736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206017, 37.944939, 34.013763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531583, 0.615399, -0.581982,
		0.382695, 0.438467, 0.813198,
		0.755622, -0.655004, -0.002429,
		39.432701, 37.748436, 34.013035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434704, 38.641048, 34.172394>,  <38.903767, 38.206940, 34.014736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434704, 38.641048, 34.172394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589108, 38.341465, 33.956966>,  <39.681747, 38.161716, 33.827709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589108, 38.341465, 33.956966>,  <39.434704, 38.641048, 34.172394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589108, 38.341465, 33.956966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197713, 0.637421, -0.744718,
		0.901060, 0.180982, 0.394126,
		0.386005, -0.748959, -0.538572,
		39.704910, 38.116776, 33.795395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925400, 39.011505, 33.724262>,  <39.434704, 38.641048, 34.172394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925400, 39.011505, 33.724262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942600, 38.638283, 33.581406>,  <39.952923, 38.414349, 33.495693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942600, 38.638283, 33.581406>,  <39.925400, 39.011505, 33.724262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942600, 38.638283, 33.581406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477238, 0.333235, -0.813141,
		0.877721, -0.135472, 0.459623,
		0.043004, -0.933060, -0.357140,
		39.955502, 38.358364, 33.474262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584492, 38.966553, 33.535896>,  <39.925400, 39.011505, 33.724262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584492, 38.966553, 33.535896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386185, 38.691639, 33.323536>,  <40.267200, 38.526691, 33.196121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386185, 38.691639, 33.323536>,  <40.584492, 38.966553, 33.535896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386185, 38.691639, 33.323536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460691, 0.310084, -0.831632,
		0.736194, -0.656873, 0.162900,
		-0.495764, -0.687289, -0.530898,
		40.237457, 38.485451, 33.164268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165932, 38.719597, 33.138615>,  <40.584492, 38.966553, 33.535896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165932, 38.719597, 33.138615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832504, 38.620323, 32.941204>,  <40.632446, 38.560760, 32.822758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832504, 38.620323, 32.941204>,  <41.165932, 38.719597, 33.138615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832504, 38.620323, 32.941204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447818, 0.219526, -0.866756,
		0.323457, -0.943511, -0.071849,
		-0.833568, -0.248183, -0.493529,
		40.582436, 38.545868, 32.793144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457638, 38.417610, 32.542000>,  <41.165932, 38.719597, 33.138615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457638, 38.417610, 32.542000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071636, 38.502415, 32.480267>,  <40.840034, 38.553295, 32.443226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071636, 38.502415, 32.480267>,  <41.457638, 38.417610, 32.542000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071636, 38.502415, 32.480267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220830, 0.339606, -0.914277,
		-0.141421, -0.916362, -0.374539,
		-0.965005, 0.212008, -0.154333,
		40.782135, 38.566017, 32.433968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304836, 38.033615, 31.942549>,  <41.457638, 38.417610, 32.542000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304836, 38.033615, 31.942549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047535, 38.338409, 31.972496>,  <40.893154, 38.521286, 31.990463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047535, 38.338409, 31.972496>,  <41.304836, 38.033615, 31.942549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047535, 38.338409, 31.972496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288002, 0.331399, -0.898459,
		-0.709425, -0.556373, -0.432626,
		-0.643250, 0.761987, 0.074867,
		40.854561, 38.567005, 31.994955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045944, 38.052006, 31.321136>,  <41.304836, 38.033615, 31.942549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045944, 38.052006, 31.321136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940090, 38.412979, 31.457130>,  <40.876579, 38.629562, 31.538727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940090, 38.412979, 31.457130>,  <41.045944, 38.052006, 31.321136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940090, 38.412979, 31.457130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238426, 0.402836, -0.883672,
		-0.934410, -0.152787, -0.321767,
		-0.264633, 0.902429, 0.339986,
		40.860699, 38.683708, 31.559126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606510, 38.266808, 30.775877>,  <41.045944, 38.052006, 31.321136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606510, 38.266808, 30.775877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754219, 38.580353, 30.975554>,  <40.842846, 38.768482, 31.095360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754219, 38.580353, 30.975554>,  <40.606510, 38.266808, 30.775877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754219, 38.580353, 30.975554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078869, 0.508783, -0.857275,
		-0.925968, 0.355939, 0.126057,
		0.369273, 0.783867, 0.499189,
		40.865002, 38.815514, 31.125311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285873, 38.891769, 30.410917>,  <40.606510, 38.266808, 30.775877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285873, 38.891769, 30.410917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621906, 38.998417, 30.599886>,  <40.823524, 39.062405, 30.713266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621906, 38.998417, 30.599886>,  <40.285873, 38.891769, 30.410917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621906, 38.998417, 30.599886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291457, 0.512661, -0.807608,
		-0.457514, 0.816146, 0.352969,
		0.840080, 0.266617, 0.472421,
		40.873932, 39.078403, 30.741611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352936, 39.672771, 30.374062>,  <40.285873, 38.891769, 30.410917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352936, 39.672771, 30.374062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706898, 39.495220, 30.430504>,  <40.919277, 39.388691, 30.464369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706898, 39.495220, 30.430504>,  <40.352936, 39.672771, 30.374062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706898, 39.495220, 30.430504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346389, 0.424639, -0.836479,
		0.311375, 0.789084, 0.529521,
		0.884907, -0.443879, 0.141107,
		40.972370, 39.362057, 30.472836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914349, 40.231804, 30.201269>,  <40.352936, 39.672771, 30.374062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914349, 40.231804, 30.201269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088085, 39.872143, 30.179827>,  <41.192326, 39.656345, 30.166962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088085, 39.872143, 30.179827>,  <40.914349, 40.231804, 30.201269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088085, 39.872143, 30.179827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412301, 0.251373, -0.875682,
		0.800846, 0.358243, 0.479903,
		0.434342, -0.899151, -0.053607,
		41.218388, 39.602398, 30.163744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470528, 40.428589, 29.929462>,  <40.914349, 40.231804, 30.201269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470528, 40.428589, 29.929462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501373, 40.031601, 29.891396>,  <41.519882, 39.793407, 29.868555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501373, 40.031601, 29.891396>,  <41.470528, 40.428589, 29.929462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501373, 40.031601, 29.891396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561576, 0.122108, -0.818365,
		0.823824, 0.009664, 0.566764,
		0.077115, -0.992470, -0.095168,
		41.524509, 39.733860, 29.862844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134594, 40.236034, 29.683502>,  <41.470528, 40.428589, 29.929462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134594, 40.236034, 29.683502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922180, 39.913738, 29.578598>,  <41.794731, 39.720360, 29.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922180, 39.913738, 29.578598>,  <42.134594, 40.236034, 29.683502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922180, 39.913738, 29.578598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648179, -0.186922, -0.738189,
		0.545768, -0.561997, 0.621528,
		-0.531038, -0.805742, -0.262258,
		41.762871, 39.672016, 29.499920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634735, 39.745930, 29.574211>,  <42.134594, 40.236034, 29.683502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634735, 39.745930, 29.574211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304718, 39.652069, 29.368591>,  <42.106709, 39.595753, 29.245220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304718, 39.652069, 29.368591>,  <42.634735, 39.745930, 29.574211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304718, 39.652069, 29.368591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549930, -0.124235, -0.825919,
		0.129939, -0.964108, 0.231540,
		-0.825041, -0.234650, -0.514050,
		42.057205, 39.581673, 29.214376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844528, 39.221909, 29.271099>,  <42.634735, 39.745930, 29.574211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844528, 39.221909, 29.271099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519451, 39.325607, 29.062361>,  <42.324406, 39.387829, 28.937117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519451, 39.325607, 29.062361>,  <42.844528, 39.221909, 29.271099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519451, 39.325607, 29.062361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496107, -0.161897, -0.853034,
		-0.305636, -0.952144, 0.002956,
		-0.812689, 0.259251, -0.521847,
		42.275642, 39.403381, 28.905807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463955, 38.591496, 28.989473>,  <42.844528, 39.221909, 29.271099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463955, 38.591496, 28.989473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378410, 38.910641, 28.764021>,  <42.327084, 39.102127, 28.628750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378410, 38.910641, 28.764021>,  <42.463955, 38.591496, 28.989473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378410, 38.910641, 28.764021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187521, -0.532718, -0.825256,
		-0.958696, -0.282186, -0.035685,
		-0.213866, 0.797861, -0.563630,
		42.314251, 39.149998, 28.594933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146568, 38.278435, 28.356848>,  <42.463955, 38.591496, 28.989473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146568, 38.278435, 28.356848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278908, 38.639652, 28.247261>,  <42.358311, 38.856380, 28.181509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278908, 38.639652, 28.247261>,  <42.146568, 38.278435, 28.356848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278908, 38.639652, 28.247261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334597, -0.383709, -0.860705,
		-0.882374, 0.193097, -0.429104,
		0.330850, 0.903040, -0.273965,
		42.378162, 38.910564, 28.165071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020756, 38.210911, 27.728966>,  <42.146568, 38.278435, 28.356848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020756, 38.210911, 27.728966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267960, 38.525089, 27.742477>,  <42.416283, 38.713596, 27.750584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267960, 38.525089, 27.742477>,  <42.020756, 38.210911, 27.728966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267960, 38.525089, 27.742477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286714, -0.185172, -0.939950,
		-0.732022, 0.590586, -0.339636,
		0.618013, 0.785442, 0.033779,
		42.453362, 38.760723, 27.752611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790344, 38.716324, 27.198446>,  <42.020756, 38.210911, 27.728966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790344, 38.716324, 27.198446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178036, 38.757401, 27.287939>,  <42.410648, 38.782047, 27.341635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178036, 38.757401, 27.287939>,  <41.790344, 38.716324, 27.198446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178036, 38.757401, 27.287939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237331, -0.148411, -0.960025,
		-0.065386, 0.983579, -0.168217,
		0.969226, 0.102695, 0.223730,
		42.468803, 38.788208, 27.355059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099342, 38.888500, 26.671648>,  <41.790344, 38.716324, 27.198446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099342, 38.888500, 26.671648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458050, 38.843430, 26.842815>,  <42.673275, 38.816387, 26.945515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458050, 38.843430, 26.842815>,  <42.099342, 38.888500, 26.671648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458050, 38.843430, 26.842815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381681, -0.292332, -0.876848,
		0.223895, 0.949656, -0.219146,
		0.896767, -0.112678, 0.427918,
		42.727081, 38.809628, 26.971191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599731, 39.196129, 26.213839>,  <42.099342, 38.888500, 26.671648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599731, 39.196129, 26.213839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825199, 38.969212, 26.453989>,  <42.960480, 38.833061, 26.598080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825199, 38.969212, 26.453989>,  <42.599731, 39.196129, 26.213839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825199, 38.969212, 26.453989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644304, -0.152851, -0.749339,
		0.516866, 0.809204, 0.279354,
		0.563669, -0.567297, 0.600377,
		42.994301, 38.799023, 26.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309753, 39.320862, 26.083242>,  <42.599731, 39.196129, 26.213839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309753, 39.320862, 26.083242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315552, 38.964260, 26.264359>,  <43.319031, 38.750301, 26.373028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315552, 38.964260, 26.264359>,  <43.309753, 39.320862, 26.083242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315552, 38.964260, 26.264359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613502, -0.349650, -0.708068,
		0.789560, 0.288051, 0.541869,
		0.014495, -0.891500, 0.452789,
		43.319901, 38.696812, 26.400196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076164, 39.097797, 26.120106>,  <43.309753, 39.320862, 26.083242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076164, 39.097797, 26.120106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846863, 38.771477, 26.150690>,  <43.709282, 38.575684, 26.169041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846863, 38.771477, 26.150690>,  <44.076164, 39.097797, 26.120106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846863, 38.771477, 26.150690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657769, -0.513820, -0.550754,
		0.488596, -0.265426, 0.831158,
		-0.573250, -0.815806, 0.076461,
		43.674889, 38.526733, 26.173628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485966, 38.566418, 26.177561>,  <44.076164, 39.097797, 26.120106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485966, 38.566418, 26.177561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135517, 38.409698, 26.065207>,  <43.925247, 38.315666, 25.997793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135517, 38.409698, 26.065207>,  <44.485966, 38.566418, 26.177561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135517, 38.409698, 26.065207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467031, -0.545356, -0.696038,
		0.119523, -0.741000, 0.660783,
		-0.876126, -0.391798, -0.280887,
		43.872681, 38.292160, 25.980940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606339, 37.868504, 26.062853>,  <44.485966, 38.566418, 26.177561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606339, 37.868504, 26.062853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252502, 37.865562, 25.876329>,  <44.040199, 37.863796, 25.764416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252502, 37.865562, 25.876329>,  <44.606339, 37.868504, 26.062853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252502, 37.865562, 25.876329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336922, -0.701424, -0.628083,
		-0.322459, -0.712707, 0.622952,
		-0.884592, -0.007355, -0.466307,
		43.987125, 37.863358, 25.736437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861141, 37.178165, 25.777979>,  <44.606339, 37.868504, 26.062853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861141, 37.178165, 25.777979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135990, 36.912262, 25.660709>,  <45.300900, 36.752720, 25.590347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135990, 36.912262, 25.660709>,  <44.861141, 37.178165, 25.777979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135990, 36.912262, 25.660709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077296, -0.468118, 0.880279,
		-0.722417, -0.582199, -0.373038,
		0.687123, -0.664763, -0.293175,
		45.342129, 36.712833, 25.572758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643967, 36.490376, 25.705818>,  <44.861141, 37.178165, 25.777979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643967, 36.490376, 25.705818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038754, 36.468971, 25.766529>,  <45.275623, 36.456127, 25.802956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038754, 36.468971, 25.766529>,  <44.643967, 36.490376, 25.705818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038754, 36.468971, 25.766529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160406, -0.403427, 0.900842,
		0.013022, -0.913445, -0.406753,
		0.986965, -0.053514, 0.151775,
		45.334843, 36.452915, 25.812061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754597, 35.819439, 25.737120>,  <44.643967, 36.490376, 25.705818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754597, 35.819439, 25.737120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084202, 35.979393, 25.897671>,  <45.281963, 36.075363, 25.994001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084202, 35.979393, 25.897671>,  <44.754597, 35.819439, 25.737120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084202, 35.979393, 25.897671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220384, -0.426418, 0.877268,
		0.521958, -0.811333, -0.263245,
		0.824009, 0.399882, 0.401377,
		45.331406, 36.099358, 26.018084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982662, 35.262466, 26.165586>,  <44.754597, 35.819439, 25.737120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982662, 35.262466, 26.165586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174809, 35.595005, 26.277384>,  <45.290096, 35.794529, 26.344461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174809, 35.595005, 26.277384>,  <44.982662, 35.262466, 26.165586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174809, 35.595005, 26.277384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124851, -0.250606, 0.960005,
		0.868138, -0.496046, -0.016588,
		0.480363, 0.831346, 0.279492,
		45.318916, 35.844410, 26.361231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345768, 35.011047, 26.792530>,  <44.982662, 35.262466, 26.165586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345768, 35.011047, 26.792530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316582, 35.409977, 26.790693>,  <45.299068, 35.649334, 26.789591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316582, 35.409977, 26.790693>,  <45.345768, 35.011047, 26.792530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316582, 35.409977, 26.790693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206873, -0.010633, 0.978310,
		0.975643, 0.072337, 0.207095,
		-0.072970, 0.997324, -0.004591,
		45.294689, 35.709175, 26.789316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639526, 35.376980, 27.468742>,  <45.345768, 35.011047, 26.792530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639526, 35.376980, 27.468742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352352, 35.604530, 27.308271>,  <45.180046, 35.741062, 27.211988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352352, 35.604530, 27.308271>,  <45.639526, 35.376980, 27.468742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352352, 35.604530, 27.308271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471551, 0.026486, 0.881441,
		0.512057, 0.821996, 0.249239,
		-0.717939, 0.568877, -0.401176,
		45.136971, 35.775192, 27.187920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389942, 35.622471, 28.062862>,  <45.639526, 35.376980, 27.468742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389942, 35.622471, 28.062862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108734, 35.689789, 27.786476>,  <44.940010, 35.730179, 27.620644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108734, 35.689789, 27.786476>,  <45.389942, 35.622471, 28.062862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108734, 35.689789, 27.786476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679956, 0.125601, 0.722415,
		0.208367, 0.977701, 0.026135,
		-0.703024, 0.168298, -0.690965,
		44.897827, 35.740276, 27.579187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879200, 36.147583, 28.448111>,  <45.389942, 35.622471, 28.062862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879200, 36.147583, 28.448111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654354, 36.036476, 28.136503>,  <44.519447, 35.969810, 27.949539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654354, 36.036476, 28.136503>,  <44.879200, 36.147583, 28.448111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654354, 36.036476, 28.136503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826509, 0.154367, 0.541344,
		-0.030113, 0.948164, -0.316350,
		-0.562117, -0.277768, -0.779018,
		44.485718, 35.953144, 27.902798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291168, 36.680553, 28.155277>,  <44.879200, 36.147583, 28.448111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291168, 36.680553, 28.155277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200039, 36.298973, 28.077225>,  <44.145359, 36.070026, 28.030394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200039, 36.298973, 28.077225>,  <44.291168, 36.680553, 28.155277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200039, 36.298973, 28.077225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810611, 0.074793, 0.580788,
		-0.539448, 0.290493, -0.790322,
		-0.227826, -0.953949, -0.195130,
		44.131691, 36.012787, 28.018686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580292, 36.707733, 28.081875>,  <44.291168, 36.680553, 28.155277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580292, 36.707733, 28.081875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667564, 36.324917, 28.158262>,  <43.719929, 36.095226, 28.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667564, 36.324917, 28.158262>,  <43.580292, 36.707733, 28.081875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667564, 36.324917, 28.158262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715520, -0.023806, 0.698187,
		-0.663648, -0.288971, -0.689976,
		0.218181, -0.957042, 0.190966,
		43.733017, 36.037804, 28.215551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965031, 36.321701, 28.071419>,  <43.580292, 36.707733, 28.081875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965031, 36.321701, 28.071419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207317, 36.083961, 28.283024>,  <43.352688, 35.941319, 28.409986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207317, 36.083961, 28.283024>,  <42.965031, 36.321701, 28.071419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207317, 36.083961, 28.283024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674440, -0.030741, 0.737690,
		-0.422185, -0.803617, -0.419475,
		0.605715, -0.594352, 0.529012,
		43.389030, 35.905655, 28.441729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488602, 35.867344, 28.424807>,  <42.965031, 36.321701, 28.071419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488602, 35.867344, 28.424807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831402, 35.810314, 28.622889>,  <43.037083, 35.776096, 28.741737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831402, 35.810314, 28.622889>,  <42.488602, 35.867344, 28.424807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831402, 35.810314, 28.622889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515285, -0.225749, 0.826752,
		-0.006084, -0.963696, -0.266934,
		0.856997, -0.142577, 0.495205,
		43.088501, 35.767540, 28.771450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413624, 35.222805, 28.850027>,  <42.488602, 35.867344, 28.424807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413624, 35.222805, 28.850027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697590, 35.460289, 29.001572>,  <42.867970, 35.602779, 29.092499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697590, 35.460289, 29.001572>,  <42.413624, 35.222805, 28.850027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697590, 35.460289, 29.001572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437274, -0.050132, 0.897930,
		0.552099, -0.803119, 0.224023,
		0.709914, 0.593705, 0.378861,
		42.910564, 35.638401, 29.115231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610226, 34.923786, 29.591722>,  <42.413624, 35.222805, 28.850027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610226, 34.923786, 29.591722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720074, 35.307888, 29.611698>,  <42.785984, 35.538349, 29.623684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720074, 35.307888, 29.611698>,  <42.610226, 34.923786, 29.591722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720074, 35.307888, 29.611698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339421, 0.048216, 0.939398,
		0.899655, -0.274926, 0.339172,
		0.274619, 0.960256, 0.049938,
		42.802460, 35.595966, 29.626680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948547, 34.913136, 30.226246>,  <42.610226, 34.923786, 29.591722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948547, 34.913136, 30.226246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899895, 35.302166, 30.146944>,  <42.870701, 35.535583, 30.099363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899895, 35.302166, 30.146944>,  <42.948547, 34.913136, 30.226246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899895, 35.302166, 30.146944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348120, 0.145248, 0.926129,
		0.929525, 0.181667, 0.320905,
		-0.121636, 0.972574, -0.198254,
		42.863403, 35.593937, 30.087467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289276, 35.207321, 30.773571>,  <42.948547, 34.913136, 30.226246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289276, 35.207321, 30.773571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039715, 35.481262, 30.622992>,  <42.889977, 35.645626, 30.532644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039715, 35.481262, 30.622992>,  <43.289276, 35.207321, 30.773571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039715, 35.481262, 30.622992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284224, 0.249862, 0.925627,
		0.727981, 0.684501, 0.038761,
		-0.623908, 0.684856, -0.376447,
		42.852543, 35.686718, 30.510057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325020, 35.835136, 31.210520>,  <43.289276, 35.207321, 30.773571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325020, 35.835136, 31.210520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969051, 35.874870, 31.032455>,  <42.755470, 35.898712, 30.925617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969051, 35.874870, 31.032455>,  <43.325020, 35.835136, 31.210520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969051, 35.874870, 31.032455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391548, 0.334202, 0.857321,
		0.233939, 0.937252, -0.258519,
		-0.889923, 0.099338, -0.445162,
		42.702076, 35.904671, 30.898907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110229, 36.399414, 31.496168>,  <43.325020, 35.835136, 31.210520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110229, 36.399414, 31.496168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784691, 36.207733, 31.364704>,  <42.589367, 36.092724, 31.285826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784691, 36.207733, 31.364704>,  <43.110229, 36.399414, 31.496168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784691, 36.207733, 31.364704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481298, 0.238996, 0.843346,
		-0.325585, 0.844539, -0.425145,
		-0.813847, -0.479203, -0.328662,
		42.540539, 36.063972, 31.266106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623486, 36.911434, 31.714087>,  <43.110229, 36.399414, 31.496168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623486, 36.911434, 31.714087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396286, 36.586617, 31.660482>,  <42.259964, 36.391727, 31.628319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396286, 36.586617, 31.660482>,  <42.623486, 36.911434, 31.714087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396286, 36.586617, 31.660482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576821, 0.276628, 0.768605,
		-0.587070, 0.513870, -0.625529,
		-0.568002, -0.812044, -0.134012,
		42.225883, 36.343002, 31.620279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973232, 37.146896, 31.852064>,  <42.623486, 36.911434, 31.714087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973232, 37.146896, 31.852064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940899, 36.750599, 31.895670>,  <41.921497, 36.512821, 31.921833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940899, 36.750599, 31.895670>,  <41.973232, 37.146896, 31.852064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940899, 36.750599, 31.895670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507348, 0.135041, 0.851095,
		-0.857942, 0.013492, -0.513570,
		-0.080836, -0.990748, 0.109012,
		41.916649, 36.453373, 31.928373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267307, 37.066929, 32.116123>,  <41.973232, 37.146896, 31.852064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267307, 37.066929, 32.116123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470757, 36.734432, 32.205879>,  <41.592827, 36.534935, 32.259731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470757, 36.734432, 32.205879>,  <41.267307, 37.066929, 32.116123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470757, 36.734432, 32.205879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365647, 0.027406, 0.930350,
		-0.779491, -0.555242, -0.290000,
		0.508622, -0.831238, 0.224386,
		41.623344, 36.485062, 32.273193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751205, 36.628185, 32.409386>,  <41.267307, 37.066929, 32.116123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751205, 36.628185, 32.409386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106632, 36.504101, 32.544571>,  <41.319889, 36.429649, 32.625683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106632, 36.504101, 32.544571>,  <40.751205, 36.628185, 32.409386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106632, 36.504101, 32.544571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394850, -0.142092, 0.907691,
		-0.233555, -0.939988, -0.248745,
		0.888564, -0.310213, 0.337968,
		41.373199, 36.411037, 32.645962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628475, 35.994232, 32.867218>,  <40.751205, 36.628185, 32.409386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628475, 35.994232, 32.867218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997841, 36.112061, 32.965633>,  <41.219460, 36.182758, 33.024685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997841, 36.112061, 32.965633>,  <40.628475, 35.994232, 32.867218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997841, 36.112061, 32.965633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210388, -0.147668, 0.966401,
		0.321008, -0.944151, -0.074384,
		0.923412, 0.294573, 0.246041,
		41.274864, 36.200432, 33.039444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879280, 35.519833, 33.310585>,  <40.628475, 35.994232, 32.867218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879280, 35.519833, 33.310585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103100, 35.837490, 33.405449>,  <41.237392, 36.028084, 33.462368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103100, 35.837490, 33.405449>,  <40.879280, 35.519833, 33.310585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103100, 35.837490, 33.405449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056444, -0.248974, 0.966864,
		0.826873, -0.554394, -0.094489,
		0.559549, 0.794140, 0.237163,
		41.270966, 36.075733, 33.476597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206223, 35.223339, 33.854164>,  <40.879280, 35.519833, 33.310585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206223, 35.223339, 33.854164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305592, 35.609135, 33.890049>,  <41.365211, 35.840611, 33.911579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305592, 35.609135, 33.890049>,  <41.206223, 35.223339, 33.854164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305592, 35.609135, 33.890049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016117, -0.096714, 0.995182,
		0.968519, -0.245775, -0.039570,
		0.248418, 0.964490, 0.089708,
		41.380116, 35.898483, 33.916962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918785, 35.315418, 34.302391>,  <41.206223, 35.223339, 33.854164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918785, 35.315418, 34.302391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692009, 35.643772, 34.329861>,  <41.555943, 35.840786, 34.346344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692009, 35.643772, 34.329861>,  <41.918785, 35.315418, 34.302391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692009, 35.643772, 34.329861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013448, -0.074137, 0.997157,
		0.823646, 0.566257, 0.030992,
		-0.566945, 0.820888, 0.068677,
		41.521927, 35.890038, 34.350464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259743, 35.653698, 34.739304>,  <41.918785, 35.315418, 34.302391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259743, 35.653698, 34.739304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893330, 35.813984, 34.746483>,  <41.673481, 35.910156, 34.750790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893330, 35.813984, 34.746483>,  <42.259743, 35.653698, 34.739304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893330, 35.813984, 34.746483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024577, -0.100723, 0.994611,
		0.400358, 0.910652, 0.102114,
		-0.916029, 0.400710, 0.017944,
		41.618523, 35.934196, 34.751865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247627, 36.096886, 35.395844>,  <42.259743, 35.653698, 34.739304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247627, 36.096886, 35.395844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859482, 36.037834, 35.319321>,  <41.626595, 36.002403, 35.273407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859482, 36.037834, 35.319321>,  <42.247627, 36.096886, 35.395844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859482, 36.037834, 35.319321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192230, -0.008117, 0.981316,
		-0.146419, 0.989010, -0.020502,
		-0.970365, -0.147625, -0.191306,
		41.568371, 35.993546, 35.261929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878315, 36.649380, 35.750412>,  <42.247627, 36.096886, 35.395844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878315, 36.649380, 35.750412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611660, 36.355705, 35.698944>,  <41.451668, 36.179501, 35.668064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611660, 36.355705, 35.698944>,  <41.878315, 36.649380, 35.750412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611660, 36.355705, 35.698944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258137, 0.065463, 0.963888,
		-0.699253, 0.675781, -0.233162,
		-0.666641, -0.734189, -0.128669,
		41.411667, 36.135448, 35.660343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392857, 36.851406, 36.155853>,  <41.878315, 36.649380, 35.750412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392857, 36.851406, 36.155853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326199, 36.459526, 36.111279>,  <41.286201, 36.224400, 36.084534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326199, 36.459526, 36.111279>,  <41.392857, 36.851406, 36.155853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326199, 36.459526, 36.111279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274265, -0.062497, 0.959621,
		-0.947104, 0.190482, -0.258282,
		-0.166649, -0.979699, -0.111433,
		41.276203, 36.165615, 36.077850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762104, 36.681778, 36.566216>,  <41.392857, 36.851406, 36.155853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762104, 36.681778, 36.566216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938332, 36.328888, 36.499802>,  <41.044067, 36.117153, 36.459953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938332, 36.328888, 36.499802>,  <40.762104, 36.681778, 36.566216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938332, 36.328888, 36.499802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274555, -0.308508, 0.910737,
		-0.854702, -0.355660, -0.378141,
		0.440572, -0.882230, -0.166034,
		41.070503, 36.064220, 36.449993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303585, 36.181324, 36.964615>,  <40.762104, 36.681778, 36.566216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303585, 36.181324, 36.964615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629478, 35.960777, 36.892826>,  <40.825016, 35.828449, 36.849751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629478, 35.960777, 36.892826>,  <40.303585, 36.181324, 36.964615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629478, 35.960777, 36.892826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223058, -0.583736, 0.780703,
		-0.535218, -0.596030, -0.598574,
		0.814731, -0.551363, -0.179476,
		40.873898, 35.795368, 36.838982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124470, 35.504833, 37.020058>,  <40.303585, 36.181324, 36.964615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124470, 35.504833, 37.020058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519440, 35.495205, 37.082565>,  <40.756420, 35.489429, 37.120071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519440, 35.495205, 37.082565>,  <40.124470, 35.504833, 37.020058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519440, 35.495205, 37.082565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130083, -0.685513, 0.716345,
		0.089884, -0.727663, -0.680021,
		0.987421, -0.024071, 0.156274,
		40.815666, 35.487984, 37.129448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201500, 34.833237, 37.075798>,  <40.124470, 35.504833, 37.020058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201500, 34.833237, 37.075798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537994, 34.988228, 37.226627>,  <40.739891, 35.081223, 37.317123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537994, 34.988228, 37.226627>,  <40.201500, 34.833237, 37.075798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537994, 34.988228, 37.226627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005621, -0.703646, 0.710528,
		0.540643, -0.595601, -0.594108,
		0.841233, 0.387482, 0.377074,
		40.790363, 35.104473, 37.339748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774284, 34.319096, 37.207203>,  <40.201500, 34.833237, 37.075798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774284, 34.319096, 37.207203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846706, 34.632057, 37.445553>,  <40.890160, 34.819836, 37.588562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846706, 34.632057, 37.445553>,  <40.774284, 34.319096, 37.207203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846706, 34.632057, 37.445553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171646, -0.621726, 0.764195,
		0.968379, -0.036080, -0.246862,
		0.181053, 0.782403, 0.595874,
		40.901024, 34.866779, 37.624313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186977, 34.021458, 37.595161>,  <40.774284, 34.319096, 37.207203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186977, 34.021458, 37.595161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099091, 34.355301, 37.797211>,  <41.046356, 34.555607, 37.918442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099091, 34.355301, 37.797211>,  <41.186977, 34.021458, 37.595161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099091, 34.355301, 37.797211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043579, -0.525658, 0.849579,
		0.974589, 0.164656, 0.151869,
		-0.219720, 0.834608, 0.505126,
		41.033176, 34.605682, 37.948750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710556, 34.133930, 38.182468>,  <41.186977, 34.021458, 37.595161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710556, 34.133930, 38.182468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385647, 34.343723, 38.284554>,  <41.190701, 34.469601, 38.345806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385647, 34.343723, 38.284554>,  <41.710556, 34.133930, 38.182468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385647, 34.343723, 38.284554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032582, -0.396070, 0.917642,
		0.582372, 0.753688, 0.304627,
		-0.812269, 0.524483, 0.255217,
		41.141968, 34.501068, 38.361118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969090, 34.530628, 38.705856>,  <41.710556, 34.133930, 38.182468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969090, 34.530628, 38.705856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577015, 34.582691, 38.765572>,  <41.341770, 34.613930, 38.801399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577015, 34.582691, 38.765572>,  <41.969090, 34.530628, 38.705856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577015, 34.582691, 38.765572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100915, -0.320383, 0.941897,
		0.170422, 0.938304, 0.300902,
		-0.980190, 0.130154, 0.149290,
		41.282959, 34.621738, 38.810360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842648, 34.847244, 39.400013>,  <41.969090, 34.530628, 38.705856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842648, 34.847244, 39.400013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499378, 34.658611, 39.318871>,  <41.293415, 34.545433, 39.270184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499378, 34.658611, 39.318871>,  <41.842648, 34.847244, 39.400013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499378, 34.658611, 39.318871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094922, -0.534102, 0.840074,
		-0.504510, 0.701673, 0.503115,
		-0.858172, -0.471583, -0.202856,
		41.241928, 34.517136, 39.258015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584614, 34.676907, 40.137482>,  <41.842648, 34.847244, 39.400013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584614, 34.676907, 40.137482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402290, 34.429398, 39.881557>,  <41.292896, 34.280891, 39.728001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402290, 34.429398, 39.881557>,  <41.584614, 34.676907, 40.137482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402290, 34.429398, 39.881557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070093, -0.741551, 0.667225,
		-0.887312, 0.259282, 0.381379,
		-0.455811, -0.618769, -0.639813,
		41.265549, 34.243767, 39.689613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148766, 34.376129, 40.516628>,  <41.584614, 34.676907, 40.137482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148766, 34.376129, 40.516628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134766, 34.134655, 40.198048>,  <41.126366, 33.989769, 40.006897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134766, 34.134655, 40.198048>,  <41.148766, 34.376129, 40.516628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134766, 34.134655, 40.198048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067216, -0.793716, 0.604563,
		-0.997124, 0.074692, -0.012800,
		-0.034996, -0.603685, -0.796455,
		41.124268, 33.953548, 39.959110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522392, 34.009525, 40.469460>,  <41.148766, 34.376129, 40.516628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522392, 34.009525, 40.469460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796894, 33.785088, 40.284325>,  <40.961597, 33.650425, 40.173244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796894, 33.785088, 40.284325>,  <40.522392, 34.009525, 40.469460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796894, 33.785088, 40.284325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152053, -0.732939, 0.663084,
		-0.711289, -0.384669, -0.588301,
		0.686256, -0.561097, -0.462841,
		41.002769, 33.616760, 40.145473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159012, 33.418762, 40.329056>,  <40.522392, 34.009525, 40.469460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159012, 33.418762, 40.329056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553871, 33.355034, 40.333912>,  <40.790787, 33.316795, 40.336826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553871, 33.355034, 40.333912>,  <40.159012, 33.418762, 40.329056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553871, 33.355034, 40.333912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124898, -0.722004, 0.680522,
		-0.099653, -0.673296, -0.732627,
		0.987152, -0.159320, 0.012143,
		40.850018, 33.307240, 40.337555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167496, 32.757820, 40.367374>,  <40.159012, 33.418762, 40.329056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167496, 32.757820, 40.367374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531506, 32.872646, 40.487000>,  <40.749912, 32.941544, 40.558777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531506, 32.872646, 40.487000>,  <40.167496, 32.757820, 40.367374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531506, 32.872646, 40.487000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067367, -0.814253, 0.576588,
		0.409035, -0.504565, -0.760332,
		0.910029, 0.287066, 0.299067,
		40.804516, 32.958767, 40.576721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514893, 32.134804, 40.389778>,  <40.167496, 32.757820, 40.367374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514893, 32.134804, 40.389778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700912, 32.400299, 40.624107>,  <40.812523, 32.559597, 40.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700912, 32.400299, 40.624107>,  <40.514893, 32.134804, 40.389778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700912, 32.400299, 40.624107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001865, -0.660995, 0.750388,
		0.885282, -0.350061, -0.306159,
		0.465051, 0.663734, 0.585820,
		40.840427, 32.599419, 40.799854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220860, 32.009563, 40.646870>,  <40.514893, 32.134804, 40.389778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220860, 32.009563, 40.646870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091183, 32.227993, 40.955856>,  <41.013374, 32.359051, 41.141247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091183, 32.227993, 40.955856>,  <41.220860, 32.009563, 40.646870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091183, 32.227993, 40.955856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248109, -0.738898, 0.626475,
		0.912874, 0.394755, 0.104061,
		-0.324195, 0.546075, 0.772463,
		40.993923, 32.391815, 41.187595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446774, 31.723845, 41.316071>,  <41.220860, 32.009563, 40.646870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446774, 31.723845, 41.316071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249332, 32.021488, 41.496143>,  <41.130867, 32.200073, 41.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249332, 32.021488, 41.496143>,  <41.446774, 31.723845, 41.316071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249332, 32.021488, 41.496143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079575, -0.476819, 0.875392,
		0.866039, 0.467920, 0.176147,
		-0.493603, 0.744107, 0.450178,
		41.101250, 32.244720, 41.631195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761326, 31.835825, 42.007305>,  <41.446774, 31.723845, 41.316071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761326, 31.835825, 42.007305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396561, 31.994732, 42.048492>,  <41.177704, 32.090076, 42.073204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396561, 31.994732, 42.048492>,  <41.761326, 31.835825, 42.007305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396561, 31.994732, 42.048492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048399, -0.353253, 0.934275,
		0.407529, 0.846990, 0.341361,
		-0.911909, 0.397266, 0.102968,
		41.122990, 32.113911, 42.079384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700500, 32.225941, 42.648228>,  <41.761326, 31.835825, 42.007305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700500, 32.225941, 42.648228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325451, 32.109062, 42.572876>,  <41.100422, 32.038933, 42.527664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325451, 32.109062, 42.572876>,  <41.700500, 32.225941, 42.648228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325451, 32.109062, 42.572876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060034, -0.397638, 0.915576,
		-0.342441, 0.869771, 0.355292,
		-0.937620, -0.292201, -0.188383,
		41.044167, 32.021400, 42.516361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183521, 32.536758, 43.151215>,  <41.700500, 32.225941, 42.648228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183521, 32.536758, 43.151215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041943, 32.194149, 43.000965>,  <40.956997, 31.988585, 42.910816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041943, 32.194149, 43.000965>,  <41.183521, 32.536758, 43.151215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041943, 32.194149, 43.000965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123911, -0.355135, 0.926566,
		-0.927021, 0.374498, 0.019566,
		-0.353946, -0.856522, -0.375622,
		40.935760, 31.937193, 42.888279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537437, 32.251312, 43.541626>,  <41.183521, 32.536758, 43.151215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537437, 32.251312, 43.541626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726318, 31.945686, 43.365795>,  <40.839645, 31.762310, 43.260296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726318, 31.945686, 43.365795>,  <40.537437, 32.251312, 43.541626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726318, 31.945686, 43.365795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079927, -0.533737, 0.841865,
		-0.877860, -0.362395, -0.313101,
		0.472202, -0.764064, -0.439581,
		40.867977, 31.716467, 43.233921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107578, 31.654898, 43.471363>,  <40.537437, 32.251312, 43.541626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107578, 31.654898, 43.471363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490360, 31.540730, 43.492424>,  <40.720028, 31.472229, 43.505062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490360, 31.540730, 43.492424>,  <40.107578, 31.654898, 43.471363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490360, 31.540730, 43.492424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206153, -0.540747, 0.815533,
		-0.204297, -0.791283, -0.576311,
		0.956955, -0.285420, 0.052652,
		40.777447, 31.455103, 43.508221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472755, 31.395334, 43.073071>,  <40.107578, 31.654898, 43.471363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472755, 31.395334, 43.073071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796082, 31.182055, 43.172928>,  <39.990078, 31.054087, 43.232841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796082, 31.182055, 43.172928>,  <39.472755, 31.395334, 43.073071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796082, 31.182055, 43.172928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588612, -0.722820, 0.362032,
		-0.012586, -0.439581, -0.898115,
		0.808318, -0.533197, 0.249646,
		40.038578, 31.022095, 43.247822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332767, 30.737743, 42.819103>,  <39.472755, 31.395334, 43.073071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332767, 30.737743, 42.819103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606991, 30.725437, 43.110050>,  <39.771526, 30.718054, 43.284618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606991, 30.725437, 43.110050>,  <39.332767, 30.737743, 42.819103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606991, 30.725437, 43.110050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392112, -0.857412, 0.333307,
		0.613397, -0.513711, -0.599871,
		0.685559, -0.030767, 0.727366,
		39.812660, 30.716208, 43.328259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655045, 29.994320, 42.794655>,  <39.332767, 30.737743, 42.819103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655045, 29.994320, 42.794655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700710, 30.157232, 43.157112>,  <39.728111, 30.254980, 43.374584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700710, 30.157232, 43.157112>,  <39.655045, 29.994320, 42.794655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700710, 30.157232, 43.157112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319043, -0.848760, 0.421686,
		0.940839, -0.337239, 0.033040,
		0.114166, 0.407280, 0.906140,
		39.734959, 30.279417, 43.428955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619591, 29.470974, 43.182240>,  <39.655045, 29.994320, 42.794655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619591, 29.470974, 43.182240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654099, 29.729256, 43.485718>,  <39.674801, 29.884224, 43.667805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654099, 29.729256, 43.485718>,  <39.619591, 29.470974, 43.182240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654099, 29.729256, 43.485718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454461, -0.652185, 0.606729,
		0.886579, -0.397139, 0.237186,
		0.086266, 0.645705, 0.758698,
		39.679977, 29.922968, 43.713326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024338, 29.160076, 43.671108>,  <39.619591, 29.470974, 43.182240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024338, 29.160076, 43.671108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761040, 29.419121, 43.824635>,  <39.603062, 29.574549, 43.916752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761040, 29.419121, 43.824635>,  <40.024338, 29.160076, 43.671108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761040, 29.419121, 43.824635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419729, -0.738967, 0.527026,
		0.624937, 0.185812, 0.758240,
		-0.658242, 0.647613, 0.383817,
		39.563568, 29.613405, 43.939781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853565, 28.876081, 44.188992>,  <40.024338, 29.160076, 43.671108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853565, 28.876081, 44.188992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557369, 29.139631, 44.135971>,  <39.379654, 29.297760, 44.104160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557369, 29.139631, 44.135971>,  <39.853565, 28.876081, 44.188992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557369, 29.139631, 44.135971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640062, -0.631223, 0.438038,
		0.204944, 0.409200, 0.889131,
		-0.740485, 0.658872, -0.132548,
		39.335224, 29.337294, 44.096207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547012, 28.893030, 44.828220>,  <39.853565, 28.876081, 44.188992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547012, 28.893030, 44.828220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271809, 29.011480, 44.563206>,  <39.106686, 29.082550, 44.404198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271809, 29.011480, 44.563206>,  <39.547012, 28.893030, 44.828220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271809, 29.011480, 44.563206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628822, -0.698988, 0.340586,
		-0.362247, 0.650943, 0.667121,
		-0.688011, 0.296125, -0.662533,
		39.065407, 29.100317, 44.364445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806881, 28.988375, 45.087181>,  <39.547012, 28.893030, 44.828220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806881, 28.988375, 45.087181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786385, 28.891340, 44.699673>,  <38.774086, 28.833118, 44.467167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786385, 28.891340, 44.699673>,  <38.806881, 28.988375, 45.087181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786385, 28.891340, 44.699673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465511, -0.852420, 0.238076,
		-0.883557, 0.463176, -0.069245,
		-0.051245, -0.242588, -0.968775,
		38.771011, 28.818563, 44.409039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193504, 28.826771, 44.820065>,  <38.806881, 28.988375, 45.087181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193504, 28.826771, 44.820065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436729, 28.613365, 44.584904>,  <38.582664, 28.485323, 44.443806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436729, 28.613365, 44.584904>,  <38.193504, 28.826771, 44.820065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436729, 28.613365, 44.584904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549960, -0.817136, 0.172722,
		-0.572545, 0.218297, -0.790278,
		0.608059, -0.533512, -0.587901,
		38.619148, 28.453312, 44.408535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776371, 28.387688, 44.459961>,  <38.193504, 28.826771, 44.820065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776371, 28.387688, 44.459961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134449, 28.212147, 44.428875>,  <38.349297, 28.106823, 44.410221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134449, 28.212147, 44.428875>,  <37.776371, 28.387688, 44.459961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134449, 28.212147, 44.428875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444549, -0.891654, -0.085611,
		-0.031726, 0.111187, -0.993293,
		0.895193, -0.438851, -0.077717,
		38.403008, 28.080492, 44.405560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738358, 27.785273, 43.881256>,  <37.776371, 28.387688, 44.459961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738358, 27.785273, 43.881256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634029, 27.515648, 44.157696>,  <37.571434, 27.353872, 44.323559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634029, 27.515648, 44.157696>,  <37.738358, 27.785273, 43.881256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634029, 27.515648, 44.157696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802457, 0.246602, 0.543368,
		-0.536691, 0.696294, 0.476589,
		-0.260817, -0.674063, 0.691096,
		37.555786, 27.313429, 44.365025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495659, 27.582352, 43.684357>,  <37.738358, 27.785273, 43.881256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495659, 27.582352, 43.684357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336510, 27.864256, 43.919308>,  <38.241020, 28.033400, 44.060276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336510, 27.864256, 43.919308>,  <38.495659, 27.582352, 43.684357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336510, 27.864256, 43.919308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670635, 0.660305, -0.338002,
		-0.626059, 0.259434, -0.735353,
		-0.397868, 0.704763, 0.587376,
		38.217148, 28.075686, 44.095520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660603, 28.135210, 43.350716>,  <38.495659, 27.582352, 43.684357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660603, 28.135210, 43.350716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527916, 28.298130, 43.691086>,  <38.448303, 28.395882, 43.895309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527916, 28.298130, 43.691086>,  <38.660603, 28.135210, 43.350716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527916, 28.298130, 43.691086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465030, 0.855391, -0.228152,
		-0.820799, 0.320023, -0.473154,
		-0.331718, 0.407298, 0.850924,
		38.428402, 28.420319, 43.946362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397820, 28.905260, 43.195751>,  <38.660603, 28.135210, 43.350716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397820, 28.905260, 43.195751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477444, 28.904650, 43.587746>,  <38.525219, 28.904284, 43.822941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477444, 28.904650, 43.587746>,  <38.397820, 28.905260, 43.195751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477444, 28.904650, 43.587746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319933, 0.945309, -0.063517,
		-0.926292, 0.326174, 0.188660,
		0.199060, -0.001524, 0.979986,
		38.537163, 28.904192, 43.881741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237106, 29.615479, 43.487930>,  <38.397820, 28.905260, 43.195751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237106, 29.615479, 43.487930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474579, 29.456429, 43.767769>,  <38.617062, 29.360998, 43.935673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474579, 29.456429, 43.767769>,  <38.237106, 29.615479, 43.487930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474579, 29.456429, 43.767769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549021, 0.835759, 0.009118,
		-0.588323, 0.378681, 0.714477,
		0.593678, -0.397627, 0.699600,
		38.652683, 29.337141, 43.977650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285652, 30.083727, 43.951797>,  <38.237106, 29.615479, 43.487930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285652, 30.083727, 43.951797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614067, 29.864433, 44.015465>,  <38.811115, 29.732857, 44.053665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614067, 29.864433, 44.015465>,  <38.285652, 30.083727, 43.951797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614067, 29.864433, 44.015465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550577, 0.834132, 0.033010,
		-0.150864, 0.060531, 0.986699,
		0.821039, -0.548234, 0.159167,
		38.860378, 29.699963, 44.063213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695972, 30.451679, 44.423828>,  <38.285652, 30.083727, 43.951797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695972, 30.451679, 44.423828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971619, 30.215385, 44.255947>,  <39.137009, 30.073608, 44.155220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971619, 30.215385, 44.255947>,  <38.695972, 30.451679, 44.423828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971619, 30.215385, 44.255947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563498, 0.800993, -0.202186,
		0.455614, -0.097169, 0.884858,
		0.689119, -0.590735, -0.419698,
		39.178356, 30.038164, 44.130039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200771, 30.892986, 44.341717>,  <38.695972, 30.451679, 44.423828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200771, 30.892986, 44.341717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359280, 30.565374, 44.175751>,  <39.454384, 30.368807, 44.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359280, 30.565374, 44.175751>,  <39.200771, 30.892986, 44.341717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359280, 30.565374, 44.175751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817819, 0.520277, -0.245933,
		0.417298, -0.241869, 0.875992,
		0.396275, -0.819031, -0.414916,
		39.478161, 30.319666, 44.051277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900547, 30.801699, 44.604015>,  <39.200771, 30.892986, 44.341717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900547, 30.801699, 44.604015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855026, 30.625134, 44.247993>,  <39.827713, 30.519194, 44.034378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855026, 30.625134, 44.247993>,  <39.900547, 30.801699, 44.604015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855026, 30.625134, 44.247993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739105, 0.561055, -0.372747,
		0.663907, -0.700266, 0.262403,
		-0.113800, -0.441413, -0.890059,
		39.820885, 30.492710, 43.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538666, 30.525845, 44.369518>,  <39.900547, 30.801699, 44.604015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538666, 30.525845, 44.369518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323914, 30.573095, 44.035381>,  <40.195061, 30.601446, 43.834900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323914, 30.573095, 44.035381>,  <40.538666, 30.525845, 44.369518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323914, 30.573095, 44.035381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752271, 0.515238, -0.410631,
		0.381894, -0.848867, -0.365488,
		-0.536885, 0.118129, -0.835344,
		40.162849, 30.608534, 43.784779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092724, 30.792833, 44.031971>,  <40.538666, 30.525845, 44.369518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092724, 30.792833, 44.031971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750912, 30.816906, 43.825607>,  <40.545826, 30.831350, 43.701790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750912, 30.816906, 43.825607>,  <41.092724, 30.792833, 44.031971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750912, 30.816906, 43.825607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348663, 0.802681, -0.483876,
		0.384987, -0.593364, -0.706898,
		-0.854528, 0.060183, -0.515906,
		40.494553, 30.834961, 43.670834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177372, 30.845823, 43.219368>,  <41.092724, 30.792833, 44.031971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177372, 30.845823, 43.219368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832973, 31.023882, 43.317783>,  <40.626335, 31.130716, 43.376835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832973, 31.023882, 43.317783>,  <41.177372, 30.845823, 43.219368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832973, 31.023882, 43.317783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084977, 0.602846, -0.793320,
		-0.501467, -0.662135, -0.556873,
		-0.860994, 0.445145, 0.246041,
		40.574677, 31.157425, 43.391594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803505, 30.817486, 42.622246>,  <41.177372, 30.845823, 43.219368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803505, 30.817486, 42.622246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679356, 31.115891, 42.857922>,  <40.604866, 31.294933, 42.999325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679356, 31.115891, 42.857922>,  <40.803505, 30.817486, 42.622246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679356, 31.115891, 42.857922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108649, 0.643570, -0.757637,
		-0.944387, -0.171133, -0.280797,
		-0.310369, 0.746010, 0.589185,
		40.586246, 31.339693, 43.034676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200951, 30.949482, 42.414928>,  <40.803505, 30.817486, 42.622246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200951, 30.949482, 42.414928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422081, 31.251991, 42.554890>,  <40.554760, 31.433496, 42.638866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422081, 31.251991, 42.554890>,  <40.200951, 30.949482, 42.414928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422081, 31.251991, 42.554890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036910, 0.397267, -0.916961,
		-0.832476, 0.519838, 0.191707,
		0.552830, 0.756272, 0.349902,
		40.587929, 31.478872, 42.659859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941311, 31.464876, 41.998215>,  <40.200951, 30.949482, 42.414928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941311, 31.464876, 41.998215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257736, 31.640543, 42.168552>,  <40.447594, 31.745943, 42.270756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257736, 31.640543, 42.168552>,  <39.941311, 31.464876, 41.998215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257736, 31.640543, 42.168552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077995, 0.618042, -0.782267,
		-0.606737, 0.652039, 0.454660,
		0.791067, 0.439169, 0.425844,
		40.495056, 31.772293, 42.296307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905525, 32.203392, 41.918068>,  <39.941311, 31.464876, 41.998215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905525, 32.203392, 41.918068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291752, 32.114304, 41.971851>,  <40.523487, 32.060852, 42.004120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291752, 32.114304, 41.971851>,  <39.905525, 32.203392, 41.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291752, 32.114304, 41.971851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250454, 0.655910, -0.712078,
		0.070401, 0.721234, 0.689105,
		0.965565, -0.222720, 0.134459,
		40.581421, 32.047489, 42.012188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074219, 32.835918, 42.340302>,  <39.905525, 32.203392, 41.918068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074219, 32.835918, 42.340302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379150, 32.597832, 42.238659>,  <40.562111, 32.454979, 42.177673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379150, 32.597832, 42.238659>,  <40.074219, 32.835918, 42.340302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379150, 32.597832, 42.238659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227356, 0.613910, -0.755926,
		0.605935, 0.518495, 0.603329,
		0.762334, -0.595212, -0.254106,
		40.607849, 32.419270, 42.162426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509785, 33.355320, 42.071896>,  <40.074219, 32.835918, 42.340302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509785, 33.355320, 42.071896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661476, 33.010777, 41.936691>,  <40.752491, 32.804050, 41.855568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661476, 33.010777, 41.936691>,  <40.509785, 33.355320, 42.071896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661476, 33.010777, 41.936691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372509, 0.476506, -0.796354,
		0.847007, 0.176092, 0.501569,
		0.379232, -0.861356, -0.338008,
		40.775246, 32.752369, 41.835289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937572, 33.511395, 41.676777>,  <40.509785, 33.355320, 42.071896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937572, 33.511395, 41.676777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962078, 33.131802, 41.553043>,  <40.976784, 32.904045, 41.478802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962078, 33.131802, 41.553043>,  <40.937572, 33.511395, 41.676777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962078, 33.131802, 41.553043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281895, 0.313750, -0.906695,
		0.957487, -0.031648, 0.286735,
		0.061268, -0.948978, -0.309333,
		40.980457, 32.847107, 41.460243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705967, 33.261181, 41.397160>,  <40.937572, 33.511395, 41.676777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705967, 33.261181, 41.397160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412121, 33.055458, 41.220150>,  <41.235813, 32.932026, 41.113945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412121, 33.055458, 41.220150>,  <41.705967, 33.261181, 41.397160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412121, 33.055458, 41.220150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224583, 0.431139, -0.873889,
		0.640237, -0.741356, -0.201217,
		-0.734615, -0.514306, -0.442527,
		41.191734, 32.901165, 41.087391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047516, 32.985313, 40.859261>,  <41.705967, 33.261181, 41.397160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047516, 32.985313, 40.859261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661388, 32.988743, 40.754883>,  <41.429714, 32.990803, 40.692257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661388, 32.988743, 40.754883>,  <42.047516, 32.985313, 40.859261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661388, 32.988743, 40.754883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210901, 0.614781, -0.759977,
		0.153905, -0.788651, -0.595267,
		-0.965316, 0.008578, -0.260945,
		41.371792, 32.991318, 40.676598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087273, 32.987167, 40.147488>,  <42.047516, 32.985313, 40.859261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087273, 32.987167, 40.147488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706799, 33.087540, 40.219349>,  <41.478512, 33.147762, 40.262466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706799, 33.087540, 40.219349>,  <42.087273, 32.987167, 40.147488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706799, 33.087540, 40.219349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003636, 0.572972, -0.819567,
		-0.308594, -0.780215, -0.544091,
		-0.951187, 0.250935, 0.179652,
		41.421444, 33.162819, 40.273243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890900, 32.973141, 39.497620>,  <42.087273, 32.987167, 40.147488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890900, 32.973141, 39.497620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615318, 33.186363, 39.694069>,  <41.449970, 33.314297, 39.811939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615318, 33.186363, 39.694069>,  <41.890900, 32.973141, 39.497620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615318, 33.186363, 39.694069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134781, 0.571548, -0.809424,
		-0.712166, -0.623847, -0.321923,
		-0.688951, 0.533056, 0.491119,
		41.408634, 33.346279, 39.841404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383259, 33.225647, 38.918388>,  <41.890900, 32.973141, 39.497620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383259, 33.225647, 38.918388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298615, 33.443256, 39.243168>,  <41.247829, 33.573822, 39.438034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298615, 33.443256, 39.243168>,  <41.383259, 33.225647, 38.918388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298615, 33.443256, 39.243168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290681, 0.758136, -0.583725,
		-0.933128, -0.359538, -0.002289,
		-0.211607, 0.544025, 0.811948,
		41.235134, 33.606464, 39.486752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964809, 32.852299, 38.795895>,  <41.383259, 33.225647, 38.918388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964809, 32.852299, 38.795895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342747, 32.971104, 38.851101>,  <42.569511, 33.042385, 38.884224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342747, 32.971104, 38.851101>,  <41.964809, 32.852299, 38.795895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342747, 32.971104, 38.851101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297776, -0.603581, -0.739608,
		-0.136367, 0.739914, -0.658734,
		0.944846, 0.297014, 0.138020,
		42.626202, 33.060207, 38.892506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284321, 33.163448, 38.165600>,  <41.964809, 32.852299, 38.795895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284321, 33.163448, 38.165600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541466, 32.964413, 38.398540>,  <42.695755, 32.844994, 38.538303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541466, 32.964413, 38.398540>,  <42.284321, 33.163448, 38.165600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541466, 32.964413, 38.398540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391902, -0.439565, -0.808205,
		0.658132, 0.747792, -0.087576,
		0.642865, -0.497585, 0.582352,
		42.734325, 32.815136, 38.573246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077965, 33.236065, 38.051815>,  <42.284321, 33.163448, 38.165600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077965, 33.236065, 38.051815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086025, 32.840294, 38.109257>,  <43.090862, 32.602829, 38.143723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086025, 32.840294, 38.109257>,  <43.077965, 33.236065, 38.051815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086025, 32.840294, 38.109257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622402, -0.099991, -0.776285,
		0.782438, 0.105026, 0.613808,
		0.020155, -0.989430, 0.143605,
		43.092072, 32.543465, 38.152340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751381, 33.249798, 37.967411>,  <43.077965, 33.236065, 38.051815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751381, 33.249798, 37.967411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596195, 32.894753, 37.868103>,  <43.503086, 32.681725, 37.808517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596195, 32.894753, 37.868103>,  <43.751381, 33.249798, 37.967411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596195, 32.894753, 37.868103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648507, -0.071483, -0.757845,
		0.654924, -0.455016, 0.603354,
		-0.387961, -0.887610, -0.248265,
		43.479805, 32.628471, 37.793625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351627, 32.810268, 37.662846>,  <43.751381, 33.249798, 37.967411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351627, 32.810268, 37.662846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997536, 32.653610, 37.562462>,  <43.785080, 32.559616, 37.502232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997536, 32.653610, 37.562462>,  <44.351627, 32.810268, 37.662846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997536, 32.653610, 37.562462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378313, -0.292292, -0.878319,
		0.270638, -0.872455, 0.406911,
		-0.885231, -0.391646, -0.250956,
		43.731968, 32.536118, 37.487175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415329, 32.672760, 38.321495>,  <44.351627, 32.810268, 37.662846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415329, 32.672760, 38.321495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371773, 33.011478, 38.113235>,  <44.345638, 33.214710, 37.988281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371773, 33.011478, 38.113235>,  <44.415329, 32.672760, 38.321495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371773, 33.011478, 38.113235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116661, 0.509253, 0.852673,
		0.987184, 0.153590, 0.043333,
		-0.108895, 0.846801, -0.520644,
		44.339104, 33.265518, 37.957043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814812, 33.229912, 38.626781>,  <44.415329, 32.672760, 38.321495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814812, 33.229912, 38.626781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522556, 33.393032, 38.407738>,  <44.347202, 33.490902, 38.276314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522556, 33.393032, 38.407738>,  <44.814812, 33.229912, 38.626781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522556, 33.393032, 38.407738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206206, 0.632791, 0.746361,
		0.650885, 0.658238, -0.378248,
		-0.730635, 0.407799, -0.547606,
		44.303368, 33.515373, 38.243454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788685, 33.997246, 38.689503>,  <44.814812, 33.229912, 38.626781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788685, 33.997246, 38.689503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406471, 33.893658, 38.633091>,  <44.177143, 33.831505, 38.599243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406471, 33.893658, 38.633091>,  <44.788685, 33.997246, 38.689503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406471, 33.893658, 38.633091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281753, 0.660696, 0.695771,
		-0.087004, 0.704569, -0.704282,
		-0.955534, -0.258968, -0.141031,
		44.119812, 33.815968, 38.590782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218731, 33.910698, 38.101063>,  <44.788685, 33.997246, 38.689503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218731, 33.910698, 38.101063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532135, 33.873787, 38.346859>,  <45.720177, 33.851639, 38.494335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532135, 33.873787, 38.346859>,  <45.218731, 33.910698, 38.101063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532135, 33.873787, 38.346859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319658, 0.907881, -0.271240,
		-0.532853, 0.408946, 0.740831,
		0.783509, -0.092281, 0.614490,
		45.767189, 33.846104, 38.531204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462395, 34.589359, 38.421616>,  <45.218731, 33.910698, 38.101063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462395, 34.589359, 38.421616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792068, 34.363323, 38.406708>,  <45.989872, 34.227703, 38.397762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792068, 34.363323, 38.406708>,  <45.462395, 34.589359, 38.421616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792068, 34.363323, 38.406708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498487, 0.755131, -0.425779,
		0.268748, 0.332343, 0.904059,
		0.824188, -0.565089, -0.037271,
		46.039326, 34.193798, 38.395527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007923, 35.020332, 38.517681>,  <45.462395, 34.589359, 38.421616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007923, 35.020332, 38.517681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211708, 34.729053, 38.334301>,  <46.333977, 34.554287, 38.224274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211708, 34.729053, 38.334301>,  <46.007923, 35.020332, 38.517681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211708, 34.729053, 38.334301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520728, 0.685050, -0.509459,
		0.685050, 0.020820, 0.728199,
		0.509459, -0.728199, -0.458452,
		46.364548, 34.510593, 38.196766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.635792, 35.327503, 38.610405>,  <46.007923, 35.020332, 38.517681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.635792, 35.327503, 38.610405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668266, 35.052647, 38.321617>,  <46.687752, 34.887733, 38.148346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668266, 35.052647, 38.321617>,  <46.635792, 35.327503, 38.610405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668266, 35.052647, 38.321617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553599, 0.633438, -0.540634,
		0.828817, -0.355792, 0.431827,
		0.081182, -0.687145, -0.721970,
		46.692619, 34.846504, 38.105026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.393444, 35.316185, 38.235168>,  <46.635792, 35.327503, 38.610405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.393444, 35.316185, 38.235168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124527, 35.152206, 37.988605>,  <46.963177, 35.053818, 37.840668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124527, 35.152206, 37.988605>,  <47.393444, 35.316185, 38.235168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124527, 35.152206, 37.988605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318067, 0.591930, -0.740576,
		0.668470, -0.693945, -0.267560,
		-0.672296, -0.409951, -0.616408,
		46.922836, 35.029221, 37.803684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.637165, 34.997604, 37.563477>,  <47.393444, 35.316185, 38.235168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.637165, 34.997604, 37.563477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259174, 35.101528, 37.483959>,  <47.032379, 35.163883, 37.436249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259174, 35.101528, 37.483959>,  <47.637165, 34.997604, 37.563477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.259174, 35.101528, 37.483959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285686, 0.359351, -0.888398,
		-0.159381, -0.896306, -0.413803,
		-0.944977, 0.259812, -0.198789,
		46.975681, 35.179470, 37.424324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256687, 34.527676, 37.034180>,  <47.637165, 34.997604, 37.563477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256687, 34.527676, 37.034180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123371, 34.904789, 37.030514>,  <47.043381, 35.131058, 37.028313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123371, 34.904789, 37.030514>,  <47.256687, 34.527676, 37.034180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123371, 34.904789, 37.030514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335402, 0.109475, -0.935693,
		-0.881149, -0.314930, -0.352697,
		-0.333289, 0.942780, -0.009164,
		47.023384, 35.187622, 37.027763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.744675, 34.721214, 36.488400>,  <47.256687, 34.527676, 37.034180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.744675, 34.721214, 36.488400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974106, 35.035793, 36.580059>,  <47.111763, 35.224541, 36.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974106, 35.035793, 36.580059>,  <46.744675, 34.721214, 36.488400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974106, 35.035793, 36.580059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407591, -0.031352, -0.912626,
		-0.710550, 0.616859, -0.338532,
		0.573576, 0.786449, 0.229149,
		47.146179, 35.271729, 36.648804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586582, 35.336933, 36.083748>,  <46.744675, 34.721214, 36.488400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586582, 35.336933, 36.083748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976509, 35.336575, 36.172958>,  <47.210464, 35.336361, 36.226482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976509, 35.336575, 36.172958>,  <46.586582, 35.336933, 36.083748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976509, 35.336575, 36.172958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223023, 0.005917, -0.974795,
		-0.000446, 0.999982, 0.005968,
		0.974813, -0.000897, 0.223022,
		47.268951, 35.336304, 36.239864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955723, 35.816822, 35.609055>,  <46.586582, 35.336933, 36.083748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955723, 35.816822, 35.609055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207611, 35.543900, 35.757599>,  <47.358746, 35.380146, 35.846725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207611, 35.543900, 35.757599>,  <46.955723, 35.816822, 35.609055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207611, 35.543900, 35.757599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402832, -0.121929, -0.907116,
		0.664212, 0.720825, 0.198074,
		0.629721, -0.682308, 0.371359,
		47.396526, 35.339207, 35.869007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.679775, 35.942837, 35.387337>,  <46.955723, 35.816822, 35.609055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.679775, 35.942837, 35.387337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590736, 35.560768, 35.465412>,  <47.537312, 35.331528, 35.512257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590736, 35.560768, 35.465412>,  <47.679775, 35.942837, 35.387337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.590736, 35.560768, 35.465412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274052, -0.253445, -0.927718,
		0.935598, -0.153019, 0.318184,
		-0.222600, -0.955171, 0.195188,
		47.523956, 35.274216, 35.523968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.275707, 35.431782, 35.129669>,  <47.679775, 35.942837, 35.387337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.275707, 35.431782, 35.129669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.900959, 35.293106, 35.147930>,  <47.676109, 35.209900, 35.158886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.900959, 35.293106, 35.147930>,  <48.275707, 35.431782, 35.129669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.900959, 35.293106, 35.147930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071895, -0.318743, -0.945111,
		0.342216, -0.882160, 0.323545,
		-0.936867, -0.346693, 0.045656,
		47.619900, 35.189098, 35.161629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.150875, 34.770264, 34.820690>,  <48.275707, 35.431782, 35.129669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.150875, 34.770264, 34.820690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818535, 34.992855, 34.819065>,  <47.619129, 35.126411, 34.818089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818535, 34.992855, 34.819065>,  <48.150875, 34.770264, 34.820690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.818535, 34.992855, 34.819065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101147, 0.143825, -0.984421,
		-0.547225, -0.818318, -0.175783,
		-0.830851, 0.556480, -0.004065,
		47.569279, 35.159798, 34.817844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.136368, 33.227806, 28.516624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775543, 33.365513, 28.412495>,  <39.559048, 33.448135, 28.350018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775543, 33.365513, 28.412495>,  <40.136368, 33.227806, 28.516624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775543, 33.365513, 28.412495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388969, -0.387018, 0.836015,
		0.187061, 0.855393, 0.483022,
		-0.902060, 0.344266, -0.260325,
		39.504925, 33.468792, 28.334396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867367, 33.504059, 29.124943>,  <40.136368, 33.227806, 28.516624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867367, 33.504059, 29.124943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537434, 33.475300, 28.900631>,  <39.339474, 33.458046, 28.766043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537434, 33.475300, 28.900631>,  <39.867367, 33.504059, 29.124943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537434, 33.475300, 28.900631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558902, -0.045938, 0.827960,
		-0.085290, 0.996354, -0.002292,
		-0.824836, -0.071898, -0.560782,
		39.289982, 33.453732, 28.732397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341541, 33.923542, 29.492672>,  <39.867367, 33.504059, 29.124943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341541, 33.923542, 29.492672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138668, 33.688732, 29.240271>,  <39.016945, 33.547848, 29.088831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138668, 33.688732, 29.240271>,  <39.341541, 33.923542, 29.492672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138668, 33.688732, 29.240271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751131, -0.057900, 0.657609,
		-0.422568, 0.807496, -0.411566,
		-0.507187, -0.587024, -0.631002,
		38.986511, 33.512627, 29.050970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701534, 34.228966, 29.420343>,  <39.341541, 33.923542, 29.492672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701534, 34.228966, 29.420343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671494, 33.838356, 29.339581>,  <38.653469, 33.603992, 29.291122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671494, 33.838356, 29.339581>,  <38.701534, 34.228966, 29.420343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671494, 33.838356, 29.339581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777342, -0.069487, 0.625229,
		-0.624579, 0.203910, -0.753871,
		-0.075107, -0.976521, -0.201908,
		38.648960, 33.545399, 29.279009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984707, 34.125259, 29.406315>,  <38.701534, 34.228966, 29.420343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984707, 34.125259, 29.406315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141380, 33.760231, 29.453316>,  <38.235386, 33.541214, 29.481516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141380, 33.760231, 29.453316>,  <37.984707, 34.125259, 29.406315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141380, 33.760231, 29.453316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677510, -0.199647, 0.707899,
		-0.622547, -0.356879, -0.696471,
		0.391683, -0.912567, 0.117500,
		38.258884, 33.486462, 29.488565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359291, 33.726196, 29.426659>,  <37.984707, 34.125259, 29.406315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359291, 33.726196, 29.426659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663017, 33.521271, 29.587145>,  <37.845253, 33.398315, 29.683437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663017, 33.521271, 29.587145>,  <37.359291, 33.726196, 29.426659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663017, 33.521271, 29.587145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593199, -0.291509, 0.750425,
		-0.267491, -0.807813, -0.525249,
		0.759318, -0.512309, 0.401218,
		37.890812, 33.367577, 29.707510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004456, 33.153408, 29.766476>,  <37.359291, 33.726196, 29.426659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004456, 33.153408, 29.766476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371887, 33.183029, 29.921768>,  <37.592346, 33.200802, 30.014944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371887, 33.183029, 29.921768>,  <37.004456, 33.153408, 29.766476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371887, 33.183029, 29.921768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322168, -0.428713, 0.844046,
		0.228946, -0.900401, -0.369949,
		0.918581, 0.074055, 0.388233,
		37.647461, 33.205246, 30.038239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028671, 32.551346, 30.123363>,  <37.004456, 33.153408, 29.766476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028671, 32.551346, 30.123363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286007, 32.820839, 30.268803>,  <37.440407, 32.982533, 30.356066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286007, 32.820839, 30.268803>,  <37.028671, 32.551346, 30.123363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286007, 32.820839, 30.268803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254052, -0.260142, 0.931549,
		0.722200, -0.691674, 0.003803,
		0.643339, 0.673731, 0.363595,
		37.479008, 33.022957, 30.377882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508400, 32.215809, 30.759735>,  <37.028671, 32.551346, 30.123363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508400, 32.215809, 30.759735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522465, 32.609409, 30.829599>,  <37.530903, 32.845570, 30.871519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522465, 32.609409, 30.829599>,  <37.508400, 32.215809, 30.759735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522465, 32.609409, 30.829599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049445, -0.172844, 0.983707,
		0.998158, -0.043220, 0.042577,
		0.035157, 0.984000, 0.174663,
		37.533012, 32.904610, 30.881998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978569, 32.317051, 31.327209>,  <37.508400, 32.215809, 30.759735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978569, 32.317051, 31.327209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774670, 32.659309, 31.291353>,  <37.652332, 32.864662, 31.269840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774670, 32.659309, 31.291353>,  <37.978569, 32.317051, 31.327209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774670, 32.659309, 31.291353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045672, 0.077131, 0.995974,
		0.859112, 0.511787, -0.000238,
		-0.509745, 0.855643, -0.089639,
		37.621746, 32.916000, 31.264462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204510, 32.670063, 31.888123>,  <37.978569, 32.317051, 31.327209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204510, 32.670063, 31.888123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857300, 32.855270, 31.816410>,  <37.648975, 32.966396, 31.773382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857300, 32.855270, 31.816410>,  <38.204510, 32.670063, 31.888123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857300, 32.855270, 31.816410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186372, 0.030838, 0.981995,
		0.460214, 0.885810, 0.059526,
		-0.868026, 0.463021, -0.179283,
		37.596893, 32.994175, 31.762625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240337, 33.287189, 32.237343>,  <38.204510, 32.670063, 31.888123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240337, 33.287189, 32.237343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847797, 33.241219, 32.175697>,  <37.612274, 33.213634, 32.138710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847797, 33.241219, 32.175697>,  <38.240337, 33.287189, 32.237343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847797, 33.241219, 32.175697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180418, 0.273691, 0.944745,
		-0.066400, 0.954926, -0.289321,
		-0.981346, -0.114930, -0.154113,
		37.553394, 33.206741, 32.129463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880127, 33.946774, 32.483536>,  <38.240337, 33.287189, 32.237343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880127, 33.946774, 32.483536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644497, 33.623764, 32.495502>,  <37.503117, 33.429958, 32.502682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644497, 33.623764, 32.495502>,  <37.880127, 33.946774, 32.483536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644497, 33.623764, 32.495502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275220, 0.235303, 0.932141,
		-0.759763, 0.540871, -0.360858,
		-0.589079, -0.807521, 0.029916,
		37.467773, 33.381508, 32.504478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576977, 34.167503, 33.033554>,  <37.880127, 33.946774, 32.483536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576977, 34.167503, 33.033554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436771, 33.798416, 32.969398>,  <37.352646, 33.576962, 32.930904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436771, 33.798416, 32.969398>,  <37.576977, 34.167503, 33.033554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436771, 33.798416, 32.969398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326000, -0.040340, 0.944509,
		-0.877988, 0.383353, -0.286667,
		-0.350516, -0.922721, -0.160391,
		37.331615, 33.521599, 32.921280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910206, 34.162472, 33.346615>,  <37.576977, 34.167503, 33.033554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910206, 34.162472, 33.346615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032372, 33.782272, 33.323734>,  <37.105671, 33.554153, 33.310005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032372, 33.782272, 33.323734>,  <36.910206, 34.162472, 33.346615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032372, 33.782272, 33.323734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277918, -0.146432, 0.949378,
		-0.910762, -0.274052, -0.308883,
		0.305410, -0.950502, -0.057201,
		37.123993, 33.497124, 33.306576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434547, 33.726616, 33.577259>,  <36.910206, 34.162472, 33.346615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434547, 33.726616, 33.577259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766350, 33.507122, 33.618828>,  <36.965431, 33.375423, 33.643768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766350, 33.507122, 33.618828>,  <36.434547, 33.726616, 33.577259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766350, 33.507122, 33.618828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256406, -0.208878, 0.943730,
		-0.496156, -0.809477, -0.313967,
		0.829509, -0.548740, 0.103919,
		37.015202, 33.342499, 33.650005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288086, 33.155483, 34.074749>,  <36.434547, 33.726616, 33.577259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288086, 33.155483, 34.074749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686672, 33.186405, 34.061577>,  <36.925823, 33.204960, 34.053673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686672, 33.186405, 34.061577>,  <36.288086, 33.155483, 34.074749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686672, 33.186405, 34.061577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062604, -0.421668, 0.904586,
		0.056048, -0.903449, -0.425017,
		0.996464, 0.077308, -0.032926,
		36.985611, 33.209599, 34.051701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589970, 32.477768, 34.387871>,  <36.288086, 33.155483, 34.074749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589970, 32.477768, 34.387871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877274, 32.754036, 34.421551>,  <37.049656, 32.919796, 34.441757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877274, 32.754036, 34.421551>,  <36.589970, 32.477768, 34.387871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877274, 32.754036, 34.421551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164814, -0.286459, 0.943810,
		0.675978, -0.664019, -0.319582,
		0.718255, 0.690666, 0.084200,
		37.092751, 32.961235, 34.446812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163731, 32.114632, 34.739254>,  <36.589970, 32.477768, 34.387871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163731, 32.114632, 34.739254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252304, 32.502117, 34.784084>,  <37.305450, 32.734608, 34.810982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252304, 32.502117, 34.784084>,  <37.163731, 32.114632, 34.739254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252304, 32.502117, 34.784084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261936, -0.169790, 0.950032,
		0.939337, -0.181017, -0.291338,
		0.221438, 0.968713, 0.112075,
		37.318737, 32.792732, 34.817707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845486, 32.124039, 35.147816>,  <37.163731, 32.114632, 34.739254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845486, 32.124039, 35.147816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717274, 32.499767, 35.196690>,  <37.640347, 32.725204, 35.226013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717274, 32.499767, 35.196690>,  <37.845486, 32.124039, 35.147816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717274, 32.499767, 35.196690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401302, 0.017812, 0.915773,
		0.858032, 0.342565, -0.382662,
		-0.320527, 0.939325, 0.122189,
		37.621117, 32.781567, 35.233345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364223, 32.552914, 35.513863>,  <37.845486, 32.124039, 35.147816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364223, 32.552914, 35.513863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018768, 32.746468, 35.570419>,  <37.811497, 32.862598, 35.604355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018768, 32.746468, 35.570419>,  <38.364223, 32.552914, 35.513863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018768, 32.746468, 35.570419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148044, -0.024672, 0.988673,
		0.481893, 0.874783, -0.050329,
		-0.863633, 0.483885, 0.141395,
		37.759678, 32.891632, 35.612839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504498, 33.166439, 35.826878>,  <38.364223, 32.552914, 35.513863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504498, 33.166439, 35.826878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116573, 33.161285, 35.924286>,  <37.883820, 33.158195, 35.982731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116573, 33.161285, 35.924286>,  <38.504498, 33.166439, 35.826878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116573, 33.161285, 35.924286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238803, 0.152166, 0.959072,
		-0.049409, 0.988271, -0.144496,
		-0.969810, -0.012881, 0.243520,
		37.825630, 33.157421, 35.997341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382092, 33.435135, 36.474483>,  <38.504498, 33.166439, 35.826878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382092, 33.435135, 36.474483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.680923, 33.286476, 36.694939>,  <38.860222, 33.197281, 36.827213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.680923, 33.286476, 36.694939>,  <38.382092, 33.435135, 36.474483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680923, 33.286476, 36.694939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555962, -0.105170, -0.824527,
		0.364395, 0.922398, 0.128051,
		0.747076, -0.371645, 0.551142,
		38.905045, 33.174984, 36.860283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083332, 33.869293, 36.540272>,  <38.382092, 33.435135, 36.474483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083332, 33.869293, 36.540272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167530, 33.480347, 36.580669>,  <39.218048, 33.246979, 36.604908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167530, 33.480347, 36.580669>,  <39.083332, 33.869293, 36.540272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167530, 33.480347, 36.580669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601806, 0.047471, -0.797230,
		0.770403, 0.228596, 0.595167,
		0.210497, -0.972363, 0.100998,
		39.230679, 33.188637, 36.610970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815430, 33.816132, 36.449512>,  <39.083332, 33.869293, 36.540272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815430, 33.816132, 36.449512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.702881, 33.435299, 36.401562>,  <39.635349, 33.206799, 36.372791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.702881, 33.435299, 36.401562>,  <39.815430, 33.816132, 36.449512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702881, 33.435299, 36.401562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554477, -0.059351, -0.830080,
		0.783188, -0.300034, 0.544606,
		-0.281375, -0.952080, -0.119879,
		39.618469, 33.149673, 36.365597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419254, 33.294643, 36.333981>,  <39.815430, 33.816132, 36.449512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419254, 33.294643, 36.333981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109715, 33.095634, 36.177200>,  <39.923988, 32.976231, 36.083134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109715, 33.095634, 36.177200>,  <40.419254, 33.294643, 36.333981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109715, 33.095634, 36.177200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611883, -0.427462, -0.665489,
		0.163551, -0.754818, 0.635217,
		-0.773854, -0.497520, -0.391949,
		39.877560, 32.946377, 36.059616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768047, 32.681438, 35.981342>,  <40.419254, 33.294643, 36.333981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768047, 32.681438, 35.981342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401985, 32.695602, 35.820724>,  <40.182346, 32.704102, 35.724354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401985, 32.695602, 35.820724>,  <40.768047, 32.681438, 35.981342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401985, 32.695602, 35.820724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380691, -0.251608, -0.889813,
		-0.132537, -0.967181, 0.216781,
		-0.915155, 0.035406, -0.401544,
		40.127438, 32.706226, 35.700260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778030, 32.183224, 35.554531>,  <40.768047, 32.681438, 35.981342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778030, 32.183224, 35.554531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471554, 32.397503, 35.412560>,  <40.287666, 32.526070, 35.327377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471554, 32.397503, 35.412560>,  <40.778030, 32.183224, 35.554531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471554, 32.397503, 35.412560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185327, -0.344652, -0.920255,
		-0.615303, -0.770873, 0.164792,
		-0.766195, 0.535696, -0.354929,
		40.241695, 32.558212, 35.306080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541946, 31.768902, 35.085373>,  <40.778030, 32.183224, 35.554531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541946, 31.768902, 35.085373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380184, 32.118534, 34.977715>,  <40.283127, 32.328312, 34.913120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380184, 32.118534, 34.977715>,  <40.541946, 31.768902, 35.085373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380184, 32.118534, 34.977715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167763, -0.218395, -0.961332,
		-0.899062, -0.433921, -0.058319,
		-0.404405, 0.874080, -0.269146,
		40.258862, 32.380756, 34.896969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104816, 31.658892, 34.487164>,  <40.541946, 31.768902, 35.085373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104816, 31.658892, 34.487164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236835, 32.036022, 34.468632>,  <40.316048, 32.262302, 34.457512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236835, 32.036022, 34.468632>,  <40.104816, 31.658892, 34.487164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236835, 32.036022, 34.468632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186574, -0.113265, -0.975890,
		-0.925344, 0.313443, -0.213290,
		0.330044, 0.942828, -0.046329,
		40.335850, 32.318871, 34.454735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814758, 31.919027, 33.791939>,  <40.104816, 31.658892, 34.487164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814758, 31.919027, 33.791939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109386, 32.157860, 33.919033>,  <40.286163, 32.301159, 33.995289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109386, 32.157860, 33.919033>,  <39.814758, 31.919027, 33.791939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109386, 32.157860, 33.919033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393224, 0.004187, -0.919433,
		-0.550305, 0.802171, -0.231702,
		0.736572, 0.597080, 0.317737,
		40.330357, 32.336983, 34.014355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887463, 32.536598, 33.365520>,  <39.814758, 31.919027, 33.791939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887463, 32.536598, 33.365520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.249401, 32.504894, 33.532837>,  <40.466564, 32.485870, 33.633228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.249401, 32.504894, 33.532837>,  <39.887463, 32.536598, 33.365520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249401, 32.504894, 33.532837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423278, 0.062085, -0.903870,
		0.045675, 0.994918, 0.089728,
		0.904848, -0.079264, 0.418291,
		40.520855, 32.481113, 33.658325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259602, 32.945450, 33.053768>,  <39.887463, 32.536598, 33.365520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259602, 32.945450, 33.053768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541996, 32.716305, 33.220345>,  <40.711433, 32.578819, 33.320290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541996, 32.716305, 33.220345>,  <40.259602, 32.945450, 33.053768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541996, 32.716305, 33.220345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516504, 0.014144, -0.856168,
		0.484573, 0.819532, 0.305870,
		0.705983, -0.572859, 0.416438,
		40.753792, 32.544449, 33.345276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919159, 33.276501, 32.991707>,  <40.259602, 32.945450, 33.053768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919159, 33.276501, 32.991707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.017872, 32.891674, 33.038219>,  <41.077099, 32.660778, 33.066128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.017872, 32.891674, 33.038219>,  <40.919159, 33.276501, 32.991707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017872, 32.891674, 33.038219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562073, 0.044353, -0.825897,
		0.789412, 0.269178, 0.551699,
		0.246783, -0.962069, 0.116285,
		41.091908, 32.603054, 33.073105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587067, 33.267288, 32.834358>,  <40.919159, 33.276501, 32.991707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587067, 33.267288, 32.834358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.443607, 32.897614, 32.781822>,  <41.357533, 32.675808, 32.750301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.443607, 32.897614, 32.781822>,  <41.587067, 33.267288, 32.834358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443607, 32.897614, 32.781822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358581, -0.006493, -0.933476,
		0.861853, -0.381886, 0.333724,
		-0.358648, -0.924187, -0.131341,
		41.336014, 32.620358, 32.742420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119328, 32.973633, 32.510769>,  <41.587067, 33.267288, 32.834358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119328, 32.973633, 32.510769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.814079, 32.728367, 32.429111>,  <41.630932, 32.581207, 32.380116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.814079, 32.728367, 32.429111>,  <42.119328, 32.973633, 32.510769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814079, 32.728367, 32.429111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307058, -0.066066, -0.949395,
		0.568648, -0.787188, 0.238693,
		-0.763122, -0.613164, -0.204144,
		41.585144, 32.544418, 32.367867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407440, 32.355515, 32.091728>,  <42.119328, 32.973633, 32.510769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407440, 32.355515, 32.091728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.012268, 32.382938, 32.036163>,  <41.775166, 32.399395, 32.002823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.012268, 32.382938, 32.036163>,  <42.407440, 32.355515, 32.091728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012268, 32.382938, 32.036163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144050, 0.076672, -0.986596,
		-0.056993, -0.994696, -0.085623,
		-0.987928, 0.068563, -0.138916,
		41.715889, 32.403507, 31.994488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329350, 31.811623, 31.596352>,  <42.407440, 32.355515, 32.091728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329350, 31.811623, 31.596352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.023693, 32.069485, 31.587339>,  <41.840298, 32.224201, 31.581932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.023693, 32.069485, 31.587339>,  <42.329350, 31.811623, 31.596352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023693, 32.069485, 31.587339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103823, 0.088442, -0.990656,
		-0.636640, -0.759339, -0.134512,
		-0.764140, 0.644657, -0.022531,
		41.794453, 32.262882, 31.580580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967663, 31.558449, 30.996748>,  <42.329350, 31.811623, 31.596352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967663, 31.558449, 30.996748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.856678, 31.931799, 31.087811>,  <41.790089, 32.155807, 31.142448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.856678, 31.931799, 31.087811>,  <41.967663, 31.558449, 30.996748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856678, 31.931799, 31.087811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119743, 0.201514, -0.972139,
		-0.953245, -0.296991, 0.055853,
		-0.277461, 0.933375, 0.227655,
		41.773441, 32.211811, 31.156107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405479, 31.578432, 30.557140>,  <41.967663, 31.558449, 30.996748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405479, 31.578432, 30.557140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.542767, 31.944786, 30.640432>,  <41.625137, 32.164597, 30.690407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.542767, 31.944786, 30.640432>,  <41.405479, 31.578432, 30.557140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542767, 31.944786, 30.640432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046085, 0.237849, -0.970208,
		-0.938124, 0.323398, 0.123843,
		0.343219, 0.915883, 0.208228,
		41.645733, 32.219551, 30.702900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.849983, 32.100983, 30.282310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.188061, 32.313076, 30.309134>,  <41.390907, 32.440331, 30.325228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.188061, 32.313076, 30.309134>,  <40.849983, 32.100983, 30.282310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188061, 32.313076, 30.309134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142786, 0.344927, -0.927706,
		-0.515032, 0.774517, 0.367241,
		0.845195, 0.530235, 0.067058,
		41.441620, 32.472145, 30.329250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688110, 32.623161, 29.884012>,  <40.849983, 32.100983, 30.282310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688110, 32.623161, 29.884012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.086788, 32.611420, 29.914307>,  <41.325996, 32.604374, 29.932484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.086788, 32.611420, 29.914307>,  <40.688110, 32.623161, 29.884012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086788, 32.611420, 29.914307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081171, 0.326158, -0.941824,
		0.002941, 0.944860, 0.327462,
		0.996696, -0.029351, 0.075736,
		41.385796, 32.602615, 29.937027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821182, 33.199661, 29.549713>,  <40.688110, 32.623161, 29.884012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821182, 33.199661, 29.549713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.154381, 32.978642, 29.538385>,  <41.354301, 32.846027, 29.531590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.154381, 32.978642, 29.538385>,  <40.821182, 33.199661, 29.549713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154381, 32.978642, 29.538385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263404, 0.441061, -0.857953,
		0.486554, 0.707213, 0.512947,
		0.832996, -0.552553, -0.028317,
		41.404282, 32.812874, 29.529890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226040, 33.683868, 29.160553>,  <40.821182, 33.199661, 29.549713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226040, 33.683868, 29.160553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.463947, 33.362339, 29.164698>,  <41.606693, 33.169422, 29.167185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.463947, 33.362339, 29.164698>,  <41.226040, 33.683868, 29.160553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463947, 33.362339, 29.164698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254843, 0.176306, -0.950774,
		0.762431, 0.568136, 0.309712,
		0.594773, -0.803827, 0.010364,
		41.642380, 33.121189, 29.167807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912273, 33.947624, 28.878160>,  <41.226040, 33.683868, 29.160553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912273, 33.947624, 28.878160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.883167, 33.550335, 28.841894>,  <41.865704, 33.311962, 28.820133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.883167, 33.550335, 28.841894>,  <41.912273, 33.947624, 28.878160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883167, 33.550335, 28.841894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072886, 0.085370, -0.993680,
		0.994683, -0.078909, 0.066181,
		-0.072761, -0.993220, -0.090668,
		41.861340, 33.252369, 28.814693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425011, 33.866348, 28.430527>,  <41.912273, 33.947624, 28.878160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425011, 33.866348, 28.430527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.234612, 33.517494, 28.385256>,  <42.120373, 33.308182, 28.358093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.234612, 33.517494, 28.385256>,  <42.425011, 33.866348, 28.430527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234612, 33.517494, 28.385256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155697, 0.043087, -0.986865,
		0.865556, -0.487365, 0.115279,
		-0.475996, -0.872135, -0.113175,
		42.091812, 33.255856, 28.351303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864685, 33.422462, 28.083883>,  <42.425011, 33.866348, 28.430527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864685, 33.422462, 28.083883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487751, 33.303814, 28.021887>,  <42.261589, 33.232624, 27.984690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487751, 33.303814, 28.021887>,  <42.864685, 33.422462, 28.083883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487751, 33.303814, 28.021887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212161, -0.171298, -0.962104,
		0.258828, -0.939507, 0.224350,
		-0.942335, -0.296618, -0.154990,
		42.205051, 33.214828, 27.975389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007210, 32.820686, 27.711382>,  <42.864685, 33.422462, 28.083883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007210, 32.820686, 27.711382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.630344, 32.944847, 27.660818>,  <42.404224, 33.019344, 27.630480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.630344, 32.944847, 27.660818>,  <43.007210, 32.820686, 27.711382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630344, 32.944847, 27.660818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129137, -0.011836, -0.991556,
		-0.309277, -0.950531, -0.028933,
		-0.942163, 0.310402, -0.126409,
		42.347694, 33.037968, 27.622896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799953, 32.485279, 27.135780>,  <43.007210, 32.820686, 27.711382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799953, 32.485279, 27.135780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540112, 32.784718, 27.188854>,  <42.384205, 32.964382, 27.220699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540112, 32.784718, 27.188854>,  <42.799953, 32.485279, 27.135780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540112, 32.784718, 27.188854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036267, 0.204838, -0.978124,
		-0.759403, -0.630586, -0.160215,
		-0.649609, 0.748600, 0.132685,
		42.345230, 33.009296, 27.228661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255825, 32.439465, 26.610096>,  <42.799953, 32.485279, 27.135780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255825, 32.439465, 26.610096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.270885, 32.820961, 26.729395>,  <42.279922, 33.049858, 26.800974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.270885, 32.820961, 26.729395>,  <42.255825, 32.439465, 26.610096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270885, 32.820961, 26.729395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119857, 0.291996, -0.948880,
		-0.992077, 0.071477, -0.103318,
		0.037654, 0.953745, 0.298250,
		42.282181, 33.107086, 26.818871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806545, 32.822765, 26.150404>,  <42.255825, 32.439465, 26.610096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806545, 32.822765, 26.150404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.058384, 33.093594, 26.302816>,  <42.209488, 33.256092, 26.394264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.058384, 33.093594, 26.302816>,  <41.806545, 32.822765, 26.150404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058384, 33.093594, 26.302816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162814, 0.364561, -0.916835,
		-0.759672, 0.639272, 0.119289,
		0.629596, 0.677072, 0.381029,
		42.247261, 33.296715, 26.417126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716850, 33.439865, 25.727453>,  <41.806545, 32.822765, 26.150404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716850, 33.439865, 25.727453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.065838, 33.506168, 25.911331>,  <42.275230, 33.545952, 26.021658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.065838, 33.506168, 25.911331>,  <41.716850, 33.439865, 25.727453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065838, 33.506168, 25.911331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324286, 0.507332, -0.798406,
		-0.365559, 0.845659, 0.388880,
		0.872471, 0.165757, 0.459695,
		42.327579, 33.555897, 26.049240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980011, 34.140568, 25.572792>,  <41.716850, 33.439865, 25.727453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980011, 34.140568, 25.572792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.304222, 33.947948, 25.706154>,  <42.498749, 33.832378, 25.786171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.304222, 33.947948, 25.706154>,  <41.980011, 34.140568, 25.572792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304222, 33.947948, 25.706154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577105, 0.559431, -0.594967,
		0.099989, 0.674646, 0.731338,
		0.810526, -0.481549, 0.333405,
		42.547379, 33.803482, 25.806175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474232, 34.740532, 25.647982>,  <41.980011, 34.140568, 25.572792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474232, 34.740532, 25.647982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.693092, 34.405933, 25.636017>,  <42.824409, 34.205173, 25.628838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.693092, 34.405933, 25.636017>,  <42.474232, 34.740532, 25.647982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693092, 34.405933, 25.636017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704266, 0.479383, -0.523643,
		0.452365, 0.265448, 0.851413,
		0.547152, -0.836498, -0.029910,
		42.857239, 34.154984, 25.627043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115047, 34.923771, 25.672832>,  <42.474232, 34.740532, 25.647982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115047, 34.923771, 25.672832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.174252, 34.574760, 25.486589>,  <43.209774, 34.365353, 25.374844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.174252, 34.574760, 25.486589>,  <43.115047, 34.923771, 25.672832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174252, 34.574760, 25.486589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587060, 0.456385, -0.668636,
		0.795899, -0.174376, 0.579774,
		0.148007, -0.872528, -0.465605,
		43.218655, 34.313004, 25.346909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718700, 34.932564, 25.469772>,  <43.115047, 34.923771, 25.672832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718700, 34.932564, 25.469772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.573719, 34.639942, 25.238789>,  <43.486729, 34.464371, 25.100199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.573719, 34.639942, 25.238789>,  <43.718700, 34.932564, 25.469772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573719, 34.639942, 25.238789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702676, 0.192535, -0.684965,
		0.612269, -0.654033, 0.444260,
		-0.362453, -0.731554, -0.577457,
		43.464985, 34.420475, 25.065552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255852, 34.616058, 25.247826>,  <43.718700, 34.932564, 25.469772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255852, 34.616058, 25.247826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.984295, 34.504257, 24.976242>,  <43.821362, 34.437176, 24.813292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.984295, 34.504257, 24.976242>,  <44.255852, 34.616058, 25.247826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984295, 34.504257, 24.976242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672426, 0.134692, -0.727806,
		0.294875, -0.950650, 0.096504,
		-0.678891, -0.279503, -0.678959,
		43.780628, 34.420406, 24.772554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646904, 34.212875, 24.845789>,  <44.255852, 34.616058, 25.247826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646904, 34.212875, 24.845789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.321117, 34.314342, 24.637060>,  <44.125645, 34.375221, 24.511824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.321117, 34.314342, 24.637060>,  <44.646904, 34.212875, 24.845789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321117, 34.314342, 24.637060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579862, 0.324734, -0.747200,
		-0.020086, -0.911154, -0.411576,
		-0.814467, 0.253666, -0.521821,
		44.076778, 34.390442, 24.480515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803719, 34.270809, 24.143911>,  <44.646904, 34.212875, 24.845789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803719, 34.270809, 24.143911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448414, 34.445320, 24.086433>,  <44.235229, 34.550026, 24.051947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448414, 34.445320, 24.086433>,  <44.803719, 34.270809, 24.143911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448414, 34.445320, 24.086433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320906, 0.365589, -0.873707,
		-0.328648, -0.822195, -0.464744,
		-0.888262, 0.436281, -0.143697,
		44.181934, 34.576206, 24.043324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613972, 34.107304, 23.451376>,  <44.803719, 34.270809, 24.143911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613972, 34.107304, 23.451376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.392059, 34.426041, 23.547094>,  <44.258911, 34.617283, 23.604527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.392059, 34.426041, 23.547094>,  <44.613972, 34.107304, 23.451376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392059, 34.426041, 23.547094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327400, 0.473503, -0.817682,
		-0.764868, -0.375292, -0.523577,
		-0.554785, 0.796838, 0.239297,
		44.225624, 34.665092, 23.618883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330376, 34.314575, 22.839544>,  <44.613972, 34.107304, 23.451376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330376, 34.314575, 22.839544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.363358, 34.636013, 23.075319>,  <44.383144, 34.828876, 23.216785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.363358, 34.636013, 23.075319>,  <44.330376, 34.314575, 22.839544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363358, 34.636013, 23.075319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378456, 0.521900, -0.764455,
		-0.921940, 0.286108, -0.261093,
		0.082452, 0.803594, 0.589439,
		44.388092, 34.877090, 23.252151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233307, 34.869099, 22.358938>,  <44.330376, 34.314575, 22.839544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233307, 34.869099, 22.358938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.390804, 35.061317, 22.672382>,  <44.485302, 35.176647, 22.860449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.390804, 35.061317, 22.672382>,  <44.233307, 34.869099, 22.358938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390804, 35.061317, 22.672382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350913, 0.709329, -0.611320,
		-0.849604, 0.515681, 0.110663,
		0.393742, 0.480547, 0.783608,
		44.508926, 35.205482, 22.907465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971355, 35.621342, 22.415531>,  <44.233307, 34.869099, 22.358938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971355, 35.621342, 22.415531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335720, 35.604622, 22.579723>,  <44.554340, 35.594589, 22.678238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335720, 35.604622, 22.579723>,  <43.971355, 35.621342, 22.415531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335720, 35.604622, 22.579723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384153, 0.448938, -0.806772,
		-0.150554, 0.892585, 0.425001,
		0.910912, -0.041803, 0.410478,
		44.608994, 35.592079, 22.702868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277855, 36.283348, 22.339481>,  <43.971355, 35.621342, 22.415531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277855, 36.283348, 22.339481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.578056, 36.019005, 22.339449>,  <44.758179, 35.860397, 22.339430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.578056, 36.019005, 22.339449>,  <44.277855, 36.283348, 22.339481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578056, 36.019005, 22.339449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428553, 0.486779, -0.761176,
		0.503071, 0.571234, 0.648546,
		0.750508, -0.660861, -0.000081,
		44.803207, 35.820747, 22.339424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691570, 36.444466, 21.870394>,  <44.277855, 36.283348, 22.339481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691570, 36.444466, 21.870394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.330387, 36.481632, 21.702568>,  <43.113678, 36.503933, 21.601873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.330387, 36.481632, 21.702568>,  <43.691570, 36.444466, 21.870394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330387, 36.481632, 21.702568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417357, 0.042967, 0.907726,
		0.102370, 0.994746, -0.000018,
		-0.902958, 0.092916, -0.419563,
		43.059498, 36.509506, 21.576698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366230, 37.044666, 22.199194>,  <43.691570, 36.444466, 21.870394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366230, 37.044666, 22.199194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089180, 36.793884, 22.056540>,  <42.922951, 36.643414, 21.970947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089180, 36.793884, 22.056540>,  <43.366230, 37.044666, 22.199194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089180, 36.793884, 22.056540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411150, -0.063074, 0.909383,
		-0.592639, 0.776496, -0.214087,
		-0.692629, -0.626958, -0.356636,
		42.881390, 36.605797, 21.949549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824837, 37.299770, 22.444881>,  <43.366230, 37.044666, 22.199194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824837, 37.299770, 22.444881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714180, 36.923618, 22.365726>,  <42.647785, 36.697929, 22.318233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714180, 36.923618, 22.365726>,  <42.824837, 37.299770, 22.444881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714180, 36.923618, 22.365726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588739, 0.003097, 0.808317,
		-0.759511, 0.340118, -0.554494,
		-0.276640, -0.940378, -0.197889,
		42.631187, 36.641506, 22.306360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162861, 37.168953, 22.773556>,  <42.824837, 37.299770, 22.444881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162861, 37.168953, 22.773556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.250881, 36.791862, 22.673279>,  <42.303692, 36.565609, 22.613113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.250881, 36.791862, 22.673279>,  <42.162861, 37.168953, 22.773556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250881, 36.791862, 22.673279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708179, -0.331125, 0.623569,
		-0.670865, 0.040318, -0.740483,
		0.220051, -0.942725, -0.250693,
		42.316898, 36.509045, 22.598070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541222, 36.847122, 22.663942>,  <42.162861, 37.168953, 22.773556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541222, 36.847122, 22.663942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800083, 36.550976, 22.736650>,  <41.955402, 36.373287, 22.780275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800083, 36.550976, 22.736650>,  <41.541222, 36.847122, 22.663942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800083, 36.550976, 22.736650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614003, -0.364864, 0.699911,
		-0.451871, -0.564560, -0.690713,
		0.647158, -0.740369, 0.181769,
		41.994232, 36.328865, 22.791182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105316, 36.236149, 22.678665>,  <41.541222, 36.847122, 22.663942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105316, 36.236149, 22.678665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.432716, 36.141586, 22.888107>,  <41.629158, 36.084850, 23.013773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.432716, 36.141586, 22.888107>,  <41.105316, 36.236149, 22.678665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432716, 36.141586, 22.888107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572061, -0.419303, 0.704934,
		0.052900, -0.876526, -0.478439,
		0.818504, -0.236406, 0.523607,
		41.678268, 36.070663, 23.045189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824245, 35.709854, 22.961132>,  <41.105316, 36.236149, 22.678665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824245, 35.709854, 22.961132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161976, 35.774017, 23.165632>,  <41.364616, 35.812515, 23.288332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161976, 35.774017, 23.165632>,  <40.824245, 35.709854, 22.961132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161976, 35.774017, 23.165632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378960, -0.495774, 0.781407,
		0.378812, -0.853508, -0.357806,
		0.844329, 0.160412, 0.511251,
		41.415276, 35.822140, 23.319008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852573, 35.149857, 23.427046>,  <40.824245, 35.709854, 22.961132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852573, 35.149857, 23.427046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107437, 35.400181, 23.606995>,  <41.260357, 35.550377, 23.714964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107437, 35.400181, 23.606995>,  <40.852573, 35.149857, 23.427046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107437, 35.400181, 23.606995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284096, -0.351896, 0.891885,
		0.716462, -0.696080, -0.046423,
		0.637159, 0.625813, 0.449874,
		41.298584, 35.587925, 23.741957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431358, 34.723572, 23.823969>,  <40.852573, 35.149857, 23.427046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431358, 34.723572, 23.823969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.386982, 35.079945, 24.000116>,  <41.360355, 35.293770, 24.105804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.386982, 35.079945, 24.000116>,  <41.431358, 34.723572, 23.823969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386982, 35.079945, 24.000116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373764, -0.447977, 0.812168,
		0.920865, -0.074492, 0.382699,
		-0.110941, 0.890936, 0.440369,
		41.353699, 35.347225, 24.132227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801826, 34.716251, 24.442097>,  <41.431358, 34.723572, 23.823969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801826, 34.716251, 24.442097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.534164, 35.007580, 24.501120>,  <41.373566, 35.182377, 24.536533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.534164, 35.007580, 24.501120>,  <41.801826, 34.716251, 24.442097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534164, 35.007580, 24.501120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267091, -0.421016, 0.866838,
		0.693461, 0.540641, 0.476254,
		-0.669159, 0.728322, 0.147558,
		41.333416, 35.226078, 24.545387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920551, 34.998249, 25.207314>,  <41.801826, 34.716251, 24.442097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920551, 34.998249, 25.207314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550541, 35.088490, 25.085045>,  <41.328537, 35.142635, 25.011684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550541, 35.088490, 25.085045>,  <41.920551, 34.998249, 25.207314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550541, 35.088490, 25.085045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371625, -0.370212, 0.851374,
		0.078910, 0.901136, 0.426295,
		-0.925023, 0.225604, -0.305671,
		41.273033, 35.156170, 24.993343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674820, 35.182484, 25.793627>,  <41.920551, 34.998249, 25.207314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674820, 35.182484, 25.793627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344952, 35.134132, 25.572609>,  <41.147030, 35.105122, 25.439999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344952, 35.134132, 25.572609>,  <41.674820, 35.182484, 25.793627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344952, 35.134132, 25.572609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474942, -0.382523, 0.792532,
		-0.307161, 0.916005, 0.258046,
		-0.824671, -0.120878, -0.552545,
		41.097549, 35.097870, 25.406845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078724, 35.588409, 26.182035>,  <41.674820, 35.182484, 25.793627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078724, 35.588409, 26.182035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951626, 35.291840, 25.945620>,  <40.875366, 35.113899, 25.803770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951626, 35.291840, 25.945620>,  <41.078724, 35.588409, 26.182035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951626, 35.291840, 25.945620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474725, -0.415192, 0.776049,
		-0.820777, 0.527166, -0.220048,
		-0.317744, -0.741425, -0.591039,
		40.856304, 35.069412, 25.768309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440693, 35.621311, 26.267591>,  <41.078724, 35.588409, 26.182035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440693, 35.621311, 26.267591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502045, 35.246338, 26.142570>,  <40.538857, 35.021355, 26.067558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502045, 35.246338, 26.142570>,  <40.440693, 35.621311, 26.267591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502045, 35.246338, 26.142570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562415, -0.342880, 0.752411,
		-0.812506, 0.060383, -0.579818,
		0.153375, -0.937437, -0.312552,
		40.548058, 34.965107, 26.048805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749722, 35.297466, 26.336409>,  <40.440693, 35.621311, 26.267591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749722, 35.297466, 26.336409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993702, 34.984528, 26.285961>,  <40.140091, 34.796764, 26.255693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993702, 34.984528, 26.285961>,  <39.749722, 35.297466, 26.336409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993702, 34.984528, 26.285961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444435, -0.469488, 0.762928,
		-0.656082, -0.409293, -0.634063,
		0.609946, -0.782343, -0.126119,
		40.176685, 34.749825, 26.248125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243576, 34.668301, 26.317793>,  <39.749722, 35.297466, 26.336409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243576, 34.668301, 26.317793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611858, 34.542469, 26.410172>,  <39.832829, 34.466972, 26.465599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611858, 34.542469, 26.410172>,  <39.243576, 34.668301, 26.317793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611858, 34.542469, 26.410172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387735, -0.670316, 0.632723,
		-0.044232, -0.672100, -0.739138,
		0.920709, -0.314576, 0.230947,
		39.888073, 34.448097, 26.479456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091492, 33.901337, 26.382717>,  <39.243576, 34.668301, 26.317793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091492, 33.901337, 26.382717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428173, 33.986309, 26.581272>,  <39.630184, 34.037292, 26.700405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428173, 33.986309, 26.581272>,  <39.091492, 33.901337, 26.382717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428173, 33.986309, 26.581272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320740, -0.542840, 0.776177,
		0.434347, -0.812524, -0.388776,
		0.841706, 0.212434, 0.496390,
		39.680683, 34.050037, 26.730188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421444, 33.317474, 26.619539>,  <39.091492, 33.901337, 26.382717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421444, 33.317474, 26.619539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580402, 33.583241, 26.872721>,  <39.675777, 33.742699, 27.024630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580402, 33.583241, 26.872721>,  <39.421444, 33.317474, 26.619539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580402, 33.583241, 26.872721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325607, -0.542782, 0.774189,
		0.857938, -0.513754, 0.000638,
		0.397396, 0.664413, 0.632955,
		39.699619, 33.782566, 27.062607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559597, 32.901016, 27.161146>,  <39.421444, 33.317474, 26.619539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559597, 32.901016, 27.161146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.607201, 33.260017, 27.331007>,  <39.635761, 33.475418, 27.432922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.607201, 33.260017, 27.331007>,  <39.559597, 32.901016, 27.161146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607201, 33.260017, 27.331007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040098, -0.422997, 0.905243,
		0.992083, -0.124760, -0.014353,
		0.119010, 0.897501, 0.424651,
		39.642902, 33.529266, 27.458403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067352, 32.850666, 27.721399>,  <39.559597, 32.901016, 27.161146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067352, 32.850666, 27.721399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824219, 33.159657, 27.794960>,  <39.678337, 33.345051, 27.839096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824219, 33.159657, 27.794960>,  <40.067352, 32.850666, 27.721399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824219, 33.159657, 27.794960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277959, -0.423931, 0.861987,
		0.743822, 0.472832, 0.472396,
		-0.607838, 0.772472, 0.183901,
		39.641869, 33.391399, 27.850130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.407284, 31.383083, 33.198009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.300816, 31.766747, 33.159706>,  <41.236935, 31.996944, 33.136723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.300816, 31.766747, 33.159706>,  <41.407284, 31.383083, 33.198009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300816, 31.766747, 33.159706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161282, 0.053627, 0.985450,
		0.950338, 0.277738, 0.140422,
		-0.266167, 0.959159, -0.095758,
		41.220966, 32.054493, 33.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707603, 31.762255, 33.850296>,  <41.407284, 31.383083, 33.198009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707603, 31.762255, 33.850296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398090, 31.970085, 33.705357>,  <41.212383, 32.094784, 33.618393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398090, 31.970085, 33.705357>,  <41.707603, 31.762255, 33.850296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398090, 31.970085, 33.705357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332757, 0.153339, 0.930462,
		0.539009, 0.840551, 0.054242,
		-0.773784, 0.519577, -0.362350,
		41.165955, 32.125957, 33.596653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650379, 32.369938, 34.255531>,  <41.707603, 31.762255, 33.850296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650379, 32.369938, 34.255531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296841, 32.371777, 34.068428>,  <41.084717, 32.372879, 33.956165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296841, 32.371777, 34.068428>,  <41.650379, 32.369938, 34.255531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296841, 32.371777, 34.068428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456936, 0.205560, 0.865421,
		0.100127, 0.978634, -0.179584,
		-0.883846, 0.004593, -0.467755,
		41.031689, 32.373154, 33.928101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370338, 33.094276, 34.309471>,  <41.650379, 32.369938, 34.255531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370338, 33.094276, 34.309471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058376, 32.848721, 34.260662>,  <40.871201, 32.701385, 34.231377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058376, 32.848721, 34.260662>,  <41.370338, 33.094276, 34.309471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058376, 32.848721, 34.260662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526219, 0.537553, 0.658886,
		-0.338889, 0.578079, -0.742280,
		-0.779903, -0.613891, -0.122025,
		40.824406, 32.664555, 34.224056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654678, 33.535519, 34.312717>,  <41.370338, 33.094276, 34.309471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654678, 33.535519, 34.312717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563778, 33.148895, 34.360256>,  <40.509239, 32.916920, 34.388779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563778, 33.148895, 34.360256>,  <40.654678, 33.535519, 34.312717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563778, 33.148895, 34.360256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616153, 0.237214, 0.751056,
		-0.754131, 0.097447, -0.649454,
		-0.227248, -0.966558, 0.118848,
		40.495605, 32.858929, 34.395912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933548, 33.565178, 34.442215>,  <40.654678, 33.535519, 34.312717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933548, 33.565178, 34.442215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014915, 33.203499, 34.592434>,  <40.063736, 32.986492, 34.682568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014915, 33.203499, 34.592434>,  <39.933548, 33.565178, 34.442215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014915, 33.203499, 34.592434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647035, 0.163727, 0.744674,
		-0.734824, -0.394479, -0.551744,
		0.203423, -0.904201, 0.375552,
		40.075943, 32.932240, 34.705101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317421, 33.266602, 34.809929>,  <39.933548, 33.565178, 34.442215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317421, 33.266602, 34.809929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591103, 33.032177, 34.983543>,  <39.755314, 32.891521, 35.087711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591103, 33.032177, 34.983543>,  <39.317421, 33.266602, 34.809929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591103, 33.032177, 34.983543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565813, -0.051098, 0.822949,
		-0.460124, -0.808651, -0.366565,
		0.684209, -0.586066, 0.434034,
		39.796364, 32.856358, 35.113754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978699, 32.751308, 35.219246>,  <39.317421, 33.266602, 34.809929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978699, 32.751308, 35.219246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345432, 32.709641, 35.373417>,  <39.565472, 32.684639, 35.465919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345432, 32.709641, 35.373417>,  <38.978699, 32.751308, 35.219246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345432, 32.709641, 35.373417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390916, -0.037895, 0.919646,
		-0.081193, -0.993837, -0.075465,
		0.916838, -0.104169, 0.385430,
		39.620483, 32.678391, 35.489044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967949, 32.157551, 35.610802>,  <38.978699, 32.751308, 35.219246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967949, 32.157551, 35.610802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243999, 32.405914, 35.759502>,  <39.409630, 32.554932, 35.848721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243999, 32.405914, 35.759502>,  <38.967949, 32.157551, 35.610802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243999, 32.405914, 35.759502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504513, 0.044512, 0.862256,
		0.518833, -0.782620, 0.343974,
		0.690130, 0.620906, 0.371747,
		39.451038, 32.592186, 35.871025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150120, 31.919388, 36.318253>,  <38.967949, 32.157551, 35.610802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150120, 31.919388, 36.318253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263100, 32.302948, 36.307400>,  <39.330887, 32.533085, 36.300888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263100, 32.302948, 36.307400>,  <39.150120, 31.919388, 36.318253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263100, 32.302948, 36.307400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283839, 0.110553, 0.952478,
		0.916329, -0.261327, 0.303398,
		0.282450, 0.958899, -0.027129,
		39.347836, 32.590618, 36.299263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600952, 32.022301, 36.927517>,  <39.150120, 31.919388, 36.318253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600952, 32.022301, 36.927517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456898, 32.378048, 36.814850>,  <39.370464, 32.591496, 36.747250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456898, 32.378048, 36.814850>,  <39.600952, 32.022301, 36.927517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456898, 32.378048, 36.814850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292494, 0.179055, 0.939354,
		0.885861, 0.420679, 0.195649,
		-0.360135, 0.889364, -0.281664,
		39.348858, 32.644855, 36.730350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905148, 32.562824, 37.401825>,  <39.600952, 32.022301, 36.927517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905148, 32.562824, 37.401825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574642, 32.716164, 37.236740>,  <39.376339, 32.808167, 37.137691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574642, 32.716164, 37.236740>,  <39.905148, 32.562824, 37.401825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574642, 32.716164, 37.236740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310678, 0.301014, 0.901593,
		0.469853, 0.873177, -0.129621,
		-0.826267, 0.383345, -0.412709,
		39.326763, 32.831169, 37.112926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885025, 33.116150, 37.778336>,  <39.905148, 32.562824, 37.401825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885025, 33.116150, 37.778336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.541615, 33.021732, 37.596252>,  <39.335567, 32.965080, 37.487003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.541615, 33.021732, 37.596252>,  <39.885025, 33.116150, 37.778336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541615, 33.021732, 37.596252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512284, 0.356165, 0.781480,
		-0.022337, 0.904117, -0.426699,
		-0.858526, -0.236047, -0.455210,
		39.284058, 32.950920, 37.459690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334629, 33.416359, 38.274872>,  <39.885025, 33.116150, 37.778336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334629, 33.416359, 38.274872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141541, 33.068180, 38.313446>,  <40.025688, 32.859272, 38.336590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141541, 33.068180, 38.313446>,  <40.334629, 33.416359, 38.274872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141541, 33.068180, 38.313446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643950, -0.427415, -0.634543,
		0.593553, -0.244210, 0.766848,
		-0.482724, -0.870447, 0.096434,
		39.996723, 32.807045, 38.342377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671017, 33.426762, 38.926220>,  <40.334629, 33.416359, 38.274872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671017, 33.426762, 38.926220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850803, 33.697575, 39.159321>,  <40.958675, 33.860062, 39.299183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850803, 33.697575, 39.159321>,  <40.671017, 33.426762, 38.926220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850803, 33.697575, 39.159321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281571, 0.726486, -0.626846,
		-0.847759, 0.117661, 0.517166,
		0.449468, 0.677034, 0.582755,
		40.985645, 33.900684, 39.334148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190048, 33.836655, 38.981930>,  <40.671017, 33.426762, 38.926220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190048, 33.836655, 38.981930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510227, 34.055122, 39.080708>,  <40.702335, 34.186203, 39.139973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510227, 34.055122, 39.080708>,  <40.190048, 33.836655, 38.981930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510227, 34.055122, 39.080708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247988, 0.676827, -0.693114,
		-0.545697, 0.493562, 0.677208,
		0.800447, 0.546170, 0.246945,
		40.750362, 34.218975, 39.154793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979160, 34.453831, 38.883362>,  <40.190048, 33.836655, 38.981930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979160, 34.453831, 38.883362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375511, 34.504723, 38.865562>,  <40.613319, 34.535259, 38.854885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375511, 34.504723, 38.865562>,  <39.979160, 34.453831, 38.883362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375511, 34.504723, 38.865562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119615, 0.677870, -0.725386,
		-0.062130, 0.724088, 0.686903,
		0.990874, 0.127232, -0.044495,
		40.672775, 34.542892, 38.852215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169811, 35.252239, 38.823971>,  <39.979160, 34.453831, 38.883362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169811, 35.252239, 38.823971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.453915, 35.016365, 38.670189>,  <40.624374, 34.874840, 38.577919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.453915, 35.016365, 38.670189>,  <40.169811, 35.252239, 38.823971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453915, 35.016365, 38.670189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048663, 0.585966, -0.808873,
		0.702260, 0.555797, 0.444882,
		0.710255, -0.589688, -0.384454,
		40.666992, 34.839458, 38.554852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626003, 35.690628, 38.572460>,  <40.169811, 35.252239, 38.823971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626003, 35.690628, 38.572460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745636, 35.364166, 38.374695>,  <40.817417, 35.168289, 38.256035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745636, 35.364166, 38.374695>,  <40.626003, 35.690628, 38.572460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745636, 35.364166, 38.374695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252050, 0.567294, -0.783995,
		0.920336, 0.109866, 0.375381,
		0.299086, -0.816154, -0.494410,
		40.835361, 35.119320, 38.226372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321526, 35.835808, 38.393219>,  <40.626003, 35.690628, 38.572460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321526, 35.835808, 38.393219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188076, 35.552956, 38.143848>,  <41.108006, 35.383244, 37.994225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188076, 35.552956, 38.143848>,  <41.321526, 35.835808, 38.393219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188076, 35.552956, 38.143848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300204, 0.547195, -0.781317,
		0.893628, -0.447822, 0.029725,
		-0.333625, -0.707130, -0.623427,
		41.087990, 35.340816, 37.956821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788139, 35.743874, 37.892551>,  <41.321526, 35.835808, 38.393219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788139, 35.743874, 37.892551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475178, 35.547321, 37.739510>,  <41.287399, 35.429390, 37.647686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475178, 35.547321, 37.739510>,  <41.788139, 35.743874, 37.892551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475178, 35.547321, 37.739510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079861, 0.530122, -0.844153,
		0.617626, -0.691026, -0.375529,
		-0.782407, -0.491380, -0.382603,
		41.240456, 35.399906, 37.624729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120087, 35.500420, 37.234486>,  <41.788139, 35.743874, 37.892551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120087, 35.500420, 37.234486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721321, 35.495399, 37.203491>,  <41.482063, 35.492390, 37.184895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721321, 35.495399, 37.203491>,  <42.120087, 35.500420, 37.234486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721321, 35.495399, 37.203491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072655, 0.226080, -0.971395,
		0.029705, -0.974028, -0.224471,
		-0.996914, -0.012546, -0.077484,
		41.422245, 35.491634, 37.180244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016232, 35.200665, 36.578972>,  <42.120087, 35.500420, 37.234486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016232, 35.200665, 36.578972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670288, 35.384647, 36.659428>,  <41.462723, 35.495037, 36.707703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670288, 35.384647, 36.659428>,  <42.016232, 35.200665, 36.578972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670288, 35.384647, 36.659428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087401, 0.256589, -0.962561,
		-0.494350, -0.850058, -0.181712,
		-0.864858, 0.459960, 0.201141,
		41.410831, 35.522636, 36.719769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498833, 34.858337, 36.131950>,  <42.016232, 35.200665, 36.578972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498833, 34.858337, 36.131950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362331, 35.217056, 36.244598>,  <41.280430, 35.432285, 36.312187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362331, 35.217056, 36.244598>,  <41.498833, 34.858337, 36.131950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362331, 35.217056, 36.244598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141887, 0.247024, -0.958565,
		-0.929203, -0.367067, 0.042947,
		-0.341249, 0.896795, 0.281617,
		41.259956, 35.486095, 36.329082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900166, 34.890755, 35.845463>,  <41.498833, 34.858337, 36.131950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900166, 34.890755, 35.845463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042572, 35.258858, 35.910419>,  <41.128014, 35.479721, 35.949394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042572, 35.258858, 35.910419>,  <40.900166, 34.890755, 35.845463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042572, 35.258858, 35.910419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183805, 0.239346, -0.953378,
		-0.916227, 0.309565, 0.254359,
		0.356013, 0.920262, 0.162396,
		41.149376, 35.534935, 35.959137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490879, 35.232327, 35.346863>,  <40.900166, 34.890755, 35.845463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490879, 35.232327, 35.346863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.761082, 35.508621, 35.450066>,  <40.923203, 35.674400, 35.511986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.761082, 35.508621, 35.450066>,  <40.490879, 35.232327, 35.346863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761082, 35.508621, 35.450066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103574, 0.435329, -0.894294,
		-0.730042, 0.577379, 0.365611,
		0.675508, 0.690740, 0.258007,
		40.963734, 35.715843, 35.527466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256500, 35.868969, 35.016125>,  <40.490879, 35.232327, 35.346863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256500, 35.868969, 35.016125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.652344, 35.894455, 35.067677>,  <40.889851, 35.909748, 35.098606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.652344, 35.894455, 35.067677>,  <40.256500, 35.868969, 35.016125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652344, 35.894455, 35.067677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109667, 0.245110, -0.963273,
		-0.092965, 0.967399, 0.235576,
		0.989611, 0.063716, 0.128879,
		40.949226, 35.913570, 35.106339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509815, 36.566051, 34.793858>,  <40.256500, 35.868969, 35.016125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509815, 36.566051, 34.793858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.818638, 36.312416, 34.776562>,  <41.003929, 36.160236, 34.766182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.818638, 36.312416, 34.776562>,  <40.509815, 36.566051, 34.793858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818638, 36.312416, 34.776562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206660, 0.314804, -0.926385,
		0.601020, 0.706282, 0.374086,
		0.772053, -0.634085, -0.043243,
		41.050255, 36.122192, 34.763588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286018, 37.228413, 34.893436>,  <40.509815, 36.566051, 34.793858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286018, 37.228413, 34.893436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952274, 37.281593, 34.679459>,  <39.752029, 37.313503, 34.551071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952274, 37.281593, 34.679459>,  <40.286018, 37.228413, 34.893436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952274, 37.281593, 34.679459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537846, -0.408857, 0.737264,
		-0.120692, 0.902861, 0.412644,
		-0.834359, 0.132956, -0.534946,
		39.701965, 37.321480, 34.518974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842476, 37.470490, 35.363388>,  <40.286018, 37.228413, 34.893436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842476, 37.470490, 35.363388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.599949, 37.356522, 35.066418>,  <39.454433, 37.288139, 34.888237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.599949, 37.356522, 35.066418>,  <39.842476, 37.470490, 35.363388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599949, 37.356522, 35.066418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660609, -0.339261, 0.669700,
		-0.442686, 0.896506, 0.017481,
		-0.606321, -0.284919, -0.742426,
		39.418053, 37.271046, 34.843689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198547, 37.600872, 35.716541>,  <39.842476, 37.470490, 35.363388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198547, 37.600872, 35.716541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107067, 37.354511, 35.414982>,  <39.052177, 37.206696, 35.234047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107067, 37.354511, 35.414982>,  <39.198547, 37.600872, 35.716541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107067, 37.354511, 35.414982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707559, -0.426728, 0.563261,
		-0.668622, 0.662246, -0.338193,
		-0.228701, -0.615900, -0.753899,
		39.038456, 37.169743, 35.188812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514027, 37.713303, 35.644947>,  <39.198547, 37.600872, 35.716541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514027, 37.713303, 35.644947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596344, 37.357330, 35.482136>,  <38.645737, 37.143745, 35.384449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596344, 37.357330, 35.482136>,  <38.514027, 37.713303, 35.644947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596344, 37.357330, 35.482136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737039, -0.414568, 0.533766,
		-0.643755, 0.190146, -0.741231,
		0.205798, -0.889932, -0.407025,
		38.658085, 37.090351, 35.360027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903759, 37.433723, 35.258011>,  <38.514027, 37.713303, 35.644947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903759, 37.433723, 35.258011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123848, 37.118237, 35.367683>,  <38.255901, 36.928944, 35.433487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123848, 37.118237, 35.367683>,  <37.903759, 37.433723, 35.258011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123848, 37.118237, 35.367683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778371, -0.365583, 0.510380,
		-0.302307, -0.494243, -0.815067,
		0.550227, -0.788716, 0.274187,
		38.288918, 36.881622, 35.449940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412334, 36.871632, 35.256001>,  <37.903759, 37.433723, 35.258011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412334, 36.871632, 35.256001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722549, 36.746666, 35.475433>,  <37.908676, 36.671688, 35.607094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722549, 36.746666, 35.475433>,  <37.412334, 36.871632, 35.256001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722549, 36.746666, 35.475433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629663, -0.445421, 0.636494,
		0.045504, -0.839047, -0.542153,
		0.775535, -0.312411, 0.548584,
		37.955212, 36.652943, 35.640007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222618, 36.112942, 35.503616>,  <37.412334, 36.871632, 35.256001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222618, 36.112942, 35.503616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489689, 36.297726, 35.737125>,  <37.649933, 36.408596, 35.877232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489689, 36.297726, 35.737125>,  <37.222618, 36.112942, 35.503616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489689, 36.297726, 35.737125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567034, -0.192522, 0.800880,
		0.482364, -0.865753, 0.133404,
		0.667681, 0.461960, 0.583777,
		37.689995, 36.436314, 35.912258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334599, 35.576771, 36.095543>,  <37.222618, 36.112942, 35.503616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334599, 35.576771, 36.095543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.450130, 35.932240, 36.238003>,  <37.519451, 36.145519, 36.323479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.450130, 35.932240, 36.238003>,  <37.334599, 35.576771, 36.095543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450130, 35.932240, 36.238003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421939, -0.215770, 0.880574,
		0.859386, -0.404612, 0.312643,
		0.288832, 0.888669, 0.356151,
		37.536781, 36.198841, 36.344849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583702, 35.394672, 36.710934>,  <37.334599, 35.576771, 36.095543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583702, 35.394672, 36.710934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514755, 35.787319, 36.743736>,  <37.473385, 36.022907, 36.763416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514755, 35.787319, 36.743736>,  <37.583702, 35.394672, 36.710934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514755, 35.787319, 36.743736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394298, -0.145048, 0.907463,
		0.902672, 0.124086, 0.412050,
		-0.172370, 0.981613, 0.082004,
		37.463043, 36.081802, 36.768337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781460, 35.573559, 37.406807>,  <37.583702, 35.394672, 36.710934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781460, 35.573559, 37.406807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545841, 35.876801, 37.294880>,  <37.404469, 36.058746, 37.227722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545841, 35.876801, 37.294880>,  <37.781460, 35.573559, 37.406807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545841, 35.876801, 37.294880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461446, -0.031292, 0.886616,
		0.663393, 0.651380, 0.368258,
		-0.589047, 0.758106, -0.279818,
		37.369125, 36.104233, 37.210934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833984, 36.087788, 37.853615>,  <37.781460, 35.573559, 37.406807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833984, 36.087788, 37.853615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.469818, 36.171795, 37.711044>,  <37.251320, 36.222198, 37.625504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.469818, 36.171795, 37.711044>,  <37.833984, 36.087788, 37.853615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469818, 36.171795, 37.711044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357787, 0.032819, 0.933226,
		0.207697, 0.977146, 0.045264,
		-0.910412, 0.210023, -0.356427,
		37.196693, 36.234802, 37.604115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554863, 36.716175, 38.224426>,  <37.833984, 36.087788, 37.853615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554863, 36.716175, 38.224426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278538, 36.458626, 38.092854>,  <37.112743, 36.304096, 38.013908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278538, 36.458626, 38.092854>,  <37.554863, 36.716175, 38.224426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278538, 36.458626, 38.092854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522124, 0.129537, 0.842975,
		-0.500162, 0.754085, -0.425669,
		-0.690815, -0.643875, -0.328936,
		37.071293, 36.265465, 37.994171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.436905, 39.825741, 31.695425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267044, 39.514507, 31.510273>,  <41.165127, 39.327766, 31.399181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267044, 39.514507, 31.510273>,  <41.436905, 39.825741, 31.695425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267044, 39.514507, 31.510273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412348, -0.288939, 0.863993,
		-0.806001, 0.557765, -0.198142,
		-0.424654, -0.778082, -0.462878,
		41.139648, 39.281082, 31.371410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721642, 39.899605, 31.824509>,  <41.436905, 39.825741, 31.695425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721642, 39.899605, 31.824509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797596, 39.511368, 31.765331>,  <40.843170, 39.278423, 31.729824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797596, 39.511368, 31.765331>,  <40.721642, 39.899605, 31.824509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797596, 39.511368, 31.765331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407003, -0.214944, 0.887777,
		-0.893472, -0.108362, -0.435850,
		0.189885, -0.970596, -0.147943,
		40.854561, 39.220188, 31.720949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068821, 39.542847, 32.050228>,  <40.721642, 39.899605, 31.824509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068821, 39.542847, 32.050228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327557, 39.237850, 32.055977>,  <40.482800, 39.054852, 32.059425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327557, 39.237850, 32.055977>,  <40.068821, 39.542847, 32.050228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327557, 39.237850, 32.055977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475424, -0.388432, 0.789362,
		-0.596297, -0.517426, -0.613760,
		0.646841, -0.762490, 0.014376,
		40.521610, 39.009102, 32.060291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595596, 38.979656, 32.220524>,  <40.068821, 39.542847, 32.050228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595596, 38.979656, 32.220524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964111, 38.844337, 32.297249>,  <40.185219, 38.763145, 32.343285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964111, 38.844337, 32.297249>,  <39.595596, 38.979656, 32.220524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964111, 38.844337, 32.297249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368508, -0.601852, 0.708502,
		-0.124241, -0.723416, -0.679142,
		0.921285, -0.338294, 0.191810,
		40.240498, 38.742847, 32.354794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563416, 38.324677, 32.054413>,  <39.595596, 38.979656, 32.220524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563416, 38.324677, 32.054413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872410, 38.363735, 32.305405>,  <40.057808, 38.387173, 32.455997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872410, 38.363735, 32.305405>,  <39.563416, 38.324677, 32.054413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872410, 38.363735, 32.305405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455260, -0.603714, 0.654422,
		0.442721, -0.791198, -0.421905,
		0.772487, 0.097650, 0.627477,
		40.104156, 38.393028, 32.493649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746941, 37.681778, 32.312103>,  <39.563416, 38.324677, 32.054413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746941, 37.681778, 32.312103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902962, 37.920017, 32.592995>,  <39.996574, 38.062962, 32.761528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902962, 37.920017, 32.592995>,  <39.746941, 37.681778, 32.312103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902962, 37.920017, 32.592995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407211, -0.572424, 0.711695,
		0.825857, -0.563550, 0.019262,
		0.390049, 0.595603, 0.702224,
		40.019978, 38.098698, 32.803661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804420, 37.248920, 32.884937>,  <39.746941, 37.681778, 32.312103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804420, 37.248920, 32.884937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874271, 37.592068, 33.078251>,  <39.916183, 37.797955, 33.194241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874271, 37.592068, 33.078251>,  <39.804420, 37.248920, 32.884937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874271, 37.592068, 33.078251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168252, -0.457609, 0.873089,
		0.970152, -0.233782, 0.064425,
		0.174631, 0.857869, 0.483285,
		39.926662, 37.849430, 33.223236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287270, 37.070671, 33.327682>,  <39.804420, 37.248920, 32.884937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287270, 37.070671, 33.327682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115948, 37.401440, 33.473427>,  <40.013153, 37.599899, 33.560875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115948, 37.401440, 33.473427>,  <40.287270, 37.070671, 33.327682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115948, 37.401440, 33.473427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215024, -0.484903, 0.847723,
		0.877679, 0.284736, 0.385494,
		-0.428304, 0.826919, 0.364364,
		39.987457, 37.649517, 33.582737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558910, 37.111851, 34.037045>,  <40.287270, 37.070671, 33.327682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558910, 37.111851, 34.037045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202618, 37.293308, 34.025745>,  <39.988842, 37.402184, 34.018967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202618, 37.293308, 34.025745>,  <40.558910, 37.111851, 34.037045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202618, 37.293308, 34.025745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322075, -0.586094, 0.743479,
		0.320719, 0.671340, 0.668162,
		-0.890734, 0.453647, -0.028251,
		39.935398, 37.429401, 34.017269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019447, 37.041103, 34.475231>,  <40.558910, 37.111851, 34.037045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019447, 37.041103, 34.475231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159840, 36.669334, 34.429642>,  <41.244076, 36.446274, 34.402287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159840, 36.669334, 34.429642>,  <41.019447, 37.041103, 34.475231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159840, 36.669334, 34.429642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367609, 0.248711, -0.896106,
		0.861206, 0.272620, 0.428956,
		0.350983, -0.929420, -0.113974,
		41.265133, 36.390507, 34.395451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454689, 37.178616, 33.894875>,  <41.019447, 37.041103, 34.475231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454689, 37.178616, 33.894875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457455, 36.778996, 33.912094>,  <41.459114, 36.539223, 33.922424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457455, 36.778996, 33.912094>,  <41.454689, 37.178616, 33.894875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457455, 36.778996, 33.912094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386881, -0.037024, -0.921386,
		0.922104, 0.023024, 0.386257,
		0.006913, -0.999049, 0.043048,
		41.459530, 36.479282, 33.925007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180668, 36.934967, 33.796658>,  <41.454689, 37.178616, 33.894875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180668, 36.934967, 33.796658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900787, 36.674335, 33.679451>,  <41.732861, 36.517956, 33.609127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900787, 36.674335, 33.679451>,  <42.180668, 36.934967, 33.796658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900787, 36.674335, 33.679451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485893, -0.133328, -0.863789,
		0.523761, -0.746770, 0.409889,
		-0.699702, -0.651581, -0.293018,
		41.690876, 36.478863, 33.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501320, 36.424122, 33.384640>,  <42.180668, 36.934967, 33.796658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501320, 36.424122, 33.384640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116158, 36.375690, 33.288174>,  <41.885059, 36.346630, 33.230293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116158, 36.375690, 33.288174>,  <42.501320, 36.424122, 33.384640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116158, 36.375690, 33.288174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262372, -0.211099, -0.941593,
		0.063098, -0.969937, 0.235035,
		-0.962902, -0.121079, -0.241164,
		41.827286, 36.339367, 33.215824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454281, 35.755962, 33.037743>,  <42.501320, 36.424122, 33.384640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454281, 35.755962, 33.037743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139534, 35.976025, 32.925907>,  <41.950687, 36.108063, 32.858807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139534, 35.976025, 32.925907>,  <42.454281, 35.755962, 33.037743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139534, 35.976025, 32.925907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166048, -0.247600, -0.954527,
		-0.594365, -0.797510, 0.103476,
		-0.786866, 0.550156, -0.279590,
		41.903473, 36.141071, 32.842030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294369, 35.398251, 32.484196>,  <42.454281, 35.755962, 33.037743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294369, 35.398251, 32.484196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088078, 35.735817, 32.425079>,  <41.964302, 35.938354, 32.389610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088078, 35.735817, 32.425079>,  <42.294369, 35.398251, 32.484196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088078, 35.735817, 32.425079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035686, -0.151194, -0.987860,
		-0.856012, -0.514736, 0.047858,
		-0.515723, 0.843912, -0.147793,
		41.933361, 35.988991, 32.380741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645283, 35.205345, 32.106117>,  <42.294369, 35.398251, 32.484196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645283, 35.205345, 32.106117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750603, 35.584446, 32.034077>,  <41.813797, 35.811905, 31.990852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750603, 35.584446, 32.034077>,  <41.645283, 35.205345, 32.106117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750603, 35.584446, 32.034077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171653, -0.229735, -0.957996,
		-0.949319, 0.221330, -0.223175,
		0.263304, 0.947752, -0.180100,
		41.829594, 35.868771, 31.980047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657883, 35.211330, 31.362875>,  <41.645283, 35.205345, 32.106117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657883, 35.211330, 31.362875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829876, 35.565258, 31.434660>,  <41.933071, 35.777615, 31.477732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829876, 35.565258, 31.434660>,  <41.657883, 35.211330, 31.362875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829876, 35.565258, 31.434660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275740, 0.060576, -0.959322,
		-0.859697, 0.461980, -0.217933,
		0.429986, 0.884819, 0.179464,
		41.958870, 35.830704, 31.488499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418457, 35.537701, 30.792332>,  <41.657883, 35.211330, 31.362875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418457, 35.537701, 30.792332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763935, 35.695107, 30.918295>,  <41.971222, 35.789551, 30.993874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763935, 35.695107, 30.918295>,  <41.418457, 35.537701, 30.792332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763935, 35.695107, 30.918295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357874, -0.038876, -0.932960,
		-0.354894, 0.918495, -0.174407,
		0.863699, 0.393518, 0.314909,
		42.023045, 35.813164, 31.012768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549915, 35.965969, 30.356155>,  <41.418457, 35.537701, 30.792332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549915, 35.965969, 30.356155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914871, 35.961433, 30.519823>,  <42.133846, 35.958714, 30.618023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914871, 35.961433, 30.519823>,  <41.549915, 35.965969, 30.356155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914871, 35.961433, 30.519823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409297, 0.037179, -0.911643,
		-0.004879, 0.999244, 0.038561,
		0.912388, -0.011335, 0.409169,
		42.188587, 35.958035, 30.642574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950279, 36.471153, 29.970726>,  <41.549915, 35.965969, 30.356155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950279, 36.471153, 29.970726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221931, 36.221909, 30.125910>,  <42.384922, 36.072361, 30.219019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221931, 36.221909, 30.125910>,  <41.950279, 36.471153, 29.970726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221931, 36.221909, 30.125910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548866, 0.080163, -0.832057,
		0.487363, 0.778015, 0.396446,
		0.679134, -0.623110, 0.387958,
		42.425671, 36.034977, 30.242296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571941, 36.774593, 29.826370>,  <41.950279, 36.471153, 29.970726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571941, 36.774593, 29.826370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649879, 36.391121, 29.909275>,  <42.696644, 36.161037, 29.959017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649879, 36.391121, 29.909275>,  <42.571941, 36.774593, 29.826370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649879, 36.391121, 29.909275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644443, -0.034168, -0.763889,
		0.739411, 0.282408, 0.611161,
		0.194846, -0.958686, 0.207260,
		42.708332, 36.103516, 29.971453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299458, 36.779881, 29.649048>,  <42.571941, 36.774593, 29.826370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299458, 36.779881, 29.649048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149319, 36.409252, 29.639349>,  <43.059235, 36.186874, 29.633530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149319, 36.409252, 29.639349>,  <43.299458, 36.779881, 29.649048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149319, 36.409252, 29.639349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654572, -0.246457, -0.714699,
		0.656241, -0.284129, 0.699012,
		-0.375343, -0.926569, -0.024248,
		43.036716, 36.131283, 29.632074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898167, 36.282982, 29.599239>,  <43.299458, 36.779881, 29.649048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898167, 36.282982, 29.599239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585636, 36.081566, 29.451735>,  <43.398117, 35.960716, 29.363232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585636, 36.081566, 29.451735>,  <43.898167, 36.282982, 29.599239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585636, 36.081566, 29.451735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551491, -0.280365, -0.785655,
		0.292218, -0.817219, 0.496751,
		-0.781324, -0.503536, -0.368761,
		43.351238, 35.930504, 29.341106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.362659, 36.403900, 26.138412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667065, 36.400517, 26.397884>,  <37.849709, 36.398487, 26.553568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667065, 36.400517, 26.397884>,  <37.362659, 36.403900, 26.138412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667065, 36.400517, 26.397884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575305, -0.470898, 0.668790,
		0.299802, -0.882147, -0.363229,
		0.761015, -0.008462, 0.648680,
		37.895370, 36.397980, 26.592487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319038, 35.677593, 26.569494>,  <37.362659, 36.403900, 26.138412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319038, 35.677593, 26.569494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556431, 35.935387, 26.762335>,  <37.698864, 36.090065, 26.878038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556431, 35.935387, 26.762335>,  <37.319038, 35.677593, 26.569494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556431, 35.935387, 26.762335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443037, -0.238482, 0.864202,
		0.671938, -0.726473, 0.143998,
		0.593478, 0.644486, 0.482100,
		37.734474, 36.128731, 26.906965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378456, 35.307850, 27.179565>,  <37.319038, 35.677593, 26.569494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378456, 35.307850, 27.179565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527473, 35.666451, 27.275471>,  <37.616886, 35.881611, 27.333014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527473, 35.666451, 27.275471>,  <37.378456, 35.307850, 27.179565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527473, 35.666451, 27.275471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273546, -0.140795, 0.951498,
		0.886781, -0.420064, 0.192783,
		0.372547, 0.896506, 0.239761,
		37.639236, 35.935402, 27.347399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888748, 35.070553, 27.612953>,  <37.378456, 35.307850, 27.179565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888748, 35.070553, 27.612953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794250, 35.444035, 27.720572>,  <37.737553, 35.668125, 27.785143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794250, 35.444035, 27.720572>,  <37.888748, 35.070553, 27.612953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794250, 35.444035, 27.720572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181745, -0.314454, 0.931712,
		0.954547, 0.171211, 0.243983,
		-0.236240, 0.933706, 0.269045,
		37.723377, 35.724148, 27.801285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990913, 35.051189, 28.296524>,  <37.888748, 35.070553, 27.612953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990913, 35.051189, 28.296524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789337, 35.395870, 28.272802>,  <37.668392, 35.602676, 28.258570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789337, 35.395870, 28.272802>,  <37.990913, 35.051189, 28.296524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789337, 35.395870, 28.272802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321582, -0.123457, 0.938799,
		0.801641, 0.492171, 0.339322,
		-0.503942, 0.861699, -0.059305,
		37.638153, 35.654381, 28.255011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260433, 35.503834, 28.855783>,  <37.990913, 35.051189, 28.296524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260433, 35.503834, 28.855783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883282, 35.593197, 28.756937>,  <37.656990, 35.646816, 28.697630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883282, 35.593197, 28.756937>,  <38.260433, 35.503834, 28.855783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883282, 35.593197, 28.756937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259078, -0.025445, 0.965521,
		0.209420, 0.974392, 0.081872,
		-0.942879, 0.223411, -0.247115,
		37.600418, 35.660221, 28.682802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938766, 35.925835, 29.377506>,  <38.260433, 35.503834, 28.855783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938766, 35.925835, 29.377506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605305, 35.800411, 29.195648>,  <37.405228, 35.725159, 29.086533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605305, 35.800411, 29.195648>,  <37.938766, 35.925835, 29.377506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605305, 35.800411, 29.195648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474253, -0.015441, 0.880253,
		-0.283029, 0.949444, -0.135832,
		-0.833654, -0.313556, -0.454647,
		37.355209, 35.706345, 29.059254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497967, 36.301319, 29.716673>,  <37.938766, 35.925835, 29.377506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497967, 36.301319, 29.716673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.267376, 36.018063, 29.553598>,  <37.129021, 35.848110, 29.455753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.267376, 36.018063, 29.553598>,  <37.497967, 36.301319, 29.716673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267376, 36.018063, 29.553598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599286, 0.027251, 0.800071,
		-0.555452, 0.705546, -0.440089,
		-0.576479, -0.708140, -0.407687,
		37.094433, 35.805622, 29.431292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794384, 36.501308, 29.868067>,  <37.497967, 36.301319, 29.716673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794384, 36.501308, 29.868067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773991, 36.111427, 29.781021>,  <36.761757, 35.877499, 29.728794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773991, 36.111427, 29.781021>,  <36.794384, 36.501308, 29.868067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773991, 36.111427, 29.781021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605295, -0.143161, 0.783021,
		-0.794367, 0.171640, -0.582685,
		-0.050980, -0.974703, -0.217615,
		36.758698, 35.819016, 29.715736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079910, 36.291565, 29.882566>,  <36.794384, 36.501308, 29.868067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079910, 36.291565, 29.882566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308678, 35.971260, 29.953777>,  <36.445938, 35.779079, 29.996504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308678, 35.971260, 29.953777>,  <36.079910, 36.291565, 29.882566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308678, 35.971260, 29.953777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495572, -0.164334, 0.852879,
		-0.653694, -0.576005, -0.490819,
		0.571920, -0.800758, 0.178028,
		36.480255, 35.731033, 30.007185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520115, 35.821899, 30.092773>,  <36.079910, 36.291565, 29.882566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520115, 35.821899, 30.092773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874405, 35.668156, 30.196896>,  <36.086979, 35.575909, 30.259369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874405, 35.668156, 30.196896>,  <35.520115, 35.821899, 30.092773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874405, 35.668156, 30.196896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409211, -0.381715, 0.828758,
		-0.219177, -0.840572, -0.495378,
		0.885724, -0.384359, 0.260308,
		36.140121, 35.552849, 30.274988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448483, 35.088093, 30.227110>,  <35.520115, 35.821899, 30.092773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448483, 35.088093, 30.227110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.797306, 35.170761, 30.404558>,  <36.006599, 35.220360, 30.511026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.797306, 35.170761, 30.404558>,  <35.448483, 35.088093, 30.227110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797306, 35.170761, 30.404558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324501, -0.434362, 0.840255,
		0.366346, -0.876708, -0.311726,
		0.872061, 0.206669, 0.443620,
		36.058926, 35.232761, 30.537643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717907, 34.457352, 30.460836>,  <35.448483, 35.088093, 30.227110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717907, 34.457352, 30.460836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.842987, 34.762379, 30.687361>,  <35.918034, 34.945396, 30.823275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.842987, 34.762379, 30.687361>,  <35.717907, 34.457352, 30.460836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842987, 34.762379, 30.687361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306448, -0.483334, 0.820047,
		0.899060, -0.429974, 0.082548,
		0.312701, 0.762568, 0.566311,
		35.936798, 34.991150, 30.857254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134903, 34.252541, 31.105982>,  <35.717907, 34.457352, 30.460836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134903, 34.252541, 31.105982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.058952, 34.625118, 31.230143>,  <36.013382, 34.848667, 31.304640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.058952, 34.625118, 31.230143>,  <36.134903, 34.252541, 31.105982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058952, 34.625118, 31.230143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140001, -0.338610, 0.930453,
		0.971775, 0.133216, 0.194699,
		-0.189878, 0.931449, 0.310402,
		36.001987, 34.904552, 31.323263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895363, 33.968147, 31.036596>,  <36.134903, 34.252541, 31.105982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895363, 33.968147, 31.036596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118000, 33.648361, 31.126982>,  <37.251583, 33.456490, 31.181213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118000, 33.648361, 31.126982>,  <36.895363, 33.968147, 31.036596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118000, 33.648361, 31.126982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572514, 0.172007, -0.801649,
		0.602025, 0.575556, 0.553444,
		0.556590, -0.799468, 0.225961,
		37.284977, 33.408520, 31.194771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663010, 34.185410, 30.980171>,  <36.895363, 33.968147, 31.036596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663010, 34.185410, 30.980171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614361, 33.790459, 30.939569>,  <37.585171, 33.553490, 30.915209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614361, 33.790459, 30.939569>,  <37.663010, 34.185410, 30.980171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614361, 33.790459, 30.939569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546463, 0.018763, -0.837273,
		0.828605, -0.157299, 0.537281,
		-0.121621, -0.987373, -0.101505,
		37.577873, 33.494247, 30.909119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312099, 33.826813, 30.923199>,  <37.663010, 34.185410, 30.980171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312099, 33.826813, 30.923199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056419, 33.570572, 30.752998>,  <37.903011, 33.416828, 30.650879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056419, 33.570572, 30.752998>,  <38.312099, 33.826813, 30.923199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056419, 33.570572, 30.752998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539439, 0.020859, -0.841766,
		0.548115, -0.767588, 0.332234,
		-0.639199, -0.640605, -0.425500,
		37.864658, 33.378391, 30.625349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754730, 33.241703, 30.629787>,  <38.312099, 33.826813, 30.923199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754730, 33.241703, 30.629787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407799, 33.255707, 30.431189>,  <38.199638, 33.264111, 30.312029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407799, 33.255707, 30.431189>,  <38.754730, 33.241703, 30.629787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407799, 33.255707, 30.431189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486984, -0.146460, -0.861044,
		-0.102859, -0.988597, 0.109982,
		-0.867334, 0.035006, -0.496495,
		38.147598, 33.266209, 30.282240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775436, 32.568253, 30.283863>,  <38.754730, 33.241703, 30.629787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775436, 32.568253, 30.283863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524185, 32.837528, 30.127771>,  <38.373436, 32.999092, 30.034117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524185, 32.837528, 30.127771>,  <38.775436, 32.568253, 30.283863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524185, 32.837528, 30.127771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388402, -0.163309, -0.906904,
		-0.674243, -0.721215, -0.158889,
		-0.628125, 0.673186, -0.390231,
		38.335747, 33.039482, 30.010702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636784, 32.266781, 29.617090>,  <38.775436, 32.568253, 30.283863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636784, 32.266781, 29.617090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507919, 32.642731, 29.571745>,  <38.430603, 32.868301, 29.544538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507919, 32.642731, 29.571745>,  <38.636784, 32.266781, 29.617090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507919, 32.642731, 29.571745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456162, 0.049189, -0.888536,
		-0.829536, -0.337960, -0.444582,
		-0.322158, 0.939874, -0.113361,
		38.411270, 32.924694, 29.537737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318352, 32.279285, 28.975039>,  <38.636784, 32.266781, 29.617090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318352, 32.279285, 28.975039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430748, 32.652729, 29.063967>,  <38.498184, 32.876793, 29.117323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430748, 32.652729, 29.063967>,  <38.318352, 32.279285, 28.975039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430748, 32.652729, 29.063967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352012, 0.115246, -0.928873,
		-0.892823, 0.339261, -0.296258,
		0.280988, 0.933606, 0.222319,
		38.515045, 32.932812, 29.130663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335674, 32.640270, 28.337215>,  <38.318352, 32.279285, 28.975039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335674, 32.640270, 28.337215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526154, 32.911587, 28.561058>,  <38.640442, 33.074375, 28.695364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526154, 32.911587, 28.561058>,  <38.335674, 32.640270, 28.337215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526154, 32.911587, 28.561058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525891, 0.290366, -0.799454,
		-0.704754, 0.674987, -0.218437,
		0.476195, 0.678292, 0.559606,
		38.669010, 33.115074, 28.728939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165356, 33.384830, 28.078398>,  <38.335674, 32.640270, 28.337215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165356, 33.384830, 28.078398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.517784, 33.385105, 28.267588>,  <38.729240, 33.385269, 28.381102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.517784, 33.385105, 28.267588>,  <38.165356, 33.384830, 28.078398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517784, 33.385105, 28.267588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412847, 0.486842, -0.769768,
		-0.230792, 0.873490, 0.428661,
		0.881074, 0.000685, 0.472977,
		38.782108, 33.385311, 28.409481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445290, 34.032509, 27.828735>,  <38.165356, 33.384830, 28.078398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445290, 34.032509, 27.828735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763439, 33.855255, 27.994148>,  <38.954330, 33.748901, 28.093395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763439, 33.855255, 27.994148>,  <38.445290, 34.032509, 27.828735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763439, 33.855255, 27.994148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600704, 0.485350, -0.635287,
		0.080810, 0.753702, 0.652229,
		0.795377, -0.443135, 0.413531,
		39.002052, 33.722313, 28.118208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989616, 34.510372, 28.048573>,  <38.445290, 34.032509, 27.828735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989616, 34.510372, 28.048573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182194, 34.164513, 27.991173>,  <39.297741, 33.956997, 27.956734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182194, 34.164513, 27.991173>,  <38.989616, 34.510372, 28.048573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182194, 34.164513, 27.991173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634401, 0.456741, -0.623637,
		0.604770, 0.209210, 0.768430,
		0.481445, -0.864649, -0.143500,
		39.326626, 33.905117, 27.948122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673092, 34.670818, 28.071251>,  <38.989616, 34.510372, 28.048573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673092, 34.670818, 28.071251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.664852, 34.323193, 27.873541>,  <39.659908, 34.114616, 27.754915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.664852, 34.323193, 27.873541>,  <39.673092, 34.670818, 28.071251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664852, 34.323193, 27.873541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568989, 0.396320, -0.720543,
		0.822087, -0.296081, 0.486321,
		-0.020601, -0.869061, -0.494277,
		39.658672, 34.062473, 27.725258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353809, 34.508720, 27.865828>,  <39.673092, 34.670818, 28.071251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353809, 34.508720, 27.865828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.120747, 34.309334, 27.609068>,  <39.980907, 34.189701, 27.455011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.120747, 34.309334, 27.609068>,  <40.353809, 34.508720, 27.865828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120747, 34.309334, 27.609068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615232, 0.245545, -0.749131,
		0.531034, -0.831406, 0.163605,
		-0.582660, -0.498470, -0.641900,
		39.945950, 34.159794, 27.416498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766476, 34.231159, 27.414085>,  <40.353809, 34.508720, 27.865828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766476, 34.231159, 27.414085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433876, 34.185055, 27.196711>,  <40.234318, 34.157391, 27.066286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433876, 34.185055, 27.196711>,  <40.766476, 34.231159, 27.414085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433876, 34.185055, 27.196711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494401, 0.292568, -0.818518,
		0.253335, -0.949273, -0.186285,
		-0.831498, -0.115260, -0.543439,
		40.184425, 34.150478, 27.033678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118885, 33.615520, 27.584063>,  <40.766476, 34.231159, 27.414085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118885, 33.615520, 27.584063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.464523, 33.415653, 27.559841>,  <41.671906, 33.295731, 27.545309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.464523, 33.415653, 27.559841>,  <41.118885, 33.615520, 27.584063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464523, 33.415653, 27.559841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143534, -0.359932, 0.921871,
		-0.482430, -0.787893, -0.382735,
		0.864095, -0.499674, -0.060553,
		41.723751, 33.265751, 27.541676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967976, 32.924862, 27.759783>,  <41.118885, 33.615520, 27.584063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967976, 32.924862, 27.759783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355347, 32.998322, 27.827215>,  <41.587769, 33.042397, 27.867674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355347, 32.998322, 27.827215>,  <40.967976, 32.924862, 27.759783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355347, 32.998322, 27.827215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085102, -0.392061, 0.915994,
		0.234318, -0.901421, -0.364053,
		0.968428, 0.183653, 0.168580,
		41.645874, 33.053417, 27.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204395, 32.319904, 28.099888>,  <40.967976, 32.924862, 27.759783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204395, 32.319904, 28.099888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.451653, 32.621792, 28.187796>,  <41.600006, 32.802925, 28.240540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.451653, 32.621792, 28.187796>,  <41.204395, 32.319904, 28.099888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451653, 32.621792, 28.187796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015870, -0.267541, 0.963416,
		0.785907, -0.599014, -0.153401,
		0.618141, 0.754721, 0.219769,
		41.637096, 32.848209, 28.253727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806168, 31.974579, 28.402843>,  <41.204395, 32.319904, 28.099888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806168, 31.974579, 28.402843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.840961, 32.350372, 28.535389>,  <41.861839, 32.575848, 28.614916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.840961, 32.350372, 28.535389>,  <41.806168, 31.974579, 28.402843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840961, 32.350372, 28.535389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007542, -0.331996, 0.943251,
		0.996181, -0.084548, -0.021793,
		0.086985, 0.939484, 0.331366,
		41.867058, 32.632217, 28.634798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213520, 31.897961, 29.057789>,  <41.806168, 31.974579, 28.402843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213520, 31.897961, 29.057789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.076160, 32.272770, 29.083311>,  <41.993744, 32.497654, 29.098623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.076160, 32.272770, 29.083311>,  <42.213520, 31.897961, 29.057789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076160, 32.272770, 29.083311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106490, -0.106343, 0.988611,
		0.933134, 0.332690, 0.136301,
		-0.343395, 0.937021, 0.063804,
		41.973141, 32.553875, 29.102451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524540, 32.250885, 29.570776>,  <42.213520, 31.897961, 29.057789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524540, 32.250885, 29.570776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.159424, 32.412727, 29.548512>,  <41.940353, 32.509834, 29.535152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.159424, 32.412727, 29.548512>,  <42.524540, 32.250885, 29.570776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159424, 32.412727, 29.548512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121570, -0.139059, 0.982794,
		0.389909, 0.903854, 0.176121,
		-0.912794, 0.404611, -0.055661,
		41.885586, 32.534111, 29.531813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718353, 32.706028, 30.062922>,  <42.524540, 32.250885, 29.570776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718353, 32.706028, 30.062922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321499, 32.710674, 30.013075>,  <42.083385, 32.713463, 29.983166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321499, 32.710674, 30.013075>,  <42.718353, 32.706028, 30.062922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321499, 32.710674, 30.013075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124370, 0.020048, 0.992033,
		0.014026, 0.999732, -0.018445,
		-0.992137, 0.011620, -0.124618,
		42.023857, 32.714161, 29.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531292, 33.141800, 30.515390>,  <42.718353, 32.706028, 30.062922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531292, 33.141800, 30.515390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.192741, 32.940311, 30.446215>,  <41.989609, 32.819420, 30.404709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.192741, 32.940311, 30.446215>,  <42.531292, 33.141800, 30.515390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192741, 32.940311, 30.446215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220313, 0.035514, 0.974782,
		-0.484878, 0.863136, -0.141035,
		-0.846378, -0.503722, -0.172940,
		41.938828, 32.789196, 30.394333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980785, 33.491081, 31.002672>,  <42.531292, 33.141800, 30.515390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980785, 33.491081, 31.002672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.867699, 33.116039, 30.921715>,  <41.799847, 32.891014, 30.873140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.867699, 33.116039, 30.921715>,  <41.980785, 33.491081, 31.002672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867699, 33.116039, 30.921715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213084, -0.144338, 0.966313,
		-0.935235, 0.316322, -0.158982,
		-0.282719, -0.937607, -0.202393,
		41.782883, 32.834759, 30.860996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369377, 33.405197, 31.334366>,  <41.980785, 33.491081, 31.002672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369377, 33.405197, 31.334366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.489204, 33.026539, 31.286829>,  <41.561100, 32.799343, 31.258307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.489204, 33.026539, 31.286829>,  <41.369377, 33.405197, 31.334366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489204, 33.026539, 31.286829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411890, -0.240680, 0.878874,
		-0.860584, -0.214332, -0.462014,
		0.299568, -0.946644, -0.118844,
		41.579075, 32.742546, 31.251175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772034, 33.027519, 31.463554>,  <41.369377, 33.405197, 31.334366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772034, 33.027519, 31.463554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.106613, 32.816410, 31.522638>,  <41.307362, 32.689743, 31.558088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.106613, 32.816410, 31.522638>,  <40.772034, 33.027519, 31.463554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106613, 32.816410, 31.522638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410506, -0.424765, 0.806883,
		-0.363104, -0.735551, -0.571945,
		0.836445, -0.527769, 0.147714,
		41.357548, 32.658077, 31.566952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417152, 32.478970, 31.705667>,  <40.772034, 33.027519, 31.463554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417152, 32.478970, 31.705667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804977, 32.418163, 31.782434>,  <41.037674, 32.381680, 31.828495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804977, 32.418163, 31.782434>,  <40.417152, 32.478970, 31.705667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804977, 32.418163, 31.782434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215911, -0.161320, 0.962994,
		-0.115435, -0.975123, -0.189234,
		0.969565, -0.152021, 0.191918,
		41.095848, 32.372559, 31.840010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530006, 31.842205, 32.045559>,  <40.417152, 32.478970, 31.705667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530006, 31.842205, 32.045559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859573, 32.044239, 32.148357>,  <41.057312, 32.165459, 32.210037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859573, 32.044239, 32.148357>,  <40.530006, 31.842205, 32.045559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859573, 32.044239, 32.148357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151874, -0.240113, 0.958791,
		0.545982, -0.828995, -0.121124,
		0.823916, 0.505086, 0.257000,
		41.106747, 32.195766, 32.225456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972157, 31.404327, 32.561684>,  <40.530006, 31.842205, 32.045559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972157, 31.404327, 32.561684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073399, 31.786589, 32.621906>,  <41.134144, 32.015945, 32.658039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073399, 31.786589, 32.621906>,  <40.972157, 31.404327, 32.561684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073399, 31.786589, 32.621906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303754, -0.069252, 0.950230,
		0.918516, -0.286240, 0.272756,
		0.253105, 0.955652, 0.150556,
		41.149330, 32.073284, 32.667072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.243820, 35.657711, 29.429619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.902256, 35.716343, 29.229876>,  <43.697319, 35.751522, 29.110029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.902256, 35.716343, 29.229876>,  <44.243820, 35.657711, 29.429619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902256, 35.716343, 29.229876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500840, -0.029300, -0.865044,
		-0.141429, -0.988765, -0.048394,
		-0.853907, 0.146580, -0.499356,
		43.646084, 35.760315, 29.080069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219658, 35.110569, 29.078693>,  <44.243820, 35.657711, 29.429619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219658, 35.110569, 29.078693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.973930, 35.349606, 28.872589>,  <43.826492, 35.493027, 28.748926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.973930, 35.349606, 28.872589>,  <44.219658, 35.110569, 29.078693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973930, 35.349606, 28.872589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499839, -0.210553, -0.840136,
		-0.610547, -0.773662, -0.169352,
		-0.614323, 0.597591, -0.515259,
		43.789635, 35.528881, 28.718012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981903, 34.771339, 28.418560>,  <44.219658, 35.110569, 29.078693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981903, 34.771339, 28.418560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.913677, 35.159435, 28.349802>,  <43.872742, 35.392292, 28.308548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.913677, 35.159435, 28.349802>,  <43.981903, 34.771339, 28.418560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913677, 35.159435, 28.349802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463163, -0.075033, -0.883091,
		-0.869706, -0.230240, -0.436580,
		-0.170565, 0.970237, -0.171895,
		43.862507, 35.450508, 28.298233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882420, 34.819118, 27.658356>,  <43.981903, 34.771339, 28.418560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882420, 34.819118, 27.658356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.948601, 35.196846, 27.772123>,  <43.988312, 35.423481, 27.840384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.948601, 35.196846, 27.772123>,  <43.882420, 34.819118, 27.658356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948601, 35.196846, 27.772123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626642, 0.122030, -0.769694,
		-0.761541, 0.305579, -0.571557,
		0.165455, 0.944315, 0.284419,
		43.998238, 35.480141, 27.857449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874836, 35.272827, 27.030838>,  <43.882420, 34.819118, 27.658356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874836, 35.272827, 27.030838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.068672, 35.509048, 27.288960>,  <44.184975, 35.650784, 27.443832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.068672, 35.509048, 27.288960>,  <43.874836, 35.272827, 27.030838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068672, 35.509048, 27.288960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674184, 0.217899, -0.705689,
		-0.557360, 0.777022, -0.292552,
		0.484589, 0.590557, 0.645303,
		44.214050, 35.686214, 27.482550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938469, 35.952972, 26.761337>,  <43.874836, 35.272827, 27.030838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938469, 35.952972, 26.761337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.243843, 35.909866, 27.016069>,  <44.427067, 35.884003, 27.168909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.243843, 35.909866, 27.016069>,  <43.938469, 35.952972, 26.761337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243843, 35.909866, 27.016069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598735, 0.487878, -0.635210,
		-0.242241, 0.866234, 0.436987,
		0.763436, -0.107765, 0.636829,
		44.472874, 35.877537, 27.207119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277843, 36.543243, 26.656273>,  <43.938469, 35.952972, 26.761337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277843, 36.543243, 26.656273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547939, 36.297157, 26.819033>,  <44.709995, 36.149506, 26.916689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547939, 36.297157, 26.819033>,  <44.277843, 36.543243, 26.656273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547939, 36.297157, 26.819033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625615, 0.185480, -0.757762,
		0.390712, 0.766233, 0.510129,
		0.675241, -0.615211, 0.406898,
		44.750511, 36.112595, 26.941101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955688, 36.897270, 26.759495>,  <44.277843, 36.543243, 26.656273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955688, 36.897270, 26.759495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.069260, 36.513733, 26.760937>,  <45.137402, 36.283611, 26.761803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.069260, 36.513733, 26.760937>,  <44.955688, 36.897270, 26.759495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069260, 36.513733, 26.760937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793289, 0.232789, -0.562585,
		0.538589, 0.162594, 0.826732,
		0.283927, -0.958839, 0.003606,
		45.154438, 36.226082, 26.762018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719833, 36.992302, 26.747257>,  <44.955688, 36.897270, 26.759495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719833, 36.992302, 26.747257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.605705, 36.627201, 26.630314>,  <45.537228, 36.408142, 26.560148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.605705, 36.627201, 26.630314>,  <45.719833, 36.992302, 26.747257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605705, 36.627201, 26.630314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675878, 0.024660, -0.736601,
		0.679544, -0.407766, 0.609874,
		-0.285321, -0.912753, -0.292357,
		45.520107, 36.353374, 26.542606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320236, 36.691570, 26.682440>,  <45.719833, 36.992302, 26.747257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320236, 36.691570, 26.682440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.045387, 36.496696, 26.466845>,  <45.880478, 36.379772, 26.337486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.045387, 36.496696, 26.466845>,  <46.320236, 36.691570, 26.682440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045387, 36.496696, 26.466845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476259, 0.258205, -0.840540,
		0.548669, -0.834254, 0.054608,
		-0.687125, -0.487186, -0.538990,
		45.839249, 36.350540, 26.305147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593212, 36.266216, 26.006790>,  <46.320236, 36.691570, 26.682440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593212, 36.266216, 26.006790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.210602, 36.371517, 25.956593>,  <45.981033, 36.434696, 25.926474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.210602, 36.371517, 25.956593>,  <46.593212, 36.266216, 26.006790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210602, 36.371517, 25.956593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155390, 0.095911, -0.983186,
		-0.246791, -0.959947, -0.132649,
		-0.956529, 0.263254, -0.125496,
		45.923641, 36.450493, 25.918943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481621, 36.079456, 25.296961>,  <46.593212, 36.266216, 26.006790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481621, 36.079456, 25.296961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.139435, 36.276485, 25.360914>,  <45.934124, 36.394703, 25.399286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.139435, 36.276485, 25.360914>,  <46.481621, 36.079456, 25.296961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139435, 36.276485, 25.360914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014123, 0.286428, -0.957998,
		-0.517674, -0.821788, -0.238071,
		-0.855461, 0.492569, 0.159883,
		45.882797, 36.424255, 25.408878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973347, 35.938385, 24.665905>,  <46.481621, 36.079456, 25.296961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973347, 35.938385, 24.665905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.877815, 36.268368, 24.870810>,  <45.820496, 36.466358, 24.993753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.877815, 36.268368, 24.870810>,  <45.973347, 35.938385, 24.665905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877815, 36.268368, 24.870810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171902, 0.483279, -0.858423,
		-0.955725, -0.293076, 0.026390,
		-0.238829, 0.824953, 0.512263,
		45.806168, 36.515854, 25.024488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238449, 36.022610, 24.631338>,  <45.973347, 35.938385, 24.665905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238449, 36.022610, 24.631338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.483082, 36.338146, 24.655651>,  <45.629860, 36.527470, 24.670238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.483082, 36.338146, 24.655651>,  <45.238449, 36.022610, 24.631338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483082, 36.338146, 24.655651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300420, 0.302606, -0.904532,
		-0.731928, 0.534933, 0.422052,
		0.611579, 0.788845, 0.060781,
		45.666557, 36.574799, 24.673885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856312, 35.918877, 23.938709>,  <45.238449, 36.022610, 24.631338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856312, 35.918877, 23.938709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.732193, 35.718742, 23.615381>,  <44.657722, 35.598663, 23.421385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.732193, 35.718742, 23.615381>,  <44.856312, 35.918877, 23.938709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732193, 35.718742, 23.615381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660044, -0.498538, 0.561962,
		-0.684148, 0.707900, -0.175550,
		-0.310295, -0.500336, -0.808320,
		44.639103, 35.568642, 23.372885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241631, 35.960228, 23.913273>,  <44.856312, 35.918877, 23.938709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241631, 35.960228, 23.913273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.274143, 35.628162, 23.692652>,  <44.293652, 35.428921, 23.560278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.274143, 35.628162, 23.692652>,  <44.241631, 35.960228, 23.913273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274143, 35.628162, 23.692652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682087, -0.449837, 0.576544,
		-0.726739, 0.329344, -0.602813,
		0.081286, -0.830168, -0.551555,
		44.298531, 35.379112, 23.527185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570312, 35.700996, 23.953028>,  <44.241631, 35.960228, 23.913273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570312, 35.700996, 23.953028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.791561, 35.383125, 23.852987>,  <43.924309, 35.192402, 23.792963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.791561, 35.383125, 23.852987>,  <43.570312, 35.700996, 23.953028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791561, 35.383125, 23.852987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584358, -0.584046, 0.563398,
		-0.593798, -0.165465, -0.787417,
		0.553110, -0.794677, -0.250115,
		43.957497, 35.144722, 23.777956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129356, 35.238480, 23.784655>,  <43.570312, 35.700996, 23.953028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129356, 35.238480, 23.784655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.446884, 35.009922, 23.867952>,  <43.637402, 34.872787, 23.917931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.446884, 35.009922, 23.867952>,  <43.129356, 35.238480, 23.784655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446884, 35.009922, 23.867952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580586, -0.610088, 0.539178,
		-0.181034, -0.548913, -0.816040,
		0.793818, -0.571391, 0.208244,
		43.685028, 34.838505, 23.930426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894867, 34.573181, 23.787745>,  <43.129356, 35.238480, 23.784655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894867, 34.573181, 23.787745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.237236, 34.533501, 23.990746>,  <43.442657, 34.509693, 24.112545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.237236, 34.533501, 23.990746>,  <42.894867, 34.573181, 23.787745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237236, 34.533501, 23.990746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483043, -0.503691, 0.716215,
		0.184575, -0.858169, -0.479038,
		0.855921, -0.099200, 0.507501,
		43.494011, 34.503742, 24.142996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960697, 33.859711, 23.907415>,  <42.894867, 34.573181, 23.787745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960697, 33.859711, 23.907415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.188919, 34.048141, 24.176504>,  <43.325851, 34.161198, 24.337957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.188919, 34.048141, 24.176504>,  <42.960697, 33.859711, 23.907415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188919, 34.048141, 24.176504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417415, -0.539101, 0.731529,
		0.707268, -0.698184, -0.110955,
		0.570558, 0.471073, 0.672721,
		43.360088, 34.189465, 24.378321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954681, 33.364429, 24.457409>,  <42.960697, 33.859711, 23.907415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954681, 33.364429, 24.457409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130184, 33.686375, 24.617254>,  <43.235485, 33.879539, 24.713161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130184, 33.686375, 24.617254>,  <42.954681, 33.364429, 24.457409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130184, 33.686375, 24.617254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113264, -0.391623, 0.913128,
		0.891437, -0.445906, -0.080667,
		0.438760, 0.804860, 0.399612,
		43.261814, 33.927834, 24.737139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505375, 33.184196, 24.871264>,  <42.954681, 33.364429, 24.457409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505375, 33.184196, 24.871264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.401299, 33.523491, 25.055782>,  <43.338852, 33.727070, 25.166494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.401299, 33.523491, 25.055782>,  <43.505375, 33.184196, 24.871264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401299, 33.523491, 25.055782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249168, -0.520554, 0.816663,
		0.932855, 0.097545, 0.346795,
		-0.260187, 0.848238, 0.461296,
		43.323242, 33.777962, 25.194172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497349, 33.018894, 25.536415>,  <43.505375, 33.184196, 24.871264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497349, 33.018894, 25.536415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.310539, 33.372585, 25.538702>,  <43.198452, 33.584801, 25.540073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.310539, 33.372585, 25.538702>,  <43.497349, 33.018894, 25.536415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310539, 33.372585, 25.538702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487764, -0.263008, 0.832414,
		0.737544, 0.385972, 0.554125,
		-0.467028, 0.884224, 0.005717,
		43.170429, 33.637852, 25.540417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610004, 33.230991, 26.173759>,  <43.497349, 33.018894, 25.536415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610004, 33.230991, 26.173759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.284916, 33.434563, 26.060284>,  <43.089863, 33.556705, 25.992197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.284916, 33.434563, 26.060284>,  <43.610004, 33.230991, 26.173759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284916, 33.434563, 26.060284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488181, -0.328991, 0.808359,
		0.318062, 0.795463, 0.515825,
		-0.812721, 0.508924, -0.283691,
		43.041100, 33.587238, 25.975176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460617, 33.781227, 26.639853>,  <43.610004, 33.230991, 26.173759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460617, 33.781227, 26.639853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.105980, 33.699993, 26.473621>,  <42.893196, 33.651253, 26.373882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.105980, 33.699993, 26.473621>,  <43.460617, 33.781227, 26.639853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105980, 33.699993, 26.473621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395414, -0.133395, 0.908765,
		-0.239990, 0.970033, 0.037966,
		-0.886596, -0.203083, -0.415578,
		42.840000, 33.639069, 26.348948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001980, 34.203827, 27.027803>,  <43.460617, 33.781227, 26.639853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001980, 34.203827, 27.027803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.787643, 33.920647, 26.843773>,  <42.659042, 33.750736, 26.733355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.787643, 33.920647, 26.843773>,  <43.001980, 34.203827, 27.027803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787643, 33.920647, 26.843773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514021, -0.158757, 0.842959,
		-0.669817, 0.688184, -0.278834,
		-0.535843, -0.707955, -0.460079,
		42.626892, 33.708260, 26.705750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346180, 34.315403, 27.250729>,  <43.001980, 34.203827, 27.027803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346180, 34.315403, 27.250729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.344070, 33.937279, 27.120277>,  <42.342804, 33.710403, 27.042007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.344070, 33.937279, 27.120277>,  <42.346180, 34.315403, 27.250729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344070, 33.937279, 27.120277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442138, -0.290317, 0.848664,
		-0.896931, 0.148667, -0.416428,
		-0.005272, -0.945312, -0.326126,
		42.342487, 33.653687, 27.022440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629440, 34.142052, 27.351198>,  <42.346180, 34.315403, 27.250729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629440, 34.142052, 27.351198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846050, 33.807255, 27.319712>,  <41.976017, 33.606377, 27.300819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846050, 33.807255, 27.319712>,  <41.629440, 34.142052, 27.351198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846050, 33.807255, 27.319712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586813, -0.443382, 0.677542,
		-0.601997, -0.320715, -0.731260,
		0.541526, -0.836991, -0.078715,
		42.008507, 33.556156, 27.296097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089306, 33.957981, 26.795004>,  <41.629440, 34.142052, 27.351198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089306, 33.957981, 26.795004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.723183, 34.086678, 26.698103>,  <40.503510, 34.163895, 26.639961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.723183, 34.086678, 26.698103>,  <41.089306, 33.957981, 26.795004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723183, 34.086678, 26.698103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337851, 0.285963, -0.896706,
		-0.219236, -0.902610, -0.370447,
		-0.915310, 0.321746, -0.242254,
		40.448589, 34.183201, 26.625427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934490, 33.697178, 26.120054>,  <41.089306, 33.957981, 26.795004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934490, 33.697178, 26.120054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702583, 34.020164, 26.163639>,  <40.563438, 34.213955, 26.189789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702583, 34.020164, 26.163639>,  <40.934490, 33.697178, 26.120054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702583, 34.020164, 26.163639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309666, 0.342063, -0.887187,
		-0.753641, -0.480622, -0.448361,
		-0.579769, 0.807463, 0.108961,
		40.528652, 34.262402, 26.196327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596329, 33.812695, 25.493879>,  <40.934490, 33.697178, 26.120054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596329, 33.812695, 25.493879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603325, 34.173664, 25.666077>,  <40.607521, 34.390247, 25.769394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603325, 34.173664, 25.666077>,  <40.596329, 33.812695, 25.493879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603325, 34.173664, 25.666077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249247, 0.413029, -0.875947,
		-0.968282, 0.122620, -0.217703,
		0.017492, 0.902425, 0.430491,
		40.608574, 34.444393, 25.795223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357513, 34.175632, 24.896381>,  <40.596329, 33.812695, 25.493879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357513, 34.175632, 24.896381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.494820, 34.446377, 25.156849>,  <40.577206, 34.608826, 25.313129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.494820, 34.446377, 25.156849>,  <40.357513, 34.175632, 24.896381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494820, 34.446377, 25.156849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284304, 0.585891, -0.758883,
		-0.895175, 0.445631, 0.008684,
		0.343269, 0.676864, 0.651169,
		40.597801, 34.649437, 25.352200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091732, 34.853558, 24.666599>,  <40.357513, 34.175632, 24.896381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091732, 34.853558, 24.666599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386753, 34.957912, 24.915743>,  <40.563766, 35.020527, 25.065229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386753, 34.957912, 24.915743>,  <40.091732, 34.853558, 24.666599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386753, 34.957912, 24.915743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462034, 0.477708, -0.747208,
		-0.492484, 0.838887, 0.231794,
		0.737553, 0.260892, 0.622858,
		40.608021, 35.036179, 25.102600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080410, 35.506565, 24.659100>,  <40.091732, 34.853558, 24.666599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080410, 35.506565, 24.659100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448013, 35.373409, 24.743586>,  <40.668575, 35.293514, 24.794277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448013, 35.373409, 24.743586>,  <40.080410, 35.506565, 24.659100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448013, 35.373409, 24.743586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367335, 0.528477, -0.765361,
		0.143160, 0.780957, 0.607956,
		0.919005, -0.332893, 0.211217,
		40.723713, 35.273540, 24.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444496, 36.128563, 24.695072>,  <40.080410, 35.506565, 24.659100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444496, 36.128563, 24.695072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730377, 35.851131, 24.658945>,  <40.901905, 35.684673, 24.637268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730377, 35.851131, 24.658945>,  <40.444496, 36.128563, 24.695072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730377, 35.851131, 24.658945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490222, 0.588831, -0.642620,
		0.498888, 0.415004, 0.760843,
		0.714698, -0.693578, -0.090317,
		40.944786, 35.643059, 24.631849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502640, 36.668896, 25.066124>,  <40.444496, 36.128563, 24.695072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502640, 36.668896, 25.066124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293896, 37.009052, 25.092936>,  <40.168648, 37.213146, 25.109022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293896, 37.009052, 25.092936>,  <40.502640, 36.668896, 25.066124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293896, 37.009052, 25.092936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511302, -0.374734, 0.773398,
		0.682811, 0.369334, 0.630367,
		-0.521862, 0.850392, 0.067031,
		40.137337, 37.264172, 25.113045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460747, 36.844761, 25.816219>,  <40.502640, 36.668896, 25.066124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460747, 36.844761, 25.816219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163334, 37.051929, 25.647024>,  <39.984886, 37.176231, 25.545507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163334, 37.051929, 25.647024>,  <40.460747, 36.844761, 25.816219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163334, 37.051929, 25.647024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639493, -0.365809, 0.676189,
		0.195482, 0.773264, 0.603199,
		-0.743529, 0.517925, -0.422988,
		39.940277, 37.207306, 25.520128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106983, 37.256237, 26.313040>,  <40.460747, 36.844761, 25.816219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106983, 37.256237, 26.313040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.823524, 37.265377, 26.030964>,  <39.653450, 37.270859, 25.861719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.823524, 37.265377, 26.030964>,  <40.106983, 37.256237, 26.313040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823524, 37.265377, 26.030964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673824, -0.318302, 0.666817,
		-0.209228, 0.947714, 0.240960,
		-0.708650, 0.022848, -0.705190,
		39.610931, 37.272232, 25.819407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670689, 37.335827, 26.727129>,  <40.106983, 37.256237, 26.313040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670689, 37.335827, 26.727129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485474, 37.230209, 26.388691>,  <39.374344, 37.166840, 26.185627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485474, 37.230209, 26.388691>,  <39.670689, 37.335827, 26.727129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485474, 37.230209, 26.388691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808547, -0.265240, 0.525261,
		-0.363110, 0.927324, -0.090675,
		-0.463036, -0.264043, -0.846097,
		39.346561, 37.150997, 26.134863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039803, 37.637890, 26.663034>,  <39.670689, 37.335827, 26.727129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039803, 37.637890, 26.663034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023281, 37.311440, 26.432476>,  <39.013367, 37.115570, 26.294140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023281, 37.311440, 26.432476>,  <39.039803, 37.637890, 26.663034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023281, 37.311440, 26.432476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868463, -0.255919, 0.424592,
		-0.494031, 0.518118, -0.698203,
		-0.041306, -0.816125, -0.576398,
		39.010891, 37.066601, 26.259556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315269, 37.562828, 26.403385>,  <39.039803, 37.637890, 26.663034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315269, 37.562828, 26.403385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.447517, 37.191231, 26.336861>,  <38.526867, 36.968273, 26.296946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.447517, 37.191231, 26.336861>,  <38.315269, 37.562828, 26.403385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447517, 37.191231, 26.336861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819508, -0.369994, 0.437619,
		-0.468082, -0.008388, -0.883645,
		0.330615, -0.928996, -0.166313,
		38.546703, 36.912533, 26.286966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761784, 37.174271, 26.160509>,  <38.315269, 37.562828, 26.403385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761784, 37.174271, 26.160509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.011200, 36.897652, 26.306366>,  <38.160851, 36.731682, 26.393881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.011200, 36.897652, 26.306366>,  <37.761784, 37.174271, 26.160509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011200, 36.897652, 26.306366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760784, -0.429343, 0.486695,
		-0.180013, -0.580890, -0.793828,
		0.623540, -0.691543, 0.364645,
		38.198261, 36.690189, 26.415760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.948021, 38.104420, 24.996101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.273769, 38.032055, 25.216671>,  <43.469219, 37.988636, 25.349012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.273769, 38.032055, 25.216671>,  <42.948021, 38.104420, 24.996101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273769, 38.032055, 25.216671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495949, 0.276496, 0.823155,
		-0.301384, -0.943833, 0.135449,
		0.814373, -0.180910, 0.551425,
		43.518082, 37.977783, 25.382099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656128, 37.920898, 25.686535>,  <42.948021, 38.104420, 24.996101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656128, 37.920898, 25.686535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.043415, 37.979782, 25.767418>,  <43.275787, 38.015114, 25.815948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.043415, 37.979782, 25.767418>,  <42.656128, 37.920898, 25.686535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043415, 37.979782, 25.767418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246822, 0.431507, 0.867687,
		0.040478, -0.890017, 0.454126,
		0.968215, 0.147210, 0.202209,
		43.333881, 38.023945, 25.828081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851326, 37.568691, 26.381582>,  <42.656128, 37.920898, 25.686535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851326, 37.568691, 26.381582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.114880, 37.857395, 26.296789>,  <43.273010, 38.030617, 26.245914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.114880, 37.857395, 26.296789>,  <42.851326, 37.568691, 26.381582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114880, 37.857395, 26.296789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236646, 0.466365, 0.852351,
		0.714055, -0.511433, 0.478081,
		0.658881, 0.721761, -0.211982,
		43.312546, 38.073925, 26.233194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221127, 37.556103, 26.894209>,  <42.851326, 37.568691, 26.381582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221127, 37.556103, 26.894209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.260380, 37.920620, 26.734251>,  <43.283932, 38.139332, 26.638277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.260380, 37.920620, 26.734251>,  <43.221127, 37.556103, 26.894209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260380, 37.920620, 26.734251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286705, 0.410686, 0.865527,
		0.952979, 0.029713, 0.301574,
		0.098135, 0.911292, -0.399894,
		43.289822, 38.194008, 26.614283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744934, 37.928814, 27.344954>,  <43.221127, 37.556103, 26.894209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744934, 37.928814, 27.344954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.515400, 38.178005, 27.132309>,  <43.377682, 38.327522, 27.004723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.515400, 38.178005, 27.132309>,  <43.744934, 37.928814, 27.344954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515400, 38.178005, 27.132309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414641, 0.338777, 0.844572,
		0.706250, 0.705072, 0.063912,
		-0.573832, 0.622980, -0.531613,
		43.343250, 38.364899, 26.972824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781132, 38.556183, 27.700636>,  <43.744934, 37.928814, 27.344954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781132, 38.556183, 27.700636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.467525, 38.628506, 27.463104>,  <43.279362, 38.671898, 27.320585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.467525, 38.628506, 27.463104>,  <43.781132, 38.556183, 27.700636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467525, 38.628506, 27.463104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456366, 0.480581, 0.748847,
		0.420781, 0.858109, -0.294267,
		-0.784011, 0.180807, -0.593831,
		43.232323, 38.682747, 27.284954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678226, 39.270256, 27.745613>,  <43.781132, 38.556183, 27.700636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678226, 39.270256, 27.745613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.338539, 39.110497, 27.607450>,  <43.134727, 39.014641, 27.524553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.338539, 39.110497, 27.607450>,  <43.678226, 39.270256, 27.745613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338539, 39.110497, 27.607450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518828, 0.509479, 0.686476,
		-0.098201, 0.762176, -0.639879,
		-0.849220, -0.399399, -0.345407,
		43.083775, 38.990677, 27.503828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206257, 39.828342, 27.712679>,  <43.678226, 39.270256, 27.745613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206257, 39.828342, 27.712679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.963730, 39.510292, 27.717600>,  <42.818214, 39.319462, 27.720552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.963730, 39.510292, 27.717600>,  <43.206257, 39.828342, 27.712679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963730, 39.510292, 27.717600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527562, 0.413766, 0.741941,
		-0.595027, 0.443362, -0.670353,
		-0.606317, -0.795128, 0.012301,
		42.781834, 39.271755, 27.721291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599915, 40.186565, 27.904362>,  <43.206257, 39.828342, 27.712679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599915, 40.186565, 27.904362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546131, 39.798866, 27.986805>,  <42.513863, 39.566246, 28.036272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546131, 39.798866, 27.986805>,  <42.599915, 40.186565, 27.904362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546131, 39.798866, 27.986805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523201, 0.246083, 0.815907,
		-0.841535, 0.001869, -0.540199,
		-0.134459, -0.969247, 0.206110,
		42.505795, 39.508091, 28.048637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864357, 40.221767, 28.016275>,  <42.599915, 40.186565, 27.904362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864357, 40.221767, 28.016275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.996471, 39.880051, 28.176825>,  <42.075741, 39.675022, 28.273155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.996471, 39.880051, 28.176825>,  <41.864357, 40.221767, 28.016275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996471, 39.880051, 28.176825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499916, 0.202367, 0.842100,
		-0.800620, -0.478790, -0.360232,
		0.330290, -0.854288, 0.401374,
		42.095558, 39.623764, 28.297237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259197, 39.860878, 28.322214>,  <41.864357, 40.221767, 28.016275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259197, 39.860878, 28.322214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.570072, 39.663113, 28.477922>,  <41.756599, 39.544453, 28.571348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.570072, 39.663113, 28.477922>,  <41.259197, 39.860878, 28.322214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570072, 39.663113, 28.477922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405489, 0.079570, 0.910630,
		-0.481198, -0.865580, -0.138636,
		0.777192, -0.494408, 0.389272,
		41.803230, 39.514790, 28.594704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904705, 39.321316, 28.625038>,  <41.259197, 39.860878, 28.322214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904705, 39.321316, 28.625038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.260986, 39.358124, 28.803106>,  <41.474754, 39.380207, 28.909948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.260986, 39.358124, 28.803106>,  <40.904705, 39.321316, 28.625038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260986, 39.358124, 28.803106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451305, 0.061627, 0.890239,
		0.054456, -0.993851, 0.096406,
		0.890707, 0.091987, 0.445175,
		41.528198, 39.385731, 28.936657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417561, 38.997795, 28.252544>,  <40.904705, 39.321316, 28.625038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417561, 38.997795, 28.252544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.188801, 39.322929, 28.208313>,  <40.051544, 39.518009, 28.181774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.188801, 39.322929, 28.208313>,  <40.417561, 38.997795, 28.252544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188801, 39.322929, 28.208313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596953, 0.319920, -0.735730,
		-0.562651, -0.486775, -0.668187,
		-0.571901, 0.812835, -0.110578,
		40.017231, 39.566780, 28.175140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118309, 39.005051, 27.588305>,  <40.417561, 38.997795, 28.252544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118309, 39.005051, 27.588305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115395, 39.394482, 27.679602>,  <40.113644, 39.628139, 27.734381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115395, 39.394482, 27.679602>,  <40.118309, 39.005051, 27.588305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115395, 39.394482, 27.679602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409974, 0.211096, -0.887333,
		-0.912068, 0.087107, -0.400680,
		-0.007289, 0.973576, 0.228245,
		40.113209, 39.686554, 27.748075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058914, 39.281128, 26.898394>,  <40.118309, 39.005051, 27.588305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058914, 39.281128, 26.898394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.166248, 39.610558, 27.098280>,  <40.230648, 39.808216, 27.218212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.166248, 39.610558, 27.098280>,  <40.058914, 39.281128, 26.898394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166248, 39.610558, 27.098280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427810, 0.362901, -0.827817,
		-0.863119, 0.435918, -0.254954,
		0.268338, 0.823577, 0.499716,
		40.246750, 39.857632, 27.248196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780300, 39.883602, 26.513525>,  <40.058914, 39.281128, 26.898394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780300, 39.883602, 26.513525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085903, 40.043049, 26.716463>,  <40.269264, 40.138718, 26.838226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085903, 40.043049, 26.716463>,  <39.780300, 39.883602, 26.513525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085903, 40.043049, 26.716463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293402, 0.485680, -0.823426,
		-0.574639, 0.777958, 0.254108,
		0.764006, 0.398617, 0.507345,
		40.315105, 40.162636, 26.868666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749413, 40.606190, 26.387499>,  <39.780300, 39.883602, 26.513525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749413, 40.606190, 26.387499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131439, 40.540497, 26.486187>,  <40.360657, 40.501080, 26.545401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131439, 40.540497, 26.486187>,  <39.749413, 40.606190, 26.387499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131439, 40.540497, 26.486187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295589, 0.466877, -0.833458,
		0.021694, 0.868938, 0.494446,
		0.955069, -0.164234, 0.246720,
		40.417961, 40.491226, 26.560204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147297, 41.155605, 26.148806>,  <39.749413, 40.606190, 26.387499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147297, 41.155605, 26.148806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.460972, 40.915649, 26.212278>,  <40.649178, 40.771675, 26.250362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.460972, 40.915649, 26.212278>,  <40.147297, 41.155605, 26.148806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460972, 40.915649, 26.212278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545400, 0.544375, -0.637334,
		0.295948, 0.586335, 0.754073,
		0.784190, -0.599889, 0.158680,
		40.696228, 40.735683, 26.259882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678242, 41.581646, 26.014492>,  <40.147297, 41.155605, 26.148806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678242, 41.581646, 26.014492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826202, 41.215939, 25.948423>,  <40.914978, 40.996513, 25.908783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826202, 41.215939, 25.948423>,  <40.678242, 41.581646, 26.014492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826202, 41.215939, 25.948423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566656, 0.362900, -0.739733,
		0.736257, 0.180034, 0.652315,
		0.369902, -0.914271, -0.165170,
		40.937172, 40.941658, 25.898872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371944, 41.625866, 26.053965>,  <40.678242, 41.581646, 26.014492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371944, 41.625866, 26.053965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.329460, 41.283375, 25.851738>,  <41.303970, 41.077881, 25.730402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.329460, 41.283375, 25.851738>,  <41.371944, 41.625866, 26.053965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329460, 41.283375, 25.851738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720824, 0.283931, -0.632295,
		0.684932, -0.431583, 0.587030,
		-0.106212, -0.856224, -0.505569,
		41.297596, 41.026508, 25.700068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934967, 41.653049, 25.720343>,  <41.371944, 41.625866, 26.053965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934967, 41.653049, 25.720343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771545, 41.339996, 25.532482>,  <41.673492, 41.152164, 25.419765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771545, 41.339996, 25.532482>,  <41.934967, 41.653049, 25.720343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771545, 41.339996, 25.532482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743257, 0.013382, -0.668872,
		0.529764, -0.622343, 0.576228,
		-0.408557, -0.782630, -0.469650,
		41.648979, 41.105206, 25.391586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483650, 41.272972, 25.546413>,  <41.934967, 41.653049, 25.720343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483650, 41.272972, 25.546413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193241, 41.132652, 25.309826>,  <42.018997, 41.048462, 25.167873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193241, 41.132652, 25.309826>,  <42.483650, 41.272972, 25.546413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193241, 41.132652, 25.309826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606658, 0.078282, -0.791099,
		0.323816, -0.933174, 0.155979,
		-0.726022, -0.350797, -0.591467,
		41.975433, 41.027412, 25.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735985, 40.790806, 25.052967>,  <42.483650, 41.272972, 25.546413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735985, 40.790806, 25.052967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.410191, 40.931034, 24.868048>,  <42.214714, 41.015171, 24.757095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.410191, 40.931034, 24.868048>,  <42.735985, 40.790806, 25.052967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410191, 40.931034, 24.868048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433383, -0.162154, -0.886502,
		-0.385747, -0.922391, -0.019861,
		-0.814480, 0.350572, -0.462299,
		42.165848, 41.036205, 24.729359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532692, 40.360260, 24.436750>,  <42.735985, 40.790806, 25.052967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532692, 40.360260, 24.436750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.354015, 40.707104, 24.348572>,  <42.246811, 40.915211, 24.295664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.354015, 40.707104, 24.348572>,  <42.532692, 40.360260, 24.436750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354015, 40.707104, 24.348572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488951, 0.030247, -0.871786,
		-0.749263, -0.497206, -0.437484,
		-0.446690, 0.867106, -0.220446,
		42.220009, 40.967236, 24.282438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193699, 40.235336, 23.808073>,  <42.532692, 40.360260, 24.436750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193699, 40.235336, 23.808073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.266792, 40.625885, 23.854212>,  <42.310650, 40.860214, 23.881895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.266792, 40.625885, 23.854212>,  <42.193699, 40.235336, 23.808073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266792, 40.625885, 23.854212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485670, 0.012365, -0.874055,
		-0.854829, 0.215742, -0.471935,
		0.182735, 0.976372, 0.115349,
		42.321613, 40.918797, 23.888817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161560, 39.604580, 23.461527>,  <42.193699, 40.235336, 23.808073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161560, 39.604580, 23.461527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.835033, 39.561974, 23.234447>,  <41.639118, 39.536407, 23.098200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.835033, 39.561974, 23.234447>,  <42.161560, 39.604580, 23.461527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835033, 39.561974, 23.234447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403399, -0.598299, 0.692321,
		-0.413398, 0.794162, 0.445431,
		-0.816315, -0.106518, -0.567700,
		41.590137, 39.530018, 23.064138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483036, 39.853748, 23.891932>,  <42.161560, 39.604580, 23.461527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483036, 39.853748, 23.891932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404655, 39.581783, 23.609280>,  <41.357628, 39.418606, 23.439690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404655, 39.581783, 23.609280>,  <41.483036, 39.853748, 23.891932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404655, 39.581783, 23.609280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596056, -0.489613, 0.636393,
		-0.778664, 0.545895, -0.309323,
		-0.195955, -0.679910, -0.706628,
		41.345867, 39.377811, 23.397291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782150, 39.721455, 24.003277>,  <41.483036, 39.853748, 23.891932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782150, 39.721455, 24.003277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.910744, 39.406071, 23.793522>,  <40.987900, 39.216839, 23.667669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.910744, 39.406071, 23.793522>,  <40.782150, 39.721455, 24.003277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910744, 39.406071, 23.793522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548506, -0.606472, 0.575615,
		-0.771876, 0.102581, -0.627443,
		0.321480, -0.788459, -0.524388,
		41.007187, 39.169533, 23.636206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184227, 39.325546, 23.967014>,  <40.782150, 39.721455, 24.003277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184227, 39.325546, 23.967014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.466278, 39.061428, 23.863623>,  <40.635509, 38.902958, 23.801588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.466278, 39.061428, 23.863623>,  <40.184227, 39.325546, 23.967014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466278, 39.061428, 23.863623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494076, -0.718983, 0.488827,
		-0.508610, -0.216977, -0.833208,
		0.705127, -0.660291, -0.258479,
		40.677814, 38.863342, 23.786079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860043, 38.678852, 23.692993>,  <40.184227, 39.325546, 23.967014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860043, 38.678852, 23.692993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222954, 38.567268, 23.818872>,  <40.440701, 38.500317, 23.894400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222954, 38.567268, 23.818872>,  <39.860043, 38.678852, 23.692993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222954, 38.567268, 23.818872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415736, -0.707736, 0.571204,
		0.063383, -0.649070, -0.758083,
		0.907274, -0.278958, 0.314700,
		40.495136, 38.483582, 23.913282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705669, 37.997456, 23.740168>,  <39.860043, 38.678852, 23.692993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705669, 37.997456, 23.740168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.020401, 38.087620, 23.969984>,  <40.209240, 38.141720, 24.107874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.020401, 38.087620, 23.969984>,  <39.705669, 37.997456, 23.740168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020401, 38.087620, 23.969984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268062, -0.713707, 0.647121,
		0.555922, -0.663183, -0.501137,
		0.786825, 0.225413, 0.574540,
		40.256447, 38.155243, 24.142345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937336, 37.343792, 24.004217>,  <39.705669, 37.997456, 23.740168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937336, 37.343792, 24.004217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135246, 37.591152, 24.248440>,  <40.253990, 37.739567, 24.394974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135246, 37.591152, 24.248440>,  <39.937336, 37.343792, 24.004217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135246, 37.591152, 24.248440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274194, -0.555602, 0.784935,
		0.824632, -0.555776, -0.105335,
		0.494773, 0.618400, 0.610558,
		40.283680, 37.776672, 24.431606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384979, 36.875557, 24.368717>,  <39.937336, 37.343792, 24.004217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384979, 36.875557, 24.368717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296558, 37.216637, 24.558048>,  <40.243507, 37.421284, 24.671646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296558, 37.216637, 24.558048>,  <40.384979, 36.875557, 24.368717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296558, 37.216637, 24.558048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317996, -0.521828, 0.791564,
		0.921962, 0.024462, 0.386507,
		-0.221054, 0.852700, 0.473327,
		40.230244, 37.472446, 24.700047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031551, 36.524231, 24.562450>,  <40.384979, 36.875557, 24.368717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031551, 36.524231, 24.562450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148891, 36.161469, 24.441475>,  <41.219296, 35.943810, 24.368889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148891, 36.161469, 24.441475>,  <41.031551, 36.524231, 24.562450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148891, 36.161469, 24.441475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412204, 0.405425, -0.815916,
		0.862575, 0.114679, 0.492760,
		0.293346, -0.906907, -0.302438,
		41.236897, 35.889397, 24.350744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762783, 36.631126, 24.302567>,  <41.031551, 36.524231, 24.562450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762783, 36.631126, 24.302567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.624016, 36.297436, 24.131123>,  <41.540756, 36.097221, 24.028257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.624016, 36.297436, 24.131123>,  <41.762783, 36.631126, 24.302567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624016, 36.297436, 24.131123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503821, 0.219693, -0.835404,
		0.791082, -0.505761, 0.344087,
		-0.346921, -0.834231, -0.428608,
		41.519939, 36.047165, 24.002541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316296, 36.158794, 24.222136>,  <41.762783, 36.631126, 24.302567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316296, 36.158794, 24.222136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.031269, 36.097466, 23.948275>,  <41.860252, 36.060669, 23.783958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.031269, 36.097466, 23.948275>,  <42.316296, 36.158794, 24.222136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031269, 36.097466, 23.948275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646150, 0.236842, -0.725531,
		0.273398, -0.959373, -0.069692,
		-0.712561, -0.153327, -0.684651,
		41.817501, 36.051468, 23.742880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783081, 35.952881, 23.717834>,  <42.316296, 36.158794, 24.222136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783081, 35.952881, 23.717834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436562, 35.980068, 23.519884>,  <42.228649, 35.996380, 23.401114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436562, 35.980068, 23.519884>,  <42.783081, 35.952881, 23.717834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436562, 35.980068, 23.519884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499520, 0.116175, -0.858477,
		-0.000856, -0.990900, -0.134594,
		-0.866302, 0.067967, -0.494875,
		42.176670, 36.000458, 23.371422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903770, 35.454475, 23.109678>,  <42.783081, 35.952881, 23.717834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903770, 35.454475, 23.109678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.617950, 35.716309, 23.010942>,  <42.446457, 35.873409, 22.951700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.617950, 35.716309, 23.010942>,  <42.903770, 35.454475, 23.109678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617950, 35.716309, 23.010942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481093, 0.203619, -0.852695,
		-0.507901, -0.728049, -0.460414,
		-0.714552, 0.654587, -0.246841,
		42.403584, 35.912685, 22.936890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712582, 35.279251, 22.492365>,  <42.903770, 35.454475, 23.109678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712582, 35.279251, 22.492365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.584270, 35.657551, 22.512974>,  <42.507282, 35.884533, 22.525339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.584270, 35.657551, 22.512974>,  <42.712582, 35.279251, 22.492365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584270, 35.657551, 22.512974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351026, 0.169233, -0.920946,
		-0.879706, -0.277333, -0.386269,
		-0.320778, 0.945752, 0.051524,
		42.488037, 35.941277, 22.528431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276268, 35.382217, 21.974365>,  <42.712582, 35.279251, 22.492365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276268, 35.382217, 21.974365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371288, 35.759800, 22.066040>,  <42.428299, 35.986347, 22.121044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371288, 35.759800, 22.066040>,  <42.276268, 35.382217, 21.974365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371288, 35.759800, 22.066040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251592, 0.168099, -0.953124,
		-0.938229, 0.284073, -0.197559,
		0.237547, 0.943952, 0.229185,
		42.442551, 36.042984, 22.134796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954502, 35.851498, 21.487120>,  <42.276268, 35.382217, 21.974365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954502, 35.851498, 21.487120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.248283, 36.070614, 21.647371>,  <42.424553, 36.202084, 21.743523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.248283, 36.070614, 21.647371>,  <41.954502, 35.851498, 21.487120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248283, 36.070614, 21.647371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324775, 0.234640, -0.916223,
		-0.595902, 0.803038, -0.005576,
		0.734454, 0.547790, 0.400629,
		42.468620, 36.234951, 21.767559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848835, 36.372387, 21.105762>,  <41.954502, 35.851498, 21.487120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848835, 36.372387, 21.105762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.217861, 36.399563, 21.257690>,  <42.439278, 36.415867, 21.348846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.217861, 36.399563, 21.257690>,  <41.848835, 36.372387, 21.105762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217861, 36.399563, 21.257690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375574, 0.067516, -0.924330,
		-0.088441, 0.995402, 0.036772,
		0.922563, 0.067938, 0.379818,
		42.494629, 36.419945, 21.371635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.569241, 33.069267, 36.181217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966385, 33.096409, 36.141994>,  <37.204674, 33.112694, 36.118462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966385, 33.096409, 36.141994>,  <36.569241, 33.069267, 36.181217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966385, 33.096409, 36.141994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113279, 0.279989, -0.953296,
		-0.037229, 0.957602, 0.285677,
		0.992865, 0.067852, -0.098052,
		37.264244, 33.116764, 36.112579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622131, 33.515240, 35.696430>,  <36.569241, 33.069267, 36.181217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622131, 33.515240, 35.696430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972511, 33.323605, 35.673870>,  <37.182739, 33.208622, 35.660336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972511, 33.323605, 35.673870>,  <36.622131, 33.515240, 35.696430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972511, 33.323605, 35.673870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056821, 0.218562, -0.974167,
		0.479042, 0.850118, 0.218672,
		0.875951, -0.479092, -0.056396,
		37.235298, 33.179878, 35.656952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113842, 33.952198, 35.280621>,  <36.622131, 33.515240, 35.696430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113842, 33.952198, 35.280621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264484, 33.581833, 35.268906>,  <37.354870, 33.359615, 35.261879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264484, 33.581833, 35.268906>,  <37.113842, 33.952198, 35.280621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264484, 33.581833, 35.268906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017019, 0.038521, -0.999113,
		0.926218, 0.375772, 0.030265,
		0.376605, -0.925911, -0.029283,
		37.377464, 33.304058, 35.260120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542271, 34.058163, 34.802303>,  <37.113842, 33.952198, 35.280621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542271, 34.058163, 34.802303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520920, 33.659874, 34.832489>,  <37.508110, 33.420902, 34.850601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520920, 33.659874, 34.832489>,  <37.542271, 34.058163, 34.802303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520920, 33.659874, 34.832489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127882, -0.081769, -0.988413,
		0.990352, -0.043107, 0.131699,
		-0.053376, -0.995719, 0.075467,
		37.504906, 33.361156, 34.855129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134537, 33.803993, 34.433811>,  <37.542271, 34.058163, 34.802303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134537, 33.803993, 34.433811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839199, 33.534397, 34.443497>,  <37.661999, 33.372639, 34.449310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839199, 33.534397, 34.443497>,  <38.134537, 33.803993, 34.433811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839199, 33.534397, 34.443497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039840, 0.007743, -0.999176,
		0.673251, -0.738696, -0.032569,
		-0.738340, -0.673994, 0.024217,
		37.617699, 33.332199, 34.450760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255074, 33.390053, 33.942249>,  <38.134537, 33.803993, 34.433811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255074, 33.390053, 33.942249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866104, 33.307476, 33.985641>,  <37.632721, 33.257931, 34.011677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866104, 33.307476, 33.985641>,  <38.255074, 33.390053, 33.942249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866104, 33.307476, 33.985641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095777, -0.070573, -0.992898,
		0.212632, -0.975910, 0.048855,
		-0.972427, -0.206443, 0.108476,
		37.574375, 33.245544, 34.018185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116703, 32.648712, 33.555618>,  <38.255074, 33.390053, 33.942249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116703, 32.648712, 33.555618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777031, 32.856613, 33.593040>,  <37.573227, 32.981354, 33.615494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777031, 32.856613, 33.593040>,  <38.116703, 32.648712, 33.555618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777031, 32.856613, 33.593040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198730, -0.150368, -0.968450,
		-0.489286, -0.840980, 0.230980,
		-0.849180, 0.519752, 0.093555,
		37.522278, 33.012539, 33.621105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602097, 32.303688, 33.246510>,  <38.116703, 32.648712, 33.555618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602097, 32.303688, 33.246510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446274, 32.672050, 33.251690>,  <37.352779, 32.893070, 33.254799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446274, 32.672050, 33.251690>,  <37.602097, 32.303688, 33.246510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446274, 32.672050, 33.251690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038685, 0.030411, -0.998789,
		-0.920189, -0.388585, -0.047472,
		-0.389558, 0.920911, 0.012951,
		37.329407, 32.948322, 33.255577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965458, 32.307648, 32.766438>,  <37.602097, 32.303688, 33.246510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965458, 32.307648, 32.766438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113617, 32.677048, 32.806366>,  <37.202511, 32.898685, 32.830322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113617, 32.677048, 32.806366>,  <36.965458, 32.307648, 32.766438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113617, 32.677048, 32.806366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098550, 0.145926, -0.984375,
		-0.923632, 0.354769, 0.145060,
		0.370393, 0.923496, 0.099820,
		37.224735, 32.954098, 32.836311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460812, 32.629856, 32.452740>,  <36.965458, 32.307648, 32.766438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460812, 32.629856, 32.452740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791378, 32.853554, 32.478909>,  <36.989719, 32.987774, 32.494610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791378, 32.853554, 32.478909>,  <36.460812, 32.629856, 32.452740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791378, 32.853554, 32.478909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068867, 0.215711, -0.974026,
		-0.558834, 0.800444, 0.216781,
		0.826415, 0.559247, 0.065422,
		37.039303, 33.021328, 32.498535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290440, 33.026043, 31.939138>,  <36.460812, 32.629856, 32.452740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290440, 33.026043, 31.939138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683399, 33.084538, 31.985638>,  <36.919174, 33.119633, 32.013538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683399, 33.084538, 31.985638>,  <36.290440, 33.026043, 31.939138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683399, 33.084538, 31.985638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087559, 0.189250, -0.978017,
		-0.165020, 0.970979, 0.173115,
		0.982396, 0.146235, 0.116248,
		36.978119, 33.128407, 32.020512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507919, 33.686798, 31.747211>,  <36.290440, 33.026043, 31.939138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507919, 33.686798, 31.747211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827690, 33.448792, 31.714037>,  <37.019550, 33.305988, 31.694132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827690, 33.448792, 31.714037>,  <36.507919, 33.686798, 31.747211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827690, 33.448792, 31.714037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042059, 0.193143, -0.980269,
		0.599295, 0.780161, 0.179428,
		0.799422, -0.595017, -0.082936,
		37.067516, 33.270287, 31.689156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575272, 34.352699, 31.741236>,  <36.507919, 33.686798, 31.747211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575272, 34.352699, 31.741236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297398, 34.640251, 31.751228>,  <36.130672, 34.812782, 31.757225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297398, 34.640251, 31.751228>,  <36.575272, 34.352699, 31.741236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297398, 34.640251, 31.751228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310717, -0.331219, 0.890926,
		0.648747, 0.611146, 0.453462,
		-0.694681, 0.718884, 0.024984,
		36.088993, 34.855915, 31.758724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380806, 34.436619, 32.542549>,  <36.575272, 34.352699, 31.741236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380806, 34.436619, 32.542549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.096786, 34.667828, 32.381695>,  <35.926373, 34.806553, 32.285183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.096786, 34.667828, 32.381695>,  <36.380806, 34.436619, 32.542549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096786, 34.667828, 32.381695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597567, -0.192547, 0.778356,
		0.372480, 0.792977, 0.482127,
		-0.710051, 0.578025, -0.402137,
		35.883770, 34.841236, 32.261055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220963, 34.878632, 33.130405>,  <36.380806, 34.436619, 32.542549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220963, 34.878632, 33.130405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908775, 34.913891, 32.882828>,  <35.721462, 34.935047, 32.734280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908775, 34.913891, 32.882828>,  <36.220963, 34.878632, 33.130405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908775, 34.913891, 32.882828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625185, -0.113878, 0.772124,
		-0.002422, 0.989576, 0.143988,
		-0.780473, 0.088149, -0.618944,
		35.674633, 34.940334, 32.697144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671753, 35.265099, 33.481945>,  <36.220963, 34.878632, 33.130405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671753, 35.265099, 33.481945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478924, 35.079655, 33.184578>,  <35.363228, 34.968388, 33.006157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478924, 35.079655, 33.184578>,  <35.671753, 35.265099, 33.481945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478924, 35.079655, 33.184578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778789, -0.161972, 0.606014,
		-0.401369, 0.871107, -0.282975,
		-0.482069, -0.463613, -0.743419,
		35.334305, 34.940571, 32.961552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991116, 35.622986, 33.291851>,  <35.671753, 35.265099, 33.481945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991116, 35.622986, 33.291851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998474, 35.229958, 33.217861>,  <35.002892, 34.994141, 33.173466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998474, 35.229958, 33.217861>,  <34.991116, 35.622986, 33.291851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998474, 35.229958, 33.217861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754636, -0.135010, 0.642104,
		-0.655886, 0.127775, -0.743967,
		0.018398, -0.982571, -0.184975,
		35.003994, 34.935184, 33.162369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306576, 35.460754, 33.442272>,  <34.991116, 35.622986, 33.291851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306576, 35.460754, 33.442272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448269, 35.086834, 33.431995>,  <34.533287, 34.862480, 33.425831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448269, 35.086834, 33.431995>,  <34.306576, 35.460754, 33.442272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448269, 35.086834, 33.431995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692224, -0.280586, 0.664904,
		-0.628763, -0.217749, -0.746487,
		0.354236, -0.934803, -0.025691,
		34.554539, 34.806393, 33.424290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737446, 35.025562, 33.407436>,  <34.306576, 35.460754, 33.442272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737446, 35.025562, 33.407436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029419, 34.810154, 33.575813>,  <34.204601, 34.680908, 33.676838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029419, 34.810154, 33.575813>,  <33.737446, 35.025562, 33.407436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029419, 34.810154, 33.575813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625034, -0.276639, 0.729934,
		-0.276639, -0.795905, -0.538523,
		-0.729934, 0.538523, -0.420938,
		34.248398, 34.648598, 33.702095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391693, 34.564800, 33.813221>,  <33.737446, 35.025562, 33.407436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391693, 34.564800, 33.813221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755867, 34.513279, 33.970459>,  <33.974373, 34.482368, 34.064800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755867, 34.513279, 33.970459>,  <33.391693, 34.564800, 33.813221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755867, 34.513279, 33.970459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413535, -0.306164, 0.857469,
		0.009911, -0.943226, -0.332004,
		0.910435, -0.128797, 0.393091,
		34.028996, 34.474640, 34.088387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300072, 34.001526, 34.199852>,  <33.391693, 34.564800, 33.813221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300072, 34.001526, 34.199852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616264, 34.204288, 34.337364>,  <33.805981, 34.325947, 34.419872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616264, 34.204288, 34.337364>,  <33.300072, 34.001526, 34.199852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616264, 34.204288, 34.337364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389393, -0.017315, 0.920909,
		0.472767, -0.861827, 0.183699,
		0.790484, 0.506906, 0.343776,
		33.853409, 34.356361, 34.440498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538006, 33.614006, 34.758297>,  <33.300072, 34.001526, 34.199852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538006, 33.614006, 34.758297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660336, 33.988525, 34.827370>,  <33.733734, 34.213238, 34.868813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660336, 33.988525, 34.827370>,  <33.538006, 33.614006, 34.758297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660336, 33.988525, 34.827370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339325, -0.062273, 0.938606,
		0.889568, -0.345642, 0.298665,
		0.305823, 0.936298, 0.172681,
		33.752083, 34.269413, 34.879173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778923, 33.627285, 35.467770>,  <33.538006, 33.614006, 34.758297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778923, 33.627285, 35.467770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712063, 34.016476, 35.404053>,  <33.671947, 34.249992, 35.365822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712063, 34.016476, 35.404053>,  <33.778923, 33.627285, 35.467770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712063, 34.016476, 35.404053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382835, 0.084835, 0.919913,
		0.908570, 0.214742, 0.358311,
		-0.167146, 0.972980, -0.159289,
		33.661919, 34.308369, 35.356266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995087, 34.021130, 36.133091>,  <33.778923, 33.627285, 35.467770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995087, 34.021130, 36.133091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750248, 34.244526, 35.909153>,  <33.603344, 34.378563, 35.774792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750248, 34.244526, 35.909153>,  <33.995087, 34.021130, 36.133091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750248, 34.244526, 35.909153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607697, 0.120795, 0.784929,
		0.506000, 0.820670, 0.265454,
		-0.612101, 0.558489, -0.559841,
		33.566616, 34.412071, 35.741199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088173, 34.610294, 36.474495>,  <33.995087, 34.021130, 36.133091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088173, 34.610294, 36.474495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749313, 34.658813, 36.267563>,  <33.545998, 34.687923, 36.143402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749313, 34.658813, 36.267563>,  <34.088173, 34.610294, 36.474495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749313, 34.658813, 36.267563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456121, 0.333436, 0.825090,
		0.272577, 0.934937, -0.227143,
		-0.847145, 0.121296, -0.517332,
		33.495171, 34.695202, 36.112362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769550, 35.269333, 36.774555>,  <34.088173, 34.610294, 36.474495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769550, 35.269333, 36.774555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488518, 35.051041, 36.591881>,  <33.319901, 34.920067, 36.482277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488518, 35.051041, 36.591881>,  <33.769550, 35.269333, 36.774555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488518, 35.051041, 36.591881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597812, 0.104513, 0.794794,
		-0.386012, 0.831418, -0.399672,
		-0.702577, -0.545729, -0.456688,
		33.277744, 34.887321, 36.454876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153797, 35.688412, 36.228931>,  <33.769550, 35.269333, 36.774555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153797, 35.688412, 36.228931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166660, 35.953056, 36.528595>,  <34.174377, 36.111843, 36.708393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166660, 35.953056, 36.528595>,  <34.153797, 35.688412, 36.228931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166660, 35.953056, 36.528595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245580, 0.721340, -0.647580,
		-0.968843, 0.204802, -0.139282,
		0.032156, 0.661608, 0.749160,
		34.176308, 36.151539, 36.753342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723240, 36.271530, 36.033760>,  <34.153797, 35.688412, 36.228931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723240, 36.271530, 36.033760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998798, 36.375572, 36.304394>,  <34.164131, 36.438000, 36.466774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998798, 36.375572, 36.304394>,  <33.723240, 36.271530, 36.033760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998798, 36.375572, 36.304394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372031, 0.674208, -0.637994,
		-0.622108, 0.691221, 0.367689,
		0.688894, 0.260110, 0.676586,
		34.205467, 36.453606, 36.507370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672222, 37.022648, 36.206669>,  <33.723240, 36.271530, 36.033760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672222, 37.022648, 36.206669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038708, 36.864517, 36.232838>,  <34.258598, 36.769638, 36.248539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038708, 36.864517, 36.232838>,  <33.672222, 37.022648, 36.206669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038708, 36.864517, 36.232838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316952, 0.615100, -0.721937,
		0.245156, 0.682182, 0.688859,
		0.916210, -0.395322, 0.065423,
		34.313572, 36.745922, 36.252464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142891, 37.559181, 36.373802>,  <33.672222, 37.022648, 36.206669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142891, 37.559181, 36.373802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366413, 37.287937, 36.182842>,  <34.500526, 37.125191, 36.068268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366413, 37.287937, 36.182842>,  <34.142891, 37.559181, 36.373802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366413, 37.287937, 36.182842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314123, 0.705844, -0.634910,
		0.767504, 0.204830, 0.607439,
		0.558806, -0.678107, -0.477396,
		34.534054, 37.084503, 36.039623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911011, 37.937229, 36.212482>,  <34.142891, 37.559181, 36.373802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911011, 37.937229, 36.212482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939419, 37.594662, 36.007931>,  <34.956463, 37.389122, 35.885201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939419, 37.594662, 36.007931>,  <34.911011, 37.937229, 36.212482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939419, 37.594662, 36.007931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493121, 0.475789, -0.728325,
		0.867058, -0.200448, 0.456105,
		0.071018, -0.856414, -0.511382,
		34.960724, 37.337738, 35.854515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563374, 37.817291, 36.067707>,  <34.911011, 37.937229, 36.212482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563374, 37.817291, 36.067707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329708, 37.640972, 35.795105>,  <35.189507, 37.535183, 35.631546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329708, 37.640972, 35.795105>,  <35.563374, 37.817291, 36.067707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329708, 37.640972, 35.795105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624549, 0.292124, -0.724294,
		0.518349, -0.848742, 0.104650,
		-0.584168, -0.440796, -0.681503,
		35.154457, 37.508732, 35.590652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051632, 37.690331, 35.612469>,  <35.563374, 37.817291, 36.067707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051632, 37.690331, 35.612469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709919, 37.657516, 35.407150>,  <35.504890, 37.637829, 35.283958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709919, 37.657516, 35.407150>,  <36.051632, 37.690331, 35.612469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709919, 37.657516, 35.407150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439698, 0.412637, -0.797744,
		0.277250, -0.907194, -0.316437,
		-0.854282, -0.082038, -0.513295,
		35.453636, 37.632904, 35.253162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260490, 37.162861, 35.126431>,  <36.051632, 37.690331, 35.612469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260490, 37.162861, 35.126431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954659, 37.391125, 35.006580>,  <35.771160, 37.528084, 34.934669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954659, 37.391125, 35.006580>,  <36.260490, 37.162861, 35.126431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954659, 37.391125, 35.006580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500402, 0.232564, -0.833974,
		-0.406230, -0.787569, -0.463370,
		-0.764575, 0.570656, -0.299626,
		35.725285, 37.562321, 34.916691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063911, 36.908798, 34.404728>,  <36.260490, 37.162861, 35.126431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063911, 36.908798, 34.404728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879673, 37.263786, 34.398296>,  <35.769131, 37.476780, 34.394440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879673, 37.263786, 34.398296>,  <36.063911, 36.908798, 34.404728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879673, 37.263786, 34.398296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407015, 0.195076, -0.892348,
		-0.788792, -0.417552, -0.451063,
		-0.460593, 0.887466, -0.016076,
		35.741497, 37.530025, 34.393475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763988, 36.988300, 33.775074>,  <36.063911, 36.908798, 34.404728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763988, 36.988300, 33.775074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794231, 37.370853, 33.887932>,  <35.812378, 37.600388, 33.955647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794231, 37.370853, 33.887932>,  <35.763988, 36.988300, 33.775074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794231, 37.370853, 33.887932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345525, 0.240299, -0.907121,
		-0.935359, 0.166071, -0.312288,
		0.075604, 0.956387, 0.282148,
		35.816914, 37.657768, 33.972576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742603, 37.376472, 33.208057>,  <35.763988, 36.988300, 33.775074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742603, 37.376472, 33.208057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877922, 37.681831, 33.428158>,  <35.959114, 37.865047, 33.560219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877922, 37.681831, 33.428158>,  <35.742603, 37.376472, 33.208057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877922, 37.681831, 33.428158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390415, 0.418176, -0.820186,
		-0.856229, 0.492298, -0.156572,
		0.338302, 0.763395, 0.550255,
		35.979412, 37.910851, 33.593235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529785, 37.995129, 32.844589>,  <35.742603, 37.376472, 33.208057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529785, 37.995129, 32.844589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835022, 38.105476, 33.078369>,  <36.018166, 38.171684, 33.218639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835022, 38.105476, 33.078369>,  <35.529785, 37.995129, 32.844589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835022, 38.105476, 33.078369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423733, 0.469270, -0.774749,
		-0.487995, 0.838858, 0.241202,
		0.763093, 0.275869, 0.584453,
		36.063950, 38.188236, 33.253704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703735, 38.620674, 32.613575>,  <35.529785, 37.995129, 32.844589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703735, 38.620674, 32.613575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034420, 38.518684, 32.814190>,  <36.232830, 38.457493, 32.934559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034420, 38.518684, 32.814190>,  <35.703735, 38.620674, 32.613575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034420, 38.518684, 32.814190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550465, 0.550922, -0.627274,
		-0.116373, 0.794654, 0.595805,
		0.826708, -0.254972, 0.501541,
		36.282433, 38.442192, 32.964653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097649, 39.236443, 32.634975>,  <35.703735, 38.620674, 32.613575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097649, 39.236443, 32.634975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332176, 38.919113, 32.700554>,  <36.472893, 38.728718, 32.739902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332176, 38.919113, 32.700554>,  <36.097649, 39.236443, 32.634975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332176, 38.919113, 32.700554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690201, 0.383261, -0.613786,
		0.424095, 0.473027, 0.772262,
		0.586315, -0.793320, 0.163945,
		36.508072, 38.681118, 32.749737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761555, 39.542027, 32.567562>,  <36.097649, 39.236443, 32.634975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761555, 39.542027, 32.567562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801636, 39.147892, 32.512321>,  <36.825684, 38.911411, 32.479179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801636, 39.147892, 32.512321>,  <36.761555, 39.542027, 32.567562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801636, 39.147892, 32.512321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663422, 0.169604, -0.728770,
		0.741506, -0.018595, 0.670688,
		0.100200, -0.985337, -0.138099,
		36.831696, 38.852291, 32.470890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525345, 39.417061, 32.631126>,  <36.761555, 39.542027, 32.567562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525345, 39.417061, 32.631126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358402, 39.107151, 32.441162>,  <37.258236, 38.921204, 32.327183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358402, 39.107151, 32.441162>,  <37.525345, 39.417061, 32.631126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358402, 39.107151, 32.441162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664617, 0.096165, -0.740970,
		0.619753, -0.624883, 0.474793,
		-0.417361, -0.774773, -0.474906,
		37.233192, 38.874718, 32.298691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054634, 38.874844, 32.485733>,  <37.525345, 39.417061, 32.631126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054634, 38.874844, 32.485733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746883, 38.817833, 32.236656>,  <37.562233, 38.783627, 32.087212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746883, 38.817833, 32.236656>,  <38.054634, 38.874844, 32.485733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746883, 38.817833, 32.236656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616589, 0.089078, -0.782229,
		0.166956, -0.985774, 0.019346,
		-0.769379, -0.142526, -0.622690,
		37.516071, 38.775074, 32.049850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387661, 38.524212, 31.913387>,  <38.054634, 38.874844, 32.485733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387661, 38.524212, 31.913387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043991, 38.679020, 31.779507>,  <37.837788, 38.771904, 31.699179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043991, 38.679020, 31.779507>,  <38.387661, 38.524212, 31.913387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043991, 38.679020, 31.779507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436722, 0.213821, -0.873816,
		-0.266620, -0.896936, -0.352731,
		-0.859178, 0.387023, -0.334702,
		37.786236, 38.795128, 31.679096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504704, 38.430668, 31.249634>,  <38.387661, 38.524212, 31.913387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504704, 38.430668, 31.249634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162823, 38.637028, 31.226570>,  <37.957695, 38.760845, 31.212732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162823, 38.637028, 31.226570>,  <38.504704, 38.430668, 31.249634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162823, 38.637028, 31.226570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227846, 0.273020, -0.934637,
		-0.466438, -0.811977, -0.350897,
		-0.854706, 0.515900, -0.057660,
		37.906410, 38.791798, 31.209272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060928, 38.095478, 30.663422>,  <38.504704, 38.430668, 31.249634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060928, 38.095478, 30.663422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948597, 38.476479, 30.710552>,  <37.881199, 38.705078, 30.738831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948597, 38.476479, 30.710552>,  <38.060928, 38.095478, 30.663422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948597, 38.476479, 30.710552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119701, 0.156568, -0.980387,
		-0.952264, -0.261217, -0.157983,
		-0.280828, 0.952498, 0.117826,
		37.864349, 38.762226, 30.745899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670650, 38.278210, 30.100357>,  <38.060928, 38.095478, 30.663422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670650, 38.278210, 30.100357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805737, 38.631084, 30.231621>,  <37.886787, 38.842812, 30.310379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805737, 38.631084, 30.231621>,  <37.670650, 38.278210, 30.100357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805737, 38.631084, 30.231621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271061, 0.242723, -0.931457,
		-0.901375, 0.403515, -0.157158,
		0.337711, 0.882191, 0.328161,
		37.907051, 38.895741, 30.330069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523464, 38.716717, 29.585360>,  <37.670650, 38.278210, 30.100357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523464, 38.716717, 29.585360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813004, 38.907570, 29.784712>,  <37.986729, 39.022083, 29.904324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813004, 38.907570, 29.784712>,  <37.523464, 38.716717, 29.585360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813004, 38.907570, 29.784712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396794, 0.303052, -0.866437,
		-0.564444, 0.824925, 0.030039,
		0.723849, 0.477136, 0.498381,
		38.030159, 39.050713, 29.934227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561741, 39.375732, 29.301064>,  <37.523464, 38.716717, 29.585360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561741, 39.375732, 29.301064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910816, 39.283604, 29.473282>,  <38.120262, 39.228329, 29.576612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910816, 39.283604, 29.473282>,  <37.561741, 39.375732, 29.301064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910816, 39.283604, 29.473282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486053, 0.325647, -0.810991,
		0.046581, 0.917010, 0.396136,
		0.872687, -0.230319, 0.430547,
		38.172623, 39.214508, 29.602446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900864, 40.052326, 29.093016>,  <37.561741, 39.375732, 29.301064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900864, 40.052326, 29.093016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179279, 39.791828, 29.213955>,  <38.346329, 39.635529, 29.286518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179279, 39.791828, 29.213955>,  <37.900864, 40.052326, 29.093016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179279, 39.791828, 29.213955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626423, 0.344999, -0.698978,
		0.350896, 0.675911, 0.648086,
		0.696036, -0.651245, 0.302348,
		38.388088, 39.596455, 29.304659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631592, 40.398540, 29.207592>,  <37.900864, 40.052326, 29.093016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631592, 40.398540, 29.207592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692848, 40.004288, 29.179083>,  <38.729603, 39.767738, 29.161978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692848, 40.004288, 29.179083>,  <38.631592, 40.398540, 29.207592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692848, 40.004288, 29.179083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751080, 0.162966, -0.639782,
		0.642203, 0.044447, 0.765245,
		0.153145, -0.985630, -0.071274,
		38.738792, 39.708599, 29.157701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358898, 40.252567, 29.473871>,  <38.631592, 40.398540, 29.207592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358898, 40.252567, 29.473871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217140, 39.968033, 29.231087>,  <39.132084, 39.797310, 29.085417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217140, 39.968033, 29.231087>,  <39.358898, 40.252567, 29.473871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217140, 39.968033, 29.231087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806707, 0.095677, -0.583154,
		0.472893, -0.696306, 0.539936,
		-0.354395, -0.711340, -0.606960,
		39.110821, 39.754631, 29.048998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931702, 39.756256, 29.379833>,  <39.358898, 40.252567, 29.473871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931702, 39.756256, 29.379833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.700378, 39.663937, 29.066835>,  <39.561584, 39.608543, 28.879038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.700378, 39.663937, 29.066835>,  <39.931702, 39.756256, 29.379833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700378, 39.663937, 29.066835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786466, 0.097257, -0.609929,
		0.216874, -0.968129, 0.125272,
		-0.578306, -0.230799, -0.782492,
		39.526886, 39.594696, 28.832088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242828, 39.141174, 28.978796>,  <39.931702, 39.756256, 29.379833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242828, 39.141174, 28.978796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000210, 39.356491, 28.744753>,  <39.854641, 39.485680, 28.604326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000210, 39.356491, 28.744753>,  <40.242828, 39.141174, 28.978796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000210, 39.356491, 28.744753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735914, 0.101594, -0.669410,
		-0.300892, -0.836614, -0.457756,
		-0.606543, 0.538289, -0.585107,
		39.818245, 39.517979, 28.569221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844055, 38.842674, 29.161264>,  <40.242828, 39.141174, 28.978796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844055, 38.842674, 29.161264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149750, 39.085442, 29.248531>,  <41.333164, 39.231102, 29.300892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149750, 39.085442, 29.248531>,  <40.844055, 38.842674, 29.161264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149750, 39.085442, 29.248531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217107, -0.076435, 0.973151,
		0.607299, -0.791080, 0.073352,
		0.764233, 0.606919, 0.218168,
		41.379021, 39.267517, 29.313982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240982, 38.465321, 29.618019>,  <40.844055, 38.842674, 29.161264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240982, 38.465321, 29.618019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.339592, 38.848984, 29.673517>,  <41.398758, 39.079182, 29.706816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.339592, 38.848984, 29.673517>,  <41.240982, 38.465321, 29.618019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339592, 38.848984, 29.673517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228274, -0.081667, 0.970166,
		0.941869, -0.270840, 0.198817,
		0.246523, 0.959154, 0.138745,
		41.413548, 39.136730, 29.715141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841930, 38.494072, 30.204464>,  <41.240982, 38.465321, 29.618019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841930, 38.494072, 30.204464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.649830, 38.844551, 30.188269>,  <41.534569, 39.054840, 30.178553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.649830, 38.844551, 30.188269>,  <41.841930, 38.494072, 30.204464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649830, 38.844551, 30.188269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288253, -0.114063, 0.950737,
		0.828415, 0.468260, 0.307346,
		-0.480249, 0.876198, -0.040486,
		41.505756, 39.107410, 30.176123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133392, 38.868450, 30.730598>,  <41.841930, 38.494072, 30.204464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133392, 38.868450, 30.730598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.767975, 39.015606, 30.661215>,  <41.548725, 39.103901, 30.619585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.767975, 39.015606, 30.661215>,  <42.133392, 38.868450, 30.730598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767975, 39.015606, 30.661215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219870, -0.087888, 0.971562,
		0.342184, 0.925706, 0.161177,
		-0.913547, 0.367891, -0.173461,
		41.493912, 39.125973, 30.609177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028782, 39.407509, 31.292271>,  <42.133392, 38.868450, 30.730598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028782, 39.407509, 31.292271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.676208, 39.287479, 31.146381>,  <41.464664, 39.215462, 31.058847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.676208, 39.287479, 31.146381>,  <42.028782, 39.407509, 31.292271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676208, 39.287479, 31.146381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389875, 0.026411, 0.920489,
		-0.266582, 0.953550, -0.140271,
		-0.881437, -0.300074, -0.364725,
		41.411777, 39.197456, 31.036964>
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
