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
	<24.643585, 35.156368, 34.619190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457138, 34.950150, 34.906788>,  <24.345270, 34.826420, 35.079346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457138, 34.950150, 34.906788>,  <24.643585, 35.156368, 34.619190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457138, 34.950150, 34.906788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617477, 0.392436, 0.681701,
		-0.633605, 0.761714, 0.135414,
		-0.466120, -0.515544, 0.718990,
		24.317303, 34.795486, 35.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507744, 35.031403, 33.865067>,  <24.643585, 35.156368, 34.619190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507744, 35.031403, 33.865067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150436, 35.209503, 33.889790>,  <23.936052, 35.316364, 33.904625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150436, 35.209503, 33.889790>,  <24.507744, 35.031403, 33.865067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.150436, 35.209503, 33.889790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421517, -0.781894, -0.459309,
		-0.156177, -0.436342, 0.886123,
		-0.893270, 0.445250, 0.061812,
		23.882456, 35.343079, 33.908333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784088, 35.219017, 33.215164>,  <24.507744, 35.031403, 33.865067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784088, 35.219017, 33.215164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099417, 35.012127, 33.081882>,  <25.288614, 34.887993, 33.001915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099417, 35.012127, 33.081882>,  <24.784088, 35.219017, 33.215164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099417, 35.012127, 33.081882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288778, 0.789255, -0.541926,
		0.543280, 0.330991, 0.771551,
		0.788323, -0.517225, -0.333204,
		25.335915, 34.856960, 32.981922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308687, 35.622772, 33.433277>,  <24.784088, 35.219017, 33.215164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308687, 35.622772, 33.433277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457472, 35.379482, 33.152790>,  <25.546743, 35.233509, 32.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457472, 35.379482, 33.152790>,  <25.308687, 35.622772, 33.433277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457472, 35.379482, 33.152790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327210, 0.792844, -0.514132,
		0.868665, -0.038208, 0.493925,
		0.371961, -0.608226, -0.701218,
		25.569059, 35.197014, 32.942425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039761, 35.747749, 33.316017>,  <25.308687, 35.622772, 33.433277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039761, 35.747749, 33.316017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902636, 35.592075, 32.974018>,  <25.820360, 35.498672, 32.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902636, 35.592075, 32.974018>,  <26.039761, 35.747749, 33.316017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902636, 35.592075, 32.974018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324021, 0.805303, -0.496485,
		0.881753, -0.447237, -0.149965,
		-0.342814, -0.389185, -0.854993,
		25.799791, 35.475319, 32.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523331, 35.983402, 32.868073>,  <26.039761, 35.747749, 33.316017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523331, 35.983402, 32.868073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234718, 35.856735, 32.621784>,  <26.061550, 35.780735, 32.474010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234718, 35.856735, 32.621784>,  <26.523331, 35.983402, 32.868073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234718, 35.856735, 32.621784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207350, 0.749645, -0.628521,
		0.660604, -0.581168, -0.475233,
		-0.721532, -0.316664, -0.615724,
		26.018259, 35.761734, 32.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832241, 35.876900, 32.176460>,  <26.523331, 35.983402, 32.868073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832241, 35.876900, 32.176460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444870, 35.963634, 32.127258>,  <26.212448, 36.015675, 32.097736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444870, 35.963634, 32.127258>,  <26.832241, 35.876900, 32.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444870, 35.963634, 32.127258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234085, 0.621238, -0.747841,
		-0.085742, -0.753024, -0.652382,
		-0.968428, 0.216834, -0.123006,
		26.154341, 36.028687, 32.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533863, 35.738583, 31.513159>,  <26.832241, 35.876900, 32.176460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533863, 35.738583, 31.513159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325308, 36.043400, 31.666752>,  <26.200174, 36.226292, 31.758907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325308, 36.043400, 31.666752>,  <26.533863, 35.738583, 31.513159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325308, 36.043400, 31.666752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228752, 0.558337, -0.797453,
		-0.822087, -0.327946, -0.465430,
		-0.521388, 0.762044, 0.383983,
		26.168892, 36.272015, 31.781946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304508, 36.058167, 30.890951>,  <26.533863, 35.738583, 31.513159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304508, 36.058167, 30.890951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277203, 36.315369, 31.196075>,  <26.260818, 36.469692, 31.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277203, 36.315369, 31.196075>,  <26.304508, 36.058167, 30.890951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277203, 36.315369, 31.196075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430872, 0.708613, -0.558763,
		-0.899827, 0.290530, -0.325428,
		-0.068265, 0.643008, 0.762811,
		26.256723, 36.508270, 31.424919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152649, 36.675697, 30.596273>,  <26.304508, 36.058167, 30.890951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152649, 36.675697, 30.596273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318153, 36.775990, 30.946344>,  <26.417456, 36.836166, 31.156387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318153, 36.775990, 30.946344>,  <26.152649, 36.675697, 30.596273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318153, 36.775990, 30.946344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506190, 0.735664, -0.450078,
		-0.756686, 0.629230, 0.177470,
		0.413760, 0.250734, 0.875177,
		26.442282, 36.851212, 31.208897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234135, 37.429855, 30.527178>,  <26.152649, 36.675697, 30.596273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234135, 37.429855, 30.527178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495893, 37.315243, 30.807081>,  <26.652948, 37.246475, 30.975023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495893, 37.315243, 30.807081>,  <26.234135, 37.429855, 30.527178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495893, 37.315243, 30.807081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751894, 0.344663, -0.562018,
		-0.080144, 0.893927, 0.440989,
		0.654395, -0.286534, 0.699761,
		26.692211, 37.229282, 31.017010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874283, 37.908051, 30.605543>,  <26.234135, 37.429855, 30.527178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874283, 37.908051, 30.605543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976967, 37.529526, 30.684128>,  <27.038576, 37.302410, 30.731279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976967, 37.529526, 30.684128>,  <26.874283, 37.908051, 30.605543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976967, 37.529526, 30.684128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752788, 0.068287, -0.654712,
		0.606145, 0.315964, 0.729901,
		0.256708, -0.946310, 0.196463,
		27.053980, 37.245632, 30.743067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357491, 38.157879, 30.054930>,  <26.874283, 37.908051, 30.605543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357491, 38.157879, 30.054930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659897, 38.035076, 30.286167>,  <27.841341, 37.961395, 30.424910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659897, 38.035076, 30.286167>,  <27.357491, 38.157879, 30.054930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659897, 38.035076, 30.286167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626884, -0.593679, 0.504541,
		0.188306, -0.743837, -0.641286,
		0.756014, -0.307004, 0.578093,
		27.886702, 37.942974, 30.459595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340036, 37.330902, 30.244436>,  <27.357491, 38.157879, 30.054930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340036, 37.330902, 30.244436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558233, 37.518635, 30.522188>,  <27.689152, 37.631275, 30.688839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558233, 37.518635, 30.522188>,  <27.340036, 37.330902, 30.244436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558233, 37.518635, 30.522188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434628, -0.549986, 0.713172,
		0.716615, -0.690827, -0.096028,
		0.545492, 0.469333, 0.694381,
		27.721880, 37.659435, 30.730503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756121, 36.831169, 30.563444>,  <27.340036, 37.330902, 30.244436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756121, 36.831169, 30.563444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656656, 37.139126, 30.798536>,  <27.596977, 37.323902, 30.939592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656656, 37.139126, 30.798536>,  <27.756121, 36.831169, 30.563444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656656, 37.139126, 30.798536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497244, -0.622196, 0.604666,
		0.831214, -0.141888, 0.537542,
		-0.248662, 0.769896, 0.587730,
		27.582058, 37.370094, 30.974855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804918, 36.553410, 31.278448>,  <27.756121, 36.831169, 30.563444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804918, 36.553410, 31.278448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560019, 36.861000, 31.204880>,  <27.413078, 37.045555, 31.160738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560019, 36.861000, 31.204880>,  <27.804918, 36.553410, 31.278448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560019, 36.861000, 31.204880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705121, -0.425793, 0.567014,
		0.357708, 0.476840, 0.802912,
		-0.612249, 0.768976, -0.183921,
		27.376343, 37.091694, 31.149704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606974, 36.889854, 31.851967>,  <27.804918, 36.553410, 31.278448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606974, 36.889854, 31.851967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313505, 36.963055, 31.590208>,  <27.137424, 37.006977, 31.433153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313505, 36.963055, 31.590208>,  <27.606974, 36.889854, 31.851967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313505, 36.963055, 31.590208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666868, -0.378791, 0.641720,
		-0.130443, 0.907208, 0.399948,
		-0.733670, 0.183004, -0.654398,
		27.093405, 37.017956, 31.393888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043388, 37.179367, 32.232201>,  <27.606974, 36.889854, 31.851967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043388, 37.179367, 32.232201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835970, 37.104996, 31.898365>,  <26.711519, 37.060371, 31.698065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835970, 37.104996, 31.898365>,  <27.043388, 37.179367, 32.232201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835970, 37.104996, 31.898365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726233, -0.419432, 0.544667,
		-0.451324, 0.888541, 0.082466,
		-0.518548, -0.185932, -0.834588,
		26.680405, 37.049217, 31.647989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305994, 37.387379, 32.403061>,  <27.043388, 37.179367, 32.232201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305994, 37.387379, 32.403061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300840, 37.112164, 32.112839>,  <26.297749, 36.947033, 31.938705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300840, 37.112164, 32.112839>,  <26.305994, 37.387379, 32.403061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300840, 37.112164, 32.112839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690765, -0.518517, 0.503970,
		-0.722965, 0.507682, -0.468594,
		-0.012883, -0.688040, -0.725558,
		26.296976, 36.905750, 31.895172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642754, 37.241310, 32.396763>,  <26.305994, 37.387379, 32.403061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642754, 37.241310, 32.396763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812958, 36.936253, 32.201900>,  <25.915079, 36.753220, 32.084984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812958, 36.936253, 32.201900>,  <25.642754, 37.241310, 32.396763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812958, 36.936253, 32.201900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552484, -0.645280, 0.527613,
		-0.716731, 0.044643, -0.695919,
		0.425508, -0.762641, -0.487157,
		25.940611, 36.707458, 32.055756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189926, 36.644199, 32.565296>,  <25.642754, 37.241310, 32.396763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189926, 36.644199, 32.565296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427654, 36.582344, 32.249607>,  <25.570292, 36.545231, 32.060192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427654, 36.582344, 32.249607>,  <25.189926, 36.644199, 32.565296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427654, 36.582344, 32.249607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157920, -0.984674, 0.074010,
		-0.788572, 0.080649, -0.609631,
		0.594319, -0.154635, -0.789223,
		25.605949, 36.535954, 32.012840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826918, 36.331116, 31.941338>,  <25.189926, 36.644199, 32.565296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826918, 36.331116, 31.941338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214842, 36.240608, 31.977726>,  <25.447596, 36.186306, 31.999559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214842, 36.240608, 31.977726>,  <24.826918, 36.331116, 31.941338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214842, 36.240608, 31.977726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240909, -0.946825, 0.213273,
		0.037877, -0.228750, -0.972748,
		0.969808, -0.226265, 0.090971,
		25.505785, 36.172729, 32.005016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907104, 35.683521, 31.669819>,  <24.826918, 36.331116, 31.941338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907104, 35.683521, 31.669819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235268, 35.680683, 31.898512>,  <25.432165, 35.678982, 32.035728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235268, 35.680683, 31.898512>,  <24.907104, 35.683521, 31.669819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235268, 35.680683, 31.898512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152915, -0.966223, 0.207435,
		0.550950, -0.257608, -0.793784,
		0.820409, -0.007096, 0.571733,
		25.481390, 35.678555, 32.070030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307590, 35.378422, 31.247639>,  <24.907104, 35.683521, 31.669819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307590, 35.378422, 31.247639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367815, 35.333729, 31.640545>,  <25.403950, 35.306911, 31.876289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367815, 35.333729, 31.640545>,  <25.307590, 35.378422, 31.247639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367815, 35.333729, 31.640545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105036, -0.986161, -0.128274,
		0.983005, 0.122487, -0.136744,
		0.150563, -0.111731, 0.982266,
		25.412985, 35.300209, 31.935225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448206, 34.775143, 31.673431>,  <25.307590, 35.378422, 31.247639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448206, 34.775143, 31.673431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584610, 34.995102, 31.978411>,  <25.666452, 35.127079, 32.161396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584610, 34.995102, 31.978411>,  <25.448206, 34.775143, 31.673431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584610, 34.995102, 31.978411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124153, -0.777613, 0.616364,
		0.931825, -0.304847, -0.196903,
		0.341011, 0.549897, 0.762446,
		25.686913, 35.160072, 32.207146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056160, 34.442970, 32.028355>,  <25.448206, 34.775143, 31.673431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056160, 34.442970, 32.028355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868780, 34.678574, 32.291756>,  <25.756351, 34.819935, 32.449795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868780, 34.678574, 32.291756>,  <26.056160, 34.442970, 32.028355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868780, 34.678574, 32.291756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085546, -0.772080, 0.629741,
		0.879339, 0.238670, 0.412068,
		-0.468450, 0.589007, 0.658503,
		25.728245, 34.855274, 32.489307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349974, 34.166073, 32.587910>,  <26.056160, 34.442970, 32.028355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349974, 34.166073, 32.587910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035397, 34.382668, 32.706772>,  <25.846651, 34.512623, 32.778088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035397, 34.382668, 32.706772>,  <26.349974, 34.166073, 32.587910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035397, 34.382668, 32.706772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339496, -0.780856, 0.524411,
		0.515996, 0.311537, 0.797930,
		-0.786442, 0.541488, 0.297153,
		25.799463, 34.545113, 32.795918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353706, 34.120872, 33.333431>,  <26.349974, 34.166073, 32.587910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353706, 34.120872, 33.333431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978024, 34.177425, 33.208275>,  <25.752615, 34.211357, 33.133179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978024, 34.177425, 33.208275>,  <26.353706, 34.120872, 33.333431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978024, 34.177425, 33.208275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305922, -0.758341, 0.575614,
		-0.155898, 0.636341, 0.755491,
		-0.939206, 0.141384, -0.312894,
		25.696262, 34.219841, 33.114407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545727, 33.557735, 33.734318>,  <26.353706, 34.120872, 33.333431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545727, 33.557735, 33.734318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863564, 33.495590, 33.969090>,  <27.054266, 33.458305, 34.109951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863564, 33.495590, 33.969090>,  <26.545727, 33.557735, 33.734318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863564, 33.495590, 33.969090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114334, -0.987700, -0.106657,
		0.596282, 0.017643, -0.802581,
		0.794591, -0.155361, 0.586931,
		27.101940, 33.448982, 34.145168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164515, 33.109463, 33.430672>,  <26.545727, 33.557735, 33.734318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164515, 33.109463, 33.430672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118034, 33.045708, 33.822815>,  <27.090147, 33.007454, 34.058102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118034, 33.045708, 33.822815>,  <27.164515, 33.109463, 33.430672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118034, 33.045708, 33.822815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102826, -0.979806, -0.171484,
		0.987889, -0.120732, 0.097463,
		-0.116199, -0.159386, 0.980354,
		27.083174, 32.997890, 34.116920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630978, 32.543217, 33.532001>,  <27.164515, 33.109463, 33.430672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630978, 32.543217, 33.532001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377485, 32.552425, 33.841286>,  <27.225389, 32.557953, 34.026855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377485, 32.552425, 33.841286>,  <27.630978, 32.543217, 33.532001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377485, 32.552425, 33.841286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070392, -0.997126, -0.028002,
		0.770344, -0.072173, 0.633530,
		-0.633731, 0.023024, 0.773211,
		27.187366, 32.559334, 34.073250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832813, 32.151001, 34.073284>,  <27.630978, 32.543217, 33.532001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832813, 32.151001, 34.073284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438072, 32.165405, 34.136311>,  <27.201227, 32.174049, 34.174126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438072, 32.165405, 34.136311>,  <27.832813, 32.151001, 34.073284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438072, 32.165405, 34.136311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040252, -0.998906, -0.023784,
		0.156534, -0.029813, 0.987222,
		-0.986852, 0.036015, 0.157563,
		27.142017, 32.176208, 34.183578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693140, 31.630684, 34.467457>,  <27.832813, 32.151001, 34.073284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693140, 31.630684, 34.467457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323511, 31.689775, 34.326450>,  <27.101734, 31.725231, 34.241848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323511, 31.689775, 34.326450>,  <27.693140, 31.630684, 34.467457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323511, 31.689775, 34.326450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082113, -0.977482, -0.194385,
		-0.373292, -0.150680, 0.915395,
		-0.924073, 0.147728, -0.352514,
		27.046289, 31.734095, 34.220695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338812, 31.117668, 34.765728>,  <27.693140, 31.630684, 34.467457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338812, 31.117668, 34.765728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106541, 31.216528, 34.455444>,  <26.967178, 31.275845, 34.269272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106541, 31.216528, 34.455444>,  <27.338812, 31.117668, 34.765728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106541, 31.216528, 34.455444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086552, -0.966149, -0.243034,
		-0.809519, -0.073985, 0.582413,
		-0.580679, 0.247150, -0.775712,
		26.932337, 31.290672, 34.222733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688759, 30.668653, 34.782967>,  <27.338812, 31.117668, 34.765728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688759, 30.668653, 34.782967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829514, 30.802204, 34.433178>,  <26.913967, 30.882334, 34.223305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829514, 30.802204, 34.433178>,  <26.688759, 30.668653, 34.782967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829514, 30.802204, 34.433178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038348, -0.928297, -0.369858,
		-0.935257, 0.163683, -0.313852,
		0.351887, 0.333876, -0.874473,
		26.935080, 30.902367, 34.170837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977110, 30.974869, 34.807343>,  <26.688759, 30.668653, 34.782967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977110, 30.974869, 34.807343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061256, 31.061083, 34.425915>,  <26.111744, 31.112810, 34.197060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061256, 31.061083, 34.425915>,  <25.977110, 30.974869, 34.807343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061256, 31.061083, 34.425915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339852, -0.898438, -0.278046,
		-0.916650, 0.382563, -0.115750,
		0.210364, 0.215533, -0.953568,
		26.124365, 31.125742, 34.139843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354490, 31.004740, 34.328487>,  <25.977110, 30.974869, 34.807343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354490, 31.004740, 34.328487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691570, 30.918398, 34.131203>,  <25.893818, 30.866592, 34.012833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691570, 30.918398, 34.131203>,  <25.354490, 31.004740, 34.328487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691570, 30.918398, 34.131203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437188, -0.809003, -0.392914,
		-0.314201, 0.546737, -0.776116,
		0.842701, -0.215855, -0.493216,
		25.944380, 30.853642, 33.983238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166334, 31.101868, 33.653225>,  <25.354490, 31.004740, 34.328487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166334, 31.101868, 33.653225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474590, 30.847027, 33.659103>,  <25.659544, 30.694122, 33.662632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474590, 30.847027, 33.659103>,  <25.166334, 31.101868, 33.653225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474590, 30.847027, 33.659103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582144, -0.713172, -0.390504,
		0.259274, 0.292380, -0.920484,
		0.770639, -0.637102, 0.014700,
		25.705782, 30.655897, 33.663513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226700, 30.788496, 32.979557>,  <25.166334, 31.101868, 33.653225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226700, 30.788496, 32.979557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316877, 30.566191, 33.299633>,  <25.370983, 30.432808, 33.491676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316877, 30.566191, 33.299633>,  <25.226700, 30.788496, 32.979557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316877, 30.566191, 33.299633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722770, -0.646148, -0.245144,
		0.653282, -0.523086, -0.547361,
		0.225444, -0.555764, 0.800188,
		25.384510, 30.399462, 33.539688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365351, 30.047993, 32.785500>,  <25.226700, 30.788496, 32.979557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365351, 30.047993, 32.785500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220165, 30.115026, 33.152142>,  <25.133055, 30.155247, 33.372128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220165, 30.115026, 33.152142>,  <25.365351, 30.047993, 32.785500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220165, 30.115026, 33.152142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816702, -0.530811, -0.226355,
		0.448614, -0.830756, 0.329530,
		-0.362964, 0.167582, 0.916610,
		25.111277, 30.165300, 33.427124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299730, 29.496908, 33.343948>,  <25.365351, 30.047993, 32.785500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299730, 29.496908, 33.343948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021563, 29.783876, 33.327454>,  <24.854662, 29.956057, 33.317558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021563, 29.783876, 33.327454>,  <25.299730, 29.496908, 33.343948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021563, 29.783876, 33.327454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670943, -0.668778, -0.320268,
		-0.257344, -0.195053, 0.946429,
		-0.695420, 0.717419, -0.041237,
		24.812937, 29.999102, 33.315083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607321, 29.571299, 33.996437>,  <25.299730, 29.496908, 33.343948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.607321, 29.571299, 33.996437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621429, 29.734562, 33.631546>,  <25.629894, 29.832520, 33.412609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621429, 29.734562, 33.631546>,  <25.607321, 29.571299, 33.996437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621429, 29.734562, 33.631546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803769, 0.530858, 0.268599,
		0.593896, -0.742695, -0.309342,
		0.035271, 0.408159, -0.912229,
		25.632011, 29.857010, 33.357876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221304, 29.470800, 33.909168>,  <25.607321, 29.571299, 33.996437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221304, 29.470800, 33.909168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075298, 29.778479, 33.699368>,  <25.987694, 29.963085, 33.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075298, 29.778479, 33.699368>,  <26.221304, 29.470800, 33.909168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075298, 29.778479, 33.699368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729712, 0.586242, 0.351909,
		0.578173, -0.254285, -0.775277,
		-0.365015, 0.769194, -0.524504,
		25.965794, 30.009237, 33.542015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725142, 29.886595, 33.528328>,  <26.221304, 29.470800, 33.909168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725142, 29.886595, 33.528328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415939, 30.126972, 33.609650>,  <26.230419, 30.271198, 33.658443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415939, 30.126972, 33.609650>,  <26.725142, 29.886595, 33.528328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415939, 30.126972, 33.609650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631195, 0.696357, 0.341583,
		0.063696, 0.392372, -0.917598,
		-0.773004, 0.600941, 0.203309,
		26.184038, 30.307255, 33.670643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901951, 30.473288, 33.259148>,  <26.725142, 29.886595, 33.528328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901951, 30.473288, 33.259148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609322, 30.590298, 33.505474>,  <26.433744, 30.660503, 33.653271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609322, 30.590298, 33.505474>,  <26.901951, 30.473288, 33.259148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609322, 30.590298, 33.505474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526916, 0.815785, 0.238443,
		-0.432624, 0.498922, -0.750942,
		-0.731571, 0.292527, 0.615818,
		26.389851, 30.678057, 33.690220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675505, 31.116993, 33.021271>,  <26.901951, 30.473288, 33.259148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675505, 31.116993, 33.021271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603249, 31.075991, 33.412548>,  <26.559895, 31.051390, 33.647316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603249, 31.075991, 33.412548>,  <26.675505, 31.116993, 33.021271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603249, 31.075991, 33.412548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261787, 0.953667, 0.148277,
		-0.948070, 0.282863, -0.145437,
		-0.180640, -0.102504, 0.978193,
		26.549057, 31.045240, 33.706005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201122, 31.625713, 33.196110>,  <26.675505, 31.116993, 33.021271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201122, 31.625713, 33.196110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411913, 31.520908, 33.519505>,  <26.538387, 31.458025, 33.713539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411913, 31.520908, 33.519505>,  <26.201122, 31.625713, 33.196110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411913, 31.520908, 33.519505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027317, 0.956021, 0.292024,
		-0.849441, -0.131804, 0.510957,
		0.526975, -0.262015, 0.808483,
		26.570005, 31.442305, 33.762051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876213, 31.868687, 33.798557>,  <26.201122, 31.625713, 33.196110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876213, 31.868687, 33.798557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250011, 31.846397, 33.939190>,  <26.474291, 31.833023, 34.023571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250011, 31.846397, 33.939190>,  <25.876213, 31.868687, 33.798557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250011, 31.846397, 33.939190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064756, 0.944580, 0.321830,
		-0.350032, -0.323517, 0.879099,
		0.934497, -0.055724, 0.351583,
		26.530361, 31.829679, 34.044666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885187, 32.187229, 34.413792>,  <25.876213, 31.868687, 33.798557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885187, 32.187229, 34.413792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273638, 32.190529, 34.318424>,  <26.506708, 32.192509, 34.261204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273638, 32.190529, 34.318424>,  <25.885187, 32.187229, 34.413792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273638, 32.190529, 34.318424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060217, 0.958559, 0.278459,
		0.230833, -0.284776, 0.930386,
		0.971128, 0.008253, -0.238415,
		26.564976, 32.193005, 34.246899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119144, 32.613842, 34.869835>,  <25.885187, 32.187229, 34.413792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119144, 32.613842, 34.869835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457169, 32.576130, 34.659317>,  <26.659983, 32.553505, 34.533005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457169, 32.576130, 34.659317>,  <26.119144, 32.613842, 34.869835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457169, 32.576130, 34.659317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245057, 0.943151, 0.224530,
		0.475208, -0.318714, 0.820121,
		0.845059, -0.094279, -0.526296,
		26.710686, 32.547848, 34.501427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782179, 32.871792, 35.359692>,  <26.119144, 32.613842, 34.869835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782179, 32.871792, 35.359692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887407, 32.909359, 34.975613>,  <26.950544, 32.931900, 34.745167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887407, 32.909359, 34.975613>,  <26.782179, 32.871792, 35.359692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887407, 32.909359, 34.975613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052954, 0.992345, 0.111571,
		0.963322, -0.080197, 0.256083,
		0.263071, 0.093918, -0.960194,
		26.966328, 32.937534, 34.687553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438570, 33.270687, 35.167881>,  <26.782179, 32.871792, 35.359692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438570, 33.270687, 35.167881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173231, 33.301041, 34.870098>,  <27.014029, 33.319252, 34.691429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173231, 33.301041, 34.870098>,  <27.438570, 33.270687, 35.167881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173231, 33.301041, 34.870098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008338, 0.995533, 0.094049,
		0.748266, 0.056180, -0.661016,
		-0.663346, 0.075886, -0.744455,
		26.974228, 33.323807, 34.646763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973042, 32.955967, 35.604099>,  <27.438570, 33.270687, 35.167881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973042, 32.955967, 35.604099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359713, 32.988457, 35.701206>,  <28.591715, 33.007950, 35.759472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359713, 32.988457, 35.701206>,  <27.973042, 32.955967, 35.604099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359713, 32.988457, 35.701206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043312, -0.882766, 0.467812,
		0.252307, -0.462738, -0.849832,
		0.966678, 0.081224, 0.242770,
		28.649715, 33.012825, 35.774036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240751, 32.364796, 35.805328>,  <27.973042, 32.955967, 35.604099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240751, 32.364796, 35.805328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567545, 32.486362, 36.001358>,  <28.763620, 32.559303, 36.118977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567545, 32.486362, 36.001358>,  <28.240751, 32.364796, 35.805328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567545, 32.486362, 36.001358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065573, -0.893296, 0.444659,
		0.572920, -0.331144, -0.749737,
		0.816984, 0.303917, 0.490073,
		28.812639, 32.577538, 36.148380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792236, 31.985817, 35.612152>,  <28.240751, 32.364796, 35.805328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792236, 31.985817, 35.612152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857006, 32.101482, 35.989548>,  <28.895868, 32.170883, 36.215984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857006, 32.101482, 35.989548>,  <28.792236, 31.985817, 35.612152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857006, 32.101482, 35.989548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331074, -0.916606, 0.224105,
		0.929608, 0.276076, -0.244153,
		0.161922, 0.289162, 0.943486,
		28.905582, 32.188232, 36.272594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041481, 31.619959, 34.931576>,  <28.792236, 31.985817, 35.612152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041481, 31.619959, 34.931576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201811, 31.790489, 35.255943>,  <29.298008, 31.892807, 35.450565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201811, 31.790489, 35.255943>,  <29.041481, 31.619959, 34.931576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201811, 31.790489, 35.255943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889667, -0.392430, -0.233435,
		0.218710, 0.815013, -0.536582,
		0.400823, 0.426325, 0.810918,
		29.322058, 31.918386, 35.499218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759449, 30.954466, 34.720356>,  <29.041481, 31.619959, 34.931576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759449, 30.954466, 34.720356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006765, 30.732014, 34.498207>,  <29.155155, 30.598543, 34.364918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006765, 30.732014, 34.498207>,  <28.759449, 30.954466, 34.720356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006765, 30.732014, 34.498207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764420, 0.261242, 0.589420,
		-0.182707, -0.788970, 0.586639,
		0.618289, -0.556129, -0.555373,
		29.192251, 30.565174, 34.331596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217211, 30.431070, 35.135632>,  <28.759449, 30.954466, 34.720356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217211, 30.431070, 35.135632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399832, 30.565638, 34.806175>,  <29.509405, 30.646378, 34.608501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399832, 30.565638, 34.806175>,  <29.217211, 30.431070, 35.135632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399832, 30.565638, 34.806175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783671, 0.286222, 0.551305,
		0.421212, -0.897163, -0.132965,
		0.456553, 0.336417, -0.823640,
		29.536798, 30.666563, 34.559082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887215, 30.249723, 35.071205>,  <29.217211, 30.431070, 35.135632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887215, 30.249723, 35.071205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890852, 30.585899, 34.854473>,  <29.893034, 30.787605, 34.724434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890852, 30.585899, 34.854473>,  <29.887215, 30.249723, 35.071205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890852, 30.585899, 34.854473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899544, 0.229782, 0.371512,
		0.436736, -0.490777, -0.753923,
		0.009092, 0.840439, -0.541830,
		29.893579, 30.838032, 34.691925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585886, 30.062170, 35.390308>,  <29.887215, 30.249723, 35.071205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585886, 30.062170, 35.390308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848701, 29.783028, 35.276257>,  <31.006392, 29.615543, 35.207825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848701, 29.783028, 35.276257>,  <30.585886, 30.062170, 35.390308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848701, 29.783028, 35.276257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577213, -0.222425, -0.785718,
		0.484896, 0.680828, -0.548953,
		0.657040, -0.697854, -0.285129,
		31.045813, 29.573671, 35.190720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911133, 30.277033, 34.708370>,  <30.585886, 30.062170, 35.390308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911133, 30.277033, 34.708370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909731, 29.981014, 34.439350>,  <30.908890, 29.803404, 34.277939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909731, 29.981014, 34.439350>,  <30.911133, 30.277033, 34.708370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909731, 29.981014, 34.439350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962538, 0.184842, -0.198379,
		0.271124, 0.646659, -0.712968,
		-0.003503, -0.740044, -0.672549,
		30.908680, 29.759001, 34.237587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463764, 30.462606, 34.051983>,  <30.911133, 30.277033, 34.708370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463764, 30.462606, 34.051983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503979, 30.066832, 34.093758>,  <30.528107, 29.829367, 34.118824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503979, 30.066832, 34.093758>,  <30.463764, 30.462606, 34.051983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503979, 30.066832, 34.093758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948942, -0.126906, -0.288797,
		0.299000, -0.070074, -0.951677,
		0.100536, -0.989437, 0.104441,
		30.534140, 29.770000, 34.125092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125612, 30.107309, 33.479694>,  <30.463764, 30.462606, 34.051983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125612, 30.107309, 33.479694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104914, 29.867317, 33.799030>,  <30.092495, 29.723322, 33.990631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104914, 29.867317, 33.799030>,  <30.125612, 30.107309, 33.479694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104914, 29.867317, 33.799030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977223, -0.134327, -0.164294,
		0.205812, -0.788656, -0.579365,
		-0.051748, -0.599982, 0.798338,
		30.089390, 29.687323, 34.038532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750656, 29.795488, 33.600670>,  <30.125612, 30.107309, 33.479694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750656, 29.795488, 33.600670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096062, 29.607777, 33.674557>,  <31.303305, 29.495150, 33.718887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096062, 29.607777, 33.674557>,  <30.750656, 29.795488, 33.600670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096062, 29.607777, 33.674557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141453, -0.126200, -0.981868,
		0.484083, 0.873985, -0.042595,
		0.863513, -0.469281, 0.184719,
		31.355116, 29.466993, 33.729973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194695, 29.993626, 33.190449>,  <30.750656, 29.795488, 33.600670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194695, 29.993626, 33.190449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297573, 29.624653, 33.305664>,  <31.359301, 29.403269, 33.374794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297573, 29.624653, 33.305664>,  <31.194695, 29.993626, 33.190449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297573, 29.624653, 33.305664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039445, -0.307839, -0.950621,
		0.965554, 0.233133, -0.115560,
		0.257195, -0.922434, 0.288039,
		31.374731, 29.347923, 33.392075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861935, 29.704155, 32.928230>,  <31.194695, 29.993626, 33.190449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861935, 29.704155, 32.928230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578812, 29.424145, 32.966122>,  <31.408937, 29.256138, 32.988857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578812, 29.424145, 32.966122>,  <31.861935, 29.704155, 32.928230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578812, 29.424145, 32.966122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118662, -0.250021, -0.960942,
		0.696369, -0.668920, 0.260033,
		-0.707807, -0.700026, 0.094731,
		31.366470, 29.214136, 32.994541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063534, 28.915852, 33.059063>,  <31.861935, 29.704155, 32.928230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063534, 28.915852, 33.059063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768253, 29.006004, 32.804737>,  <31.591085, 29.060095, 32.652142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768253, 29.006004, 32.804737>,  <32.063534, 28.915852, 33.059063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768253, 29.006004, 32.804737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599683, -0.212393, -0.771537,
		-0.308934, -0.950837, 0.021631,
		-0.738200, 0.225383, -0.635816,
		31.546793, 29.073618, 32.613991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922468, 28.476603, 32.536366>,  <32.063534, 28.915852, 33.059063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922468, 28.476603, 32.536366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816559, 28.825907, 32.372749>,  <31.753014, 29.035488, 32.274578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816559, 28.825907, 32.372749>,  <31.922468, 28.476603, 32.536366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816559, 28.825907, 32.372749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570654, -0.200043, -0.796453,
		-0.777335, -0.444300, -0.445362,
		-0.264772, 0.873259, -0.409042,
		31.737127, 29.087885, 32.250038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528725, 28.425364, 31.872215>,  <31.922468, 28.476603, 32.536366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528725, 28.425364, 31.872215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733131, 28.768429, 31.895115>,  <31.855776, 28.974268, 31.908855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733131, 28.768429, 31.895115>,  <31.528725, 28.425364, 31.872215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733131, 28.768429, 31.895115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348010, -0.145534, -0.926126,
		-0.785971, 0.493190, -0.372846,
		0.511018, 0.857662, 0.057249,
		31.886436, 29.025728, 31.912291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386539, 28.824263, 31.226715>,  <31.528725, 28.425364, 31.872215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386539, 28.824263, 31.226715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728970, 28.963923, 31.379152>,  <31.934427, 29.047718, 31.470613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728970, 28.963923, 31.379152>,  <31.386539, 28.824263, 31.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728970, 28.963923, 31.379152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477615, -0.252603, -0.841472,
		-0.197533, 0.902379, -0.383006,
		0.856075, 0.349148, 0.381092,
		31.985792, 29.068666, 31.493481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631979, 29.340261, 30.642565>,  <31.386539, 28.824263, 31.226715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631979, 29.340261, 30.642565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946096, 29.243559, 30.870552>,  <32.134567, 29.185537, 31.007345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946096, 29.243559, 30.870552>,  <31.631979, 29.340261, 30.642565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946096, 29.243559, 30.870552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555318, -0.131994, -0.821097,
		0.273738, 0.961317, 0.030597,
		0.785296, -0.241757, 0.569969,
		32.181686, 29.171032, 31.041542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226078, 29.844238, 30.519983>,  <31.631979, 29.340261, 30.642565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226078, 29.844238, 30.519983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378441, 29.503792, 30.664490>,  <32.469856, 29.299524, 30.751194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378441, 29.503792, 30.664490>,  <32.226078, 29.844238, 30.519983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378441, 29.503792, 30.664490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691619, 0.002952, -0.722257,
		0.613658, 0.524970, 0.589772,
		0.380904, -0.851116, 0.361268,
		32.492714, 29.248457, 30.772869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950657, 30.005102, 30.491282>,  <32.226078, 29.844238, 30.519983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950657, 30.005102, 30.491282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937984, 29.609726, 30.550581>,  <32.930382, 29.372499, 30.586161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937984, 29.609726, 30.550581>,  <32.950657, 30.005102, 30.491282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937984, 29.609726, 30.550581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733545, -0.123739, -0.668281,
		0.678902, 0.087576, 0.728988,
		-0.031679, -0.988443, 0.148248,
		32.928482, 29.313192, 30.595055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664692, 29.766357, 30.529625>,  <32.950657, 30.005102, 30.491282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664692, 29.766357, 30.529625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452122, 29.446331, 30.418285>,  <33.324577, 29.254314, 30.351480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452122, 29.446331, 30.418285>,  <33.664692, 29.766357, 30.529625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452122, 29.446331, 30.418285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572566, -0.097086, -0.814090,
		0.624302, -0.592004, 0.509685,
		-0.531428, -0.800066, -0.278351,
		33.292694, 29.206312, 30.334780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063610, 29.192413, 30.474966>,  <33.664692, 29.766357, 30.529625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063610, 29.192413, 30.474966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755924, 29.096857, 30.237902>,  <33.571312, 29.039524, 30.095663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755924, 29.096857, 30.237902>,  <34.063610, 29.192413, 30.474966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755924, 29.096857, 30.237902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638338, -0.245268, -0.729636,
		0.028943, -0.939561, 0.341157,
		-0.769212, -0.238891, -0.592659,
		33.525162, 29.025190, 30.060104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332664, 28.663189, 30.096310>,  <34.063610, 29.192413, 30.474966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332664, 28.663189, 30.096310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024975, 28.798809, 29.879665>,  <33.840363, 28.880180, 29.749680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024975, 28.798809, 29.879665>,  <34.332664, 28.663189, 30.096310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024975, 28.798809, 29.879665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531645, -0.130610, -0.836836,
		-0.354467, -0.931658, -0.079785,
		-0.769224, 0.339048, -0.541608,
		33.794209, 28.900524, 29.717182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269630, 28.147650, 29.564369>,  <34.332664, 28.663189, 30.096310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269630, 28.147650, 29.564369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097656, 28.485958, 29.437988>,  <33.994473, 28.688944, 29.362160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097656, 28.485958, 29.437988>,  <34.269630, 28.147650, 29.564369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097656, 28.485958, 29.437988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503978, -0.065537, -0.861227,
		-0.749107, -0.529506, -0.398073,
		-0.429936, 0.845771, -0.315953,
		33.968674, 28.739689, 29.343203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234154, 27.993126, 28.937613>,  <34.269630, 28.147650, 29.564369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234154, 27.993126, 28.937613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150558, 28.383127, 28.907434>,  <34.100399, 28.617128, 28.889328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150558, 28.383127, 28.907434>,  <34.234154, 27.993126, 28.937613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150558, 28.383127, 28.907434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450876, 0.027611, -0.892159,
		-0.867775, -0.220470, -0.445376,
		-0.208992, 0.975003, -0.075444,
		34.087860, 28.675629, 28.884802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129688, 28.071335, 28.195520>,  <34.234154, 27.993126, 28.937613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129688, 28.071335, 28.195520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162796, 28.454233, 28.306396>,  <34.182659, 28.683971, 28.372921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162796, 28.454233, 28.306396>,  <34.129688, 28.071335, 28.195520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162796, 28.454233, 28.306396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353975, 0.231768, -0.906082,
		-0.931585, 0.173113, -0.319658,
		0.082768, 0.957244, 0.277189,
		34.187626, 28.741405, 28.389553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831966, 28.512791, 27.672003>,  <34.129688, 28.071335, 28.195520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831966, 28.512791, 27.672003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097683, 28.732889, 27.874365>,  <34.257114, 28.864948, 27.995783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097683, 28.732889, 27.874365>,  <33.831966, 28.512791, 27.672003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097683, 28.732889, 27.874365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449336, 0.246911, -0.858564,
		-0.597336, 0.797661, -0.083224,
		0.664294, 0.550247, 0.505907,
		34.296970, 28.897963, 28.026136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922153, 29.147490, 27.280584>,  <33.831966, 28.512791, 27.672003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922153, 29.147490, 27.280584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248043, 29.121868, 27.511105>,  <34.443577, 29.106495, 27.649418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248043, 29.121868, 27.511105>,  <33.922153, 29.147490, 27.280584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248043, 29.121868, 27.511105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572501, 0.246605, -0.781939,
		-0.092034, 0.966997, 0.237585,
		0.814722, -0.064053, 0.576303,
		34.492458, 29.102652, 27.683996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306900, 29.781775, 27.062956>,  <33.922153, 29.147490, 27.280584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306900, 29.781775, 27.062956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567146, 29.536562, 27.242241>,  <34.723293, 29.389435, 27.349812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567146, 29.536562, 27.242241>,  <34.306900, 29.781775, 27.062956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567146, 29.536562, 27.242241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666752, 0.178600, -0.723563,
		0.363516, 0.769607, 0.524939,
		0.650613, -0.613031, 0.448213,
		34.762329, 29.352654, 27.376705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049782, 30.143007, 27.064474>,  <34.306900, 29.781775, 27.062956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049782, 30.143007, 27.064474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088493, 29.745440, 27.085495>,  <35.111721, 29.506899, 27.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088493, 29.745440, 27.085495>,  <35.049782, 30.143007, 27.064474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088493, 29.745440, 27.085495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654819, 0.023820, -0.755410,
		0.749564, 0.107519, 0.653142,
		0.096779, -0.993918, 0.052551,
		35.117527, 29.447264, 27.101261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754169, 29.945530, 27.137960>,  <35.049782, 30.143007, 27.064474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754169, 29.945530, 27.137960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600655, 29.607407, 26.989281>,  <35.508545, 29.404533, 26.900072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600655, 29.607407, 26.989281>,  <35.754169, 29.945530, 27.137960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600655, 29.607407, 26.989281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539439, 0.121466, -0.833218,
		0.749474, -0.520290, 0.409374,
		-0.383790, -0.845307, -0.371700,
		35.485516, 29.353815, 26.877771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310219, 29.619289, 26.893873>,  <35.754169, 29.945530, 27.137960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310219, 29.619289, 26.893873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002491, 29.453270, 26.699604>,  <35.817856, 29.353659, 26.583042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002491, 29.453270, 26.699604>,  <36.310219, 29.619289, 26.893873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002491, 29.453270, 26.699604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480337, 0.125443, -0.868067,
		0.421216, -0.901109, 0.102858,
		-0.769320, -0.415051, -0.485674,
		35.771694, 29.328754, 26.553902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622272, 29.166935, 26.479572>,  <36.310219, 29.619289, 26.893873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622272, 29.166935, 26.479572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259144, 29.173788, 26.311974>,  <36.041267, 29.177900, 26.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259144, 29.173788, 26.311974>,  <36.622272, 29.166935, 26.479572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259144, 29.173788, 26.311974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419308, 0.023471, -0.907541,
		-0.005717, -0.999578, -0.028493,
		-0.907826, 0.017136, -0.418997,
		35.986797, 29.178928, 26.186274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671101, 28.673595, 25.878910>,  <36.622272, 29.166935, 26.479572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671101, 28.673595, 25.878910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346249, 28.902540, 25.833567>,  <36.151337, 29.039907, 25.806360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346249, 28.902540, 25.833567>,  <36.671101, 28.673595, 25.878910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346249, 28.902540, 25.833567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182504, 0.064651, -0.981077,
		-0.554203, -0.817449, -0.156963,
		-0.812128, 0.572362, -0.113358,
		36.102612, 29.074249, 25.799559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190529, 28.390696, 25.362070>,  <36.671101, 28.673595, 25.878910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190529, 28.390696, 25.362070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086945, 28.777044, 25.364319>,  <36.024796, 29.008854, 25.365667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086945, 28.777044, 25.364319>,  <36.190529, 28.390696, 25.362070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086945, 28.777044, 25.364319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067256, 0.023836, -0.997451,
		-0.963544, -0.257922, -0.071134,
		-0.258960, 0.965872, 0.005620,
		36.009258, 29.066805, 25.366005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059509, 28.505117, 24.658083>,  <36.190529, 28.390696, 25.362070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059509, 28.505117, 24.658083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029556, 28.885891, 24.776890>,  <36.011585, 29.114355, 24.848173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029556, 28.885891, 24.776890>,  <36.059509, 28.505117, 24.658083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029556, 28.885891, 24.776890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037087, 0.300304, -0.953122,
		-0.996503, -0.060355, -0.057792,
		-0.074880, 0.951932, 0.297015,
		36.007092, 29.171471, 24.865993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561687, 28.875298, 24.279778>,  <36.059509, 28.505117, 24.658083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561687, 28.875298, 24.279778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826427, 29.139492, 24.421604>,  <35.985271, 29.298008, 24.506701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826427, 29.139492, 24.421604>,  <35.561687, 28.875298, 24.279778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826427, 29.139492, 24.421604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152732, 0.344256, -0.926370,
		-0.733916, 0.667269, 0.126967,
		0.661846, 0.660485, 0.354568,
		36.024982, 29.337637, 24.527975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394505, 29.416763, 23.948265>,  <35.561687, 28.875298, 24.279778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394505, 29.416763, 23.948265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772186, 29.476978, 24.065443>,  <35.998795, 29.513107, 24.135750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772186, 29.476978, 24.065443>,  <35.394505, 29.416763, 23.948265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772186, 29.476978, 24.065443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249822, 0.252274, -0.934851,
		-0.214633, 0.955874, 0.200591,
		0.944204, 0.150538, 0.292945,
		36.055447, 29.522141, 24.153326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637550, 29.904417, 23.554815>,  <35.394505, 29.416763, 23.948265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637550, 29.904417, 23.554815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987251, 29.774467, 23.699116>,  <36.197071, 29.696497, 23.785696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987251, 29.774467, 23.699116>,  <35.637550, 29.904417, 23.554815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987251, 29.774467, 23.699116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399021, 0.057585, -0.915132,
		0.276530, 0.944002, 0.179976,
		0.874250, -0.324875, 0.360753,
		36.249527, 29.677006, 23.807341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205536, 30.239803, 23.213005>,  <35.637550, 29.904417, 23.554815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205536, 30.239803, 23.213005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361916, 29.912031, 23.380669>,  <36.455742, 29.715368, 23.481266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361916, 29.912031, 23.380669>,  <36.205536, 30.239803, 23.213005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361916, 29.912031, 23.380669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516443, -0.181663, -0.836830,
		0.761869, 0.543630, 0.352167,
		0.390950, -0.819430, 0.419157,
		36.479202, 29.666203, 23.506416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869209, 30.265070, 23.134272>,  <36.205536, 30.239803, 23.213005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869209, 30.265070, 23.134272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810219, 29.873444, 23.190395>,  <36.774826, 29.638468, 23.224070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810219, 29.873444, 23.190395>,  <36.869209, 30.265070, 23.134272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810219, 29.873444, 23.190395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749095, -0.203194, -0.630531,
		0.645839, 0.012119, 0.763377,
		-0.147472, -0.979064, 0.140309,
		36.765976, 29.579725, 23.232489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547539, 29.880960, 23.198072>,  <36.869209, 30.265070, 23.134272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547539, 29.880960, 23.198072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290085, 29.594532, 23.090015>,  <37.135612, 29.422676, 23.025181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290085, 29.594532, 23.090015>,  <37.547539, 29.880960, 23.198072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290085, 29.594532, 23.090015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663559, -0.346250, -0.663175,
		0.381343, -0.606098, 0.698013,
		-0.643636, -0.716070, -0.270142,
		37.096992, 29.379711, 23.008972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929058, 29.259630, 23.331703>,  <37.547539, 29.880960, 23.198072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929058, 29.259630, 23.331703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633484, 29.174843, 23.075878>,  <37.456139, 29.123970, 22.922384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633484, 29.174843, 23.075878>,  <37.929058, 29.259630, 23.331703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633484, 29.174843, 23.075878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672831, -0.282278, -0.683826,
		-0.035585, -0.935622, 0.351204,
		-0.738940, -0.211967, -0.639561,
		37.411800, 29.111254, 22.884010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084423, 28.656475, 23.114168>,  <37.929058, 29.259630, 23.331703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084423, 28.656475, 23.114168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869900, 28.845778, 22.834625>,  <37.741184, 28.959358, 22.666901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869900, 28.845778, 22.834625>,  <38.084423, 28.656475, 23.114168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869900, 28.845778, 22.834625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667012, -0.269706, -0.694516,
		-0.517169, -0.838623, -0.171020,
		-0.536312, 0.473255, -0.698856,
		37.709007, 28.987753, 22.624969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056358, 28.192375, 22.401711>,  <38.084423, 28.656475, 23.114168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056358, 28.192375, 22.401711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974655, 28.567551, 22.289600>,  <37.925632, 28.792656, 22.222334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974655, 28.567551, 22.289600>,  <38.056358, 28.192375, 22.401711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974655, 28.567551, 22.289600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717845, -0.051155, -0.694322,
		-0.665567, -0.343012, -0.662845,
		-0.204253, 0.937937, -0.280276,
		37.913380, 28.848932, 22.205517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175690, 28.220095, 21.661129>,  <38.056358, 28.192375, 22.401711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175690, 28.220095, 21.661129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181564, 28.609512, 21.752342>,  <38.185089, 28.843163, 21.807070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181564, 28.609512, 21.752342>,  <38.175690, 28.220095, 21.661129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181564, 28.609512, 21.752342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707209, 0.151111, -0.690667,
		-0.706852, 0.171409, -0.686279,
		0.014682, 0.973542, 0.228035,
		38.185970, 28.901575, 21.820753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163300, 28.501957, 20.948215>,  <38.175690, 28.220095, 21.661129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163300, 28.501957, 20.948215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308224, 28.770493, 21.206839>,  <38.395180, 28.931614, 21.362013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308224, 28.770493, 21.206839>,  <38.163300, 28.501957, 20.948215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308224, 28.770493, 21.206839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802197, 0.128594, -0.583047,
		-0.474565, 0.729910, -0.491954,
		0.362310, 0.671338, 0.646558,
		38.416916, 28.971893, 21.400806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426327, 29.074253, 20.471729>,  <38.163300, 28.501957, 20.948215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426327, 29.074253, 20.471729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593735, 29.119246, 20.832214>,  <38.694180, 29.146242, 21.048506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593735, 29.119246, 20.832214>,  <38.426327, 29.074253, 20.471729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593735, 29.119246, 20.832214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908122, -0.038252, -0.416955,
		-0.012426, 0.992917, -0.118157,
		0.418521, 0.112482, 0.901215,
		38.719292, 29.152990, 21.102579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853996, 29.628992, 20.466812>,  <38.426327, 29.074253, 20.471729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853996, 29.628992, 20.466812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021465, 29.420589, 20.764339>,  <39.121948, 29.295547, 20.942856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021465, 29.420589, 20.764339>,  <38.853996, 29.628992, 20.466812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021465, 29.420589, 20.764339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907327, 0.205439, -0.366813,
		0.038302, 0.828462, 0.558735,
		0.418676, -0.521005, 0.743817,
		39.147068, 29.264288, 20.987484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294636, 30.081591, 20.741032>,  <38.853996, 29.628992, 20.466812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294636, 30.081591, 20.741032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421188, 29.719707, 20.855156>,  <39.497120, 29.502577, 20.923630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421188, 29.719707, 20.855156>,  <39.294636, 30.081591, 20.741032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421188, 29.719707, 20.855156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923258, 0.224573, -0.311706,
		0.217931, 0.362035, 0.906332,
		0.316386, -0.904709, 0.285310,
		39.516106, 29.448296, 20.940748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951591, 30.142235, 21.031162>,  <39.294636, 30.081591, 20.741032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951591, 30.142235, 21.031162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937267, 29.758799, 20.918154>,  <39.928673, 29.528736, 20.850349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937267, 29.758799, 20.918154>,  <39.951591, 30.142235, 21.031162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937267, 29.758799, 20.918154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936321, 0.066632, -0.344764,
		0.349313, -0.276877, 0.895164,
		-0.035810, -0.958592, -0.282522,
		39.926525, 29.471220, 20.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598106, 29.958836, 21.071930>,  <39.951591, 30.142235, 21.031162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598106, 29.958836, 21.071930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415356, 29.687307, 20.841988>,  <40.305706, 29.524389, 20.704021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415356, 29.687307, 20.841988>,  <40.598106, 29.958836, 21.071930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415356, 29.687307, 20.841988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793706, -0.019326, -0.607994,
		0.401610, -0.734048, 0.547616,
		-0.456880, -0.678823, -0.574857,
		40.278290, 29.483660, 20.669531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149345, 29.455404, 20.964291>,  <40.598106, 29.958836, 21.071930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149345, 29.455404, 20.964291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877552, 29.416058, 20.673464>,  <40.714478, 29.392450, 20.498968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877552, 29.416058, 20.673464>,  <41.149345, 29.455404, 20.964291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877552, 29.416058, 20.673464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731535, -0.014923, -0.681640,
		0.056199, -0.995039, 0.082097,
		-0.679483, -0.098365, -0.727067,
		40.673706, 29.386549, 20.455343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365879, 28.926727, 20.615788>,  <41.149345, 29.455404, 20.964291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365879, 28.926727, 20.615788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133808, 29.112289, 20.348001>,  <40.994564, 29.223627, 20.187330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133808, 29.112289, 20.348001>,  <41.365879, 28.926727, 20.615788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133808, 29.112289, 20.348001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744076, -0.032432, -0.667308,
		-0.331281, -0.885290, -0.326366,
		-0.580176, 0.463907, -0.669467,
		40.959755, 29.251461, 20.147161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495640, 28.639040, 19.981997>,  <41.365879, 28.926727, 20.615788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495640, 28.639040, 19.981997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337666, 28.994331, 19.888123>,  <41.242882, 29.207506, 19.831799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337666, 28.994331, 19.888123>,  <41.495640, 28.639040, 19.981997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337666, 28.994331, 19.888123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740572, 0.156621, -0.653469,
		-0.543675, -0.431876, -0.719653,
		-0.394931, 0.888230, -0.234685,
		41.219185, 29.260801, 19.817717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665451, 28.750242, 19.265133>,  <41.495640, 28.639040, 19.981997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665451, 28.750242, 19.265133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612896, 29.103287, 19.445683>,  <41.581364, 29.315113, 19.554012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612896, 29.103287, 19.445683>,  <41.665451, 28.750242, 19.265133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612896, 29.103287, 19.445683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766831, 0.379045, -0.517972,
		-0.628258, 0.278072, -0.726614,
		-0.131386, 0.882610, 0.451372,
		41.573479, 29.368071, 19.581095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582985, 29.304178, 18.792442>,  <41.665451, 28.750242, 19.265133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582985, 29.304178, 18.792442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710690, 29.486082, 19.125011>,  <41.787312, 29.595224, 19.324553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710690, 29.486082, 19.125011>,  <41.582985, 29.304178, 18.792442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710690, 29.486082, 19.125011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657713, 0.525303, -0.539879,
		-0.682265, 0.719202, -0.131392,
		0.319261, 0.454759, 0.831425,
		41.806469, 29.622509, 19.374439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621017, 29.516943, 18.068882>,  <41.582985, 29.304178, 18.792442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621017, 29.516943, 18.068882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514153, 29.811230, 17.819935>,  <41.450031, 29.987803, 17.670567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514153, 29.811230, 17.819935>,  <41.621017, 29.516943, 18.068882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514153, 29.811230, 17.819935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387417, -0.673355, -0.629683,
		-0.882344, 0.072887, 0.464926,
		-0.267164, 0.735718, -0.622368,
		41.434002, 30.031944, 17.633224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337830, 29.290298, 18.082054>,  <41.621017, 29.516943, 18.068882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337830, 29.290298, 18.082054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588055, 29.569569, 18.221319>,  <42.738190, 29.737131, 18.304878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588055, 29.569569, 18.221319>,  <42.337830, 29.290298, 18.082054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588055, 29.569569, 18.221319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022736, 0.462391, -0.886385,
		-0.779841, 0.546575, 0.305129,
		0.625565, 0.698176, 0.348164,
		42.775723, 29.779022, 18.325769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123253, 29.957468, 17.818073>,  <42.337830, 29.290298, 18.082054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123253, 29.957468, 17.818073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514526, 29.974112, 17.899488>,  <42.749290, 29.984098, 17.948338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514526, 29.974112, 17.899488>,  <42.123253, 29.957468, 17.818073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514526, 29.974112, 17.899488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173252, 0.377266, -0.909755,
		-0.114642, 0.925170, 0.361826,
		0.978182, 0.041609, 0.203538,
		42.807980, 29.986595, 17.960550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476059, 30.575209, 17.698435>,  <42.123253, 29.957468, 17.818073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476059, 30.575209, 17.698435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715389, 30.261347, 17.633541>,  <42.858986, 30.073029, 17.594604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715389, 30.261347, 17.633541>,  <42.476059, 30.575209, 17.698435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715389, 30.261347, 17.633541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124587, 0.291122, -0.948539,
		0.791508, 0.547322, 0.271944,
		0.598325, -0.784657, -0.162237,
		42.894886, 30.025949, 17.584869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260872, 30.569313, 18.356567>,  <42.476059, 30.575209, 17.698435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260872, 30.569313, 18.356567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985126, 30.286072, 18.417713>,  <41.819679, 30.116127, 18.454401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985126, 30.286072, 18.417713>,  <42.260872, 30.569313, 18.356567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985126, 30.286072, 18.417713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288236, -0.074515, 0.954656,
		-0.664605, 0.702165, 0.255469,
		-0.689362, -0.708104, 0.152867,
		41.778316, 30.073641, 18.463573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927074, 30.726927, 18.640985>,  <42.260872, 30.569313, 18.356567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927074, 30.726927, 18.640985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089878, 31.053890, 18.804052>,  <43.187561, 31.250069, 18.901892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089878, 31.053890, 18.804052>,  <42.927074, 30.726927, 18.640985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089878, 31.053890, 18.804052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913091, 0.376163, 0.157377,
		-0.024708, -0.436289, 0.899467,
		0.407008, 0.817406, 0.407666,
		43.211979, 31.299112, 18.926352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647026, 30.761435, 19.344067>,  <42.927074, 30.726927, 18.640985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647026, 30.761435, 19.344067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762207, 31.105478, 19.175644>,  <42.831318, 31.311905, 19.074591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762207, 31.105478, 19.175644>,  <42.647026, 30.761435, 19.344067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762207, 31.105478, 19.175644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946769, 0.321765, 0.009798,
		0.143909, 0.395824, 0.906981,
		0.287956, 0.860111, -0.421059,
		42.848595, 31.363512, 19.049326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692131, 31.383419, 19.763496>,  <42.647026, 30.761435, 19.344067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692131, 31.383419, 19.763496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585114, 31.417458, 19.379583>,  <42.520905, 31.437881, 19.149237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585114, 31.417458, 19.379583>,  <42.692131, 31.383419, 19.763496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585114, 31.417458, 19.379583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887792, 0.365374, 0.279871,
		0.374495, 0.926963, -0.022205,
		-0.267544, 0.085097, -0.959781,
		42.504852, 31.442987, 19.091650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572231, 32.071445, 19.473856>,  <42.692131, 31.383419, 19.763496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572231, 32.071445, 19.473856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334297, 31.803431, 19.296219>,  <42.191536, 31.642622, 19.189636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334297, 31.803431, 19.296219>,  <42.572231, 32.071445, 19.473856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334297, 31.803431, 19.296219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743549, 0.248702, 0.620712,
		-0.305453, 0.699427, -0.646142,
		-0.594839, -0.670036, -0.444092,
		42.155846, 31.602419, 19.162991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928791, 32.424915, 19.259478>,  <42.572231, 32.071445, 19.473856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928791, 32.424915, 19.259478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874908, 32.036808, 19.339914>,  <41.842579, 31.803944, 19.388176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874908, 32.036808, 19.339914>,  <41.928791, 32.424915, 19.259478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874908, 32.036808, 19.339914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597669, 0.241428, 0.764528,
		-0.790345, -0.017197, -0.612421,
		-0.134708, -0.970266, 0.201090,
		41.834496, 31.745728, 19.400242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218044, 32.264698, 19.205854>,  <41.928791, 32.424915, 19.259478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218044, 32.264698, 19.205854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394928, 32.025444, 19.473190>,  <41.501060, 31.881891, 19.633593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394928, 32.025444, 19.473190>,  <41.218044, 32.264698, 19.205854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394928, 32.025444, 19.473190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738638, 0.179836, 0.649671,
		-0.508785, -0.780953, -0.362284,
		0.442211, -0.598140, 0.668340,
		41.527592, 31.846003, 19.673693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755684, 31.742506, 19.326401>,  <41.218044, 32.264698, 19.205854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755684, 31.742506, 19.326401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999626, 31.756157, 19.643112>,  <41.145992, 31.764347, 19.833139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999626, 31.756157, 19.643112>,  <40.755684, 31.742506, 19.326401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999626, 31.756157, 19.643112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792429, 0.011616, 0.609854,
		0.011616, -0.999350, 0.034129,
		-0.609854, -0.034129, -0.791779,
		41.182583, 31.766396, 19.880646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416111, 31.406422, 19.864010>,  <40.755684, 31.742506, 19.326401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416111, 31.406422, 19.864010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690323, 31.589689, 20.090328>,  <40.854851, 31.699650, 20.226118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690323, 31.589689, 20.090328>,  <40.416111, 31.406422, 19.864010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690323, 31.589689, 20.090328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652021, 0.040625, 0.757111,
		0.323902, -0.887935, 0.326587,
		0.685533, 0.458172, 0.565794,
		40.895985, 31.727140, 20.260067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256336, 31.125837, 20.468159>,  <40.416111, 31.406422, 19.864010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256336, 31.125837, 20.468159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473518, 31.446098, 20.569473>,  <40.603828, 31.638254, 20.630262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473518, 31.446098, 20.569473>,  <40.256336, 31.125837, 20.468159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473518, 31.446098, 20.569473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467703, 0.037811, 0.883077,
		0.697459, -0.597937, 0.394996,
		0.542959, 0.800651, 0.253285,
		40.636406, 31.686293, 20.645458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445911, 30.976948, 21.059595>,  <40.256336, 31.125837, 20.468159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445911, 30.976948, 21.059595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485065, 31.374954, 21.051952>,  <40.508556, 31.613758, 21.047367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485065, 31.374954, 21.051952>,  <40.445911, 30.976948, 21.059595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485065, 31.374954, 21.051952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513731, 0.066960, 0.855335,
		0.852350, -0.073906, 0.517724,
		0.097881, 0.995015, -0.019105,
		40.514431, 31.673458, 21.046221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829437, 31.178497, 21.747791>,  <40.445911, 30.976948, 21.059595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829437, 31.178497, 21.747791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641472, 31.501059, 21.604183>,  <40.528694, 31.694595, 21.518019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641472, 31.501059, 21.604183>,  <40.829437, 31.178497, 21.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641472, 31.501059, 21.604183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429083, 0.146759, 0.891263,
		0.771407, 0.572866, 0.277050,
		-0.469914, 0.806403, -0.359018,
		40.500496, 31.742979, 21.496477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756229, 31.517231, 22.307121>,  <40.829437, 31.178497, 21.747791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756229, 31.517231, 22.307121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497856, 31.729521, 22.087629>,  <40.342834, 31.856895, 21.955935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497856, 31.729521, 22.087629>,  <40.756229, 31.517231, 22.307121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497856, 31.729521, 22.087629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550289, 0.174497, 0.816537,
		0.529110, 0.829385, 0.179340,
		-0.645930, 0.530727, -0.548730,
		40.304077, 31.888739, 21.923010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674305, 32.191185, 22.596998>,  <40.756229, 31.517231, 22.307121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674305, 32.191185, 22.596998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347691, 32.116516, 22.378487>,  <40.151722, 32.071712, 22.247379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347691, 32.116516, 22.378487>,  <40.674305, 32.191185, 22.596998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347691, 32.116516, 22.378487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575078, 0.180183, 0.798010,
		-0.050538, 0.965757, -0.254479,
		-0.816536, -0.186675, -0.546279,
		40.102730, 32.060513, 22.214603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378536, 32.825138, 22.558441>,  <40.674305, 32.191185, 22.596998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378536, 32.825138, 22.558441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089710, 32.570461, 22.450188>,  <39.916412, 32.417656, 22.385237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089710, 32.570461, 22.450188>,  <40.378536, 32.825138, 22.558441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089710, 32.570461, 22.450188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631815, 0.447530, 0.632871,
		-0.281828, 0.627965, -0.725419,
		-0.722068, -0.636692, -0.270631,
		39.873089, 32.379456, 22.368998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897190, 33.275871, 22.363216>,  <40.378536, 32.825138, 22.558441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897190, 33.275871, 22.363216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727737, 32.924377, 22.451183>,  <39.626064, 32.713482, 22.503963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727737, 32.924377, 22.451183>,  <39.897190, 33.275871, 22.363216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727737, 32.924377, 22.451183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578962, 0.449382, 0.680337,
		-0.696660, 0.160892, -0.699127,
		-0.423636, -0.878732, 0.219916,
		39.600647, 32.660759, 22.517159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082279, 33.329247, 22.490473>,  <39.897190, 33.275871, 22.363216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082279, 33.329247, 22.490473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205391, 33.013401, 22.702805>,  <39.279259, 32.823895, 22.830204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205391, 33.013401, 22.702805>,  <39.082279, 33.329247, 22.490473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205391, 33.013401, 22.702805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549385, 0.308019, 0.776724,
		-0.776818, -0.530692, -0.338999,
		0.307783, -0.789614, 0.530829,
		39.297726, 32.776516, 22.862053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528790, 33.179939, 22.934124>,  <39.082279, 33.329247, 22.490473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528790, 33.179939, 22.934124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816162, 32.960438, 23.105108>,  <38.988586, 32.828735, 23.207699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816162, 32.960438, 23.105108>,  <38.528790, 33.179939, 22.934124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816162, 32.960438, 23.105108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556769, -0.085286, 0.826277,
		-0.416969, -0.831620, -0.366803,
		0.718432, -0.548757, 0.427459,
		39.031693, 32.795811, 23.233347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194424, 32.568241, 23.164799>,  <38.528790, 33.179939, 22.934124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194424, 32.568241, 23.164799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520866, 32.594116, 23.394505>,  <38.716732, 32.609642, 23.532328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520866, 32.594116, 23.394505>,  <38.194424, 32.568241, 23.164799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520866, 32.594116, 23.394505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476093, -0.488010, 0.731562,
		0.327568, -0.870438, -0.367473,
		0.816110, 0.064685, 0.574266,
		38.765697, 32.613522, 23.566784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275131, 31.908199, 23.488405>,  <38.194424, 32.568241, 23.164799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275131, 31.908199, 23.488405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501286, 32.130478, 23.732222>,  <38.636978, 32.263844, 23.878511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501286, 32.130478, 23.732222>,  <38.275131, 31.908199, 23.488405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501286, 32.130478, 23.732222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384796, -0.475949, 0.790825,
		0.729569, -0.681671, -0.055266,
		0.565386, 0.555695, 0.609542,
		38.670902, 32.297188, 23.915085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603992, 31.347715, 23.957186>,  <38.275131, 31.908199, 23.488405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603992, 31.347715, 23.957186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596413, 31.723555, 24.093887>,  <38.591866, 31.949059, 24.175909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596413, 31.723555, 24.093887>,  <38.603992, 31.347715, 23.957186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596413, 31.723555, 24.093887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390072, -0.321677, 0.862768,
		0.920589, -0.116955, 0.372608,
		-0.018954, 0.939598, 0.341754,
		38.590725, 32.005436, 24.196413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737232, 31.249006, 24.647972>,  <38.603992, 31.347715, 23.957186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737232, 31.249006, 24.647972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578182, 31.615953, 24.640636>,  <38.482754, 31.836121, 24.636236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578182, 31.615953, 24.640636>,  <38.737232, 31.249006, 24.647972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578182, 31.615953, 24.640636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380861, -0.146831, 0.912900,
		0.834771, 0.369972, 0.407773,
		-0.397621, 0.917367, -0.018338,
		38.458897, 31.891163, 24.635136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845108, 31.513739, 25.289038>,  <38.737232, 31.249006, 24.647972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845108, 31.513739, 25.289038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557575, 31.759550, 25.159029>,  <38.385056, 31.907038, 25.081024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557575, 31.759550, 25.159029>,  <38.845108, 31.513739, 25.289038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557575, 31.759550, 25.159029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425012, -0.018496, 0.904999,
		0.550137, 0.788677, 0.274477,
		-0.718829, 0.614529, -0.325022,
		38.341927, 31.943909, 25.061522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872910, 31.847473, 25.868330>,  <38.845108, 31.513739, 25.289038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872910, 31.847473, 25.868330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533501, 31.952028, 25.684292>,  <38.329857, 32.014763, 25.573868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533501, 31.952028, 25.684292>,  <38.872910, 31.847473, 25.868330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533501, 31.952028, 25.684292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475306, 0.005694, 0.879802,
		0.232589, 0.965217, 0.119408,
		-0.848520, 0.261388, -0.460098,
		38.278946, 32.030445, 25.546263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652515, 32.382801, 26.249365>,  <38.872910, 31.847473, 25.868330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652515, 32.382801, 26.249365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330509, 32.278133, 26.036392>,  <38.137306, 32.215332, 25.908609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330509, 32.278133, 26.036392>,  <38.652515, 32.382801, 26.249365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330509, 32.278133, 26.036392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561240, 0.045062, 0.826426,
		-0.192258, 0.964105, -0.183135,
		-0.805014, -0.261670, -0.532430,
		38.089005, 32.199631, 25.876663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130753, 32.916542, 26.401375>,  <38.652515, 32.382801, 26.249365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130753, 32.916542, 26.401375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963806, 32.569309, 26.293869>,  <37.863640, 32.360970, 26.229366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963806, 32.569309, 26.293869>,  <38.130753, 32.916542, 26.401375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963806, 32.569309, 26.293869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640584, 0.071267, 0.764574,
		-0.644562, 0.491271, -0.585827,
		-0.417363, -0.868086, -0.268764,
		37.838596, 32.308884, 26.213240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455585, 32.983112, 26.618719>,  <38.130753, 32.916542, 26.401375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455585, 32.983112, 26.618719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482384, 32.590057, 26.549515>,  <37.498463, 32.354225, 26.507992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482384, 32.590057, 26.549515>,  <37.455585, 32.983112, 26.618719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482384, 32.590057, 26.549515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685977, -0.171280, 0.707177,
		-0.724533, 0.071307, -0.685542,
		0.066993, -0.982639, -0.173012,
		37.502483, 32.295265, 26.497612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837540, 32.859371, 26.602692>,  <37.455585, 32.983112, 26.618719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837540, 32.859371, 26.602692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027966, 32.525429, 26.713234>,  <37.142223, 32.325062, 26.779560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027966, 32.525429, 26.713234>,  <36.837540, 32.859371, 26.602692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027966, 32.525429, 26.713234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670886, -0.141609, 0.727913,
		-0.568570, -0.531938, -0.627511,
		0.476066, -0.834858, 0.276355,
		37.170784, 32.274971, 26.796141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347565, 32.291954, 26.542494>,  <36.837540, 32.859371, 26.602692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347565, 32.291954, 26.542494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636681, 32.164040, 26.787544>,  <36.810150, 32.087292, 26.934574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636681, 32.164040, 26.787544>,  <36.347565, 32.291954, 26.542494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636681, 32.164040, 26.787544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688569, -0.408506, 0.599162,
		0.058660, -0.854905, -0.515458,
		0.722794, -0.319782, 0.612624,
		36.853519, 32.068104, 26.971331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249653, 31.596518, 26.706770>,  <36.347565, 32.291954, 26.542494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249653, 31.596518, 26.706770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474525, 31.732141, 27.008495>,  <36.609451, 31.813517, 27.189529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474525, 31.732141, 27.008495>,  <36.249653, 31.596518, 26.706770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474525, 31.732141, 27.008495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689184, -0.312093, 0.653930,
		0.457137, -0.887488, 0.058222,
		0.562185, 0.339061, 0.754312,
		36.643181, 31.833860, 27.234789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209366, 31.103107, 27.231224>,  <36.249653, 31.596518, 26.706770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209366, 31.103107, 27.231224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373825, 31.389111, 27.457397>,  <36.472500, 31.560713, 27.593102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373825, 31.389111, 27.457397>,  <36.209366, 31.103107, 27.231224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373825, 31.389111, 27.457397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763000, -0.069470, 0.642654,
		0.498785, -0.695655, 0.516990,
		0.411150, 0.715009, 0.565435,
		36.497169, 31.603613, 27.627028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174809, 30.850224, 27.853067>,  <36.209366, 31.103107, 27.231224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174809, 30.850224, 27.853067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216286, 31.242184, 27.921236>,  <36.241173, 31.477360, 27.962137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216286, 31.242184, 27.921236>,  <36.174809, 30.850224, 27.853067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216286, 31.242184, 27.921236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574224, -0.080924, 0.814689,
		0.812105, -0.182342, 0.554290,
		0.103697, 0.979899, 0.170424,
		36.247395, 31.536154, 27.972363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485592, 30.899166, 28.511110>,  <36.174809, 30.850224, 27.853067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485592, 30.899166, 28.511110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275173, 31.224512, 28.411741>,  <36.148922, 31.419720, 28.352119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275173, 31.224512, 28.411741>,  <36.485592, 30.899166, 28.511110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275173, 31.224512, 28.411741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540587, -0.094292, 0.835988,
		0.656538, 0.574063, 0.489296,
		-0.526046, 0.813364, -0.248425,
		36.117359, 31.468521, 28.337214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459026, 31.304642, 29.166042>,  <36.485592, 30.899166, 28.511110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459026, 31.304642, 29.166042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184715, 31.459702, 28.919649>,  <36.020130, 31.552738, 28.771812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184715, 31.459702, 28.919649>,  <36.459026, 31.304642, 29.166042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184715, 31.459702, 28.919649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640158, 0.081404, 0.763919,
		0.346277, 0.918205, 0.192333,
		-0.685777, 0.387650, -0.615984,
		35.978981, 31.575996, 28.734854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266396, 31.930241, 29.531353>,  <36.459026, 31.304642, 29.166042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266396, 31.930241, 29.531353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985046, 31.788792, 29.284702>,  <35.816238, 31.703922, 29.136713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985046, 31.788792, 29.284702>,  <36.266396, 31.930241, 29.531353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985046, 31.788792, 29.284702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689221, 0.127029, 0.713329,
		-0.173919, 0.926723, -0.333071,
		-0.703368, -0.353621, -0.616624,
		35.774036, 31.682705, 29.099714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698952, 32.262131, 29.784513>,  <36.266396, 31.930241, 29.531353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698952, 32.262131, 29.784513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513226, 31.997654, 29.548807>,  <35.401791, 31.838968, 29.407383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513226, 31.997654, 29.548807>,  <35.698952, 32.262131, 29.784513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513226, 31.997654, 29.548807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771273, -0.025196, 0.636005,
		-0.435369, 0.749794, -0.498261,
		-0.464318, -0.661192, -0.589266,
		35.373932, 31.799297, 29.372028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020943, 32.482979, 29.733763>,  <35.698952, 32.262131, 29.784513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020943, 32.482979, 29.733763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993645, 32.101070, 29.617998>,  <34.977264, 31.871925, 29.548540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993645, 32.101070, 29.617998>,  <35.020943, 32.482979, 29.733763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993645, 32.101070, 29.617998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729688, -0.150058, 0.667112,
		-0.680366, 0.256708, -0.686442,
		-0.068247, -0.954769, -0.289411,
		34.973171, 31.814640, 29.531176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361309, 32.395138, 29.780020>,  <35.020943, 32.482979, 29.733763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361309, 32.395138, 29.780020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512413, 32.024776, 29.780155>,  <34.603077, 31.802561, 29.780237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512413, 32.024776, 29.780155>,  <34.361309, 32.395138, 29.780020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512413, 32.024776, 29.780155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641187, -0.261337, 0.721514,
		-0.667962, -0.272780, -0.692400,
		0.377764, -0.925901, 0.000339,
		34.625744, 31.747005, 29.780256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754753, 31.962593, 29.671751>,  <34.361309, 32.395138, 29.780020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754753, 31.962593, 29.671751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040302, 31.729197, 29.826630>,  <34.211632, 31.589159, 29.919556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040302, 31.729197, 29.826630>,  <33.754753, 31.962593, 29.671751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040302, 31.729197, 29.826630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626526, -0.285201, 0.725345,
		-0.312807, -0.760392, -0.569172,
		0.713875, -0.583494, 0.387192,
		34.254463, 31.554150, 29.942789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336185, 31.405210, 29.868780>,  <33.754753, 31.962593, 29.671751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336185, 31.405210, 29.868780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687218, 31.429207, 30.059046>,  <33.897835, 31.443605, 30.173204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687218, 31.429207, 30.059046>,  <33.336185, 31.405210, 29.868780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687218, 31.429207, 30.059046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466625, -0.120908, 0.876152,
		0.110074, -0.990849, -0.078113,
		0.877579, 0.059992, 0.475664,
		33.950493, 31.447205, 30.201744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175087, 31.000725, 30.270569>,  <33.336185, 31.405210, 29.868780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175087, 31.000725, 30.270569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493824, 31.186569, 30.425066>,  <33.685066, 31.298077, 30.517765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493824, 31.186569, 30.425066>,  <33.175087, 31.000725, 30.270569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493824, 31.186569, 30.425066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350585, -0.165093, 0.921865,
		0.492076, -0.869988, 0.031334,
		0.796839, 0.464612, 0.386243,
		33.732876, 31.325953, 30.540939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442036, 30.578043, 30.890686>,  <33.175087, 31.000725, 30.270569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442036, 30.578043, 30.890686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605724, 30.940905, 30.929901>,  <33.703938, 31.158621, 30.953430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605724, 30.940905, 30.929901>,  <33.442036, 30.578043, 30.890686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605724, 30.940905, 30.929901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156090, -0.036265, 0.987077,
		0.898985, -0.419236, 0.126757,
		0.409221, 0.907153, 0.098040,
		33.728489, 31.213051, 30.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860870, 30.612793, 31.558872>,  <33.442036, 30.578043, 30.890686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860870, 30.612793, 31.558872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760830, 30.989044, 31.467077>,  <33.700806, 31.214796, 31.412001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760830, 30.989044, 31.467077>,  <33.860870, 30.612793, 31.558872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760830, 30.989044, 31.467077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412937, 0.110756, 0.904000,
		0.875746, 0.320857, 0.360721,
		-0.250103, 0.940630, -0.229488,
		33.685799, 31.271233, 31.398232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258747, 31.075457, 31.902838>,  <33.860870, 30.612793, 31.558872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258747, 31.075457, 31.902838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903717, 31.242210, 31.824432>,  <33.690701, 31.342262, 31.777390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903717, 31.242210, 31.824432>,  <34.258747, 31.075457, 31.902838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903717, 31.242210, 31.824432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204872, 0.023890, 0.978497,
		0.412605, 0.908644, 0.064204,
		-0.887572, 0.416887, -0.196013,
		33.637444, 31.367277, 31.765629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234135, 31.679195, 32.243076>,  <34.258747, 31.075457, 31.902838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234135, 31.679195, 32.243076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853539, 31.556131, 32.244007>,  <33.625179, 31.482292, 32.244564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853539, 31.556131, 32.244007>,  <34.234135, 31.679195, 32.243076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853539, 31.556131, 32.244007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112016, 0.353444, 0.928725,
		-0.286555, 0.883415, -0.370763,
		-0.951493, -0.307662, 0.002324,
		33.568092, 31.463833, 32.244705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565971, 32.280140, 32.724533>,  <34.234135, 31.679195, 32.243076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565971, 32.280140, 32.724533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855751, 32.150509, 32.967892>,  <35.029617, 32.072731, 33.113907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855751, 32.150509, 32.967892>,  <34.565971, 32.280140, 32.724533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855751, 32.150509, 32.967892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688026, 0.394178, -0.609298,
		-0.042356, 0.859998, 0.508537,
		0.724449, -0.324080, 0.608397,
		35.073086, 32.053284, 33.150410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089855, 32.729698, 32.644524>,  <34.565971, 32.280140, 32.724533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089855, 32.729698, 32.644524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359516, 32.505566, 32.836998>,  <35.521313, 32.371086, 32.952484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359516, 32.505566, 32.836998>,  <35.089855, 32.729698, 32.644524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359516, 32.505566, 32.836998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705804, 0.296788, -0.643239,
		0.217616, 0.773268, 0.595566,
		0.674154, -0.560333, 0.481190,
		35.561764, 32.337467, 32.981354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650520, 33.059654, 32.776012>,  <35.089855, 32.729698, 32.644524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650520, 33.059654, 32.776012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785755, 32.683300, 32.784317>,  <35.866898, 32.457489, 32.789299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785755, 32.683300, 32.784317>,  <35.650520, 33.059654, 32.776012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785755, 32.683300, 32.784317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785603, 0.270012, -0.556706,
		0.518191, 0.204524, 0.830450,
		0.338092, -0.940884, 0.020757,
		35.887184, 32.401035, 32.790543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353832, 33.125744, 32.863171>,  <35.650520, 33.059654, 32.776012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353832, 33.125744, 32.863171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327351, 32.741245, 32.756123>,  <36.311462, 32.510548, 32.691895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327351, 32.741245, 32.756123>,  <36.353832, 33.125744, 32.863171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327351, 32.741245, 32.756123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796643, 0.110582, -0.594249,
		0.600815, -0.252538, 0.758450,
		-0.066200, -0.961247, -0.267621,
		36.307491, 32.452869, 32.675835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073257, 32.769405, 32.974064>,  <36.353832, 33.125744, 32.863171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073257, 32.769405, 32.974064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874260, 32.575363, 32.686405>,  <36.754864, 32.458939, 32.513809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874260, 32.575363, 32.686405>,  <37.073257, 32.769405, 32.974064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874260, 32.575363, 32.686405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776307, 0.120981, -0.618636,
		0.387106, -0.866047, 0.316403,
		-0.497490, -0.485104, -0.719151,
		36.725014, 32.429832, 32.470661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561459, 32.352703, 32.697769>,  <37.073257, 32.769405, 32.974064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561459, 32.352703, 32.697769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280289, 32.370346, 32.413811>,  <37.111588, 32.380932, 32.243435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280289, 32.370346, 32.413811>,  <37.561459, 32.352703, 32.697769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280289, 32.370346, 32.413811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710489, 0.090262, -0.697896,
		0.033295, -0.994941, -0.094784,
		-0.702921, 0.044107, -0.709900,
		37.069412, 32.383579, 32.200840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839973, 32.064270, 32.188179>,  <37.561459, 32.352703, 32.697769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839973, 32.064270, 32.188179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536015, 32.251434, 32.007683>,  <37.353638, 32.363731, 31.899385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536015, 32.251434, 32.007683>,  <37.839973, 32.064270, 32.188179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536015, 32.251434, 32.007683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582402, 0.181744, -0.792324,
		-0.288726, -0.864887, -0.410619,
		-0.759898, 0.467910, -0.451238,
		37.308044, 32.391808, 31.872311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675613, 31.677977, 31.525833>,  <37.839973, 32.064270, 32.188179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675613, 31.677977, 31.525833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561680, 32.060886, 31.505846>,  <37.493320, 32.290630, 31.493853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561680, 32.060886, 31.505846>,  <37.675613, 31.677977, 31.525833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561680, 32.060886, 31.505846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727623, 0.181979, -0.661399,
		-0.624046, -0.224750, -0.748368,
		-0.284837, 0.957273, -0.049970,
		37.476231, 32.348068, 31.490854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024723, 31.868002, 30.982847>,  <37.675613, 31.677977, 31.525833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024723, 31.868002, 30.982847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852711, 32.222965, 31.049284>,  <37.749504, 32.435944, 31.089146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852711, 32.222965, 31.049284>,  <38.024723, 31.868002, 30.982847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852711, 32.222965, 31.049284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514910, 0.392189, -0.762270,
		-0.741583, -0.242274, -0.625586,
		-0.430026, 0.887407, 0.166091,
		37.723701, 32.489189, 31.099112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817276, 31.978720, 30.375664>,  <38.024723, 31.868002, 30.982847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817276, 31.978720, 30.375664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845177, 32.321304, 30.580256>,  <37.861916, 32.526855, 30.703011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845177, 32.321304, 30.580256>,  <37.817276, 31.978720, 30.375664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845177, 32.321304, 30.580256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296819, 0.471687, -0.830307,
		-0.952383, 0.209730, -0.221314,
		0.069749, 0.856461, 0.511478,
		37.866100, 32.578243, 30.733700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434143, 32.530022, 29.960119>,  <37.817276, 31.978720, 30.375664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434143, 32.530022, 29.960119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701752, 32.682053, 30.215603>,  <37.862316, 32.773273, 30.368893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701752, 32.682053, 30.215603>,  <37.434143, 32.530022, 29.960119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701752, 32.682053, 30.215603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330811, 0.617263, -0.713828,
		-0.665565, 0.688857, 0.287227,
		0.669020, 0.380081, 0.638710,
		37.902458, 32.796078, 30.407215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510498, 33.225964, 29.747780>,  <37.434143, 32.530022, 29.960119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510498, 33.225964, 29.747780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836090, 33.151928, 29.968023>,  <38.031445, 33.107506, 30.100170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836090, 33.151928, 29.968023>,  <37.510498, 33.225964, 29.747780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836090, 33.151928, 29.968023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558412, 0.510450, -0.653924,
		-0.160022, 0.839751, 0.518856,
		0.813984, -0.185094, 0.550610,
		38.080284, 33.096401, 30.133205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877872, 33.809162, 29.882683>,  <37.510498, 33.225964, 29.747780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877872, 33.809162, 29.882683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157646, 33.523296, 29.885670>,  <38.325508, 33.351776, 29.887461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157646, 33.523296, 29.885670>,  <37.877872, 33.809162, 29.882683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157646, 33.523296, 29.885670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417808, 0.400386, -0.815554,
		0.579855, 0.573543, 0.578633,
		0.699432, -0.714660, 0.007465,
		38.367477, 33.308899, 29.887909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487736, 34.166470, 29.659971>,  <37.877872, 33.809162, 29.882683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487736, 34.166470, 29.659971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589653, 33.781498, 29.622440>,  <38.650803, 33.550514, 29.599922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589653, 33.781498, 29.622440>,  <38.487736, 34.166470, 29.659971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589653, 33.781498, 29.622440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598601, 0.233187, -0.766355,
		0.759444, 0.139100, 0.635528,
		0.254797, -0.962432, -0.093827,
		38.666092, 33.492767, 29.594292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203655, 34.100132, 29.689781>,  <38.487736, 34.166470, 29.659971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203655, 34.100132, 29.689781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064648, 33.794765, 29.472000>,  <38.981243, 33.611546, 29.341331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064648, 33.794765, 29.472000>,  <39.203655, 34.100132, 29.689781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064648, 33.794765, 29.472000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723273, 0.151286, -0.673787,
		0.596749, -0.627938, 0.499584,
		-0.347517, -0.763417, -0.544451,
		38.960392, 33.565739, 29.308664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764980, 34.080021, 29.237701>,  <39.203655, 34.100132, 29.689781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764980, 34.080021, 29.237701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521168, 33.804916, 29.079990>,  <39.374882, 33.639854, 28.985363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521168, 33.804916, 29.079990>,  <39.764980, 34.080021, 29.237701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521168, 33.804916, 29.079990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577513, -0.044502, -0.815168,
		0.543097, -0.724569, 0.424318,
		-0.609528, -0.687764, -0.394279,
		39.338310, 33.598587, 28.961706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204735, 33.369289, 29.021149>,  <39.764980, 34.080021, 29.237701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204735, 33.369289, 29.021149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858521, 33.381779, 28.821199>,  <39.650791, 33.389275, 28.701231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858521, 33.381779, 28.821199>,  <40.204735, 33.369289, 29.021149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858521, 33.381779, 28.821199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452233, -0.380204, -0.806802,
		-0.215246, -0.924375, 0.314960,
		-0.865537, 0.031226, -0.499871,
		39.598858, 33.391148, 28.671238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263382, 32.859970, 28.573387>,  <40.204735, 33.369289, 29.021149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263382, 32.859970, 28.573387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964291, 33.077671, 28.421234>,  <39.784836, 33.208290, 28.329943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964291, 33.077671, 28.421234>,  <40.263382, 32.859970, 28.573387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964291, 33.077671, 28.421234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297764, -0.237195, -0.924703,
		-0.593492, -0.804694, 0.015301,
		-0.747732, 0.544248, -0.380382,
		39.739971, 33.240944, 28.307119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877468, 32.445450, 28.025818>,  <40.263382, 32.859970, 28.573387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877468, 32.445450, 28.025818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805805, 32.830791, 27.945969>,  <39.762806, 33.061996, 27.898058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805805, 32.830791, 27.945969>,  <39.877468, 32.445450, 28.025818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805805, 32.830791, 27.945969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251268, -0.151374, -0.956007,
		-0.951192, -0.221436, -0.214940,
		-0.179158, 0.963355, -0.199626,
		39.752056, 33.119797, 27.886082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591480, 32.524422, 27.284853>,  <39.877468, 32.445450, 28.025818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591480, 32.524422, 27.284853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739132, 32.884460, 27.377439>,  <39.827721, 33.100483, 27.432991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739132, 32.884460, 27.377439>,  <39.591480, 32.524422, 27.284853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739132, 32.884460, 27.377439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288330, 0.125858, -0.949224,
		-0.883523, 0.417121, -0.213067,
		0.369125, 0.900094, 0.231467,
		39.849869, 33.154488, 27.446880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426567, 32.944340, 26.816381>,  <39.591480, 32.524422, 27.284853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426567, 32.944340, 26.816381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711765, 33.182842, 26.963953>,  <39.882885, 33.325943, 27.052496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711765, 33.182842, 26.963953>,  <39.426567, 32.944340, 26.816381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711765, 33.182842, 26.963953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300923, 0.215025, -0.929091,
		-0.633307, 0.773460, -0.026115,
		0.712999, 0.596258, 0.368928,
		39.925667, 33.361721, 27.074631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399960, 33.545918, 26.349230>,  <39.426567, 32.944340, 26.816381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399960, 33.545918, 26.349230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751759, 33.525383, 26.538483>,  <39.962837, 33.513062, 26.652035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751759, 33.525383, 26.538483>,  <39.399960, 33.545918, 26.349230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751759, 33.525383, 26.538483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475770, 0.119071, -0.871473,
		-0.011597, 0.991558, 0.129147,
		0.879493, -0.051338, 0.473135,
		40.015606, 33.509983, 26.680424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764339, 34.162540, 26.208523>,  <39.399960, 33.545918, 26.349230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764339, 34.162540, 26.208523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035336, 33.883602, 26.302099>,  <40.197933, 33.716240, 26.358246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035336, 33.883602, 26.302099>,  <39.764339, 34.162540, 26.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035336, 33.883602, 26.302099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317615, -0.009517, -0.948172,
		0.663426, 0.716676, 0.215039,
		0.677486, -0.697341, 0.233941,
		40.238583, 33.674400, 26.372282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262341, 34.450455, 25.863934>,  <39.764339, 34.162540, 26.208523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262341, 34.450455, 25.863934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382408, 34.077587, 25.944897>,  <40.454449, 33.853867, 25.993475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382408, 34.077587, 25.944897>,  <40.262341, 34.450455, 25.863934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382408, 34.077587, 25.944897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350148, -0.089706, -0.932389,
		0.887298, 0.350744, 0.299468,
		0.300166, -0.932165, 0.202408,
		40.472458, 33.797939, 26.005619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938751, 34.471416, 25.634941>,  <40.262341, 34.450455, 25.863934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938751, 34.471416, 25.634941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858608, 34.079575, 25.641115>,  <40.810524, 33.844471, 25.644819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858608, 34.079575, 25.641115>,  <40.938751, 34.471416, 25.634941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858608, 34.079575, 25.641115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509362, -0.117611, -0.852477,
		0.836903, -0.162940, 0.522536,
		-0.200359, -0.979601, 0.015433,
		40.798500, 33.785694, 25.645744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554737, 34.184330, 25.511347>,  <40.938751, 34.471416, 25.634941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554737, 34.184330, 25.511347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294437, 33.888813, 25.441244>,  <41.138260, 33.711502, 25.399183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294437, 33.888813, 25.441244>,  <41.554737, 34.184330, 25.511347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294437, 33.888813, 25.441244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527901, -0.274315, -0.803786,
		0.545756, -0.615578, 0.568519,
		-0.650746, -0.738793, -0.175255,
		41.099213, 33.667175, 25.388668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956459, 33.450844, 25.490927>,  <41.554737, 34.184330, 25.511347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956459, 33.450844, 25.490927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612713, 33.415966, 25.289377>,  <41.406464, 33.395039, 25.168447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612713, 33.415966, 25.289377>,  <41.956459, 33.450844, 25.490927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612713, 33.415966, 25.289377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497011, -0.374227, -0.782901,
		-0.120293, -0.923228, 0.364937,
		-0.859366, -0.087201, -0.503872,
		41.354904, 33.389805, 25.138216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909592, 32.800526, 25.223570>,  <41.956459, 33.450844, 25.490927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909592, 32.800526, 25.223570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690556, 33.039547, 24.989283>,  <41.559132, 33.182961, 24.848709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690556, 33.039547, 24.989283>,  <41.909592, 32.800526, 25.223570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690556, 33.039547, 24.989283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451686, -0.378147, -0.808074,
		-0.704359, -0.707056, -0.062838,
		-0.547593, 0.597558, -0.585719,
		41.526279, 33.218815, 24.813566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700916, 32.305645, 24.640203>,  <41.909592, 32.800526, 25.223570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700916, 32.305645, 24.640203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651237, 32.685486, 24.525080>,  <41.621429, 32.913391, 24.456005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651237, 32.685486, 24.525080>,  <41.700916, 32.305645, 24.640203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651237, 32.685486, 24.525080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384678, -0.221293, -0.896132,
		-0.914658, -0.222007, -0.337808,
		-0.124193, 0.949601, -0.287808,
		41.613979, 32.970367, 24.438738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422581, 32.114376, 24.071056>,  <41.700916, 32.305645, 24.640203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422581, 32.114376, 24.071056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526054, 32.499035, 24.034580>,  <41.588139, 32.729832, 24.012695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526054, 32.499035, 24.034580>,  <41.422581, 32.114376, 24.071056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526054, 32.499035, 24.034580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483459, -0.210618, -0.849651,
		-0.836272, 0.175703, -0.519401,
		0.258681, 0.961649, -0.091189,
		41.603661, 32.787529, 24.007223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196796, 32.372948, 23.370846>,  <41.422581, 32.114376, 24.071056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196796, 32.372948, 23.370846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490906, 32.607990, 23.505959>,  <41.667370, 32.749016, 23.587027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490906, 32.607990, 23.505959>,  <41.196796, 32.372948, 23.370846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490906, 32.607990, 23.505959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537899, -0.202693, -0.818279,
		-0.412356, 0.783352, -0.465105,
		0.735273, 0.587602, 0.337783,
		41.711487, 32.784271, 23.607294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377155, 32.740742, 22.644592>,  <41.196796, 32.372948, 23.370846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377155, 32.740742, 22.644592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694366, 32.794437, 22.882275>,  <41.884693, 32.826653, 23.024883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694366, 32.794437, 22.882275>,  <41.377155, 32.740742, 22.644592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694366, 32.794437, 22.882275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608828, -0.207792, -0.765605,
		0.020700, 0.968919, -0.246512,
		0.793032, 0.134236, 0.594206,
		41.932278, 32.834709, 23.060537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894943, 33.161278, 22.321699>,  <41.377155, 32.740742, 22.644592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894943, 33.161278, 22.321699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097916, 32.967476, 22.606728>,  <42.219700, 32.851192, 22.777744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097916, 32.967476, 22.606728>,  <41.894943, 33.161278, 22.321699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097916, 32.967476, 22.606728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718235, -0.219062, -0.660416,
		0.476076, 0.846914, 0.236832,
		0.507435, -0.484509, 0.712573,
		42.250145, 32.822124, 22.820499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642345, 33.349628, 22.232355>,  <41.894943, 33.161278, 22.321699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642345, 33.349628, 22.232355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633198, 33.017521, 22.455114>,  <42.627708, 32.818256, 22.588770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633198, 33.017521, 22.455114>,  <42.642345, 33.349628, 22.232355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633198, 33.017521, 22.455114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607376, -0.453996, -0.651906,
		0.794085, 0.323336, 0.514668,
		-0.022872, -0.830266, 0.556898,
		42.626335, 32.768440, 22.622185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371738, 33.091381, 22.298094>,  <42.642345, 33.349628, 22.232355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371738, 33.091381, 22.298094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143753, 32.771652, 22.374233>,  <43.006962, 32.579815, 22.419918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143753, 32.771652, 22.374233>,  <43.371738, 33.091381, 22.298094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143753, 32.771652, 22.374233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584475, -0.557225, -0.589821,
		0.577524, -0.224920, 0.784778,
		-0.569961, -0.799319, 0.190351,
		42.972763, 32.531857, 22.431339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910660, 32.461544, 22.541021>,  <43.371738, 33.091381, 22.298094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910660, 32.461544, 22.541021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564659, 32.301033, 22.420519>,  <43.357059, 32.204727, 22.348217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564659, 32.301033, 22.420519>,  <43.910660, 32.461544, 22.541021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564659, 32.301033, 22.420519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496803, -0.600597, -0.626474,
		0.070456, -0.691564, 0.718870,
		-0.864999, -0.401276, -0.301256,
		43.305161, 32.180649, 22.330143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090427, 31.761576, 22.461220>,  <43.910660, 32.461544, 22.541021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090427, 31.761576, 22.461220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753567, 31.800461, 22.249060>,  <43.551449, 31.823792, 22.121763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753567, 31.800461, 22.249060>,  <44.090427, 31.761576, 22.461220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753567, 31.800461, 22.249060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392426, -0.564121, -0.726477,
		-0.369831, -0.819949, 0.436930,
		-0.842156, 0.097211, -0.530400,
		43.500919, 31.829624, 22.089939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022072, 31.177296, 22.159803>,  <44.090427, 31.761576, 22.461220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022072, 31.177296, 22.159803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785957, 31.409496, 21.935452>,  <43.644291, 31.548817, 21.800840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785957, 31.409496, 21.935452>,  <44.022072, 31.177296, 22.159803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785957, 31.409496, 21.935452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442881, -0.348011, -0.826283,
		-0.674850, -0.736144, -0.051668,
		-0.590282, 0.580500, -0.560880,
		43.608871, 31.583647, 21.767187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018539, 30.857016, 21.585619>,  <44.022072, 31.177296, 22.159803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018539, 30.857016, 21.585619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314964, 30.627043, 21.724340>,  <44.492821, 30.489059, 21.807573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314964, 30.627043, 21.724340>,  <44.018539, 30.857016, 21.585619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314964, 30.627043, 21.724340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310057, 0.165112, 0.936271,
		-0.595555, -0.801367, -0.055904,
		0.741066, -0.574934, 0.346803,
		44.537285, 30.454563, 21.828381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736160, 30.389761, 22.113462>,  <44.018539, 30.857016, 21.585619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736160, 30.389761, 22.113462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129761, 30.403259, 22.183445>,  <44.365921, 30.411358, 22.225435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129761, 30.403259, 22.183445>,  <43.736160, 30.389761, 22.113462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129761, 30.403259, 22.183445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167898, -0.153131, 0.973838,
		0.059654, -0.987630, -0.145015,
		0.983998, 0.033746, 0.174956,
		44.424961, 30.413382, 22.235931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899956, 29.794594, 22.471342>,  <43.736160, 30.389761, 22.113462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899956, 29.794594, 22.471342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195499, 30.054707, 22.542027>,  <44.372826, 30.210773, 22.584438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195499, 30.054707, 22.542027>,  <43.899956, 29.794594, 22.471342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195499, 30.054707, 22.542027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302988, 0.086350, 0.949074,
		0.601906, -0.754770, 0.260827,
		0.738856, 0.650281, 0.176712,
		44.417156, 30.249790, 22.595039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206593, 29.536568, 23.022131>,  <43.899956, 29.794594, 22.471342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206593, 29.536568, 23.022131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318447, 29.920563, 23.016146>,  <44.385559, 30.150961, 23.012554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318447, 29.920563, 23.016146>,  <44.206593, 29.536568, 23.022131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318447, 29.920563, 23.016146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077334, 0.038056, 0.996279,
		0.956986, -0.277440, 0.084882,
		0.279638, 0.959989, -0.014963,
		44.402340, 30.208559, 23.011656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913391, 29.745661, 23.416950>,  <44.206593, 29.536568, 23.022131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913391, 29.745661, 23.416950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608181, 30.004101, 23.409468>,  <44.425056, 30.159164, 23.404978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608181, 30.004101, 23.409468>,  <44.913391, 29.745661, 23.416950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608181, 30.004101, 23.409468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137390, -0.133835, 0.981434,
		0.631600, 0.751427, 0.190887,
		-0.763024, 0.646100, -0.018708,
		44.379272, 30.197931, 23.403854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691563, 29.819420, 24.080200>,  <44.913391, 29.745661, 23.416950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691563, 29.819420, 24.080200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492847, 30.116110, 23.899958>,  <44.373619, 30.294125, 23.791811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492847, 30.116110, 23.899958>,  <44.691563, 29.819420, 24.080200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492847, 30.116110, 23.899958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344566, 0.307968, 0.886809,
		0.796541, 0.595818, 0.102580,
		-0.496786, 0.741725, -0.450608,
		44.343811, 30.338627, 23.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897198, 30.519514, 24.370029>,  <44.691563, 29.819420, 24.080200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897198, 30.519514, 24.370029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526638, 30.517307, 24.219431>,  <44.304302, 30.515984, 24.129072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526638, 30.517307, 24.219431>,  <44.897198, 30.519514, 24.370029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526638, 30.517307, 24.219431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368717, 0.215980, 0.904102,
		0.076326, 0.976382, -0.202119,
		-0.926403, -0.005518, -0.376494,
		44.248718, 30.515652, 24.106483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649075, 30.961119, 24.789728>,  <44.897198, 30.519514, 24.370029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649075, 30.961119, 24.789728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337570, 30.790117, 24.606091>,  <44.150665, 30.687515, 24.495909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337570, 30.790117, 24.606091>,  <44.649075, 30.961119, 24.789728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337570, 30.790117, 24.606091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555986, 0.131433, 0.820734,
		-0.290528, 0.894408, -0.340042,
		-0.778763, -0.427505, -0.459094,
		44.103943, 30.661865, 24.468363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067322, 31.420401, 24.839066>,  <44.649075, 30.961119, 24.789728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067322, 31.420401, 24.839066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889679, 31.065956, 24.786043>,  <43.783092, 30.853289, 24.754230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889679, 31.065956, 24.786043>,  <44.067322, 31.420401, 24.839066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889679, 31.065956, 24.786043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682846, 0.238962, 0.690376,
		-0.580076, 0.397117, -0.711203,
		-0.444111, -0.886112, -0.132554,
		43.756447, 30.800123, 24.746277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326111, 31.542076, 24.813492>,  <44.067322, 31.420401, 24.839066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326111, 31.542076, 24.813492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333839, 31.151558, 24.899723>,  <43.338478, 30.917248, 24.951462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333839, 31.151558, 24.899723>,  <43.326111, 31.542076, 24.813492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333839, 31.151558, 24.899723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628936, 0.155745, 0.761698,
		-0.777217, -0.150302, -0.611018,
		0.019322, -0.976295, 0.215578,
		43.339638, 30.858669, 24.964397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638912, 31.495216, 25.043350>,  <43.326111, 31.542076, 24.813492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638912, 31.495216, 25.043350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846100, 31.184746, 25.187162>,  <42.970413, 30.998463, 25.273449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846100, 31.184746, 25.187162>,  <42.638912, 31.495216, 25.043350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846100, 31.184746, 25.187162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472363, 0.090873, 0.876707,
		-0.713152, -0.623931, -0.319568,
		0.517964, -0.776178, 0.359528,
		43.001488, 30.951893, 25.295021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120949, 30.859529, 25.178806>,  <42.638912, 31.495216, 25.043350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120949, 30.859529, 25.178806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436497, 30.821983, 25.421745>,  <42.625824, 30.799456, 25.567509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436497, 30.821983, 25.421745>,  <42.120949, 30.859529, 25.178806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436497, 30.821983, 25.421745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584076, 0.192880, 0.788450,
		-0.191155, -0.976722, 0.097331,
		0.788870, -0.093868, 0.607350,
		42.673157, 30.793823, 25.603951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918427, 30.309755, 25.691298>,  <42.120949, 30.859529, 25.178806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918427, 30.309755, 25.691298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218182, 30.532150, 25.835123>,  <42.398037, 30.665588, 25.921419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218182, 30.532150, 25.835123>,  <41.918427, 30.309755, 25.691298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218182, 30.532150, 25.835123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490155, 0.100738, 0.865794,
		0.445151, -0.825062, 0.348014,
		0.749392, 0.555990, 0.359565,
		42.443001, 30.698948, 25.942993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902580, 30.115076, 26.408895>,  <41.918427, 30.309755, 25.691298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902580, 30.115076, 26.408895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116161, 30.452368, 26.384052>,  <42.244308, 30.654743, 26.369146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116161, 30.452368, 26.384052>,  <41.902580, 30.115076, 26.408895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116161, 30.452368, 26.384052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369134, 0.298566, 0.880113,
		0.760681, -0.447012, 0.470685,
		0.533951, 0.843231, -0.062106,
		42.276348, 30.705338, 26.365421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240620, 30.204666, 27.030123>,  <41.902580, 30.115076, 26.408895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240620, 30.204666, 27.030123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233479, 30.577644, 26.885775>,  <42.229195, 30.801432, 26.799166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233479, 30.577644, 26.885775>,  <42.240620, 30.204666, 27.030123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233479, 30.577644, 26.885775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220458, 0.348372, 0.911063,
		0.975233, 0.095825, 0.199344,
		-0.017856, 0.932445, -0.360869,
		42.228123, 30.857378, 26.777514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633972, 30.611946, 27.494726>,  <42.240620, 30.204666, 27.030123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633972, 30.611946, 27.494726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387615, 30.873262, 27.318594>,  <42.239803, 31.030052, 27.212915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387615, 30.873262, 27.318594>,  <42.633972, 30.611946, 27.494726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387615, 30.873262, 27.318594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218326, 0.395494, 0.892143,
		0.756978, 0.645596, -0.100949,
		-0.615888, 0.653292, -0.440330,
		42.202850, 31.069250, 27.186495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819874, 31.245613, 27.758364>,  <42.633972, 30.611946, 27.494726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819874, 31.245613, 27.758364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445747, 31.277592, 27.620495>,  <42.221272, 31.296778, 27.537773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445747, 31.277592, 27.620495>,  <42.819874, 31.245613, 27.758364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445747, 31.277592, 27.620495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259870, 0.505877, 0.822531,
		0.240118, 0.858893, -0.452378,
		-0.935313, 0.079945, -0.344671,
		42.165154, 31.301575, 27.517094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586422, 31.894087, 27.942741>,  <42.819874, 31.245613, 27.758364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586422, 31.894087, 27.942741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245956, 31.700777, 27.860806>,  <42.041676, 31.584791, 27.811644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245956, 31.700777, 27.860806>,  <42.586422, 31.894087, 27.942741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245956, 31.700777, 27.860806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461908, 0.504278, 0.729620,
		-0.249311, 0.715645, -0.652454,
		-0.851167, -0.483276, -0.204840,
		41.990608, 31.555794, 27.799353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041054, 32.407833, 27.833120>,  <42.586422, 31.894087, 27.942741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041054, 32.407833, 27.833120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870995, 32.059040, 27.930187>,  <41.768959, 31.849764, 27.988428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870995, 32.059040, 27.930187>,  <42.041054, 32.407833, 27.833120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870995, 32.059040, 27.930187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456049, 0.437957, 0.774734,
		-0.781835, 0.218710, -0.583866,
		-0.425150, -0.871986, 0.242668,
		41.743450, 31.797443, 28.002987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373886, 32.443497, 28.063860>,  <42.041054, 32.407833, 27.833120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373886, 32.443497, 28.063860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423832, 32.088177, 28.240643>,  <41.453800, 31.874985, 28.346712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423832, 32.088177, 28.240643>,  <41.373886, 32.443497, 28.063860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423832, 32.088177, 28.240643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447439, 0.347162, 0.824183,
		-0.885555, -0.300659, -0.354114,
		0.124863, -0.888303, 0.441957,
		41.461292, 31.821686, 28.373230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777264, 32.323780, 28.422241>,  <41.373886, 32.443497, 28.063860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777264, 32.323780, 28.422241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009377, 32.048817, 28.596933>,  <41.148643, 31.883839, 28.701748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009377, 32.048817, 28.596933>,  <40.777264, 32.323780, 28.422241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009377, 32.048817, 28.596933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439949, 0.186684, 0.878404,
		-0.685356, -0.701865, -0.194096,
		0.580287, -0.687412, 0.436730,
		41.183464, 31.842594, 28.727953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302299, 31.895542, 28.787949>,  <40.777264, 32.323780, 28.422241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302299, 31.895542, 28.787949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648144, 31.837858, 28.980471>,  <40.855648, 31.803247, 29.095984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648144, 31.837858, 28.980471>,  <40.302299, 31.895542, 28.787949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648144, 31.837858, 28.980471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477315, 0.063418, 0.876441,
		-0.156915, -0.987513, -0.014002,
		0.864608, -0.144210, 0.481306,
		40.907528, 31.794596, 29.124863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148888, 31.504972, 29.401270>,  <40.302299, 31.895542, 28.787949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148888, 31.504972, 29.401270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493443, 31.658495, 29.534357>,  <40.700176, 31.750608, 29.614210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493443, 31.658495, 29.534357>,  <40.148888, 31.504972, 29.401270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493443, 31.658495, 29.534357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382849, 0.060095, 0.921854,
		0.333820, -0.921455, 0.198706,
		0.861389, 0.383808, 0.332717,
		40.751858, 31.773638, 29.634172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318367, 31.089714, 29.859997>,  <40.148888, 31.504972, 29.401270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318367, 31.089714, 29.859997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520638, 31.421471, 29.954988>,  <40.642002, 31.620525, 30.011984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520638, 31.421471, 29.954988>,  <40.318367, 31.089714, 29.859997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520638, 31.421471, 29.954988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382246, -0.031377, 0.923528,
		0.773419, -0.557783, 0.301166,
		0.505678, 0.829394, 0.237477,
		40.672340, 31.670288, 30.026232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729336, 30.932989, 30.503733>,  <40.318367, 31.089714, 29.859997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729336, 30.932989, 30.503733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698357, 31.331453, 30.487421>,  <40.679771, 31.570532, 30.477634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698357, 31.331453, 30.487421>,  <40.729336, 30.932989, 30.503733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698357, 31.331453, 30.487421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238843, 0.021172, 0.970827,
		0.967965, 0.084924, 0.236287,
		-0.077444, 0.996163, -0.040778,
		40.675125, 31.630302, 30.475187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050999, 31.167738, 31.087521>,  <40.729336, 30.932989, 30.503733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050999, 31.167738, 31.087521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818073, 31.475307, 30.981945>,  <40.678318, 31.659849, 30.918600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818073, 31.475307, 30.981945>,  <41.050999, 31.167738, 31.087521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818073, 31.475307, 30.981945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308441, 0.091423, 0.946840,
		0.752177, 0.632771, 0.183930,
		-0.582318, 0.768923, -0.263939,
		40.643379, 31.705984, 30.902763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225090, 31.632629, 31.539778>,  <41.050999, 31.167738, 31.087521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225090, 31.632629, 31.539778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878616, 31.778145, 31.402735>,  <40.670731, 31.865454, 31.320509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878616, 31.778145, 31.402735>,  <41.225090, 31.632629, 31.539778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878616, 31.778145, 31.402735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353471, 0.038617, 0.934648,
		0.353245, 0.930681, 0.095139,
		-0.866185, 0.363788, -0.342610,
		40.618759, 31.887281, 31.299952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059273, 32.209602, 31.970259>,  <41.225090, 31.632629, 31.539778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059273, 32.209602, 31.970259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701775, 32.122265, 31.813520>,  <40.487274, 32.069862, 31.719479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701775, 32.122265, 31.813520>,  <41.059273, 32.209602, 31.970259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701775, 32.122265, 31.813520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434372, 0.203216, 0.877510,
		-0.111973, 0.954478, -0.276467,
		-0.893747, -0.218347, -0.391844,
		40.433651, 32.056759, 31.695967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554817, 32.755009, 32.126072>,  <41.059273, 32.209602, 31.970259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554817, 32.755009, 32.126072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308125, 32.445969, 32.065765>,  <40.160107, 32.260544, 32.029583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308125, 32.445969, 32.065765>,  <40.554817, 32.755009, 32.126072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308125, 32.445969, 32.065765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432725, 0.172763, 0.884817,
		-0.657560, 0.610939, -0.440871,
		-0.616736, -0.772597, -0.150767,
		40.123104, 32.214191, 32.020535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842487, 33.043728, 32.336609>,  <40.554817, 32.755009, 32.126072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842487, 33.043728, 32.336609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819805, 32.644405, 32.331272>,  <39.806198, 32.404812, 32.328072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819805, 32.644405, 32.331272>,  <39.842487, 33.043728, 32.336609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819805, 32.644405, 32.331272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661033, 0.027523, 0.749852,
		-0.748212, 0.051337, -0.661471,
		-0.056701, -0.998302, -0.013343,
		39.802795, 32.344913, 32.327271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145985, 32.844612, 32.256386>,  <39.842487, 33.043728, 32.336609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145985, 32.844612, 32.256386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347713, 32.556011, 32.446159>,  <39.468750, 32.382851, 32.560024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347713, 32.556011, 32.446159>,  <39.145985, 32.844612, 32.256386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347713, 32.556011, 32.446159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632407, 0.065497, 0.771862,
		-0.587976, -0.689304, -0.423254,
		0.504326, -0.721505, 0.474432,
		39.499012, 32.339561, 32.588490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573822, 32.511147, 32.497292>,  <39.145985, 32.844612, 32.256386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573822, 32.511147, 32.497292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901066, 32.381710, 32.687439>,  <39.097412, 32.304047, 32.801529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901066, 32.381710, 32.687439>,  <38.573822, 32.511147, 32.497292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901066, 32.381710, 32.687439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532733, -0.115219, 0.838403,
		-0.216529, -0.939155, -0.266651,
		0.818114, -0.323592, 0.475370,
		39.146500, 32.284634, 32.830051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301327, 31.980595, 32.830036>,  <38.573822, 32.511147, 32.497292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301327, 31.980595, 32.830036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644024, 32.082134, 33.009613>,  <38.849644, 32.143059, 33.117359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644024, 32.082134, 33.009613>,  <38.301327, 31.980595, 32.830036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644024, 32.082134, 33.009613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470011, 0.025947, 0.882279,
		0.212318, -0.966895, 0.141543,
		0.856744, 0.253850, 0.448942,
		38.901047, 32.158287, 33.144295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308468, 31.507353, 33.341785>,  <38.301327, 31.980595, 32.830036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308468, 31.507353, 33.341785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597733, 31.751217, 33.471619>,  <38.771290, 31.897535, 33.549519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597733, 31.751217, 33.471619>,  <38.308468, 31.507353, 33.341785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597733, 31.751217, 33.471619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373367, -0.050299, 0.926319,
		0.581066, -0.791066, 0.191253,
		0.723159, 0.609660, 0.324585,
		38.814682, 31.934114, 33.568993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581440, 31.265724, 34.015308>,  <38.308468, 31.507353, 33.341785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581440, 31.265724, 34.015308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660866, 31.657515, 34.029137>,  <38.708523, 31.892590, 34.037434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660866, 31.657515, 34.029137>,  <38.581440, 31.265724, 34.015308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660866, 31.657515, 34.029137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393959, 0.047472, 0.917901,
		0.897422, -0.195883, 0.395301,
		0.198567, 0.979478, 0.034567,
		38.720436, 31.951359, 34.039505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891357, 31.355038, 34.633602>,  <38.581440, 31.265724, 34.015308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891357, 31.355038, 34.633602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757088, 31.717079, 34.529209>,  <38.676525, 31.934303, 34.466576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757088, 31.717079, 34.529209>,  <38.891357, 31.355038, 34.633602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757088, 31.717079, 34.529209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529837, 0.047655, 0.846760,
		0.778841, 0.422516, 0.463560,
		-0.335678, 0.905102, -0.260980,
		38.656384, 31.988609, 34.450916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151249, 31.803480, 35.201584>,  <38.891357, 31.355038, 34.633602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151249, 31.803480, 35.201584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839294, 31.974838, 35.019047>,  <38.652122, 32.077652, 34.909523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839294, 31.974838, 35.019047>,  <39.151249, 31.803480, 35.201584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839294, 31.974838, 35.019047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487020, 0.042654, 0.872349,
		0.393175, 0.902584, 0.175372,
		-0.779887, 0.428396, -0.456347,
		38.605328, 32.103355, 34.882141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116596, 32.462105, 35.381004>,  <39.151249, 31.803480, 35.201584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116596, 32.462105, 35.381004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743847, 32.372932, 35.266518>,  <38.520199, 32.319427, 35.197826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743847, 32.372932, 35.266518>,  <39.116596, 32.462105, 35.381004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743847, 32.372932, 35.266518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311826, 0.088949, 0.945967,
		-0.185431, 0.970767, -0.152405,
		-0.931869, -0.222935, -0.286216,
		38.464287, 32.306053, 35.180653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713303, 32.807304, 35.840115>,  <39.116596, 32.462105, 35.381004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713303, 32.807304, 35.840115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442448, 32.556255, 35.686451>,  <38.279934, 32.405624, 35.594254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442448, 32.556255, 35.686451>,  <38.713303, 32.807304, 35.840115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442448, 32.556255, 35.686451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348174, -0.186652, 0.918660,
		-0.648275, 0.755812, -0.092133,
		-0.677137, -0.627622, -0.384156,
		38.239307, 32.367970, 35.571205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071926, 33.156326, 36.003246>,  <38.713303, 32.807304, 35.840115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071926, 33.156326, 36.003246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054237, 32.761494, 35.941654>,  <38.043625, 32.524593, 35.904697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054237, 32.761494, 35.941654>,  <38.071926, 33.156326, 36.003246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054237, 32.761494, 35.941654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205508, -0.141850, 0.968321,
		-0.977656, 0.074467, -0.196581,
		-0.044222, -0.987083, -0.153984,
		38.040970, 32.465370, 35.895458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454590, 32.821079, 36.221497>,  <38.071926, 33.156326, 36.003246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454590, 32.821079, 36.221497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736252, 32.537178, 36.229671>,  <37.905247, 32.366837, 36.234577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736252, 32.537178, 36.229671>,  <37.454590, 32.821079, 36.221497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736252, 32.537178, 36.229671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329242, -0.300873, 0.895028,
		-0.629103, -0.636963, -0.445541,
		0.704151, -0.709756, 0.020435,
		37.947498, 32.324253, 36.235802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118721, 32.253727, 36.526688>,  <37.454590, 32.821079, 36.221497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118721, 32.253727, 36.526688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513062, 32.201591, 36.568840>,  <37.749664, 32.170311, 36.594131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513062, 32.201591, 36.568840>,  <37.118721, 32.253727, 36.526688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513062, 32.201591, 36.568840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155349, -0.474453, 0.866465,
		-0.062938, -0.870578, -0.487989,
		0.985853, -0.130343, 0.105382,
		37.808819, 32.162487, 36.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302151, 31.531128, 36.536987>,  <37.118721, 32.253727, 36.526688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302151, 31.531128, 36.536987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583084, 31.732603, 36.738194>,  <37.751644, 31.853489, 36.858917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583084, 31.732603, 36.738194>,  <37.302151, 31.531128, 36.536987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583084, 31.732603, 36.738194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287829, -0.445353, 0.847830,
		0.651062, -0.740242, -0.167810,
		0.702334, 0.503689, 0.503015,
		37.793785, 31.883709, 36.889099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603287, 31.046516, 36.883549>,  <37.302151, 31.531128, 36.536987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603287, 31.046516, 36.883549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687809, 31.388159, 37.073643>,  <37.738522, 31.593145, 37.187698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687809, 31.388159, 37.073643>,  <37.603287, 31.046516, 36.883549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687809, 31.388159, 37.073643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368055, -0.380894, 0.848207,
		0.905475, -0.354145, 0.233872,
		0.211308, 0.854108, 0.475235,
		37.751202, 31.644392, 37.216213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235413, 30.901552, 37.429356>,  <37.603287, 31.046516, 36.883549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235413, 30.901552, 37.429356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051987, 31.235861, 37.550152>,  <37.941929, 31.436447, 37.622631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051987, 31.235861, 37.550152>,  <38.235413, 30.901552, 37.429356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051987, 31.235861, 37.550152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049160, -0.315451, 0.947668,
		0.887298, 0.449417, 0.103569,
		-0.458569, 0.835772, 0.301992,
		37.914417, 31.486593, 37.640751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606163, 31.205778, 37.986317>,  <38.235413, 30.901552, 37.429356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606163, 31.205778, 37.986317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239529, 31.364147, 38.008629>,  <38.019547, 31.459169, 38.022015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239529, 31.364147, 38.008629>,  <38.606163, 31.205778, 37.986317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239529, 31.364147, 38.008629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035816, -0.220250, 0.974786,
		0.398225, 0.891479, 0.216059,
		-0.916588, 0.395923, 0.055780,
		37.964554, 31.482924, 38.025364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601059, 31.617393, 38.638378>,  <38.606163, 31.205778, 37.986317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601059, 31.617393, 38.638378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211308, 31.583107, 38.555199>,  <37.977455, 31.562534, 38.505291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211308, 31.583107, 38.555199>,  <38.601059, 31.617393, 38.638378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211308, 31.583107, 38.555199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213744, 0.065075, 0.974720,
		-0.070017, 0.994192, -0.081729,
		-0.974377, -0.085716, -0.207946,
		37.918995, 31.557392, 38.492813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320358, 31.839115, 39.155930>,  <38.601059, 31.617393, 38.638378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320358, 31.839115, 39.155930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979717, 31.703991, 38.995605>,  <37.775333, 31.622915, 38.899410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979717, 31.703991, 38.995605>,  <38.320358, 31.839115, 39.155930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979717, 31.703991, 38.995605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424156, -0.005178, 0.905574,
		-0.307989, 0.941199, -0.138876,
		-0.851607, -0.337812, -0.400810,
		37.724236, 31.602648, 38.875362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771069, 32.338547, 39.242138>,  <38.320358, 31.839115, 39.155930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771069, 32.338547, 39.242138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578529, 31.992514, 39.185654>,  <37.463005, 31.784893, 39.151764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578529, 31.992514, 39.185654>,  <37.771069, 32.338547, 39.242138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578529, 31.992514, 39.185654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518242, 0.150945, 0.841808,
		-0.706919, 0.478380, -0.520979,
		-0.481343, -0.865083, -0.141211,
		37.434128, 31.732988, 39.143291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077950, 32.486801, 39.086292>,  <37.771069, 32.338547, 39.242138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077950, 32.486801, 39.086292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098309, 32.121250, 39.247410>,  <37.110523, 31.901920, 39.344082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098309, 32.121250, 39.247410>,  <37.077950, 32.486801, 39.086292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098309, 32.121250, 39.247410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658152, 0.272663, 0.701777,
		-0.751163, -0.300818, -0.587590,
		0.050893, -0.913873, 0.402798,
		37.113575, 31.847088, 39.368248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311623, 32.278358, 39.195118>,  <37.077950, 32.486801, 39.086292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311623, 32.278358, 39.195118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587673, 32.103622, 39.425907>,  <36.753304, 31.998781, 39.564381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587673, 32.103622, 39.425907>,  <36.311623, 32.278358, 39.195118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587673, 32.103622, 39.425907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490549, 0.303776, 0.816751,
		-0.532060, -0.846694, -0.004647,
		0.690126, -0.436840, 0.576972,
		36.794712, 31.972570, 39.598999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995502, 32.575016, 39.862228>,  <36.311623, 32.278358, 39.195118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995502, 32.575016, 39.862228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282322, 32.309196, 39.946339>,  <36.454414, 32.149704, 39.996803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282322, 32.309196, 39.946339>,  <35.995502, 32.575016, 39.862228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282322, 32.309196, 39.946339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124781, 0.174414, 0.976734,
		-0.685759, -0.726608, 0.042141,
		0.717052, -0.664546, 0.210273,
		36.497437, 32.109833, 40.009422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609638, 32.140583, 40.334888>,  <35.995502, 32.575016, 39.862228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609638, 32.140583, 40.334888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008949, 32.159859, 40.348267>,  <36.248535, 32.171425, 40.356293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008949, 32.159859, 40.348267>,  <35.609638, 32.140583, 40.334888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008949, 32.159859, 40.348267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049223, 0.377937, 0.924522,
		0.031910, -0.924577, 0.379658,
		0.998278, 0.048189, 0.033450,
		36.308434, 32.174316, 40.358303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843136, 31.764771, 40.938099>,  <35.609638, 32.140583, 40.334888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843136, 31.764771, 40.938099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105091, 32.046886, 40.829521>,  <36.262264, 32.216156, 40.764374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105091, 32.046886, 40.829521>,  <35.843136, 31.764771, 40.938099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105091, 32.046886, 40.829521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059379, 0.310047, 0.948865,
		0.753386, -0.637522, 0.161167,
		0.654892, 0.705292, -0.271441,
		36.301559, 32.258472, 40.748089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329720, 31.831816, 41.461887>,  <35.843136, 31.764771, 40.938099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329720, 31.831816, 41.461887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387177, 32.194332, 41.302887>,  <36.421650, 32.411842, 41.207485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387177, 32.194332, 41.302887>,  <36.329720, 31.831816, 41.461887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387177, 32.194332, 41.302887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038306, 0.406456, 0.912867,
		0.988887, -0.115903, 0.093102,
		0.143646, 0.906289, -0.397500,
		36.430271, 32.466217, 41.183636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682388, 32.081833, 41.989094>,  <36.329720, 31.831816, 41.461887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682388, 32.081833, 41.989094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593239, 32.387672, 41.747196>,  <36.539749, 32.571175, 41.602058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593239, 32.387672, 41.747196>,  <36.682388, 32.081833, 41.989094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593239, 32.387672, 41.747196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044642, 0.627701, 0.777173,
		0.973824, 0.146216, -0.174033,
		-0.222876, 0.764599, -0.604743,
		36.526375, 32.617054, 41.565773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152100, 32.575603, 41.982723>,  <36.682388, 32.081833, 41.989094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152100, 32.575603, 41.982723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804665, 32.758602, 41.906563>,  <36.596203, 32.868401, 41.860867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804665, 32.758602, 41.906563>,  <37.152100, 32.575603, 41.982723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804665, 32.758602, 41.906563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056153, 0.472627, 0.879472,
		0.492339, 0.753209, -0.436209,
		-0.868590, 0.457493, -0.190398,
		36.544086, 32.895851, 41.849445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275826, 33.222050, 42.247742>,  <37.152100, 32.575603, 41.982723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275826, 33.222050, 42.247742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880692, 33.162037, 42.231384>,  <36.643612, 33.126030, 42.221569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880692, 33.162037, 42.231384>,  <37.275826, 33.222050, 42.247742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880692, 33.162037, 42.231384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087785, 0.320925, 0.943027,
		-0.128360, 0.935145, -0.330192,
		-0.987835, -0.150033, -0.040898,
		36.584343, 33.117027, 42.219116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066196, 33.696938, 42.699951>,  <37.275826, 33.222050, 42.247742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066196, 33.696938, 42.699951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730019, 33.481201, 42.678909>,  <36.528313, 33.351761, 42.666286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730019, 33.481201, 42.678909>,  <37.066196, 33.696938, 42.699951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730019, 33.481201, 42.678909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107417, 0.070666, 0.991700,
		-0.531144, 0.839119, -0.117325,
		-0.840445, -0.539338, -0.052602,
		36.477886, 33.319401, 42.663128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488392, 34.174469, 42.966644>,  <37.066196, 33.696938, 42.699951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488392, 34.174469, 42.966644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460770, 33.777065, 43.002789>,  <36.444195, 33.538624, 43.024475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460770, 33.777065, 43.002789>,  <36.488392, 34.174469, 42.966644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460770, 33.777065, 43.002789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473425, 0.112366, 0.873638,
		-0.878123, 0.017554, -0.478113,
		-0.069060, -0.993512, 0.090361,
		36.440052, 33.479012, 43.029896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795612, 33.954010, 43.224541>,  <36.488392, 34.174469, 42.966644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795612, 33.954010, 43.224541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639668, 33.644032, 43.423527>,  <35.546101, 33.458046, 43.542919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639668, 33.644032, 43.423527>,  <35.795612, 33.954010, 43.224541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639668, 33.644032, 43.423527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823503, -0.535158, -0.188279,
		0.412126, 0.336259, 0.846807,
		-0.389865, -0.774943, 0.497463,
		35.522709, 33.411549, 43.572765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181225, 33.872459, 43.795383>,  <35.795612, 33.954010, 43.224541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181225, 33.872459, 43.795383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016247, 33.553860, 43.618530>,  <35.917259, 33.362701, 43.512421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016247, 33.553860, 43.618530>,  <36.181225, 33.872459, 43.795383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016247, 33.553860, 43.618530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899337, -0.433355, -0.058277,
		-0.145181, -0.421659, 0.895057,
		-0.412450, -0.796497, -0.442128,
		35.892513, 33.314911, 43.485893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537891, 33.314434, 44.114029>,  <36.181225, 33.872459, 43.795383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537891, 33.314434, 44.114029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381401, 33.157661, 43.780964>,  <36.287506, 33.063599, 43.581123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381401, 33.157661, 43.780964>,  <36.537891, 33.314434, 44.114029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381401, 33.157661, 43.780964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880559, -0.422417, -0.214895,
		-0.267508, -0.817284, 0.510378,
		-0.391222, -0.391932, -0.832667,
		36.264034, 33.040081, 43.531162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434906, 32.489559, 44.061745>,  <36.537891, 33.314434, 44.114029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434906, 32.489559, 44.061745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506966, 32.677296, 43.715965>,  <36.550201, 32.789936, 43.508499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506966, 32.677296, 43.715965>,  <36.434906, 32.489559, 44.061745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506966, 32.677296, 43.715965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912818, -0.407199, -0.030857,
		-0.366484, -0.783522, -0.501779,
		0.180147, 0.469342, -0.864445,
		36.561008, 32.818100, 43.456631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673809, 31.998032, 43.666077>,  <36.434906, 32.489559, 44.061745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673809, 31.998032, 43.666077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829311, 32.334278, 43.515221>,  <36.922615, 32.536026, 43.424709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829311, 32.334278, 43.515221>,  <36.673809, 31.998032, 43.666077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829311, 32.334278, 43.515221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897162, -0.438548, -0.052683,
		-0.209679, -0.317873, -0.924657,
		0.388760, 0.840614, -0.377138,
		36.945938, 32.586464, 43.402081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108994, 32.251732, 43.156292>,  <36.673809, 31.998032, 43.666077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108994, 32.251732, 43.156292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087559, 32.647324, 43.101093>,  <36.074699, 32.884678, 43.067974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087559, 32.647324, 43.101093>,  <36.108994, 32.251732, 43.156292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087559, 32.647324, 43.101093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224928, -0.122687, -0.966621,
		-0.972901, -0.082834, -0.215876,
		-0.053583, 0.988983, -0.137994,
		36.071484, 32.944019, 43.059696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496777, 32.458382, 42.641205>,  <36.108994, 32.251732, 43.156292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496777, 32.458382, 42.641205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766628, 32.753578, 42.635040>,  <35.928539, 32.930698, 42.631344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766628, 32.753578, 42.635040>,  <35.496777, 32.458382, 42.641205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766628, 32.753578, 42.635040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057862, -0.073681, -0.995602,
		-0.735884, 0.670773, -0.092409,
		0.674631, 0.737994, -0.015408,
		35.969017, 32.974976, 42.630417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308945, 33.007812, 42.144890>,  <35.496777, 32.458382, 42.641205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308945, 33.007812, 42.144890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706566, 33.040447, 42.173721>,  <35.945141, 33.060028, 42.191021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706566, 33.040447, 42.173721>,  <35.308945, 33.007812, 42.144890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706566, 33.040447, 42.173721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084574, -0.161872, -0.983181,
		-0.068548, 0.983433, -0.167810,
		0.994056, 0.081588, 0.072076,
		36.004784, 33.064922, 42.195343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486092, 33.533333, 41.613991>,  <35.308945, 33.007812, 42.144890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486092, 33.533333, 41.613991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808510, 33.308144, 41.687038>,  <36.001961, 33.173031, 41.730869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808510, 33.308144, 41.687038>,  <35.486092, 33.533333, 41.613991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808510, 33.308144, 41.687038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186851, -0.050726, -0.981078,
		0.561587, 0.824915, 0.064306,
		0.806044, -0.562976, 0.182623,
		36.050323, 33.139252, 41.741825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761318, 33.632671, 41.076233>,  <35.486092, 33.533333, 41.613991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761318, 33.632671, 41.076233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009422, 33.355968, 41.224152>,  <36.158283, 33.189945, 41.312904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009422, 33.355968, 41.224152>,  <35.761318, 33.632671, 41.076233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009422, 33.355968, 41.224152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229520, -0.290752, -0.928862,
		0.750067, 0.661011, -0.021570,
		0.620259, -0.691758, 0.369798,
		36.195499, 33.148441, 41.335091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467056, 33.642944, 40.652447>,  <35.761318, 33.632671, 41.076233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467056, 33.642944, 40.652447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453636, 33.276489, 40.812225>,  <36.445583, 33.056614, 40.908092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453636, 33.276489, 40.812225>,  <36.467056, 33.642944, 40.652447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453636, 33.276489, 40.812225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217522, -0.396787, -0.891765,
		0.975479, 0.056972, 0.212592,
		-0.033549, -0.916141, 0.399450,
		36.443573, 33.001648, 40.932060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161934, 33.270123, 40.453316>,  <36.467056, 33.642944, 40.652447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161934, 33.270123, 40.453316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871231, 33.004295, 40.522793>,  <36.696808, 32.844799, 40.564480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871231, 33.004295, 40.522793>,  <37.161934, 33.270123, 40.453316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871231, 33.004295, 40.522793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288274, -0.524615, -0.801047,
		0.623477, -0.532094, 0.572846,
		-0.726756, -0.664571, 0.173696,
		36.653206, 32.804924, 40.574902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338772, 32.682701, 40.330528>,  <37.161934, 33.270123, 40.453316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338772, 32.682701, 40.330528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944660, 32.619392, 40.304684>,  <36.708195, 32.581406, 40.289177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944660, 32.619392, 40.304684>,  <37.338772, 32.682701, 40.330528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944660, 32.619392, 40.304684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147682, -0.597610, -0.788069,
		0.086116, -0.786010, 0.612186,
		-0.985279, -0.158274, -0.064615,
		36.649078, 32.571911, 40.285297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076260, 31.912701, 40.394665>,  <37.338772, 32.682701, 40.330528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076260, 31.912701, 40.394665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871460, 32.154194, 40.150253>,  <36.748581, 32.299091, 40.003605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871460, 32.154194, 40.150253>,  <37.076260, 31.912701, 40.394665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871460, 32.154194, 40.150253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324774, -0.522478, -0.788377,
		-0.795219, -0.602099, 0.071434,
		-0.512004, 0.603733, -0.611031,
		36.717857, 32.335312, 39.966946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366306, 31.239267, 40.307045>,  <37.076260, 31.912701, 40.394665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366306, 31.239267, 40.307045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079330, 31.394156, 40.075413>,  <36.907146, 31.487089, 39.936432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079330, 31.394156, 40.075413>,  <37.366306, 31.239267, 40.307045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079330, 31.394156, 40.075413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235534, -0.647485, -0.724767,
		-0.655615, -0.656360, 0.373311,
		-0.717421, 0.387241, -0.579096,
		36.864098, 31.510323, 39.901688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085789, 30.653679, 39.843925>,  <37.366306, 31.239267, 40.307045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085789, 30.653679, 39.843925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085194, 31.021214, 39.686069>,  <37.084835, 31.241734, 39.591358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085194, 31.021214, 39.686069>,  <37.085789, 30.653679, 39.843925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085194, 31.021214, 39.686069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425435, -0.356560, -0.831787,
		-0.904988, -0.169129, -0.390374,
		-0.001488, 0.918836, -0.394636,
		37.084747, 31.296864, 39.567680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069321, 30.525429, 39.056278>,  <37.085789, 30.653679, 39.843925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069321, 30.525429, 39.056278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166019, 30.913498, 39.063492>,  <37.224041, 31.146339, 39.067818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166019, 30.913498, 39.063492>,  <37.069321, 30.525429, 39.056278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166019, 30.913498, 39.063492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415419, -0.086688, -0.905490,
		-0.876917, 0.226394, -0.423984,
		0.241752, 0.970171, 0.018030,
		37.238544, 31.204550, 39.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944080, 30.056150, 38.366585>,  <37.069321, 30.525429, 39.056278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944080, 30.056150, 38.366585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979645, 29.701744, 38.548603>,  <37.000984, 29.489100, 38.657814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979645, 29.701744, 38.548603>,  <36.944080, 30.056150, 38.366585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979645, 29.701744, 38.548603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426528, -0.378979, -0.821248,
		0.900093, 0.267111, 0.344215,
		0.088914, -0.886017, 0.455047,
		37.006317, 29.435940, 38.685116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830299, 30.811981, 38.408318>,  <36.944080, 30.056150, 38.366585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830299, 30.811981, 38.408318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104397, 31.060053, 38.561062>,  <37.268856, 31.208895, 38.652710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104397, 31.060053, 38.561062>,  <36.830299, 30.811981, 38.408318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104397, 31.060053, 38.561062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274001, 0.266271, -0.924134,
		-0.674807, 0.737888, 0.012531,
		0.685244, 0.620178, 0.381864,
		37.309971, 31.246107, 38.675621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676769, 31.509050, 38.250874>,  <36.830299, 30.811981, 38.408318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676769, 31.509050, 38.250874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071899, 31.494783, 38.311432>,  <37.308979, 31.486223, 38.347767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071899, 31.494783, 38.311432>,  <36.676769, 31.509050, 38.250874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071899, 31.494783, 38.311432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152137, 0.424130, -0.892731,
		-0.032370, 0.904899, 0.424395,
		0.987829, -0.035669, 0.151398,
		37.368248, 31.484083, 38.356850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897129, 32.155869, 38.025772>,  <36.676769, 31.509050, 38.250874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897129, 32.155869, 38.025772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243538, 31.962101, 38.075321>,  <37.451382, 31.845840, 38.105049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243538, 31.962101, 38.075321>,  <36.897129, 32.155869, 38.025772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243538, 31.962101, 38.075321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319694, 0.345970, -0.882100,
		0.384452, 0.803518, 0.454484,
		0.866021, -0.484421, 0.123871,
		37.503345, 31.816774, 38.112484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390312, 32.644859, 37.937283>,  <36.897129, 32.155869, 38.025772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390312, 32.644859, 37.937283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560730, 32.294338, 37.847324>,  <37.662979, 32.084026, 37.793350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560730, 32.294338, 37.847324>,  <37.390312, 32.644859, 37.937283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560730, 32.294338, 37.847324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429101, 0.414578, -0.802494,
		0.796467, 0.245392, 0.552651,
		0.426043, -0.876303, -0.224900,
		37.688541, 32.031448, 37.779854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165722, 32.741272, 37.704395>,  <37.390312, 32.644859, 37.937283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165722, 32.741272, 37.704395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061718, 32.373577, 37.586143>,  <37.999313, 32.152962, 37.515190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061718, 32.373577, 37.586143>,  <38.165722, 32.741272, 37.704395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061718, 32.373577, 37.586143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529233, 0.120418, -0.839889,
		0.807655, -0.374840, 0.455179,
		-0.260012, -0.919236, -0.295634,
		37.983715, 32.097805, 37.497452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756916, 32.560108, 37.378906>,  <38.165722, 32.741272, 37.704395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756916, 32.560108, 37.378906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457825, 32.333195, 37.240868>,  <38.278370, 32.197048, 37.158043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457825, 32.333195, 37.240868>,  <38.756916, 32.560108, 37.378906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457825, 32.333195, 37.240868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227698, 0.269148, -0.935795,
		0.623740, -0.778301, -0.072082,
		-0.747731, -0.567280, -0.345096,
		38.233505, 32.163010, 37.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090076, 32.083935, 36.887714>,  <38.756916, 32.560108, 37.378906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090076, 32.083935, 36.887714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703335, 32.124859, 36.794147>,  <38.471291, 32.149414, 36.738007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703335, 32.124859, 36.794147>,  <39.090076, 32.083935, 36.887714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703335, 32.124859, 36.794147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252394, 0.244825, -0.936140,
		-0.038504, -0.964154, -0.262532,
		-0.966858, 0.102307, -0.233920,
		38.413277, 32.155552, 36.723972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247143, 31.880207, 36.253162>,  <39.090076, 32.083935, 36.887714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247143, 31.880207, 36.253162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858509, 31.974749, 36.258255>,  <38.625328, 32.031475, 36.261311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858509, 31.974749, 36.258255>,  <39.247143, 31.880207, 36.253162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858509, 31.974749, 36.258255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006344, 0.027770, -0.999594,
		-0.236613, -0.971270, -0.025481,
		-0.971583, 0.236355, 0.012733,
		38.567036, 32.045654, 36.262074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028706, 32.107498, 36.665756>,  <39.247143, 31.880207, 36.253162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028706, 32.107498, 36.665756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185951, 32.292122, 36.347656>,  <40.280300, 32.402897, 36.156796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185951, 32.292122, 36.347656>,  <40.028706, 32.107498, 36.665756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185951, 32.292122, 36.347656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919348, -0.212494, 0.331127,
		-0.016152, -0.861284, -0.507867,
		0.393113, 0.461558, -0.795252,
		40.303886, 32.430588, 36.109081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647808, 31.663025, 36.310375>,  <40.028706, 32.107498, 36.665756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647808, 31.663025, 36.310375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733448, 32.052536, 36.279610>,  <40.784832, 32.286243, 36.261150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733448, 32.052536, 36.279610>,  <40.647808, 31.663025, 36.310375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733448, 32.052536, 36.279610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877431, -0.157118, 0.453244,
		0.429275, -0.164523, -0.888062,
		0.214099, 0.973779, -0.076911,
		40.797676, 32.344669, 36.256535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292694, 31.869705, 35.835480>,  <40.647808, 31.663025, 36.310375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292694, 31.869705, 35.835480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245434, 32.128178, 36.137074>,  <41.217079, 32.283260, 36.318031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245434, 32.128178, 36.137074>,  <41.292694, 31.869705, 35.835480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245434, 32.128178, 36.137074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871207, -0.296896, 0.390963,
		0.476487, 0.703068, -0.527878,
		-0.118149, 0.646180, 0.753984,
		41.209988, 32.322033, 36.363270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837849, 32.424015, 35.922966>,  <41.292694, 31.869705, 35.835480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837849, 32.424015, 35.922966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701153, 32.293839, 36.275623>,  <41.619133, 32.215733, 36.487217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701153, 32.293839, 36.275623>,  <41.837849, 32.424015, 35.922966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701153, 32.293839, 36.275623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909029, -0.352538, 0.222225,
		0.238492, 0.877385, 0.416313,
		-0.341743, -0.325442, 0.881646,
		41.598629, 32.196205, 36.540115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894974, 32.759338, 35.293747>,  <41.837849, 32.424015, 35.922966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894974, 32.759338, 35.293747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879559, 33.156006, 35.244591>,  <41.870308, 33.394009, 35.215099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879559, 33.156006, 35.244591>,  <41.894974, 32.759338, 35.293747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879559, 33.156006, 35.244591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575546, 0.122562, 0.808532,
		0.816860, -0.039567, -0.575477,
		-0.038540, 0.991672, -0.122889,
		41.867996, 33.453506, 35.207726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668785, 32.873150, 35.278793>,  <41.894974, 32.759338, 35.293747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668785, 32.873150, 35.278793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490578, 33.215549, 35.383690>,  <42.383652, 33.420990, 35.446629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490578, 33.215549, 35.383690>,  <42.668785, 32.873150, 35.278793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490578, 33.215549, 35.383690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779637, 0.226964, 0.583655,
		0.440091, 0.464484, -0.768488,
		-0.445518, 0.856003, 0.262244,
		42.356922, 33.472351, 35.462364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050716, 33.363747, 35.129383>,  <42.668785, 32.873150, 35.278793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050716, 33.363747, 35.129383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825302, 33.523281, 35.418758>,  <42.690052, 33.618999, 35.592384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825302, 33.523281, 35.418758>,  <43.050716, 33.363747, 35.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825302, 33.523281, 35.418758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825678, 0.244236, 0.508532,
		0.026131, 0.883900, -0.466945,
		-0.563536, 0.398834, 0.723435,
		42.656242, 33.642933, 35.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239147, 34.075085, 35.272408>,  <43.050716, 33.363747, 35.129383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239147, 34.075085, 35.272408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116287, 33.923191, 35.621456>,  <43.042572, 33.832054, 35.830883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116287, 33.923191, 35.621456>,  <43.239147, 34.075085, 35.272408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116287, 33.923191, 35.621456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771509, 0.437481, 0.461936,
		-0.557168, 0.815114, 0.158599,
		-0.307146, -0.379736, 0.872618,
		43.024143, 33.809269, 35.883240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098976, 34.634274, 35.798550>,  <43.239147, 34.075085, 35.272408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098976, 34.634274, 35.798550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231144, 34.280884, 35.931400>,  <43.310444, 34.068851, 36.011108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231144, 34.280884, 35.931400>,  <43.098976, 34.634274, 35.798550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231144, 34.280884, 35.931400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838908, 0.436150, 0.325588,
		-0.432503, 0.171041, 0.885261,
		0.330417, -0.883470, 0.332123,
		43.330269, 34.015842, 36.031036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813660, 34.533882, 35.558525>,  <43.098976, 34.634274, 35.798550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813660, 34.533882, 35.558525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196194, 34.545883, 35.442230>,  <44.425713, 34.553085, 35.372456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196194, 34.545883, 35.442230>,  <43.813660, 34.533882, 35.558525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196194, 34.545883, 35.442230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089167, -0.917344, -0.387980,
		-0.278343, 0.396963, -0.874612,
		0.956334, 0.030005, -0.290733,
		44.483093, 34.554886, 35.355011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374519, 34.935326, 35.964069>,  <43.813660, 34.533882, 35.558525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374519, 34.935326, 35.964069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662174, 34.833366, 36.222641>,  <44.834766, 34.772190, 36.377785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662174, 34.833366, 36.222641>,  <44.374519, 34.935326, 35.964069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662174, 34.833366, 36.222641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694680, 0.285542, -0.660216,
		-0.016292, 0.923846, 0.382418,
		0.719134, -0.254902, 0.646429,
		44.877914, 34.756897, 36.416569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464939, 35.726105, 35.811562>,  <44.374519, 34.935326, 35.964069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464939, 35.726105, 35.811562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592888, 36.090881, 35.914352>,  <44.669659, 36.309750, 35.976025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592888, 36.090881, 35.914352>,  <44.464939, 35.726105, 35.811562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592888, 36.090881, 35.914352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921950, -0.237080, -0.306270,
		-0.218378, 0.334885, -0.916604,
		0.319873, 0.911946, 0.256974,
		44.688850, 36.364464, 35.991444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903488, 35.829853, 35.193100>,  <44.464939, 35.726105, 35.811562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903488, 35.829853, 35.193100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005577, 36.040600, 35.517391>,  <45.066830, 36.167046, 35.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005577, 36.040600, 35.517391>,  <44.903488, 35.829853, 35.193100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005577, 36.040600, 35.517391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930298, -0.362279, -0.057431,
		0.263451, 0.768874, -0.582603,
		0.255222, 0.526864, 0.810725,
		45.082142, 36.198658, 35.760609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537113, 36.271557, 34.984680>,  <44.903488, 35.829853, 35.193100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537113, 36.271557, 34.984680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511280, 36.163754, 35.369011>,  <45.495781, 36.099072, 35.599609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511280, 36.163754, 35.369011>,  <45.537113, 36.271557, 34.984680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511280, 36.163754, 35.369011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976624, -0.214889, 0.005370,
		0.205025, 0.938717, 0.277084,
		-0.064584, -0.269506, 0.960831,
		45.491905, 36.082901, 35.657261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.930367, 36.678864, 35.442970>,  <45.537113, 36.271557, 34.984680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.930367, 36.678864, 35.442970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879688, 36.305218, 35.576466>,  <45.849281, 36.081032, 35.656563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879688, 36.305218, 35.576466>,  <45.930367, 36.678864, 35.442970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879688, 36.305218, 35.576466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925579, -0.232324, -0.298879,
		0.356722, 0.271034, 0.894030,
		-0.126698, -0.934113, 0.333738,
		45.841679, 36.024982, 35.676586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542274, 36.565529, 35.693291>,  <45.930367, 36.678864, 35.442970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542274, 36.565529, 35.693291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369843, 36.214901, 35.607700>,  <46.266384, 36.004524, 35.556347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369843, 36.214901, 35.607700>,  <46.542274, 36.565529, 35.693291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369843, 36.214901, 35.607700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866445, -0.335939, -0.369348,
		0.251877, -0.344621, 0.904320,
		-0.431082, -0.876574, -0.213979,
		46.240517, 35.951927, 35.543507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.795090, 36.074619, 36.118507>,  <46.542274, 36.565529, 35.693291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.795090, 36.074619, 36.118507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687614, 35.951225, 35.753510>,  <46.623127, 35.877190, 35.534512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687614, 35.951225, 35.753510>,  <46.795090, 36.074619, 36.118507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687614, 35.951225, 35.753510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911785, -0.386901, -0.137685,
		-0.310571, -0.868991, 0.385228,
		-0.268692, -0.308484, -0.912492,
		46.607006, 35.858681, 35.479763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158775, 35.447060, 36.104485>,  <46.795090, 36.074619, 36.118507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158775, 35.447060, 36.104485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049156, 35.568031, 35.739315>,  <46.983383, 35.640614, 35.520214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049156, 35.568031, 35.739315>,  <47.158775, 35.447060, 36.104485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049156, 35.568031, 35.739315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949059, -0.068462, -0.307573,
		-0.155519, -0.950711, -0.268259,
		-0.274047, 0.302426, -0.912927,
		46.966942, 35.658760, 35.465435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.467785, 35.061325, 35.467545>,  <47.158775, 35.447060, 36.104485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.467785, 35.061325, 35.467545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.393837, 35.421902, 35.310966>,  <47.349468, 35.638248, 35.217022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.393837, 35.421902, 35.310966>,  <47.467785, 35.061325, 35.467545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.393837, 35.421902, 35.310966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947987, 0.058549, -0.312877,
		-0.259122, -0.428922, -0.865379,
		-0.184867, 0.901442, -0.391442,
		47.338375, 35.692333, 35.193535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.814316, 34.434467, 35.263901>,  <47.467785, 35.061325, 35.467545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.814316, 34.434467, 35.263901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657448, 34.581676, 34.926674>,  <47.563328, 34.670002, 34.724339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657448, 34.581676, 34.926674>,  <47.814316, 34.434467, 35.263901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657448, 34.581676, 34.926674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298323, 0.816070, 0.495009,
		0.870176, 0.445633, -0.210248,
		-0.392169, 0.368023, -0.843067,
		47.539799, 34.692085, 34.673756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.246426, 34.985596, 34.857048>,  <47.814316, 34.434467, 35.263901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.246426, 34.985596, 34.857048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.846554, 34.994999, 34.860645>,  <47.606628, 35.000641, 34.862804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.846554, 34.994999, 34.860645>,  <48.246426, 34.985596, 34.857048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.846554, 34.994999, 34.860645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024101, 0.791122, 0.611183,
		0.007252, 0.611207, -0.791438,
		-0.999683, 0.023507, 0.008993,
		47.546650, 35.002052, 34.863342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.512482, 27.178865, 26.718464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195980, 27.151110, 26.475451>,  <39.006077, 27.134457, 26.329643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195980, 27.151110, 26.475451>,  <39.512482, 27.178865, 26.718464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195980, 27.151110, 26.475451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603109, 0.252432, 0.756662,
		0.100856, 0.965123, -0.241589,
		-0.791257, -0.069391, -0.607534,
		38.958603, 27.130293, 26.293190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961914, 27.740433, 26.922617>,  <39.512482, 27.178865, 26.718464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961914, 27.740433, 26.922617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742142, 27.480116, 26.713011>,  <38.610279, 27.323925, 26.587246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742142, 27.480116, 26.713011>,  <38.961914, 27.740433, 26.922617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742142, 27.480116, 26.713011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806105, 0.247879, 0.537355,
		-0.219813, 0.717653, -0.660800,
		-0.549433, -0.650791, -0.524017,
		38.577312, 27.284878, 26.555805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389679, 28.185305, 26.710302>,  <38.961914, 27.740433, 26.922617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389679, 28.185305, 26.710302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.260094, 27.808916, 26.671066>,  <38.182343, 27.583082, 26.647526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.260094, 27.808916, 26.671066>,  <38.389679, 28.185305, 26.710302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260094, 27.808916, 26.671066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802681, 0.218501, 0.554943,
		-0.500753, 0.258514, -0.826086,
		-0.323961, -0.940972, -0.098089,
		38.162907, 27.526625, 26.641640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616596, 28.250519, 26.623043>,  <38.389679, 28.185305, 26.710302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616596, 28.250519, 26.623043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693192, 27.875626, 26.739614>,  <37.739147, 27.650690, 26.809557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693192, 27.875626, 26.739614>,  <37.616596, 28.250519, 26.623043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693192, 27.875626, 26.739614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623626, 0.113102, 0.773498,
		-0.757908, -0.329855, -0.562825,
		0.191486, -0.937232, 0.291427,
		37.750637, 27.594456, 26.827044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011345, 27.859318, 26.508984>,  <37.616596, 28.250519, 26.623043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011345, 27.859318, 26.508984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227863, 27.700197, 26.805296>,  <37.357773, 27.604725, 26.983084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227863, 27.700197, 26.805296>,  <37.011345, 27.859318, 26.508984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227863, 27.700197, 26.805296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701130, 0.272766, 0.658798,
		-0.464129, -0.875988, -0.131261,
		0.541296, -0.397799, 0.740780,
		37.390251, 27.580858, 27.027531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510117, 27.669353, 27.069054>,  <37.011345, 27.859318, 26.508984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510117, 27.669353, 27.069054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852837, 27.615061, 27.268038>,  <37.058468, 27.582485, 27.387428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852837, 27.615061, 27.268038>,  <36.510117, 27.669353, 27.069054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852837, 27.615061, 27.268038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470384, 0.189514, 0.861872,
		-0.211258, -0.972451, 0.098530,
		0.856801, -0.135731, 0.497462,
		37.109879, 27.574343, 27.417276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478703, 27.203615, 27.704256>,  <36.510117, 27.669353, 27.069054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478703, 27.203615, 27.704256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825191, 27.389690, 27.777206>,  <37.033085, 27.501335, 27.820976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825191, 27.389690, 27.777206>,  <36.478703, 27.203615, 27.704256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825191, 27.389690, 27.777206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358413, 0.324174, 0.875472,
		0.348136, -0.823720, 0.447535,
		0.866223, 0.465186, 0.182375,
		37.085056, 27.529247, 27.831919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516434, 27.155628, 28.455526>,  <36.478703, 27.203615, 27.704256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516434, 27.155628, 28.455526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768726, 27.450611, 28.358912>,  <36.920101, 27.627602, 28.300941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768726, 27.450611, 28.358912>,  <36.516434, 27.155628, 28.455526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768726, 27.450611, 28.358912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327358, 0.535063, 0.778810,
		0.703578, -0.412146, 0.578890,
		0.630726, 0.737457, -0.241539,
		36.957943, 27.671848, 28.286449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956146, 27.321573, 29.029598>,  <36.516434, 27.155628, 28.455526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956146, 27.321573, 29.029598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993477, 27.649872, 28.804152>,  <37.015877, 27.846851, 28.668884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993477, 27.649872, 28.804152>,  <36.956146, 27.321573, 29.029598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993477, 27.649872, 28.804152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103524, 0.571017, 0.814384,
		0.990239, -0.017655, 0.138258,
		0.093326, 0.820748, -0.563615,
		37.021473, 27.896097, 28.635067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513611, 27.800695, 29.346006>,  <36.956146, 27.321573, 29.029598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513611, 27.800695, 29.346006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.268284, 28.001209, 29.101858>,  <37.121086, 28.121517, 28.955370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.268284, 28.001209, 29.101858>,  <37.513611, 27.800695, 29.346006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268284, 28.001209, 29.101858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206287, 0.644296, 0.736429,
		0.762419, 0.577579, -0.291753,
		-0.613321, 0.501283, -0.610371,
		37.084286, 28.151594, 28.918747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687263, 28.491455, 29.537445>,  <37.513611, 27.800695, 29.346006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687263, 28.491455, 29.537445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320396, 28.462330, 29.380732>,  <37.100277, 28.444855, 29.286703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320396, 28.462330, 29.380732>,  <37.687263, 28.491455, 29.537445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320396, 28.462330, 29.380732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378039, 0.469916, 0.797662,
		0.126026, 0.879703, -0.458519,
		-0.917172, -0.072812, -0.391784,
		37.045246, 28.440487, 29.263197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432487, 29.101492, 29.674328>,  <37.687263, 28.491455, 29.537445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432487, 29.101492, 29.674328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099819, 28.890770, 29.604130>,  <36.900219, 28.764338, 29.562012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099819, 28.890770, 29.604130>,  <37.432487, 29.101492, 29.674328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099819, 28.890770, 29.604130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346712, 0.245816, 0.905188,
		-0.433718, 0.813666, -0.387088,
		-0.831672, -0.526805, -0.175493,
		36.850319, 28.732729, 29.551481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760212, 29.599926, 29.805040>,  <37.432487, 29.101492, 29.674328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760212, 29.599926, 29.805040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640240, 29.220160, 29.842236>,  <36.568256, 28.992300, 29.864553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640240, 29.220160, 29.842236>,  <36.760212, 29.599926, 29.805040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640240, 29.220160, 29.842236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472332, 0.232487, 0.850207,
		-0.828821, 0.211081, -0.518170,
		-0.299930, -0.949418, 0.092990,
		36.550262, 28.935333, 29.870132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042343, 29.665865, 29.846615>,  <36.760212, 29.599926, 29.805040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042343, 29.665865, 29.846615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145206, 29.314249, 30.007193>,  <36.206924, 29.103279, 30.103539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145206, 29.314249, 30.007193>,  <36.042343, 29.665865, 29.846615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145206, 29.314249, 30.007193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621913, 0.167421, 0.764980,
		-0.739660, -0.446381, -0.503634,
		0.257154, -0.879042, 0.401444,
		36.222351, 29.050537, 30.127626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501835, 29.508839, 30.204878>,  <36.042343, 29.665865, 29.846615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501835, 29.508839, 30.204878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725933, 29.218021, 30.363640>,  <35.860394, 29.043531, 30.458897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725933, 29.218021, 30.363640>,  <35.501835, 29.508839, 30.204878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725933, 29.218021, 30.363640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398185, 0.183783, 0.898706,
		-0.726343, -0.661536, -0.186535,
		0.560245, -0.727045, 0.396903,
		35.894005, 28.999908, 30.482712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092182, 29.202202, 30.683102>,  <35.501835, 29.508839, 30.204878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092182, 29.202202, 30.683102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445469, 29.068251, 30.814419>,  <35.657440, 28.987879, 30.893209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445469, 29.068251, 30.814419>,  <35.092182, 29.202202, 30.683102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445469, 29.068251, 30.814419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324144, 0.069959, 0.943417,
		-0.338898, -0.939661, -0.046760,
		0.883221, -0.334879, 0.328295,
		35.710434, 28.967787, 30.912907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930492, 28.515059, 31.036665>,  <35.092182, 29.202202, 30.683102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930492, 28.515059, 31.036665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265049, 28.685507, 31.174574>,  <35.465782, 28.787777, 31.257320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265049, 28.685507, 31.174574>,  <34.930492, 28.515059, 31.036665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265049, 28.685507, 31.174574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295286, -0.179645, 0.938368,
		0.461796, -0.886650, -0.024426,
		0.836391, 0.426122, 0.344774,
		35.515968, 28.813343, 31.278006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102146, 28.044594, 31.619585>,  <34.930492, 28.515059, 31.036665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102146, 28.044594, 31.619585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295689, 28.389191, 31.681183>,  <35.411816, 28.595949, 31.718142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295689, 28.389191, 31.681183>,  <35.102146, 28.044594, 31.619585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295689, 28.389191, 31.681183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010061, -0.170476, 0.985310,
		0.875089, -0.478299, -0.073819,
		0.483858, 0.861492, 0.153994,
		35.440845, 28.647638, 31.727381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604576, 27.894102, 32.120987>,  <35.102146, 28.044594, 31.619585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604576, 27.894102, 32.120987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.571106, 28.292622, 32.128880>,  <35.551022, 28.531733, 32.133614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.571106, 28.292622, 32.128880>,  <35.604576, 27.894102, 32.120987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571106, 28.292622, 32.128880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005012, -0.019377, 0.999800,
		0.996480, 0.083761, -0.003372,
		-0.083678, 0.996297, 0.019729,
		35.546001, 28.591511, 32.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138378, 28.201260, 32.599129>,  <35.604576, 27.894102, 32.120987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138378, 28.201260, 32.599129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851574, 28.478964, 32.574184>,  <35.679489, 28.645586, 32.559219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851574, 28.478964, 32.574184>,  <36.138378, 28.201260, 32.599129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851574, 28.478964, 32.574184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062407, 0.025163, 0.997733,
		0.694258, 0.719281, 0.025285,
		-0.717015, 0.694263, -0.062358,
		35.636471, 28.687243, 32.555477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310627, 28.898441, 33.018379>,  <36.138378, 28.201260, 32.599129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310627, 28.898441, 33.018379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911274, 28.890924, 32.996941>,  <35.671661, 28.886415, 32.984077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911274, 28.890924, 32.996941>,  <36.310627, 28.898441, 33.018379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911274, 28.890924, 32.996941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055557, 0.127458, 0.990287,
		-0.011778, 0.991666, -0.128296,
		-0.998386, -0.018791, -0.053593,
		35.611759, 28.885286, 32.980862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087574, 29.451384, 33.469242>,  <36.310627, 28.898441, 33.018379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087574, 29.451384, 33.469242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771614, 29.211056, 33.420128>,  <35.582039, 29.066858, 33.390659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771614, 29.211056, 33.420128>,  <36.087574, 29.451384, 33.469242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771614, 29.211056, 33.420128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349715, 0.276859, 0.895013,
		-0.503749, 0.749908, -0.428806,
		-0.789896, -0.600822, -0.122786,
		35.534645, 29.030809, 33.383293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194359, 30.071928, 33.110550>,  <36.087574, 29.451384, 33.469242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194359, 30.071928, 33.110550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388100, 30.155445, 33.450386>,  <36.504345, 30.205555, 33.654289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388100, 30.155445, 33.450386>,  <36.194359, 30.071928, 33.110550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388100, 30.155445, 33.450386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865557, -0.255686, -0.430622,
		0.127317, 0.943944, -0.304566,
		0.484357, 0.208793, 0.849590,
		36.533405, 30.218082, 33.705265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723888, 30.429136, 32.901066>,  <36.194359, 30.071928, 33.110550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723888, 30.429136, 32.901066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.840298, 30.306328, 33.263512>,  <36.910145, 30.232643, 33.480980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.840298, 30.306328, 33.263512>,  <36.723888, 30.429136, 32.901066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840298, 30.306328, 33.263512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879346, -0.287279, -0.379764,
		0.376903, 0.907309, 0.186371,
		0.291023, -0.307019, 0.906115,
		36.927605, 30.214222, 33.535347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402706, 30.749418, 33.064877>,  <36.723888, 30.429136, 32.901066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402706, 30.749418, 33.064877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377670, 30.425671, 33.298458>,  <37.362648, 30.231422, 33.438606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377670, 30.425671, 33.298458>,  <37.402706, 30.749418, 33.064877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377670, 30.425671, 33.298458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866955, -0.333958, -0.369948,
		0.494441, 0.483107, 0.722590,
		-0.062590, -0.809370, 0.583954,
		37.358894, 30.182859, 33.473644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058064, 30.694084, 33.404263>,  <37.402706, 30.749418, 33.064877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058064, 30.694084, 33.404263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906879, 30.325623, 33.441410>,  <37.816170, 30.104546, 33.463699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906879, 30.325623, 33.441410>,  <38.058064, 30.694084, 33.404263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906879, 30.325623, 33.441410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881895, -0.388739, -0.266727,
		0.281798, -0.018912, 0.959288,
		-0.377957, -0.921154, 0.092868,
		37.793491, 30.049276, 33.469269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556126, 30.271379, 33.742554>,  <38.058064, 30.694084, 33.404263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556126, 30.271379, 33.742554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318737, 30.026041, 33.534096>,  <38.176304, 29.878838, 33.409019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318737, 30.026041, 33.534096>,  <38.556126, 30.271379, 33.742554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318737, 30.026041, 33.534096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804615, -0.467882, -0.365625,
		-0.019581, -0.636312, 0.771183,
		-0.593475, -0.613346, -0.521147,
		38.140694, 29.842037, 33.377750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848465, 29.626997, 33.624523>,  <38.556126, 30.271379, 33.742554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848465, 29.626997, 33.624523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573135, 29.573195, 33.339394>,  <38.407936, 29.540913, 33.168316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573135, 29.573195, 33.339394>,  <38.848465, 29.626997, 33.624523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573135, 29.573195, 33.339394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697064, -0.394622, -0.598645,
		-0.200774, -0.908945, 0.365388,
		-0.688326, -0.134506, -0.712823,
		38.366638, 29.532843, 33.125546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974926, 28.980127, 33.386791>,  <38.848465, 29.626997, 33.624523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974926, 28.980127, 33.386791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776188, 29.150103, 33.084118>,  <38.656944, 29.252089, 32.902515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776188, 29.150103, 33.084118>,  <38.974926, 28.980127, 33.386791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776188, 29.150103, 33.084118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599294, -0.462636, -0.653311,
		-0.627685, -0.778072, -0.024802,
		-0.496848, 0.424937, -0.756683,
		38.627132, 29.277584, 32.857113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863598, 28.523031, 32.833778>,  <38.974926, 28.980127, 33.386791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863598, 28.523031, 32.833778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795406, 28.854595, 32.620670>,  <38.754490, 29.053534, 32.492805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795406, 28.854595, 32.620670>,  <38.863598, 28.523031, 32.833778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795406, 28.854595, 32.620670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460483, -0.410990, -0.786792,
		-0.871144, -0.379463, -0.311635,
		-0.170480, 0.828912, -0.532768,
		38.744263, 29.103270, 32.460838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599075, 28.330442, 32.242153>,  <38.863598, 28.523031, 32.833778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599075, 28.330442, 32.242153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725525, 28.697676, 32.146492>,  <38.801395, 28.918016, 32.089096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725525, 28.697676, 32.146492>,  <38.599075, 28.330442, 32.242153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725525, 28.697676, 32.146492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427967, -0.362967, -0.827707,
		-0.846707, 0.159307, -0.507650,
		0.316119, 0.918083, -0.239148,
		38.820362, 28.973101, 32.074749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488701, 28.373140, 31.572006>,  <38.599075, 28.330442, 32.242153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488701, 28.373140, 31.572006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740253, 28.675310, 31.645597>,  <38.891186, 28.856611, 31.689753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740253, 28.675310, 31.645597>,  <38.488701, 28.373140, 31.572006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740253, 28.675310, 31.645597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305706, -0.022680, -0.951856,
		-0.714882, 0.654844, -0.245200,
		0.628878, 0.755424, 0.183976,
		38.928917, 28.901937, 31.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321297, 28.844118, 31.054043>,  <38.488701, 28.373140, 31.572006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321297, 28.844118, 31.054043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684868, 28.962782, 31.171236>,  <38.903011, 29.033979, 31.241552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684868, 28.962782, 31.171236>,  <38.321297, 28.844118, 31.054043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684868, 28.962782, 31.171236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338341, -0.114139, -0.934076,
		-0.243662, 0.948138, -0.204116,
		0.908930, 0.296659, 0.292983,
		38.957546, 29.051781, 31.259130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400188, 29.387074, 30.760042>,  <38.321297, 28.844118, 31.054043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400188, 29.387074, 30.760042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752758, 29.211470, 30.829737>,  <38.964302, 29.106108, 30.871553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752758, 29.211470, 30.829737>,  <38.400188, 29.387074, 30.760042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752758, 29.211470, 30.829737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116146, -0.156109, -0.980887,
		0.457819, 0.884817, -0.086609,
		0.881426, -0.439009, 0.174238,
		39.017185, 29.079767, 30.882008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874783, 29.772947, 30.430788>,  <38.400188, 29.387074, 30.760042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874783, 29.772947, 30.430788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102268, 29.448635, 30.486216>,  <39.238758, 29.254047, 30.519472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102268, 29.448635, 30.486216>,  <38.874783, 29.772947, 30.430788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102268, 29.448635, 30.486216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136875, -0.072830, -0.987907,
		0.811069, 0.580800, 0.069557,
		0.568711, -0.810782, 0.138567,
		39.272881, 29.205400, 30.527786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452721, 29.891760, 30.080244>,  <38.874783, 29.772947, 30.430788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452721, 29.891760, 30.080244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.466801, 29.496288, 30.138590>,  <39.475250, 29.259005, 30.173597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.466801, 29.496288, 30.138590>,  <39.452721, 29.891760, 30.080244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466801, 29.496288, 30.138590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428798, -0.116894, -0.895806,
		0.902714, 0.094079, 0.419829,
		0.035200, -0.988679, 0.145863,
		39.477360, 29.199684, 30.182348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112293, 29.694349, 30.004482>,  <39.452721, 29.891760, 30.080244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112293, 29.694349, 30.004482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910110, 29.355656, 29.938093>,  <39.788799, 29.152439, 29.898260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910110, 29.355656, 29.938093>,  <40.112293, 29.694349, 30.004482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910110, 29.355656, 29.938093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421371, -0.074372, -0.903834,
		0.752965, -0.526789, 0.394382,
		-0.505461, -0.846736, -0.165974,
		39.758472, 29.101635, 29.888300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651009, 29.151178, 29.805649>,  <40.112293, 29.694349, 30.004482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651009, 29.151178, 29.805649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.298908, 29.003139, 29.686867>,  <40.087646, 28.914316, 29.615597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.298908, 29.003139, 29.686867>,  <40.651009, 29.151178, 29.805649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298908, 29.003139, 29.686867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416493, -0.302778, -0.857239,
		0.227352, -0.878267, 0.420665,
		-0.880253, -0.370099, -0.296955,
		40.034832, 28.892111, 29.597780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788998, 28.400190, 29.571953>,  <40.651009, 29.151178, 29.805649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788998, 28.400190, 29.571953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438778, 28.514172, 29.415897>,  <40.228645, 28.582561, 29.322264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438778, 28.514172, 29.415897>,  <40.788998, 28.400190, 29.571953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438778, 28.514172, 29.415897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301820, -0.307944, -0.902261,
		-0.377247, -0.907728, 0.183616,
		-0.875551, 0.284957, -0.390141,
		40.176113, 28.599657, 29.298855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513714, 27.763880, 29.161486>,  <40.788998, 28.400190, 29.571953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513714, 27.763880, 29.161486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.319122, 28.056513, 28.970436>,  <40.202370, 28.232094, 28.855806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.319122, 28.056513, 28.970436>,  <40.513714, 27.763880, 29.161486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319122, 28.056513, 28.970436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425572, -0.279020, -0.860835,
		-0.763041, -0.622038, -0.175606,
		-0.486475, 0.731585, -0.477625,
		40.173180, 28.275988, 28.827148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.174992, 27.490969, 28.501869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172585, 27.883356, 28.424242>,  <40.171139, 28.118790, 28.377666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172585, 27.883356, 28.424242>,  <40.174992, 27.490969, 28.501869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172585, 27.883356, 28.424242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549762, -0.158865, -0.820075,
		-0.835299, -0.111625, -0.538345,
		-0.006016, 0.980970, -0.194067,
		40.170780, 28.177647, 28.366022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005405, 27.517633, 27.830774>,  <40.174992, 27.490969, 28.501869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005405, 27.517633, 27.830774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182213, 27.868319, 27.906660>,  <40.288300, 28.078730, 27.952190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182213, 27.868319, 27.906660>,  <40.005405, 27.517633, 27.830774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182213, 27.868319, 27.906660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383291, 0.006612, -0.923604,
		-0.810991, 0.480967, -0.333113,
		0.442021, 0.876714, 0.189713,
		40.314819, 28.131332, 27.963573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015469, 27.892738, 27.173407>,  <40.005405, 27.517633, 27.830774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015469, 27.892738, 27.173407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327530, 28.072727, 27.347250>,  <40.514767, 28.180719, 27.451555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.327530, 28.072727, 27.347250>,  <40.015469, 27.892738, 27.173407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327530, 28.072727, 27.347250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351754, 0.258977, -0.899556,
		-0.517326, 0.854668, 0.043764,
		0.780156, 0.449970, 0.434608,
		40.561577, 28.207718, 27.477633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148731, 28.485449, 26.721779>,  <40.015469, 27.892738, 27.173407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148731, 28.485449, 26.721779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478828, 28.432251, 26.941336>,  <40.676888, 28.400333, 27.073071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478828, 28.432251, 26.941336>,  <40.148731, 28.485449, 26.721779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478828, 28.432251, 26.941336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564720, 0.180998, -0.805190,
		0.007736, 0.974450, 0.224472,
		0.825246, -0.132993, 0.548891,
		40.726402, 28.392353, 27.106003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497795, 29.117958, 26.586933>,  <40.148731, 28.485449, 26.721779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497795, 29.117958, 26.586933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738136, 28.826874, 26.719246>,  <40.882339, 28.652224, 26.798634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738136, 28.826874, 26.719246>,  <40.497795, 29.117958, 26.586933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738136, 28.826874, 26.719246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608121, 0.147552, -0.780011,
		0.518813, 0.669827, 0.531192,
		0.600851, -0.727709, 0.330784,
		40.918392, 28.608561, 26.818481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063599, 29.057119, 26.074633>,  <40.497795, 29.117958, 26.586933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063599, 29.057119, 26.074633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185352, 28.763878, 26.317911>,  <41.258404, 28.587933, 26.463879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185352, 28.763878, 26.317911>,  <41.063599, 29.057119, 26.074633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185352, 28.763878, 26.317911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661346, -0.296875, -0.688830,
		0.685544, 0.611901, 0.394471,
		0.304387, -0.733105, 0.608199,
		41.276669, 28.543947, 26.500370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858818, 29.095682, 26.152071>,  <41.063599, 29.057119, 26.074633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858818, 29.095682, 26.152071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.687187, 28.736843, 26.194221>,  <41.584209, 28.521540, 26.219511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.687187, 28.736843, 26.194221>,  <41.858818, 29.095682, 26.152071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687187, 28.736843, 26.194221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501506, -0.333631, -0.798237,
		0.751254, -0.289660, 0.593055,
		-0.429079, -0.897099, 0.105376,
		41.558464, 28.467712, 26.225834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451256, 28.568998, 25.995506>,  <41.858818, 29.095682, 26.152071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451256, 28.568998, 25.995506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.120514, 28.344990, 25.974798>,  <41.922070, 28.210585, 25.962374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.120514, 28.344990, 25.974798>,  <42.451256, 28.568998, 25.995506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120514, 28.344990, 25.974798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325990, -0.402230, -0.855536,
		0.458296, -0.724283, 0.515149,
		-0.826859, -0.560022, -0.051768,
		41.872456, 28.176983, 25.959269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632637, 27.768311, 25.976604>,  <42.451256, 28.568998, 25.995506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632637, 27.768311, 25.976604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.268204, 27.803539, 25.815523>,  <42.049545, 27.824677, 25.718874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.268204, 27.803539, 25.815523>,  <42.632637, 27.768311, 25.976604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268204, 27.803539, 25.815523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259053, -0.637584, -0.725520,
		-0.320654, -0.765331, 0.558077,
		-0.911083, 0.088070, -0.402705,
		41.994881, 27.829960, 25.694712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530235, 27.107435, 25.769651>,  <42.632637, 27.768311, 25.976604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530235, 27.107435, 25.769651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.266804, 27.324423, 25.561035>,  <42.108746, 27.454617, 25.435865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.266804, 27.324423, 25.561035>,  <42.530235, 27.107435, 25.769651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266804, 27.324423, 25.561035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240434, -0.505049, -0.828925,
		-0.713071, -0.671306, 0.202184,
		-0.658575, 0.542471, -0.521540,
		42.069233, 27.487164, 25.404573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197506, 26.662371, 25.360044>,  <42.530235, 27.107435, 25.769651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197506, 26.662371, 25.360044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.176434, 27.010139, 25.163542>,  <42.163788, 27.218800, 25.045641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.176434, 27.010139, 25.163542>,  <42.197506, 26.662371, 25.360044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176434, 27.010139, 25.163542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562939, -0.380467, -0.733719,
		-0.824817, -0.315204, -0.469385,
		-0.052685, 0.869420, -0.491257,
		42.160629, 27.270966, 25.016165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987663, 26.574209, 24.676769>,  <42.197506, 26.662371, 25.360044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987663, 26.574209, 24.676769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.167358, 26.931545, 24.672258>,  <42.275177, 27.145947, 24.669552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.167358, 26.931545, 24.672258>,  <41.987663, 26.574209, 24.676769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167358, 26.931545, 24.672258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407827, -0.216283, -0.887073,
		-0.794897, 0.393910, -0.461491,
		0.449240, 0.893340, -0.011275,
		42.302132, 27.199547, 24.668877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976940, 26.699696, 24.014887>,  <41.987663, 26.574209, 24.676769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976940, 26.699696, 24.014887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245781, 26.972578, 24.130043>,  <42.407085, 27.136307, 24.199137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245781, 26.972578, 24.130043>,  <41.976940, 26.699696, 24.014887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245781, 26.972578, 24.130043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332903, 0.068893, -0.940441,
		-0.661408, 0.727907, -0.180805,
		0.672098, 0.682206, 0.287888,
		42.447411, 27.177240, 24.216410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178745, 26.909945, 23.391001>,  <41.976940, 26.699696, 24.014887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178745, 26.909945, 23.391001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.464333, 27.064676, 23.624449>,  <42.635685, 27.157515, 23.764517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.464333, 27.064676, 23.624449>,  <42.178745, 26.909945, 23.391001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464333, 27.064676, 23.624449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541942, 0.222467, -0.810436,
		-0.443335, 0.894915, -0.050803,
		0.713969, 0.386827, 0.583620,
		42.678524, 27.180725, 23.799534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338146, 27.493675, 23.037970>,  <42.178745, 26.909945, 23.391001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338146, 27.493675, 23.037970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.652699, 27.408903, 23.270069>,  <42.841431, 27.358040, 23.409328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.652699, 27.408903, 23.270069>,  <42.338146, 27.493675, 23.037970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652699, 27.408903, 23.270069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606193, 0.083959, -0.790873,
		0.118893, 0.973671, 0.194495,
		0.786380, -0.211931, 0.580251,
		42.888611, 27.345324, 23.444145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809361, 27.920715, 22.808100>,  <42.338146, 27.493675, 23.037970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809361, 27.920715, 22.808100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.041500, 27.669310, 23.015240>,  <43.180782, 27.518467, 23.139523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.041500, 27.669310, 23.015240>,  <42.809361, 27.920715, 22.808100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041500, 27.669310, 23.015240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710757, 0.080519, -0.698814,
		0.397516, 0.773621, 0.493449,
		0.580349, -0.628512, 0.517849,
		43.215607, 27.480757, 23.170595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423817, 28.239670, 22.997505>,  <42.809361, 27.920715, 22.808100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423817, 28.239670, 22.997505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.480270, 27.844189, 22.977308>,  <43.514145, 27.606901, 22.965191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.480270, 27.844189, 22.977308>,  <43.423817, 28.239670, 22.997505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480270, 27.844189, 22.977308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702135, 0.135926, -0.698949,
		0.697915, 0.063196, 0.713387,
		0.141139, -0.988701, -0.050493,
		43.522614, 27.547579, 22.962160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125736, 28.248920, 22.904564>,  <43.423817, 28.239670, 22.997505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125736, 28.248920, 22.904564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.040394, 27.875866, 22.788176>,  <43.989189, 27.652033, 22.718342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.040394, 27.875866, 22.788176>,  <44.125736, 28.248920, 22.904564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040394, 27.875866, 22.788176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671541, 0.076315, -0.737027,
		0.709585, -0.352649, 0.610022,
		-0.213358, -0.932638, -0.290970,
		43.976387, 27.596075, 22.700884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848133, 27.911629, 22.846773>,  <44.125736, 28.248920, 22.904564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848133, 27.911629, 22.846773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.567410, 27.731539, 22.625952>,  <44.398975, 27.623484, 22.493460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.567410, 27.731539, 22.625952>,  <44.848133, 27.911629, 22.846773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567410, 27.731539, 22.625952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640181, -0.058683, -0.765980,
		0.312468, -0.890984, 0.329411,
		-0.701806, -0.450227, -0.552054,
		44.356869, 27.596470, 22.460335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228195, 27.502705, 22.236475>,  <44.848133, 27.911629, 22.846773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228195, 27.502705, 22.236475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.847515, 27.517185, 22.114515>,  <44.619106, 27.525873, 22.041340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.847515, 27.517185, 22.114515>,  <45.228195, 27.502705, 22.236475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847515, 27.517185, 22.114515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306012, 0.193044, -0.932250,
		0.025110, -0.980522, -0.194798,
		-0.951696, 0.036202, -0.304899,
		44.562008, 27.528046, 22.023046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258720, 27.053608, 21.713989>,  <45.228195, 27.502705, 22.236475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258720, 27.053608, 21.713989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.948944, 27.302492, 21.668209>,  <44.763081, 27.451822, 21.640741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.948944, 27.302492, 21.668209>,  <45.258720, 27.053608, 21.713989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948944, 27.302492, 21.668209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377574, 0.309416, -0.872754,
		-0.507625, -0.719107, -0.474555,
		-0.774439, 0.622211, -0.114449,
		44.716614, 27.489155, 21.633875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055531, 26.885935, 21.030312>,  <45.258720, 27.053608, 21.713989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055531, 26.885935, 21.030312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.895657, 27.239889, 21.126001>,  <44.799732, 27.452263, 21.183416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.895657, 27.239889, 21.126001>,  <45.055531, 26.885935, 21.030312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895657, 27.239889, 21.126001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374147, 0.395732, -0.838696,
		-0.836820, -0.245706, -0.489245,
		-0.399682, 0.884887, 0.239226,
		44.775753, 27.505356, 21.197769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608055, 27.214525, 20.452951>,  <45.055531, 26.885935, 21.030312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608055, 27.214525, 20.452951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.715275, 27.522490, 20.684603>,  <44.779606, 27.707268, 20.823593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.715275, 27.522490, 20.684603>,  <44.608055, 27.214525, 20.452951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715275, 27.522490, 20.684603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211779, 0.539333, -0.815028,
		-0.939840, 0.341116, -0.018482,
		0.268051, 0.769909, 0.579127,
		44.795689, 27.753462, 20.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073948, 26.760229, 20.721876>,  <44.608055, 27.214525, 20.452951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073948, 26.760229, 20.721876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.934505, 26.901541, 20.374619>,  <43.850842, 26.986328, 20.166264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.934505, 26.901541, 20.374619>,  <44.073948, 26.760229, 20.721876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934505, 26.901541, 20.374619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793638, 0.381487, 0.473927,
		0.498613, 0.854203, 0.147387,
		-0.348603, 0.353278, -0.868142,
		43.829926, 27.007524, 20.114176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973148, 27.453777, 20.836811>,  <44.073948, 26.760229, 20.721876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973148, 27.453777, 20.836811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.743298, 27.308798, 20.543297>,  <43.605389, 27.221809, 20.367189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.743298, 27.308798, 20.543297>,  <43.973148, 27.453777, 20.836811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743298, 27.308798, 20.543297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806270, 0.404613, 0.431529,
		0.140491, 0.839594, -0.524732,
		-0.574622, -0.362450, -0.733784,
		43.570911, 27.200064, 20.323162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488411, 27.997763, 20.701380>,  <43.973148, 27.453777, 20.836811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488411, 27.997763, 20.701380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.311726, 27.672338, 20.550114>,  <43.205715, 27.477083, 20.459354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.311726, 27.672338, 20.550114>,  <43.488411, 27.997763, 20.701380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311726, 27.672338, 20.550114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866166, 0.276888, 0.416040,
		-0.233764, 0.511326, -0.826983,
		-0.441713, -0.813560, -0.378167,
		43.179211, 27.428270, 20.436665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876991, 28.251829, 20.500410>,  <43.488411, 27.997763, 20.701380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876991, 28.251829, 20.500410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.805115, 27.858957, 20.478376>,  <42.761990, 27.623234, 20.465157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.805115, 27.858957, 20.478376>,  <42.876991, 28.251829, 20.500410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805115, 27.858957, 20.478376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935319, 0.153235, 0.318901,
		-0.304776, 0.108828, -0.946186,
		-0.179695, -0.982179, -0.055087,
		42.751205, 27.564304, 20.461851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213665, 28.185326, 20.277872>,  <42.876991, 28.251829, 20.500410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213665, 28.185326, 20.277872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285702, 27.840937, 20.468153>,  <42.328922, 27.634304, 20.582321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285702, 27.840937, 20.468153>,  <42.213665, 28.185326, 20.277872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285702, 27.840937, 20.468153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769297, 0.178093, 0.613568,
		-0.612984, -0.476454, -0.630271,
		0.180090, -0.860973, 0.475703,
		42.339729, 27.582645, 20.610865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577950, 27.962044, 20.351019>,  <42.213665, 28.185326, 20.277872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577950, 27.962044, 20.351019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.790062, 27.740629, 20.607891>,  <41.917332, 27.607780, 20.762014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.790062, 27.740629, 20.607891>,  <41.577950, 27.962044, 20.351019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790062, 27.740629, 20.607891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817619, -0.133518, 0.560065,
		-0.224275, -0.822051, -0.523386,
		0.530284, -0.553538, 0.642180,
		41.949146, 27.574568, 20.800545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241657, 27.298477, 20.424917>,  <41.577950, 27.962044, 20.351019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241657, 27.298477, 20.424917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.478287, 27.357718, 20.741930>,  <41.620266, 27.393261, 20.932137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.478287, 27.357718, 20.741930>,  <41.241657, 27.298477, 20.424917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478287, 27.357718, 20.741930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731692, -0.314232, 0.604884,
		0.338623, -0.937723, -0.077527,
		0.591575, 0.148101, 0.792530,
		41.655758, 27.402147, 20.979689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066208, 26.814415, 20.998100>,  <41.241657, 27.298477, 20.424917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066208, 26.814415, 20.998100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268162, 27.069361, 21.230947>,  <41.389332, 27.222328, 21.370655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268162, 27.069361, 21.230947>,  <41.066208, 26.814415, 20.998100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268162, 27.069361, 21.230947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659414, -0.150390, 0.736584,
		0.557017, -0.755744, 0.344359,
		0.504881, 0.637365, 0.582118,
		41.419624, 27.260571, 21.405582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147461, 26.597277, 21.799814>,  <41.066208, 26.814415, 20.998100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147461, 26.597277, 21.799814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210861, 26.992180, 21.805424>,  <41.248901, 27.229122, 21.808790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210861, 26.992180, 21.805424>,  <41.147461, 26.597277, 21.799814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210861, 26.992180, 21.805424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493444, 0.066902, 0.867201,
		0.855214, -0.144374, 0.497761,
		0.158502, 0.987259, 0.014025,
		41.258411, 27.288357, 21.809631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402767, 26.754810, 22.440424>,  <41.147461, 26.597277, 21.799814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402767, 26.754810, 22.440424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256493, 27.100117, 22.301260>,  <41.168728, 27.307301, 22.217762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256493, 27.100117, 22.301260>,  <41.402767, 26.754810, 22.440424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256493, 27.100117, 22.301260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404402, 0.189301, 0.894776,
		0.838290, 0.467906, 0.279882,
		-0.365689, 0.863267, -0.347911,
		41.146786, 27.359097, 22.196886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564354, 27.243458, 22.954067>,  <41.402767, 26.754810, 22.440424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564354, 27.243458, 22.954067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266819, 27.400446, 22.737671>,  <41.088299, 27.494638, 22.607834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266819, 27.400446, 22.737671>,  <41.564354, 27.243458, 22.954067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266819, 27.400446, 22.737671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456341, 0.293155, 0.840127,
		0.488317, 0.871796, -0.038962,
		-0.743841, 0.392468, -0.540989,
		41.043667, 27.518187, 22.575375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579304, 28.019024, 23.003363>,  <41.564354, 27.243458, 22.954067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579304, 28.019024, 23.003363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217968, 27.870527, 22.917431>,  <41.001167, 27.781429, 22.865871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217968, 27.870527, 22.917431>,  <41.579304, 28.019024, 23.003363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217968, 27.870527, 22.917431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330484, 0.283162, 0.900333,
		-0.273411, 0.884306, -0.378483,
		-0.903342, -0.371244, -0.214829,
		40.946964, 27.759153, 22.852982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184914, 28.179747, 23.536943>,  <41.579304, 28.019024, 23.003363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184914, 28.179747, 23.536943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.914371, 27.942162, 23.362698>,  <40.752048, 27.799610, 23.258150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.914371, 27.942162, 23.362698>,  <41.184914, 28.179747, 23.536943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914371, 27.942162, 23.362698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449321, -0.135924, 0.882969,
		-0.583661, 0.792927, -0.174947,
		-0.676351, -0.593962, -0.435613,
		40.711468, 27.763973, 23.232014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573914, 28.439522, 23.733492>,  <41.184914, 28.179747, 23.536943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573914, 28.439522, 23.733492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507481, 28.058908, 23.629953>,  <40.467621, 27.830542, 23.567829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507481, 28.058908, 23.629953>,  <40.573914, 28.439522, 23.733492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507481, 28.058908, 23.629953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493644, -0.147010, 0.857149,
		-0.853658, 0.270138, -0.445302,
		-0.166084, -0.951532, -0.258848,
		40.457657, 27.773449, 23.552299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877083, 28.248905, 23.887400>,  <40.573914, 28.439522, 23.733492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877083, 28.248905, 23.887400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064671, 27.895861, 23.874352>,  <40.177223, 27.684034, 23.866522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064671, 27.895861, 23.874352>,  <39.877083, 28.248905, 23.887400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064671, 27.895861, 23.874352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466560, -0.278926, 0.839358,
		-0.749927, -0.378412, -0.542599,
		0.468968, -0.882613, -0.032623,
		40.205360, 27.631077, 23.864565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342194, 27.828636, 24.032923>,  <39.877083, 28.248905, 23.887400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342194, 27.828636, 24.032923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671558, 27.609974, 24.093801>,  <39.869175, 27.478777, 24.130329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671558, 27.609974, 24.093801>,  <39.342194, 27.828636, 24.032923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671558, 27.609974, 24.093801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374043, -0.321184, 0.870019,
		-0.426717, -0.773310, -0.468939,
		0.823410, -0.546655, 0.152196,
		39.918583, 27.445976, 24.139460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109051, 27.214729, 24.171944>,  <39.342194, 27.828636, 24.032923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109051, 27.214729, 24.171944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480995, 27.206961, 24.318897>,  <39.704163, 27.202299, 24.407070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480995, 27.206961, 24.318897>,  <39.109051, 27.214729, 24.171944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480995, 27.206961, 24.318897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351469, -0.341989, 0.871501,
		0.108716, -0.939504, -0.324829,
		0.929866, -0.019421, 0.367386,
		39.759956, 27.201134, 24.429113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334717, 26.487696, 24.312122>,  <39.109051, 27.214729, 24.171944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334717, 26.487696, 24.312122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508110, 26.760897, 24.547272>,  <39.612148, 26.924818, 24.688362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508110, 26.760897, 24.547272>,  <39.334717, 26.487696, 24.312122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508110, 26.760897, 24.547272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398595, -0.439750, 0.804824,
		0.808215, -0.583204, 0.081616,
		0.433486, 0.683003, 0.587875,
		39.638157, 26.965797, 24.723635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283604, 26.164028, 24.980337>,  <39.334717, 26.487696, 24.312122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283604, 26.164028, 24.980337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392204, 26.541431, 25.056311>,  <39.457367, 26.767874, 25.101894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392204, 26.541431, 25.056311>,  <39.283604, 26.164028, 24.980337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392204, 26.541431, 25.056311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480679, -0.038039, 0.876071,
		0.833806, -0.329155, 0.443197,
		0.271504, 0.943509, 0.189935,
		39.473656, 26.824484, 25.113291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408127, 26.066673, 25.715752>,  <39.283604, 26.164028, 24.980337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408127, 26.066673, 25.715752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340809, 26.447983, 25.615393>,  <39.300419, 26.676767, 25.555178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340809, 26.447983, 25.615393>,  <39.408127, 26.066673, 25.715752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340809, 26.447983, 25.615393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522452, 0.129573, 0.842766,
		0.835895, 0.272918, 0.476231,
		-0.168299, 0.953272, -0.250896,
		39.290318, 26.733965, 25.540123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503418, 26.383593, 26.356983>,  <39.408127, 26.066673, 25.715752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503418, 26.383593, 26.356983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298782, 26.640074, 26.128201>,  <39.176003, 26.793962, 25.990931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298782, 26.640074, 26.128201>,  <39.503418, 26.383593, 26.356983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298782, 26.640074, 26.128201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572335, 0.242193, 0.783438,
		0.640868, 0.728148, 0.243081,
		-0.511587, 0.641204, -0.571958,
		39.145306, 26.832436, 25.956614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.248829, 28.548428, 31.225809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.903099, 28.722424, 31.124830>,  <39.695660, 28.826820, 31.064243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.903099, 28.722424, 31.124830>,  <40.248829, 28.548428, 31.225809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903099, 28.722424, 31.124830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114479, 0.318609, 0.940948,
		0.489735, 0.842183, -0.225584,
		-0.864323, 0.434990, -0.252446,
		39.643803, 28.852921, 31.049097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116009, 29.143423, 31.696341>,  <40.248829, 28.548428, 31.225809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116009, 29.143423, 31.696341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745007, 29.132952, 31.547188>,  <39.522404, 29.126669, 31.457695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745007, 29.132952, 31.547188>,  <40.116009, 29.143423, 31.696341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745007, 29.132952, 31.547188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354971, 0.374310, 0.856672,
		0.117146, 0.926934, -0.356469,
		-0.927509, -0.026180, -0.372884,
		39.466755, 29.125097, 31.435322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820381, 29.780149, 31.875072>,  <40.116009, 29.143423, 31.696341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820381, 29.780149, 31.875072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518154, 29.527456, 31.805750>,  <39.336819, 29.375841, 31.764156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518154, 29.527456, 31.805750>,  <39.820381, 29.780149, 31.875072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518154, 29.527456, 31.805750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482056, 0.357063, 0.800080,
		-0.443555, 0.688056, -0.574315,
		-0.755567, -0.631731, -0.173304,
		39.291485, 29.337936, 31.753759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187637, 30.192392, 31.822821>,  <39.820381, 29.780149, 31.875072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187637, 30.192392, 31.822821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071293, 29.814968, 31.886181>,  <39.001488, 29.588512, 31.924198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071293, 29.814968, 31.886181>,  <39.187637, 30.192392, 31.822821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071293, 29.814968, 31.886181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669512, 0.318998, 0.670817,
		-0.683486, 0.089064, -0.724510,
		-0.290862, -0.943561, 0.158401,
		38.984035, 29.531900, 31.933701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525154, 30.270130, 31.950121>,  <39.187637, 30.192392, 31.822821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525154, 30.270130, 31.950121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593643, 29.904596, 32.097408>,  <38.634739, 29.685276, 32.185780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593643, 29.904596, 32.097408>,  <38.525154, 30.270130, 31.950121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593643, 29.904596, 32.097408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743023, 0.125658, 0.657364,
		-0.646993, -0.386153, -0.657485,
		0.171225, -0.913836, 0.368220,
		38.645012, 29.630445, 32.207874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894882, 29.900753, 31.948093>,  <38.525154, 30.270130, 31.950121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894882, 29.900753, 31.948093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127831, 29.703968, 32.206959>,  <38.267597, 29.585897, 32.362278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127831, 29.703968, 32.206959>,  <37.894882, 29.900753, 31.948093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127831, 29.703968, 32.206959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727128, 0.040738, 0.685292,
		-0.363502, -0.869662, -0.333996,
		0.582367, -0.491963, 0.647164,
		38.302540, 29.556379, 32.401108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438454, 29.448853, 32.290386>,  <37.894882, 29.900753, 31.948093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438454, 29.448853, 32.290386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753933, 29.492102, 32.532467>,  <37.943222, 29.518051, 32.677715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753933, 29.492102, 32.532467>,  <37.438454, 29.448853, 32.290386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753933, 29.492102, 32.532467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613574, 0.200110, 0.763861,
		-0.038516, -0.973789, 0.224168,
		0.788697, 0.108123, 0.605199,
		37.990543, 29.524538, 32.714027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435844, 28.997837, 32.701290>,  <37.438454, 29.448853, 32.290386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435844, 28.997837, 32.701290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.657562, 29.262276, 32.903561>,  <37.790592, 29.420938, 33.024921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.657562, 29.262276, 32.903561>,  <37.435844, 28.997837, 32.701290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657562, 29.262276, 32.903561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717685, 0.071937, 0.692643,
		0.421527, -0.746844, 0.514333,
		0.554295, 0.661097, 0.505675,
		37.823853, 29.460606, 33.055264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337608, 28.790045, 33.495747>,  <37.435844, 28.997837, 32.701290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337608, 28.790045, 33.495747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463619, 29.168020, 33.460316>,  <37.539227, 29.394806, 33.439056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463619, 29.168020, 33.460316>,  <37.337608, 28.790045, 33.495747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463619, 29.168020, 33.460316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638745, 0.280123, 0.716615,
		0.701971, -0.169173, 0.691822,
		0.315027, 0.944940, -0.088579,
		37.558128, 29.451502, 33.433743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181389, 29.056559, 34.117229>,  <37.337608, 28.790045, 33.495747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181389, 29.056559, 34.117229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265060, 29.413652, 33.957596>,  <37.315262, 29.627909, 33.861816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265060, 29.413652, 33.957596>,  <37.181389, 29.056559, 34.117229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265060, 29.413652, 33.957596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684419, 0.425146, 0.592302,
		0.698438, 0.149247, 0.699935,
		0.209175, 0.892735, -0.399085,
		37.327812, 29.681473, 33.837872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269253, 29.673225, 34.677349>,  <37.181389, 29.056559, 34.117229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269253, 29.673225, 34.677349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.160580, 29.858400, 34.339855>,  <37.095375, 29.969505, 34.137360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.160580, 29.858400, 34.339855>,  <37.269253, 29.673225, 34.677349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160580, 29.858400, 34.339855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767408, 0.424840, 0.480203,
		0.580754, 0.777947, 0.239841,
		-0.271679, 0.462936, -0.843730,
		37.079075, 29.997282, 34.086735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131153, 30.319113, 34.839703>,  <37.269253, 29.673225, 34.677349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131153, 30.319113, 34.839703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944668, 30.292498, 34.486835>,  <36.832775, 30.276529, 34.275116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944668, 30.292498, 34.486835>,  <37.131153, 30.319113, 34.839703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944668, 30.292498, 34.486835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828597, 0.382210, 0.409075,
		0.309954, 0.921677, -0.233326,
		-0.466215, -0.066539, -0.882166,
		36.804802, 30.272535, 34.222187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713428, 30.927664, 34.681061>,  <37.131153, 30.319113, 34.839703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713428, 30.927664, 34.681061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.545258, 30.614689, 34.497307>,  <36.444355, 30.426905, 34.387054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.545258, 30.614689, 34.497307>,  <36.713428, 30.927664, 34.681061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545258, 30.614689, 34.497307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882200, 0.234189, 0.408508,
		-0.212049, 0.577018, -0.788724,
		-0.420427, -0.782436, -0.459386,
		36.419128, 30.379957, 34.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369450, 31.034981, 34.916676>,  <36.713428, 30.927664, 34.681061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369450, 31.034981, 34.916676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655704, 30.931826, 35.176323>,  <37.827457, 30.869932, 35.332111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655704, 30.931826, 35.176323>,  <37.369450, 31.034981, 34.916676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655704, 30.931826, 35.176323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047885, 0.909042, 0.413945,
		-0.696829, -0.327317, 0.638195,
		0.715637, -0.257889, 0.649120,
		37.870396, 30.854460, 35.371059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643333, 31.285088, 35.561932>,  <37.369450, 31.034981, 34.916676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643333, 31.285088, 35.561932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768524, 31.650995, 35.664101>,  <37.843639, 31.870541, 35.725403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768524, 31.650995, 35.664101>,  <37.643333, 31.285088, 35.561932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768524, 31.650995, 35.664101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195536, 0.201114, -0.959854,
		-0.929415, 0.350356, -0.115926,
		0.312976, 0.914770, 0.255425,
		37.862415, 31.925426, 35.740726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231995, 31.768019, 35.162292>,  <37.643333, 31.285088, 35.561932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231995, 31.768019, 35.162292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531887, 32.008064, 35.273842>,  <37.711823, 32.152092, 35.340771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531887, 32.008064, 35.273842>,  <37.231995, 31.768019, 35.162292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531887, 32.008064, 35.273842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214326, 0.178503, -0.960313,
		-0.626079, 0.779743, 0.005208,
		0.749727, 0.600115, 0.278876,
		37.756805, 32.188099, 35.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216835, 32.318153, 34.750961>,  <37.231995, 31.768019, 35.162292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216835, 32.318153, 34.750961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597633, 32.283806, 34.868484>,  <37.826115, 32.263195, 34.938999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597633, 32.283806, 34.868484>,  <37.216835, 32.318153, 34.750961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597633, 32.283806, 34.868484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304029, 0.153896, -0.940150,
		0.035519, 0.984348, 0.172617,
		0.952000, -0.085873, 0.293804,
		37.883232, 32.258045, 34.956627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519905, 32.702457, 34.263172>,  <37.216835, 32.318153, 34.750961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519905, 32.702457, 34.263172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832222, 32.521046, 34.435066>,  <38.019611, 32.412197, 34.538204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832222, 32.521046, 34.435066>,  <37.519905, 32.702457, 34.263172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832222, 32.521046, 34.435066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543680, 0.154287, -0.824989,
		0.307855, 0.877785, 0.367041,
		0.780792, -0.453530, 0.429736,
		38.066460, 32.384987, 34.563988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102291, 33.010517, 33.943699>,  <37.519905, 32.702457, 34.263172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102291, 33.010517, 33.943699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263779, 32.688915, 34.118328>,  <38.360672, 32.495956, 34.223106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.263779, 32.688915, 34.118328>,  <38.102291, 33.010517, 33.943699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263779, 32.688915, 34.118328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713083, -0.022427, -0.700721,
		0.573172, 0.594203, 0.564267,
		0.403716, -0.804002, 0.436570,
		38.384892, 32.447716, 34.249298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772942, 33.236107, 33.907475>,  <38.102291, 33.010517, 33.943699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772942, 33.236107, 33.907475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753517, 32.840504, 33.963341>,  <38.741863, 32.603142, 33.996861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753517, 32.840504, 33.963341>,  <38.772942, 33.236107, 33.907475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753517, 32.840504, 33.963341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730158, -0.130564, -0.670688,
		0.681551, 0.069410, 0.728471,
		-0.048560, -0.989007, 0.139667,
		38.738949, 32.543800, 34.005241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491146, 33.001358, 33.968700>,  <38.772942, 33.236107, 33.907475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491146, 33.001358, 33.968700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284092, 32.680828, 33.848747>,  <39.159859, 32.488510, 33.776775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284092, 32.680828, 33.848747>,  <39.491146, 33.001358, 33.968700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284092, 32.680828, 33.848747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672835, -0.164732, -0.721219,
		0.528531, -0.575101, 0.624431,
		-0.517637, -0.801326, -0.299882,
		39.128799, 32.440430, 33.758781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959282, 32.537025, 33.805447>,  <39.491146, 33.001358, 33.968700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959282, 32.537025, 33.805447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626568, 32.449829, 33.601242>,  <39.426941, 32.397511, 33.478722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626568, 32.449829, 33.601242>,  <39.959282, 32.537025, 33.805447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626568, 32.449829, 33.601242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550734, -0.208923, -0.808111,
		0.069502, -0.953327, 0.293832,
		-0.831782, -0.217988, -0.510509,
		39.377033, 32.384434, 33.448090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105270, 31.837578, 33.591377>,  <39.959282, 32.537025, 33.805447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105270, 31.837578, 33.591377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827229, 31.982088, 33.342762>,  <39.660404, 32.068794, 33.193592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827229, 31.982088, 33.342762>,  <40.105270, 31.837578, 33.591377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827229, 31.982088, 33.342762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508475, -0.364119, -0.780302,
		-0.508218, -0.858427, 0.069400,
		-0.695102, 0.361275, -0.621541,
		39.618698, 32.090469, 33.156300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238281, 31.413658, 33.045036>,  <40.105270, 31.837578, 33.591377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238281, 31.413658, 33.045036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.977688, 31.680798, 32.901070>,  <39.821331, 31.841082, 32.814690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.977688, 31.680798, 32.901070>,  <40.238281, 31.413658, 33.045036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977688, 31.680798, 32.901070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195102, -0.310970, -0.930179,
		-0.733143, -0.676221, 0.072294,
		-0.651488, 0.667850, -0.359917,
		39.782242, 31.881153, 32.793095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852409, 31.060118, 32.460949>,  <40.238281, 31.413658, 33.045036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852409, 31.060118, 32.460949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828117, 31.457138, 32.418694>,  <39.813541, 31.695351, 32.393341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828117, 31.457138, 32.418694>,  <39.852409, 31.060118, 32.460949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828117, 31.457138, 32.418694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222327, -0.089724, -0.970835,
		-0.973079, -0.082440, -0.215222,
		-0.060725, 0.992549, -0.105637,
		39.809898, 31.754902, 32.387001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304688, 31.221445, 31.848011>,  <39.852409, 31.060118, 32.460949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304688, 31.221445, 31.848011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.567383, 31.517809, 31.904217>,  <39.724998, 31.695627, 31.937941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.567383, 31.517809, 31.904217>,  <39.304688, 31.221445, 31.848011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567383, 31.517809, 31.904217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159669, 0.045490, -0.986122,
		-0.737020, 0.670061, -0.088426,
		0.656739, 0.740911, 0.140515,
		39.764404, 31.740082, 31.946371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386929, 31.511990, 31.221685>,  <39.304688, 31.221445, 31.848011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386929, 31.511990, 31.221685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.701717, 31.704065, 31.376650>,  <39.890591, 31.819311, 31.469629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.701717, 31.704065, 31.376650>,  <39.386929, 31.511990, 31.221685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701717, 31.704065, 31.376650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333629, 0.196997, -0.921892,
		-0.519004, 0.854756, -0.005174,
		0.786974, 0.480191, 0.387413,
		39.937809, 31.848124, 31.492874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416451, 32.127117, 30.862303>,  <39.386929, 31.511990, 31.221685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416451, 32.127117, 30.862303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778889, 32.033062, 31.002985>,  <39.996353, 31.976629, 31.087395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778889, 32.033062, 31.002985>,  <39.416451, 32.127117, 30.862303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778889, 32.033062, 31.002985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376221, 0.067607, -0.924060,
		0.193506, 0.969607, 0.149723,
		0.906098, -0.235140, 0.351704,
		40.050716, 31.962521, 31.108496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146610, 32.760345, 30.784281>,  <39.416451, 32.127117, 30.862303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146610, 32.760345, 30.784281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823013, 32.884129, 30.584373>,  <38.628857, 32.958397, 30.464430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823013, 32.884129, 30.584373>,  <39.146610, 32.760345, 30.784281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823013, 32.884129, 30.584373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549421, -0.095823, 0.830033,
		0.208971, 0.946073, 0.247543,
		-0.808992, 0.309459, -0.499768,
		38.580315, 32.976967, 30.434443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843704, 33.343880, 31.179790>,  <39.146610, 32.760345, 30.784281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843704, 33.343880, 31.179790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558189, 33.173756, 30.957216>,  <38.386879, 33.071682, 30.823671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558189, 33.173756, 30.957216>,  <38.843704, 33.343880, 31.179790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558189, 33.173756, 30.957216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557518, -0.135805, 0.818981,
		-0.423888, 0.894800, -0.140182,
		-0.713787, -0.425311, -0.556433,
		38.344051, 33.046162, 30.790287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245071, 33.557610, 31.491129>,  <38.843704, 33.343880, 31.179790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245071, 33.557610, 31.491129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099033, 33.267284, 31.257925>,  <38.011410, 33.093090, 31.118004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099033, 33.267284, 31.257925>,  <38.245071, 33.557610, 31.491129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099033, 33.267284, 31.257925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801590, -0.073399, 0.593351,
		-0.473456, 0.683961, -0.555010,
		-0.365092, -0.725817, -0.583007,
		37.989506, 33.049538, 31.083023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624252, 33.693459, 31.465195>,  <38.245071, 33.557610, 31.491129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624252, 33.693459, 31.465195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601978, 33.317448, 31.330584>,  <37.588615, 33.091843, 31.249817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601978, 33.317448, 31.330584>,  <37.624252, 33.693459, 31.465195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601978, 33.317448, 31.330584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808859, -0.155132, 0.567170,
		-0.585360, 0.303788, -0.751709,
		-0.055686, -0.940025, -0.336530,
		37.585274, 33.035439, 31.229624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969620, 33.541405, 31.412004>,  <37.624252, 33.693459, 31.465195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969620, 33.541405, 31.412004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122875, 33.172829, 31.437809>,  <37.214828, 32.951683, 31.453291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122875, 33.172829, 31.437809>,  <36.969620, 33.541405, 31.412004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122875, 33.172829, 31.437809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747925, -0.268490, 0.607059,
		-0.542046, -0.280836, -0.792033,
		0.383138, -0.921436, 0.064510,
		37.237816, 32.896397, 31.457163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462891, 33.045563, 31.177364>,  <36.969620, 33.541405, 31.412004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462891, 33.045563, 31.177364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718571, 32.832336, 31.399090>,  <36.871979, 32.704403, 31.532125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718571, 32.832336, 31.399090>,  <36.462891, 33.045563, 31.177364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718571, 32.832336, 31.399090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761078, -0.335057, 0.555425,
		-0.110350, -0.776905, -0.619872,
		0.639205, -0.533062, 0.554312,
		36.910332, 32.672417, 31.565384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226974, 32.381168, 31.213205>,  <36.462891, 33.045563, 31.177364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226974, 32.381168, 31.213205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.479774, 32.404572, 31.522308>,  <36.631454, 32.418613, 31.707771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.479774, 32.404572, 31.522308>,  <36.226974, 32.381168, 31.213205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479774, 32.404572, 31.522308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706009, -0.367735, 0.605246,
		0.319582, -0.928088, -0.191101,
		0.631996, 0.058507, 0.772760,
		36.669373, 32.422123, 31.754137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023212, 31.881844, 31.585287>,  <36.226974, 32.381168, 31.213205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023212, 31.881844, 31.585287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234348, 32.092934, 31.851486>,  <36.361031, 32.219589, 32.011208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234348, 32.092934, 31.851486>,  <36.023212, 31.881844, 31.585287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234348, 32.092934, 31.851486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608463, -0.311724, 0.729795,
		0.592585, -0.790146, 0.156562,
		0.527841, 0.527728, 0.665498,
		36.392700, 32.251251, 32.051136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144348, 31.334820, 32.064831>,  <36.023212, 31.881844, 31.585287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144348, 31.334820, 32.064831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.187111, 31.680635, 32.261253>,  <36.212769, 31.888124, 32.379108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.187111, 31.680635, 32.261253>,  <36.144348, 31.334820, 32.064831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187111, 31.680635, 32.261253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516979, -0.373544, 0.770193,
		0.849296, -0.336205, 0.407017,
		0.106904, 0.864541, 0.491060,
		36.219181, 31.939999, 32.408573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311798, 31.203577, 32.818993>,  <36.144348, 31.334820, 32.064831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311798, 31.203577, 32.818993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.196625, 31.586498, 32.829319>,  <36.127522, 31.816250, 32.835514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.196625, 31.586498, 32.829319>,  <36.311798, 31.203577, 32.818993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196625, 31.586498, 32.829319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566110, -0.191895, 0.801683,
		0.772407, 0.216219, 0.597191,
		-0.287937, 0.957301, 0.025817,
		36.110245, 31.873688, 32.837063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508244, 31.602745, 33.509594>,  <36.311798, 31.203577, 32.818993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508244, 31.602745, 33.509594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177444, 31.762625, 33.351448>,  <35.978966, 31.858553, 33.256561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177444, 31.762625, 33.351448>,  <36.508244, 31.602745, 33.509594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177444, 31.762625, 33.351448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440270, -0.023115, 0.897568,
		0.349621, 0.916354, 0.195093,
		-0.826999, 0.399702, -0.395361,
		35.929344, 31.882536, 33.232841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120861, 31.588999, 34.016186>,  <36.508244, 31.602745, 33.509594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120861, 31.588999, 34.016186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813351, 31.703806, 33.787590>,  <35.628845, 31.772690, 33.650433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813351, 31.703806, 33.787590>,  <36.120861, 31.588999, 34.016186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813351, 31.703806, 33.787590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625712, -0.152920, 0.764918,
		0.132155, 0.945640, 0.297153,
		-0.768778, 0.287020, -0.571489,
		35.582718, 31.789911, 33.616142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.947735, 33.962124, 27.621546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625481, 33.802807, 27.446133>,  <40.432129, 33.707218, 27.340885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625481, 33.802807, 27.446133>,  <40.947735, 33.962124, 27.621546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625481, 33.802807, 27.446133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544074, 0.204600, 0.813708,
		-0.234367, 0.894150, -0.381533,
		-0.805639, -0.398289, -0.438533,
		40.383789, 33.683319, 27.314573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298038, 34.288631, 27.729765>,  <40.947735, 33.962124, 27.621546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298038, 34.288631, 27.729765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141148, 33.936569, 27.622820>,  <40.047012, 33.725330, 27.558653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141148, 33.936569, 27.622820>,  <40.298038, 34.288631, 27.729765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141148, 33.936569, 27.622820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643739, 0.055016, 0.763265,
		-0.657082, 0.471487, -0.588169,
		-0.392228, -0.880155, -0.267365,
		40.023479, 33.672523, 27.542610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550941, 34.352440, 27.648745>,  <40.298038, 34.288631, 27.729765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550941, 34.352440, 27.648745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631054, 33.969845, 27.733612>,  <39.679123, 33.740288, 27.784533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631054, 33.969845, 27.733612>,  <39.550941, 34.352440, 27.648745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631054, 33.969845, 27.733612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551331, 0.068984, 0.831430,
		-0.809890, -0.283496, -0.513526,
		0.200282, -0.956489, 0.212169,
		39.691139, 33.682899, 27.797262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944126, 34.115971, 27.748043>,  <39.550941, 34.352440, 27.648745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944126, 34.115971, 27.748043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173843, 33.839256, 27.923138>,  <39.311676, 33.673225, 28.028194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173843, 33.839256, 27.923138>,  <38.944126, 34.115971, 27.748043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173843, 33.839256, 27.923138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633910, -0.037443, 0.772500,
		-0.518016, -0.721130, -0.460035,
		0.574298, -0.691788, 0.437735,
		39.346134, 33.631721, 28.054459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456722, 33.612591, 28.090712>,  <38.944126, 34.115971, 27.748043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456722, 33.612591, 28.090712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810837, 33.544868, 28.263966>,  <39.023304, 33.504234, 28.367918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810837, 33.544868, 28.263966>,  <38.456722, 33.612591, 28.090712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810837, 33.544868, 28.263966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451158, -0.086735, 0.888219,
		-0.112823, -0.981738, -0.153174,
		0.885284, -0.169317, 0.433133,
		39.076424, 33.494080, 28.393906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365345, 32.949551, 28.384541>,  <38.456722, 33.612591, 28.090712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365345, 32.949551, 28.384541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684261, 33.115196, 28.560194>,  <38.875610, 33.214584, 28.665586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684261, 33.115196, 28.560194>,  <38.365345, 32.949551, 28.384541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684261, 33.115196, 28.560194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353676, -0.269040, 0.895841,
		0.489129, -0.869554, -0.068039,
		0.797287, 0.414118, 0.439135,
		38.923447, 33.239433, 28.691935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812592, 32.454716, 28.763611>,  <38.365345, 32.949551, 28.384541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812592, 32.454716, 28.763611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847046, 32.805603, 28.952534>,  <38.867718, 33.016136, 29.065887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847046, 32.805603, 28.952534>,  <38.812592, 32.454716, 28.763611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847046, 32.805603, 28.952534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361562, -0.414223, 0.835280,
		0.928360, -0.242716, 0.281489,
		0.086137, 0.877216, 0.472305,
		38.872887, 33.068768, 29.094225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954685, 32.267620, 29.391722>,  <38.812592, 32.454716, 28.763611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954685, 32.267620, 29.391722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873356, 32.653652, 29.457798>,  <38.824558, 32.885269, 29.497444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873356, 32.653652, 29.457798>,  <38.954685, 32.267620, 29.391722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873356, 32.653652, 29.457798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231762, -0.211358, 0.949533,
		0.951287, 0.154775, 0.266642,
		-0.203321, 0.965076, 0.165191,
		38.812359, 32.943176, 29.507355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397476, 32.619396, 29.966963>,  <38.954685, 32.267620, 29.391722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397476, 32.619396, 29.966963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045597, 32.808849, 29.949982>,  <38.834469, 32.922523, 29.939793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045597, 32.808849, 29.949982>,  <39.397476, 32.619396, 29.966963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045597, 32.808849, 29.949982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218938, -0.324151, 0.920322,
		0.422136, 0.818899, 0.388851,
		-0.879697, 0.473636, -0.042452,
		38.781689, 32.950939, 29.937246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908463, 32.761703, 30.569286>,  <39.397476, 32.619396, 29.966963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908463, 32.761703, 30.569286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147980, 32.455242, 30.662622>,  <40.291691, 32.271366, 30.718624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147980, 32.455242, 30.662622>,  <39.908463, 32.761703, 30.569286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147980, 32.455242, 30.662622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461326, 0.091791, -0.882470,
		0.654691, 0.636065, 0.408412,
		0.598797, -0.766156, 0.233339,
		40.327618, 32.225395, 30.732624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640743, 32.907837, 30.329363>,  <39.908463, 32.761703, 30.569286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640743, 32.907837, 30.329363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667061, 32.512009, 30.380625>,  <40.682850, 32.274513, 30.411381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667061, 32.512009, 30.380625>,  <40.640743, 32.907837, 30.329363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667061, 32.512009, 30.380625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402331, -0.091221, -0.910939,
		0.913128, 0.111491, 0.392133,
		0.065790, -0.989570, 0.128153,
		40.686798, 32.215137, 30.419071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365669, 32.739864, 30.215179>,  <40.640743, 32.907837, 30.329363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365669, 32.739864, 30.215179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145294, 32.410213, 30.162592>,  <41.013069, 32.212425, 30.131039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145294, 32.410213, 30.162592>,  <41.365669, 32.739864, 30.215179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145294, 32.410213, 30.162592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558045, -0.246671, -0.792300,
		0.620524, -0.509876, 0.595799,
		-0.550941, -0.824124, -0.131468,
		40.980011, 32.162975, 30.123152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905251, 32.299389, 29.905201>,  <41.365669, 32.739864, 30.215179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905251, 32.299389, 29.905201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561218, 32.106918, 29.837402>,  <41.354797, 31.991434, 29.796724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561218, 32.106918, 29.837402>,  <41.905251, 32.299389, 29.905201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561218, 32.106918, 29.837402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308211, -0.225345, -0.924243,
		0.406534, -0.847162, 0.342120,
		-0.860079, -0.481181, -0.169494,
		41.303196, 31.962564, 29.786554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032398, 31.558184, 29.714586>,  <41.905251, 32.299389, 29.905201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032398, 31.558184, 29.714586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683842, 31.635355, 29.534164>,  <41.474709, 31.681658, 29.425911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683842, 31.635355, 29.534164>,  <42.032398, 31.558184, 29.714586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683842, 31.635355, 29.534164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412276, -0.210333, -0.886447,
		-0.265889, -0.958405, 0.103745,
		-0.871396, 0.192925, -0.451052,
		41.422424, 31.693233, 29.398849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838219, 30.996372, 29.446846>,  <42.032398, 31.558184, 29.714586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838219, 30.996372, 29.446846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645542, 31.258924, 29.214592>,  <41.529938, 31.416456, 29.075239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645542, 31.258924, 29.214592>,  <41.838219, 30.996372, 29.446846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645542, 31.258924, 29.214592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394217, -0.429444, -0.812509,
		-0.782666, -0.620275, -0.051896,
		-0.481692, 0.656381, -0.580634,
		41.501034, 31.455839, 29.040401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569157, 30.619606, 28.928965>,  <41.838219, 30.996372, 29.446846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569157, 30.619606, 28.928965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549694, 30.980019, 28.756557>,  <41.538017, 31.196266, 28.653114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549694, 30.980019, 28.756557>,  <41.569157, 30.619606, 28.928965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549694, 30.980019, 28.756557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435748, -0.369148, -0.820885,
		-0.898752, -0.227753, -0.374663,
		-0.048653, 0.901031, -0.431016,
		41.535099, 31.250328, 28.627253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264091, 30.613794, 28.243505>,  <41.569157, 30.619606, 28.928965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264091, 30.613794, 28.243505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373245, 30.992689, 28.176243>,  <41.438740, 31.220026, 28.135885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373245, 30.992689, 28.176243>,  <41.264091, 30.613794, 28.243505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373245, 30.992689, 28.176243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354034, -0.261402, -0.897958,
		-0.894535, 0.185509, -0.406687,
		0.272888, 0.947236, -0.168156,
		41.455112, 31.276859, 28.125795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863842, 30.916353, 27.615519>,  <41.264091, 30.613794, 28.243505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863842, 30.916353, 27.615519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211800, 31.107367, 27.664896>,  <41.420574, 31.221975, 27.694523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211800, 31.107367, 27.664896>,  <40.863842, 30.916353, 27.615519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211800, 31.107367, 27.664896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289322, -0.291337, -0.911820,
		-0.399462, 0.828905, -0.391595,
		0.869898, 0.477534, 0.123442,
		41.472771, 31.250628, 27.701929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959965, 31.412745, 27.039190>,  <40.863842, 30.916353, 27.615519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959965, 31.412745, 27.039190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325493, 31.367983, 27.195353>,  <41.544807, 31.341125, 27.289051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325493, 31.367983, 27.195353>,  <40.959965, 31.412745, 27.039190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325493, 31.367983, 27.195353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374647, -0.138817, -0.916717,
		0.156781, 0.983975, -0.084928,
		0.913816, -0.111906, 0.390407,
		41.599636, 31.334412, 27.312475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383320, 31.819471, 26.578926>,  <40.959965, 31.412745, 27.039190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383320, 31.819471, 26.578926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638130, 31.572714, 26.763811>,  <41.791016, 31.424660, 26.874743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638130, 31.572714, 26.763811>,  <41.383320, 31.819471, 26.578926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638130, 31.572714, 26.763811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567729, -0.030132, -0.822664,
		0.521424, 0.786469, 0.331034,
		0.637025, -0.616894, 0.462213,
		41.829239, 31.387646, 26.902475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092518, 32.044327, 26.354929>,  <41.383320, 31.819471, 26.578926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092518, 32.044327, 26.354929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144245, 31.674864, 26.499220>,  <42.175282, 31.453184, 26.585794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144245, 31.674864, 26.499220>,  <42.092518, 32.044327, 26.354929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144245, 31.674864, 26.499220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569623, -0.228571, -0.789484,
		0.811668, 0.307577, 0.496580,
		0.129323, -0.923662, 0.360727,
		42.183041, 31.397766, 26.607437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874886, 31.888464, 26.375582>,  <42.092518, 32.044327, 26.354929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874886, 31.888464, 26.375582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693359, 31.532059, 26.370691>,  <42.584442, 31.318216, 26.367756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693359, 31.532059, 26.370691>,  <42.874886, 31.888464, 26.375582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693359, 31.532059, 26.370691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690869, -0.343143, -0.636359,
		0.562809, -0.297236, 0.771296,
		-0.453814, -0.891013, -0.012227,
		42.557217, 31.264755, 26.367023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403988, 31.394325, 26.470640>,  <42.874886, 31.888464, 26.375582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403988, 31.394325, 26.470640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120270, 31.166693, 26.304245>,  <42.950039, 31.030113, 26.204409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120270, 31.166693, 26.304245>,  <43.403988, 31.394325, 26.470640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120270, 31.166693, 26.304245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660827, -0.331388, -0.673417,
		0.245377, -0.752547, 0.611117,
		-0.709294, -0.569083, -0.415988,
		42.907482, 30.995968, 26.179449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.233627, 28.495043, 22.621058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.509796, 28.754206, 22.749765>,  <36.675499, 28.909704, 22.826990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.509796, 28.754206, 22.749765>,  <36.233627, 28.495043, 22.621058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509796, 28.754206, 22.749765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524987, 0.142736, 0.839056,
		0.497702, -0.748227, 0.438691,
		0.690421, 0.647907, 0.321769,
		36.716923, 28.948578, 22.846296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424442, 28.276127, 23.353683>,  <36.233627, 28.495043, 22.621058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424442, 28.276127, 23.353683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510830, 28.663948, 23.307510>,  <36.562664, 28.896641, 23.279806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510830, 28.663948, 23.307510>,  <36.424442, 28.276127, 23.353683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510830, 28.663948, 23.307510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430062, 0.200599, 0.880231,
		0.876586, -0.140463, 0.460291,
		0.215973, 0.969552, -0.115434,
		36.575623, 28.954813, 23.272881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909985, 28.489212, 23.817383>,  <36.424442, 28.276127, 23.353683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909985, 28.489212, 23.817383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751598, 28.844227, 23.723162>,  <36.656567, 29.057236, 23.666628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751598, 28.844227, 23.723162>,  <36.909985, 28.489212, 23.817383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751598, 28.844227, 23.723162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213351, 0.160579, 0.963688,
		0.893136, 0.431844, 0.125773,
		-0.395966, 0.887539, -0.235554,
		36.632809, 29.110489, 23.652496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301952, 29.055082, 24.204561>,  <36.909985, 28.489212, 23.817383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301952, 29.055082, 24.204561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977200, 29.265032, 24.102304>,  <36.782349, 29.391003, 24.040951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977200, 29.265032, 24.102304>,  <37.301952, 29.055082, 24.204561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977200, 29.265032, 24.102304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060994, 0.359225, 0.931256,
		0.580626, 0.771663, -0.259634,
		-0.811882, 0.524875, -0.255642,
		36.733635, 29.422495, 24.025612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269028, 29.733931, 24.509045>,  <37.301952, 29.055082, 24.204561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269028, 29.733931, 24.509045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886822, 29.670681, 24.409451>,  <36.657497, 29.632730, 24.349693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886822, 29.670681, 24.409451>,  <37.269028, 29.733931, 24.509045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886822, 29.670681, 24.409451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276143, 0.182941, 0.943545,
		-0.103648, 0.970324, -0.218467,
		-0.955512, -0.158124, -0.248987,
		36.600170, 29.623243, 24.334755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833206, 30.196478, 24.898804>,  <37.269028, 29.733931, 24.509045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833206, 30.196478, 24.898804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562561, 29.924965, 24.784645>,  <36.400173, 29.762056, 24.716150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562561, 29.924965, 24.784645>,  <36.833206, 30.196478, 24.898804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562561, 29.924965, 24.784645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457819, 0.084237, 0.885046,
		-0.576713, 0.729492, -0.367755,
		-0.676612, -0.678782, -0.285394,
		36.359577, 29.721331, 24.699026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247097, 30.397568, 25.205929>,  <36.833206, 30.196478, 24.898804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247097, 30.397568, 25.205929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.143070, 30.024183, 25.107122>,  <36.080654, 29.800154, 25.047838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.143070, 30.024183, 25.107122>,  <36.247097, 30.397568, 25.205929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143070, 30.024183, 25.107122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430812, -0.116772, 0.894855,
		-0.864156, 0.339141, -0.371778,
		-0.260068, -0.933460, -0.247015,
		36.065048, 29.744144, 25.033018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529209, 30.288605, 25.372913>,  <36.247097, 30.397568, 25.205929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529209, 30.288605, 25.372913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689056, 29.922022, 25.381033>,  <35.784966, 29.702072, 25.385904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689056, 29.922022, 25.381033>,  <35.529209, 30.288605, 25.372913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689056, 29.922022, 25.381033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557618, -0.225453, 0.798895,
		-0.727576, -0.330571, -0.601128,
		0.399618, -0.916457, 0.020298,
		35.808941, 29.647085, 25.387123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093002, 29.916437, 25.665096>,  <35.529209, 30.288605, 25.372913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093002, 29.916437, 25.665096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377697, 29.636251, 25.686165>,  <35.548515, 29.468140, 25.698807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377697, 29.636251, 25.686165>,  <35.093002, 29.916437, 25.665096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377697, 29.636251, 25.686165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407056, -0.350171, 0.843615,
		-0.572478, -0.621876, -0.534359,
		0.711740, -0.700465, 0.052673,
		35.591221, 29.426111, 25.701967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804020, 29.231682, 25.734758>,  <35.093002, 29.916437, 25.665096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804020, 29.231682, 25.734758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178932, 29.210598, 25.872583>,  <35.403881, 29.197948, 25.955278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178932, 29.210598, 25.872583>,  <34.804020, 29.231682, 25.734758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178932, 29.210598, 25.872583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335094, -0.408467, 0.849039,
		0.095992, -0.911250, -0.400510,
		0.937282, -0.052708, 0.344564,
		35.460117, 29.194786, 25.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834625, 28.593254, 26.016188>,  <34.804020, 29.231682, 25.734758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834625, 28.593254, 26.016188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119251, 28.819849, 26.182449>,  <35.290028, 28.955807, 26.282206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119251, 28.819849, 26.182449>,  <34.834625, 28.593254, 26.016188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119251, 28.819849, 26.182449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221252, -0.380827, 0.897785,
		0.666877, -0.730796, -0.145646,
		0.711563, 0.566488, 0.415655,
		35.332722, 28.989796, 26.307146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932884, 28.220350, 26.574461>,  <34.834625, 28.593254, 26.016188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932884, 28.220350, 26.574461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117546, 28.563946, 26.663019>,  <35.228344, 28.770103, 26.716154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117546, 28.563946, 26.663019>,  <34.932884, 28.220350, 26.574461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117546, 28.563946, 26.663019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221061, -0.130304, 0.966516,
		0.859075, -0.495135, 0.129734,
		0.461651, 0.858989, 0.221396,
		35.256042, 28.821642, 26.729439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373753, 28.135714, 27.227741>,  <34.932884, 28.220350, 26.574461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373753, 28.135714, 27.227741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.272758, 28.520933, 27.190254>,  <35.212162, 28.752066, 27.167761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.272758, 28.520933, 27.190254>,  <35.373753, 28.135714, 27.227741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272758, 28.520933, 27.190254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339307, 0.002584, 0.940672,
		0.906157, 0.269307, 0.326118,
		-0.252487, 0.963051, -0.093719,
		35.197014, 28.809849, 27.162138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593971, 28.552027, 27.844357>,  <35.373753, 28.135714, 27.227741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593971, 28.552027, 27.844357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313942, 28.803129, 27.708227>,  <35.145924, 28.953791, 27.626551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313942, 28.803129, 27.708227>,  <35.593971, 28.552027, 27.844357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313942, 28.803129, 27.708227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443269, -0.008399, 0.896349,
		0.559832, 0.778363, 0.284146,
		-0.700072, 0.627758, -0.340322,
		35.103920, 28.991457, 27.606131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210632, 28.697912, 28.174160>,  <35.593971, 28.552027, 27.844357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210632, 28.697912, 28.174160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484058, 28.546957, 28.424061>,  <36.648113, 28.456385, 28.574001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484058, 28.546957, 28.424061>,  <36.210632, 28.697912, 28.174160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484058, 28.546957, 28.424061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554396, -0.288287, -0.780728,
		0.474745, 0.880039, 0.012158,
		0.683566, -0.377387, 0.624753,
		36.689129, 28.433741, 28.611486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879665, 28.937662, 27.920105>,  <36.210632, 28.697912, 28.174160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879665, 28.937662, 27.920105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962193, 28.625380, 28.156048>,  <37.011707, 28.438011, 28.297613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962193, 28.625380, 28.156048>,  <36.879665, 28.937662, 27.920105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962193, 28.625380, 28.156048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526003, -0.419826, -0.739640,
		0.825078, 0.462868, 0.324036,
		0.206317, -0.780705, 0.589859,
		37.024086, 28.391169, 28.333006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560036, 28.776091, 27.943840>,  <36.879665, 28.937662, 27.920105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560036, 28.776091, 27.943840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.386929, 28.433123, 28.055222>,  <37.283062, 28.227341, 28.122051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.386929, 28.433123, 28.055222>,  <37.560036, 28.776091, 27.943840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386929, 28.433123, 28.055222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588338, -0.502657, -0.633399,
		0.683058, -0.110291, 0.721989,
		-0.432771, -0.857422, 0.278455,
		37.257095, 28.175896, 28.138758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112156, 28.265806, 28.073107>,  <37.560036, 28.776091, 27.943840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112156, 28.265806, 28.073107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785873, 28.041843, 28.014971>,  <37.590103, 27.907467, 27.980089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785873, 28.041843, 28.014971>,  <38.112156, 28.265806, 28.073107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785873, 28.041843, 28.014971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488189, -0.531546, -0.692193,
		0.310306, -0.635582, 0.706927,
		-0.815709, -0.559905, -0.145342,
		37.541161, 27.873873, 27.971369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218639, 27.527235, 28.038223>,  <38.112156, 28.265806, 28.073107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218639, 27.527235, 28.038223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873066, 27.538824, 27.837114>,  <37.665722, 27.545776, 27.716448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873066, 27.538824, 27.837114>,  <38.218639, 27.527235, 28.038223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873066, 27.538824, 27.837114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431087, -0.473583, -0.768038,
		-0.260355, -0.880273, 0.396656,
		-0.863933, 0.028970, -0.502774,
		37.613888, 27.547516, 27.686283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057739, 26.831612, 27.849815>,  <38.218639, 27.527235, 28.038223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057739, 26.831612, 27.849815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869751, 27.080299, 27.599188>,  <37.756958, 27.229511, 27.448811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869751, 27.080299, 27.599188>,  <38.057739, 26.831612, 27.849815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869751, 27.080299, 27.599188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438950, -0.451236, -0.776987,
		-0.765798, -0.640197, -0.060833,
		-0.469975, 0.621718, -0.626570,
		37.728760, 27.266815, 27.411217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912510, 26.379932, 27.272142>,  <38.057739, 26.831612, 27.849815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912510, 26.379932, 27.272142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857067, 26.751923, 27.135944>,  <37.823803, 26.975117, 27.054226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857067, 26.751923, 27.135944>,  <37.912510, 26.379932, 27.272142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857067, 26.751923, 27.135944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475684, -0.239042, -0.846513,
		-0.868628, -0.279298, -0.409241,
		-0.138603, 0.929974, -0.340496,
		37.815487, 27.030914, 27.033796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641006, 26.350372, 26.590900>,  <37.912510, 26.379932, 27.272142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641006, 26.350372, 26.590900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821003, 26.707058, 26.610308>,  <37.929001, 26.921070, 26.621952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821003, 26.707058, 26.610308>,  <37.641006, 26.350372, 26.590900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821003, 26.707058, 26.610308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490615, -0.201451, -0.847771,
		-0.746196, 0.405292, -0.528139,
		0.449988, 0.891716, 0.048520,
		37.956001, 26.974573, 26.624865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723385, 26.522640, 25.937513>,  <37.641006, 26.350372, 26.590900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723385, 26.522640, 25.937513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989922, 26.764261, 26.112377>,  <38.149845, 26.909233, 26.217297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989922, 26.764261, 26.112377>,  <37.723385, 26.522640, 25.937513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989922, 26.764261, 26.112377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594896, -0.077208, -0.800086,
		-0.449541, 0.793197, -0.410794,
		0.666342, 0.604051, 0.437161,
		38.189823, 26.945477, 26.243525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013813, 27.049274, 25.404285>,  <37.723385, 26.522640, 25.937513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013813, 27.049274, 25.404285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295277, 27.079069, 25.686935>,  <38.464153, 27.096947, 25.856525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295277, 27.079069, 25.686935>,  <38.013813, 27.049274, 25.404285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295277, 27.079069, 25.686935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709385, -0.016961, -0.704617,
		-0.040501, 0.997078, -0.064776,
		0.703657, 0.074488, 0.706625,
		38.506374, 27.101416, 25.898922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321415, 27.619602, 25.283409>,  <38.013813, 27.049274, 25.404285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321415, 27.619602, 25.283409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605469, 27.419878, 25.481962>,  <38.775902, 27.300043, 25.601095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605469, 27.419878, 25.481962>,  <38.321415, 27.619602, 25.283409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605469, 27.419878, 25.481962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604309, 0.070491, -0.793626,
		0.361277, 0.863550, 0.351797,
		0.710134, -0.499313, 0.496384,
		38.818508, 27.270084, 25.630877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994804, 27.919815, 25.161751>,  <38.321415, 27.619602, 25.283409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994804, 27.919815, 25.161751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.083858, 27.557907, 25.306982>,  <39.137291, 27.340763, 25.394121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.083858, 27.557907, 25.306982>,  <38.994804, 27.919815, 25.161751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083858, 27.557907, 25.306982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837950, -0.012751, -0.545597,
		0.498269, 0.425711, 0.755313,
		0.222636, -0.904769, 0.363079,
		39.150650, 27.286476, 25.415905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591808, 28.021791, 25.514057>,  <38.994804, 27.919815, 25.161751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591808, 28.021791, 25.514057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579762, 27.642124, 25.388729>,  <39.572533, 27.414324, 25.313532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579762, 27.642124, 25.388729>,  <39.591808, 28.021791, 25.514057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579762, 27.642124, 25.388729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841592, 0.145038, -0.520276,
		0.539274, -0.279358, 0.794445,
		-0.030119, -0.949170, -0.313320,
		39.570724, 27.357372, 25.294733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269947, 27.766150, 25.497698>,  <39.591808, 28.021791, 25.514057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269947, 27.766150, 25.497698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070393, 27.535912, 25.238529>,  <39.950661, 27.397768, 25.083029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070393, 27.535912, 25.238529>,  <40.269947, 27.766150, 25.497698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070393, 27.535912, 25.238529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682484, 0.199854, -0.703046,
		0.534160, -0.792936, 0.293130,
		-0.498888, -0.575595, -0.647920,
		39.920727, 27.363234, 25.044153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791542, 27.481640, 25.676088>,  <40.269947, 27.766150, 25.497698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791542, 27.481640, 25.676088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105179, 27.713013, 25.766083>,  <41.293362, 27.851837, 25.820080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105179, 27.713013, 25.766083>,  <40.791542, 27.481640, 25.676088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105179, 27.713013, 25.766083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393272, 0.182609, 0.901106,
		0.480145, -0.795028, 0.370663,
		0.784091, 0.578432, 0.224984,
		41.340405, 27.886541, 25.833578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018139, 27.284859, 26.458084>,  <40.791542, 27.481640, 25.676088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018139, 27.284859, 26.458084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.189941, 27.636108, 26.373772>,  <41.293022, 27.846857, 26.323185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.189941, 27.636108, 26.373772>,  <41.018139, 27.284859, 26.458084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189941, 27.636108, 26.373772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169733, 0.307743, 0.936208,
		0.886971, -0.366327, 0.281223,
		0.429502, 0.878122, -0.210781,
		41.318790, 27.899546, 26.310537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368469, 27.348143, 26.948856>,  <41.018139, 27.284859, 26.458084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368469, 27.348143, 26.948856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.330227, 27.714382, 26.792633>,  <41.307281, 27.934126, 26.698898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.330227, 27.714382, 26.792633>,  <41.368469, 27.348143, 26.948856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330227, 27.714382, 26.792633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162124, 0.372794, 0.913641,
		0.982127, 0.150672, 0.112798,
		-0.095610, 0.915599, -0.390559,
		41.301544, 27.989061, 26.675465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788200, 27.843113, 27.362143>,  <41.368469, 27.348143, 26.948856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788200, 27.843113, 27.362143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.504642, 28.065659, 27.188742>,  <41.334507, 28.199186, 27.084702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.504642, 28.065659, 27.188742>,  <41.788200, 27.843113, 27.362143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504642, 28.065659, 27.188742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433031, 0.141829, 0.890151,
		0.556732, 0.818744, 0.140381,
		-0.708896, 0.556365, -0.433502,
		41.291973, 28.232569, 27.058691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788612, 28.336933, 27.822996>,  <41.788200, 27.843113, 27.362143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788612, 28.336933, 27.822996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.454201, 28.364676, 27.605286>,  <41.253551, 28.381321, 27.474659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.454201, 28.364676, 27.605286>,  <41.788612, 28.336933, 27.822996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454201, 28.364676, 27.605286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538945, 0.082217, 0.838319,
		0.102891, 0.994198, -0.031357,
		-0.836033, 0.069356, -0.544278,
		41.203392, 28.385483, 27.442003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383438, 28.888380, 28.150684>,  <41.788612, 28.336933, 27.822996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383438, 28.888380, 28.150684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131733, 28.684526, 27.915977>,  <40.980709, 28.562214, 27.775152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131733, 28.684526, 27.915977>,  <41.383438, 28.888380, 28.150684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131733, 28.684526, 27.915977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723650, 0.108834, 0.681533,
		-0.283472, 0.853480, -0.437282,
		-0.629266, -0.509634, -0.586769,
		40.942955, 28.531635, 27.739946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802757, 29.277206, 28.082262>,  <41.383438, 28.888380, 28.150684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802757, 29.277206, 28.082262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.651775, 28.914835, 28.005503>,  <40.561188, 28.697412, 27.959446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.651775, 28.914835, 28.005503>,  <40.802757, 29.277206, 28.082262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651775, 28.914835, 28.005503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723838, 0.159385, 0.671308,
		-0.577571, 0.392291, -0.715905,
		-0.377452, -0.905927, -0.191899,
		40.538540, 28.643057, 27.947933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145435, 29.473198, 28.164318>,  <40.802757, 29.277206, 28.082262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145435, 29.473198, 28.164318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133694, 29.077864, 28.224091>,  <40.126648, 28.840662, 28.259954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133694, 29.077864, 28.224091>,  <40.145435, 29.473198, 28.164318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133694, 29.077864, 28.224091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683686, 0.128906, 0.718301,
		-0.729186, -0.081081, -0.679495,
		-0.029351, -0.988337, 0.149430,
		40.124889, 28.781363, 28.268919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517467, 29.226444, 28.229736>,  <40.145435, 29.473198, 28.164318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517467, 29.226444, 28.229736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736034, 28.981226, 28.457983>,  <39.867172, 28.834095, 28.594931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736034, 28.981226, 28.457983>,  <39.517467, 29.226444, 28.229736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736034, 28.981226, 28.457983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678233, 0.075824, 0.730925,
		-0.491358, -0.786400, -0.374357,
		0.546414, -0.613047, 0.570619,
		39.899960, 28.797312, 28.629169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996361, 28.840113, 28.686663>,  <39.517467, 29.226444, 28.229736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996361, 28.840113, 28.686663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354164, 28.802553, 28.861492>,  <39.568848, 28.780018, 28.966391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354164, 28.802553, 28.861492>,  <38.996361, 28.840113, 28.686663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354164, 28.802553, 28.861492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441640, -0.034020, 0.896547,
		-0.069319, -0.995000, -0.071903,
		0.894511, -0.093903, 0.437074,
		39.622517, 28.774384, 28.992615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863228, 28.382338, 29.198635>,  <38.996361, 28.840113, 28.686663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863228, 28.382338, 29.198635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215721, 28.529200, 29.317715>,  <39.427216, 28.617317, 29.389162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215721, 28.529200, 29.317715>,  <38.863228, 28.382338, 29.198635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215721, 28.529200, 29.317715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319286, -0.002045, 0.947656,
		0.348544, -0.930158, 0.115425,
		0.881234, 0.367154, 0.297699,
		39.480091, 28.639345, 29.407024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971424, 28.089529, 29.830198>,  <38.863228, 28.382338, 29.198635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971424, 28.089529, 29.830198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246731, 28.378937, 29.851397>,  <39.411915, 28.552582, 29.864117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246731, 28.378937, 29.851397>,  <38.971424, 28.089529, 29.830198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246731, 28.378937, 29.851397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060594, -0.015464, 0.998043,
		0.722923, -0.690131, 0.033198,
		0.688266, 0.723520, 0.052997,
		39.453209, 28.595993, 29.867296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445057, 27.914991, 30.351706>,  <38.971424, 28.089529, 29.830198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445057, 27.914991, 30.351706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468468, 28.311897, 30.307919>,  <39.482513, 28.550041, 30.281647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468468, 28.311897, 30.307919>,  <39.445057, 27.914991, 30.351706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468468, 28.311897, 30.307919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055335, 0.112711, 0.992086,
		0.996751, -0.052008, 0.061504,
		0.058529, 0.992266, -0.109467,
		39.486027, 28.609577, 30.275078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860443, 28.089174, 30.780872>,  <39.445057, 27.914991, 30.351706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860443, 28.089174, 30.780872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696953, 28.446404, 30.705650>,  <39.598858, 28.660742, 30.660517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696953, 28.446404, 30.705650>,  <39.860443, 28.089174, 30.780872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696953, 28.446404, 30.705650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158160, 0.133624, 0.978330,
		0.898849, 0.429611, 0.086633,
		-0.408725, 0.893073, -0.188055,
		39.574337, 28.714325, 30.649233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.782898, 30.589205, 26.185932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.430237, 30.663279, 26.012316>,  <43.218639, 30.707724, 25.908146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.430237, 30.663279, 26.012316>,  <43.782898, 30.589205, 26.185932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430237, 30.663279, 26.012316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338067, -0.393853, -0.854746,
		-0.329232, -0.900326, 0.284638,
		-0.881656, 0.185183, -0.434039,
		43.165741, 30.718834, 25.882103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563362, 29.941200, 25.793192>,  <43.782898, 30.589205, 26.185932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563362, 29.941200, 25.793192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.383911, 30.247259, 25.608463>,  <43.276241, 30.430895, 25.497625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.383911, 30.247259, 25.608463>,  <43.563362, 29.941200, 25.793192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383911, 30.247259, 25.608463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305384, -0.354398, -0.883823,
		-0.839926, -0.537540, -0.074673,
		-0.448626, 0.765150, -0.461824,
		43.249325, 30.476805, 25.469915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417313, 29.599073, 25.140787>,  <43.563362, 29.941200, 25.793192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417313, 29.599073, 25.140787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.404896, 29.998302, 25.119299>,  <43.397446, 30.237841, 25.106405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.404896, 29.998302, 25.119299>,  <43.417313, 29.599073, 25.140787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404896, 29.998302, 25.119299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525325, -0.029431, -0.850392,
		-0.850335, -0.054622, -0.523399,
		-0.031046, 0.998073, -0.053721,
		43.395580, 30.297724, 25.103182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273926, 29.681536, 24.468937>,  <43.417313, 29.599073, 25.140787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273926, 29.681536, 24.468937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.432697, 30.029119, 24.587162>,  <43.527962, 30.237669, 24.658098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.432697, 30.029119, 24.587162>,  <43.273926, 29.681536, 24.468937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432697, 30.029119, 24.587162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412929, 0.118528, -0.903018,
		-0.819717, 0.480483, -0.311770,
		0.396932, 0.868957, 0.295565,
		43.551777, 30.289806, 24.675831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974609, 30.207779, 23.992018>,  <43.273926, 29.681536, 24.468937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974609, 30.207779, 23.992018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.321690, 30.351437, 24.129490>,  <43.529938, 30.437632, 24.211973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.321690, 30.351437, 24.129490>,  <42.974609, 30.207779, 23.992018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321690, 30.351437, 24.129490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308489, 0.153092, -0.938828,
		-0.389791, 0.920640, 0.022045,
		0.867697, 0.359146, 0.343681,
		43.581997, 30.459181, 24.232594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077553, 30.752705, 23.578560>,  <42.974609, 30.207779, 23.992018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077553, 30.752705, 23.578560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434444, 30.664965, 23.736456>,  <43.648579, 30.612322, 23.831194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434444, 30.664965, 23.736456>,  <43.077553, 30.752705, 23.578560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434444, 30.664965, 23.736456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439726, 0.222955, -0.870018,
		0.102828, 0.949830, 0.295379,
		0.892226, -0.219349, 0.394739,
		43.702114, 30.599159, 23.854877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545139, 31.217007, 23.274134>,  <43.077553, 30.752705, 23.578560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545139, 31.217007, 23.274134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.797298, 30.945944, 23.425594>,  <43.948593, 30.783306, 23.516470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.797298, 30.945944, 23.425594>,  <43.545139, 31.217007, 23.274134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797298, 30.945944, 23.425594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543557, 0.037098, -0.838552,
		0.554203, 0.734442, 0.391732,
		0.630400, -0.677657, 0.378651,
		43.986420, 30.742647, 23.539190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263611, 31.483591, 23.203897>,  <43.545139, 31.217007, 23.274134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263611, 31.483591, 23.203897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.295601, 31.086849, 23.243559>,  <44.314796, 30.848804, 23.267357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.295601, 31.086849, 23.243559>,  <44.263611, 31.483591, 23.203897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295601, 31.086849, 23.243559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685369, -0.017514, -0.727985,
		0.723791, 0.126179, 0.678384,
		0.079975, -0.991853, 0.099156,
		44.319592, 30.789293, 23.273306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906498, 31.453667, 22.989489>,  <44.263611, 31.483591, 23.203897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906498, 31.453667, 22.989489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.764992, 31.079620, 22.981474>,  <44.680088, 30.855192, 22.976665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.764992, 31.079620, 22.981474>,  <44.906498, 31.453667, 22.989489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764992, 31.079620, 22.981474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471096, -0.159637, -0.867516,
		0.808032, -0.316339, 0.497005,
		-0.353769, -0.935118, -0.020034,
		44.658859, 30.799086, 22.975464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473858, 30.920547, 22.755424>,  <44.906498, 31.453667, 22.989489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473858, 30.920547, 22.755424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123577, 30.733871, 22.705883>,  <44.913406, 30.621866, 22.676159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.123577, 30.733871, 22.705883>,  <45.473858, 30.920547, 22.755424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123577, 30.733871, 22.705883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282698, -0.287609, -0.915075,
		0.391437, -0.836349, 0.383794,
		-0.875705, -0.466692, -0.123853,
		44.860867, 30.593864, 22.668728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644295, 30.292454, 22.494354>,  <45.473858, 30.920547, 22.755424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644295, 30.292454, 22.494354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.255444, 30.324957, 22.406389>,  <45.022133, 30.344460, 22.353611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.255444, 30.324957, 22.406389>,  <45.644295, 30.292454, 22.494354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255444, 30.324957, 22.406389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180158, -0.341328, -0.922517,
		-0.150024, -0.936425, 0.317176,
		-0.972129, 0.081258, -0.219912,
		44.963806, 30.349335, 22.340416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522030, 29.577646, 22.268507>,  <45.644295, 30.292454, 22.494354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522030, 29.577646, 22.268507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.271736, 29.871313, 22.163086>,  <45.121559, 30.047514, 22.099833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.271736, 29.871313, 22.163086>,  <45.522030, 29.577646, 22.268507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271736, 29.871313, 22.163086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075554, -0.279239, -0.957245,
		-0.776371, -0.618890, 0.119259,
		-0.625731, 0.734167, -0.263552,
		45.084015, 30.091562, 22.084021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082626, 29.232014, 21.865097>,  <45.522030, 29.577646, 22.268507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082626, 29.232014, 21.865097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.084404, 29.622028, 21.776297>,  <45.085472, 29.856037, 21.723017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.084404, 29.622028, 21.776297>,  <45.082626, 29.232014, 21.865097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084404, 29.622028, 21.776297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094289, -0.221425, -0.970608,
		-0.995535, -0.016614, -0.092920,
		0.004449, 0.975036, -0.222003,
		45.085739, 29.914539, 21.709696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945415, 28.661993, 21.388805>,  <45.082626, 29.232014, 21.865097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945415, 28.661993, 21.388805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767246, 28.407976, 21.136356>,  <44.660343, 28.255566, 20.984886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767246, 28.407976, 21.136356>,  <44.945415, 28.661993, 21.388805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767246, 28.407976, 21.136356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450469, -0.450233, 0.770953,
		-0.773740, 0.627704, -0.085521,
		-0.445426, -0.635041, -0.631125,
		44.633617, 28.217464, 20.947020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151314, 28.682331, 21.452856>,  <44.945415, 28.661993, 21.388805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151314, 28.682331, 21.452856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.302807, 28.326157, 21.351908>,  <44.393703, 28.112452, 21.291338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.302807, 28.326157, 21.351908>,  <44.151314, 28.682331, 21.452856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302807, 28.326157, 21.351908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506092, -0.427555, 0.749045,
		-0.774877, -0.155963, -0.612569,
		0.378730, -0.890434, -0.252371,
		44.416428, 28.059027, 21.276196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623775, 28.142588, 21.543596>,  <44.151314, 28.682331, 21.452856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623775, 28.142588, 21.543596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.952000, 27.914194, 21.553894>,  <44.148933, 27.777159, 21.560072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.952000, 27.914194, 21.553894>,  <43.623775, 28.142588, 21.543596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952000, 27.914194, 21.553894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401356, -0.543550, 0.737202,
		-0.406934, -0.615252, -0.675181,
		0.820560, -0.570981, 0.025746,
		44.198166, 27.742899, 21.561617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423298, 27.400740, 21.482130>,  <43.623775, 28.142588, 21.543596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423298, 27.400740, 21.482130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.773357, 27.442533, 21.671104>,  <43.983395, 27.467609, 21.784489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.773357, 27.442533, 21.671104>,  <43.423298, 27.400740, 21.482130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773357, 27.442533, 21.671104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326053, -0.594073, 0.735368,
		0.357496, -0.797596, -0.485836,
		0.875149, 0.104483, 0.472438,
		44.035904, 27.473879, 21.812836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648624, 26.763220, 21.747663>,  <43.423298, 27.400740, 21.482130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648624, 26.763220, 21.747663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.815422, 27.041346, 21.981810>,  <43.915501, 27.208221, 22.122297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.815422, 27.041346, 21.981810>,  <43.648624, 26.763220, 21.747663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815422, 27.041346, 21.981810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368546, -0.459362, 0.808183,
		0.830835, -0.552745, 0.064701,
		0.416998, 0.695313, 0.585366,
		43.940521, 27.249939, 22.157419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852989, 26.379200, 22.268707>,  <43.648624, 26.763220, 21.747663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852989, 26.379200, 22.268707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.893017, 26.752653, 22.406294>,  <43.917034, 26.976725, 22.488846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.893017, 26.752653, 22.406294>,  <43.852989, 26.379200, 22.268707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893017, 26.752653, 22.406294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363266, -0.287555, 0.886200,
		0.926296, -0.213631, 0.310383,
		0.100067, 0.933635, 0.343966,
		43.923038, 27.032743, 22.509483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811954, 26.314579, 23.031435>,  <43.852989, 26.379200, 22.268707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811954, 26.314579, 23.031435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.754768, 26.710001, 23.012186>,  <43.720455, 26.947254, 23.000637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.754768, 26.710001, 23.012186>,  <43.811954, 26.314579, 23.031435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754768, 26.710001, 23.012186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387815, -0.011222, 0.921669,
		0.910582, 0.150430, 0.384982,
		-0.142967, 0.988557, -0.048120,
		43.711880, 27.006569, 22.997749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835114, 26.518131, 23.749538>,  <43.811954, 26.314579, 23.031435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835114, 26.518131, 23.749538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.646667, 26.820017, 23.566912>,  <43.533600, 27.001148, 23.457336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.646667, 26.820017, 23.566912>,  <43.835114, 26.518131, 23.749538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646667, 26.820017, 23.566912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557491, 0.146350, 0.817181,
		0.683557, 0.639522, 0.351798,
		-0.471120, 0.754714, -0.456566,
		43.505333, 27.046431, 23.429941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938076, 27.069420, 24.200205>,  <43.835114, 26.518131, 23.749538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938076, 27.069420, 24.200205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.617443, 27.153397, 23.976278>,  <43.425064, 27.203783, 23.841923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.617443, 27.153397, 23.976278>,  <43.938076, 27.069420, 24.200205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617443, 27.153397, 23.976278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530702, 0.181395, 0.827920,
		0.275364, 0.960739, -0.033985,
		-0.801580, 0.209944, -0.559815,
		43.376968, 27.216379, 23.808334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665974, 27.647085, 24.499201>,  <43.938076, 27.069420, 24.200205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665974, 27.647085, 24.499201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346859, 27.524199, 24.291679>,  <43.155392, 27.450466, 24.167166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346859, 27.524199, 24.291679>,  <43.665974, 27.647085, 24.499201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346859, 27.524199, 24.291679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574918, 0.128327, 0.808085,
		-0.181679, 0.942948, -0.279001,
		-0.797786, -0.307215, -0.518803,
		43.107525, 27.432034, 24.136038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257828, 28.168722, 24.539230>,  <43.665974, 27.647085, 24.499201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257828, 28.168722, 24.539230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.013649, 27.860952, 24.464031>,  <42.867142, 27.676291, 24.418913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.013649, 27.860952, 24.464031>,  <43.257828, 28.168722, 24.539230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013649, 27.860952, 24.464031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581629, 0.274342, 0.765796,
		-0.537648, 0.576820, -0.614990,
		-0.610444, -0.769425, -0.187996,
		42.830517, 27.630125, 24.407633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656429, 28.436930, 24.622929>,  <43.257828, 28.168722, 24.539230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656429, 28.436930, 24.622929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.539158, 28.054506, 24.622135>,  <42.468796, 27.825052, 24.621658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.539158, 28.054506, 24.622135>,  <42.656429, 28.436930, 24.622929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539158, 28.054506, 24.622135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720518, 0.219582, 0.657752,
		-0.628412, 0.194268, -0.753232,
		-0.293177, -0.956056, -0.001986,
		42.451206, 27.767689, 24.621540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946312, 28.477566, 24.543093>,  <42.656429, 28.436930, 24.622929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946312, 28.477566, 24.543093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.036507, 28.125854, 24.710915>,  <42.090622, 27.914827, 24.811607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.036507, 28.125854, 24.710915>,  <41.946312, 28.477566, 24.543093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036507, 28.125854, 24.710915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676127, 0.168822, 0.717183,
		-0.701433, -0.445389, -0.556436,
		0.225487, -0.879277, 0.419557,
		42.104153, 27.862072, 24.836782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333508, 28.222795, 24.639711>,  <41.946312, 28.477566, 24.543093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333508, 28.222795, 24.639711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.569363, 28.011110, 24.883762>,  <41.710876, 27.884098, 25.030193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.569363, 28.011110, 24.883762>,  <41.333508, 28.222795, 24.639711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569363, 28.011110, 24.883762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590273, 0.233246, 0.772770,
		-0.551271, -0.815799, -0.174849,
		0.589642, -0.529215, 0.610126,
		41.746254, 27.852346, 25.066801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844925, 27.991051, 25.096479>,  <41.333508, 28.222795, 24.639711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844925, 27.991051, 25.096479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195255, 27.946590, 25.284342>,  <41.405453, 27.919914, 25.397058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195255, 27.946590, 25.284342>,  <40.844925, 27.991051, 25.096479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195255, 27.946590, 25.284342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440892, 0.211586, 0.872265,
		-0.196325, -0.971018, 0.136306,
		0.875826, -0.111151, 0.469654,
		41.458004, 27.913244, 25.425238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964325, 27.240444, 24.904320>,  <40.844925, 27.991051, 25.096479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964325, 27.240444, 24.904320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.591686, 27.224846, 24.759766>,  <40.368103, 27.215487, 24.673033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.591686, 27.224846, 24.759766>,  <40.964325, 27.240444, 24.904320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591686, 27.224846, 24.759766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360997, 0.016794, -0.932416,
		0.042443, -0.999098, -0.001562,
		-0.931601, -0.039010, -0.361384,
		40.312206, 27.213146, 24.651350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961529, 26.697794, 24.353712>,  <40.964325, 27.240444, 24.904320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961529, 26.697794, 24.353712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645866, 26.935095, 24.290110>,  <40.456470, 27.077477, 24.251947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645866, 26.935095, 24.290110>,  <40.961529, 26.697794, 24.353712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645866, 26.935095, 24.290110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261480, 0.090256, -0.960980,
		-0.555754, -0.799940, -0.226350,
		-0.789156, 0.593254, -0.159008,
		40.409119, 27.113071, 24.242407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809669, 26.531399, 23.659756>,  <40.961529, 26.697794, 24.353712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809669, 26.531399, 23.659756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585793, 26.855772, 23.728027>,  <40.451466, 27.050396, 23.768990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585793, 26.855772, 23.728027>,  <40.809669, 26.531399, 23.659756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585793, 26.855772, 23.728027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117382, 0.281460, -0.952366,
		-0.820345, -0.512997, -0.252719,
		-0.559691, 0.810934, 0.170678,
		40.417885, 27.099052, 23.779230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205032, 26.482527, 23.137665>,  <40.809669, 26.531399, 23.659756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205032, 26.482527, 23.137665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276649, 26.856007, 23.261698>,  <40.319618, 27.080095, 23.336117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276649, 26.856007, 23.261698>,  <40.205032, 26.482527, 23.137665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276649, 26.856007, 23.261698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142590, 0.287219, -0.947192,
		-0.973454, 0.213800, -0.081713,
		0.179040, 0.933699, 0.310081,
		40.330360, 27.136116, 23.354721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965111, 26.853115, 22.611715>,  <40.205032, 26.482527, 23.137665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965111, 26.853115, 22.611715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.186058, 27.123270, 22.807161>,  <40.318626, 27.285364, 22.924429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.186058, 27.123270, 22.807161>,  <39.965111, 26.853115, 22.611715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186058, 27.123270, 22.807161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309162, 0.378368, -0.872500,
		-0.774153, 0.632999, 0.000192,
		0.552364, 0.675389, 0.488613,
		40.351768, 27.325888, 22.953745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796558, 27.457502, 22.300541>,  <39.965111, 26.853115, 22.611715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796558, 27.457502, 22.300541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134991, 27.549353, 22.492964>,  <40.338051, 27.604464, 22.608418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134991, 27.549353, 22.492964>,  <39.796558, 27.457502, 22.300541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134991, 27.549353, 22.492964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369744, 0.397258, -0.839926,
		-0.383973, 0.888515, 0.251210,
		0.846082, 0.229626, 0.481059,
		40.388817, 27.618240, 22.637281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985981, 28.104698, 22.037971>,  <39.796558, 27.457502, 22.300541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985981, 28.104698, 22.037971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.299797, 27.909595, 22.191118>,  <40.488087, 27.792534, 22.283007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.299797, 27.909595, 22.191118>,  <39.985981, 28.104698, 22.037971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299797, 27.909595, 22.191118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570338, 0.325323, -0.754241,
		0.243331, 0.810097, 0.533416,
		0.784541, -0.487757, 0.382868,
		40.535160, 27.763268, 22.305979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654068, 28.673702, 22.040213>,  <39.985981, 28.104698, 22.037971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654068, 28.673702, 22.040213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.483044, 28.853838, 21.726681>,  <39.380428, 28.961920, 21.538561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.483044, 28.853838, 21.726681>,  <39.654068, 28.673702, 22.040213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483044, 28.853838, 21.726681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846300, 0.105378, 0.522180,
		0.317756, 0.886618, 0.336065,
		-0.427560, 0.450337, -0.783829,
		39.354774, 28.988939, 21.491531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257896, 29.283258, 22.278473>,  <39.654068, 28.673702, 22.040213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257896, 29.283258, 22.278473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092625, 29.270988, 21.914419>,  <38.993462, 29.263626, 21.695988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092625, 29.270988, 21.914419>,  <39.257896, 29.283258, 22.278473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092625, 29.270988, 21.914419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906968, 0.103657, 0.408245,
		0.081819, 0.994140, -0.070650,
		-0.413176, -0.030675, -0.910135,
		38.968674, 29.261786, 21.641378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859982, 29.903376, 22.167023>,  <39.257896, 29.283258, 22.278473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859982, 29.903376, 22.167023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721386, 29.608143, 21.935444>,  <38.638229, 29.431004, 21.796497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721386, 29.608143, 21.935444>,  <38.859982, 29.903376, 22.167023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721386, 29.608143, 21.935444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858951, 0.001578, 0.512056,
		-0.377026, 0.674708, -0.634524,
		-0.346489, -0.738083, -0.578946,
		38.617439, 29.386719, 21.761761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257046, 30.145071, 21.891876>,  <38.859982, 29.903376, 22.167023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257046, 30.145071, 21.891876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.241982, 29.745417, 21.898935>,  <38.232944, 29.505625, 21.903172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.241982, 29.745417, 21.898935>,  <38.257046, 30.145071, 21.891876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241982, 29.745417, 21.898935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850151, 0.041313, 0.524916,
		-0.525191, 0.004764, -0.850971,
		-0.037657, -0.999135, 0.017647,
		38.230686, 29.445677, 21.904230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507706, 29.976324, 21.756643>,  <38.257046, 30.145071, 21.891876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507706, 29.976324, 21.756643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638180, 29.629856, 21.908091>,  <37.716465, 29.421976, 21.998959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638180, 29.629856, 21.908091>,  <37.507706, 29.976324, 21.756643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638180, 29.629856, 21.908091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817900, -0.057778, 0.572453,
		-0.473966, -0.496397, -0.727287,
		0.326185, -0.866171, 0.378618,
		37.736034, 29.370005, 22.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898712, 29.489223, 21.747587>,  <37.507706, 29.976324, 21.756643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898712, 29.489223, 21.747587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149200, 29.343464, 22.023285>,  <37.299496, 29.256008, 22.188704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149200, 29.343464, 22.023285>,  <36.898712, 29.489223, 21.747587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149200, 29.343464, 22.023285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773172, -0.176591, 0.609115,
		-0.100245, -0.914348, -0.392326,
		0.626223, -0.364396, 0.689245,
		37.337067, 29.234144, 22.230059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577633, 28.914227, 21.944324>,  <36.898712, 29.489223, 21.747587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577633, 28.914227, 21.944324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835648, 28.993565, 22.239510>,  <36.990456, 29.041168, 22.416620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835648, 28.993565, 22.239510>,  <36.577633, 28.914227, 21.944324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835648, 28.993565, 22.239510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736786, -0.094708, 0.669460,
		0.202677, -0.975545, 0.085050,
		0.645033, 0.198348, 0.737963,
		37.029160, 29.053068, 22.460899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.964344, 32.397495, 21.040276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.128826, 32.100697, 21.252068>,  <43.227516, 31.922617, 21.379143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.128826, 32.100697, 21.252068>,  <42.964344, 32.397495, 21.040276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128826, 32.100697, 21.252068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591711, 0.224572, 0.774239,
		-0.693391, -0.631668, -0.346704,
		0.411202, -0.741999, 0.529481,
		43.252186, 31.878098, 21.410912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402073, 31.897970, 21.323008>,  <42.964344, 32.397495, 21.040276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402073, 31.897970, 21.323008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.720844, 31.879522, 21.563934>,  <42.912106, 31.868454, 21.708490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.720844, 31.879522, 21.563934>,  <42.402073, 31.897970, 21.323008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720844, 31.879522, 21.563934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589218, 0.160461, 0.791880,
		-0.133169, -0.985964, 0.100701,
		0.796924, -0.046120, 0.602316,
		42.959923, 31.865686, 21.744629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211830, 31.598021, 21.957964>,  <42.402073, 31.897970, 21.323008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211830, 31.598021, 21.957964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.547188, 31.798174, 22.044418>,  <42.748402, 31.918266, 22.096291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.547188, 31.798174, 22.044418>,  <42.211830, 31.598021, 21.957964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547188, 31.798174, 22.044418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431252, 0.366438, 0.824466,
		0.333347, -0.784436, 0.523010,
		0.838392, 0.500383, 0.216139,
		42.798706, 31.948288, 22.109261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257431, 31.526546, 22.746065>,  <42.211830, 31.598021, 21.957964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257431, 31.526546, 22.746065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457981, 31.847757, 22.617208>,  <42.578312, 32.040485, 22.539894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457981, 31.847757, 22.617208>,  <42.257431, 31.526546, 22.746065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457981, 31.847757, 22.617208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237420, 0.485713, 0.841258,
		0.832020, -0.345301, 0.434178,
		0.501373, 0.803025, -0.322141,
		42.608395, 32.088665, 22.520567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559933, 31.732832, 23.397882>,  <42.257431, 31.526546, 22.746065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559933, 31.732832, 23.397882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561169, 32.045826, 23.148817>,  <42.561913, 32.233624, 22.999378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561169, 32.045826, 23.148817>,  <42.559933, 31.732832, 23.397882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561169, 32.045826, 23.148817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256299, 0.602487, 0.755857,
		0.966592, 0.157249, 0.202415,
		0.003094, 0.782484, -0.622662,
		42.562096, 32.280571, 22.962019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878822, 32.262024, 23.778576>,  <42.559933, 31.732832, 23.397882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878822, 32.262024, 23.778576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.683369, 32.445705, 23.481829>,  <42.566097, 32.555912, 23.303780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.683369, 32.445705, 23.481829>,  <42.878822, 32.262024, 23.778576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683369, 32.445705, 23.481829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450615, 0.595286, 0.665267,
		0.747116, 0.659370, -0.083954,
		-0.488634, 0.459201, -0.741870,
		42.536777, 32.583466, 23.259268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899780, 32.914433, 23.973204>,  <42.878822, 32.262024, 23.778576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899780, 32.914433, 23.973204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.598824, 32.896336, 23.710340>,  <42.418247, 32.885479, 23.552622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.598824, 32.896336, 23.710340>,  <42.899780, 32.914433, 23.973204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598824, 32.896336, 23.710340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608480, 0.429851, 0.667068,
		0.252300, 0.901766, -0.350946,
		-0.752394, -0.045242, -0.657158,
		42.373104, 32.882763, 23.513193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643894, 33.582951, 24.048023>,  <42.899780, 32.914433, 23.973204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643894, 33.582951, 24.048023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.353916, 33.353329, 23.895748>,  <42.179932, 33.215557, 23.804382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.353916, 33.353329, 23.895748>,  <42.643894, 33.582951, 24.048023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353916, 33.353329, 23.895748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635597, 0.344482, 0.690904,
		-0.265476, 0.742829, -0.614595,
		-0.724941, -0.574054, -0.380688,
		42.136433, 33.181114, 23.781542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053017, 34.003948, 23.881851>,  <42.643894, 33.582951, 24.048023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053017, 34.003948, 23.881851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930126, 33.629848, 23.952190>,  <41.856392, 33.405388, 23.994394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930126, 33.629848, 23.952190>,  <42.053017, 34.003948, 23.881851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930126, 33.629848, 23.952190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629930, 0.338370, 0.699067,
		-0.713303, 0.103998, -0.693097,
		-0.307225, -0.935249, 0.175849,
		41.837959, 33.349274, 24.004946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323704, 34.112583, 23.910360>,  <42.053017, 34.003948, 23.881851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323704, 34.112583, 23.910360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.422977, 33.757370, 24.065180>,  <41.482540, 33.544243, 24.158072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.422977, 33.757370, 24.065180>,  <41.323704, 34.112583, 23.910360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422977, 33.757370, 24.065180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640399, 0.149384, 0.753375,
		-0.726839, -0.434841, -0.531619,
		0.248183, -0.888030, 0.387050,
		41.497433, 33.490959, 24.181295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712677, 33.876305, 24.090916>,  <41.323704, 34.112583, 23.910360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712677, 33.876305, 24.090916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.960781, 33.634708, 24.291107>,  <41.109642, 33.489750, 24.411222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.960781, 33.634708, 24.291107>,  <40.712677, 33.876305, 24.090916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960781, 33.634708, 24.291107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659304, -0.055759, 0.749806,
		-0.424967, -0.795041, -0.432796,
		0.620259, -0.603987, 0.500478,
		41.146858, 33.453514, 24.441250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266842, 33.282478, 24.355303>,  <40.712677, 33.876305, 24.090916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266842, 33.282478, 24.355303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.589855, 33.308498, 24.589792>,  <40.783665, 33.324112, 24.730486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.589855, 33.308498, 24.589792>,  <40.266842, 33.282478, 24.355303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589855, 33.308498, 24.589792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589807, 0.082421, 0.803327,
		0.003935, -0.994473, 0.104922,
		0.807535, 0.065045, 0.586223,
		40.832115, 33.328014, 24.765659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944164, 32.658062, 24.062061>,  <40.266842, 33.282478, 24.355303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944164, 32.658062, 24.062061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.573479, 32.607349, 23.920568>,  <39.351067, 32.576923, 23.835672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.573479, 32.607349, 23.920568>,  <39.944164, 32.658062, 24.062061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573479, 32.607349, 23.920568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357123, -0.004335, -0.934047,
		0.116884, -0.991921, 0.049293,
		-0.926715, -0.126779, -0.353731,
		39.295464, 32.569317, 23.814449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919468, 32.021770, 23.738127>,  <39.944164, 32.658062, 24.062061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919468, 32.021770, 23.738127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.648129, 32.270836, 23.582109>,  <39.485325, 32.420277, 23.488499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.648129, 32.270836, 23.582109>,  <39.919468, 32.021770, 23.738127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648129, 32.270836, 23.582109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341281, -0.203092, -0.917759,
		-0.650670, -0.755674, -0.074737,
		-0.678348, 0.622664, -0.390043,
		39.444626, 32.457634, 23.465097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404221, 31.655710, 23.425333>,  <39.919468, 32.021770, 23.738127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404221, 31.655710, 23.425333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403305, 32.015839, 23.251245>,  <39.402756, 32.231915, 23.146793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403305, 32.015839, 23.251245>,  <39.404221, 31.655710, 23.425333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403305, 32.015839, 23.251245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171337, -0.428433, -0.887180,
		-0.985210, -0.076601, -0.153277,
		-0.002290, 0.900321, -0.435221,
		39.402618, 32.285934, 23.120680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148102, 31.499731, 22.835060>,  <39.404221, 31.655710, 23.425333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148102, 31.499731, 22.835060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.285404, 31.862757, 22.738310>,  <39.367786, 32.080570, 22.680260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.285404, 31.862757, 22.738310>,  <39.148102, 31.499731, 22.835060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285404, 31.862757, 22.738310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267734, -0.341385, -0.900986,
		-0.900274, 0.244511, -0.360168,
		0.343257, 0.907563, -0.241876,
		39.388382, 32.135025, 22.665747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889050, 31.541395, 22.145924>,  <39.148102, 31.499731, 22.835060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889050, 31.541395, 22.145924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.199379, 31.776976, 22.236462>,  <39.385578, 31.918324, 22.290785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.199379, 31.776976, 22.236462>,  <38.889050, 31.541395, 22.145924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199379, 31.776976, 22.236462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427701, -0.227167, -0.874910,
		-0.463862, 0.775585, -0.428137,
		0.775825, 0.588952, 0.226344,
		39.432125, 31.953661, 22.304365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058613, 31.897545, 21.456732>,  <38.889050, 31.541395, 22.145924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058613, 31.897545, 21.456732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377670, 31.961739, 21.689289>,  <39.569103, 32.000256, 21.828823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377670, 31.961739, 21.689289>,  <39.058613, 31.897545, 21.456732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377670, 31.961739, 21.689289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573228, 0.098058, -0.813507,
		-0.187563, 0.982156, -0.013778,
		0.797640, 0.160482, 0.581392,
		39.616962, 32.009884, 21.863707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389217, 32.451172, 21.132895>,  <39.058613, 31.897545, 21.456732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389217, 32.451172, 21.132895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.665115, 32.268272, 21.357458>,  <39.830654, 32.158535, 21.492197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.665115, 32.268272, 21.357458>,  <39.389217, 32.451172, 21.132895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665115, 32.268272, 21.357458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636589, 0.013538, -0.771084,
		0.344973, 0.889238, 0.300414,
		0.689745, -0.457244, 0.561409,
		39.872040, 32.131100, 21.525881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988884, 32.816040, 20.979506>,  <39.389217, 32.451172, 21.132895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988884, 32.816040, 20.979506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143852, 32.490582, 21.152889>,  <40.236832, 32.295307, 21.256920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143852, 32.490582, 21.152889>,  <39.988884, 32.816040, 20.979506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143852, 32.490582, 21.152889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693373, -0.052698, -0.718649,
		0.607568, 0.578968, 0.543743,
		0.387421, -0.813645, 0.433459,
		40.260078, 32.246487, 21.282927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703773, 32.994164, 20.989176>,  <39.988884, 32.816040, 20.979506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703773, 32.994164, 20.989176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622177, 32.602577, 20.988239>,  <40.573219, 32.367626, 20.987677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622177, 32.602577, 20.988239>,  <40.703773, 32.994164, 20.989176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622177, 32.602577, 20.988239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661108, -0.135992, -0.737863,
		0.722027, -0.152068, 0.674946,
		-0.203993, -0.978970, -0.002343,
		40.560978, 32.308887, 20.987535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342796, 32.754078, 20.862925>,  <40.703773, 32.994164, 20.989176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342796, 32.754078, 20.862925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122772, 32.423378, 20.815739>,  <40.990757, 32.224957, 20.787428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122772, 32.423378, 20.815739>,  <41.342796, 32.754078, 20.862925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122772, 32.423378, 20.815739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656151, -0.340459, -0.673464,
		0.516627, -0.447846, 0.729747,
		-0.550057, -0.826754, -0.117965,
		40.957756, 32.175350, 20.780350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814335, 32.261921, 20.915905>,  <41.342796, 32.754078, 20.862925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814335, 32.261921, 20.915905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517391, 32.093925, 20.707094>,  <41.339226, 31.993128, 20.581808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517391, 32.093925, 20.707094>,  <41.814335, 32.261921, 20.915905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517391, 32.093925, 20.707094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667992, -0.403646, -0.625185,
		0.051856, -0.812822, 0.580199,
		-0.742359, -0.419988, -0.522028,
		41.294682, 31.967930, 20.550486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920216, 31.541567, 20.921818>,  <41.814335, 32.261921, 20.915905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920216, 31.541567, 20.921818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706467, 31.628817, 20.595171>,  <41.578217, 31.681166, 20.399183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706467, 31.628817, 20.595171>,  <41.920216, 31.541567, 20.921818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706467, 31.628817, 20.595171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805903, -0.159852, -0.570059,
		-0.254881, -0.962741, -0.090365,
		-0.534374, 0.218123, -0.816619,
		41.546154, 31.694254, 20.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215645, 31.110506, 20.439135>,  <41.920216, 31.541567, 20.921818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215645, 31.110506, 20.439135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990185, 31.332567, 20.194481>,  <41.854908, 31.465805, 20.047688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990185, 31.332567, 20.194481>,  <42.215645, 31.110506, 20.439135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990185, 31.332567, 20.194481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520711, -0.335999, -0.784834,
		-0.641214, -0.760860, -0.099688,
		-0.563654, 0.555155, -0.611635,
		41.821091, 31.499113, 20.010990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781868, 30.611612, 20.042694>,  <42.215645, 31.110506, 20.439135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781868, 30.611612, 20.042694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.870323, 30.956175, 19.859793>,  <41.923397, 31.162912, 19.750051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.870323, 30.956175, 19.859793>,  <41.781868, 30.611612, 20.042694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870323, 30.956175, 19.859793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458953, -0.505615, -0.730558,
		-0.860500, -0.048304, -0.507155,
		0.221137, 0.861406, -0.457251,
		41.936665, 31.214596, 19.722618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148792, 30.571493, 19.618860>,  <41.781868, 30.611612, 20.042694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148792, 30.571493, 19.618860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.235615, 30.191668, 19.528337>,  <41.287708, 29.963772, 19.474024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.235615, 30.191668, 19.528337>,  <41.148792, 30.571493, 19.618860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235615, 30.191668, 19.528337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847347, -0.298381, 0.439284,
		-0.484655, 0.096415, -0.869375,
		0.217052, -0.949565, -0.226309,
		41.300732, 29.906797, 19.460445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550735, 30.228468, 19.298225>,  <41.148792, 30.571493, 19.618860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550735, 30.228468, 19.298225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762573, 29.931879, 19.463026>,  <40.889675, 29.753925, 19.561907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762573, 29.931879, 19.463026>,  <40.550735, 30.228468, 19.298225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762573, 29.931879, 19.463026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835181, -0.370866, 0.406118,
		-0.148328, -0.559174, -0.815674,
		0.529596, -0.741473, 0.412001,
		40.921452, 29.709436, 19.586626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108303, 29.757717, 19.250193>,  <40.550735, 30.228468, 19.298225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108303, 29.757717, 19.250193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.359753, 29.586079, 19.509640>,  <40.510624, 29.483095, 19.665308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.359753, 29.586079, 19.509640>,  <40.108303, 29.757717, 19.250193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359753, 29.586079, 19.509640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776273, -0.295549, 0.556823,
		-0.047232, -0.853538, -0.518885,
		0.628625, -0.429097, 0.648619,
		40.548340, 29.457350, 19.704226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813610, 29.165506, 19.535332>,  <40.108303, 29.757717, 19.250193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813610, 29.165506, 19.535332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.081219, 29.239914, 19.823168>,  <40.241783, 29.284557, 19.995869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.081219, 29.239914, 19.823168>,  <39.813610, 29.165506, 19.535332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081219, 29.239914, 19.823168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693523, -0.191922, 0.694400,
		0.267276, -0.963620, 0.000607,
		0.669021, 0.186018, 0.719589,
		40.281925, 29.295719, 20.039045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835712, 28.565434, 19.930471>,  <39.813610, 29.165506, 19.535332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835712, 28.565434, 19.930471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.962910, 28.853224, 20.177450>,  <40.039227, 29.025898, 20.325638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.962910, 28.853224, 20.177450>,  <39.835712, 28.565434, 19.930471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962910, 28.853224, 20.177450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621881, -0.333298, 0.708644,
		0.715644, -0.609319, 0.341442,
		0.317988, 0.719473, 0.617447,
		40.058308, 29.069065, 20.362684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881172, 28.215651, 20.553473>,  <39.835712, 28.565434, 19.930471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881172, 28.215651, 20.553473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.893463, 28.602955, 20.652695>,  <39.900837, 28.835337, 20.712227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.893463, 28.602955, 20.652695>,  <39.881172, 28.215651, 20.553473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893463, 28.602955, 20.652695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616437, -0.176999, 0.767253,
		0.786805, -0.176481, 0.591433,
		0.030723, 0.968259, 0.248054,
		39.902679, 28.893433, 20.727110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913799, 28.253944, 21.255100>,  <39.881172, 28.215651, 20.553473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913799, 28.253944, 21.255100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.775398, 28.620522, 21.174683>,  <39.692356, 28.840467, 21.126432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.775398, 28.620522, 21.174683>,  <39.913799, 28.253944, 21.255100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775398, 28.620522, 21.174683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707344, -0.114019, 0.697613,
		0.616399, 0.383581, 0.687690,
		-0.346001, 0.916442, -0.201042,
		39.671597, 28.895454, 21.114370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578964, 28.470613, 21.717169>,  <39.913799, 28.253944, 21.255100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578964, 28.470613, 21.717169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.735123, 28.132185, 21.862362>,  <40.828815, 27.929127, 21.949478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.735123, 28.132185, 21.862362>,  <40.578964, 28.470613, 21.717169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735123, 28.132185, 21.862362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710809, 0.026427, -0.702888,
		0.585101, 0.532413, 0.611713,
		0.390393, -0.846072, 0.362981,
		40.852242, 27.878363, 21.971256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350365, 28.549692, 21.775112>,  <40.578964, 28.470613, 21.717169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350365, 28.549692, 21.775112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350117, 28.150524, 21.800888>,  <41.349968, 27.911022, 21.816353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350117, 28.150524, 21.800888>,  <41.350365, 28.549692, 21.775112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350117, 28.150524, 21.800888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801476, -0.039030, -0.596753,
		0.598027, 0.051278, 0.799834,
		-0.000617, -0.997921, 0.064439,
		41.349930, 27.851149, 21.820219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043991, 28.252321, 21.950064>,  <41.350365, 28.549692, 21.775112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043991, 28.252321, 21.950064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867847, 27.921852, 21.809483>,  <41.762161, 27.723570, 21.725134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867847, 27.921852, 21.809483>,  <42.043991, 28.252321, 21.950064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867847, 27.921852, 21.809483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799101, -0.182212, -0.572919,
		0.409292, -0.533138, 0.740435,
		-0.440362, -0.826173, -0.351453,
		41.735741, 27.674000, 21.704046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447628, 27.726954, 21.967039>,  <42.043991, 28.252321, 21.950064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447628, 27.726954, 21.967039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193962, 27.624935, 21.675070>,  <42.041763, 27.563725, 21.499887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193962, 27.624935, 21.675070>,  <42.447628, 27.726954, 21.967039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193962, 27.624935, 21.675070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770326, -0.289723, -0.568030,
		-0.066603, -0.922503, 0.380200,
		-0.634163, -0.255046, -0.729925,
		42.003712, 27.548422, 21.456093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653591, 26.988573, 21.703623>,  <42.447628, 27.726954, 21.967039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653591, 26.988573, 21.703623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.444397, 27.196257, 21.433245>,  <42.318878, 27.320868, 21.271017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.444397, 27.196257, 21.433245>,  <42.653591, 26.988573, 21.703623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444397, 27.196257, 21.433245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569319, -0.377393, -0.730377,
		-0.634316, -0.766808, -0.098224,
		-0.522990, 0.519211, -0.675945,
		42.287498, 27.352020, 21.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524155, 26.471312, 21.225342>,  <42.653591, 26.988573, 21.703623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524155, 26.471312, 21.225342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.492451, 26.820782, 21.033337>,  <42.473427, 27.030464, 20.918133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.492451, 26.820782, 21.033337>,  <42.524155, 26.471312, 21.225342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492451, 26.820782, 21.033337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728562, -0.277885, -0.626081,
		-0.680379, -0.399343, -0.614500,
		-0.079261, 0.873674, -0.480013,
		42.468674, 27.082884, 20.889334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540127, 26.271112, 20.493729>,  <42.524155, 26.471312, 21.225342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540127, 26.271112, 20.493729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.594643, 26.666119, 20.462132>,  <42.627354, 26.903122, 20.443174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.594643, 26.666119, 20.462132>,  <42.540127, 26.271112, 20.493729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594643, 26.666119, 20.462132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838530, -0.157453, -0.521608,
		-0.527533, 0.004854, -0.849520,
		0.136291, 0.987515, -0.078991,
		42.635529, 26.962374, 20.438435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642685, 26.397215, 19.866241>,  <42.540127, 26.271112, 20.493729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642685, 26.397215, 19.866241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.780357, 26.742487, 20.014004>,  <42.862961, 26.949650, 20.102661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.780357, 26.742487, 20.014004>,  <42.642685, 26.397215, 19.866241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780357, 26.742487, 20.014004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852759, -0.122760, -0.507672,
		-0.392864, 0.489746, -0.778336,
		0.344179, 0.863180, 0.369407,
		42.883610, 27.001440, 20.124826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906662, 26.742195, 19.265686>,  <42.642685, 26.397215, 19.866241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906662, 26.742195, 19.265686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.102707, 26.864565, 19.592171>,  <43.220333, 26.937986, 19.788061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.102707, 26.864565, 19.592171>,  <42.906662, 26.742195, 19.265686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102707, 26.864565, 19.592171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870991, -0.135185, -0.472335,
		-0.034159, 0.942409, -0.332713,
		0.490110, 0.305925, 0.816212,
		43.249741, 26.956343, 19.837034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.467316, 28.300726, 33.175247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777134, 28.544744, 33.242096>,  <34.963024, 28.691154, 33.282207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777134, 28.544744, 33.242096>,  <34.467316, 28.300726, 33.175247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777134, 28.544744, 33.242096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386618, -0.247482, -0.888414,
		-0.500612, 0.752727, -0.427539,
		0.774541, 0.610045, 0.167126,
		35.009495, 28.727758, 33.292233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312538, 28.901831, 32.712280>,  <34.467316, 28.300726, 33.175247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312538, 28.901831, 32.712280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700573, 28.891382, 32.808815>,  <34.933395, 28.885113, 32.866734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700573, 28.891382, 32.808815>,  <34.312538, 28.901831, 32.712280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700573, 28.891382, 32.808815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236770, -0.117383, -0.964449,
		0.053519, 0.992743, -0.107688,
		0.970091, -0.026119, 0.241334,
		34.991600, 28.883547, 32.881214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584419, 29.437155, 32.303764>,  <34.312538, 28.901831, 32.712280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584419, 29.437155, 32.303764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885677, 29.192144, 32.399754>,  <35.066433, 29.045139, 32.457348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885677, 29.192144, 32.399754>,  <34.584419, 29.437155, 32.303764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885677, 29.192144, 32.399754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290229, -0.017994, -0.956788,
		0.590375, 0.790247, 0.164220,
		0.753144, -0.612525, 0.239976,
		35.111622, 29.008387, 32.471745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136635, 29.811749, 32.175831>,  <34.584419, 29.437155, 32.303764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136635, 29.811749, 32.175831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257931, 29.430807, 32.162731>,  <35.330708, 29.202242, 32.154873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257931, 29.430807, 32.162731>,  <35.136635, 29.811749, 32.175831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257931, 29.430807, 32.162731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429128, 0.167163, -0.887640,
		0.850820, 0.255113, 0.459371,
		0.303238, -0.952352, -0.032750,
		35.348904, 29.145102, 32.152905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940689, 29.785950, 32.058846>,  <35.136635, 29.811749, 32.175831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940689, 29.785950, 32.058846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799393, 29.425125, 31.959641>,  <35.714615, 29.208632, 31.900118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799393, 29.425125, 31.959641>,  <35.940689, 29.785950, 32.058846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799393, 29.425125, 31.959641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495959, 0.044222, -0.867219,
		0.793252, -0.429339, 0.431764,
		-0.353237, -0.902060, -0.248014,
		35.693420, 29.154507, 31.885237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495045, 29.551453, 31.721586>,  <35.940689, 29.785950, 32.058846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495045, 29.551453, 31.721586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208099, 29.316118, 31.572319>,  <36.035934, 29.174917, 31.482759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208099, 29.316118, 31.572319>,  <36.495045, 29.551453, 31.721586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208099, 29.316118, 31.572319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574070, -0.195662, -0.795085,
		0.394764, -0.784585, 0.478107,
		-0.717360, -0.588338, -0.373166,
		35.992893, 29.139616, 31.460369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915695, 28.954903, 31.312029>,  <36.495045, 29.551453, 31.721586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915695, 28.954903, 31.312029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534824, 28.910421, 31.198196>,  <36.306301, 28.883732, 31.129896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534824, 28.910421, 31.198196>,  <36.915695, 28.954903, 31.312029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534824, 28.910421, 31.198196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301935, -0.485091, -0.820684,
		-0.046784, -0.867364, 0.495471,
		-0.952180, -0.111205, -0.284582,
		36.249172, 28.877060, 31.112822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756325, 28.245270, 31.112770>,  <36.915695, 28.954903, 31.312029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756325, 28.245270, 31.112770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503746, 28.476631, 30.906187>,  <36.352200, 28.615448, 30.782238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503746, 28.476631, 30.906187>,  <36.756325, 28.245270, 31.112770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503746, 28.476631, 30.906187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284815, -0.446475, -0.848258,
		-0.721219, -0.682723, 0.117187,
		-0.631446, 0.578403, -0.516455,
		36.314312, 28.650152, 30.751251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527309, 27.861666, 30.564463>,  <36.756325, 28.245270, 31.112770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527309, 27.861666, 30.564463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409019, 28.219822, 30.431301>,  <36.338047, 28.434715, 30.351404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409019, 28.219822, 30.431301>,  <36.527309, 27.861666, 30.564463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409019, 28.219822, 30.431301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173692, -0.292281, -0.940427,
		-0.939350, -0.335928, -0.069089,
		-0.295722, 0.895391, -0.332902,
		36.320301, 28.488440, 30.331430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093845, 27.738560, 29.986778>,  <36.527309, 27.861666, 30.564463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093845, 27.738560, 29.986778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223915, 28.114258, 29.942810>,  <36.301956, 28.339676, 29.916430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223915, 28.114258, 29.942810>,  <36.093845, 27.738560, 29.986778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223915, 28.114258, 29.942810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171916, -0.173013, -0.969800,
		-0.929898, 0.296453, -0.217730,
		0.325170, 0.939245, -0.109920,
		36.321465, 28.396032, 29.909834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810440, 28.020916, 29.350712>,  <36.093845, 27.738560, 29.986778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810440, 28.020916, 29.350712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146439, 28.228222, 29.414970>,  <36.348038, 28.352606, 29.453526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146439, 28.228222, 29.414970>,  <35.810440, 28.020916, 29.350712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146439, 28.228222, 29.414970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275813, -0.152881, -0.948976,
		-0.467261, 0.841444, -0.271363,
		0.839996, 0.518265, 0.160646,
		36.398438, 28.383701, 29.463163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853745, 28.392786, 28.763613>,  <35.810440, 28.020916, 29.350712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853745, 28.392786, 28.763613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215401, 28.381905, 28.934156>,  <36.432396, 28.375376, 29.036482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215401, 28.381905, 28.934156>,  <35.853745, 28.392786, 28.763613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215401, 28.381905, 28.934156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409475, -0.229503, -0.882983,
		0.121870, 0.972928, -0.196365,
		0.904145, -0.027202, 0.426359,
		36.486645, 28.373743, 29.062063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527534, 28.944330, 28.434675>,  <35.853745, 28.392786, 28.763613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527534, 28.944330, 28.434675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209602, 29.002100, 28.198917>,  <35.018841, 29.036762, 28.057463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209602, 29.002100, 28.198917>,  <35.527534, 28.944330, 28.434675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209602, 29.002100, 28.198917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592072, 0.028330, 0.805387,
		0.133015, 0.989110, 0.062991,
		-0.794832, 0.144424, -0.589392,
		34.971153, 29.045427, 28.022100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187675, 29.626562, 28.598297>,  <35.527534, 28.944330, 28.434675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187675, 29.626562, 28.598297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903095, 29.401377, 28.430056>,  <34.732346, 29.266266, 28.329111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903095, 29.401377, 28.430056>,  <35.187675, 29.626562, 28.598297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903095, 29.401377, 28.430056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586232, 0.145415, 0.796986,
		-0.387511, 0.813589, -0.433483,
		-0.711454, -0.562963, -0.420603,
		34.689659, 29.232489, 28.303875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551548, 29.943478, 28.773512>,  <35.187675, 29.626562, 28.598297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551548, 29.943478, 28.773512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458557, 29.569263, 28.667135>,  <34.402763, 29.344734, 28.603310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458557, 29.569263, 28.667135>,  <34.551548, 29.943478, 28.773512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458557, 29.569263, 28.667135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695817, -0.031063, 0.717547,
		-0.679552, 0.351862, -0.643741,
		-0.232481, -0.935536, -0.265941,
		34.388813, 29.288603, 28.587353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854843, 29.953087, 28.689651>,  <34.551548, 29.943478, 28.773512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854843, 29.953087, 28.689651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925125, 29.567896, 28.771431>,  <33.967293, 29.336781, 28.820499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925125, 29.567896, 28.771431>,  <33.854843, 29.953087, 28.689651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925125, 29.567896, 28.771431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767913, -0.004123, 0.640541,
		-0.615984, -0.269545, -0.740209,
		0.175706, -0.962979, 0.204448,
		33.977837, 29.279003, 28.832766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231091, 29.743286, 28.885378>,  <33.854843, 29.953087, 28.689651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231091, 29.743286, 28.885378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457981, 29.443056, 29.020958>,  <33.594116, 29.262918, 29.102306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457981, 29.443056, 29.020958>,  <33.231091, 29.743286, 28.885378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457981, 29.443056, 29.020958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727927, -0.264437, 0.632610,
		-0.385191, -0.605564, -0.696361,
		0.567230, -0.750576, 0.338948,
		33.628151, 29.217884, 29.122643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732662, 29.294825, 29.030775>,  <33.231091, 29.743286, 28.885378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732662, 29.294825, 29.030775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047787, 29.158344, 29.235884>,  <33.236862, 29.076456, 29.358950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047787, 29.158344, 29.235884>,  <32.732662, 29.294825, 29.030775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047787, 29.158344, 29.235884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595762, -0.210906, 0.774975,
		-0.156271, -0.916026, -0.369426,
		0.787812, -0.341197, 0.512775,
		33.284130, 29.055984, 29.389715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490215, 28.610485, 29.411249>,  <32.732662, 29.294825, 29.030775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490215, 28.610485, 29.411249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805119, 28.765427, 29.603157>,  <32.994061, 28.858391, 29.718302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805119, 28.765427, 29.603157>,  <32.490215, 28.610485, 29.411249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805119, 28.765427, 29.603157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451847, -0.167056, 0.876314,
		0.419593, -0.906669, 0.043509,
		0.787259, 0.387355, 0.479771,
		33.041298, 28.881634, 29.747087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494511, 28.239311, 29.981924>,  <32.490215, 28.610485, 29.411249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494511, 28.239311, 29.981924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739197, 28.533718, 30.097912>,  <32.886009, 28.710363, 30.167503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739197, 28.533718, 30.097912>,  <32.494511, 28.239311, 29.981924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739197, 28.533718, 30.097912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326391, -0.099074, 0.940028,
		0.720606, -0.669673, 0.179625,
		0.611715, 0.736018, 0.289968,
		32.922710, 28.754524, 30.184902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866219, 27.988274, 30.642025>,  <32.494511, 28.239311, 29.981924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866219, 27.988274, 30.642025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897530, 28.386877, 30.630377>,  <32.916317, 28.626040, 30.623388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897530, 28.386877, 30.630377>,  <32.866219, 27.988274, 30.642025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897530, 28.386877, 30.630377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323219, 0.053000, 0.944839,
		0.943082, -0.064543, 0.326238,
		0.078273, 0.996506, -0.029122,
		32.921013, 28.685829, 30.621639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190159, 28.342285, 31.285189>,  <32.866219, 27.988274, 30.642025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190159, 28.342285, 31.285189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983250, 28.648958, 31.133068>,  <32.859104, 28.832962, 31.041796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983250, 28.648958, 31.133068>,  <33.190159, 28.342285, 31.285189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983250, 28.648958, 31.133068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287280, 0.263037, 0.921022,
		0.806166, 0.585669, 0.084192,
		-0.517269, 0.766683, -0.380303,
		32.828068, 28.878963, 31.018978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194489, 28.865889, 31.768841>,  <33.190159, 28.342285, 31.285189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194489, 28.865889, 31.768841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877312, 28.971514, 31.549198>,  <32.687008, 29.034889, 31.417412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877312, 28.971514, 31.549198>,  <33.194489, 28.865889, 31.768841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877312, 28.971514, 31.549198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459871, 0.331837, 0.823652,
		0.399710, 0.905624, -0.141692,
		-0.792938, 0.264062, -0.549109,
		32.639431, 29.050732, 31.384466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068233, 29.641348, 31.900183>,  <33.194489, 28.865889, 31.768841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068233, 29.641348, 31.900183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730415, 29.465071, 31.778505>,  <32.527725, 29.359304, 31.705500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730415, 29.465071, 31.778505>,  <33.068233, 29.641348, 31.900183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730415, 29.465071, 31.778505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444713, 0.260791, 0.856865,
		-0.298282, 0.858941, -0.416231,
		-0.844546, -0.440691, -0.304193,
		32.477051, 29.332863, 31.687248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465492, 30.164660, 32.075977>,  <33.068233, 29.641348, 31.900183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465492, 30.164660, 32.075977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290550, 29.810827, 32.011185>,  <32.185585, 29.598528, 31.972307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290550, 29.810827, 32.011185>,  <32.465492, 30.164660, 32.075977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290550, 29.810827, 32.011185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671479, 0.201405, 0.713128,
		-0.598194, 0.420661, -0.682062,
		-0.437356, -0.884579, -0.161986,
		32.159344, 29.545454, 31.962589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680109, 30.235394, 31.855829>,  <32.465492, 30.164660, 32.075977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680109, 30.235394, 31.855829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769514, 29.901525, 32.057171>,  <31.823158, 29.701204, 32.177975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769514, 29.901525, 32.057171>,  <31.680109, 30.235394, 31.855829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769514, 29.901525, 32.057171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547010, 0.320009, 0.773547,
		-0.806735, -0.448238, -0.385047,
		0.223514, -0.834672, 0.503352,
		31.836569, 29.651123, 32.208176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940828, 30.836721, 32.077152>,  <31.680109, 30.235394, 31.855829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940828, 30.836721, 32.077152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.550600, 30.818903, 31.991100>,  <31.316463, 30.808212, 31.939470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.550600, 30.818903, 31.991100>,  <31.940828, 30.836721, 32.077152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550600, 30.818903, 31.991100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027618, 0.946588, -0.321260,
		0.217947, -0.319353, -0.922233,
		-0.975570, -0.044547, -0.215126,
		31.257929, 30.805538, 31.926563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972729, 31.162210, 31.447037>,  <31.940828, 30.836721, 32.077152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972729, 31.162210, 31.447037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585808, 31.190233, 31.544540>,  <31.353655, 31.207047, 31.603043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585808, 31.190233, 31.544540>,  <31.972729, 31.162210, 31.447037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585808, 31.190233, 31.544540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095231, 0.790451, -0.605078,
		-0.235070, -0.608506, -0.757933,
		-0.967302, 0.070057, 0.243760,
		31.295618, 31.211250, 31.617668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296139, 31.722750, 31.659447>,  <31.972729, 31.162210, 31.447037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296139, 31.722750, 31.659447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677032, 31.748363, 31.778877>,  <32.905567, 31.763731, 31.850536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677032, 31.748363, 31.778877>,  <32.296139, 31.722750, 31.659447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677032, 31.748363, 31.778877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305364, -0.202195, -0.930521,
		0.000787, 0.977250, -0.212091,
		0.952235, 0.064032, 0.298576,
		32.962704, 31.767572, 31.868450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746288, 32.329479, 31.277370>,  <32.296139, 31.722750, 31.659447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746288, 32.329479, 31.277370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945091, 32.008587, 31.409676>,  <33.064373, 31.816051, 31.489059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945091, 32.008587, 31.409676>,  <32.746288, 32.329479, 31.277370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945091, 32.008587, 31.409676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449948, -0.087674, -0.888741,
		0.741975, 0.590541, 0.317387,
		0.497011, -0.802231, 0.330765,
		33.094196, 31.767918, 31.508905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448021, 32.502148, 31.207888>,  <32.746288, 32.329479, 31.277370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448021, 32.502148, 31.207888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532394, 32.113369, 31.249495>,  <33.583019, 31.880100, 31.274458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532394, 32.113369, 31.249495>,  <33.448021, 32.502148, 31.207888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532394, 32.113369, 31.249495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760958, 0.096484, -0.641587,
		0.613555, 0.214485, 0.759965,
		0.210935, -0.971950, 0.104016,
		33.595676, 31.821783, 31.280699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169514, 32.453323, 31.177977>,  <33.448021, 32.502148, 31.207888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169514, 32.453323, 31.177977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044071, 32.080975, 31.102997>,  <33.968807, 31.857567, 31.058008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044071, 32.080975, 31.102997>,  <34.169514, 32.453323, 31.177977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044071, 32.080975, 31.102997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570962, -0.027124, -0.820528,
		0.758719, -0.364348, 0.539997,
		-0.313604, -0.930868, -0.187450,
		33.949989, 31.801714, 31.046762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713867, 32.069714, 31.099400>,  <34.169514, 32.453323, 31.177977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713867, 32.069714, 31.099400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438515, 31.824615, 30.944128>,  <34.273304, 31.677557, 30.850965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438515, 31.824615, 30.944128>,  <34.713867, 32.069714, 31.099400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438515, 31.824615, 30.944128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559878, -0.108609, -0.821426,
		0.461162, -0.782785, 0.417825,
		-0.688379, -0.612742, -0.388177,
		34.232002, 31.640793, 30.827675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143581, 31.503603, 30.748653>,  <34.713867, 32.069714, 31.099400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143581, 31.503603, 30.748653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778740, 31.481804, 30.586126>,  <34.559834, 31.468723, 30.488609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778740, 31.481804, 30.586126>,  <35.143581, 31.503603, 30.748653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778740, 31.481804, 30.586126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409154, -0.183044, -0.893917,
		-0.025655, -0.981593, 0.189254,
		-0.912105, -0.054500, -0.406318,
		34.505108, 31.465454, 30.464231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167652, 30.865492, 30.529631>,  <35.143581, 31.503603, 30.748653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167652, 30.865492, 30.529631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899338, 31.073626, 30.318235>,  <34.738350, 31.198505, 30.191399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899338, 31.073626, 30.318235>,  <35.167652, 30.865492, 30.529631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899338, 31.073626, 30.318235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462870, -0.263056, -0.846494,
		-0.579483, -0.812437, -0.064394,
		-0.670783, 0.520335, -0.528489,
		34.698101, 31.229727, 30.159689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236389, 30.651371, 29.899748>,  <35.167652, 30.865492, 30.529631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236389, 30.651371, 29.899748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999863, 30.965982, 29.828514>,  <34.857948, 31.154749, 29.785774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999863, 30.965982, 29.828514>,  <35.236389, 30.651371, 29.899748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999863, 30.965982, 29.828514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447506, 0.136320, -0.883830,
		-0.670882, -0.602318, -0.432585,
		-0.591317, 0.786530, -0.178086,
		34.822468, 31.201942, 29.775087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880688, 30.556803, 29.244408>,  <35.236389, 30.651371, 29.899748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880688, 30.556803, 29.244408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910759, 30.948412, 29.320156>,  <34.928802, 31.183378, 29.365604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910759, 30.948412, 29.320156>,  <34.880688, 30.556803, 29.244408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910759, 30.948412, 29.320156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500908, 0.127132, -0.856113,
		-0.862230, 0.159218, -0.480843,
		0.075177, 0.979024, 0.189371,
		34.933311, 31.242119, 29.376966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657764, 30.989649, 28.621788>,  <34.880688, 30.556803, 29.244408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657764, 30.989649, 28.621788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879032, 31.234270, 28.848063>,  <35.011795, 31.381042, 28.983828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879032, 31.234270, 28.848063>,  <34.657764, 30.989649, 28.621788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879032, 31.234270, 28.848063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391298, 0.408733, -0.824514,
		-0.735451, 0.677449, -0.013201,
		0.553171, 0.611555, 0.565688,
		35.044983, 31.417736, 29.017769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685856, 31.636612, 28.281635>,  <34.657764, 30.989649, 28.621788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685856, 31.636612, 28.281635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015930, 31.650507, 28.507153>,  <35.213974, 31.658844, 28.642464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015930, 31.650507, 28.507153>,  <34.685856, 31.636612, 28.281635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015930, 31.650507, 28.507153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532597, 0.284665, -0.797061,
		-0.188179, 0.957998, 0.216401,
		0.825184, 0.034736, 0.563794,
		35.263485, 31.660927, 28.676291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060211, 32.215904, 28.020853>,  <34.685856, 31.636612, 28.281635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060211, 32.215904, 28.020853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320038, 32.004726, 28.239702>,  <35.475933, 31.878021, 28.371012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320038, 32.004726, 28.239702>,  <35.060211, 32.215904, 28.020853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320038, 32.004726, 28.239702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705916, 0.151496, -0.691904,
		0.282398, 0.835660, 0.471089,
		0.649564, -0.527941, 0.547124,
		35.514908, 31.846344, 28.403839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728977, 32.647728, 28.072378>,  <35.060211, 32.215904, 28.020853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728977, 32.647728, 28.072378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844349, 32.285172, 28.195833>,  <35.913570, 32.067638, 28.269907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844349, 32.285172, 28.195833>,  <35.728977, 32.647728, 28.072378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844349, 32.285172, 28.195833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857956, 0.101540, -0.503589,
		0.425111, 0.410047, 0.806934,
		0.288431, -0.906394, 0.308637,
		35.930878, 32.013252, 28.288424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361790, 32.758644, 28.237642>,  <35.728977, 32.647728, 28.072378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361790, 32.758644, 28.237642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.330788, 32.363972, 28.180443>,  <36.312187, 32.127167, 28.146124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.330788, 32.363972, 28.180443>,  <36.361790, 32.758644, 28.237642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330788, 32.363972, 28.180443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822125, 0.017887, -0.569026,
		0.564006, -0.161665, 0.809791,
		-0.077507, -0.986684, -0.142997,
		36.307537, 32.067966, 28.137543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002380, 32.568203, 28.300396>,  <36.361790, 32.758644, 28.237642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002380, 32.568203, 28.300396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817680, 32.292286, 28.077335>,  <36.706860, 32.126736, 27.943499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817680, 32.292286, 28.077335>,  <37.002380, 32.568203, 28.300396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817680, 32.292286, 28.077335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770661, -0.000707, -0.637246,
		0.439172, -0.724008, 0.531922,
		-0.461747, -0.689791, -0.557654,
		36.679157, 32.085350, 27.910040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534431, 32.295536, 27.969181>,  <37.002380, 32.568203, 28.300396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534431, 32.295536, 27.969181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233326, 32.120914, 27.772097>,  <37.052662, 32.016140, 27.653847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233326, 32.120914, 27.772097>,  <37.534431, 32.295536, 27.969181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233326, 32.120914, 27.772097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579106, -0.083267, -0.810989,
		0.313014, -0.895816, 0.315492,
		-0.752767, -0.436554, -0.492709,
		37.007496, 31.989948, 27.624285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743179, 31.646492, 27.791668>,  <37.534431, 32.295536, 27.969181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743179, 31.646492, 27.791668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461128, 31.782944, 27.543016>,  <37.291897, 31.864815, 27.393826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461128, 31.782944, 27.543016>,  <37.743179, 31.646492, 27.791668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461128, 31.782944, 27.543016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641644, -0.066171, -0.764143,
		-0.301806, -0.937684, -0.172226,
		-0.705128, 0.341131, -0.621630,
		37.249588, 31.885283, 27.356527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884331, 31.291489, 27.167374>,  <37.743179, 31.646492, 27.791668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884331, 31.291489, 27.167374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638775, 31.585875, 27.053181>,  <37.491444, 31.762506, 26.984665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638775, 31.585875, 27.053181>,  <37.884331, 31.291489, 27.167374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638775, 31.585875, 27.053181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497160, 0.079543, -0.864005,
		-0.613169, -0.672331, -0.414723,
		-0.613886, 0.735965, -0.285483,
		37.454609, 31.806664, 26.967535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370750, 31.027290, 26.577337>,  <37.884331, 31.291489, 27.167374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370750, 31.027290, 26.577337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438641, 31.420980, 26.557358>,  <37.479374, 31.657194, 26.545370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438641, 31.420980, 26.557358>,  <37.370750, 31.027290, 26.577337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438641, 31.420980, 26.557358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172213, -0.079524, -0.981844,
		-0.970327, 0.158047, -0.182994,
		0.169730, 0.984224, -0.049947,
		37.489559, 31.716248, 26.542374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282703, 31.117115, 25.884525>,  <37.370750, 31.027290, 26.577337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282703, 31.117115, 25.884525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438026, 31.477394, 25.962458>,  <37.531219, 31.693562, 26.009216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438026, 31.477394, 25.962458>,  <37.282703, 31.117115, 25.884525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438026, 31.477394, 25.962458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217006, 0.116101, -0.969241,
		-0.895615, 0.418643, -0.150374,
		0.388308, 0.900699, 0.194830,
		37.554520, 31.747604, 26.020906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083454, 31.554792, 25.362095>,  <37.282703, 31.117115, 25.884525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083454, 31.554792, 25.362095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397511, 31.742874, 25.523321>,  <37.585945, 31.855722, 25.620056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397511, 31.742874, 25.523321>,  <37.083454, 31.554792, 25.362095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397511, 31.742874, 25.523321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332485, 0.229057, -0.914870,
		-0.522500, 0.852315, 0.023507,
		0.785142, 0.470204, 0.403064,
		37.633053, 31.883936, 25.644239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050907, 32.151779, 24.985907>,  <37.083454, 31.554792, 25.362095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050907, 32.151779, 24.985907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412540, 32.124340, 25.154636>,  <37.629520, 32.107876, 25.255875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412540, 32.124340, 25.154636>,  <37.050907, 32.151779, 24.985907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412540, 32.124340, 25.154636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426371, 0.212071, -0.879337,
		-0.029134, 0.974843, 0.220979,
		0.904079, -0.068600, 0.421824,
		37.683765, 32.103760, 25.281183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431561, 32.818062, 24.830000>,  <37.050907, 32.151779, 24.985907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431561, 32.818062, 24.830000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691196, 32.521706, 24.899000>,  <37.846977, 32.343891, 24.940399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691196, 32.521706, 24.899000>,  <37.431561, 32.818062, 24.830000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691196, 32.521706, 24.899000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378674, 0.118026, -0.917974,
		0.659762, 0.661170, 0.357167,
		0.649092, -0.740894, 0.172498,
		37.885925, 32.299438, 24.950750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088387, 33.121227, 24.596598>,  <37.431561, 32.818062, 24.830000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088387, 33.121227, 24.596598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172493, 32.730728, 24.617470>,  <38.222958, 32.496429, 24.629993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172493, 32.730728, 24.617470>,  <38.088387, 33.121227, 24.596598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172493, 32.730728, 24.617470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639117, 0.096873, -0.762984,
		0.739809, 0.193779, 0.644308,
		0.210266, -0.976251, 0.052180,
		38.235573, 32.437855, 24.633123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837425, 33.139774, 24.667772>,  <38.088387, 33.121227, 24.596598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837425, 33.139774, 24.667772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750729, 32.774471, 24.529791>,  <38.698711, 32.555290, 24.447002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750729, 32.774471, 24.529791>,  <38.837425, 33.139774, 24.667772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750729, 32.774471, 24.529791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761464, 0.062964, -0.645141,
		0.610897, -0.402497, 0.681763,
		-0.216740, -0.913254, -0.344952,
		38.685707, 32.500496, 24.426306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510368, 32.876381, 24.670280>,  <38.837425, 33.139774, 24.667772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510368, 32.876381, 24.670280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.251114, 32.704605, 24.418726>,  <39.095562, 32.601540, 24.267794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.251114, 32.704605, 24.418726>,  <39.510368, 32.876381, 24.670280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251114, 32.704605, 24.418726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614256, 0.193307, -0.765063,
		0.450119, -0.882163, 0.138498,
		-0.648138, -0.429443, -0.628885,
		39.056671, 32.575771, 24.230061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185192, 32.818729, 25.050932>,  <39.510368, 32.876381, 24.670280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185192, 32.818729, 25.050932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.464535, 33.084320, 25.157833>,  <40.632141, 33.243675, 25.221973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.464535, 33.084320, 25.157833>,  <40.185192, 32.818729, 25.050932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464535, 33.084320, 25.157833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386332, 0.035357, 0.921682,
		0.602530, -0.746913, 0.281209,
		0.698359, 0.663981, 0.267253,
		40.674042, 33.283516, 25.238008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326115, 32.573898, 25.644133>,  <40.185192, 32.818729, 25.050932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326115, 32.573898, 25.644133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499634, 32.933697, 25.665037>,  <40.603745, 33.149574, 25.677580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499634, 32.933697, 25.665037>,  <40.326115, 32.573898, 25.644133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499634, 32.933697, 25.665037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378454, 0.129267, 0.916549,
		0.817673, -0.417378, 0.396492,
		0.433801, 0.899492, 0.052260,
		40.629776, 33.203545, 25.680716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865509, 32.556847, 26.279202>,  <40.326115, 32.573898, 25.644133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865509, 32.556847, 26.279202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738480, 32.924278, 26.185089>,  <40.662262, 33.144737, 26.128622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738480, 32.924278, 26.185089>,  <40.865509, 32.556847, 26.279202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738480, 32.924278, 26.185089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315310, 0.131707, 0.939805,
		0.894276, 0.372639, 0.247812,
		-0.317570, 0.918582, -0.235279,
		40.643208, 33.199852, 26.114506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315735, 33.093483, 26.603569>,  <40.865509, 32.556847, 26.279202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315735, 33.093483, 26.603569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944199, 33.231594, 26.549852>,  <40.721275, 33.314461, 26.517622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944199, 33.231594, 26.549852>,  <41.315735, 33.093483, 26.603569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944199, 33.231594, 26.549852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135309, 0.021273, 0.990575,
		0.344883, 0.938259, 0.026961,
		-0.928842, 0.345280, -0.134291,
		40.665546, 33.335178, 26.509565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189072, 33.365582, 27.277987>,  <41.315735, 33.093483, 26.603569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189072, 33.365582, 27.277987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.843437, 33.402794, 27.080120>,  <40.636055, 33.425121, 26.961401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.843437, 33.402794, 27.080120>,  <41.189072, 33.365582, 27.277987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843437, 33.402794, 27.080120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450115, 0.297010, 0.842129,
		0.225269, 0.950331, -0.214767,
		-0.864090, 0.093036, -0.494665,
		40.584209, 33.430706, 26.931721>
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
