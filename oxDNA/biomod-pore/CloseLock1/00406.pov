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
	<24.122179, 35.197819, 35.534760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391233, 35.071228, 35.267208>,  <24.552666, 34.995274, 35.106678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391233, 35.071228, 35.267208>,  <24.122179, 35.197819, 35.534760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391233, 35.071228, 35.267208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736908, 0.368673, 0.566611,
		0.067276, -0.874025, 0.481200,
		0.672637, -0.316481, -0.668879,
		24.593025, 34.976284, 35.066544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571630, 34.616493, 35.768906>,  <24.122179, 35.197819, 35.534760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571630, 34.616493, 35.768906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729223, 34.883942, 35.516644>,  <24.823778, 35.044411, 35.365288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729223, 34.883942, 35.516644>,  <24.571630, 34.616493, 35.768906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729223, 34.883942, 35.516644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652068, 0.280236, 0.704468,
		0.647756, -0.688774, -0.325581,
		0.393980, 0.668624, -0.630652,
		24.847418, 35.084530, 35.327450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255987, 34.367180, 35.810261>,  <24.571630, 34.616493, 35.768906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255987, 34.367180, 35.810261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193668, 34.749771, 35.711575>,  <25.156277, 34.979328, 35.652363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193668, 34.749771, 35.711575>,  <25.255987, 34.367180, 35.810261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193668, 34.749771, 35.711575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536603, 0.291650, 0.791831,
		0.829327, -0.009023, -0.558690,
		-0.155797, 0.956483, -0.246715,
		25.146929, 35.036716, 35.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838650, 34.784882, 35.828930>,  <25.255987, 34.367180, 35.810261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838650, 34.784882, 35.828930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506401, 34.989086, 35.917870>,  <25.307051, 35.111610, 35.971233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506401, 34.989086, 35.917870>,  <25.838650, 34.784882, 35.828930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506401, 34.989086, 35.917870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402492, 0.274511, 0.873295,
		0.384792, 0.814874, -0.433493,
		-0.830624, 0.510514, 0.222350,
		25.257214, 35.142239, 35.984573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106375, 35.479416, 36.110043>,  <25.838650, 34.784882, 35.828930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106375, 35.479416, 36.110043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741173, 35.370209, 36.231297>,  <25.522053, 35.304684, 36.304047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741173, 35.370209, 36.231297>,  <26.106375, 35.479416, 36.110043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741173, 35.370209, 36.231297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208578, 0.326194, 0.922005,
		-0.350599, 0.905020, -0.240872,
		-0.913004, -0.273013, 0.303130,
		25.467272, 35.288303, 36.322235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506821, 35.667217, 35.719528>,  <26.106375, 35.479416, 36.110043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506821, 35.667217, 35.719528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897131, 35.595150, 35.669888>,  <26.131317, 35.551910, 35.640102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897131, 35.595150, 35.669888>,  <25.506821, 35.667217, 35.719528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897131, 35.595150, 35.669888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063761, 0.308416, -0.949112,
		0.209275, 0.934034, 0.289458,
		0.975776, -0.180169, -0.124098,
		26.189863, 35.541100, 35.632660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731579, 36.186462, 35.355690>,  <25.506821, 35.667217, 35.719528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731579, 36.186462, 35.355690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008465, 35.905025, 35.291443>,  <26.174597, 35.736164, 35.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008465, 35.905025, 35.291443>,  <25.731579, 36.186462, 35.355690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008465, 35.905025, 35.291443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219797, 0.417513, -0.881687,
		0.687406, 0.575015, 0.443657,
		0.692215, -0.703591, -0.160614,
		26.216129, 35.693947, 35.243259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236403, 36.522633, 35.087032>,  <25.731579, 36.186462, 35.355690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236403, 36.522633, 35.087032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318649, 36.153271, 34.957394>,  <26.367998, 35.931652, 34.879612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318649, 36.153271, 34.957394>,  <26.236403, 36.522633, 35.087032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318649, 36.153271, 34.957394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333210, 0.377446, -0.864006,
		0.920159, 0.069663, 0.385298,
		0.205619, -0.923407, -0.324098,
		26.380335, 35.876247, 34.860165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953081, 36.551128, 34.925255>,  <26.236403, 36.522633, 35.087032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953081, 36.551128, 34.925255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765032, 36.258286, 34.728069>,  <26.652203, 36.082581, 34.609760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765032, 36.258286, 34.728069>,  <26.953081, 36.551128, 34.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765032, 36.258286, 34.728069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328016, 0.373600, -0.867657,
		0.819384, -0.569604, 0.064504,
		-0.470122, -0.732103, -0.492961,
		26.623995, 36.038654, 34.580181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510538, 36.229996, 34.463867>,  <26.953081, 36.551128, 34.925255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510538, 36.229996, 34.463867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136543, 36.153122, 34.344624>,  <26.912148, 36.106998, 34.273079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136543, 36.153122, 34.344624>,  <27.510538, 36.229996, 34.463867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136543, 36.153122, 34.344624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257853, 0.208811, -0.943350,
		0.243547, -0.958886, -0.145679,
		-0.934984, -0.192187, -0.298107,
		26.856049, 36.095467, 34.255192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600058, 35.800903, 33.988350>,  <27.510538, 36.229996, 34.463867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600058, 35.800903, 33.988350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254343, 35.986126, 33.909771>,  <27.046915, 36.097260, 33.862625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254343, 35.986126, 33.909771>,  <27.600058, 35.800903, 33.988350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254343, 35.986126, 33.909771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293339, 0.146750, -0.944678,
		-0.408611, -0.874096, -0.262667,
		-0.864285, 0.463057, -0.196443,
		26.995058, 36.125042, 33.850838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654890, 35.948997, 33.315914>,  <27.600058, 35.800903, 33.988350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654890, 35.948997, 33.315914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334702, 36.166950, 33.415794>,  <27.142590, 36.297722, 33.475723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334702, 36.166950, 33.415794>,  <27.654890, 35.948997, 33.315914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334702, 36.166950, 33.415794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052119, 0.478294, -0.876652,
		-0.597104, -0.688719, -0.411258,
		-0.800469, 0.544886, 0.249696,
		27.094561, 36.330418, 33.490704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173531, 35.997833, 32.765274>,  <27.654890, 35.948997, 33.315914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173531, 35.997833, 32.765274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135958, 36.324169, 32.993515>,  <27.113415, 36.519970, 33.130459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135958, 36.324169, 32.993515>,  <27.173531, 35.997833, 32.765274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135958, 36.324169, 32.993515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223166, 0.575808, -0.786538,
		-0.970244, 0.053458, -0.236154,
		-0.093932, 0.815836, 0.570604,
		27.107779, 36.568920, 33.164696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756840, 36.312943, 32.332138>,  <27.173531, 35.997833, 32.765274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756840, 36.312943, 32.332138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909960, 36.581615, 32.585850>,  <27.001831, 36.742821, 32.738075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909960, 36.581615, 32.585850>,  <26.756840, 36.312943, 32.332138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909960, 36.581615, 32.585850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296003, 0.561201, -0.772940,
		-0.875126, 0.483630, 0.016009,
		0.382801, 0.671681, 0.634277,
		27.024799, 36.783119, 32.776134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645739, 36.926441, 32.047905>,  <26.756840, 36.312943, 32.332138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645739, 36.926441, 32.047905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955448, 36.994843, 32.291630>,  <27.141273, 37.035885, 32.437862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955448, 36.994843, 32.291630>,  <26.645739, 36.926441, 32.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955448, 36.994843, 32.291630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430269, 0.563789, -0.704989,
		-0.464077, 0.808022, 0.362950,
		0.774275, 0.171003, 0.609309,
		27.187731, 37.046143, 32.474422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900444, 37.444763, 31.660070>,  <26.645739, 36.926441, 32.047905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900444, 37.444763, 31.660070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173325, 37.390961, 31.947544>,  <27.337053, 37.358681, 32.120029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173325, 37.390961, 31.947544>,  <26.900444, 37.444763, 31.660070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173325, 37.390961, 31.947544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637042, 0.591768, -0.493952,
		-0.358857, 0.794808, 0.489390,
		0.682202, -0.134503, 0.718686,
		27.377985, 37.350609, 32.163151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067818, 38.081120, 31.923645>,  <26.900444, 37.444763, 31.660070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067818, 38.081120, 31.923645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392853, 37.857716, 31.990301>,  <27.587873, 37.723675, 32.030296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392853, 37.857716, 31.990301>,  <27.067818, 38.081120, 31.923645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392853, 37.857716, 31.990301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574452, 0.719144, -0.390943,
		0.098505, 0.413403, 0.905204,
		0.812589, -0.558506, 0.166641,
		27.636629, 37.690163, 32.040295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592083, 38.584110, 32.255871>,  <27.067818, 38.081120, 31.923645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592083, 38.584110, 32.255871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808670, 38.272324, 32.129864>,  <27.938623, 38.085251, 32.054260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808670, 38.272324, 32.129864>,  <27.592083, 38.584110, 32.255871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808670, 38.272324, 32.129864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637362, 0.624939, -0.450799,
		0.548252, 0.043313, 0.835191,
		0.541469, -0.779471, -0.315019,
		27.971111, 38.038483, 32.035358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221300, 38.935650, 32.151169>,  <27.592083, 38.584110, 32.255871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221300, 38.935650, 32.151169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314476, 38.577915, 31.998381>,  <28.370380, 38.363274, 31.906706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314476, 38.577915, 31.998381>,  <28.221300, 38.935650, 32.151169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314476, 38.577915, 31.998381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852663, 0.376705, -0.362021,
		0.467660, -0.241368, 0.850315,
		0.232938, -0.894335, -0.381975,
		28.384357, 38.309616, 31.883789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920197, 38.813232, 32.279381>,  <28.221300, 38.935650, 32.151169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920197, 38.813232, 32.279381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822401, 38.615627, 31.945633>,  <28.763723, 38.497066, 31.745382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822401, 38.615627, 31.945633>,  <28.920197, 38.813232, 32.279381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822401, 38.615627, 31.945633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794589, 0.391107, -0.464396,
		0.555745, -0.776525, 0.296912,
		-0.244491, -0.494009, -0.834374,
		28.749054, 38.467426, 31.695320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532305, 38.525749, 31.985443>,  <28.920197, 38.813232, 32.279381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532305, 38.525749, 31.985443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257969, 38.556198, 31.695940>,  <29.093367, 38.574467, 31.522238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257969, 38.556198, 31.695940>,  <29.532305, 38.525749, 31.985443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257969, 38.556198, 31.695940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694055, 0.367534, -0.619037,
		0.218883, -0.926890, -0.304903,
		-0.685841, 0.076123, -0.723759,
		29.052216, 38.579037, 31.478813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806175, 38.185722, 31.450489>,  <29.532305, 38.525749, 31.985443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806175, 38.185722, 31.450489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541210, 38.419666, 31.263235>,  <29.382231, 38.560032, 31.150883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541210, 38.419666, 31.263235>,  <29.806175, 38.185722, 31.450489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541210, 38.419666, 31.263235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700819, 0.262999, -0.663087,
		-0.264694, -0.767314, -0.584095,
		-0.662412, 0.584860, -0.468134,
		29.342487, 38.595123, 31.122795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653669, 37.907574, 30.693924>,  <29.806175, 38.185722, 31.450489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653669, 37.907574, 30.693924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583111, 38.297703, 30.747026>,  <29.540775, 38.531780, 30.778889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583111, 38.297703, 30.747026>,  <29.653669, 37.907574, 30.693924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583111, 38.297703, 30.747026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678525, 0.218193, -0.701424,
		-0.713083, -0.033651, -0.700272,
		-0.176398, 0.975325, 0.132757,
		29.530191, 38.590302, 30.786854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714710, 38.145271, 29.952831>,  <29.653669, 37.907574, 30.693924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714710, 38.145271, 29.952831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742506, 38.475124, 30.177387>,  <29.759184, 38.673035, 30.312120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742506, 38.475124, 30.177387>,  <29.714710, 38.145271, 29.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742506, 38.475124, 30.177387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651250, 0.388785, -0.651705,
		-0.755675, 0.410891, -0.510024,
		0.069490, 0.824630, 0.561388,
		29.763353, 38.722515, 30.345804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823566, 38.607277, 29.471859>,  <29.714710, 38.145271, 29.952831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823566, 38.607277, 29.471859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951694, 38.793583, 29.801819>,  <30.028572, 38.905365, 29.999794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951694, 38.793583, 29.801819>,  <29.823566, 38.607277, 29.471859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951694, 38.793583, 29.801819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762731, 0.389624, -0.516173,
		-0.561815, 0.794517, -0.230448,
		0.320321, 0.465764, 0.824899,
		30.047791, 38.933311, 30.049288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885818, 39.318214, 29.287373>,  <29.823566, 38.607277, 29.471859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885818, 39.318214, 29.287373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147736, 39.253048, 29.582588>,  <30.304886, 39.213947, 29.759718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147736, 39.253048, 29.582588>,  <29.885818, 39.318214, 29.287373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147736, 39.253048, 29.582588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753187, 0.221901, -0.619249,
		-0.062886, 0.961363, 0.268006,
		0.654793, -0.162917, 0.738041,
		30.344173, 39.204174, 29.804001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376143, 39.761349, 29.074598>,  <29.885818, 39.318214, 29.287373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376143, 39.761349, 29.074598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528368, 39.524055, 29.358358>,  <30.619703, 39.381680, 29.528614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528368, 39.524055, 29.358358>,  <30.376143, 39.761349, 29.074598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528368, 39.524055, 29.358358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923274, 0.200344, -0.327760,
		0.052312, 0.779706, 0.623956,
		0.380563, -0.593229, 0.709403,
		30.642536, 39.346088, 29.571178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898319, 40.148701, 29.604906>,  <30.376143, 39.761349, 29.074598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898319, 40.148701, 29.604906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989359, 39.763012, 29.550526>,  <31.043982, 39.531601, 29.517899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989359, 39.763012, 29.550526>,  <30.898319, 40.148701, 29.604906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989359, 39.763012, 29.550526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927766, 0.257124, -0.270439,
		0.295718, -0.064578, 0.953090,
		0.227598, -0.964218, -0.135950,
		31.057638, 39.473747, 29.509741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649052, 40.061192, 29.324677>,  <30.898319, 40.148701, 29.604906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649052, 40.061192, 29.324677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598299, 39.666710, 29.367193>,  <31.567848, 39.430019, 29.392702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598299, 39.666710, 29.367193>,  <31.649052, 40.061192, 29.324677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598299, 39.666710, 29.367193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938042, -0.154133, -0.310355,
		0.322457, 0.060327, 0.944660,
		-0.126880, -0.986207, 0.106291,
		31.560234, 39.370850, 29.399080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150143, 39.792152, 29.656757>,  <31.649052, 40.061192, 29.324677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150143, 39.792152, 29.656757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045509, 39.453835, 29.470764>,  <31.982729, 39.250843, 29.359169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045509, 39.453835, 29.470764>,  <32.150143, 39.792152, 29.656757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045509, 39.453835, 29.470764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954234, -0.154282, -0.256193,
		0.144948, -0.510719, 0.847441,
		-0.261588, -0.845792, -0.464982,
		31.967033, 39.200096, 29.331270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758171, 39.298294, 29.823715>,  <32.150143, 39.792152, 29.656757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758171, 39.298294, 29.823715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563587, 39.205578, 29.486755>,  <32.446838, 39.149948, 29.284580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563587, 39.205578, 29.486755>,  <32.758171, 39.298294, 29.823715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563587, 39.205578, 29.486755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873661, -0.119380, -0.471662,
		0.008759, -0.965414, 0.260576,
		-0.486456, -0.231787, -0.842399,
		32.417652, 39.136044, 29.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744709, 38.603615, 30.116625>,  <32.758171, 39.298294, 29.823715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744709, 38.603615, 30.116625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417221, 38.832718, 30.132904>,  <32.220730, 38.970181, 30.142672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417221, 38.832718, 30.132904>,  <32.744709, 38.603615, 30.116625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417221, 38.832718, 30.132904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550866, -0.763476, -0.337122,
		-0.162015, -0.298427, 0.940581,
		-0.818717, 0.572753, 0.040699,
		32.171604, 39.004543, 30.145113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391506, 38.357044, 29.805244>,  <32.744709, 38.603615, 30.116625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391506, 38.357044, 29.805244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643017, 38.376041, 30.115700>,  <33.793922, 38.387440, 30.301973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643017, 38.376041, 30.115700>,  <33.391506, 38.357044, 29.805244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643017, 38.376041, 30.115700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613783, -0.582493, 0.532890,
		0.477403, -0.811447, -0.337105,
		0.628774, 0.047494, 0.776136,
		33.831650, 38.390289, 30.348541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611427, 37.638393, 30.063906>,  <33.391506, 38.357044, 29.805244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611427, 37.638393, 30.063906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631687, 37.907967, 30.358728>,  <33.643841, 38.069710, 30.535622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631687, 37.907967, 30.358728>,  <33.611427, 37.638393, 30.063906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631687, 37.907967, 30.358728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552671, -0.595791, 0.582742,
		0.831859, -0.436862, 0.342288,
		0.050646, 0.673932, 0.737055,
		33.646881, 38.110146, 30.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830563, 37.308369, 30.708223>,  <33.611427, 37.638393, 30.063906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830563, 37.308369, 30.708223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656097, 37.649792, 30.822208>,  <33.551418, 37.854645, 30.890600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656097, 37.649792, 30.822208>,  <33.830563, 37.308369, 30.708223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656097, 37.649792, 30.822208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556271, -0.504668, 0.660206,
		0.707334, 0.129442, 0.694927,
		-0.436166, 0.853554, 0.284964,
		33.525249, 37.905857, 30.907698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770126, 37.337677, 31.404139>,  <33.830563, 37.308369, 30.708223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770126, 37.337677, 31.404139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474865, 37.576122, 31.277784>,  <33.297710, 37.719189, 31.201973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474865, 37.576122, 31.277784>,  <33.770126, 37.337677, 31.404139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474865, 37.576122, 31.277784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570414, -0.301463, 0.764034,
		0.360224, 0.744157, 0.562556,
		-0.738151, 0.596113, -0.315884,
		33.253418, 37.754955, 31.183020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477982, 37.639050, 31.990631>,  <33.770126, 37.337677, 31.404139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477982, 37.639050, 31.990631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195858, 37.630569, 31.707197>,  <33.026585, 37.625481, 31.537136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195858, 37.630569, 31.707197>,  <33.477982, 37.639050, 31.990631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195858, 37.630569, 31.707197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669459, -0.308856, 0.675598,
		-0.233175, 0.950873, 0.203645,
		-0.705305, -0.021200, -0.708587,
		32.984268, 37.624210, 31.494621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913361, 37.825863, 32.394466>,  <33.477982, 37.639050, 31.990631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913361, 37.825863, 32.394466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731583, 37.700554, 32.060917>,  <32.622517, 37.625370, 31.860788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731583, 37.700554, 32.060917>,  <32.913361, 37.825863, 32.394466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731583, 37.700554, 32.060917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742326, -0.384253, 0.548910,
		-0.492377, 0.868452, -0.057930,
		-0.454443, -0.313273, -0.833872,
		32.595249, 37.606571, 31.810755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232227, 38.032890, 32.516415>,  <32.913361, 37.825863, 32.394466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232227, 38.032890, 32.516415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246956, 37.740089, 32.244293>,  <32.255795, 37.564407, 32.081020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246956, 37.740089, 32.244293>,  <32.232227, 38.032890, 32.516415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246956, 37.740089, 32.244293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768019, -0.456285, 0.449390,
		-0.639368, 0.505940, -0.578994,
		0.036822, -0.732004, -0.680305,
		32.258003, 37.520489, 32.040203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621370, 37.814369, 32.390034>,  <32.232227, 38.032890, 32.516415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621370, 37.814369, 32.390034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788233, 37.488167, 32.229568>,  <31.888351, 37.292446, 32.133289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788233, 37.488167, 32.229568>,  <31.621370, 37.814369, 32.390034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788233, 37.488167, 32.229568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520203, -0.576203, 0.630381,
		-0.745231, -0.054280, -0.664594,
		0.417158, -0.815503, -0.401167,
		31.913380, 37.243515, 32.109219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108891, 37.338413, 32.284966>,  <31.621370, 37.814369, 32.390034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108891, 37.338413, 32.284966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420435, 37.088856, 32.310677>,  <31.607363, 36.939121, 32.326103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420435, 37.088856, 32.310677>,  <31.108891, 37.338413, 32.284966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420435, 37.088856, 32.310677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494273, -0.547477, 0.675251,
		-0.386092, -0.557699, -0.734782,
		0.778863, -0.623892, 0.064280,
		31.654095, 36.901688, 32.329960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867538, 36.641075, 32.176579>,  <31.108891, 37.338413, 32.284966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867538, 36.641075, 32.176579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217302, 36.602016, 32.366680>,  <31.427162, 36.578583, 32.480743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217302, 36.602016, 32.366680>,  <30.867538, 36.641075, 32.176579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217302, 36.602016, 32.366680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404605, -0.687344, 0.603202,
		0.267765, -0.719739, -0.640530,
		0.874412, -0.097645, 0.475257,
		31.479626, 36.572723, 32.509258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005516, 35.975933, 32.254589>,  <30.867538, 36.641075, 32.176579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005516, 35.975933, 32.254589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229488, 36.155079, 32.533413>,  <31.363873, 36.262566, 32.700706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229488, 36.155079, 32.533413>,  <31.005516, 35.975933, 32.254589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229488, 36.155079, 32.533413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219201, -0.731261, 0.645917,
		0.799017, -0.514465, -0.311283,
		0.559930, 0.447865, 0.697062,
		31.397467, 36.289440, 32.742531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216921, 35.384853, 32.601791>,  <31.005516, 35.975933, 32.254589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216921, 35.384853, 32.601791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288555, 35.665802, 32.877357>,  <31.331535, 35.834370, 33.042698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288555, 35.665802, 32.877357>,  <31.216921, 35.384853, 32.601791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288555, 35.665802, 32.877357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367402, -0.601833, 0.709093,
		0.912658, -0.380097, 0.150273,
		0.179085, 0.702370, 0.688916,
		31.342281, 35.876514, 33.084034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516081, 35.019558, 33.157036>,  <31.216921, 35.384853, 32.601791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516081, 35.019558, 33.157036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385731, 35.368793, 33.302097>,  <31.307520, 35.578335, 33.389133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385731, 35.368793, 33.302097>,  <31.516081, 35.019558, 33.157036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385731, 35.368793, 33.302097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516696, -0.485713, 0.705059,
		0.791725, 0.042382, 0.609405,
		-0.325877, 0.873090, 0.362653,
		31.287968, 35.630722, 33.410892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709307, 34.980927, 33.785912>,  <31.516081, 35.019558, 33.157036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709307, 34.980927, 33.785912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428858, 35.265873, 33.773479>,  <31.260588, 35.436840, 33.766018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428858, 35.265873, 33.773479>,  <31.709307, 34.980927, 33.785912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428858, 35.265873, 33.773479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500541, -0.460659, 0.732975,
		0.507826, 0.529463, 0.679545,
		-0.701122, 0.712364, -0.031083,
		31.218521, 35.479584, 33.764156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343155, 34.954357, 34.421844>,  <31.709307, 34.980927, 33.785912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343155, 34.954357, 34.421844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116444, 35.251770, 34.279903>,  <30.980417, 35.430218, 34.194740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116444, 35.251770, 34.279903>,  <31.343155, 34.954357, 34.421844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116444, 35.251770, 34.279903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650729, -0.139851, 0.746320,
		0.505287, 0.653910, 0.563104,
		-0.566777, 0.743534, -0.354854,
		30.946411, 35.474831, 34.173447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101290, 35.572083, 35.044056>,  <31.343155, 34.954357, 34.421844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101290, 35.572083, 35.044056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827810, 35.562973, 34.752293>,  <30.663723, 35.557507, 34.577236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827810, 35.562973, 34.752293>,  <31.101290, 35.572083, 35.044056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827810, 35.562973, 34.752293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693721, -0.289946, 0.659304,
		-0.226506, 0.956772, 0.182435,
		-0.683700, -0.022777, -0.729407,
		30.622700, 35.556141, 34.533470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592754, 36.009724, 35.196278>,  <31.101290, 35.572083, 35.044056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592754, 36.009724, 35.196278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433836, 35.733440, 34.954594>,  <30.338486, 35.567669, 34.809582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433836, 35.733440, 34.954594>,  <30.592754, 36.009724, 35.196278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433836, 35.733440, 34.954594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723677, -0.169058, 0.669112,
		-0.564311, 0.703090, -0.432686,
		-0.397297, -0.690713, -0.604211,
		30.314648, 35.526226, 34.773331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900393, 36.085770, 35.188171>,  <30.592754, 36.009724, 35.196278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900393, 36.085770, 35.188171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929480, 35.707825, 35.060455>,  <29.946932, 35.481056, 34.983826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929480, 35.707825, 35.060455>,  <29.900393, 36.085770, 35.188171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929480, 35.707825, 35.060455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760821, -0.259553, 0.594797,
		-0.644875, 0.199673, -0.737745,
		0.072719, -0.944862, -0.319294,
		29.951296, 35.424366, 34.964668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285128, 35.887802, 35.137310>,  <29.900393, 36.085770, 35.188171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285128, 35.887802, 35.137310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458405, 35.527649, 35.121021>,  <29.562370, 35.311558, 35.111248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458405, 35.527649, 35.121021>,  <29.285128, 35.887802, 35.137310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458405, 35.527649, 35.121021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804379, -0.406596, 0.433191,
		-0.406596, -0.154895, -0.900382,
		-0.433191, 0.900382, 0.040726,
		29.588362, 35.257534, 35.108803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838049, 35.458958, 34.785713>,  <29.285128, 35.887802, 35.137310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838049, 35.458958, 34.785713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068041, 35.202740, 34.989319>,  <29.206036, 35.049007, 35.111485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068041, 35.202740, 34.989319>,  <28.838049, 35.458958, 34.785713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068041, 35.202740, 34.989319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817033, -0.482277, 0.316015,
		0.043065, -0.597587, -0.800646,
		0.574980, -0.640545, 0.509018,
		29.240536, 35.010574, 35.142025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591814, 34.744888, 34.609612>,  <28.838049, 35.458958, 34.785713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591814, 34.744888, 34.609612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811434, 34.710140, 34.942116>,  <28.943205, 34.689289, 35.141621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811434, 34.710140, 34.942116>,  <28.591814, 34.744888, 34.609612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811434, 34.710140, 34.942116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657995, -0.658194, 0.365818,
		0.515354, -0.747820, -0.418541,
		0.549047, -0.086872, 0.831264,
		28.976149, 34.684078, 35.191494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760780, 34.050728, 34.673813>,  <28.591814, 34.744888, 34.609612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760780, 34.050728, 34.673813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789228, 34.202824, 35.042675>,  <28.806297, 34.294079, 35.263992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789228, 34.202824, 35.042675>,  <28.760780, 34.050728, 34.673813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789228, 34.202824, 35.042675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647931, -0.685278, 0.332536,
		0.758372, -0.621140, 0.197630,
		0.071120, 0.380236, 0.922151,
		28.810564, 34.316895, 35.319321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838884, 33.452625, 35.154091>,  <28.760780, 34.050728, 34.673813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838884, 33.452625, 35.154091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724474, 33.747433, 35.399036>,  <28.655827, 33.924316, 35.546001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724474, 33.747433, 35.399036>,  <28.838884, 33.452625, 35.154091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724474, 33.747433, 35.399036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585000, -0.640455, 0.497587,
		0.758923, -0.215908, 0.614345,
		-0.286027, 0.737022, 0.612362,
		28.638666, 33.968540, 35.582745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686722, 33.104992, 35.761826>,  <28.838884, 33.452625, 35.154091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686722, 33.104992, 35.761826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494368, 33.448620, 35.831959>,  <28.378956, 33.654797, 35.874039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494368, 33.448620, 35.831959>,  <28.686722, 33.104992, 35.761826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494368, 33.448620, 35.831959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780145, -0.510505, 0.361605,
		0.400153, 0.037108, 0.915697,
		-0.480886, 0.859074, 0.175331,
		28.350101, 33.706341, 35.884560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593485, 33.035976, 36.490788>,  <28.686722, 33.104992, 35.761826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593485, 33.035976, 36.490788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321684, 33.280373, 36.328323>,  <28.158604, 33.427010, 36.230846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321684, 33.280373, 36.328323>,  <28.593485, 33.035976, 36.490788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321684, 33.280373, 36.328323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710545, -0.410133, 0.571766,
		0.182767, 0.677109, 0.712825,
		-0.679501, 0.610994, -0.406158,
		28.117834, 33.463673, 36.206474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986780, 33.726101, 36.556377>,  <28.593485, 33.035976, 36.490788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986780, 33.726101, 36.556377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295197, 33.703434, 36.810081>,  <29.480247, 33.689835, 36.962303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295197, 33.703434, 36.810081>,  <28.986780, 33.726101, 36.556377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295197, 33.703434, 36.810081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199003, 0.967588, -0.155474,
		-0.604889, 0.246096, 0.757328,
		0.771043, -0.056666, 0.634257,
		29.526510, 33.686436, 37.000359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032780, 34.222275, 37.097733>,  <28.986780, 33.726101, 36.556377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032780, 34.222275, 37.097733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417862, 34.120453, 37.061077>,  <29.648912, 34.059361, 37.039085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417862, 34.120453, 37.061077>,  <29.032780, 34.222275, 37.097733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417862, 34.120453, 37.061077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245283, 0.964138, -0.101364,
		0.114152, 0.075107, 0.990620,
		0.962707, -0.254553, -0.091636,
		29.706675, 34.044086, 37.033585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818270, 34.598530, 37.105656>,  <29.032780, 34.222275, 37.097733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818270, 34.598530, 37.105656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910378, 34.759167, 37.460213>,  <29.965643, 34.855549, 37.672947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910378, 34.759167, 37.460213>,  <29.818270, 34.598530, 37.105656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910378, 34.759167, 37.460213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536731, -0.707384, 0.459922,
		0.811724, -0.581662, 0.052659,
		0.230268, 0.401594, 0.886396,
		29.979458, 34.879646, 37.726131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171967, 34.122211, 37.650040>,  <29.818270, 34.598530, 37.105656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171967, 34.122211, 37.650040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936888, 34.395714, 37.823055>,  <29.795841, 34.559814, 37.926865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936888, 34.395714, 37.823055>,  <30.171967, 34.122211, 37.650040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936888, 34.395714, 37.823055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555866, -0.729681, 0.398220,
		0.587901, -0.006401, 0.808908,
		-0.587695, 0.683758, 0.432538,
		29.760580, 34.600842, 37.952816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500860, 34.507404, 38.282970>,  <30.171967, 34.122211, 37.650040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500860, 34.507404, 38.282970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258425, 34.695755, 38.539387>,  <30.112963, 34.808765, 38.693237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258425, 34.695755, 38.539387>,  <30.500860, 34.507404, 38.282970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258425, 34.695755, 38.539387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723976, -0.007192, 0.689788,
		0.329413, 0.882172, -0.336542,
		-0.606091, 0.470873, 0.641040,
		30.076597, 34.837017, 38.731697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767441, 35.167393, 38.490410>,  <30.500860, 34.507404, 38.282970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767441, 35.167393, 38.490410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562675, 34.947906, 38.754791>,  <30.439817, 34.816216, 38.913422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562675, 34.947906, 38.754791>,  <30.767441, 35.167393, 38.490410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562675, 34.947906, 38.754791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811273, -0.055812, 0.581998,
		-0.282459, 0.834147, 0.473725,
		-0.511911, -0.548711, 0.660956,
		30.409101, 34.783295, 38.953079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718348, 35.516621, 39.137119>,  <30.767441, 35.167393, 38.490410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718348, 35.516621, 39.137119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683123, 35.124958, 39.210327>,  <30.661987, 34.889961, 39.254250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683123, 35.124958, 39.210327>,  <30.718348, 35.516621, 39.137119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683123, 35.124958, 39.210327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712929, 0.066363, 0.698089,
		-0.695685, 0.191952, 0.692226,
		-0.088061, -0.979158, 0.183016,
		30.656704, 34.831211, 39.265232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542364, 35.360207, 39.808746>,  <30.718348, 35.516621, 39.137119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542364, 35.360207, 39.808746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711941, 35.016407, 39.694527>,  <30.813686, 34.810127, 39.625996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711941, 35.016407, 39.694527>,  <30.542364, 35.360207, 39.808746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711941, 35.016407, 39.694527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677674, 0.091862, 0.729602,
		-0.600860, -0.502818, 0.621403,
		0.423940, -0.859497, -0.285550,
		30.839123, 34.758556, 39.608860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557774, 34.826645, 40.391365>,  <30.542364, 35.360207, 39.808746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557774, 34.826645, 40.391365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842070, 34.726269, 40.128494>,  <31.012648, 34.666042, 39.970772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842070, 34.726269, 40.128494>,  <30.557774, 34.826645, 40.391365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842070, 34.726269, 40.128494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687998, 0.053205, 0.723760,
		-0.146658, -0.966539, 0.210463,
		0.710739, -0.250943, -0.657174,
		31.055292, 34.650986, 39.931343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909523, 34.420818, 40.764507>,  <30.557774, 34.826645, 40.391365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909523, 34.420818, 40.764507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159437, 34.552097, 40.481121>,  <31.309385, 34.630863, 40.311089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159437, 34.552097, 40.481121>,  <30.909523, 34.420818, 40.764507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159437, 34.552097, 40.481121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688721, 0.195814, 0.698083,
		0.367838, -0.924090, -0.103696,
		0.624786, 0.328199, -0.708468,
		31.346872, 34.650558, 40.268581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476217, 34.031193, 40.818523>,  <30.909523, 34.420818, 40.764507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476217, 34.031193, 40.818523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557701, 34.405418, 40.703133>,  <31.606592, 34.629955, 40.633900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557701, 34.405418, 40.703133>,  <31.476217, 34.031193, 40.818523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557701, 34.405418, 40.703133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691369, 0.071155, 0.718989,
		0.693189, -0.345905, -0.632328,
		0.203709, 0.935568, -0.288472,
		31.618814, 34.686089, 40.616592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165436, 34.029049, 41.026241>,  <31.476217, 34.031193, 40.818523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165436, 34.029049, 41.026241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097183, 34.414169, 40.942432>,  <32.056232, 34.645241, 40.892147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097183, 34.414169, 40.942432>,  <32.165436, 34.029049, 41.026241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097183, 34.414169, 40.942432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593727, 0.270170, 0.757955,
		0.786367, 0.004929, -0.617740,
		-0.170631, 0.962800, -0.209527,
		32.045994, 34.703011, 40.879574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805542, 34.326767, 41.020424>,  <32.165436, 34.029049, 41.026241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805542, 34.326767, 41.020424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538811, 34.612034, 41.106899>,  <32.378773, 34.783192, 41.158787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538811, 34.612034, 41.106899>,  <32.805542, 34.326767, 41.020424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538811, 34.612034, 41.106899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520503, 0.238112, 0.819987,
		0.533308, 0.659318, -0.529983,
		-0.666828, 0.713163, 0.216190,
		32.338760, 34.825981, 41.171757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174480, 34.903404, 41.259083>,  <32.805542, 34.326767, 41.020424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174480, 34.903404, 41.259083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809273, 34.971512, 41.407352>,  <32.590149, 35.012375, 41.496315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809273, 34.971512, 41.407352>,  <33.174480, 34.903404, 41.259083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809273, 34.971512, 41.407352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402754, 0.520273, 0.753064,
		-0.064630, 0.836855, -0.543597,
		-0.913024, 0.170266, 0.370672,
		32.535366, 35.022591, 41.518555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300583, 35.532738, 41.590084>,  <33.174480, 34.903404, 41.259083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300583, 35.532738, 41.590084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949257, 35.408413, 41.735386>,  <32.738461, 35.333817, 41.822567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949257, 35.408413, 41.735386>,  <33.300583, 35.532738, 41.590084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949257, 35.408413, 41.735386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202856, 0.445742, 0.871873,
		-0.432908, 0.839470, -0.328452,
		-0.878316, -0.310812, 0.363257,
		32.685760, 35.315170, 41.844364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891323, 36.158661, 41.953335>,  <33.300583, 35.532738, 41.590084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891323, 36.158661, 41.953335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777580, 35.798687, 42.085552>,  <32.709335, 35.582703, 42.164883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777580, 35.798687, 42.085552>,  <32.891323, 36.158661, 41.953335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777580, 35.798687, 42.085552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000334, 0.344684, 0.938719,
		-0.958718, 0.267043, -0.097713,
		-0.284359, -0.899934, 0.330544,
		32.692272, 35.528706, 42.184715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447670, 36.336105, 42.577946>,  <32.891323, 36.158661, 41.953335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447670, 36.336105, 42.577946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548584, 35.954914, 42.645096>,  <32.609131, 35.726200, 42.685387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548584, 35.954914, 42.645096>,  <32.447670, 36.336105, 42.577946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548584, 35.954914, 42.645096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138379, 0.207230, 0.968456,
		-0.957709, -0.221093, 0.184152,
		0.252281, -0.952982, 0.167871,
		32.624268, 35.669018, 42.695457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134956, 36.113968, 43.134926>,  <32.447670, 36.336105, 42.577946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134956, 36.113968, 43.134926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447140, 35.864365, 43.119476>,  <32.634449, 35.714603, 43.110207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447140, 35.864365, 43.119476>,  <32.134956, 36.113968, 43.134926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447140, 35.864365, 43.119476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300321, 0.319994, 0.898561,
		-0.548352, -0.712891, 0.437147,
		0.780460, -0.624012, -0.038626,
		32.681278, 35.677162, 43.107887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123360, 35.816616, 43.738575>,  <32.134956, 36.113968, 43.134926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123360, 35.816616, 43.738575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503445, 35.743572, 43.637581>,  <32.731495, 35.699745, 43.576984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503445, 35.743572, 43.637581>,  <32.123360, 35.816616, 43.738575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503445, 35.743572, 43.637581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264335, 0.043341, 0.963457,
		-0.164996, -0.982229, 0.089454,
		0.950212, -0.182612, -0.252486,
		32.788509, 35.688789, 43.561836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247410, 35.262836, 44.105103>,  <32.123360, 35.816616, 43.738575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247410, 35.262836, 44.105103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607906, 35.415447, 44.022938>,  <32.824203, 35.507015, 43.973640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607906, 35.415447, 44.022938>,  <32.247410, 35.262836, 44.105103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607906, 35.415447, 44.022938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186792, 0.085653, 0.978658,
		0.390980, -0.920380, 0.005928,
		0.901246, 0.381528, -0.205408,
		32.878281, 35.529907, 43.961315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688030, 34.982307, 44.621605>,  <32.247410, 35.262836, 44.105103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688030, 34.982307, 44.621605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927917, 35.271046, 44.483456>,  <33.071850, 35.444290, 44.400566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927917, 35.271046, 44.483456>,  <32.688030, 34.982307, 44.621605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927917, 35.271046, 44.483456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305334, 0.192521, 0.932581,
		0.739669, -0.664738, -0.104945,
		0.599717, 0.721844, -0.345369,
		33.107834, 35.487598, 44.379845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239346, 34.753353, 44.810703>,  <32.688030, 34.982307, 44.621605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239346, 34.753353, 44.810703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299316, 35.144394, 44.751633>,  <33.335300, 35.379021, 44.716190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299316, 35.144394, 44.751633>,  <33.239346, 34.753353, 44.810703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299316, 35.144394, 44.751633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242048, 0.108529, 0.964176,
		0.958610, -0.180304, -0.220355,
		0.149930, 0.977605, -0.147679,
		33.344296, 35.437675, 44.707329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841827, 34.994045, 45.201618>,  <33.239346, 34.753353, 44.810703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841827, 34.994045, 45.201618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647530, 35.331448, 45.109932>,  <33.530949, 35.533890, 45.054920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647530, 35.331448, 45.109932>,  <33.841827, 34.994045, 45.201618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647530, 35.331448, 45.109932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229044, 0.375895, 0.897910,
		0.843556, 0.383659, -0.375791,
		-0.485749, 0.843510, -0.229214,
		33.501804, 35.584499, 45.041168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301598, 35.512142, 45.321022>,  <33.841827, 34.994045, 45.201618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301598, 35.512142, 45.321022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942486, 35.684765, 45.356243>,  <33.727020, 35.788338, 45.377377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942486, 35.684765, 45.356243>,  <34.301598, 35.512142, 45.321022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942486, 35.684765, 45.356243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283184, 0.412459, 0.865843,
		0.337344, 0.802269, -0.492507,
		-0.897778, 0.431557, 0.088049,
		33.673153, 35.814232, 45.382656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381294, 36.163685, 45.590733>,  <34.301598, 35.512142, 45.321022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381294, 36.163685, 45.590733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997101, 36.082222, 45.666615>,  <33.766582, 36.033344, 45.712143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997101, 36.082222, 45.666615>,  <34.381294, 36.163685, 45.590733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997101, 36.082222, 45.666615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082065, 0.444078, 0.892222,
		-0.265955, 0.872535, -0.409817,
		-0.960486, -0.203659, 0.189709,
		33.708954, 36.021126, 45.723526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086456, 36.803772, 45.909916>,  <34.381294, 36.163685, 45.590733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086456, 36.803772, 45.909916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824604, 36.511906, 45.988945>,  <33.667492, 36.336784, 46.036362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824604, 36.511906, 45.988945>,  <34.086456, 36.803772, 45.909916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824604, 36.511906, 45.988945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002603, 0.263534, 0.964647,
		-0.755941, 0.630977, -0.174418,
		-0.654634, -0.729670, 0.197573,
		33.628212, 36.293003, 46.048218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577988, 37.144215, 46.170395>,  <34.086456, 36.803772, 45.909916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577988, 37.144215, 46.170395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507179, 36.766396, 46.281029>,  <33.464695, 36.539703, 46.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507179, 36.766396, 46.281029>,  <33.577988, 37.144215, 46.170395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507179, 36.766396, 46.281029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289970, 0.318605, 0.902446,
		-0.940521, 0.079552, -0.330290,
		-0.177024, -0.944544, 0.276587,
		33.454071, 36.483032, 46.364006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905525, 37.121235, 46.531849>,  <33.577988, 37.144215, 46.170395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905525, 37.121235, 46.531849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138039, 36.811790, 46.632751>,  <33.277546, 36.626122, 46.693291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138039, 36.811790, 46.632751>,  <32.905525, 37.121235, 46.531849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138039, 36.811790, 46.632751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269326, 0.109614, 0.956791,
		-0.767838, -0.624103, -0.144638,
		0.581282, -0.773615, 0.252253,
		33.312424, 36.579704, 46.708427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608486, 36.874004, 47.081112>,  <32.905525, 37.121235, 46.531849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608486, 36.874004, 47.081112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962505, 36.690411, 47.112167>,  <33.174915, 36.580254, 47.130802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962505, 36.690411, 47.112167>,  <32.608486, 36.874004, 47.081112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962505, 36.690411, 47.112167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008388, 0.151035, 0.988493,
		-0.465425, -0.875515, 0.129823,
		0.885048, -0.458980, 0.077639,
		33.228020, 36.552715, 47.135460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541298, 36.357616, 47.580376>,  <32.608486, 36.874004, 47.081112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541298, 36.357616, 47.580376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929569, 36.452217, 47.563171>,  <33.162533, 36.508976, 47.552849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929569, 36.452217, 47.563171>,  <32.541298, 36.357616, 47.580376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929569, 36.452217, 47.563171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001537, 0.172798, 0.984956,
		0.240379, -0.956141, 0.167368,
		0.970678, 0.236506, -0.043007,
		33.220772, 36.523167, 47.550270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761269, 36.060764, 48.148613>,  <32.541298, 36.357616, 47.580376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761269, 36.060764, 48.148613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075394, 36.296856, 48.073872>,  <33.263866, 36.438511, 48.029026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075394, 36.296856, 48.073872>,  <32.761269, 36.060764, 48.148613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075394, 36.296856, 48.073872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048188, 0.242629, 0.968922,
		0.617225, -0.769907, 0.162096,
		0.785309, 0.590232, -0.186857,
		33.310986, 36.473927, 48.017815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194813, 36.096653, 48.686501>,  <32.761269, 36.060764, 48.148613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194813, 36.096653, 48.686501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375893, 36.426136, 48.549931>,  <33.484543, 36.623825, 48.467987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375893, 36.426136, 48.549931>,  <33.194813, 36.096653, 48.686501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375893, 36.426136, 48.549931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225944, 0.264440, 0.937561,
		0.862559, -0.501580, -0.066398,
		0.452704, 0.823704, -0.341424,
		33.511703, 36.673248, 48.447502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842449, 36.130386, 48.935680>,  <33.194813, 36.096653, 48.686501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842449, 36.130386, 48.935680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747364, 36.510559, 48.855511>,  <33.690311, 36.738663, 48.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747364, 36.510559, 48.855511>,  <33.842449, 36.130386, 48.935680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747364, 36.510559, 48.855511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286994, 0.265855, 0.920302,
		0.927968, 0.161250, -0.335966,
		-0.237717, 0.950431, -0.200428,
		33.676048, 36.795689, 48.795383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423077, 36.571571, 48.960583>,  <33.842449, 36.130386, 48.935680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423077, 36.571571, 48.960583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110973, 36.813980, 49.022469>,  <33.923714, 36.959427, 49.059601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110973, 36.813980, 49.022469>,  <34.423077, 36.571571, 48.960583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110973, 36.813980, 49.022469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448946, 0.370423, 0.813163,
		0.435487, 0.703933, -0.561096,
		-0.780256, 0.606023, 0.154713,
		33.876896, 36.995789, 49.068882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682919, 37.163319, 48.926781>,  <34.423077, 36.571571, 48.960583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682919, 37.163319, 48.926781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354259, 37.225620, 49.146099>,  <34.157063, 37.263000, 49.277691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354259, 37.225620, 49.146099>,  <34.682919, 37.163319, 48.926781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354259, 37.225620, 49.146099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566590, 0.328094, 0.755864,
		-0.062164, 0.931716, -0.357827,
		-0.821652, 0.155753, 0.548296,
		34.107765, 37.272346, 49.310589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900826, 37.590305, 49.497555>,  <34.682919, 37.163319, 48.926781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900826, 37.590305, 49.497555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539181, 37.503212, 49.644615>,  <34.322193, 37.450954, 49.732853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539181, 37.503212, 49.644615>,  <34.900826, 37.590305, 49.497555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539181, 37.503212, 49.644615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307329, 0.266410, 0.913550,
		-0.296856, 0.938945, -0.173950,
		-0.904116, -0.217733, 0.367651,
		34.267944, 37.437893, 49.754910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679935, 38.277218, 49.778152>,  <34.900826, 37.590305, 49.497555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679935, 38.277218, 49.778152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464947, 37.973461, 49.924816>,  <34.335953, 37.791206, 50.012814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464947, 37.973461, 49.924816>,  <34.679935, 38.277218, 49.778152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464947, 37.973461, 49.924816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335340, 0.206473, 0.919193,
		-0.773736, 0.617000, 0.143681,
		-0.537476, -0.759395, 0.366660,
		34.303703, 37.745644, 50.034813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261139, 38.614384, 50.301277>,  <34.679935, 38.277218, 49.778152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261139, 38.614384, 50.301277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289658, 38.220966, 50.367676>,  <34.306767, 37.984917, 50.407513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289658, 38.220966, 50.367676>,  <34.261139, 38.614384, 50.301277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289658, 38.220966, 50.367676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174272, 0.176140, 0.968816,
		-0.982113, -0.040142, 0.183962,
		0.071293, -0.983546, 0.165994,
		34.311047, 37.925903, 50.417473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922943, 38.580292, 50.860806>,  <34.261139, 38.614384, 50.301277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922943, 38.580292, 50.860806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131115, 38.239822, 50.888081>,  <34.256020, 38.035542, 50.904446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131115, 38.239822, 50.888081>,  <33.922943, 38.580292, 50.860806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131115, 38.239822, 50.888081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095808, 0.137551, 0.985850,
		-0.848512, -0.506534, 0.153136,
		0.520431, -0.851177, 0.068183,
		34.287243, 37.984470, 50.908535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580559, 38.110126, 51.370716>,  <33.922943, 38.580292, 50.860806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580559, 38.110126, 51.370716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944904, 37.953278, 51.319221>,  <34.163513, 37.859169, 51.288326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944904, 37.953278, 51.319221>,  <33.580559, 38.110126, 51.370716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944904, 37.953278, 51.319221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096300, -0.101386, 0.990175,
		-0.401319, -0.914310, -0.054588,
		0.910862, -0.392119, -0.128736,
		34.218163, 37.835644, 51.280602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566750, 37.511131, 51.804192>,  <33.580559, 38.110126, 51.370716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566750, 37.511131, 51.804192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950687, 37.604172, 51.741447>,  <34.181049, 37.659996, 51.703800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950687, 37.604172, 51.741447>,  <33.566750, 37.511131, 51.804192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950687, 37.604172, 51.741447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229116, -0.327245, 0.916742,
		0.161905, -0.915864, -0.367396,
		0.959840, 0.232602, -0.156856,
		34.238640, 37.673954, 51.694389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020405, 36.915081, 51.899990>,  <33.566750, 37.511131, 51.804192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020405, 36.915081, 51.899990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205662, 37.263477, 51.965569>,  <34.316814, 37.472515, 52.004917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205662, 37.263477, 51.965569>,  <34.020405, 36.915081, 51.899990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205662, 37.263477, 51.965569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145613, -0.257246, 0.955312,
		0.874241, -0.418572, -0.245968,
		0.463141, 0.870989, 0.163945,
		34.344604, 37.524773, 52.014751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522427, 36.701694, 52.285946>,  <34.020405, 36.915081, 51.899990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522427, 36.701694, 52.285946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553848, 37.094547, 52.354359>,  <34.572701, 37.330257, 52.395405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553848, 37.094547, 52.354359>,  <34.522427, 36.701694, 52.285946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553848, 37.094547, 52.354359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280689, -0.186408, 0.941523,
		0.956579, -0.025953, -0.290315,
		0.078553, 0.982130, 0.171029,
		34.577415, 37.389187, 52.405666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195980, 36.858173, 52.582947>,  <34.522427, 36.701694, 52.285946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195980, 36.858173, 52.582947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954643, 37.158638, 52.690083>,  <34.809841, 37.338917, 52.754364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954643, 37.158638, 52.690083>,  <35.195980, 36.858173, 52.582947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954643, 37.158638, 52.690083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377860, -0.026497, 0.925484,
		0.702281, 0.659591, -0.267845,
		-0.603344, 0.751157, 0.267841,
		34.773640, 37.383984, 52.770435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618397, 37.182953, 52.988754>,  <35.195980, 36.858173, 52.582947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618397, 37.182953, 52.988754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257168, 37.323662, 53.087311>,  <35.040428, 37.408085, 53.146446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257168, 37.323662, 53.087311>,  <35.618397, 37.182953, 52.988754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257168, 37.323662, 53.087311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267590, 0.012119, 0.963457,
		0.335930, 0.936008, -0.105075,
		-0.903076, 0.351771, 0.246395,
		34.986244, 37.429192, 53.161228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785030, 37.729847, 53.343136>,  <35.618397, 37.182953, 52.988754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785030, 37.729847, 53.343136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406391, 37.660324, 53.451759>,  <35.179207, 37.618610, 53.516933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406391, 37.660324, 53.451759>,  <35.785030, 37.729847, 53.343136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406391, 37.660324, 53.451759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262159, 0.075391, 0.962075,
		-0.187687, 0.981890, -0.025800,
		-0.946597, -0.173805, 0.271562,
		35.122414, 37.608181, 53.533226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735748, 38.058327, 53.950001>,  <35.785030, 37.729847, 53.343136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735748, 38.058327, 53.950001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415123, 37.819363, 53.959770>,  <35.222748, 37.675983, 53.965633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415123, 37.819363, 53.959770>,  <35.735748, 38.058327, 53.950001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415123, 37.819363, 53.959770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074001, -0.058585, 0.995536,
		-0.593312, 0.799793, 0.091168,
		-0.801564, -0.597410, 0.024426,
		35.174652, 37.640141, 53.967098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432884, 38.317631, 54.504875>,  <35.735748, 38.058327, 53.950001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432884, 38.317631, 54.504875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287674, 37.947487, 54.461182>,  <35.200550, 37.725403, 54.434967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287674, 37.947487, 54.461182>,  <35.432884, 38.317631, 54.504875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287674, 37.947487, 54.461182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116152, -0.161253, 0.980054,
		-0.924513, 0.343093, 0.166021,
		-0.363021, -0.925357, -0.109229,
		35.178768, 37.669880, 54.428413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901012, 38.138481, 54.947136>,  <35.432884, 38.317631, 54.504875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901012, 38.138481, 54.947136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141357, 37.822300, 54.899540>,  <35.285564, 37.632591, 54.870983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141357, 37.822300, 54.899540>,  <34.901012, 38.138481, 54.947136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141357, 37.822300, 54.899540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062571, -0.101893, 0.992826,
		-0.796903, -0.603993, -0.011763,
		0.600858, -0.790450, -0.118991,
		35.321613, 37.585163, 54.863842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203606, 37.966282, 55.573906>,  <34.901012, 38.138481, 54.947136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203606, 37.966282, 55.573906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314217, 37.635216, 55.378563>,  <35.380585, 37.436577, 55.261356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314217, 37.635216, 55.378563>,  <35.203606, 37.966282, 55.573906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314217, 37.635216, 55.378563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315233, -0.401936, 0.859695,
		-0.907832, -0.391679, 0.149761,
		0.276530, -0.827669, -0.488360,
		35.397175, 37.386913, 55.232056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884182, 37.519581, 55.983143>,  <35.203606, 37.966282, 55.573906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884182, 37.519581, 55.983143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167912, 37.316811, 55.787231>,  <35.338150, 37.195148, 55.669685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167912, 37.316811, 55.787231>,  <34.884182, 37.519581, 55.983143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167912, 37.316811, 55.787231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277338, -0.438088, 0.855080,
		-0.648030, -0.742363, -0.170157,
		0.709324, -0.506927, -0.489780,
		35.380707, 37.164734, 55.640297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965050, 36.777489, 56.115879>,  <34.884182, 37.519581, 55.983143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965050, 36.777489, 56.115879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334221, 36.899990, 56.022568>,  <35.555721, 36.973492, 55.966579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334221, 36.899990, 56.022568>,  <34.965050, 36.777489, 56.115879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334221, 36.899990, 56.022568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344561, -0.386826, 0.855362,
		0.171722, -0.869812, -0.462534,
		0.922924, 0.306256, -0.233277,
		35.611099, 36.991867, 55.952583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331482, 36.187237, 56.294525>,  <34.965050, 36.777489, 56.115879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331482, 36.187237, 56.294525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352886, 35.955894, 56.620136>,  <35.365726, 35.817089, 56.815502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352886, 35.955894, 56.620136>,  <35.331482, 36.187237, 56.294525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352886, 35.955894, 56.620136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017721, -0.815617, -0.578320,
		0.998410, 0.016520, -0.053892,
		0.053509, -0.578356, 0.814028,
		35.368938, 35.782387, 56.864346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965710, 35.724045, 56.092560>,  <35.331482, 36.187237, 56.294525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965710, 35.724045, 56.092560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704018, 35.553467, 56.342400>,  <35.547001, 35.451118, 56.492302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704018, 35.553467, 56.342400>,  <35.965710, 35.724045, 56.092560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704018, 35.553467, 56.342400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033580, -0.841432, -0.539319,
		0.755551, -0.331864, 0.564809,
		-0.654229, -0.426449, 0.624601,
		35.507748, 35.425533, 56.529781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159527, 35.009060, 56.231613>,  <35.965710, 35.724045, 56.092560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159527, 35.009060, 56.231613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795937, 35.003273, 56.398254>,  <35.577782, 34.999802, 56.498241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795937, 35.003273, 56.398254>,  <36.159527, 35.009060, 56.231613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795937, 35.003273, 56.398254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217485, -0.836140, -0.503557,
		0.355628, -0.548325, 0.756880,
		-0.908971, -0.014469, 0.416607,
		35.523247, 34.998932, 56.523235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974434, 34.266438, 56.425644>,  <36.159527, 35.009060, 56.231613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974434, 34.266438, 56.425644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656944, 34.499878, 56.357040>,  <35.466450, 34.639942, 56.315876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656944, 34.499878, 56.357040>,  <35.974434, 34.266438, 56.425644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656944, 34.499878, 56.357040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467986, -0.766002, -0.440714,
		-0.388580, -0.269539, 0.881110,
		-0.793722, 0.583600, -0.171513,
		35.418827, 34.674957, 56.305588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367867, 34.234276, 56.738667>,  <35.974434, 34.266438, 56.425644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367867, 34.234276, 56.738667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288425, 34.341076, 56.361462>,  <35.240761, 34.405155, 56.135139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288425, 34.341076, 56.361462>,  <35.367867, 34.234276, 56.738667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288425, 34.341076, 56.361462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480829, -0.864969, -0.143641,
		-0.854026, 0.424898, 0.300169,
		-0.198604, 0.267004, -0.943008,
		35.228844, 34.421177, 56.078560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673561, 34.162445, 56.514339>,  <35.367867, 34.234276, 56.738667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673561, 34.162445, 56.514339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850147, 34.150509, 56.155624>,  <34.956097, 34.143349, 55.940395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850147, 34.150509, 56.155624>,  <34.673561, 34.162445, 56.514339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850147, 34.150509, 56.155624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363639, -0.919642, -0.148409,
		-0.820291, 0.391623, -0.416839,
		0.441463, -0.029840, -0.896783,
		34.982586, 34.141556, 55.886589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614574, 34.588646, 55.872864>,  <34.673561, 34.162445, 56.514339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614574, 34.588646, 55.872864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613590, 34.954082, 55.710209>,  <34.612999, 35.173344, 55.612617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613590, 34.954082, 55.710209>,  <34.614574, 34.588646, 55.872864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613590, 34.954082, 55.710209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346805, -0.380620, -0.857236,
		-0.937934, -0.143134, -0.315900,
		-0.002461, 0.913587, -0.406636,
		34.612850, 35.228157, 55.588219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108829, 34.599342, 55.277699>,  <34.614574, 34.588646, 55.872864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108829, 34.599342, 55.277699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323097, 34.928860, 55.203487>,  <34.451656, 35.126572, 55.158962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323097, 34.928860, 55.203487>,  <34.108829, 34.599342, 55.277699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323097, 34.928860, 55.203487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009474, -0.213829, -0.976825,
		-0.844377, 0.525009, -0.106736,
		0.535665, 0.823798, -0.185527,
		34.483795, 35.175999, 55.147831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955750, 34.702415, 54.603676>,  <34.108829, 34.599342, 55.277699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955750, 34.702415, 54.603676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273849, 34.944714, 54.593533>,  <34.464710, 35.090092, 54.587444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273849, 34.944714, 54.593533>,  <33.955750, 34.702415, 54.603676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273849, 34.944714, 54.593533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113226, -0.189486, -0.975333,
		-0.595609, 0.772767, -0.219276,
		0.795255, 0.605745, -0.025362,
		34.512424, 35.126438, 54.585922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916138, 35.187389, 54.012772>,  <33.955750, 34.702415, 54.603676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916138, 35.187389, 54.012772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308910, 35.157978, 54.082516>,  <34.544575, 35.140331, 54.124363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308910, 35.157978, 54.082516>,  <33.916138, 35.187389, 54.012772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308910, 35.157978, 54.082516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166663, -0.100336, -0.980895,
		0.089620, 0.992233, -0.086268,
		0.981933, -0.073530, 0.174361,
		34.603489, 35.135918, 54.134823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147648, 35.392448, 53.319206>,  <33.916138, 35.187389, 54.012772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147648, 35.392448, 53.319206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449154, 35.219841, 53.517452>,  <34.630058, 35.116276, 53.636398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449154, 35.219841, 53.517452>,  <34.147648, 35.392448, 53.319206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449154, 35.219841, 53.517452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221349, -0.543397, -0.809768,
		0.618741, 0.720079, -0.314079,
		0.753767, -0.431515, 0.495611,
		34.675285, 35.090385, 53.666134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667889, 35.375210, 52.849117>,  <34.147648, 35.392448, 53.319206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667889, 35.375210, 52.849117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766796, 35.098610, 53.120613>,  <34.826141, 34.932652, 53.283512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766796, 35.098610, 53.120613>,  <34.667889, 35.375210, 52.849117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766796, 35.098610, 53.120613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106506, -0.676850, -0.728375,
		0.963076, 0.252393, -0.093714,
		0.247267, -0.691500, 0.678739,
		34.840977, 34.891159, 53.324234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318565, 35.163395, 52.731403>,  <34.667889, 35.375210, 52.849117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318565, 35.163395, 52.731403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123539, 34.854946, 52.895187>,  <35.006523, 34.669876, 52.993458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123539, 34.854946, 52.895187>,  <35.318565, 35.163395, 52.731403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123539, 34.854946, 52.895187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192564, -0.552410, -0.811025,
		0.851588, -0.316577, 0.417824,
		-0.487562, -0.771118, 0.409464,
		34.977272, 34.623611, 53.018028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775829, 34.699848, 52.485943>,  <35.318565, 35.163395, 52.731403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775829, 34.699848, 52.485943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485115, 34.460777, 52.621334>,  <35.310688, 34.317333, 52.702568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485115, 34.460777, 52.621334>,  <35.775829, 34.699848, 52.485943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485115, 34.460777, 52.621334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157480, -0.624649, -0.764862,
		0.668569, -0.502587, 0.548107,
		-0.726784, -0.597679, 0.338474,
		35.267078, 34.281475, 52.722878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973083, 34.004059, 52.402359>,  <35.775829, 34.699848, 52.485943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973083, 34.004059, 52.402359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576092, 33.959862, 52.423450>,  <35.337898, 33.933342, 52.436108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576092, 33.959862, 52.423450>,  <35.973083, 34.004059, 52.402359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576092, 33.959862, 52.423450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038179, -0.688554, -0.724180,
		0.116326, -0.716718, 0.687592,
		-0.992477, -0.110492, 0.052733,
		35.278347, 33.926716, 52.439270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869694, 33.326069, 52.161633>,  <35.973083, 34.004059, 52.402359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869694, 33.326069, 52.161633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496700, 33.468616, 52.138062>,  <35.272903, 33.554146, 52.123920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496700, 33.468616, 52.138062>,  <35.869694, 33.326069, 52.161633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496700, 33.468616, 52.138062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222425, -0.695050, -0.683690,
		-0.284601, -0.624425, 0.727390,
		-0.932485, 0.356369, -0.058924,
		35.216953, 33.575527, 52.120384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407528, 32.786770, 52.378296>,  <35.869694, 33.326069, 52.161633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407528, 32.786770, 52.378296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226162, 33.060287, 52.149616>,  <35.117344, 33.224400, 52.012409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226162, 33.060287, 52.149616>,  <35.407528, 32.786770, 52.378296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226162, 33.060287, 52.149616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026291, -0.630885, -0.775431,
		-0.890914, -0.366618, 0.268072,
		-0.453410, 0.683794, -0.571703,
		35.090137, 33.265427, 51.978104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147556, 32.366028, 51.775845>,  <35.407528, 32.786770, 52.378296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147556, 32.366028, 51.775845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128544, 32.747509, 51.657055>,  <35.117138, 32.976398, 51.585781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128544, 32.747509, 51.657055>,  <35.147556, 32.366028, 51.775845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128544, 32.747509, 51.657055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010973, -0.296793, -0.954879,
		-0.998810, -0.048642, 0.003641,
		-0.047527, 0.953702, -0.296973,
		35.114285, 33.033619, 51.567963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619259, 32.326645, 51.203815>,  <35.147556, 32.366028, 51.775845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619259, 32.326645, 51.203815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827984, 32.664436, 51.155540>,  <34.953220, 32.867111, 51.126575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827984, 32.664436, 51.155540>,  <34.619259, 32.326645, 51.203815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827984, 32.664436, 51.155540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078514, -0.093329, -0.992535,
		-0.849437, 0.527397, 0.017603,
		0.521817, 0.844478, -0.120685,
		34.984528, 32.917778, 51.119335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189240, 32.664684, 50.704716>,  <34.619259, 32.326645, 51.203815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189240, 32.664684, 50.704716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541725, 32.853741, 50.708168>,  <34.753216, 32.967175, 50.710239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541725, 32.853741, 50.708168>,  <34.189240, 32.664684, 50.704716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541725, 32.853741, 50.708168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120408, 0.242068, -0.962759,
		-0.457128, 0.847357, 0.270224,
		0.881213, 0.472641, 0.008628,
		34.806087, 32.995533, 50.710758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093788, 33.354900, 50.424164>,  <34.189240, 32.664684, 50.704716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093788, 33.354900, 50.424164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480282, 33.260162, 50.383572>,  <34.712177, 33.203320, 50.359215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480282, 33.260162, 50.383572>,  <34.093788, 33.354900, 50.424164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480282, 33.260162, 50.383572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071080, 0.133560, -0.988488,
		0.247669, 0.962324, 0.112215,
		0.966234, -0.236842, -0.101481,
		34.770153, 33.189110, 50.353127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426598, 33.878426, 50.042679>,  <34.093788, 33.354900, 50.424164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426598, 33.878426, 50.042679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625542, 33.533104, 50.008419>,  <34.744907, 33.325909, 49.987862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625542, 33.533104, 50.008419>,  <34.426598, 33.878426, 50.042679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625542, 33.533104, 50.008419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029150, 0.115302, -0.992902,
		0.867055, 0.491333, 0.082512,
		0.497359, -0.863306, -0.085651,
		34.774750, 33.274113, 49.982723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784115, 33.997108, 49.458542>,  <34.426598, 33.878426, 50.042679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784115, 33.997108, 49.458542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821877, 33.600628, 49.495651>,  <34.844532, 33.362740, 49.517918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821877, 33.600628, 49.495651>,  <34.784115, 33.997108, 49.458542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821877, 33.600628, 49.495651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089617, -0.101270, -0.990814,
		0.991492, 0.085223, -0.098389,
		0.094404, -0.991202, 0.092771,
		34.850197, 33.303268, 49.523483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317684, 33.829754, 49.063881>,  <34.784115, 33.997108, 49.458542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317684, 33.829754, 49.063881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107742, 33.489399, 49.072964>,  <34.981777, 33.285187, 49.078415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107742, 33.489399, 49.072964>,  <35.317684, 33.829754, 49.063881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107742, 33.489399, 49.072964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077171, -0.074140, -0.994258,
		0.847686, -0.520088, 0.104577,
		-0.524855, -0.850889, 0.022712,
		34.950287, 33.234131, 49.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761292, 33.242210, 48.810989>,  <35.317684, 33.829754, 49.063881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761292, 33.242210, 48.810989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388756, 33.103794, 48.765636>,  <35.165234, 33.020744, 48.738426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388756, 33.103794, 48.765636>,  <35.761292, 33.242210, 48.810989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388756, 33.103794, 48.765636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194348, -0.209051, -0.958398,
		0.307944, -0.914633, 0.261951,
		-0.931343, -0.346042, -0.113381,
		35.109352, 32.999981, 48.731621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713364, 32.727661, 48.275036>,  <35.761292, 33.242210, 48.810989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713364, 32.727661, 48.275036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333630, 32.845936, 48.317612>,  <35.105789, 32.916901, 48.343155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333630, 32.845936, 48.317612>,  <35.713364, 32.727661, 48.275036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333630, 32.845936, 48.317612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139453, -0.092851, -0.985866,
		-0.281626, -0.950761, 0.129382,
		-0.949336, 0.295688, 0.106437,
		35.048828, 32.934643, 48.349545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356098, 32.324886, 47.861717>,  <35.713364, 32.727661, 48.275036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356098, 32.324886, 47.861717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107861, 32.635021, 47.908550>,  <34.958916, 32.821102, 47.936649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107861, 32.635021, 47.908550>,  <35.356098, 32.324886, 47.861717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107861, 32.635021, 47.908550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206374, -0.017453, -0.978318,
		-0.756485, -0.631304, 0.170841,
		-0.620597, 0.775339, 0.117081,
		34.921680, 32.867622, 47.943676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868149, 32.135155, 47.480759>,  <35.356098, 32.324886, 47.861717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868149, 32.135155, 47.480759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798801, 32.526009, 47.529995>,  <34.757195, 32.760521, 47.559536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798801, 32.526009, 47.529995>,  <34.868149, 32.135155, 47.480759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798801, 32.526009, 47.529995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255535, 0.076073, -0.963802,
		-0.951128, -0.198546, 0.236504,
		-0.173368, 0.977135, 0.123090,
		34.746792, 32.819149, 47.566921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294643, 32.111755, 47.127693>,  <34.868149, 32.135155, 47.480759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294643, 32.111755, 47.127693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406761, 32.495674, 47.121666>,  <34.474033, 32.726025, 47.118050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406761, 32.495674, 47.121666>,  <34.294643, 32.111755, 47.127693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406761, 32.495674, 47.121666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331347, 0.082006, -0.939938,
		-0.900912, 0.268455, 0.341011,
		0.280296, 0.959795, -0.015072,
		34.490849, 32.783611, 47.117146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695801, 32.543999, 47.104546>,  <34.294643, 32.111755, 47.127693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695801, 32.543999, 47.104546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010624, 32.751568, 46.971127>,  <34.199520, 32.876110, 46.891075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010624, 32.751568, 46.971127>,  <33.695801, 32.543999, 47.104546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010624, 32.751568, 46.971127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394683, 0.008059, -0.918782,
		-0.474087, 0.854784, 0.211152,
		0.787062, 0.518921, -0.333549,
		34.246742, 32.907246, 46.871063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457424, 32.994091, 46.546551>,  <33.695801, 32.543999, 47.104546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457424, 32.994091, 46.546551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850994, 32.985672, 46.475624>,  <34.087135, 32.980621, 46.433067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850994, 32.985672, 46.475624>,  <33.457424, 32.994091, 46.546551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850994, 32.985672, 46.475624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178559, -0.113268, -0.977388,
		0.000489, 0.993341, -0.115206,
		0.983929, -0.021049, -0.177315,
		34.146172, 32.979359, 46.422428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551056, 33.540310, 45.944500>,  <33.457424, 32.994091, 46.546551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551056, 33.540310, 45.944500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885979, 33.322258, 45.961281>,  <34.086933, 33.191429, 45.971352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885979, 33.322258, 45.961281>,  <33.551056, 33.540310, 45.944500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885979, 33.322258, 45.961281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043818, -0.143397, -0.988695,
		0.544980, 0.825999, -0.143953,
		0.837303, -0.545126, 0.041955,
		34.137169, 33.158722, 45.973869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088638, 33.865635, 45.444828>,  <33.551056, 33.540310, 45.944500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088638, 33.865635, 45.444828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204155, 33.485161, 45.488373>,  <34.273464, 33.256878, 45.514500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204155, 33.485161, 45.488373>,  <34.088638, 33.865635, 45.444828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204155, 33.485161, 45.488373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045711, -0.099876, -0.993949,
		0.956300, 0.292020, 0.014636,
		0.288791, -0.951183, 0.108859,
		34.290791, 33.199806, 45.521030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687927, 33.792973, 45.049221>,  <34.088638, 33.865635, 45.444828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687927, 33.792973, 45.049221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531208, 33.427040, 45.088387>,  <34.437176, 33.207481, 45.111885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531208, 33.427040, 45.088387>,  <34.687927, 33.792973, 45.049221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531208, 33.427040, 45.088387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230066, -0.200457, -0.952306,
		0.890823, -0.350583, 0.289008,
		-0.391796, -0.914827, 0.097915,
		34.413670, 33.152592, 45.117760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115692, 33.439541, 44.656162>,  <34.687927, 33.792973, 45.049221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115692, 33.439541, 44.656162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768833, 33.242958, 44.688480>,  <34.560719, 33.125008, 44.707870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768833, 33.242958, 44.688480>,  <35.115692, 33.439541, 44.656162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768833, 33.242958, 44.688480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114966, -0.355350, -0.927636,
		0.484599, -0.795110, 0.364641,
		-0.867148, -0.491453, 0.080792,
		34.508690, 33.095524, 44.712719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261944, 32.729855, 44.367825>,  <35.115692, 33.439541, 44.656162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261944, 32.729855, 44.367825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865635, 32.783791, 44.373409>,  <34.627850, 32.816154, 44.376762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865635, 32.783791, 44.373409>,  <35.261944, 32.729855, 44.367825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865635, 32.783791, 44.373409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058088, -0.329196, -0.942473,
		-0.122488, -0.934584, 0.333990,
		-0.990768, 0.134843, 0.013966,
		34.568405, 32.824245, 44.377598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002640, 31.979479, 44.217216>,  <35.261944, 32.729855, 44.367825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002640, 31.979479, 44.217216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765774, 32.293331, 44.143795>,  <34.623653, 32.481644, 44.099743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765774, 32.293331, 44.143795>,  <35.002640, 31.979479, 44.217216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765774, 32.293331, 44.143795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252531, -0.397012, -0.882389,
		-0.765223, -0.476167, 0.433241,
		-0.592166, 0.784631, -0.183556,
		34.588123, 32.528721, 44.088730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458733, 31.684593, 43.882389>,  <35.002640, 31.979479, 44.217216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458733, 31.684593, 43.882389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452217, 32.072407, 43.784626>,  <34.448307, 32.305096, 43.725967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452217, 32.072407, 43.784626>,  <34.458733, 31.684593, 43.882389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452217, 32.072407, 43.784626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283055, -0.238916, -0.928870,
		-0.958965, 0.054048, 0.278324,
		-0.016293, 0.969535, -0.244410,
		34.447330, 32.363266, 43.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898800, 31.666265, 43.440994>,  <34.458733, 31.684593, 43.882389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898800, 31.666265, 43.440994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093075, 32.010612, 43.380310>,  <34.209641, 32.217220, 43.343899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093075, 32.010612, 43.380310>,  <33.898800, 31.666265, 43.440994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093075, 32.010612, 43.380310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276428, -0.013389, -0.960941,
		-0.829273, 0.508655, 0.231465,
		0.485688, 0.860867, -0.151710,
		34.238781, 32.268871, 43.334797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432529, 32.142258, 43.183231>,  <33.898800, 31.666265, 43.440994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432529, 32.142258, 43.183231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794369, 32.266327, 43.066273>,  <34.011471, 32.340767, 42.996098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794369, 32.266327, 43.066273>,  <33.432529, 32.142258, 43.183231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794369, 32.266327, 43.066273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268176, -0.119080, -0.955982,
		-0.331336, 0.943194, -0.024539,
		0.904598, 0.310170, -0.292398,
		34.065750, 32.359379, 42.978554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261997, 32.454525, 42.563747>,  <33.432529, 32.142258, 43.183231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261997, 32.454525, 42.563747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658779, 32.406315, 42.548252>,  <33.896847, 32.377388, 42.538956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658779, 32.406315, 42.548252>,  <33.261997, 32.454525, 42.563747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658779, 32.406315, 42.548252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080275, -0.362196, -0.928639,
		0.097889, 0.924277, -0.368957,
		0.991955, -0.120521, -0.038741,
		33.956364, 32.370159, 42.536629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365471, 32.817749, 41.852768>,  <33.261997, 32.454525, 42.563747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365471, 32.817749, 41.852768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695328, 32.614922, 41.953049>,  <33.893242, 32.493225, 42.013218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695328, 32.614922, 41.953049>,  <33.365471, 32.817749, 41.852768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695328, 32.614922, 41.953049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012335, -0.459213, -0.888240,
		0.565523, 0.729387, -0.384941,
		0.824640, -0.507068, 0.250699,
		33.942719, 32.462803, 42.028259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906921, 33.002327, 41.348885>,  <33.365471, 32.817749, 41.852768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906921, 33.002327, 41.348885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946636, 32.642139, 41.518261>,  <33.970463, 32.426029, 41.619888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946636, 32.642139, 41.518261>,  <33.906921, 33.002327, 41.348885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946636, 32.642139, 41.518261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023559, -0.427556, -0.903682,
		0.994780, 0.079745, -0.063663,
		0.099283, -0.900464, 0.423446,
		33.976421, 32.372002, 41.645294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218822, 32.706890, 40.900078>,  <33.906921, 33.002327, 41.348885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218822, 32.706890, 40.900078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110676, 32.395664, 41.126892>,  <34.045788, 32.208931, 41.262981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110676, 32.395664, 41.126892>,  <34.218822, 32.706890, 40.900078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110676, 32.395664, 41.126892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100882, -0.562828, -0.820394,
		0.957459, -0.279007, 0.073676,
		-0.270363, -0.778061, 0.567031,
		34.029568, 32.162247, 41.297001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561451, 32.161243, 40.609955>,  <34.218822, 32.706890, 40.900078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561451, 32.161243, 40.609955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290508, 31.980070, 40.841831>,  <34.127945, 31.871367, 40.980957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290508, 31.980070, 40.841831>,  <34.561451, 32.161243, 40.609955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290508, 31.980070, 40.841831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250205, -0.599178, -0.760514,
		0.691803, -0.660179, 0.292529,
		-0.677353, -0.452934, 0.579694,
		34.087303, 31.844191, 41.015739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778915, 31.508223, 40.674370>,  <34.561451, 32.161243, 40.609955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778915, 31.508223, 40.674370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385460, 31.580261, 40.675808>,  <34.149387, 31.623486, 40.676670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385460, 31.580261, 40.675808>,  <34.778915, 31.508223, 40.674370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385460, 31.580261, 40.675808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126331, -0.675479, -0.726478,
		-0.128410, -0.715048, 0.687181,
		-0.983642, 0.180099, 0.003595,
		34.090366, 31.634291, 40.676888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313759, 31.857206, 41.193016>,  <34.778915, 31.508223, 40.674370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313759, 31.857206, 41.193016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679569, 31.718369, 41.109913>,  <35.899055, 31.635067, 41.060051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679569, 31.718369, 41.109913>,  <35.313759, 31.857206, 41.193016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679569, 31.718369, 41.109913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023544, -0.467058, 0.883913,
		-0.403834, -0.813256, -0.418966,
		0.914529, -0.347091, -0.207761,
		35.953926, 31.614241, 41.047585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366089, 31.130808, 41.440315>,  <35.313759, 31.857206, 41.193016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366089, 31.130808, 41.440315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743587, 31.255386, 41.395882>,  <35.970089, 31.330133, 41.369221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743587, 31.255386, 41.395882>,  <35.366089, 31.130808, 41.440315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743587, 31.255386, 41.395882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183815, -0.214879, 0.959187,
		0.274864, -0.925650, -0.260040,
		0.943748, 0.311445, -0.111086,
		36.026711, 31.348820, 41.362556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886169, 30.587210, 41.719822>,  <35.366089, 31.130808, 41.440315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886169, 30.587210, 41.719822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117081, 30.912746, 41.693249>,  <36.255627, 31.108068, 41.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117081, 30.912746, 41.693249>,  <35.886169, 30.587210, 41.719822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117081, 30.912746, 41.693249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420350, -0.226441, 0.878653,
		0.700042, -0.535149, -0.472818,
		0.577275, 0.813843, -0.066431,
		36.290264, 31.156898, 41.673321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629314, 30.307907, 41.858196>,  <35.886169, 30.587210, 41.719822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629314, 30.307907, 41.858196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621052, 30.703165, 41.919044>,  <36.616093, 30.940321, 41.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621052, 30.703165, 41.919044>,  <36.629314, 30.307907, 41.858196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621052, 30.703165, 41.919044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393565, -0.131832, 0.909795,
		0.919065, 0.078664, -0.386176,
		-0.020658, 0.988146, 0.152122,
		36.614853, 30.999609, 41.964680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297821, 30.566746, 42.218616>,  <36.629314, 30.307907, 41.858196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297821, 30.566746, 42.218616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981194, 30.799366, 42.293682>,  <36.791218, 30.938938, 42.338722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981194, 30.799366, 42.293682>,  <37.297821, 30.566746, 42.218616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981194, 30.799366, 42.293682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231528, 0.001212, 0.972827,
		0.565522, 0.813509, -0.135605,
		-0.791568, 0.581552, 0.187665,
		36.743725, 30.973831, 42.349983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688347, 31.133947, 42.467499>,  <37.297821, 30.566746, 42.218616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688347, 31.133947, 42.467499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307751, 31.127266, 42.590389>,  <37.079391, 31.123257, 42.664124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307751, 31.127266, 42.590389>,  <37.688347, 31.133947, 42.467499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307751, 31.127266, 42.590389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305125, 0.077238, 0.949175,
		-0.039584, 0.996873, -0.068395,
		-0.951489, -0.016703, 0.307228,
		37.022305, 31.122255, 42.682556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670723, 31.602169, 42.951977>,  <37.688347, 31.133947, 42.467499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670723, 31.602169, 42.951977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304886, 31.456684, 43.022659>,  <37.085384, 31.369392, 43.065067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304886, 31.456684, 43.022659>,  <37.670723, 31.602169, 42.951977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304886, 31.456684, 43.022659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060525, 0.308942, 0.949153,
		-0.399811, 0.878788, -0.260544,
		-0.914597, -0.363712, 0.176707,
		37.030506, 31.347570, 43.075672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110302, 32.161243, 43.225674>,  <37.670723, 31.602169, 42.951977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110302, 32.161243, 43.225674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034206, 31.790953, 43.356419>,  <36.988548, 31.568779, 43.434864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034206, 31.790953, 43.356419>,  <37.110302, 32.161243, 43.225674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034206, 31.790953, 43.356419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034637, 0.326405, 0.944595,
		-0.981126, 0.191025, -0.030032,
		-0.190244, -0.925726, 0.326860,
		36.977135, 31.513235, 43.454475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573666, 32.332455, 43.713352>,  <37.110302, 32.161243, 43.225674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573666, 32.332455, 43.713352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665756, 31.950375, 43.787739>,  <36.721008, 31.721127, 43.832371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665756, 31.950375, 43.787739>,  <36.573666, 32.332455, 43.713352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665756, 31.950375, 43.787739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051353, 0.202758, 0.977881,
		-0.971782, -0.215580, 0.095732,
		0.230222, -0.955204, 0.185966,
		36.734821, 31.663813, 43.843529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200939, 32.208691, 44.302402>,  <36.573666, 32.332455, 43.713352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200939, 32.208691, 44.302402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503319, 31.948563, 44.272408>,  <36.684746, 31.792486, 44.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503319, 31.948563, 44.272408>,  <36.200939, 32.208691, 44.302402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503319, 31.948563, 44.272408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182229, 0.099030, 0.978257,
		-0.628752, -0.753180, 0.193368,
		0.755952, -0.650318, -0.074986,
		36.730106, 31.753468, 44.249912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062130, 31.597519, 44.773533>,  <36.200939, 32.208691, 44.302402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062130, 31.597519, 44.773533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455284, 31.627193, 44.706078>,  <36.691177, 31.644999, 44.665604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455284, 31.627193, 44.706078>,  <36.062130, 31.597519, 44.773533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455284, 31.627193, 44.706078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161099, 0.098059, 0.982055,
		0.089368, -0.992413, 0.084434,
		0.982883, 0.074162, -0.168640,
		36.750149, 31.649448, 44.655483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361298, 31.194153, 45.281052>,  <36.062130, 31.597519, 44.773533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361298, 31.194153, 45.281052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653980, 31.438648, 45.160393>,  <36.829590, 31.585344, 45.087997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653980, 31.438648, 45.160393>,  <36.361298, 31.194153, 45.281052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653980, 31.438648, 45.160393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260718, 0.157908, 0.952413,
		0.629783, -0.775535, -0.043817,
		0.731710, 0.611238, -0.301644,
		36.873493, 31.622019, 45.069901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902370, 30.943123, 45.736504>,  <36.361298, 31.194153, 45.281052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902370, 30.943123, 45.736504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059368, 31.279469, 45.587429>,  <37.153568, 31.481276, 45.497986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059368, 31.279469, 45.587429>,  <36.902370, 30.943123, 45.736504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059368, 31.279469, 45.587429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374413, 0.224037, 0.899790,
		0.840096, -0.492703, -0.226896,
		0.392497, 0.840863, -0.372687,
		37.177116, 31.531727, 45.475624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652332, 30.978161, 45.851215>,  <36.902370, 30.943123, 45.736504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652332, 30.978161, 45.851215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548843, 31.359852, 45.791195>,  <37.486752, 31.588867, 45.755180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548843, 31.359852, 45.791195>,  <37.652332, 30.978161, 45.851215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548843, 31.359852, 45.791195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424533, 0.251861, 0.869677,
		0.867661, 0.161299, -0.470262,
		-0.258719, 0.954227, -0.150053,
		37.471230, 31.646120, 45.746178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259857, 31.507040, 46.089626>,  <37.652332, 30.978161, 45.851215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259857, 31.507040, 46.089626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912739, 31.703493, 46.119904>,  <37.704468, 31.821365, 46.138069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912739, 31.703493, 46.119904>,  <38.259857, 31.507040, 46.089626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912739, 31.703493, 46.119904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325069, 0.445840, 0.834000,
		0.375857, 0.748343, -0.546548,
		-0.867791, 0.491131, 0.075691,
		37.652401, 31.850832, 46.142612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447350, 32.224480, 46.374615>,  <38.259857, 31.507040, 46.089626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447350, 32.224480, 46.374615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053253, 32.173584, 46.420429>,  <37.816795, 32.143047, 46.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053253, 32.173584, 46.420429>,  <38.447350, 32.224480, 46.374615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053253, 32.173584, 46.420429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049165, 0.430579, 0.901213,
		-0.163985, 0.893539, -0.417967,
		-0.985237, -0.127236, 0.114539,
		37.757683, 32.135414, 46.454792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142136, 32.851349, 46.598965>,  <38.447350, 32.224480, 46.374615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142136, 32.851349, 46.598965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879555, 32.572300, 46.713783>,  <37.722004, 32.404873, 46.782673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879555, 32.572300, 46.713783>,  <38.142136, 32.851349, 46.598965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879555, 32.572300, 46.713783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016537, 0.393730, 0.919078,
		-0.754184, 0.598586, -0.270002,
		-0.656455, -0.697619, 0.287046,
		37.682617, 32.363014, 46.799896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762028, 33.169830, 47.048260>,  <38.142136, 32.851349, 46.598965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762028, 33.169830, 47.048260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671490, 32.789394, 47.132351>,  <37.617168, 32.561134, 47.182804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671490, 32.789394, 47.132351>,  <37.762028, 33.169830, 47.048260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671490, 32.789394, 47.132351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116254, 0.240662, 0.963622,
		-0.967086, 0.193667, -0.165040,
		-0.226341, -0.951091, 0.210226,
		37.603588, 32.504066, 47.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295513, 33.264435, 47.514717>,  <37.762028, 33.169830, 47.048260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295513, 33.264435, 47.514717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375206, 32.877655, 47.578354>,  <37.423023, 32.645588, 47.616535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375206, 32.877655, 47.578354>,  <37.295513, 33.264435, 47.514717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375206, 32.877655, 47.578354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143955, 0.131709, 0.980780,
		-0.969321, -0.218307, -0.112956,
		0.199234, -0.966951, 0.159095,
		37.434975, 32.587570, 47.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810154, 33.011974, 47.947521>,  <37.295513, 33.264435, 47.514717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810154, 33.011974, 47.947521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117950, 32.760101, 47.990215>,  <37.302628, 32.608978, 48.015831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117950, 32.760101, 47.990215>,  <36.810154, 33.011974, 47.947521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117950, 32.760101, 47.990215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029102, 0.201519, 0.979052,
		-0.637998, -0.750262, 0.173392,
		0.769488, -0.629680, 0.106734,
		37.348797, 32.571198, 48.022236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649406, 32.518894, 48.554153>,  <36.810154, 33.011974, 47.947521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649406, 32.518894, 48.554153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041798, 32.447296, 48.524082>,  <37.277233, 32.404339, 48.506039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041798, 32.447296, 48.524082>,  <36.649406, 32.518894, 48.554153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041798, 32.447296, 48.524082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088589, 0.068146, 0.993734,
		-0.172751, -0.981487, 0.082706,
		0.980974, -0.178995, -0.075177,
		37.336090, 32.393597, 48.501530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794163, 31.954315, 49.041725>,  <36.649406, 32.518894, 48.554153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794163, 31.954315, 49.041725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118160, 32.179062, 48.974529>,  <37.312557, 32.313911, 48.934212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118160, 32.179062, 48.974529>,  <36.794163, 31.954315, 49.041725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118160, 32.179062, 48.974529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092915, 0.159878, 0.982754,
		0.579033, -0.811632, 0.077294,
		0.809992, 0.561866, -0.167988,
		37.361156, 32.347622, 48.924133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326607, 31.740856, 49.488934>,  <36.794163, 31.954315, 49.041725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326607, 31.740856, 49.488934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435493, 32.111046, 49.383560>,  <37.500824, 32.333160, 49.320335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435493, 32.111046, 49.383560>,  <37.326607, 31.740856, 49.488934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435493, 32.111046, 49.383560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195764, 0.214778, 0.956842,
		0.942112, -0.312037, -0.122708,
		0.272215, 0.925475, -0.263431,
		37.517159, 32.388687, 49.304531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698936, 31.901392, 50.136497>,  <37.326607, 31.740856, 49.488934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698936, 31.901392, 50.136497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703911, 32.234333, 49.914856>,  <37.706894, 32.434097, 49.781872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703911, 32.234333, 49.914856>,  <37.698936, 31.901392, 50.136497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703911, 32.234333, 49.914856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184516, 0.542721, 0.819395,
		0.982751, -0.112432, -0.146833,
		0.012437, 0.832354, -0.554105,
		37.707642, 32.484039, 49.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416203, 32.238495, 50.273132>,  <37.698936, 31.901392, 50.136497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416203, 32.238495, 50.273132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122101, 32.475990, 50.142357>,  <37.945641, 32.618488, 50.063892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122101, 32.475990, 50.142357>,  <38.416203, 32.238495, 50.273132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122101, 32.475990, 50.142357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111994, 0.582141, 0.805338,
		0.668479, 0.555510, -0.494514,
		-0.735251, 0.593734, -0.326935,
		37.901527, 32.654110, 50.044277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682808, 32.927094, 50.260406>,  <38.416203, 32.238495, 50.273132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682808, 32.927094, 50.260406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286015, 32.976944, 50.268742>,  <38.047939, 33.006855, 50.273743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286015, 32.976944, 50.268742>,  <38.682808, 32.927094, 50.260406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286015, 32.976944, 50.268742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101326, 0.686082, 0.720433,
		0.075492, 0.716770, -0.693211,
		-0.991985, 0.124627, 0.020833,
		37.988419, 33.014332, 50.274990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600803, 33.610527, 50.230904>,  <38.682808, 32.927094, 50.260406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600803, 33.610527, 50.230904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253735, 33.496964, 50.394138>,  <38.045494, 33.428825, 50.492081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253735, 33.496964, 50.394138>,  <38.600803, 33.610527, 50.230904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253735, 33.496964, 50.394138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053227, 0.763109, 0.644074,
		-0.494272, 0.580569, -0.647020,
		-0.867676, -0.283909, 0.408085,
		37.993431, 33.411789, 50.516563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397274, 34.263771, 50.308144>,  <38.600803, 33.610527, 50.230904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397274, 34.263771, 50.308144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156670, 34.036880, 50.533157>,  <38.012306, 33.900745, 50.668167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156670, 34.036880, 50.533157>,  <38.397274, 34.263771, 50.308144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156670, 34.036880, 50.533157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013125, 0.697053, 0.716899,
		-0.798757, 0.438605, -0.411840,
		-0.601510, -0.567223, 0.562533,
		37.976215, 33.866714, 50.701916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893620, 34.752548, 50.592922>,  <38.397274, 34.263771, 50.308144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893620, 34.752548, 50.592922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900871, 34.437069, 50.838730>,  <37.905220, 34.247784, 50.986214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900871, 34.437069, 50.838730>,  <37.893620, 34.752548, 50.592922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900871, 34.437069, 50.838730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167239, 0.603569, 0.779574,
		-0.985750, -0.116903, -0.120960,
		0.018127, -0.788694, 0.614519,
		37.906311, 34.200462, 51.023087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188721, 34.864571, 50.989258>,  <37.893620, 34.752548, 50.592922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188721, 34.864571, 50.989258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467533, 34.642216, 51.170425>,  <37.634819, 34.508804, 51.279125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467533, 34.642216, 51.170425>,  <37.188721, 34.864571, 50.989258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467533, 34.642216, 51.170425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102655, 0.547780, 0.830300,
		-0.709654, -0.625240, 0.324756,
		0.697031, -0.555888, 0.452918,
		37.676643, 34.475449, 51.306301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893425, 34.593128, 51.672371>,  <37.188721, 34.864571, 50.989258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893425, 34.593128, 51.672371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292187, 34.581223, 51.701485>,  <37.531445, 34.574078, 51.718952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292187, 34.581223, 51.701485>,  <36.893425, 34.593128, 51.672371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292187, 34.581223, 51.701485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050886, 0.461452, 0.885705,
		-0.059952, -0.886666, 0.458509,
		0.996903, -0.029768, 0.072783,
		37.591259, 34.572292, 51.723320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931976, 34.226646, 52.322563>,  <36.893425, 34.593128, 51.672371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931976, 34.226646, 52.322563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292671, 34.387730, 52.259705>,  <37.509087, 34.484379, 52.221989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292671, 34.387730, 52.259705>,  <36.931976, 34.226646, 52.322563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292671, 34.387730, 52.259705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042285, 0.443954, 0.895051,
		0.430201, -0.800461, 0.417360,
		0.901742, 0.402700, -0.157142,
		37.563190, 34.508541, 52.212559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382591, 34.051228, 52.878387>,  <36.931976, 34.226646, 52.322563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382591, 34.051228, 52.878387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512550, 34.395195, 52.720917>,  <37.590527, 34.601578, 52.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512550, 34.395195, 52.720917>,  <37.382591, 34.051228, 52.878387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512550, 34.395195, 52.720917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115966, 0.376891, 0.918969,
		0.938613, -0.344222, 0.022728,
		0.324895, 0.859921, -0.393673,
		37.610020, 34.653172, 52.602814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907166, 34.276237, 53.254272>,  <37.382591, 34.051228, 52.878387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907166, 34.276237, 53.254272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801670, 34.615444, 53.070396>,  <37.738373, 34.818970, 52.960072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801670, 34.615444, 53.070396>,  <37.907166, 34.276237, 53.254272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801670, 34.615444, 53.070396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257736, 0.521185, 0.813596,
		0.929525, 0.096096, -0.356019,
		-0.263735, 0.848016, -0.459687,
		37.722549, 34.869850, 52.932491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396683, 34.765495, 53.527290>,  <37.907166, 34.276237, 53.254272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396683, 34.765495, 53.527290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106560, 34.986046, 53.362408>,  <37.932487, 35.118378, 53.263477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106560, 34.986046, 53.362408>,  <38.396683, 34.765495, 53.527290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106560, 34.986046, 53.362408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084249, 0.665352, 0.741761,
		0.683253, 0.503275, -0.529037,
		-0.725305, 0.551381, -0.412203,
		37.888969, 35.151459, 53.238747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633606, 35.445507, 53.380863>,  <38.396683, 34.765495, 53.527290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633606, 35.445507, 53.380863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238346, 35.504021, 53.399422>,  <38.001190, 35.539131, 53.410557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238346, 35.504021, 53.399422>,  <38.633606, 35.445507, 53.380863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238346, 35.504021, 53.399422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136085, 0.695446, 0.705575,
		0.070947, 0.703531, -0.707115,
		-0.988154, 0.146286, 0.046400,
		37.941898, 35.547905, 53.413342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576679, 36.104771, 53.496300>,  <38.633606, 35.445507, 53.380863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576679, 36.104771, 53.496300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225071, 35.957432, 53.617390>,  <38.014107, 35.869030, 53.690044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225071, 35.957432, 53.617390>,  <38.576679, 36.104771, 53.496300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225071, 35.957432, 53.617390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001306, 0.636786, 0.771039,
		-0.476779, 0.677365, -0.560230,
		-0.879022, -0.368347, 0.302722,
		37.961365, 35.846928, 53.708206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117958, 36.661007, 53.747604>,  <38.576679, 36.104771, 53.496300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117958, 36.661007, 53.747604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952614, 36.334919, 53.909866>,  <37.853409, 36.139267, 54.007225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952614, 36.334919, 53.909866>,  <38.117958, 36.661007, 53.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952614, 36.334919, 53.909866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069599, 0.472480, 0.878589,
		-0.907904, 0.334941, -0.252043,
		-0.413360, -0.815216, 0.405655,
		37.828606, 36.090355, 54.031563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115776, 37.341396, 53.518711>,  <38.117958, 36.661007, 53.747604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115776, 37.341396, 53.518711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262547, 37.685360, 53.376774>,  <38.350609, 37.891739, 53.291611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262547, 37.685360, 53.376774>,  <38.115776, 37.341396, 53.518711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262547, 37.685360, 53.376774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215648, -0.292431, -0.931655,
		-0.904909, 0.418372, 0.078137,
		0.366929, 0.859912, -0.354844,
		38.372623, 37.943333, 53.270321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668869, 37.654541, 53.115486>,  <38.115776, 37.341396, 53.518711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668869, 37.654541, 53.115486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002880, 37.813171, 52.962929>,  <38.203285, 37.908348, 52.871395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002880, 37.813171, 52.962929>,  <37.668869, 37.654541, 53.115486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002880, 37.813171, 52.962929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320651, -0.212541, -0.923043,
		-0.447118, 0.893058, -0.050315,
		0.835026, 0.396576, -0.381391,
		38.253387, 37.932144, 52.848511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516354, 38.088490, 52.637535>,  <37.668869, 37.654541, 53.115486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516354, 38.088490, 52.637535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889236, 37.997704, 52.524761>,  <38.112965, 37.943233, 52.457096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889236, 37.997704, 52.524761>,  <37.516354, 38.088490, 52.637535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889236, 37.997704, 52.524761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302318, -0.059995, -0.951317,
		0.198999, 0.972054, -0.124543,
		0.932203, -0.226962, -0.281930,
		38.168896, 37.929615, 52.440182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629219, 38.463345, 52.031780>,  <37.516354, 38.088490, 52.637535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629219, 38.463345, 52.031780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918816, 38.188042, 52.013268>,  <38.092571, 38.022858, 52.002159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918816, 38.188042, 52.013268>,  <37.629219, 38.463345, 52.031780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918816, 38.188042, 52.013268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190522, -0.135021, -0.972353,
		0.662981, 0.712790, -0.228882,
		0.723987, -0.688259, -0.046285,
		38.136013, 37.981564, 51.999382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792053, 38.497292, 51.368073>,  <37.629219, 38.463345, 52.031780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792053, 38.497292, 51.368073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991184, 38.172062, 51.488785>,  <38.110664, 37.976925, 51.561214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991184, 38.172062, 51.488785>,  <37.792053, 38.497292, 51.368073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991184, 38.172062, 51.488785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032219, -0.330389, -0.943295,
		0.866676, 0.479323, -0.138281,
		0.497830, -0.813076, 0.301784,
		38.140533, 37.928139, 51.579319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419292, 38.441494, 50.874989>,  <37.792053, 38.497292, 51.368073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419292, 38.441494, 50.874989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339237, 38.081703, 51.030365>,  <38.291203, 37.865829, 51.123589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339237, 38.081703, 51.030365>,  <38.419292, 38.441494, 50.874989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339237, 38.081703, 51.030365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059637, -0.384540, -0.921180,
		0.977951, -0.207531, 0.023320,
		-0.200141, -0.899478, 0.388438,
		38.279194, 37.811859, 51.146896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849686, 37.953377, 50.590637>,  <38.419292, 38.441494, 50.874989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849686, 37.953377, 50.590637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557426, 37.707935, 50.710392>,  <38.382069, 37.560669, 50.782246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557426, 37.707935, 50.710392>,  <38.849686, 37.953377, 50.590637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557426, 37.707935, 50.710392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048829, -0.390419, -0.919342,
		0.681003, -0.686337, 0.255298,
		-0.730651, -0.613608, 0.299389,
		38.338230, 37.523853, 50.800209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028492, 37.278584, 50.473907>,  <38.849686, 37.953377, 50.590637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028492, 37.278584, 50.473907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628628, 37.286072, 50.481251>,  <38.388710, 37.290565, 50.485657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628628, 37.286072, 50.481251>,  <39.028492, 37.278584, 50.473907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628628, 37.286072, 50.481251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025355, -0.511617, -0.858840,
		-0.006686, -0.859010, 0.511916,
		-0.999656, 0.018722, 0.018360,
		38.328732, 37.291687, 50.486759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857777, 36.665615, 50.229572>,  <39.028492, 37.278584, 50.473907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857777, 36.665615, 50.229572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512756, 36.861752, 50.179653>,  <38.305744, 36.979435, 50.149704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512756, 36.861752, 50.179653>,  <38.857777, 36.665615, 50.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512756, 36.861752, 50.179653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139358, -0.467331, -0.873030,
		-0.486407, -0.735638, 0.471429,
		-0.862547, 0.490345, -0.124796,
		38.253990, 37.008854, 50.142216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495541, 36.168320, 50.041927>,  <38.857777, 36.665615, 50.229572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495541, 36.168320, 50.041927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323421, 36.514549, 49.939449>,  <38.220150, 36.722286, 49.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323421, 36.514549, 49.939449>,  <38.495541, 36.168320, 50.041927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323421, 36.514549, 49.939449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135910, -0.342699, -0.929562,
		-0.892398, -0.365167, 0.265101,
		-0.430295, 0.865570, -0.256194,
		38.194332, 36.774220, 49.862591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879696, 35.918144, 49.760803>,  <38.495541, 36.168320, 50.041927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879696, 35.918144, 49.760803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936420, 36.292465, 49.631702>,  <37.970455, 36.517056, 49.554241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936420, 36.292465, 49.631702>,  <37.879696, 35.918144, 49.760803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936420, 36.292465, 49.631702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245223, -0.282676, -0.927340,
		-0.959039, 0.210652, 0.189394,
		0.141809, 0.935799, -0.322754,
		37.978962, 36.573204, 49.534878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258038, 36.022366, 49.427902>,  <37.879696, 35.918144, 49.760803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258038, 36.022366, 49.427902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535534, 36.270420, 49.281395>,  <37.702034, 36.419254, 49.193493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535534, 36.270420, 49.281395>,  <37.258038, 36.022366, 49.427902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535534, 36.270420, 49.281395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300802, -0.212588, -0.929691,
		-0.654400, 0.755139, 0.039057,
		0.693743, 0.620138, -0.366265,
		37.743656, 36.456463, 49.171516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950523, 36.500183, 48.976910>,  <37.258038, 36.022366, 49.427902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950523, 36.500183, 48.976910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340015, 36.463070, 48.893734>,  <37.573711, 36.440804, 48.843826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340015, 36.463070, 48.893734>,  <36.950523, 36.500183, 48.976910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340015, 36.463070, 48.893734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227686, -0.385336, -0.894246,
		0.002844, 0.918100, -0.396339,
		0.973730, -0.092784, -0.207943,
		37.632133, 36.435234, 48.831352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070881, 36.626007, 48.211842>,  <36.950523, 36.500183, 48.976910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070881, 36.626007, 48.211842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408096, 36.443829, 48.326279>,  <37.610428, 36.334522, 48.394943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408096, 36.443829, 48.326279>,  <37.070881, 36.626007, 48.211842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408096, 36.443829, 48.326279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076927, -0.424355, -0.902222,
		0.532318, 0.782620, -0.322713,
		0.843042, -0.455443, 0.286096,
		37.661011, 36.307194, 48.412109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537182, 36.739380, 47.669334>,  <37.070881, 36.626007, 48.211842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537182, 36.739380, 47.669334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684376, 36.426373, 47.870232>,  <37.772690, 36.238567, 47.990772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684376, 36.426373, 47.870232>,  <37.537182, 36.739380, 47.669334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684376, 36.426373, 47.870232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085810, -0.509263, -0.856323,
		0.925866, 0.358208, -0.120250,
		0.367980, -0.782521, 0.502247,
		37.794769, 36.191616, 48.020905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121086, 36.514679, 47.189362>,  <37.537182, 36.739380, 47.669334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121086, 36.514679, 47.189362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012817, 36.210690, 47.425728>,  <37.947857, 36.028297, 47.567547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012817, 36.210690, 47.425728>,  <38.121086, 36.514679, 47.189362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012817, 36.210690, 47.425728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182312, -0.643186, -0.743690,
		0.945251, -0.093563, 0.312643,
		-0.270670, -0.759972, 0.590914,
		37.931618, 35.982697, 47.603001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656940, 36.011189, 47.015839>,  <38.121086, 36.514679, 47.189362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656940, 36.011189, 47.015839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348515, 35.813877, 47.176903>,  <38.163460, 35.695488, 47.273540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348515, 35.813877, 47.176903>,  <38.656940, 36.011189, 47.015839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348515, 35.813877, 47.176903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026249, -0.656445, -0.753917,
		0.636217, -0.570749, 0.519109,
		-0.771064, -0.493280, 0.402660,
		38.117195, 35.665894, 47.297699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803272, 35.305180, 47.262138>,  <38.656940, 36.011189, 47.015839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803272, 35.305180, 47.262138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409840, 35.316673, 47.190876>,  <38.173779, 35.323570, 47.148121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409840, 35.316673, 47.190876>,  <38.803272, 35.305180, 47.262138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409840, 35.316673, 47.190876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104511, -0.714128, -0.692169,
		-0.147109, -0.699425, 0.699402,
		-0.983584, 0.028729, -0.178152,
		38.114765, 35.325291, 47.137428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652031, 34.653152, 47.228634>,  <38.803272, 35.305180, 47.262138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652031, 34.653152, 47.228634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325050, 34.814217, 47.063889>,  <38.128860, 34.910854, 46.965042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325050, 34.814217, 47.063889>,  <38.652031, 34.653152, 47.228634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325050, 34.814217, 47.063889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051936, -0.660605, -0.748935,
		-0.573645, -0.633612, 0.519102,
		-0.817456, 0.402663, -0.411860,
		38.079815, 34.935017, 46.940331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221516, 34.055607, 46.991829>,  <38.652031, 34.653152, 47.228634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221516, 34.055607, 46.991829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086601, 34.367252, 46.780464>,  <38.005653, 34.554241, 46.653645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086601, 34.367252, 46.780464>,  <38.221516, 34.055607, 46.991829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086601, 34.367252, 46.780464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067604, -0.539806, -0.839071,
		-0.938971, -0.318731, 0.129398,
		-0.337287, 0.779115, -0.528409,
		37.985416, 34.600986, 46.621941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841194, 33.723160, 46.579079>,  <38.221516, 34.055607, 46.991829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841194, 33.723160, 46.579079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840862, 34.081474, 46.401287>,  <37.840664, 34.296463, 46.294613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840862, 34.081474, 46.401287>,  <37.841194, 33.723160, 46.579079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840862, 34.081474, 46.401287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164027, -0.438584, -0.883595,
		-0.986456, 0.072178, 0.147295,
		-0.000825, 0.895787, -0.444483,
		37.840614, 34.350212, 46.267941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274708, 33.686546, 46.105728>,  <37.841194, 33.723160, 46.579079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274708, 33.686546, 46.105728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521759, 33.969711, 45.968674>,  <37.669991, 34.139610, 45.886440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521759, 33.969711, 45.968674>,  <37.274708, 33.686546, 46.105728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521759, 33.969711, 45.968674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080849, -0.376202, -0.923004,
		-0.782304, 0.597774, -0.175119,
		0.617628, 0.707911, -0.342634,
		37.707047, 34.182083, 45.865883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044712, 33.952934, 45.387089>,  <37.274708, 33.686546, 46.105728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044712, 33.952934, 45.387089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438938, 34.005524, 45.429745>,  <37.675472, 34.037079, 45.455338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438938, 34.005524, 45.429745>,  <37.044712, 33.952934, 45.387089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438938, 34.005524, 45.429745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152617, -0.417447, -0.895794,
		-0.073258, 0.899140, -0.431487,
		0.985566, 0.131476, 0.106642,
		37.734608, 34.044968, 45.461739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224777, 34.190472, 44.737766>,  <37.044712, 33.952934, 45.387089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224777, 34.190472, 44.737766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568905, 34.096256, 44.918594>,  <37.775383, 34.039726, 45.027092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568905, 34.096256, 44.918594>,  <37.224777, 34.190472, 44.737766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568905, 34.096256, 44.918594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324699, -0.430429, -0.842200,
		0.392955, 0.871350, -0.293828,
		0.860323, -0.235541, 0.452066,
		37.827003, 34.025593, 45.054214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719200, 34.283062, 44.236595>,  <37.224777, 34.190472, 44.737766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719200, 34.283062, 44.236595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911549, 34.068260, 44.513836>,  <38.026958, 33.939381, 44.680180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911549, 34.068260, 44.513836>,  <37.719200, 34.283062, 44.236595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911549, 34.068260, 44.513836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539458, -0.441960, -0.716699,
		0.691192, 0.718540, 0.077164,
		0.480873, -0.537003, 0.693101,
		38.055809, 33.907158, 44.721767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430725, 34.386871, 44.181896>,  <37.719200, 34.283062, 44.236595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430725, 34.386871, 44.181896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384983, 34.025208, 44.346535>,  <38.357540, 33.808208, 44.445320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384983, 34.025208, 44.346535>,  <38.430725, 34.386871, 44.181896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384983, 34.025208, 44.346535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346327, -0.424609, -0.836519,
		0.931118, 0.046890, 0.361691,
		-0.114353, -0.904162, 0.411601,
		38.350677, 33.753960, 44.470016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040844, 34.032074, 44.160244>,  <38.430725, 34.386871, 44.181896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040844, 34.032074, 44.160244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764191, 33.743492, 44.173813>,  <38.598198, 33.570343, 44.181953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764191, 33.743492, 44.173813>,  <39.040844, 34.032074, 44.160244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764191, 33.743492, 44.173813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405368, -0.426628, -0.808496,
		0.597761, -0.545434, 0.587524,
		-0.691635, -0.721450, 0.033920,
		38.556702, 33.527058, 44.183990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393311, 33.334946, 44.214417>,  <39.040844, 34.032074, 44.160244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393311, 33.334946, 44.214417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031998, 33.314823, 44.043983>,  <38.815208, 33.302750, 43.941723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031998, 33.314823, 44.043983>,  <39.393311, 33.334946, 44.214417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031998, 33.314823, 44.043983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381936, -0.546694, -0.745152,
		-0.195445, -0.835820, 0.513037,
		-0.903287, -0.050311, -0.426078,
		38.761013, 33.299728, 43.916161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437286, 32.661049, 43.837189>,  <39.393311, 33.334946, 44.214417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437286, 32.661049, 43.837189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119099, 32.856560, 43.693901>,  <38.928185, 32.973866, 43.607929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119099, 32.856560, 43.693901>,  <39.437286, 32.661049, 43.837189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119099, 32.856560, 43.693901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141939, -0.424410, -0.894276,
		-0.589134, -0.762216, 0.268229,
		-0.795471, 0.488776, -0.358223,
		38.880459, 33.003193, 43.586433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952721, 32.196453, 43.675518>,  <39.437286, 32.661049, 43.837189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952721, 32.196453, 43.675518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842239, 32.494305, 43.432457>,  <38.775951, 32.673016, 43.286621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842239, 32.494305, 43.432457>,  <38.952721, 32.196453, 43.675518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842239, 32.494305, 43.432457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241275, -0.558279, -0.793795,
		-0.930322, -0.365857, -0.025464,
		-0.276200, 0.744629, -0.607652,
		38.759380, 32.717693, 43.250160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672680, 31.880814, 43.012142>,  <38.952721, 32.196453, 43.675518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672680, 31.880814, 43.012142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750805, 32.256886, 42.900490>,  <38.797680, 32.482529, 42.833500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750805, 32.256886, 42.900490>,  <38.672680, 31.880814, 43.012142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750805, 32.256886, 42.900490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286939, -0.326940, -0.900431,
		-0.937826, 0.095774, -0.333631,
		0.195315, 0.940180, -0.279131,
		38.809399, 32.538940, 42.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460789, 31.874350, 42.318634>,  <38.672680, 31.880814, 43.012142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460789, 31.874350, 42.318634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710564, 32.183258, 42.365414>,  <38.860428, 32.368603, 42.393482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710564, 32.183258, 42.365414>,  <38.460789, 31.874350, 42.318634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710564, 32.183258, 42.365414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230879, -0.039454, -0.972182,
		-0.746175, 0.634066, -0.202938,
		0.624434, 0.772272, 0.116953,
		38.897892, 32.414940, 42.400501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403023, 32.195362, 41.666714>,  <38.460789, 31.874350, 42.318634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403023, 32.195362, 41.666714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749710, 32.336452, 41.807789>,  <38.957722, 32.421108, 41.892433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749710, 32.336452, 41.807789>,  <38.403023, 32.195362, 41.666714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749710, 32.336452, 41.807789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314848, 0.161545, -0.935294,
		-0.386880, 0.921675, 0.028957,
		0.866715, 0.352730, 0.352686,
		39.009724, 32.442272, 41.913593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507114, 32.845642, 41.301826>,  <38.403023, 32.195362, 41.666714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507114, 32.845642, 41.301826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847294, 32.700813, 41.454475>,  <39.051403, 32.613918, 41.546066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847294, 32.700813, 41.454475>,  <38.507114, 32.845642, 41.301826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847294, 32.700813, 41.454475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479572, 0.235481, -0.845316,
		0.216199, 0.901917, 0.373904,
		0.850452, -0.362070, 0.381624,
		39.102428, 32.592194, 41.568962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941921, 33.390663, 41.173809>,  <38.507114, 32.845642, 41.301826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941921, 33.390663, 41.173809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153481, 33.056137, 41.231548>,  <39.280418, 32.855419, 41.266193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153481, 33.056137, 41.231548>,  <38.941921, 33.390663, 41.173809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153481, 33.056137, 41.231548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525785, 0.189379, -0.829268,
		0.666194, 0.514499, 0.539886,
		0.528901, -0.836317, 0.144352,
		39.312149, 32.805241, 41.274853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578720, 33.597183, 41.076660>,  <38.941921, 33.390663, 41.173809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578720, 33.597183, 41.076660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581329, 33.200672, 41.024021>,  <39.582893, 32.962765, 40.992439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581329, 33.200672, 41.024021>,  <39.578720, 33.597183, 41.076660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581329, 33.200672, 41.024021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594281, 0.109683, -0.796744,
		0.804231, -0.073009, 0.589815,
		0.006523, -0.991282, -0.131598,
		39.583286, 32.903286, 40.984543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217369, 33.475662, 40.769913>,  <39.578720, 33.597183, 41.076660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217369, 33.475662, 40.769913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037617, 33.127041, 40.691479>,  <39.929764, 32.917870, 40.644417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037617, 33.127041, 40.691479>,  <40.217369, 33.475662, 40.769913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037617, 33.127041, 40.691479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621654, -0.147454, -0.769288,
		0.641563, -0.467600, 0.608069,
		-0.449381, -0.871555, -0.196084,
		39.902802, 32.865574, 40.632652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750565, 33.038952, 40.811455>,  <40.217369, 33.475662, 40.769913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750565, 33.038952, 40.811455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466042, 32.847549, 40.605515>,  <40.295326, 32.732708, 40.481949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466042, 32.847549, 40.605515>,  <40.750565, 33.038952, 40.811455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466042, 32.847549, 40.605515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671248, -0.245187, -0.699506,
		0.208484, -0.843157, 0.495601,
		-0.711309, -0.478507, -0.514850,
		40.252647, 32.703999, 40.451061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972515, 32.360142, 40.691189>,  <40.750565, 33.038952, 40.811455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972515, 32.360142, 40.691189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720509, 32.469563, 40.400467>,  <40.569305, 32.535213, 40.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720509, 32.469563, 40.400467>,  <40.972515, 32.360142, 40.691189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720509, 32.469563, 40.400467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749250, -0.032007, -0.661514,
		-0.204219, -0.961325, -0.184792,
		-0.630015, 0.273549, -0.726809,
		40.531506, 32.551628, 40.182423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020592, 31.907658, 40.231770>,  <40.972515, 32.360142, 40.691189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020592, 31.907658, 40.231770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913319, 32.247982, 40.051018>,  <40.848953, 32.452175, 39.942566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913319, 32.247982, 40.051018>,  <41.020592, 31.907658, 40.231770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913319, 32.247982, 40.051018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640641, -0.192811, -0.743238,
		-0.719484, -0.488817, -0.493356,
		-0.268183, 0.850812, -0.451881,
		40.832863, 32.503227, 39.915455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222340, 31.805712, 39.539688>,  <41.020592, 31.907658, 40.231770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222340, 31.805712, 39.539688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166332, 32.201740, 39.534676>,  <41.132729, 32.439358, 39.531670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166332, 32.201740, 39.534676>,  <41.222340, 31.805712, 39.539688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166332, 32.201740, 39.534676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638502, 0.080612, -0.765387,
		-0.756777, -0.115167, -0.643448,
		-0.140017, 0.990070, -0.012529,
		41.124329, 32.498760, 39.530918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978638, 31.770041, 38.940575>,  <41.222340, 31.805712, 39.539688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978638, 31.770041, 38.940575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156834, 32.110214, 39.052502>,  <41.263752, 32.314320, 39.119659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156834, 32.110214, 39.052502>,  <40.978638, 31.770041, 38.940575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156834, 32.110214, 39.052502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567852, -0.026768, -0.822695,
		-0.692158, 0.525400, -0.494846,
		0.445490, 0.850434, 0.279822,
		41.290482, 32.365345, 39.136448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967205, 32.381008, 38.418564>,  <40.978638, 31.770041, 38.940575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967205, 32.381008, 38.418564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296421, 32.434418, 38.639389>,  <41.493950, 32.466461, 38.771885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296421, 32.434418, 38.639389>,  <40.967205, 32.381008, 38.418564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296421, 32.434418, 38.639389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558420, -0.012635, -0.829462,
		-0.103775, 0.990965, -0.084960,
		0.823042, 0.133521, 0.552064,
		41.543335, 32.474476, 38.805008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416611, 32.948940, 38.187035>,  <40.967205, 32.381008, 38.418564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416611, 32.948940, 38.187035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617321, 32.655704, 38.370686>,  <41.737747, 32.479763, 38.480877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617321, 32.655704, 38.370686>,  <41.416611, 32.948940, 38.187035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617321, 32.655704, 38.370686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553706, -0.135562, -0.821604,
		0.664550, 0.666484, 0.337895,
		0.501779, -0.733091, 0.459124,
		41.767857, 32.435776, 38.508423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997211, 33.026569, 37.888309>,  <41.416611, 32.948940, 38.187035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997211, 33.026569, 37.888309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985062, 32.647820, 38.016376>,  <41.977772, 32.420570, 38.093216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985062, 32.647820, 38.016376>,  <41.997211, 33.026569, 37.888309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985062, 32.647820, 38.016376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397509, -0.305334, -0.865308,
		0.917095, 0.100987, 0.385665,
		-0.030372, -0.946875, 0.320163,
		41.975948, 32.363758, 38.112427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277824, 32.701263, 37.228340>,  <41.997211, 33.026569, 37.888309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277824, 32.701263, 37.228340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214092, 33.075779, 37.103130>,  <42.175854, 33.300488, 37.028004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214092, 33.075779, 37.103130>,  <42.277824, 32.701263, 37.228340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214092, 33.075779, 37.103130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987218, 0.149870, -0.054223,
		-0.003855, -0.317664, -0.948195,
		-0.159331, 0.936284, -0.313026,
		42.166294, 33.356663, 37.009224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842461, 32.881462, 36.687695>,  <42.277824, 32.701263, 37.228340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842461, 32.881462, 36.687695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692192, 33.216381, 36.846596>,  <42.602032, 33.417332, 36.941936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692192, 33.216381, 36.846596>,  <42.842461, 32.881462, 36.687695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692192, 33.216381, 36.846596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910355, 0.413682, -0.011014,
		-0.173557, 0.357501, -0.917644,
		-0.375675, 0.837294, 0.397250,
		42.579491, 33.467567, 36.965771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392200, 32.817181, 37.129028>,  <42.842461, 32.881462, 36.687695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392200, 32.817181, 37.129028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591652, 33.163830, 37.121723>,  <43.711323, 33.371819, 37.117340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591652, 33.163830, 37.121723>,  <43.392200, 32.817181, 37.129028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591652, 33.163830, 37.121723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852961, 0.494302, 0.167698,
		0.154358, -0.068043, 0.985669,
		0.498629, 0.866623, -0.018261,
		43.741241, 33.423817, 37.116245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262356, 33.129253, 37.752865>,  <43.392200, 32.817181, 37.129028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262356, 33.129253, 37.752865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365250, 33.432434, 37.513084>,  <43.426987, 33.614342, 37.369217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365250, 33.432434, 37.513084>,  <43.262356, 33.129253, 37.752865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365250, 33.432434, 37.513084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935007, 0.351921, 0.043752,
		0.244121, 0.549234, 0.799216,
		0.257231, 0.757953, -0.599449,
		43.442417, 33.659821, 37.333248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866047, 33.610386, 38.014477>,  <43.262356, 33.129253, 37.752865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866047, 33.610386, 38.014477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979294, 33.765659, 37.663670>,  <43.047241, 33.858822, 37.453186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979294, 33.765659, 37.663670>,  <42.866047, 33.610386, 38.014477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979294, 33.765659, 37.663670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857471, 0.512083, -0.050147,
		0.429640, 0.766214, 0.477834,
		0.283114, 0.388183, -0.877018,
		43.064228, 33.882114, 37.400566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766239, 34.362663, 38.049950>,  <42.866047, 33.610386, 38.014477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766239, 34.362663, 38.049950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757053, 34.253700, 37.665188>,  <42.751541, 34.188320, 37.434330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757053, 34.253700, 37.665188>,  <42.766239, 34.362663, 38.049950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757053, 34.253700, 37.665188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858506, 0.498408, -0.120650,
		0.512289, 0.823032, -0.245314,
		-0.022968, -0.272411, -0.961907,
		42.750164, 34.171978, 37.376617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841824, 34.939751, 37.627777>,  <42.766239, 34.362663, 38.049950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841824, 34.939751, 37.627777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642090, 34.667400, 37.413460>,  <42.522247, 34.503990, 37.284870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642090, 34.667400, 37.413460>,  <42.841824, 34.939751, 37.627777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642090, 34.667400, 37.413460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742509, 0.654970, -0.140334,
		0.446479, 0.327758, -0.832605,
		-0.499336, -0.680874, -0.535794,
		42.492290, 34.463139, 37.252720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519817, 35.335636, 37.093258>,  <42.841824, 34.939751, 37.627777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519817, 35.335636, 37.093258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319103, 34.989643, 37.094860>,  <42.198673, 34.782047, 37.095821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319103, 34.989643, 37.094860>,  <42.519817, 35.335636, 37.093258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319103, 34.989643, 37.094860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821325, 0.475000, -0.315912,
		0.271356, -0.161809, -0.948780,
		-0.501788, -0.864982, 0.004004,
		42.168568, 34.730148, 37.096062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197968, 35.334484, 36.449200>,  <42.519817, 35.335636, 37.093258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197968, 35.334484, 36.449200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999035, 35.085987, 36.691429>,  <41.879677, 34.936890, 36.836765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999035, 35.085987, 36.691429>,  <42.197968, 35.334484, 36.449200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999035, 35.085987, 36.691429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811499, 0.579966, -0.071479,
		-0.306807, -0.526971, -0.792572,
		-0.497333, -0.621241, 0.605574,
		41.849834, 34.899616, 36.873100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517059, 35.261600, 36.185646>,  <42.197968, 35.334484, 36.449200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517059, 35.261600, 36.185646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431126, 35.118366, 36.549103>,  <41.379566, 35.032425, 36.767178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431126, 35.118366, 36.549103>,  <41.517059, 35.261600, 36.185646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431126, 35.118366, 36.549103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871925, 0.489459, -0.013260,
		-0.439993, -0.795113, -0.417374,
		-0.214831, -0.358085, 0.908638,
		41.366676, 35.010941, 36.821693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851280, 34.985004, 36.164486>,  <41.517059, 35.261600, 36.185646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851280, 34.985004, 36.164486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912743, 35.068378, 36.550842>,  <40.949619, 35.118404, 36.782658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912743, 35.068378, 36.550842>,  <40.851280, 34.985004, 36.164486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912743, 35.068378, 36.550842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943682, 0.320812, 0.080896,
		-0.293008, -0.923923, 0.245992,
		0.153659, 0.208435, 0.965890,
		40.958839, 35.130909, 36.840611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165440, 34.751316, 36.562778>,  <40.851280, 34.985004, 36.164486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165440, 34.751316, 36.562778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363003, 35.026989, 36.774849>,  <40.481541, 35.192394, 36.902092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363003, 35.026989, 36.774849>,  <40.165440, 34.751316, 36.562778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363003, 35.026989, 36.774849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868948, 0.413258, 0.272298,
		-0.031435, -0.595183, 0.802975,
		0.493903, 0.689184, 0.530174,
		40.511173, 35.233746, 36.933903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646000, 34.947231, 37.080318>,  <40.165440, 34.751316, 36.562778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646000, 34.947231, 37.080318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922585, 35.232468, 37.126598>,  <40.088535, 35.403610, 37.154366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922585, 35.232468, 37.126598>,  <39.646000, 34.947231, 37.080318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922585, 35.232468, 37.126598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708137, 0.637361, 0.303829,
		0.142915, -0.292016, 0.945675,
		0.691460, 0.713090, 0.115699,
		40.130024, 35.446396, 37.161308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381413, 35.287468, 37.643543>,  <39.646000, 34.947231, 37.080318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381413, 35.287468, 37.643543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647091, 35.535820, 37.477001>,  <39.806499, 35.684830, 37.377075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647091, 35.535820, 37.477001>,  <39.381413, 35.287468, 37.643543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647091, 35.535820, 37.477001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544134, 0.783435, 0.300246,
		0.512602, 0.027129, 0.858198,
		0.664197, 0.620881, -0.416352,
		39.846352, 35.722084, 37.352097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653339, 35.732258, 38.195011>,  <39.381413, 35.287468, 37.643543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653339, 35.732258, 38.195011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724064, 35.934711, 37.857357>,  <39.766499, 36.056183, 37.654762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724064, 35.934711, 37.857357>,  <39.653339, 35.732258, 38.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724064, 35.934711, 37.857357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397801, 0.821227, 0.409072,
		0.900274, 0.263473, 0.346538,
		0.176808, 0.506130, -0.844140,
		39.777107, 36.086552, 37.604115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184292, 36.341656, 38.320782>,  <39.653339, 35.732258, 38.195011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184292, 36.341656, 38.320782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958012, 36.418617, 38.000042>,  <39.822243, 36.464794, 37.807598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958012, 36.418617, 38.000042>,  <40.184292, 36.341656, 38.320782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958012, 36.418617, 38.000042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250505, 0.886344, 0.389412,
		0.785637, 0.421159, -0.453210,
		-0.565704, 0.192405, -0.801847,
		39.788300, 36.476337, 37.759487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298805, 37.060135, 38.072090>,  <40.184292, 36.341656, 38.320782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298805, 37.060135, 38.072090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944290, 36.989235, 37.900936>,  <39.731583, 36.946693, 37.798244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944290, 36.989235, 37.900936>,  <40.298805, 37.060135, 38.072090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944290, 36.989235, 37.900936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343264, 0.871613, 0.349943,
		0.310920, 0.457025, -0.833340,
		-0.886283, -0.177251, -0.427883,
		39.678406, 36.936058, 37.772572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968388, 37.683243, 37.923634>,  <40.298805, 37.060135, 38.072090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968388, 37.683243, 37.923634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645187, 37.450584, 37.886063>,  <39.451267, 37.310989, 37.863518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645187, 37.450584, 37.886063>,  <39.968388, 37.683243, 37.923634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645187, 37.450584, 37.886063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577719, 0.750855, 0.320089,
		-0.115649, 0.312899, -0.942719,
		-0.808001, -0.581644, -0.093932,
		39.402786, 37.276093, 37.857883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544094, 38.063702, 37.510349>,  <39.968388, 37.683243, 37.923634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544094, 38.063702, 37.510349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327003, 37.795654, 37.712887>,  <39.196747, 37.634827, 37.834408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327003, 37.795654, 37.712887>,  <39.544094, 38.063702, 37.510349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327003, 37.795654, 37.712887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710950, 0.687522, 0.147862,
		-0.447208, -0.279737, -0.849560,
		-0.542729, -0.670120, 0.506344,
		39.164185, 37.594620, 37.864792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938755, 38.193024, 37.254467>,  <39.544094, 38.063702, 37.510349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938755, 38.193024, 37.254467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882114, 37.994572, 37.597115>,  <38.848129, 37.875500, 37.802704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882114, 37.994572, 37.597115>,  <38.938755, 38.193024, 37.254467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882114, 37.994572, 37.597115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760722, 0.608260, 0.226542,
		-0.633444, -0.619574, -0.463547,
		-0.141598, -0.496132, 0.856623,
		38.839634, 37.845734, 37.854103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188168, 38.167732, 37.326153>,  <38.938755, 38.193024, 37.254467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188168, 38.167732, 37.326153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356785, 38.123459, 37.686165>,  <38.457954, 38.096893, 37.902172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356785, 38.123459, 37.686165>,  <38.188168, 38.167732, 37.326153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356785, 38.123459, 37.686165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559878, 0.748985, 0.354343,
		-0.713327, -0.653277, 0.253760,
		0.421546, -0.110688, 0.900027,
		38.483250, 38.090252, 37.956173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636272, 38.208935, 37.791840>,  <38.188168, 38.167732, 37.326153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636272, 38.208935, 37.791840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938595, 38.269154, 38.046738>,  <38.119987, 38.305283, 38.199677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938595, 38.269154, 38.046738>,  <37.636272, 38.208935, 37.791840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938595, 38.269154, 38.046738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509157, 0.747051, 0.427404,
		-0.411716, -0.647497, 0.641279,
		0.755811, 0.150543, 0.637250,
		38.165337, 38.314316, 38.237911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385044, 38.225601, 38.451241>,  <37.636272, 38.208935, 37.791840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385044, 38.225601, 38.451241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726696, 38.433605, 38.454090>,  <37.931686, 38.558407, 38.455799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726696, 38.433605, 38.454090>,  <37.385044, 38.225601, 38.451241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726696, 38.433605, 38.454090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489833, 0.799816, 0.346926,
		0.174707, -0.299809, 0.937866,
		0.854132, 0.520008, 0.007123,
		37.982937, 38.589607, 38.456226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411407, 38.515263, 39.127605>,  <37.385044, 38.225601, 38.451241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411407, 38.515263, 39.127605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600040, 38.702103, 38.828423>,  <37.713219, 38.814205, 38.648914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600040, 38.702103, 38.828423>,  <37.411407, 38.515263, 39.127605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600040, 38.702103, 38.828423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546646, 0.820403, 0.167685,
		0.691948, 0.329788, 0.642222,
		0.471580, 0.467097, -0.747953,
		37.741516, 38.842232, 38.604038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883896, 38.993950, 39.462448>,  <37.411407, 38.515263, 39.127605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883896, 38.993950, 39.462448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783745, 39.092026, 39.087814>,  <37.723656, 39.150871, 38.863033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783745, 39.092026, 39.087814>,  <37.883896, 38.993950, 39.462448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783745, 39.092026, 39.087814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500350, 0.795418, 0.341994,
		0.828831, 0.554248, -0.076475,
		-0.250379, 0.245190, -0.936585,
		37.708630, 39.165585, 38.806839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987129, 39.744957, 39.200539>,  <37.883896, 38.993950, 39.462448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987129, 39.744957, 39.200539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647442, 39.595978, 39.050816>,  <37.443630, 39.506592, 38.960983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647442, 39.595978, 39.050816>,  <37.987129, 39.744957, 39.200539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647442, 39.595978, 39.050816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512615, 0.751562, 0.415186,
		0.126678, 0.544460, -0.829166,
		-0.849222, -0.372448, -0.374305,
		37.392673, 39.484241, 38.938522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547230, 40.234722, 39.055428>,  <37.987129, 39.744957, 39.200539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547230, 40.234722, 39.055428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296810, 39.930672, 39.125031>,  <37.146561, 39.748241, 39.166794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296810, 39.930672, 39.125031>,  <37.547230, 40.234722, 39.055428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296810, 39.930672, 39.125031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654402, 0.633483, 0.412866,
		-0.424060, 0.144602, -0.894015,
		-0.626044, -0.760125, 0.174007,
		37.108997, 39.702633, 39.177231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054802, 40.753181, 39.157810>,  <37.547230, 40.234722, 39.055428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054802, 40.753181, 39.157810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032215, 40.711720, 38.760605>,  <38.018661, 40.686840, 38.522282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032215, 40.711720, 38.760605>,  <38.054802, 40.753181, 39.157810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032215, 40.711720, 38.760605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970322, 0.228538, -0.079033,
		0.235132, -0.968001, 0.087677,
		-0.056467, -0.103658, -0.993009,
		38.015274, 40.680622, 38.462704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627029, 40.537502, 38.905895>,  <38.054802, 40.753181, 39.157810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627029, 40.537502, 38.905895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495193, 40.688450, 38.559723>,  <38.416092, 40.779018, 38.352020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495193, 40.688450, 38.559723>,  <38.627029, 40.537502, 38.905895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495193, 40.688450, 38.559723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916510, 0.347959, -0.197318,
		0.226672, -0.858207, -0.460545,
		-0.329590, 0.377367, -0.865427,
		38.396317, 40.801659, 38.300095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080177, 40.356438, 38.266712>,  <38.627029, 40.537502, 38.905895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080177, 40.356438, 38.266712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886444, 40.705322, 38.239388>,  <38.770203, 40.914654, 38.222992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886444, 40.705322, 38.239388>,  <39.080177, 40.356438, 38.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886444, 40.705322, 38.239388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864825, 0.465500, -0.188113,
		-0.132275, -0.150188, -0.979769,
		-0.484335, 0.872212, -0.068313,
		38.741142, 40.966988, 38.218895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209835, 40.584198, 37.605648>,  <39.080177, 40.356438, 38.266712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209835, 40.584198, 37.605648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127518, 40.850498, 37.892540>,  <39.078125, 41.010277, 38.064674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127518, 40.850498, 37.892540>,  <39.209835, 40.584198, 37.605648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127518, 40.850498, 37.892540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921236, 0.379037, -0.087498,
		-0.330109, 0.642734, -0.691319,
		-0.205797, 0.665751, 0.717233,
		39.065777, 41.050224, 38.107708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304012, 41.322498, 37.413738>,  <39.209835, 40.584198, 37.605648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304012, 41.322498, 37.413738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380421, 41.254391, 37.800419>,  <39.426266, 41.213528, 38.032429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380421, 41.254391, 37.800419>,  <39.304012, 41.322498, 37.413738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380421, 41.254391, 37.800419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971518, 0.173482, -0.161418,
		-0.140222, 0.970006, 0.198559,
		0.191023, -0.170269, 0.966705,
		39.437729, 41.203308, 38.090431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952312, 41.448128, 37.348282>,  <39.304012, 41.322498, 37.413738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952312, 41.448128, 37.348282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916969, 41.264000, 37.701622>,  <39.895763, 41.153522, 37.913624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916969, 41.264000, 37.701622>,  <39.952312, 41.448128, 37.348282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916969, 41.264000, 37.701622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929522, -0.356853, -0.092980,
		0.358025, 0.812873, 0.459407,
		-0.088360, -0.460318, 0.883346,
		39.890461, 41.125904, 37.966625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595547, 41.562984, 37.746796>,  <39.952312, 41.448128, 37.348282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595547, 41.562984, 37.746796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412884, 41.231880, 37.877190>,  <40.303284, 41.033218, 37.955425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412884, 41.231880, 37.877190>,  <40.595547, 41.562984, 37.746796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412884, 41.231880, 37.877190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801408, -0.541856, -0.253256,
		0.386275, 0.145598, 0.910820,
		-0.456659, -0.827764, 0.325989,
		40.275887, 40.983551, 37.974987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068722, 41.304996, 38.029922>,  <40.595547, 41.562984, 37.746796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068722, 41.304996, 38.029922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824184, 40.990330, 37.995480>,  <40.677464, 40.801529, 37.974815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824184, 40.990330, 37.995480>,  <41.068722, 41.304996, 38.029922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824184, 40.990330, 37.995480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774914, -0.573011, -0.266770,
		0.160520, -0.229813, 0.959906,
		-0.611344, -0.786667, -0.086105,
		40.640781, 40.754330, 37.969646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472969, 40.699409, 38.315468>,  <41.068722, 41.304996, 38.029922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472969, 40.699409, 38.315468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191174, 40.527851, 38.089283>,  <41.022095, 40.424915, 37.953571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191174, 40.527851, 38.089283>,  <41.472969, 40.699409, 38.315468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191174, 40.527851, 38.089283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673866, -0.654250, -0.343311,
		-0.222708, -0.622902, 0.749929,
		-0.704490, -0.428894, -0.565459,
		40.979828, 40.399181, 37.919647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670666, 40.054588, 38.349060>,  <41.472969, 40.699409, 38.315468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670666, 40.054588, 38.349060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426525, 40.080338, 38.033257>,  <41.280041, 40.095787, 37.843773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426525, 40.080338, 38.033257>,  <41.670666, 40.054588, 38.349060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426525, 40.080338, 38.033257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633694, -0.558355, -0.535418,
		-0.475295, -0.827101, 0.299998,
		-0.610350, 0.064374, -0.789512,
		41.243420, 40.099651, 37.796402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633484, 39.353657, 38.222191>,  <41.670666, 40.054588, 38.349060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633484, 39.353657, 38.222191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529453, 39.568356, 37.901127>,  <41.467033, 39.697174, 37.708488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529453, 39.568356, 37.901127>,  <41.633484, 39.353657, 38.222191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529453, 39.568356, 37.901127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674779, -0.493566, -0.548695,
		-0.690677, -0.684319, -0.233822,
		-0.260076, 0.536749, -0.802659,
		41.451431, 39.729382, 37.660328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396851, 38.858097, 37.667446>,  <41.633484, 39.353657, 38.222191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396851, 38.858097, 37.667446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507900, 39.204361, 37.500809>,  <41.574532, 39.412121, 37.400826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507900, 39.204361, 37.500809>,  <41.396851, 38.858097, 37.667446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507900, 39.204361, 37.500809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578537, -0.496842, -0.646872,
		-0.766955, -0.061427, -0.638754,
		0.277624, 0.865664, -0.416593,
		41.591187, 39.464062, 37.375832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271797, 38.817245, 37.033005>,  <41.396851, 38.858097, 37.667446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271797, 38.817245, 37.033005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546795, 39.107277, 37.016941>,  <41.711792, 39.281296, 37.007301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546795, 39.107277, 37.016941>,  <41.271797, 38.817245, 37.033005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546795, 39.107277, 37.016941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583484, -0.584465, -0.563868,
		-0.432324, 0.364221, -0.824888,
		0.687491, 0.725082, -0.040161,
		41.753040, 39.324802, 37.004894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438728, 38.898098, 36.297623>,  <41.271797, 38.817245, 37.033005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438728, 38.898098, 36.297623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740463, 39.013268, 36.533611>,  <41.921505, 39.082367, 36.675205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740463, 39.013268, 36.533611>,  <41.438728, 38.898098, 36.297623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740463, 39.013268, 36.533611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624126, -0.593198, -0.508511,
		0.203562, 0.751810, -0.627172,
		0.754341, 0.287921, 0.589976,
		41.966766, 39.099644, 36.710606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996834, 38.869217, 35.838413>,  <41.438728, 38.898098, 36.297623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996834, 38.869217, 35.838413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178192, 38.898331, 36.193748>,  <42.287006, 38.915798, 36.406948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178192, 38.898331, 36.193748>,  <41.996834, 38.869217, 35.838413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178192, 38.898331, 36.193748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785579, -0.503472, -0.359697,
		0.421072, 0.860941, -0.285446,
		0.453392, 0.072782, 0.888335,
		42.314209, 38.920166, 36.460247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776237, 39.055408, 35.625370>,  <41.996834, 38.869217, 35.838413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776237, 39.055408, 35.625370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762558, 38.927872, 36.004246>,  <42.754353, 38.851349, 36.231571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762558, 38.927872, 36.004246>,  <42.776237, 39.055408, 35.625370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762558, 38.927872, 36.004246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860599, -0.491257, -0.134298,
		0.508134, 0.810559, 0.291192,
		-0.034194, -0.318841, 0.947191,
		42.752300, 38.832218, 36.288403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415821, 39.210922, 35.988480>,  <42.776237, 39.055408, 35.625370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415821, 39.210922, 35.988480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240353, 38.891705, 36.153736>,  <43.135071, 38.700172, 36.252892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240353, 38.891705, 36.153736>,  <43.415821, 39.210922, 35.988480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240353, 38.891705, 36.153736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762286, -0.573920, -0.299226,
		0.475908, 0.183672, 0.860102,
		-0.438670, -0.798048, 0.413144,
		43.108753, 38.652290, 36.277679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952118, 38.752155, 36.322216>,  <43.415821, 39.210922, 35.988480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952118, 38.752155, 36.322216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643967, 38.501034, 36.277706>,  <43.459076, 38.350361, 36.250999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643967, 38.501034, 36.277706>,  <43.952118, 38.752155, 36.322216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643967, 38.501034, 36.277706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636763, -0.748700, -0.184340,
		0.032418, -0.212867, 0.976543,
		-0.770378, -0.627803, -0.111275,
		43.412853, 38.312695, 36.244324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124481, 38.155457, 36.765377>,  <43.952118, 38.752155, 36.322216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124481, 38.155457, 36.765377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816467, 38.012402, 36.554039>,  <43.631660, 37.926567, 36.427235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816467, 38.012402, 36.554039>,  <44.124481, 38.155457, 36.765377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816467, 38.012402, 36.554039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430049, -0.902668, -0.015754,
		-0.471285, -0.239345, 0.848884,
		-0.770031, -0.357637, -0.528344,
		43.585457, 37.905109, 36.395535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880711, 37.520073, 37.133743>,  <44.124481, 38.155457, 36.765377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880711, 37.520073, 37.133743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762123, 37.520210, 36.751728>,  <43.690971, 37.520294, 36.522518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762123, 37.520210, 36.751728>,  <43.880711, 37.520073, 37.133743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762123, 37.520210, 36.751728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369297, -0.922172, -0.114973,
		-0.880753, -0.386780, 0.273268,
		-0.296469, 0.000346, -0.955042,
		43.673183, 37.520313, 36.465214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495098, 36.901882, 37.015594>,  <43.880711, 37.520073, 37.133743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495098, 36.901882, 37.015594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644688, 37.027157, 36.666412>,  <43.734444, 37.102322, 36.456902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644688, 37.027157, 36.666412>,  <43.495098, 36.901882, 37.015594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644688, 37.027157, 36.666412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564154, -0.823908, -0.053906,
		-0.736120, -0.472323, -0.484808,
		0.373976, 0.313188, -0.872958,
		43.756882, 37.121113, 36.404526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546543, 36.233223, 36.588814>,  <43.495098, 36.901882, 37.015594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546543, 36.233223, 36.588814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766708, 36.534081, 36.443859>,  <43.898808, 36.714596, 36.356884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766708, 36.534081, 36.443859>,  <43.546543, 36.233223, 36.588814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766708, 36.534081, 36.443859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773079, -0.623053, -0.118970,
		-0.315272, -0.214674, -0.924402,
		0.550412, 0.752143, -0.362391,
		43.931831, 36.759724, 36.335140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790237, 35.978004, 35.935757>,  <43.546543, 36.233223, 36.588814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790237, 35.978004, 35.935757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051174, 36.261784, 36.042435>,  <44.207737, 36.432053, 36.106441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051174, 36.261784, 36.042435>,  <43.790237, 35.978004, 35.935757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051174, 36.261784, 36.042435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757841, -0.615722, -0.215787,
		0.011118, 0.342878, -0.939314,
		0.652345, 0.709451, 0.266693,
		44.246876, 36.474621, 36.122444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301262, 35.914299, 35.492134>,  <43.790237, 35.978004, 35.935757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301262, 35.914299, 35.492134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480968, 36.129738, 35.777252>,  <44.588795, 36.258999, 35.948322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480968, 36.129738, 35.777252>,  <44.301262, 35.914299, 35.492134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480968, 36.129738, 35.777252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846283, -0.512234, -0.146357,
		0.286291, 0.668980, -0.685933,
		0.449268, 0.538593, 0.712795,
		44.615749, 36.291317, 35.991089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039082, 36.069336, 35.280777>,  <44.301262, 35.914299, 35.492134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039082, 36.069336, 35.280777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008762, 36.100407, 35.678413>,  <44.990570, 36.119049, 35.916996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008762, 36.100407, 35.678413>,  <45.039082, 36.069336, 35.280777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008762, 36.100407, 35.678413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639581, -0.761066, 0.108232,
		0.764978, 0.644007, 0.008010,
		-0.075799, 0.077672, 0.994093,
		44.986023, 36.123707, 35.976643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575180, 35.669704, 35.437286>,  <45.039082, 36.069336, 35.280777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575180, 35.669704, 35.437286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384754, 35.742821, 35.781368>,  <45.270500, 35.786690, 35.987816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384754, 35.742821, 35.781368>,  <45.575180, 35.669704, 35.437286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384754, 35.742821, 35.781368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435074, -0.801111, 0.411013,
		0.764248, 0.569921, 0.301853,
		-0.476063, 0.182788, 0.860205,
		45.241936, 35.797657, 36.039429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.066307, 35.850132, 35.796318>,  <45.575180, 35.669704, 35.437286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.066307, 35.850132, 35.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761227, 35.687519, 35.997520>,  <45.578178, 35.589951, 36.118240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761227, 35.687519, 35.997520>,  <46.066307, 35.850132, 35.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761227, 35.687519, 35.997520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620956, -0.677756, 0.393776,
		0.180832, 0.612678, 0.769367,
		-0.762701, -0.406536, 0.503006,
		45.532417, 35.565559, 36.148422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763111, 35.955944, 35.747372>,  <46.066307, 35.850132, 35.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763111, 35.955944, 35.747372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678555, 35.792076, 35.392410>,  <46.627823, 35.693756, 35.179432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678555, 35.792076, 35.392410>,  <46.763111, 35.955944, 35.747372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678555, 35.792076, 35.392410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976103, -0.135291, -0.170059,
		-0.050390, -0.902144, 0.428482,
		-0.211387, -0.409673, -0.887403,
		46.615139, 35.669174, 35.126190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968384, 35.270298, 35.701424>,  <46.763111, 35.955944, 35.747372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968384, 35.270298, 35.701424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976067, 35.439404, 35.339008>,  <46.980675, 35.540867, 35.121559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976067, 35.439404, 35.339008>,  <46.968384, 35.270298, 35.701424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976067, 35.439404, 35.339008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986740, -0.154093, -0.050986,
		-0.161169, -0.893043, -0.420118,
		0.019204, 0.422765, -0.906036,
		46.981827, 35.566235, 35.067196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164375, 34.755535, 35.165741>,  <46.968384, 35.270298, 35.701424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164375, 34.755535, 35.165741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.250710, 35.124931, 35.038879>,  <47.302509, 35.346569, 34.962761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.250710, 35.124931, 35.038879>,  <47.164375, 34.755535, 35.165741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.250710, 35.124931, 35.038879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920094, -0.301084, -0.250548,
		-0.326867, -0.237735, -0.914680,
		0.215832, 0.923488, -0.317153,
		47.315460, 35.401978, 34.943733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530815, 34.736935, 34.567230>,  <47.164375, 34.755535, 35.165741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530815, 34.736935, 34.567230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674545, 35.075405, 34.724648>,  <47.760784, 35.278488, 34.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674545, 35.075405, 34.724648>,  <47.530815, 34.736935, 34.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674545, 35.075405, 34.724648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893264, -0.189798, -0.407499,
		-0.270123, 0.497958, -0.824058,
		0.359322, 0.846177, 0.393539,
		47.782341, 35.329258, 34.842709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.084023, 38.137558, 46.632175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698769, 38.174374, 46.733284>,  <36.467617, 38.196465, 46.793949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698769, 38.174374, 46.733284>,  <37.084023, 38.137558, 46.632175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698769, 38.174374, 46.733284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263124, -0.517756, -0.814061,
		0.055948, -0.850563, 0.522888,
		-0.963138, 0.092040, 0.252771,
		36.409828, 38.201984, 46.809116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811668, 37.490444, 46.490795>,  <37.084023, 38.137558, 46.632175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811668, 37.490444, 46.490795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492599, 37.730942, 46.509636>,  <36.301159, 37.875240, 46.520939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492599, 37.730942, 46.509636>,  <36.811668, 37.490444, 46.490795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492599, 37.730942, 46.509636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470700, -0.571849, -0.671885,
		-0.377033, -0.558117, 0.739156,
		-0.797676, 0.601244, 0.047100,
		36.253296, 37.911316, 46.523766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294319, 37.013496, 46.340145>,  <36.811668, 37.490444, 46.490795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294319, 37.013496, 46.340145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128468, 37.371876, 46.276459>,  <36.028957, 37.586903, 46.238247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128468, 37.371876, 46.276459>,  <36.294319, 37.013496, 46.340145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128468, 37.371876, 46.276459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621777, -0.406690, -0.669326,
		-0.664435, -0.178528, 0.725709,
		-0.414632, 0.895953, -0.159215,
		36.004078, 37.640663, 46.228695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646069, 36.865795, 46.358833>,  <36.294319, 37.013496, 46.340145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646069, 36.865795, 46.358833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697655, 37.201813, 46.148048>,  <35.728607, 37.403423, 46.021576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697655, 37.201813, 46.148048>,  <35.646069, 36.865795, 46.358833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697655, 37.201813, 46.148048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544480, -0.384148, -0.745635,
		-0.828800, 0.383083, 0.407846,
		0.128967, 0.840047, -0.526963,
		35.736343, 37.453827, 45.989960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985668, 37.054218, 46.120361>,  <35.646069, 36.865795, 46.358833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985668, 37.054218, 46.120361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245785, 37.259621, 45.896420>,  <35.401855, 37.382862, 45.762054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245785, 37.259621, 45.896420>,  <34.985668, 37.054218, 46.120361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245785, 37.259621, 45.896420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383203, -0.414607, -0.825383,
		-0.655956, 0.751276, -0.072840,
		0.650291, 0.513502, -0.559855,
		35.440872, 37.413670, 45.728462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627357, 37.296906, 45.469971>,  <34.985668, 37.054218, 46.120361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627357, 37.296906, 45.469971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000481, 37.344772, 45.334003>,  <35.224354, 37.373493, 45.252422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000481, 37.344772, 45.334003>,  <34.627357, 37.296906, 45.469971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000481, 37.344772, 45.334003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324381, -0.132072, -0.936661,
		-0.156979, 0.983991, -0.084381,
		0.932810, 0.119664, -0.339920,
		35.280323, 37.380672, 45.232029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523388, 37.585640, 44.759869>,  <34.627357, 37.296906, 45.469971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523388, 37.585640, 44.759869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909916, 37.483025, 44.767956>,  <35.141834, 37.421455, 44.772808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909916, 37.483025, 44.767956>,  <34.523388, 37.585640, 44.759869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909916, 37.483025, 44.767956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034510, -0.207047, -0.977722,
		0.255011, 0.944097, -0.208927,
		0.966322, -0.256540, 0.020219,
		35.199814, 37.406063, 44.774021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832489, 37.849159, 44.163158>,  <34.523388, 37.585640, 44.759869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832489, 37.849159, 44.163158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079144, 37.553062, 44.270340>,  <35.227135, 37.375404, 44.334648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079144, 37.553062, 44.270340>,  <34.832489, 37.849159, 44.163158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079144, 37.553062, 44.270340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005252, -0.344224, -0.938873,
		0.787233, 0.577533, -0.216148,
		0.616633, -0.740247, 0.267952,
		35.264133, 37.330990, 44.350727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202259, 37.924534, 43.642132>,  <34.832489, 37.849159, 44.163158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202259, 37.924534, 43.642132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271675, 37.560520, 43.792713>,  <35.313324, 37.342113, 43.883064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271675, 37.560520, 43.792713>,  <35.202259, 37.924534, 43.642132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271675, 37.560520, 43.792713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061180, -0.371558, -0.926392,
		0.982925, 0.183797, -0.008805,
		0.173540, -0.910035, 0.376458,
		35.323738, 37.287510, 43.905651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802952, 37.703884, 43.237652>,  <35.202259, 37.924534, 43.642132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802952, 37.703884, 43.237652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609932, 37.390770, 43.394821>,  <35.494118, 37.202900, 43.489124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609932, 37.390770, 43.394821>,  <35.802952, 37.703884, 43.237652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609932, 37.390770, 43.394821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142927, -0.512973, -0.846422,
		0.864126, -0.352285, 0.359418,
		-0.482553, -0.782786, 0.392922,
		35.465164, 37.155933, 43.512699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270325, 37.065262, 43.281796>,  <35.802952, 37.703884, 43.237652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270325, 37.065262, 43.281796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891346, 36.938831, 43.262058>,  <35.663960, 36.862972, 43.250214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891346, 36.938831, 43.262058>,  <36.270325, 37.065262, 43.281796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891346, 36.938831, 43.262058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221354, -0.536366, -0.814441,
		0.230960, -0.782564, 0.578145,
		-0.947449, -0.316078, -0.049345,
		35.607113, 36.844009, 43.247253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279518, 36.394318, 43.186184>,  <36.270325, 37.065262, 43.281796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279518, 36.394318, 43.186184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902500, 36.478962, 43.082771>,  <35.676289, 36.529751, 43.020725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902500, 36.478962, 43.082771>,  <36.279518, 36.394318, 43.186184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902500, 36.478962, 43.082771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070115, -0.631300, -0.772363,
		-0.326651, -0.746110, 0.580189,
		-0.942541, 0.211613, -0.258528,
		35.619740, 36.542446, 43.005211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900688, 35.742565, 43.116577>,  <36.279518, 36.394318, 43.186184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900688, 35.742565, 43.116577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680447, 36.002682, 42.907211>,  <35.548302, 36.158752, 42.781593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680447, 36.002682, 42.907211>,  <35.900688, 35.742565, 43.116577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680447, 36.002682, 42.907211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053760, -0.598093, -0.799622,
		-0.833036, -0.468411, 0.294351,
		-0.550601, 0.650289, -0.523414,
		35.515266, 36.197769, 42.750187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489285, 35.328915, 42.776455>,  <35.900688, 35.742565, 43.116577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489285, 35.328915, 42.776455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.467056, 35.666222, 42.562611>,  <35.453720, 35.868607, 42.434303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.467056, 35.666222, 42.562611>,  <35.489285, 35.328915, 42.776455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467056, 35.666222, 42.562611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040153, -0.533119, -0.845087,
		-0.997647, -0.068429, -0.004233,
		-0.055572, 0.843269, -0.534612,
		35.450386, 35.919201, 42.402225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235374, 35.118904, 42.169361>,  <35.489285, 35.328915, 42.776455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235374, 35.118904, 42.169361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398689, 35.477547, 42.100773>,  <35.496677, 35.692730, 42.059620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398689, 35.477547, 42.100773>,  <35.235374, 35.118904, 42.169361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398689, 35.477547, 42.100773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277992, -0.301040, -0.912192,
		-0.869495, 0.324770, -0.372160,
		0.408287, 0.896604, -0.171469,
		35.521175, 35.746529, 42.049332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937984, 35.317211, 41.540218>,  <35.235374, 35.118904, 42.169361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937984, 35.317211, 41.540218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271202, 35.536633, 41.568867>,  <35.471134, 35.668285, 41.586056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271202, 35.536633, 41.568867>,  <34.937984, 35.317211, 41.540218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271202, 35.536633, 41.568867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284764, -0.314206, -0.905640,
		-0.474285, 0.774834, -0.417954,
		0.833044, 0.548550, 0.071621,
		35.521114, 35.701199, 41.590355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016026, 35.646069, 40.885815>,  <34.937984, 35.317211, 41.540218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016026, 35.646069, 40.885815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387241, 35.652794, 41.034653>,  <35.609970, 35.656830, 41.123955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387241, 35.652794, 41.034653>,  <35.016026, 35.646069, 40.885815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387241, 35.652794, 41.034653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366171, -0.224160, -0.903145,
		0.068220, 0.974407, -0.214189,
		0.928044, 0.016817, 0.372092,
		35.665653, 35.657841, 41.146278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410259, 36.194122, 40.479355>,  <35.016026, 35.646069, 40.885815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410259, 36.194122, 40.479355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666813, 35.930607, 40.636646>,  <35.820744, 35.772499, 40.731022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666813, 35.930607, 40.636646>,  <35.410259, 36.194122, 40.479355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666813, 35.930607, 40.636646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362558, -0.191440, -0.912087,
		0.676151, 0.727564, 0.116063,
		0.641383, -0.658788, 0.393226,
		35.859226, 35.732971, 40.754616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965576, 36.132977, 40.000137>,  <35.410259, 36.194122, 40.479355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965576, 36.132977, 40.000137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086147, 35.814941, 40.210648>,  <36.158489, 35.624119, 40.336956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086147, 35.814941, 40.210648>,  <35.965576, 36.132977, 40.000137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086147, 35.814941, 40.210648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447083, -0.369656, -0.814538,
		0.842174, 0.480816, 0.244046,
		0.301430, -0.795092, 0.526279,
		36.176575, 35.576412, 40.368530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756832, 35.842484, 39.809772>,  <35.965576, 36.132977, 40.000137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756832, 35.842484, 39.809772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562748, 35.531773, 39.970360>,  <36.446297, 35.345345, 40.066711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562748, 35.531773, 39.970360>,  <36.756832, 35.842484, 39.809772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562748, 35.531773, 39.970360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405083, -0.606590, -0.684074,
		0.774905, -0.169291, 0.608985,
		-0.485212, -0.776781, 0.401473,
		36.417183, 35.298737, 40.090801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249184, 35.371197, 39.782928>,  <36.756832, 35.842484, 39.809772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249184, 35.371197, 39.782928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909241, 35.169121, 39.842957>,  <36.705273, 35.047874, 39.878975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909241, 35.169121, 39.842957>,  <37.249184, 35.371197, 39.782928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909241, 35.169121, 39.842957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280317, -0.674462, -0.683026,
		0.446274, -0.538409, 0.714811,
		-0.849860, -0.505190, 0.150070,
		36.654282, 35.017563, 39.887978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246059, 34.691608, 39.936241>,  <37.249184, 35.371197, 39.782928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246059, 34.691608, 39.936241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904003, 34.731384, 39.732731>,  <36.698769, 34.755249, 39.610626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904003, 34.731384, 39.732731>,  <37.246059, 34.691608, 39.936241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904003, 34.731384, 39.732731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390843, -0.521073, -0.758765,
		-0.340564, -0.847699, 0.406722,
		-0.855137, 0.099444, -0.508776,
		36.647461, 34.761219, 39.580097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638611, 34.100227, 39.757263>,  <37.246059, 34.691608, 39.936241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638611, 34.100227, 39.757263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006168, 34.249683, 39.807899>,  <38.226704, 34.339355, 39.838280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006168, 34.249683, 39.807899>,  <37.638611, 34.100227, 39.757263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006168, 34.249683, 39.807899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217787, 0.212912, 0.952490,
		0.328935, -0.902809, 0.277017,
		0.918896, 0.373638, 0.126586,
		38.281837, 34.361774, 39.845875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713322, 34.039249, 40.500416>,  <37.638611, 34.100227, 39.757263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713322, 34.039249, 40.500416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021118, 34.273636, 40.398815>,  <38.205795, 34.414268, 40.337852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021118, 34.273636, 40.398815>,  <37.713322, 34.039249, 40.500416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021118, 34.273636, 40.398815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019325, 0.376176, 0.926347,
		0.638360, -0.717728, 0.278142,
		0.769495, 0.585968, -0.254006,
		38.251968, 34.449425, 40.322613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216763, 33.993687, 41.047085>,  <37.713322, 34.039249, 40.500416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216763, 33.993687, 41.047085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300022, 34.343334, 40.871540>,  <38.349976, 34.553123, 40.766212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300022, 34.343334, 40.871540>,  <38.216763, 33.993687, 41.047085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300022, 34.343334, 40.871540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258923, 0.383440, 0.886528,
		0.943204, -0.298158, -0.146517,
		0.208145, 0.874114, -0.438862,
		38.362465, 34.605568, 40.739880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874912, 34.321629, 41.332294>,  <38.216763, 33.993687, 41.047085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874912, 34.321629, 41.332294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719875, 34.635933, 41.139484>,  <38.626854, 34.824516, 41.023796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719875, 34.635933, 41.139484>,  <38.874912, 34.321629, 41.332294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719875, 34.635933, 41.139484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173918, 0.575846, 0.798846,
		0.905275, 0.225796, -0.359853,
		-0.387595, 0.785759, -0.482029,
		38.603596, 34.871662, 40.994877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382195, 34.974323, 41.398415>,  <38.874912, 34.321629, 41.332294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382195, 34.974323, 41.398415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007484, 35.109440, 41.361858>,  <38.782658, 35.190510, 41.339924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007484, 35.109440, 41.361858>,  <39.382195, 34.974323, 41.398415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007484, 35.109440, 41.361858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172939, 0.673923, 0.718275,
		0.304214, 0.657058, -0.689731,
		-0.936774, 0.337790, -0.091386,
		38.726452, 35.210777, 41.334442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460537, 35.646683, 41.464596>,  <39.382195, 34.974323, 41.398415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460537, 35.646683, 41.464596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077953, 35.559372, 41.542099>,  <38.848404, 35.506985, 41.588600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077953, 35.559372, 41.542099>,  <39.460537, 35.646683, 41.464596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077953, 35.559372, 41.542099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042591, 0.552366, 0.832513,
		-0.288746, 0.804516, -0.519019,
		-0.956458, -0.218279, 0.193759,
		38.791016, 35.493889, 41.600227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283428, 36.143948, 41.897266>,  <39.460537, 35.646683, 41.464596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283428, 36.143948, 41.897266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941563, 35.942532, 41.947857>,  <38.736443, 35.821682, 41.978210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941563, 35.942532, 41.947857>,  <39.283428, 36.143948, 41.897266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941563, 35.942532, 41.947857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099217, 0.397525, 0.912211,
		-0.509611, 0.767087, -0.389711,
		-0.854666, -0.503538, 0.126475,
		38.685162, 35.791470, 41.985798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899178, 36.668301, 42.144138>,  <39.283428, 36.143948, 41.897266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899178, 36.668301, 42.144138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765186, 36.307491, 42.253056>,  <38.684792, 36.091007, 42.318405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765186, 36.307491, 42.253056>,  <38.899178, 36.668301, 42.144138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765186, 36.307491, 42.253056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039594, 0.302207, 0.952420,
		-0.941393, 0.308261, -0.136948,
		-0.334980, -0.902023, 0.272290,
		38.664692, 36.036884, 42.334743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236797, 36.820984, 42.556015>,  <38.899178, 36.668301, 42.144138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236797, 36.820984, 42.556015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383472, 36.455196, 42.624466>,  <38.471478, 36.235722, 42.665535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383472, 36.455196, 42.624466>,  <38.236797, 36.820984, 42.556015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383472, 36.455196, 42.624466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012518, 0.179071, 0.983757,
		-0.930261, -0.362870, 0.054215,
		0.366684, -0.914472, 0.171125,
		38.493477, 36.180855, 42.675804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828030, 36.546642, 43.184727>,  <38.236797, 36.820984, 42.556015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828030, 36.546642, 43.184727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186562, 36.374783, 43.140926>,  <38.401680, 36.271667, 43.114647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186562, 36.374783, 43.140926>,  <37.828030, 36.546642, 43.184727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186562, 36.374783, 43.140926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286387, 0.372471, 0.882750,
		-0.338488, -0.822597, 0.456904,
		0.896331, -0.429651, -0.109504,
		38.455460, 36.245888, 43.108074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890034, 36.094173, 43.816437>,  <37.828030, 36.546642, 43.184727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890034, 36.094173, 43.816437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.239155, 36.199383, 43.651981>,  <38.448627, 36.262508, 43.553307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.239155, 36.199383, 43.651981>,  <37.890034, 36.094173, 43.816437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239155, 36.199383, 43.651981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316311, 0.336704, 0.886892,
		0.371711, -0.904128, 0.210676,
		0.872799, 0.263029, -0.411142,
		38.500996, 36.278290, 43.528641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240833, 36.003658, 44.376587>,  <37.890034, 36.094173, 43.816437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240833, 36.003658, 44.376587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482101, 36.226089, 44.147865>,  <38.626862, 36.359547, 44.010632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482101, 36.226089, 44.147865>,  <38.240833, 36.003658, 44.376587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482101, 36.226089, 44.147865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456221, 0.347517, 0.819203,
		0.654252, -0.754991, -0.044081,
		0.603172, 0.556076, -0.571807,
		38.663052, 36.392914, 43.976322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825623, 35.968128, 44.763054>,  <38.240833, 36.003658, 44.376587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825623, 35.968128, 44.763054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.879631, 36.265476, 44.501007>,  <38.912037, 36.443886, 44.343781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.879631, 36.265476, 44.501007>,  <38.825623, 35.968128, 44.763054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879631, 36.265476, 44.501007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469102, 0.534419, 0.703093,
		0.872761, -0.402249, -0.276556,
		0.135021, 0.743366, -0.655116,
		38.920139, 36.488487, 44.304474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508343, 36.100159, 44.859173>,  <38.825623, 35.968128, 44.763054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508343, 36.100159, 44.859173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340382, 36.429977, 44.707489>,  <39.239605, 36.627869, 44.616478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340382, 36.429977, 44.707489>,  <39.508343, 36.100159, 44.859173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340382, 36.429977, 44.707489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533327, 0.562256, 0.632005,
		0.734335, 0.063133, -0.675845,
		-0.419899, 0.824550, -0.379214,
		39.214413, 36.677341, 44.593723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082256, 36.520226, 44.790730>,  <39.508343, 36.100159, 44.859173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082256, 36.520226, 44.790730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.758701, 36.755409, 44.790375>,  <39.564568, 36.896519, 44.790161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.758701, 36.755409, 44.790375>,  <40.082256, 36.520226, 44.790730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758701, 36.755409, 44.790375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450919, 0.621324, 0.640804,
		0.377314, 0.517942, -0.767704,
		-0.808892, 0.587956, -0.000884,
		39.516033, 36.931797, 44.790108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410793, 37.218716, 44.809917>,  <40.082256, 36.520226, 44.790730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410793, 37.218716, 44.809917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027203, 37.259544, 44.915707>,  <39.797047, 37.284042, 44.979179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027203, 37.259544, 44.915707>,  <40.410793, 37.218716, 44.809917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027203, 37.259544, 44.915707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270542, 0.608227, 0.746235,
		-0.084689, 0.787173, -0.610890,
		-0.958976, 0.102074, 0.264473,
		39.739510, 37.290165, 44.995049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201927, 37.981895, 44.911045>,  <40.410793, 37.218716, 44.809917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201927, 37.981895, 44.911045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.943813, 37.760700, 45.121876>,  <39.788944, 37.627983, 45.248375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.943813, 37.760700, 45.121876>,  <40.201927, 37.981895, 44.911045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943813, 37.760700, 45.121876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139579, 0.592989, 0.793020,
		-0.751080, 0.585295, -0.305464,
		-0.645288, -0.552985, 0.527078,
		39.750229, 37.594803, 45.279999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743855, 38.477581, 45.271740>,  <40.201927, 37.981895, 44.911045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743855, 38.477581, 45.271740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698395, 38.130020, 45.464447>,  <39.671120, 37.921486, 45.580070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698395, 38.130020, 45.464447>,  <39.743855, 38.477581, 45.271740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698395, 38.130020, 45.464447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026125, 0.482128, 0.875711,
		-0.993177, 0.112112, -0.032095,
		-0.113651, -0.868898, 0.481767,
		39.664299, 37.869350, 45.608978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.146450, 38.458805, 45.648773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352379, 38.167355, 45.829460>,  <39.475937, 37.992485, 45.937874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352379, 38.167355, 45.829460>,  <39.146450, 38.458805, 45.648773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352379, 38.167355, 45.829460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041024, 0.505372, 0.861926,
		-0.856313, -0.462272, 0.230287,
		0.514825, -0.728631, 0.451721,
		39.506828, 37.948765, 45.964977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775913, 38.251675, 46.167934>,  <39.146450, 38.458805, 45.648773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775913, 38.251675, 46.167934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.136948, 38.129776, 46.289570>,  <39.353569, 38.056637, 46.362553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.136948, 38.129776, 46.289570>,  <38.775913, 38.251675, 46.167934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136948, 38.129776, 46.289570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307560, 0.037817, 0.950777,
		-0.301242, -0.951684, -0.059593,
		0.902585, -0.304743, 0.304092,
		39.407722, 38.038353, 46.380798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586773, 37.807320, 46.650146>,  <38.775913, 38.251675, 46.167934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586773, 37.807320, 46.650146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962574, 37.914478, 46.735538>,  <39.188053, 37.978771, 46.786774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962574, 37.914478, 46.735538>,  <38.586773, 37.807320, 46.650146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962574, 37.914478, 46.735538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223266, 0.006231, 0.974738,
		0.259797, -0.963428, 0.065666,
		0.939499, 0.267895, 0.213482,
		39.244423, 37.994846, 46.799583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817097, 37.446896, 47.239021>,  <38.586773, 37.807320, 46.650146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817097, 37.446896, 47.239021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084465, 37.744186, 47.227428>,  <39.244884, 37.922562, 47.220470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084465, 37.744186, 47.227428>,  <38.817097, 37.446896, 47.239021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084465, 37.744186, 47.227428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009146, 0.047181, 0.998844,
		0.743731, -0.667379, 0.038335,
		0.668416, 0.743223, -0.028986,
		39.284988, 37.967152, 47.218731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235104, 37.390739, 47.881382>,  <38.817097, 37.446896, 47.239021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235104, 37.390739, 47.881382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.269489, 37.764328, 47.742641>,  <39.290119, 37.988480, 47.659397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.269489, 37.764328, 47.742641>,  <39.235104, 37.390739, 47.881382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269489, 37.764328, 47.742641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069270, 0.352905, 0.933091,
		0.993887, -0.056187, 0.095034,
		0.085965, 0.933970, -0.346856,
		39.295280, 38.044518, 47.638584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668640, 37.726879, 48.481949>,  <39.235104, 37.390739, 47.881382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668640, 37.726879, 48.481949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.514862, 38.027771, 48.267902>,  <39.422596, 38.208305, 48.139473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.514862, 38.027771, 48.267902>,  <39.668640, 37.726879, 48.481949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514862, 38.027771, 48.267902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084283, 0.548643, 0.831798,
		0.919293, 0.364880, -0.147521,
		-0.384443, 0.752232, -0.535117,
		39.399529, 38.253441, 48.107368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953007, 38.266003, 48.725174>,  <39.668640, 37.726879, 48.481949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953007, 38.266003, 48.725174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635033, 38.426231, 48.542915>,  <39.444248, 38.522369, 48.433559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635033, 38.426231, 48.542915>,  <39.953007, 38.266003, 48.725174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635033, 38.426231, 48.542915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139872, 0.609799, 0.780116,
		0.590344, 0.683877, -0.428725,
		-0.794940, 0.400570, -0.455647,
		39.396549, 38.546402, 48.406219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157196, 38.977036, 48.778469>,  <39.953007, 38.266003, 48.725174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157196, 38.977036, 48.778469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.764725, 38.937042, 48.712379>,  <39.529243, 38.913048, 48.672726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.764725, 38.937042, 48.712379>,  <40.157196, 38.977036, 48.778469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764725, 38.937042, 48.712379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188455, 0.682566, 0.706108,
		0.042180, 0.723953, -0.688558,
		-0.981176, -0.099979, -0.165224,
		39.470371, 38.907047, 48.662811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798016, 39.561840, 48.694458>,  <40.157196, 38.977036, 48.778469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798016, 39.561840, 48.694458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476448, 39.345535, 48.793484>,  <39.283508, 39.215752, 48.852898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476448, 39.345535, 48.793484>,  <39.798016, 39.561840, 48.694458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476448, 39.345535, 48.793484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171233, 0.609082, 0.774402,
		-0.569556, 0.580165, -0.582249,
		-0.803918, -0.540766, 0.247563,
		39.235271, 39.183304, 48.867752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163357, 39.929607, 48.705360>,  <39.798016, 39.561840, 48.694458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163357, 39.929607, 48.705360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085758, 39.626862, 48.955006>,  <39.039200, 39.445213, 49.104794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085758, 39.626862, 48.955006>,  <39.163357, 39.929607, 48.705360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085758, 39.626862, 48.955006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141113, 0.651113, 0.745748,
		-0.970800, 0.056602, -0.233118,
		-0.193997, -0.756868, 0.624112,
		39.027557, 39.399803, 49.142239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798721, 40.282745, 49.261227>,  <39.163357, 39.929607, 48.705360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798721, 40.282745, 49.261227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.860554, 39.927185, 49.433720>,  <38.897652, 39.713848, 49.537216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.860554, 39.927185, 49.433720>,  <38.798721, 40.282745, 49.261227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860554, 39.927185, 49.433720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166726, 0.406751, 0.898196,
		-0.973810, -0.210743, -0.085327,
		0.154581, -0.888899, 0.431235,
		38.906929, 39.660515, 49.563091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310772, 40.321892, 49.740643>,  <38.798721, 40.282745, 49.261227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310772, 40.321892, 49.740643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576508, 40.045708, 49.855129>,  <38.735947, 39.879997, 49.923820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576508, 40.045708, 49.855129>,  <38.310772, 40.321892, 49.740643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576508, 40.045708, 49.855129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259945, 0.145589, 0.954585,
		-0.700776, -0.708564, -0.082763,
		0.664335, -0.690464, 0.286214,
		38.775806, 39.838570, 49.940994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991096, 39.928665, 50.423248>,  <38.310772, 40.321892, 49.740643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991096, 39.928665, 50.423248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389030, 39.890980, 50.408169>,  <38.627792, 39.868370, 50.399120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389030, 39.890980, 50.408169>,  <37.991096, 39.928665, 50.423248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389030, 39.890980, 50.408169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054499, 0.182652, 0.981666,
		-0.085602, -0.978653, 0.186843,
		0.994838, -0.094216, -0.037701,
		38.687481, 39.862717, 50.396858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090942, 39.703339, 51.058174>,  <37.991096, 39.928665, 50.423248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090942, 39.703339, 51.058174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462669, 39.812542, 50.958714>,  <38.685707, 39.878063, 50.899036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462669, 39.812542, 50.958714>,  <38.090942, 39.703339, 51.058174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462669, 39.812542, 50.958714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174965, 0.267426, 0.947561,
		0.325192, -0.924093, 0.200757,
		0.929321, 0.273014, -0.248648,
		38.741467, 39.894447, 50.884121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643723, 39.333298, 51.511234>,  <38.090942, 39.703339, 51.058174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643723, 39.333298, 51.511234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784748, 39.672829, 51.353657>,  <38.869366, 39.876545, 51.259109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784748, 39.672829, 51.353657>,  <38.643723, 39.333298, 51.511234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784748, 39.672829, 51.353657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250948, 0.319796, 0.913650,
		0.901510, -0.420983, -0.100261,
		0.352568, 0.848825, -0.393944,
		38.890518, 39.927475, 51.235474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302364, 39.460812, 51.888882>,  <38.643723, 39.333298, 51.511234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302364, 39.460812, 51.888882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236725, 39.812733, 51.710438>,  <39.197342, 40.023888, 51.603371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236725, 39.812733, 51.710438>,  <39.302364, 39.460812, 51.888882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236725, 39.812733, 51.710438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244599, 0.474410, 0.845639,
		0.955638, 0.029647, -0.293048,
		-0.164095, 0.879804, -0.446113,
		39.187496, 40.076675, 51.576603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828480, 39.921139, 52.029305>,  <39.302364, 39.460812, 51.888882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828480, 39.921139, 52.029305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528111, 40.166359, 51.931091>,  <39.347889, 40.313492, 51.872162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528111, 40.166359, 51.931091>,  <39.828480, 39.921139, 52.029305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528111, 40.166359, 51.931091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183470, 0.550828, 0.814203,
		0.634395, 0.566354, -0.526105,
		-0.750921, 0.613051, -0.245534,
		39.302834, 40.350273, 51.857430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084621, 40.526890, 52.289978>,  <39.828480, 39.921139, 52.029305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084621, 40.526890, 52.289978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.688591, 40.548676, 52.238159>,  <39.450974, 40.561745, 52.207069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.688591, 40.548676, 52.238159>,  <40.084621, 40.526890, 52.289978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688591, 40.548676, 52.238159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081271, 0.530134, 0.844010,
		0.114642, 0.846163, -0.520447,
		-0.990077, 0.054462, -0.129544,
		39.391567, 40.565014, 52.199295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876907, 41.188828, 52.552902>,  <40.084621, 40.526890, 52.289978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876907, 41.188828, 52.552902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518486, 41.011856, 52.538273>,  <39.303432, 40.905674, 52.529495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518486, 41.011856, 52.538273>,  <39.876907, 41.188828, 52.552902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518486, 41.011856, 52.538273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305101, 0.553888, 0.774675,
		-0.322482, 0.705312, -0.631300,
		-0.896057, -0.442429, -0.036572,
		39.249668, 40.879128, 52.527302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402924, 41.757309, 52.692375>,  <39.876907, 41.188828, 52.552902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402924, 41.757309, 52.692375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222000, 41.408474, 52.767082>,  <39.113445, 41.199173, 52.811905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222000, 41.408474, 52.767082>,  <39.402924, 41.757309, 52.692375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222000, 41.408474, 52.767082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202296, 0.304276, 0.930855,
		-0.868614, 0.383254, -0.314047,
		-0.452311, -0.872085, 0.186768,
		39.086308, 41.146847, 52.823112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804626, 41.916229, 52.953541>,  <39.402924, 41.757309, 52.692375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804626, 41.916229, 52.953541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851452, 41.537388, 53.073063>,  <38.879547, 41.310081, 53.144775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851452, 41.537388, 53.073063>,  <38.804626, 41.916229, 52.953541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851452, 41.537388, 53.073063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322645, 0.248288, 0.913374,
		-0.939253, -0.203333, -0.276513,
		0.117064, -0.947105, 0.298810,
		38.886570, 41.253258, 53.162704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311512, 41.721527, 53.342899>,  <38.804626, 41.916229, 52.953541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311512, 41.721527, 53.342899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534740, 41.418083, 53.477394>,  <38.668678, 41.236015, 53.558090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534740, 41.418083, 53.477394>,  <38.311512, 41.721527, 53.342899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534740, 41.418083, 53.477394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432432, 0.079950, 0.898115,
		-0.708205, -0.646616, -0.283432,
		0.558075, -0.758615, 0.336238,
		38.702164, 41.190498, 53.578266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911278, 41.244125, 53.897305>,  <38.311512, 41.721527, 53.342899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911278, 41.244125, 53.897305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294872, 41.147446, 53.956539>,  <38.525028, 41.089439, 53.992081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294872, 41.147446, 53.956539>,  <37.911278, 41.244125, 53.897305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294872, 41.147446, 53.956539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139726, 0.051468, 0.988852,
		-0.246625, -0.968986, 0.015586,
		0.958985, -0.241698, 0.148086,
		38.582569, 41.074936, 54.000965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864594, 40.960918, 54.537121>,  <37.911278, 41.244125, 53.897305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864594, 40.960918, 54.537121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258472, 40.993797, 54.475655>,  <38.494801, 41.013527, 54.438774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258472, 40.993797, 54.475655>,  <37.864594, 40.960918, 54.537121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258472, 40.993797, 54.475655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125498, 0.277350, 0.952537,
		0.120917, -0.957246, 0.262791,
		0.984698, 0.082198, -0.153669,
		38.553883, 41.018456, 54.429554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475914, 40.705360, 54.067432>,  <37.864594, 40.960918, 54.537121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475914, 40.705360, 54.067432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107140, 40.757477, 54.213341>,  <36.885876, 40.788746, 54.300888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107140, 40.757477, 54.213341>,  <37.475914, 40.705360, 54.067432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107140, 40.757477, 54.213341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385457, -0.401450, -0.830819,
		0.038192, -0.906566, 0.420332,
		-0.921935, 0.130289, 0.364775,
		36.830559, 40.796562, 54.322773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193199, 40.097187, 54.059803>,  <37.475914, 40.705360, 54.067432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193199, 40.097187, 54.059803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890007, 40.357983, 54.067581>,  <36.708092, 40.514462, 54.072247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890007, 40.357983, 54.067581>,  <37.193199, 40.097187, 54.059803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890007, 40.357983, 54.067581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425410, -0.471527, -0.772456,
		-0.494467, -0.593775, 0.634770,
		-0.757977, 0.651992, 0.019443,
		36.662613, 40.553577, 54.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538509, 39.789364, 54.148415>,  <37.193199, 40.097187, 54.059803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538509, 39.789364, 54.148415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.398464, 40.121281, 53.974583>,  <36.314438, 40.320431, 53.870285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.398464, 40.121281, 53.974583>,  <36.538509, 39.789364, 54.148415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398464, 40.121281, 53.974583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474671, -0.557133, -0.681389,
		-0.807531, -0.032283, 0.588941,
		-0.350116, 0.829796, -0.434578,
		36.293430, 40.370220, 53.844208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811565, 39.648125, 53.865768>,  <36.538509, 39.789364, 54.148415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811565, 39.648125, 53.865768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967186, 39.962292, 53.673206>,  <36.060558, 40.150791, 53.557671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967186, 39.962292, 53.673206>,  <35.811565, 39.648125, 53.865768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967186, 39.962292, 53.673206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280272, -0.396884, -0.874031,
		-0.877544, 0.474970, 0.065722,
		0.389055, 0.785421, -0.481404,
		36.083904, 40.197918, 53.528786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380512, 39.745167, 53.286129>,  <35.811565, 39.648125, 53.865768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380512, 39.745167, 53.286129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695206, 39.958397, 53.161625>,  <35.884022, 40.086334, 53.086922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695206, 39.958397, 53.161625>,  <35.380512, 39.745167, 53.286129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695206, 39.958397, 53.161625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175746, -0.289936, -0.940771,
		-0.591744, 0.794840, -0.134418,
		0.786735, 0.533072, -0.311258,
		35.931225, 40.118320, 53.068249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135540, 39.983910, 52.629318>,  <35.380512, 39.745167, 53.286129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135540, 39.983910, 52.629318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534084, 40.017185, 52.636787>,  <35.773209, 40.037151, 52.641270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534084, 40.017185, 52.636787>,  <35.135540, 39.983910, 52.629318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534084, 40.017185, 52.636787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033413, -0.179539, -0.983183,
		-0.078436, 0.980227, -0.181665,
		0.996359, 0.083187, 0.018670,
		35.832993, 40.042141, 52.642387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271931, 40.252663, 51.947269>,  <35.135540, 39.983910, 52.629318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271931, 40.252663, 51.947269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596165, 40.071373, 52.095619>,  <35.790703, 39.962601, 52.184628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596165, 40.071373, 52.095619>,  <35.271931, 40.252663, 51.947269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596165, 40.071373, 52.095619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275359, -0.263957, -0.924394,
		0.516851, 0.851419, -0.089159,
		0.810581, -0.453224, 0.370873,
		35.839340, 39.935406, 52.206882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734333, 40.372383, 51.408836>,  <35.271931, 40.252663, 51.947269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734333, 40.372383, 51.408836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916004, 40.087151, 51.622467>,  <36.025005, 39.916012, 51.750645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916004, 40.087151, 51.622467>,  <35.734333, 40.372383, 51.408836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916004, 40.087151, 51.622467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487498, -0.302846, -0.818920,
		0.745702, 0.632292, 0.210083,
		0.454174, -0.713086, 0.534074,
		36.052258, 39.873226, 51.782688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505405, 40.372581, 51.243706>,  <35.734333, 40.372383, 51.408836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505405, 40.372581, 51.243706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381054, 40.010551, 51.359772>,  <36.306442, 39.793335, 51.429409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381054, 40.010551, 51.359772>,  <36.505405, 40.372581, 51.243706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381054, 40.010551, 51.359772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346549, -0.392211, -0.852100,
		0.885020, -0.164341, 0.435581,
		-0.310874, -0.905076, 0.290162,
		36.287792, 39.739029, 51.446819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089615, 39.889328, 51.193047>,  <36.505405, 40.372581, 51.243706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089615, 39.889328, 51.193047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747776, 39.683533, 51.164867>,  <36.542671, 39.560055, 51.147961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747776, 39.683533, 51.164867>,  <37.089615, 39.889328, 51.193047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747776, 39.683533, 51.164867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374370, -0.516398, -0.770182,
		0.359874, -0.684568, 0.633922,
		-0.854598, -0.514490, -0.070443,
		36.491398, 39.529186, 51.143734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255253, 39.221779, 50.996616>,  <37.089615, 39.889328, 51.193047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255253, 39.221779, 50.996616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867283, 39.214233, 50.899548>,  <36.634502, 39.209705, 50.841309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867283, 39.214233, 50.899548>,  <37.255253, 39.221779, 50.996616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867283, 39.214233, 50.899548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211864, -0.556226, -0.803571,
		-0.119823, -0.830817, 0.543494,
		-0.969925, -0.018861, -0.242669,
		36.576305, 39.208576, 50.826748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146931, 38.598019, 50.729946>,  <37.255253, 39.221779, 50.996616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146931, 38.598019, 50.729946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.846420, 38.817886, 50.583824>,  <36.666115, 38.949806, 50.496151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.846420, 38.817886, 50.583824>,  <37.146931, 38.598019, 50.729946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846420, 38.817886, 50.583824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229897, -0.300878, -0.925538,
		-0.618653, -0.779316, 0.099675,
		-0.751276, 0.549671, -0.365302,
		36.621037, 38.982788, 50.474236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632126, 38.151657, 50.379776>,  <37.146931, 38.598019, 50.729946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632126, 38.151657, 50.379776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572357, 38.510891, 50.214314>,  <36.536495, 38.726433, 50.115036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572357, 38.510891, 50.214314>,  <36.632126, 38.151657, 50.379776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572357, 38.510891, 50.214314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004558, -0.417726, -0.908562,
		-0.988763, -0.137646, 0.058325,
		-0.149423, 0.898086, -0.413659,
		36.527531, 38.780315, 50.090214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180859, 38.043091, 49.745636>,  <36.632126, 38.151657, 50.379776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180859, 38.043091, 49.745636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.341679, 38.406631, 49.701191>,  <36.438171, 38.624756, 49.674522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.341679, 38.406631, 49.701191>,  <36.180859, 38.043091, 49.745636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341679, 38.406631, 49.701191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058316, -0.146524, -0.987487,
		-0.913759, 0.390539, -0.111911,
		0.402049, 0.908851, -0.111113,
		36.462292, 38.679287, 49.667858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874779, 38.303898, 49.165878>,  <36.180859, 38.043091, 49.745636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874779, 38.303898, 49.165878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200340, 38.533615, 49.201092>,  <36.395676, 38.671448, 49.222221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200340, 38.533615, 49.201092>,  <35.874779, 38.303898, 49.165878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200340, 38.533615, 49.201092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065361, 0.060061, -0.996052,
		-0.577316, 0.816442, 0.011347,
		0.813900, 0.574296, 0.088038,
		36.444511, 38.705902, 49.227505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629620, 38.829464, 48.845078>,  <35.874779, 38.303898, 49.165878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629620, 38.829464, 48.845078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029266, 38.819603, 48.831493>,  <36.269054, 38.813686, 48.823345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029266, 38.819603, 48.831493>,  <35.629620, 38.829464, 48.845078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029266, 38.819603, 48.831493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030033, 0.145038, -0.988970,
		0.029305, 0.989119, 0.144170,
		0.999119, -0.024652, -0.033957,
		36.329002, 38.812206, 48.821308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889046, 39.378998, 48.431610>,  <35.629620, 38.829464, 48.845078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889046, 39.378998, 48.431610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180790, 39.106533, 48.406136>,  <36.355835, 38.943054, 48.390850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180790, 39.106533, 48.406136>,  <35.889046, 39.378998, 48.431610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180790, 39.106533, 48.406136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097410, -0.011255, -0.995181,
		0.677160, 0.732049, -0.074561,
		0.729360, -0.681160, -0.063687,
		36.399597, 38.902184, 48.387028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094215, 39.501595, 47.734909>,  <35.889046, 39.378998, 48.431610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094215, 39.501595, 47.734909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236835, 39.145576, 47.848541>,  <36.322407, 38.931965, 47.916721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236835, 39.145576, 47.848541>,  <36.094215, 39.501595, 47.734909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236835, 39.145576, 47.848541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021677, -0.296100, -0.954911,
		0.934026, 0.346629, -0.086280,
		0.356548, -0.890041, 0.284078,
		36.343800, 38.878563, 47.933765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624611, 39.299320, 47.223068>,  <36.094215, 39.501595, 47.734909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624611, 39.299320, 47.223068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505341, 38.959946, 47.397991>,  <36.433781, 38.756321, 47.502945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505341, 38.959946, 47.397991>,  <36.624611, 39.299320, 47.223068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505341, 38.959946, 47.397991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079493, -0.478633, -0.874409,
		0.951196, -0.225960, 0.210160,
		-0.298171, -0.848441, 0.437312,
		36.415890, 38.705414, 47.529186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987568, 38.824539, 46.886631>,  <36.624611, 39.299320, 47.223068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987568, 38.824539, 46.886631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666611, 38.646416, 47.045555>,  <36.474037, 38.539539, 47.140911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666611, 38.646416, 47.045555>,  <36.987568, 38.824539, 46.886631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666611, 38.646416, 47.045555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093883, -0.563274, -0.820919,
		0.589361, -0.696003, 0.410162,
		-0.802396, -0.445311, 0.397314,
		36.425892, 38.512821, 47.164749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.077652, 39.276787, 38.682049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756134, 39.060566, 38.582680>,  <38.563221, 38.930832, 38.523060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756134, 39.060566, 38.582680>,  <39.077652, 39.276787, 38.682049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756134, 39.060566, 38.582680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594347, -0.747724, -0.296077,
		-0.025704, -0.385633, 0.922294,
		-0.803798, -0.540552, -0.248419,
		38.514996, 38.898399, 38.508152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180679, 38.619251, 39.019680>,  <39.077652, 39.276787, 38.682049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180679, 38.619251, 39.019680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885601, 38.539715, 38.761604>,  <38.708553, 38.491993, 38.606758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885601, 38.539715, 38.761604>,  <39.180679, 38.619251, 39.019680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885601, 38.539715, 38.761604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418445, -0.884618, -0.205806,
		-0.529824, -0.421798, 0.735781,
		-0.737693, -0.198843, -0.645191,
		38.664291, 38.480061, 38.568047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085972, 37.897793, 39.096703>,  <39.180679, 38.619251, 39.019680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085972, 37.897793, 39.096703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900719, 37.962036, 38.748058>,  <38.789566, 38.000584, 38.538872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900719, 37.962036, 38.748058>,  <39.085972, 37.897793, 39.096703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900719, 37.962036, 38.748058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385698, -0.848912, -0.361367,
		-0.797961, -0.503542, 0.331216,
		-0.463136, 0.160607, -0.871614,
		38.761780, 38.010220, 38.486572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614868, 37.295639, 39.007019>,  <39.085972, 37.897793, 39.096703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614868, 37.295639, 39.007019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699837, 37.465858, 38.655159>,  <38.750816, 37.567989, 38.444042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699837, 37.465858, 38.655159>,  <38.614868, 37.295639, 39.007019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699837, 37.465858, 38.655159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235400, -0.895970, -0.376596,
		-0.948401, -0.127074, -0.290496,
		0.212421, 0.425546, -0.879652,
		38.763561, 37.593521, 38.391262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284050, 36.842651, 38.501644>,  <38.614868, 37.295639, 39.007019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284050, 36.842651, 38.501644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565456, 37.053219, 38.310669>,  <38.734299, 37.179558, 38.196083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565456, 37.053219, 38.310669>,  <38.284050, 36.842651, 38.501644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565456, 37.053219, 38.310669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176497, -0.780180, -0.600140,
		-0.688413, 0.337942, -0.641781,
		0.703517, 0.526416, -0.477440,
		38.776512, 37.211143, 38.167439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233368, 36.670052, 37.747417>,  <38.284050, 36.842651, 38.501644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233368, 36.670052, 37.747417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594173, 36.835506, 37.796852>,  <38.810658, 36.934780, 37.826511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594173, 36.835506, 37.796852>,  <38.233368, 36.670052, 37.747417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594173, 36.835506, 37.796852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425610, -0.804153, -0.414964,
		-0.072264, 0.426902, -0.901406,
		0.902017, 0.413634, 0.123582,
		38.864777, 36.959599, 37.833927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568432, 36.525063, 37.172775>,  <38.233368, 36.670052, 37.747417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568432, 36.525063, 37.172775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885777, 36.642666, 37.385990>,  <39.076183, 36.713230, 37.513920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885777, 36.642666, 37.385990>,  <38.568432, 36.525063, 37.172775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885777, 36.642666, 37.385990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544790, -0.733626, -0.406199,
		0.271624, 0.612658, -0.742207,
		0.793363, 0.294013, 0.533040,
		39.123787, 36.730869, 37.545902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130898, 36.690762, 36.686882>,  <38.568432, 36.525063, 37.172775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130898, 36.690762, 36.686882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.358307, 36.637077, 37.011539>,  <39.494751, 36.604866, 37.206333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.358307, 36.637077, 37.011539>,  <39.130898, 36.690762, 36.686882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358307, 36.637077, 37.011539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578459, -0.636299, -0.510400,
		0.584949, 0.759679, -0.284118,
		0.568524, -0.134207, 0.811646,
		39.528866, 36.596817, 37.255032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900719, 36.756977, 36.517746>,  <39.130898, 36.690762, 36.686882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900719, 36.756977, 36.517746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870609, 36.540249, 36.852592>,  <39.852543, 36.410210, 37.053501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870609, 36.540249, 36.852592>,  <39.900719, 36.756977, 36.517746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870609, 36.540249, 36.852592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630819, -0.676038, -0.380841,
		0.772270, 0.499399, 0.392683,
		-0.075277, -0.541824, 0.837114,
		39.848026, 36.377701, 37.103725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599007, 36.579014, 36.705097>,  <39.900719, 36.756977, 36.517746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599007, 36.579014, 36.705097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366222, 36.319584, 36.901333>,  <40.226551, 36.163925, 37.019073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366222, 36.319584, 36.901333>,  <40.599007, 36.579014, 36.705097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366222, 36.319584, 36.901333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692803, -0.711316, -0.118549,
		0.425851, 0.270890, 0.863290,
		-0.581958, -0.648574, 0.490588,
		40.191635, 36.125011, 37.048508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002354, 36.414524, 37.283459>,  <40.599007, 36.579014, 36.705097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002354, 36.414524, 37.283459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733051, 36.123207, 37.232376>,  <40.571468, 35.948418, 37.201725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733051, 36.123207, 37.232376>,  <41.002354, 36.414524, 37.283459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733051, 36.123207, 37.232376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733134, -0.679965, 0.012722,
		-0.096101, -0.085061, 0.991730,
		-0.673260, -0.728294, -0.127706,
		40.531075, 35.904720, 37.194065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204163, 35.945328, 37.733940>,  <41.002354, 36.414524, 37.283459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204163, 35.945328, 37.733940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.978130, 35.713802, 37.498772>,  <40.842510, 35.574886, 37.357670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.978130, 35.713802, 37.498772>,  <41.204163, 35.945328, 37.733940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978130, 35.713802, 37.498772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661739, -0.743561, 0.096014,
		-0.492729, -0.334794, 0.803200,
		-0.565083, -0.578818, -0.587921,
		40.808605, 35.540157, 37.322395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080170, 35.299389, 38.122864>,  <41.204163, 35.945328, 37.733940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080170, 35.299389, 38.122864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038799, 35.234169, 37.730392>,  <41.013977, 35.195038, 37.494907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038799, 35.234169, 37.730392>,  <41.080170, 35.299389, 38.122864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038799, 35.234169, 37.730392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796245, -0.604747, 0.016565,
		-0.596067, -0.779549, 0.192373,
		-0.103424, -0.163049, -0.981182,
		41.007771, 35.185253, 37.436039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976704, 34.572041, 37.939503>,  <41.080170, 35.299389, 38.122864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976704, 34.572041, 37.939503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135799, 34.735577, 37.610954>,  <41.231255, 34.833698, 37.413826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135799, 34.735577, 37.610954>,  <40.976704, 34.572041, 37.939503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135799, 34.735577, 37.610954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781749, -0.619639, 0.070119,
		-0.480288, -0.669996, -0.566064,
		0.397735, 0.408843, -0.821374,
		41.255119, 34.858231, 37.364544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158882, 33.999157, 37.495396>,  <40.976704, 34.572041, 37.939503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158882, 33.999157, 37.495396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368637, 34.281536, 37.304962>,  <41.494492, 34.450962, 37.190704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368637, 34.281536, 37.304962>,  <41.158882, 33.999157, 37.495396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368637, 34.281536, 37.304962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775921, -0.626444, -0.074260,
		-0.350662, -0.330461, -0.876260,
		0.524388, 0.705949, -0.476082,
		41.525955, 34.493320, 37.162136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549591, 33.610382, 36.925385>,  <41.158882, 33.999157, 37.495396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549591, 33.610382, 36.925385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.732410, 33.960327, 36.989525>,  <41.842102, 34.170296, 37.028008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.732410, 33.960327, 36.989525>,  <41.549591, 33.610382, 36.925385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732410, 33.960327, 36.989525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889264, -0.445887, -0.101951,
		-0.017695, 0.189192, -0.981781,
		0.457052, 0.874866, 0.160352,
		41.869526, 34.222786, 37.037632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066757, 33.628582, 36.400768>,  <41.549591, 33.610382, 36.925385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066757, 33.628582, 36.400768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172348, 33.857975, 36.710979>,  <42.235703, 33.995609, 36.897106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172348, 33.857975, 36.710979>,  <42.066757, 33.628582, 36.400768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172348, 33.857975, 36.710979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920316, -0.390402, -0.024569,
		0.288676, 0.720213, -0.630840,
		0.263976, 0.573480, 0.775524,
		42.251541, 34.030018, 36.943638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676430, 33.843479, 36.115974>,  <42.066757, 33.628582, 36.400768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676430, 33.843479, 36.115974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711750, 33.943027, 36.501774>,  <42.732941, 34.002758, 36.733253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711750, 33.943027, 36.501774>,  <42.676430, 33.843479, 36.115974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711750, 33.943027, 36.501774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963444, -0.267216, -0.019254,
		0.252939, 0.930945, -0.263370,
		0.088301, 0.248872, 0.964503,
		42.738239, 34.017689, 36.791126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282475, 34.036381, 36.142555>,  <42.676430, 33.843479, 36.115974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282475, 34.036381, 36.142555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200607, 33.998394, 36.532242>,  <43.151485, 33.975601, 36.766052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200607, 33.998394, 36.532242>,  <43.282475, 34.036381, 36.142555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200607, 33.998394, 36.532242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949616, -0.260614, 0.174099,
		0.237361, 0.960761, 0.143518,
		-0.204670, -0.094962, 0.974214,
		43.139206, 33.969906, 36.824505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628170, 34.629234, 36.524506>,  <43.282475, 34.036381, 36.142555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628170, 34.629234, 36.524506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597328, 34.325943, 36.783470>,  <43.578823, 34.143967, 36.938850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597328, 34.325943, 36.783470>,  <43.628170, 34.629234, 36.524506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597328, 34.325943, 36.783470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985407, -0.156790, -0.066262,
		0.151750, 0.632855, 0.759254,
		-0.077109, -0.758229, 0.647413,
		43.574196, 34.098473, 36.977695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199070, 34.628319, 36.949265>,  <43.628170, 34.629234, 36.524506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199070, 34.628319, 36.949265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074257, 34.250565, 36.990780>,  <43.999371, 34.023911, 37.015690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074257, 34.250565, 36.990780>,  <44.199070, 34.628319, 36.949265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074257, 34.250565, 36.990780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949821, -0.307577, 0.056890,
		-0.021803, 0.116334, 0.992971,
		-0.312034, -0.944385, 0.103790,
		43.980648, 33.967251, 37.021915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623146, 35.211124, 36.666451>,  <44.199070, 34.628319, 36.949265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623146, 35.211124, 36.666451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986458, 35.370041, 36.614021>,  <45.204445, 35.465389, 36.582565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986458, 35.370041, 36.614021>,  <44.623146, 35.211124, 36.666451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986458, 35.370041, 36.614021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411658, 0.904578, -0.110799,
		0.074547, 0.154595, 0.985162,
		0.908284, 0.397290, -0.131074,
		45.258942, 35.489227, 36.574699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680763, 35.744457, 37.146511>,  <44.623146, 35.211124, 36.666451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680763, 35.744457, 37.146511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927341, 35.790379, 36.834919>,  <45.075287, 35.817932, 36.647964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927341, 35.790379, 36.834919>,  <44.680763, 35.744457, 37.146511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927341, 35.790379, 36.834919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298386, 0.949587, -0.096176,
		0.728670, 0.291724, 0.619626,
		0.616446, 0.114807, -0.778983,
		45.112274, 35.824821, 36.601223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138359, 36.369774, 37.217216>,  <44.680763, 35.744457, 37.146511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138359, 36.369774, 37.217216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052757, 36.283268, 36.836182>,  <45.001396, 36.231365, 36.607559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052757, 36.283268, 36.836182>,  <45.138359, 36.369774, 37.217216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052757, 36.283268, 36.836182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468795, 0.878282, -0.094080,
		0.856990, 0.426436, -0.289343,
		-0.214006, -0.216269, -0.952591,
		44.988556, 36.218388, 36.550404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217922, 36.884136, 36.897289>,  <45.138359, 36.369774, 37.217216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217922, 36.884136, 36.897289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.025669, 36.714645, 36.590187>,  <44.910316, 36.612949, 36.405926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.025669, 36.714645, 36.590187>,  <45.217922, 36.884136, 36.897289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025669, 36.714645, 36.590187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603827, 0.794805, -0.060650,
		0.635913, 0.434440, -0.637869,
		-0.480632, -0.423731, -0.767753,
		44.881481, 36.587524, 36.359859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008881, 37.412697, 36.504406>,  <45.217922, 36.884136, 36.897289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008881, 37.412697, 36.504406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769291, 37.122421, 36.368988>,  <44.625538, 36.948257, 36.287739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769291, 37.122421, 36.368988>,  <45.008881, 37.412697, 36.504406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769291, 37.122421, 36.368988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732570, 0.667310, -0.134311,
		0.323381, 0.167557, -0.931316,
		-0.598971, -0.725687, -0.338543,
		44.589600, 36.904716, 36.267426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748814, 37.669708, 35.793034>,  <45.008881, 37.412697, 36.504406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748814, 37.669708, 35.793034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.497768, 37.396297, 35.942108>,  <44.347141, 37.232250, 36.031555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.497768, 37.396297, 35.942108>,  <44.748814, 37.669708, 35.793034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497768, 37.396297, 35.942108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729267, 0.683738, 0.025913,
		-0.272533, -0.255527, -0.927595,
		-0.627610, -0.683527, 0.372689,
		44.309486, 37.191238, 36.053913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189285, 37.569389, 35.274155>,  <44.748814, 37.669708, 35.793034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189285, 37.569389, 35.274155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059868, 37.449780, 35.633244>,  <43.982216, 37.378014, 35.848698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059868, 37.449780, 35.633244>,  <44.189285, 37.569389, 35.274155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059868, 37.449780, 35.633244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799481, 0.593861, -0.090329,
		-0.506110, -0.746936, -0.431207,
		-0.323547, -0.299026, 0.897720,
		43.962803, 37.360073, 35.902561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489639, 37.638214, 35.182140>,  <44.189285, 37.569389, 35.274155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489639, 37.638214, 35.182140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534794, 37.593861, 35.577103>,  <43.561886, 37.567249, 35.814079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534794, 37.593861, 35.577103>,  <43.489639, 37.638214, 35.182140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534794, 37.593861, 35.577103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762456, 0.627543, 0.157642,
		-0.637117, -0.770646, -0.013702,
		0.112888, -0.110883, 0.987401,
		43.568661, 37.560596, 35.873322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770046, 37.489159, 35.480297>,  <43.489639, 37.638214, 35.182140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770046, 37.489159, 35.480297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.025650, 37.611675, 35.762531>,  <43.179012, 37.685184, 35.931873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.025650, 37.611675, 35.762531>,  <42.770046, 37.489159, 35.480297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025650, 37.611675, 35.762531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664032, 0.682653, 0.305034,
		-0.388241, -0.663452, 0.639610,
		0.639007, 0.306295, 0.705588,
		43.217354, 37.703564, 35.974209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379528, 37.493038, 36.167393>,  <42.770046, 37.489159, 35.480297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379528, 37.493038, 36.167393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707085, 37.718269, 36.211849>,  <42.903618, 37.853409, 36.238525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707085, 37.718269, 36.211849>,  <42.379528, 37.493038, 36.167393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707085, 37.718269, 36.211849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544037, 0.699830, 0.462885,
		0.182860, -0.439520, 0.879423,
		0.818893, 0.563082, 0.111144,
		42.952751, 37.887196, 36.245193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495300, 37.701157, 36.929371>,  <42.379528, 37.493038, 36.167393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495300, 37.701157, 36.929371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697163, 37.979759, 36.725334>,  <42.818279, 38.146923, 36.602913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697163, 37.979759, 36.725334>,  <42.495300, 37.701157, 36.929371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697163, 37.979759, 36.725334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485080, 0.717534, 0.499842,
		0.714146, -0.004824, 0.699980,
		0.504671, 0.696507, -0.510084,
		42.848560, 38.188713, 36.572308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712112, 38.205273, 37.421223>,  <42.495300, 37.701157, 36.929371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712112, 38.205273, 37.421223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700367, 38.398453, 37.071159>,  <42.693321, 38.514362, 36.861122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700367, 38.398453, 37.071159>,  <42.712112, 38.205273, 37.421223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700367, 38.398453, 37.071159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358617, 0.812155, 0.460215,
		0.933023, 0.327360, 0.149346,
		-0.029364, 0.482949, -0.875156,
		42.691559, 38.543339, 36.808613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997742, 38.865532, 37.516041>,  <42.712112, 38.205273, 37.421223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997742, 38.865532, 37.516041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758396, 38.887974, 37.196339>,  <42.614788, 38.901440, 37.004517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758396, 38.887974, 37.196339>,  <42.997742, 38.865532, 37.516041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758396, 38.887974, 37.196339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484703, 0.768957, 0.416856,
		0.637981, 0.636834, -0.432923,
		-0.598367, 0.056107, -0.799255,
		42.578884, 38.904804, 36.956562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981411, 39.639393, 37.322647>,  <42.997742, 38.865532, 37.516041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981411, 39.639393, 37.322647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670406, 39.468540, 37.138023>,  <42.483803, 39.366028, 37.027248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670406, 39.468540, 37.138023>,  <42.981411, 39.639393, 37.322647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670406, 39.468540, 37.138023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615132, 0.669135, 0.416979,
		0.130740, 0.608125, -0.783001,
		-0.777509, -0.427134, -0.461560,
		42.437153, 39.340401, 36.999554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658085, 40.294296, 36.963463>,  <42.981411, 39.639393, 37.322647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658085, 40.294296, 36.963463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386883, 40.000877, 36.982327>,  <42.224163, 39.824825, 36.993645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386883, 40.000877, 36.982327>,  <42.658085, 40.294296, 36.963463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386883, 40.000877, 36.982327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692886, 0.659204, 0.292162,
		-0.245403, 0.165408, -0.955205,
		-0.678001, -0.733546, 0.047162,
		42.183483, 39.780815, 36.996475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959084, 40.599567, 36.828491>,  <42.658085, 40.294296, 36.963463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959084, 40.599567, 36.828491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.812313, 40.259693, 36.979965>,  <41.724251, 40.055771, 37.070850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.812313, 40.259693, 36.979965>,  <41.959084, 40.599567, 36.828491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812313, 40.259693, 36.979965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859509, 0.465369, 0.211367,
		-0.355825, -0.247932, -0.901065,
		-0.366923, -0.849683, 0.378689,
		41.702236, 40.004787, 37.093571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279972, 40.464844, 36.516907>,  <41.959084, 40.599567, 36.828491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279972, 40.464844, 36.516907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.315014, 40.280113, 36.869961>,  <41.336040, 40.169277, 37.081795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.315014, 40.280113, 36.869961>,  <41.279972, 40.464844, 36.516907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315014, 40.280113, 36.869961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811590, 0.480683, 0.332061,
		-0.577621, -0.745429, -0.332700,
		0.087605, -0.461822, 0.882636,
		41.341297, 40.141567, 37.134750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557247, 40.225204, 36.633186>,  <41.279972, 40.464844, 36.516907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557247, 40.225204, 36.633186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755802, 40.206730, 36.979935>,  <40.874935, 40.195644, 37.187984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755802, 40.206730, 36.979935>,  <40.557247, 40.225204, 36.633186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755802, 40.206730, 36.979935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786754, 0.398110, 0.471727,
		-0.366897, -0.916174, 0.161282,
		0.496392, -0.046186, 0.866869,
		40.904720, 40.192875, 37.239994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945229, 40.066570, 37.200260>,  <40.557247, 40.225204, 36.633186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945229, 40.066570, 37.200260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267891, 40.139420, 37.425163>,  <40.461491, 40.183128, 37.560104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267891, 40.139420, 37.425163>,  <39.945229, 40.066570, 37.200260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267891, 40.139420, 37.425163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590685, 0.216533, 0.777306,
		0.019817, -0.959138, 0.282245,
		0.806659, 0.182122, 0.562257,
		40.509888, 40.194057, 37.593842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845074, 39.743385, 37.792465>,  <39.945229, 40.066570, 37.200260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845074, 39.743385, 37.792465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095211, 40.052063, 37.838829>,  <40.245293, 40.237270, 37.866646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095211, 40.052063, 37.838829>,  <39.845074, 39.743385, 37.792465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095211, 40.052063, 37.838829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619797, 0.400929, 0.674616,
		0.474125, -0.493707, 0.729012,
		0.625345, 0.771692, 0.115908,
		40.282814, 40.283569, 37.873600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805901, 39.872498, 38.507950>,  <39.845074, 39.743385, 37.792465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805901, 39.872498, 38.507950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934364, 40.208828, 38.333652>,  <40.011444, 40.410625, 38.229076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934364, 40.208828, 38.333652>,  <39.805901, 39.872498, 38.507950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934364, 40.208828, 38.333652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734173, 0.511694, 0.446272,
		0.598203, 0.176585, 0.781646,
		0.321158, 0.840825, -0.435741,
		40.030712, 40.461075, 38.202930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.506016, 37.053070, 43.275436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236511, 36.845974, 43.486340>,  <39.074810, 36.721718, 43.612881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236511, 36.845974, 43.486340>,  <39.506016, 37.053070, 43.275436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236511, 36.845974, 43.486340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110202, -0.635138, -0.764497,
		0.730686, -0.573192, 0.370875,
		-0.673760, -0.517736, 0.527254,
		39.034382, 36.690655, 43.644516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677269, 36.400276, 43.092381>,  <39.506016, 37.053070, 43.275436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677269, 36.400276, 43.092381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317764, 36.337376, 43.256092>,  <39.102062, 36.299637, 43.354317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317764, 36.337376, 43.256092>,  <39.677269, 36.400276, 43.092381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317764, 36.337376, 43.256092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242900, -0.598550, -0.763372,
		0.365010, -0.785500, 0.499757,
		-0.898759, -0.157247, 0.409275,
		39.048138, 36.290203, 43.378876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566868, 35.612545, 43.021267>,  <39.677269, 36.400276, 43.092381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566868, 35.612545, 43.021267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216560, 35.800827, 43.064091>,  <39.006374, 35.913795, 43.089783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216560, 35.800827, 43.064091>,  <39.566868, 35.612545, 43.021267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216560, 35.800827, 43.064091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291085, -0.338029, -0.894989,
		-0.385090, -0.814967, 0.433051,
		-0.875771, 0.470707, 0.107053,
		38.953827, 35.942039, 43.096207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061310, 35.098877, 43.056435>,  <39.566868, 35.612545, 43.021267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061310, 35.098877, 43.056435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873463, 35.430916, 42.936176>,  <38.760754, 35.630138, 42.864021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873463, 35.430916, 42.936176>,  <39.061310, 35.098877, 43.056435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873463, 35.430916, 42.936176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092580, -0.384961, -0.918278,
		-0.878001, -0.403407, 0.257636,
		-0.469619, 0.830101, -0.300649,
		38.732578, 35.679947, 42.845982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358799, 34.871540, 42.739101>,  <39.061310, 35.098877, 43.056435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358799, 34.871540, 42.739101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438286, 35.240242, 42.605911>,  <38.485977, 35.461464, 42.525997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438286, 35.240242, 42.605911>,  <38.358799, 34.871540, 42.739101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438286, 35.240242, 42.605911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313858, -0.262002, -0.912605,
		-0.928442, 0.285857, 0.237237,
		0.198718, 0.921759, -0.332972,
		38.497902, 35.516769, 42.506020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774059, 35.067635, 42.392639>,  <38.358799, 34.871540, 42.739101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774059, 35.067635, 42.392639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051579, 35.305347, 42.229927>,  <38.218090, 35.447975, 42.132301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051579, 35.305347, 42.229927>,  <37.774059, 35.067635, 42.392639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051579, 35.305347, 42.229927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178996, -0.404813, -0.896709,
		-0.697567, 0.694950, -0.174486,
		0.693802, 0.594282, -0.406778,
		38.259720, 35.483631, 42.107895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539665, 35.337921, 41.785980>,  <37.774059, 35.067635, 42.392639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539665, 35.337921, 41.785980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935349, 35.358932, 41.731262>,  <38.172756, 35.371540, 41.698429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935349, 35.358932, 41.731262>,  <37.539665, 35.337921, 41.785980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935349, 35.358932, 41.731262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099419, -0.445246, -0.889872,
		-0.107652, 0.893866, -0.435217,
		0.989205, 0.052527, -0.136798,
		38.232109, 35.374691, 41.690224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622364, 35.741299, 41.107780>,  <37.539665, 35.337921, 41.785980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622364, 35.741299, 41.107780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966297, 35.546291, 41.168468>,  <38.172657, 35.429287, 41.204880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966297, 35.546291, 41.168468>,  <37.622364, 35.741299, 41.107780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966297, 35.546291, 41.168468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074152, -0.413232, -0.907601,
		0.505168, 0.769132, -0.391460,
		0.859829, -0.487519, 0.151719,
		38.224247, 35.400036, 41.213985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918221, 35.803249, 40.412674>,  <37.622364, 35.741299, 41.107780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918221, 35.803249, 40.412674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137760, 35.537853, 40.616066>,  <38.269485, 35.378616, 40.738102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137760, 35.537853, 40.616066>,  <37.918221, 35.803249, 40.412674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137760, 35.537853, 40.616066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157884, -0.515053, -0.842492,
		0.820876, 0.542681, -0.177932,
		0.548848, -0.663490, 0.508475,
		38.302414, 35.338806, 40.768608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641277, 35.755615, 40.089092>,  <37.918221, 35.803249, 40.412674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641277, 35.755615, 40.089092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563576, 35.410316, 40.275455>,  <38.516956, 35.203136, 40.387272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563576, 35.410316, 40.275455>,  <38.641277, 35.755615, 40.089092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563576, 35.410316, 40.275455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100367, -0.489953, -0.865952,
		0.975803, -0.121452, 0.181817,
		-0.194253, -0.863247, 0.465908,
		38.505299, 35.151340, 40.415226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165543, 35.287518, 40.004425>,  <38.641277, 35.755615, 40.089092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165543, 35.287518, 40.004425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873783, 35.025879, 40.084557>,  <38.698727, 34.868896, 40.132637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873783, 35.025879, 40.084557>,  <39.165543, 35.287518, 40.004425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873783, 35.025879, 40.084557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292803, -0.563172, -0.772725,
		0.618257, -0.504970, 0.602299,
		-0.729401, -0.654097, 0.200328,
		38.654964, 34.829651, 40.144653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517731, 34.735336, 40.043022>,  <39.165543, 35.287518, 40.004425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517731, 34.735336, 40.043022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137142, 34.657528, 39.947636>,  <38.908791, 34.610844, 39.890404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137142, 34.657528, 39.947636>,  <39.517731, 34.735336, 40.043022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137142, 34.657528, 39.947636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303314, -0.461757, -0.833535,
		0.052027, -0.865414, 0.498349,
		-0.951469, -0.194523, -0.238468,
		38.851700, 34.599171, 39.876095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495209, 33.966091, 39.809765>,  <39.517731, 34.735336, 40.043022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495209, 33.966091, 39.809765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229256, 34.207066, 39.633129>,  <39.069683, 34.351650, 39.527145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229256, 34.207066, 39.633129>,  <39.495209, 33.966091, 39.809765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229256, 34.207066, 39.633129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267232, -0.360216, -0.893774,
		-0.697511, -0.712260, 0.078510,
		-0.664880, 0.602436, -0.441593,
		39.029793, 34.387798, 39.500652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400513, 33.575291, 39.228649>,  <39.495209, 33.966091, 39.809765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400513, 33.575291, 39.228649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225391, 33.927486, 39.155918>,  <39.120319, 34.138805, 39.112278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225391, 33.927486, 39.155918>,  <39.400513, 33.575291, 39.228649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225391, 33.927486, 39.155918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103169, -0.151703, -0.983027,
		-0.893130, -0.449135, -0.024423,
		-0.437807, 0.880491, -0.181827,
		39.094048, 34.191635, 39.101372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041950, 33.367496, 39.406029>,  <39.400513, 33.575291, 39.228649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041950, 33.367496, 39.406029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263054, 33.043949, 39.486225>,  <40.395714, 32.849823, 39.534344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263054, 33.043949, 39.486225>,  <40.041950, 33.367496, 39.406029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263054, 33.043949, 39.486225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692432, -0.311935, 0.650565,
		-0.463681, -0.498428, -0.732509,
		0.552755, -0.808867, 0.200489,
		40.428879, 32.801289, 39.546371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573929, 32.782028, 39.386387>,  <40.041950, 33.367496, 39.406029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573929, 32.782028, 39.386387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885735, 32.718994, 39.628883>,  <40.072819, 32.681175, 39.774380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885735, 32.718994, 39.628883>,  <39.573929, 32.782028, 39.386387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885735, 32.718994, 39.628883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624053, -0.111977, 0.773317,
		-0.053974, -0.981137, -0.185626,
		0.779516, -0.157580, 0.606238,
		40.119591, 32.671719, 39.810753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523109, 32.078873, 39.588558>,  <39.573929, 32.782028, 39.386387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523109, 32.078873, 39.588558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728245, 32.294388, 39.855904>,  <39.851326, 32.423695, 40.016312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728245, 32.294388, 39.855904>,  <39.523109, 32.078873, 39.588558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728245, 32.294388, 39.855904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671894, -0.232710, 0.703139,
		0.534376, -0.809665, 0.242664,
		0.512836, 0.538785, 0.668363,
		39.882095, 32.456024, 40.056412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311569, 31.781281, 40.319592>,  <39.523109, 32.078873, 39.588558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311569, 31.781281, 40.319592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521454, 32.103497, 40.429710>,  <39.647385, 32.296825, 40.495781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521454, 32.103497, 40.429710>,  <39.311569, 31.781281, 40.319592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521454, 32.103497, 40.429710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400164, -0.052033, 0.914965,
		0.751365, -0.590253, 0.295046,
		0.524709, 0.805539, 0.275294,
		39.678867, 32.345158, 40.512299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702976, 31.582092, 40.883892>,  <39.311569, 31.781281, 40.319592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702976, 31.582092, 40.883892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663685, 31.978664, 40.918350>,  <39.640110, 32.216606, 40.939026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663685, 31.978664, 40.918350>,  <39.702976, 31.582092, 40.883892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663685, 31.978664, 40.918350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396138, -0.118367, 0.910530,
		0.912922, 0.055309, 0.404369,
		-0.098224, 0.991429, 0.086149,
		39.634216, 32.276093, 40.944195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133739, 31.787621, 41.422794>,  <39.702976, 31.582092, 40.883892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133739, 31.787621, 41.422794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855457, 32.072262, 41.383568>,  <39.688488, 32.243046, 41.360031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855457, 32.072262, 41.383568>,  <40.133739, 31.787621, 41.422794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855457, 32.072262, 41.383568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184537, -0.045112, 0.981790,
		0.694219, 0.701133, 0.162701,
		-0.695706, 0.711601, -0.098067,
		39.646744, 32.285744, 41.354149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254818, 32.315037, 42.003548>,  <40.133739, 31.787621, 41.422794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254818, 32.315037, 42.003548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893742, 32.408230, 41.858845>,  <39.677097, 32.464146, 41.772022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893742, 32.408230, 41.858845>,  <40.254818, 32.315037, 42.003548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893742, 32.408230, 41.858845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333422, 0.152703, 0.930329,
		0.271988, 0.960418, -0.060163,
		-0.902691, 0.232978, -0.361758,
		39.622932, 32.478123, 41.750317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136978, 32.859482, 42.419464>,  <40.254818, 32.315037, 42.003548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136978, 32.859482, 42.419464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779247, 32.759571, 42.270981>,  <39.564610, 32.699623, 42.181889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779247, 32.759571, 42.270981>,  <40.136978, 32.859482, 42.419464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779247, 32.759571, 42.270981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412859, 0.140944, 0.899823,
		-0.172436, 0.957990, -0.229173,
		-0.894323, -0.249778, -0.371211,
		39.510952, 32.684639, 42.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814747, 33.333298, 42.701160>,  <40.136978, 32.859482, 42.419464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814747, 33.333298, 42.701160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528156, 33.090923, 42.562885>,  <39.356201, 32.945499, 42.479919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528156, 33.090923, 42.562885>,  <39.814747, 33.333298, 42.701160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528156, 33.090923, 42.562885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613840, 0.312160, 0.725090,
		-0.331450, 0.731708, -0.595605,
		-0.716478, -0.605937, -0.345686,
		39.313213, 32.909142, 42.459179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170208, 33.735054, 42.544380>,  <39.814747, 33.333298, 42.701160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170208, 33.735054, 42.544380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065666, 33.356182, 42.618717>,  <39.002941, 33.128857, 42.663319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065666, 33.356182, 42.618717>,  <39.170208, 33.735054, 42.544380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065666, 33.356182, 42.618717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543701, 0.303550, 0.782462,
		-0.797548, 0.103456, -0.594318,
		-0.261355, -0.947183, 0.185847,
		38.987259, 33.072029, 42.674473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463753, 33.659756, 42.487545>,  <39.170208, 33.735054, 42.544380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463753, 33.659756, 42.487545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583714, 33.377773, 42.744633>,  <38.655689, 33.208584, 42.898888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583714, 33.377773, 42.744633>,  <38.463753, 33.659756, 42.487545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583714, 33.377773, 42.744633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554100, 0.419709, 0.718900,
		-0.776553, -0.571729, -0.264748,
		0.299899, -0.704961, 0.642722,
		38.673683, 33.166286, 42.937450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979580, 33.751938, 43.073479>,  <38.463753, 33.659756, 42.487545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979580, 33.751938, 43.073479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212559, 33.470081, 43.235584>,  <38.352345, 33.300968, 43.332848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212559, 33.470081, 43.235584>,  <37.979580, 33.751938, 43.073479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212559, 33.470081, 43.235584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369605, 0.214468, 0.904099,
		-0.723984, -0.676373, -0.135524,
		0.582443, -0.704644, 0.405262,
		38.387291, 33.258690, 43.357162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578209, 33.286549, 43.483288>,  <37.979580, 33.751938, 43.073479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578209, 33.286549, 43.483288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951744, 33.281609, 43.626282>,  <38.175865, 33.278645, 43.712078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951744, 33.281609, 43.626282>,  <37.578209, 33.286549, 43.483288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951744, 33.281609, 43.626282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354675, 0.097780, 0.929863,
		-0.046442, -0.995131, 0.086929,
		0.933835, -0.012353, 0.357489,
		38.231895, 33.277905, 43.733528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486927, 32.817261, 44.094421>,  <37.578209, 33.286549, 43.483288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486927, 32.817261, 44.094421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818634, 33.037781, 44.131058>,  <38.017658, 33.170094, 44.153038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818634, 33.037781, 44.131058>,  <37.486927, 32.817261, 44.094421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818634, 33.037781, 44.131058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357934, 0.398080, 0.844639,
		0.429196, -0.733209, 0.527443,
		0.829261, 0.551305, 0.091586,
		38.067413, 33.203171, 44.158535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826458, 32.278492, 44.532806>,  <37.486927, 32.817261, 44.094421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826458, 32.278492, 44.532806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544403, 32.069160, 44.724186>,  <37.375172, 31.943562, 44.839012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544403, 32.069160, 44.724186>,  <37.826458, 32.278492, 44.532806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544403, 32.069160, 44.724186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159674, -0.540228, -0.826231,
		0.690861, -0.659000, 0.297372,
		-0.705135, -0.523328, 0.478448,
		37.332863, 31.912163, 44.867722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023605, 31.564512, 44.497757>,  <37.826458, 32.278492, 44.532806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023605, 31.564512, 44.497757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627880, 31.608284, 44.536293>,  <37.390446, 31.634546, 44.559414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627880, 31.608284, 44.536293>,  <38.023605, 31.564512, 44.497757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627880, 31.608284, 44.536293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142368, -0.582645, -0.800160,
		-0.031427, -0.805326, 0.591998,
		-0.989315, 0.109428, 0.096342,
		37.331085, 31.641113, 44.565197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717152, 30.962914, 44.215855>,  <38.023605, 31.564512, 44.497757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717152, 30.962914, 44.215855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381821, 31.179054, 44.244797>,  <37.180622, 31.308739, 44.262161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381821, 31.179054, 44.244797>,  <37.717152, 30.962914, 44.215855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381821, 31.179054, 44.244797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384611, -0.492130, -0.780950,
		-0.386378, -0.682518, 0.620388,
		-0.838324, 0.540350, 0.072356,
		37.130325, 31.341160, 44.266502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169350, 30.494610, 44.079563>,  <37.717152, 30.962914, 44.215855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169350, 30.494610, 44.079563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010590, 30.853123, 44.000423>,  <36.915333, 31.068232, 43.952942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010590, 30.853123, 44.000423>,  <37.169350, 30.494610, 44.079563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010590, 30.853123, 44.000423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370889, -0.353779, -0.858651,
		-0.839589, -0.267422, 0.472838,
		-0.396902, 0.896284, -0.197845,
		36.891518, 31.122007, 43.941071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478752, 30.332375, 43.758331>,  <37.169350, 30.494610, 44.079563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478752, 30.332375, 43.758331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639084, 30.686304, 43.663319>,  <36.735283, 30.898663, 43.606312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639084, 30.686304, 43.663319>,  <36.478752, 30.332375, 43.758331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639084, 30.686304, 43.663319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293932, -0.121360, -0.948090,
		-0.867722, 0.449838, 0.211434,
		0.400828, 0.884826, -0.237529,
		36.759331, 30.951752, 43.592060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022774, 30.604115, 43.298203>,  <36.478752, 30.332375, 43.758331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022774, 30.604115, 43.298203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333935, 30.851871, 43.255836>,  <36.520634, 31.000525, 43.230415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333935, 30.851871, 43.255836>,  <36.022774, 30.604115, 43.298203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333935, 30.851871, 43.255836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229498, 0.123135, -0.965489,
		-0.584973, 0.775366, 0.237936,
		0.777906, 0.619391, -0.105914,
		36.567307, 31.037689, 43.224064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763340, 31.267384, 43.124485>,  <36.022774, 30.604115, 43.298203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763340, 31.267384, 43.124485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141926, 31.226631, 43.001961>,  <36.369076, 31.202181, 42.928448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141926, 31.226631, 43.001961>,  <35.763340, 31.267384, 43.124485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141926, 31.226631, 43.001961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290183, 0.147183, -0.945585,
		0.141420, 0.983849, 0.109739,
		0.946464, -0.101880, -0.306311,
		36.425865, 31.196068, 42.910069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946507, 31.909922, 42.697510>,  <35.763340, 31.267384, 43.124485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946507, 31.909922, 42.697510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185230, 31.613474, 42.574512>,  <36.328465, 31.435604, 42.500713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185230, 31.613474, 42.574512>,  <35.946507, 31.909922, 42.697510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185230, 31.613474, 42.574512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141528, 0.279990, -0.949514,
		0.789800, 0.610202, 0.062213,
		0.596814, -0.741120, -0.307496,
		36.364273, 31.391138, 42.482265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439983, 32.231327, 42.227745>,  <35.946507, 31.909922, 42.697510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439983, 32.231327, 42.227745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494904, 31.842386, 42.152195>,  <36.527855, 31.609020, 42.106865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494904, 31.842386, 42.152195>,  <36.439983, 32.231327, 42.227745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494904, 31.842386, 42.152195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016172, 0.192853, -0.981094,
		0.990397, 0.131653, 0.042204,
		0.137303, -0.972356, -0.188871,
		36.536095, 31.550680, 42.095535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004765, 32.218250, 41.777267>,  <36.439983, 32.231327, 42.227745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004765, 32.218250, 41.777267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792904, 31.882339, 41.729515>,  <36.665787, 31.680794, 41.700863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792904, 31.882339, 41.729515>,  <37.004765, 32.218250, 41.777267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792904, 31.882339, 41.729515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024297, 0.155704, -0.987505,
		0.847868, -0.520132, -0.102873,
		-0.529651, -0.839773, -0.119379,
		36.634010, 31.630407, 41.693703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185112, 31.949266, 41.228630>,  <37.004765, 32.218250, 41.777267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185112, 31.949266, 41.228630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833626, 31.762472, 41.268196>,  <36.622734, 31.650396, 41.291935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833626, 31.762472, 41.268196>,  <37.185112, 31.949266, 41.228630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833626, 31.762472, 41.268196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168261, 0.109099, -0.979686,
		0.446707, -0.877509, -0.174442,
		-0.878716, -0.466985, 0.098916,
		36.570011, 31.622377, 41.297871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203075, 31.307501, 40.720547>,  <37.185112, 31.949266, 41.228630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203075, 31.307501, 40.720547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828476, 31.409056, 40.817299>,  <36.603714, 31.469988, 40.875351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828476, 31.409056, 40.817299>,  <37.203075, 31.307501, 40.720547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828476, 31.409056, 40.817299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206413, 0.158486, -0.965544,
		-0.283472, -0.954162, -0.096017,
		-0.936502, 0.253885, 0.241878,
		36.547523, 31.485222, 40.889862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.566582, 32.359653, 48.291466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173019, 32.354427, 48.362759>,  <37.936882, 32.351292, 48.405533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173019, 32.354427, 48.362759>,  <38.566582, 32.359653, 48.291466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173019, 32.354427, 48.362759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166108, -0.300965, -0.939057,
		0.065907, -0.953546, 0.293951,
		-0.983903, -0.013063, 0.178228,
		37.877850, 32.350510, 48.416225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307987, 31.689602, 48.063568>,  <38.566582, 32.359653, 48.291466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307987, 31.689602, 48.063568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.014641, 31.961483, 48.058105>,  <37.838634, 32.124611, 48.054829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.014641, 31.961483, 48.058105>,  <38.307987, 31.689602, 48.063568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014641, 31.961483, 48.058105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236115, -0.273495, -0.932443,
		-0.637520, -0.680592, 0.361058,
		-0.733361, 0.679702, -0.013661,
		37.794632, 32.165394, 48.054008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823330, 31.343306, 47.670082>,  <38.307987, 31.689602, 48.063568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823330, 31.343306, 47.670082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679020, 31.716343, 47.665752>,  <37.592434, 31.940165, 47.663155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679020, 31.716343, 47.665752>,  <37.823330, 31.343306, 47.670082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679020, 31.716343, 47.665752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369046, -0.153402, -0.916664,
		-0.856534, -0.326711, 0.399512,
		-0.360770, 0.932592, -0.010822,
		37.570789, 31.996120, 47.662506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086948, 31.329840, 47.485851>,  <37.823330, 31.343306, 47.670082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086948, 31.329840, 47.485851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264423, 31.673956, 47.385414>,  <37.370907, 31.880424, 47.325153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264423, 31.673956, 47.385414>,  <37.086948, 31.329840, 47.485851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264423, 31.673956, 47.385414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383999, -0.070660, -0.920626,
		-0.809746, 0.504886, 0.298999,
		0.443684, 0.860289, -0.251093,
		37.397530, 31.932043, 47.310085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732273, 31.560463, 46.996647>,  <37.086948, 31.329840, 47.485851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732273, 31.560463, 46.996647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049637, 31.801100, 46.959568>,  <37.240055, 31.945482, 46.937321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049637, 31.801100, 46.959568>,  <36.732273, 31.560463, 46.996647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049637, 31.801100, 46.959568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233671, 0.160405, -0.958993,
		-0.562051, 0.782534, 0.267841,
		0.793408, 0.601590, -0.092700,
		37.287659, 31.981577, 46.931759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487518, 32.015141, 46.604153>,  <36.732273, 31.560463, 46.996647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487518, 32.015141, 46.604153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.880249, 32.070873, 46.552601>,  <37.115887, 32.104313, 46.521671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.880249, 32.070873, 46.552601>,  <36.487518, 32.015141, 46.604153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880249, 32.070873, 46.552601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131365, 0.008758, -0.991295,
		-0.136994, 0.990207, 0.026903,
		0.981823, 0.139335, -0.128879,
		37.174797, 32.112675, 46.513939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562717, 32.587254, 46.132774>,  <36.487518, 32.015141, 46.604153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562717, 32.587254, 46.132774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.916462, 32.402554, 46.105389>,  <37.128708, 32.291733, 46.088959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.916462, 32.402554, 46.105389>,  <36.562717, 32.587254, 46.132774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916462, 32.402554, 46.105389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021566, 0.106097, -0.994122,
		0.466304, 0.880640, 0.083871,
		0.884362, -0.461754, -0.068465,
		37.181770, 32.264027, 46.084850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953651, 32.830254, 45.530888>,  <36.562717, 32.587254, 46.132774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953651, 32.830254, 45.530888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125710, 32.478447, 45.612309>,  <37.228943, 32.267365, 45.661160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125710, 32.478447, 45.612309>,  <36.953651, 32.830254, 45.530888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125710, 32.478447, 45.612309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048529, -0.202623, -0.978054,
		0.901456, 0.430580, -0.044475,
		0.430142, -0.879514, 0.203551,
		37.254753, 32.214592, 45.673374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528557, 32.765785, 45.068863>,  <36.953651, 32.830254, 45.530888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528557, 32.765785, 45.068863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424911, 32.398739, 45.189419>,  <37.362724, 32.178509, 45.261753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424911, 32.398739, 45.189419>,  <37.528557, 32.765785, 45.068863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424911, 32.398739, 45.189419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076530, -0.291556, -0.953487,
		0.962810, -0.270128, 0.005321,
		-0.259115, -0.917620, 0.301386,
		37.347176, 32.123451, 45.279835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198429, 32.637299, 45.104893>,  <37.528557, 32.765785, 45.068863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198429, 32.637299, 45.104893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238358, 32.976074, 44.896000>,  <38.262314, 33.179340, 44.770664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238358, 32.976074, 44.896000>,  <38.198429, 32.637299, 45.104893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238358, 32.976074, 44.896000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223368, 0.530528, 0.817709,
		0.969609, 0.035024, 0.242139,
		0.099822, 0.846944, -0.522228,
		38.268303, 33.230156, 44.739330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478703, 33.025036, 45.600571>,  <38.198429, 32.637299, 45.104893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478703, 33.025036, 45.600571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385857, 33.305645, 45.331059>,  <38.330151, 33.474010, 45.169350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385857, 33.305645, 45.331059>,  <38.478703, 33.025036, 45.600571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385857, 33.305645, 45.331059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061689, 0.701925, 0.709574,
		0.970731, 0.123135, -0.206201,
		-0.232111, 0.701526, -0.673784,
		38.316223, 33.516102, 45.128922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902676, 33.708874, 45.633381>,  <38.478703, 33.025036, 45.600571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902676, 33.708874, 45.633381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565235, 33.813541, 45.445824>,  <38.362770, 33.876343, 45.333290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565235, 33.813541, 45.445824>,  <38.902676, 33.708874, 45.633381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565235, 33.813541, 45.445824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063352, 0.818624, 0.570826,
		0.533213, 0.511257, -0.674019,
		-0.843606, 0.261671, -0.468889,
		38.312153, 33.892044, 45.305157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983677, 34.415226, 45.455452>,  <38.902676, 33.708874, 45.633381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983677, 34.415226, 45.455452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594254, 34.324020, 45.461006>,  <38.360600, 34.269299, 45.464340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594254, 34.324020, 45.461006>,  <38.983677, 34.415226, 45.455452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594254, 34.324020, 45.461006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162920, 0.735673, 0.657452,
		-0.160121, 0.637806, -0.753369,
		-0.973560, -0.228011, 0.013886,
		38.302185, 34.255619, 45.465172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634403, 35.005909, 45.593487>,  <38.983677, 34.415226, 45.455452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634403, 35.005909, 45.593487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323872, 34.764828, 45.667297>,  <38.137550, 34.620178, 45.711582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323872, 34.764828, 45.667297>,  <38.634403, 35.005909, 45.593487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323872, 34.764828, 45.667297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245567, 0.558819, 0.792098,
		-0.580520, 0.569618, -0.581835,
		-0.776334, -0.602708, 0.184526,
		38.090973, 34.584015, 45.722656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035923, 35.395493, 45.588593>,  <38.634403, 35.005909, 45.593487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035923, 35.395493, 45.588593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974804, 35.066593, 45.807888>,  <37.938133, 34.869255, 45.939465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974804, 35.066593, 45.807888>,  <38.035923, 35.395493, 45.588593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974804, 35.066593, 45.807888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153939, 0.567787, 0.808654,
		-0.976195, 0.039163, -0.213330,
		-0.152795, -0.822244, 0.548242,
		37.928967, 34.819920, 45.972359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461422, 35.579460, 45.988071>,  <38.035923, 35.395493, 45.588593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461422, 35.579460, 45.988071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634911, 35.274902, 46.180805>,  <37.739006, 35.092167, 46.296444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634911, 35.274902, 46.180805>,  <37.461422, 35.579460, 45.988071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634911, 35.274902, 46.180805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242221, 0.416537, 0.876257,
		-0.867877, -0.496765, -0.003763,
		0.433726, -0.761395, 0.481830,
		37.765030, 35.046486, 46.325356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980232, 35.343594, 46.434742>,  <37.461422, 35.579460, 45.988071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980232, 35.343594, 46.434742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320297, 35.223583, 46.607811>,  <37.524338, 35.151577, 46.711655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320297, 35.223583, 46.607811>,  <36.980232, 35.343594, 46.434742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320297, 35.223583, 46.607811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261691, 0.472294, 0.841698,
		-0.456885, -0.828806, 0.323011,
		0.850161, -0.300031, 0.432675,
		37.575344, 35.133575, 46.737614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807995, 35.224941, 47.063530>,  <36.980232, 35.343594, 46.434742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807995, 35.224941, 47.063530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205513, 35.268620, 47.071980>,  <37.444023, 35.294827, 47.077049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205513, 35.268620, 47.071980>,  <36.807995, 35.224941, 47.063530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205513, 35.268620, 47.071980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074074, 0.508143, 0.858081,
		0.082969, -0.854322, 0.513079,
		0.993796, 0.109200, 0.021122,
		37.503651, 35.301380, 47.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095108, 34.957275, 47.710419>,  <36.807995, 35.224941, 47.063530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095108, 34.957275, 47.710419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382523, 35.211433, 47.597301>,  <37.554970, 35.363930, 47.529430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382523, 35.211433, 47.597301>,  <37.095108, 34.957275, 47.710419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382523, 35.211433, 47.597301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036350, 0.371746, 0.927622,
		0.694538, -0.676811, 0.244017,
		0.718538, 0.635399, -0.282794,
		37.598083, 35.402054, 47.512463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610168, 34.970608, 48.334641>,  <37.095108, 34.957275, 47.710419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610168, 34.970608, 48.334641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704754, 35.292755, 48.117210>,  <37.761505, 35.486042, 47.986752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704754, 35.292755, 48.117210>,  <37.610168, 34.970608, 48.334641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704754, 35.292755, 48.117210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181803, 0.512885, 0.838985,
		0.954480, -0.297213, -0.025139,
		0.236463, 0.805365, -0.543573,
		37.775692, 35.534367, 47.954140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274151, 35.206654, 48.729450>,  <37.610168, 34.970608, 48.334641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274151, 35.206654, 48.729450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136505, 35.509785, 48.507717>,  <38.053917, 35.691666, 48.374680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136505, 35.509785, 48.507717>,  <38.274151, 35.206654, 48.729450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136505, 35.509785, 48.507717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233811, 0.640949, 0.731106,
		0.909351, 0.121975, -0.397748,
		-0.344113, 0.757830, -0.554329,
		38.033272, 35.737133, 48.341419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781834, 35.730896, 48.730419>,  <38.274151, 35.206654, 48.729450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781834, 35.730896, 48.730419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430431, 35.906860, 48.655907>,  <38.219589, 36.012440, 48.611198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430431, 35.906860, 48.655907>,  <38.781834, 35.730896, 48.730419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430431, 35.906860, 48.655907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228343, 0.729174, 0.645108,
		0.419623, 0.524197, -0.741036,
		-0.878508, 0.439912, -0.186281,
		38.166878, 36.038834, 48.600021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902142, 36.427284, 48.555004>,  <38.781834, 35.730896, 48.730419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902142, 36.427284, 48.555004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516029, 36.414009, 48.658642>,  <38.284363, 36.406044, 48.720825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516029, 36.414009, 48.658642>,  <38.902142, 36.427284, 48.555004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516029, 36.414009, 48.658642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165239, 0.690628, 0.704080,
		-0.202309, 0.722448, -0.661166,
		-0.965281, -0.033191, 0.259097,
		38.226444, 36.404053, 48.736370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.936069, 37.878326, 49.011158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244606, 37.626007, 49.044952>,  <33.429726, 37.474617, 49.065231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244606, 37.626007, 49.044952>,  <32.936069, 37.878326, 49.011158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244606, 37.626007, 49.044952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153630, -0.313380, -0.937118,
		0.617606, 0.709854, -0.338630,
		0.771337, -0.630794, 0.084490,
		33.476006, 37.436768, 49.070301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347477, 38.009346, 48.487930>,  <32.936069, 37.878326, 49.011158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347477, 38.009346, 48.487930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461941, 37.639397, 48.588100>,  <33.530621, 37.417427, 48.648201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461941, 37.639397, 48.588100>,  <33.347477, 38.009346, 48.487930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461941, 37.639397, 48.588100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046956, -0.247503, -0.967749,
		0.957029, 0.288694, -0.027398,
		0.286164, -0.924878, 0.250423,
		33.547791, 37.361935, 48.663227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930206, 37.892670, 48.061817>,  <33.347477, 38.009346, 48.487930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930206, 37.892670, 48.061817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785435, 37.535713, 48.169628>,  <33.698574, 37.321537, 48.234314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785435, 37.535713, 48.169628>,  <33.930206, 37.892670, 48.061817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785435, 37.535713, 48.169628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196065, -0.355531, -0.913869,
		0.911355, -0.277907, 0.303642,
		-0.361925, -0.892393, 0.269527,
		33.676857, 37.267994, 48.250484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239628, 37.345329, 47.588505>,  <33.930206, 37.892670, 48.061817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239628, 37.345329, 47.588505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963535, 37.087746, 47.720501>,  <33.797882, 36.933193, 47.799698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963535, 37.087746, 47.720501>,  <34.239628, 37.345329, 47.588505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963535, 37.087746, 47.720501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027862, -0.479365, -0.877173,
		0.723056, -0.596255, 0.348814,
		-0.690228, -0.643964, 0.329995,
		33.756466, 36.894558, 47.819500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555183, 36.655155, 47.589100>,  <34.239628, 37.345329, 47.588505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555183, 36.655155, 47.589100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157551, 36.631653, 47.552570>,  <33.918968, 36.617550, 47.530651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157551, 36.631653, 47.552570>,  <34.555183, 36.655155, 47.589100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157551, 36.631653, 47.552570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108272, -0.471634, -0.875122,
		0.008347, -0.879835, 0.475206,
		-0.994086, -0.058756, -0.091325,
		33.859325, 36.614025, 47.525173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415508, 36.029015, 47.284729>,  <34.555183, 36.655155, 47.589100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415508, 36.029015, 47.284729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054440, 36.196537, 47.245167>,  <33.837799, 36.297050, 47.221432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054440, 36.196537, 47.245167>,  <34.415508, 36.029015, 47.284729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054440, 36.196537, 47.245167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145334, -0.513028, -0.845979,
		-0.405036, -0.749271, 0.523964,
		-0.902676, 0.418802, -0.098900,
		33.783638, 36.322178, 47.215496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942818, 35.489456, 46.977623>,  <34.415508, 36.029015, 47.284729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942818, 35.489456, 46.977623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.752617, 35.832516, 46.899311>,  <33.638496, 36.038353, 46.852322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.752617, 35.832516, 46.899311>,  <33.942818, 35.489456, 46.977623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752617, 35.832516, 46.899311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256835, -0.348201, -0.901550,
		-0.841387, -0.378407, 0.385846,
		-0.475504, 0.857650, -0.195784,
		33.609966, 36.089809, 46.840576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277138, 35.253139, 46.809467>,  <33.942818, 35.489456, 46.977623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277138, 35.253139, 46.809467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.336315, 35.623306, 46.669914>,  <33.371822, 35.845406, 46.586182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.336315, 35.623306, 46.669914>,  <33.277138, 35.253139, 46.809467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336315, 35.623306, 46.669914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316484, -0.289917, -0.903209,
		-0.936990, 0.244044, 0.249986,
		0.147947, 0.925414, -0.348885,
		33.380699, 35.900932, 46.565250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775272, 35.417286, 46.353180>,  <33.277138, 35.253139, 46.809467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775272, 35.417286, 46.353180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052704, 35.685680, 46.248322>,  <33.219162, 35.846718, 46.185406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052704, 35.685680, 46.248322>,  <32.775272, 35.417286, 46.353180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052704, 35.685680, 46.248322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202491, -0.167640, -0.964829,
		-0.691333, 0.722270, 0.019597,
		0.693582, 0.670986, -0.262148,
		33.260777, 35.886978, 46.169678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432056, 35.805004, 45.823242>,  <32.775272, 35.417286, 46.353180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432056, 35.805004, 45.823242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.827068, 35.864666, 45.803074>,  <33.064075, 35.900463, 45.790974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.827068, 35.864666, 45.803074>,  <32.432056, 35.805004, 45.823242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827068, 35.864666, 45.803074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052563, 0.010426, -0.998563,
		-0.148416, 0.988759, 0.018136,
		0.987527, 0.149156, -0.050425,
		33.123325, 35.909412, 45.787945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492973, 36.285732, 45.336578>,  <32.432056, 35.805004, 45.823242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492973, 36.285732, 45.336578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858829, 36.125645, 45.359402>,  <33.078342, 36.029594, 45.373096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858829, 36.125645, 45.359402>,  <32.492973, 36.285732, 45.336578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858829, 36.125645, 45.359402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022927, -0.089558, -0.995718,
		0.403613, 0.912034, -0.072738,
		0.914642, -0.400217, 0.057057,
		33.133221, 36.005581, 45.376518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837955, 36.668190, 44.939545>,  <32.492973, 36.285732, 45.336578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837955, 36.668190, 44.939545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.048058, 36.328999, 44.967930>,  <33.174118, 36.125484, 44.984959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.048058, 36.328999, 44.967930>,  <32.837955, 36.668190, 44.939545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048058, 36.328999, 44.967930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010486, -0.076934, -0.996981,
		0.850877, 0.524418, -0.031519,
		0.525260, -0.847978, 0.070960,
		33.205635, 36.074604, 44.989220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332874, 36.793533, 44.493866>,  <32.837955, 36.668190, 44.939545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332874, 36.793533, 44.493866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347164, 36.396618, 44.541344>,  <33.355740, 36.158470, 44.569832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347164, 36.396618, 44.541344>,  <33.332874, 36.793533, 44.493866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347164, 36.396618, 44.541344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144852, -0.112378, -0.983051,
		0.988808, 0.052317, 0.139719,
		0.035729, -0.992287, 0.118699,
		33.357883, 36.098930, 44.576954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922489, 36.474258, 44.078678>,  <33.332874, 36.793533, 44.493866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922489, 36.474258, 44.078678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683769, 36.162926, 44.156689>,  <33.540539, 35.976128, 44.203495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683769, 36.162926, 44.156689>,  <33.922489, 36.474258, 44.078678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683769, 36.162926, 44.156689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076108, -0.187047, -0.979398,
		0.798776, -0.599343, 0.052392,
		-0.596795, -0.778332, 0.195024,
		33.504730, 35.929424, 44.215195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719471, 36.191666, 43.941082>,  <33.922489, 36.474258, 44.078678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719471, 36.191666, 43.941082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986073, 36.464207, 43.820061>,  <35.146034, 36.627731, 43.747448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986073, 36.464207, 43.820061>,  <34.719471, 36.191666, 43.941082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986073, 36.464207, 43.820061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160758, 0.264928, 0.950773,
		0.727965, -0.682328, 0.067042,
		0.666501, 0.681352, -0.302549,
		35.186024, 36.668613, 43.729298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241184, 36.080219, 44.375771>,  <34.719471, 36.191666, 43.941082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241184, 36.080219, 44.375771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268291, 36.450653, 44.227299>,  <35.284557, 36.672913, 44.138214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268291, 36.450653, 44.227299>,  <35.241184, 36.080219, 44.375771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268291, 36.450653, 44.227299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218069, 0.349294, 0.911285,
		0.973578, -0.142699, -0.178280,
		0.067768, 0.926084, -0.371183,
		35.288620, 36.728477, 44.115944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866600, 36.306812, 44.720398>,  <35.241184, 36.080219, 44.375771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866600, 36.306812, 44.720398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695572, 36.647156, 44.598274>,  <35.592953, 36.851364, 44.525002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695572, 36.647156, 44.598274>,  <35.866600, 36.306812, 44.720398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695572, 36.647156, 44.598274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355088, 0.468675, 0.808861,
		0.831320, 0.237436, -0.502524,
		-0.427573, 0.850863, -0.305309,
		35.567299, 36.902416, 44.506683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321922, 36.829643, 44.811481>,  <35.866600, 36.306812, 44.720398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321922, 36.829643, 44.811481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968025, 37.015987, 44.817348>,  <35.755688, 37.127792, 44.820869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968025, 37.015987, 44.817348>,  <36.321922, 36.829643, 44.811481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968025, 37.015987, 44.817348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259732, 0.466662, 0.845438,
		0.387009, 0.751801, -0.533872,
		-0.884739, 0.465856, 0.014665,
		35.702602, 37.155743, 44.821747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548710, 37.547466, 44.940613>,  <36.321922, 36.829643, 44.811481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548710, 37.547466, 44.940613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166889, 37.471416, 45.032417>,  <35.937798, 37.425785, 45.087502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166889, 37.471416, 45.032417>,  <36.548710, 37.547466, 44.940613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166889, 37.471416, 45.032417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068572, 0.609326, 0.789950,
		-0.290036, 0.769789, -0.568598,
		-0.954556, -0.190124, 0.229512,
		35.880524, 37.414379, 45.101273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291325, 38.174400, 45.069561>,  <36.548710, 37.547466, 44.940613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291325, 38.174400, 45.069561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024029, 37.936932, 45.248898>,  <35.863651, 37.794453, 45.356499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024029, 37.936932, 45.248898>,  <36.291325, 38.174400, 45.069561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024029, 37.936932, 45.248898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086043, 0.536933, 0.839226,
		-0.738952, 0.599382, -0.307720,
		-0.668242, -0.593670, 0.448340,
		35.823555, 37.758831, 45.383400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750290, 38.657078, 45.495594>,  <36.291325, 38.174400, 45.069561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750290, 38.657078, 45.495594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771801, 38.281937, 45.632736>,  <35.784710, 38.056854, 45.715019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771801, 38.281937, 45.632736>,  <35.750290, 38.657078, 45.495594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771801, 38.281937, 45.632736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153629, 0.347034, 0.925184,
		-0.986664, 0.002915, 0.162744,
		0.053781, -0.937848, 0.342853,
		35.787937, 38.000584, 45.735592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308441, 38.724514, 45.989555>,  <35.750290, 38.657078, 45.495594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308441, 38.724514, 45.989555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529167, 38.399364, 46.064114>,  <35.661602, 38.204277, 46.108849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529167, 38.399364, 46.064114>,  <35.308441, 38.724514, 45.989555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529167, 38.399364, 46.064114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298276, 0.401089, 0.866117,
		-0.778803, -0.422337, 0.463787,
		0.551813, -0.812871, 0.186396,
		35.694710, 38.155502, 46.120033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155933, 38.622356, 46.635269>,  <35.308441, 38.724514, 45.989555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155933, 38.622356, 46.635269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495953, 38.413380, 46.608540>,  <35.699966, 38.287994, 46.592503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495953, 38.413380, 46.608540>,  <35.155933, 38.622356, 46.635269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495953, 38.413380, 46.608540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220397, 0.237589, 0.946032,
		-0.478371, -0.818904, 0.317107,
		0.850051, -0.522444, -0.066828,
		35.750969, 38.256645, 46.588490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106182, 38.269577, 47.151165>,  <35.155933, 38.622356, 46.635269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106182, 38.269577, 47.151165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495770, 38.263050, 47.060722>,  <35.729523, 38.259136, 47.006458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495770, 38.263050, 47.060722>,  <35.106182, 38.269577, 47.151165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495770, 38.263050, 47.060722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226675, 0.057053, 0.972298,
		-0.002966, -0.998238, 0.059266,
		0.973966, -0.016318, -0.226106,
		35.787960, 38.258156, 46.992889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441750, 37.804668, 47.719364>,  <35.106182, 38.269577, 47.151165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441750, 37.804668, 47.719364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735737, 38.021122, 47.555904>,  <35.912128, 38.150993, 47.457829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735737, 38.021122, 47.555904>,  <35.441750, 37.804668, 47.719364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735737, 38.021122, 47.555904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345347, 0.219930, 0.912341,
		0.583574, -0.811668, -0.025237,
		0.734967, 0.541134, -0.408653,
		35.956226, 38.183460, 47.433308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058220, 37.671368, 48.119682>,  <35.441750, 37.804668, 47.719364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058220, 37.671368, 48.119682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180336, 37.989948, 47.910889>,  <36.253605, 38.181095, 47.785610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180336, 37.989948, 47.910889>,  <36.058220, 37.671368, 48.119682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180336, 37.989948, 47.910889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565231, 0.289589, 0.772433,
		0.766364, -0.530858, -0.361769,
		0.305287, 0.796447, -0.521988,
		36.271923, 38.228882, 47.754292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800243, 37.693489, 48.311398>,  <36.058220, 37.671368, 48.119682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800243, 37.693489, 48.311398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.695835, 38.060001, 48.189873>,  <36.633190, 38.279907, 48.116959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.695835, 38.060001, 48.189873>,  <36.800243, 37.693489, 48.311398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695835, 38.060001, 48.189873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402074, 0.389315, 0.828716,
		0.877613, 0.094157, -0.470031,
		-0.261020, 0.916280, -0.303810,
		36.617531, 38.334885, 48.098728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419239, 38.202175, 48.401360>,  <36.800243, 37.693489, 48.311398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419239, 38.202175, 48.401360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069302, 38.389633, 48.450394>,  <36.859341, 38.502106, 48.479813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069302, 38.389633, 48.450394>,  <37.419239, 38.202175, 48.401360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069302, 38.389633, 48.450394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358540, 0.456277, 0.814408,
		0.325735, 0.756429, -0.567197,
		-0.874841, 0.468643, 0.122584,
		36.806850, 38.530228, 48.487167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151638, 38.483589, 48.375324>,  <37.419239, 38.202175, 48.401360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151638, 38.483589, 48.375324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.505138, 38.640553, 48.477299>,  <38.717239, 38.734730, 48.538483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.505138, 38.640553, 48.477299>,  <38.151638, 38.483589, 48.375324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505138, 38.640553, 48.477299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361358, -0.226131, -0.904591,
		-0.297322, 0.891560, -0.341644,
		0.883753, 0.392411, 0.254938,
		38.770264, 38.758274, 48.553780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269985, 38.875053, 47.823639>,  <38.151638, 38.483589, 48.375324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269985, 38.875053, 47.823639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623367, 38.808197, 47.998714>,  <38.835396, 38.768082, 48.103760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623367, 38.808197, 47.998714>,  <38.269985, 38.875053, 47.823639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623367, 38.808197, 47.998714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406407, -0.191427, -0.893415,
		0.233115, 0.967170, -0.101188,
		0.883454, -0.167145, 0.437689,
		38.888405, 38.758053, 48.130020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788353, 39.252537, 47.464169>,  <38.269985, 38.875053, 47.823639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788353, 39.252537, 47.464169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983570, 38.956753, 47.649647>,  <39.100700, 38.779282, 47.760933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983570, 38.956753, 47.649647>,  <38.788353, 39.252537, 47.464169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983570, 38.956753, 47.649647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519494, -0.180818, -0.835123,
		0.701383, 0.648466, 0.295896,
		0.488046, -0.739457, 0.463697,
		39.129982, 38.734917, 47.788757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507736, 39.226372, 47.149643>,  <38.788353, 39.252537, 47.464169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507736, 39.226372, 47.149643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444618, 38.866402, 47.312237>,  <39.406746, 38.650421, 47.409794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444618, 38.866402, 47.312237>,  <39.507736, 39.226372, 47.149643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444618, 38.866402, 47.312237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524564, -0.425155, -0.737615,
		0.836620, 0.096836, 0.539157,
		-0.157798, -0.899926, 0.406489,
		39.397278, 38.596424, 47.434185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114311, 38.970806, 47.288391>,  <39.507736, 39.226372, 47.149643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114311, 38.970806, 47.288391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.873550, 38.653362, 47.252834>,  <39.729095, 38.462898, 47.231499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.873550, 38.653362, 47.252834>,  <40.114311, 38.970806, 47.288391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873550, 38.653362, 47.252834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538715, -0.321347, -0.778795,
		0.589492, -0.516646, 0.620948,
		-0.601901, -0.793607, -0.088893,
		39.692982, 38.415279, 47.226166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474098, 38.301762, 47.101566>,  <40.114311, 38.970806, 47.288391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474098, 38.301762, 47.101566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110249, 38.175682, 46.993320>,  <39.891937, 38.100037, 46.928375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110249, 38.175682, 46.993320>,  <40.474098, 38.301762, 47.101566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110249, 38.175682, 46.993320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350797, -0.233856, -0.906781,
		0.222529, -0.919763, 0.323291,
		-0.909627, -0.315195, -0.270611,
		39.837360, 38.081123, 46.912136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560192, 37.604568, 46.798370>,  <40.474098, 38.301762, 47.101566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560192, 37.604568, 46.798370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.202713, 37.744335, 46.685799>,  <39.988224, 37.828194, 46.618256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.202713, 37.744335, 46.685799>,  <40.560192, 37.604568, 46.798370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202713, 37.744335, 46.685799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122203, -0.413980, -0.902046,
		-0.431703, -0.840550, 0.327274,
		-0.893699, 0.349422, -0.281434,
		39.934601, 37.849159, 46.601368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134304, 37.016361, 46.609734>,  <40.560192, 37.604568, 46.798370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134304, 37.016361, 46.609734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.963951, 37.312675, 46.401939>,  <39.861740, 37.490463, 46.277264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.963951, 37.312675, 46.401939>,  <40.134304, 37.016361, 46.609734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963951, 37.312675, 46.401939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258682, -0.649878, -0.714662,
		-0.867013, -0.169979, 0.468397,
		-0.425879, 0.740787, -0.519483,
		39.836189, 37.534912, 46.246094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554428, 36.672928, 46.156967>,  <40.134304, 37.016361, 46.609734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554428, 36.672928, 46.156967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590355, 37.033150, 45.986820>,  <39.611912, 37.249283, 45.884731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590355, 37.033150, 45.986820>,  <39.554428, 36.672928, 46.156967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590355, 37.033150, 45.986820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414028, -0.354683, -0.838320,
		-0.905822, 0.251413, 0.340995,
		0.089819, 0.900550, -0.425372,
		39.617302, 37.303314, 45.859207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877483, 36.905235, 45.912704>,  <39.554428, 36.672928, 46.156967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877483, 36.905235, 45.912704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.152847, 37.105888, 45.703148>,  <39.318066, 37.226280, 45.577412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.152847, 37.105888, 45.703148>,  <38.877483, 36.905235, 45.912704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152847, 37.105888, 45.703148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527481, -0.149537, -0.836303,
		-0.497857, 0.852059, 0.161658,
		0.688406, 0.501631, -0.523893,
		39.359367, 37.256378, 45.545979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487576, 37.457951, 45.530266>,  <38.877483, 36.905235, 45.912704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487576, 37.457951, 45.530266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.836632, 37.365841, 45.358002>,  <39.046066, 37.310574, 45.254642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.836632, 37.365841, 45.358002>,  <38.487576, 37.457951, 45.530266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836632, 37.365841, 45.358002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483808, -0.287456, -0.826619,
		0.066554, 0.929700, -0.362255,
		0.872640, -0.230277, -0.430665,
		39.098423, 37.296757, 45.228802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365784, 37.574337, 44.771935>,  <38.487576, 37.457951, 45.530266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365784, 37.574337, 44.771935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723160, 37.395702, 44.791225>,  <38.937584, 37.288521, 44.802799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723160, 37.395702, 44.791225>,  <38.365784, 37.574337, 44.771935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723160, 37.395702, 44.791225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157343, -0.411719, -0.897625,
		0.420721, 0.794387, -0.438113,
		0.893441, -0.446584, 0.048228,
		38.991192, 37.261726, 44.805695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673000, 37.822182, 44.158993>,  <38.365784, 37.574337, 44.771935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673000, 37.822182, 44.158993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831684, 37.473438, 44.273869>,  <38.926895, 37.264191, 44.342793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831684, 37.473438, 44.273869>,  <38.673000, 37.822182, 44.158993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831684, 37.473438, 44.273869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384373, -0.441887, -0.810551,
		0.833593, 0.211168, -0.510422,
		0.396711, -0.871862, 0.287187,
		38.950699, 37.211880, 44.360023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907810, 37.508255, 43.563416>,  <38.673000, 37.822182, 44.158993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907810, 37.508255, 43.563416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871185, 37.197266, 43.812302>,  <38.849213, 37.010670, 43.961632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871185, 37.197266, 43.812302>,  <38.907810, 37.508255, 43.563416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871185, 37.197266, 43.812302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276181, -0.580497, -0.765994,
		0.956735, -0.241976, -0.161575,
		-0.091559, -0.777477, 0.622211,
		38.843719, 36.964024, 43.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.483768, 39.705288, 31.012156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353428, 39.449474, 30.733641>,  <30.275225, 39.295986, 30.566532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353428, 39.449474, 30.733641>,  <30.483768, 39.705288, 31.012156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353428, 39.449474, 30.733641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755097, -0.267128, 0.598725,
		-0.568904, 0.720860, -0.395866,
		-0.325849, -0.639534, -0.696289,
		30.255672, 39.257614, 30.524754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754189, 39.776577, 31.104448>,  <30.483768, 39.705288, 31.012156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754189, 39.776577, 31.104448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763958, 39.463619, 30.855526>,  <29.769819, 39.275845, 30.706173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763958, 39.463619, 30.855526>,  <29.754189, 39.776577, 31.104448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763958, 39.463619, 30.855526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896545, -0.292537, 0.332609,
		-0.442278, 0.549802, -0.708595,
		0.024421, -0.782393, -0.622305,
		29.771284, 39.228901, 30.668835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065702, 39.814713, 30.865404>,  <29.754189, 39.776577, 31.104448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065702, 39.814713, 30.865404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197655, 39.438599, 30.831820>,  <29.276825, 39.212933, 30.811668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197655, 39.438599, 30.831820>,  <29.065702, 39.814713, 30.865404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197655, 39.438599, 30.831820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817739, -0.329058, 0.472254,
		-0.471681, -0.087126, -0.877454,
		0.329879, -0.940282, -0.083964,
		29.296618, 39.156513, 30.806631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421633, 39.451553, 30.660233>,  <29.065702, 39.814713, 30.865404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421633, 39.451553, 30.660233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695488, 39.193081, 30.795124>,  <28.859802, 39.037998, 30.876059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695488, 39.193081, 30.795124>,  <28.421633, 39.451553, 30.660233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695488, 39.193081, 30.795124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695205, -0.439901, 0.568488,
		-0.218997, -0.623652, -0.750399,
		0.684639, -0.646178, 0.337229,
		28.900879, 38.999226, 30.896292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147520, 38.650169, 30.556683>,  <28.421633, 39.451553, 30.660233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147520, 38.650169, 30.556683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439011, 38.606583, 30.827114>,  <28.613905, 38.580429, 30.989372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439011, 38.606583, 30.827114>,  <28.147520, 38.650169, 30.556683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439011, 38.606583, 30.827114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611669, -0.547504, 0.571053,
		0.307927, -0.829678, -0.465635,
		0.728726, -0.108971, 0.676079,
		28.657629, 38.573891, 31.029938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174681, 37.860592, 30.701303>,  <28.147520, 38.650169, 30.556683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174681, 37.860592, 30.701303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376797, 38.036995, 30.998003>,  <28.498066, 38.142838, 31.176023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376797, 38.036995, 30.998003>,  <28.174681, 37.860592, 30.701303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376797, 38.036995, 30.998003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446308, -0.602114, 0.662018,
		0.738574, -0.665560, -0.107417,
		0.505290, 0.441008, 0.741751,
		28.528383, 38.169296, 31.220528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554407, 37.329140, 31.069626>,  <28.174681, 37.860592, 30.701303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554407, 37.329140, 31.069626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507938, 37.620148, 31.340099>,  <28.480057, 37.794754, 31.502382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507938, 37.620148, 31.340099>,  <28.554407, 37.329140, 31.069626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507938, 37.620148, 31.340099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453943, -0.644418, 0.615355,
		0.883426, -0.235462, 0.405114,
		-0.116170, 0.727519, 0.676181,
		28.473087, 37.838402, 31.542953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689987, 37.012943, 31.664356>,  <28.554407, 37.329140, 31.069626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689987, 37.012943, 31.664356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468491, 37.324596, 31.781876>,  <28.335592, 37.511589, 31.852388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468491, 37.324596, 31.781876>,  <28.689987, 37.012943, 31.664356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468491, 37.324596, 31.781876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490178, -0.590227, 0.641372,
		0.673124, 0.211139, 0.708748,
		-0.553741, 0.779136, 0.293800,
		28.302368, 37.558338, 31.870016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631342, 36.902912, 32.364372>,  <28.689987, 37.012943, 31.664356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631342, 36.902912, 32.364372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337751, 37.157867, 32.270550>,  <28.161598, 37.310841, 32.214256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337751, 37.157867, 32.270550>,  <28.631342, 36.902912, 32.364372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337751, 37.157867, 32.270550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637404, -0.527204, 0.561936,
		0.234513, 0.561954, 0.793229,
		-0.733975, 0.637388, -0.234555,
		28.117559, 37.349083, 32.200184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351318, 36.844421, 32.962555>,  <28.631342, 36.902912, 32.364372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351318, 36.844421, 32.962555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082926, 37.044685, 32.743786>,  <27.921890, 37.164845, 32.612526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082926, 37.044685, 32.743786>,  <28.351318, 36.844421, 32.962555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082926, 37.044685, 32.743786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730111, -0.317490, 0.605093,
		0.129305, 0.805319, 0.578568,
		-0.670983, 0.500661, -0.546920,
		27.881632, 37.194885, 32.579712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058472, 37.460060, 33.342163>,  <28.351318, 36.844421, 32.962555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058472, 37.460060, 33.342163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.809727, 37.294685, 33.076122>,  <27.660480, 37.195461, 32.916500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.809727, 37.294685, 33.076122>,  <28.058472, 37.460060, 33.342163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809727, 37.294685, 33.076122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584125, -0.320808, 0.745574,
		-0.521618, 0.852145, -0.042001,
		-0.621862, -0.413438, -0.665099,
		27.623169, 37.170654, 32.876595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408806, 37.639263, 33.651390>,  <28.058472, 37.460060, 33.342163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408806, 37.639263, 33.651390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270681, 37.382004, 33.378006>,  <27.187807, 37.227650, 33.213974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270681, 37.382004, 33.378006>,  <27.408806, 37.639263, 33.651390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270681, 37.382004, 33.378006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430717, -0.538428, 0.724278,
		-0.833813, 0.544480, -0.091090,
		-0.345309, -0.643147, -0.683465,
		27.167089, 37.189060, 33.172966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650179, 37.528496, 33.851372>,  <27.408806, 37.639263, 33.651390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650179, 37.528496, 33.851372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787336, 37.224102, 33.631073>,  <26.869631, 37.041466, 33.498894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787336, 37.224102, 33.631073>,  <26.650179, 37.528496, 33.851372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787336, 37.224102, 33.631073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412680, -0.648717, 0.639423,
		-0.843871, 0.008027, -0.536486,
		0.342895, -0.760988, -0.550746,
		26.890205, 36.995804, 33.465851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043119, 37.060593, 33.812313>,  <26.650179, 37.528496, 33.851372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043119, 37.060593, 33.812313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351374, 36.835140, 33.693356>,  <26.536325, 36.699867, 33.621979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351374, 36.835140, 33.693356>,  <26.043119, 37.060593, 33.812313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351374, 36.835140, 33.693356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355796, -0.767690, 0.532974,
		-0.528709, -0.304915, -0.792145,
		0.770634, -0.563630, -0.297397,
		26.582563, 36.666050, 33.604137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801748, 36.354218, 33.470200>,  <26.043119, 37.060593, 33.812313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801748, 36.354218, 33.470200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.168264, 36.320553, 33.626827>,  <26.388174, 36.300354, 33.720802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.168264, 36.320553, 33.626827>,  <25.801748, 36.354218, 33.470200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168264, 36.320553, 33.626827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327666, -0.719739, 0.612054,
		0.230313, -0.689124, -0.687069,
		0.916292, -0.084165, 0.391567,
		26.443151, 36.295303, 33.744297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778616, 35.706619, 33.593746>,  <25.801748, 36.354218, 33.470200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778616, 35.706619, 33.593746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.100309, 35.810642, 33.807503>,  <26.293325, 35.873055, 33.935757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.100309, 35.810642, 33.807503>,  <25.778616, 35.706619, 33.593746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100309, 35.810642, 33.807503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209593, -0.717299, 0.664494,
		0.556126, -0.646415, -0.522371,
		0.804235, 0.260057, 0.534393,
		26.341579, 35.888660, 33.967819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013157, 35.083408, 34.019424>,  <25.778616, 35.706619, 33.593746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013157, 35.083408, 34.019424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198708, 35.394287, 34.189499>,  <26.310038, 35.580814, 34.291542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198708, 35.394287, 34.189499>,  <26.013157, 35.083408, 34.019424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198708, 35.394287, 34.189499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215867, -0.564645, 0.796603,
		0.859197, -0.277742, -0.429697,
		0.463877, 0.777197, 0.425187,
		26.337872, 35.627445, 34.317055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589403, 34.788448, 34.242920>,  <26.013157, 35.083408, 34.019424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589403, 34.788448, 34.242920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541382, 35.129436, 34.446438>,  <26.512569, 35.334030, 34.568550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541382, 35.129436, 34.446438>,  <26.589403, 34.788448, 34.242920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541382, 35.129436, 34.446438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185042, -0.484308, 0.855105,
		0.975370, 0.196806, -0.099601,
		-0.120052, 0.852474, 0.508797,
		26.505367, 35.385178, 34.599075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049458, 34.840515, 34.824253>,  <26.589403, 34.788448, 34.242920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049458, 34.840515, 34.824253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802170, 35.117588, 34.972847>,  <26.653797, 35.283833, 35.062004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802170, 35.117588, 34.972847>,  <27.049458, 34.840515, 34.824253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802170, 35.117588, 34.972847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200422, -0.318073, 0.926639,
		0.760024, 0.647319, 0.057810,
		-0.618219, 0.692682, 0.371480,
		26.616705, 35.325394, 35.084290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399958, 35.037613, 35.392147>,  <27.049458, 34.840515, 34.824253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399958, 35.037613, 35.392147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036415, 35.185253, 35.469860>,  <26.818289, 35.273838, 35.516487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036415, 35.185253, 35.469860>,  <27.399958, 35.037613, 35.392147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036415, 35.185253, 35.469860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027006, -0.412733, 0.910452,
		0.416234, 0.832716, 0.365147,
		-0.908856, 0.369100, 0.194282,
		26.763758, 35.295982, 35.528145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297449, 34.318851, 35.700748>,  <27.399958, 35.037613, 35.392147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297449, 34.318851, 35.700748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552155, 34.076096, 35.890995>,  <27.704977, 33.930443, 36.005142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552155, 34.076096, 35.890995>,  <27.297449, 34.318851, 35.700748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552155, 34.076096, 35.890995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734238, 0.665595, -0.133703,
		-0.235428, 0.434356, 0.869430,
		0.636763, -0.606892, 0.475621,
		27.743183, 33.894028, 36.033680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679190, 34.738522, 36.100407>,  <27.297449, 34.318851, 35.700748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679190, 34.738522, 36.100407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905313, 34.414459, 36.038349>,  <28.040989, 34.220020, 36.001114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905313, 34.414459, 36.038349>,  <27.679190, 34.738522, 36.100407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905313, 34.414459, 36.038349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786910, 0.586071, -0.193114,
		0.247377, -0.012913, 0.968833,
		0.565311, -0.810157, -0.155142,
		28.074907, 34.171413, 35.991806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342926, 34.901463, 36.429482>,  <27.679190, 34.738522, 36.100407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342926, 34.901463, 36.429482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410238, 34.622578, 36.150745>,  <28.450626, 34.455246, 35.983505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410238, 34.622578, 36.150745>,  <28.342926, 34.901463, 36.429482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410238, 34.622578, 36.150745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807611, 0.502843, -0.308081,
		0.565196, -0.510927, 0.647693,
		0.168281, -0.697210, -0.696835,
		28.460722, 34.413414, 35.941696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964474, 34.766220, 36.553093>,  <28.342926, 34.901463, 36.429482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964474, 34.766220, 36.553093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910397, 34.627861, 36.181702>,  <28.877951, 34.544846, 35.958866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910397, 34.627861, 36.181702>,  <28.964474, 34.766220, 36.553093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910397, 34.627861, 36.181702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854535, 0.433590, -0.285955,
		0.501491, -0.832080, 0.236960,
		-0.135195, -0.345894, -0.928482,
		28.869839, 34.524094, 35.903156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618093, 34.501720, 36.292034>,  <28.964474, 34.766220, 36.553093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618093, 34.501720, 36.292034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439932, 34.555553, 35.937969>,  <29.333035, 34.587852, 35.725533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439932, 34.555553, 35.937969>,  <29.618093, 34.501720, 36.292034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439932, 34.555553, 35.937969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860753, 0.336462, -0.381967,
		0.246417, -0.932031, -0.265701,
		-0.445403, 0.134580, -0.885158,
		29.306311, 34.595928, 35.672421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085083, 34.234833, 35.785713>,  <29.618093, 34.501720, 36.292034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085083, 34.234833, 35.785713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827410, 34.479095, 35.601482>,  <29.672806, 34.625652, 35.490944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827410, 34.479095, 35.601482>,  <30.085083, 34.234833, 35.785713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827410, 34.479095, 35.601482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756774, 0.421470, -0.499656,
		-0.111000, -0.670420, -0.733632,
		-0.644183, 0.610656, -0.460573,
		29.634155, 34.662292, 35.463310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186409, 34.122288, 35.126160>,  <30.085083, 34.234833, 35.785713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186409, 34.122288, 35.126160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977898, 34.463173, 35.108253>,  <29.852791, 34.667706, 35.097507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977898, 34.463173, 35.108253>,  <30.186409, 34.122288, 35.126160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977898, 34.463173, 35.108253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591593, 0.323060, -0.738681,
		-0.615050, -0.411542, -0.672567,
		-0.521278, 0.852212, -0.044767,
		29.821514, 34.718838, 35.094822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144705, 34.272228, 34.463814>,  <30.186409, 34.122288, 35.126160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144705, 34.272228, 34.463814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081272, 34.624405, 34.642551>,  <30.043213, 34.835712, 34.749794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081272, 34.624405, 34.642551>,  <30.144705, 34.272228, 34.463814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081272, 34.624405, 34.642551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563740, 0.452291, -0.691108,
		-0.810586, 0.142309, -0.568066,
		-0.158580, 0.880444, 0.446846,
		30.033699, 34.888538, 34.776604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876942, 34.670261, 33.905460>,  <30.144705, 34.272228, 34.463814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876942, 34.670261, 33.905460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.001833, 34.929626, 34.183186>,  <30.076767, 35.085247, 34.349819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.001833, 34.929626, 34.183186>,  <29.876942, 34.670261, 33.905460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001833, 34.929626, 34.183186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410898, 0.566779, -0.714090,
		-0.856549, 0.508251, -0.089469,
		0.312228, 0.648416, 0.694313,
		30.095501, 35.124153, 34.391479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732779, 35.334049, 33.577278>,  <29.876942, 34.670261, 33.905460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732779, 35.334049, 33.577278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009056, 35.404247, 33.857891>,  <30.174822, 35.446365, 34.026260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009056, 35.404247, 33.857891>,  <29.732779, 35.334049, 33.577278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009056, 35.404247, 33.857891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526244, 0.543406, -0.654047,
		-0.495997, 0.820922, 0.282975,
		0.690691, 0.175491, 0.701533,
		30.216263, 35.456894, 34.068352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010773, 36.016708, 33.512573>,  <29.732779, 35.334049, 33.577278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010773, 36.016708, 33.512573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304035, 35.845707, 33.724129>,  <30.479994, 35.743107, 33.851063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304035, 35.845707, 33.724129>,  <30.010773, 36.016708, 33.512573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304035, 35.845707, 33.724129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674160, 0.559094, -0.482621,
		-0.089379, 0.710393, 0.698107,
		0.733158, -0.427499, 0.528889,
		30.523983, 35.717457, 33.882797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408499, 36.522427, 33.638309>,  <30.010773, 36.016708, 33.512573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408499, 36.522427, 33.638309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646297, 36.216866, 33.738731>,  <30.788977, 36.033527, 33.798985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646297, 36.216866, 33.738731>,  <30.408499, 36.522427, 33.638309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646297, 36.216866, 33.738731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746902, 0.408955, -0.524302,
		0.297845, 0.499210, 0.813682,
		0.594496, -0.763901, 0.251056,
		30.824646, 35.987694, 33.814049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965231, 36.763496, 34.004730>,  <30.408499, 36.522427, 33.638309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965231, 36.763496, 34.004730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067484, 36.429539, 33.809753>,  <31.128836, 36.229164, 33.692768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067484, 36.429539, 33.809753>,  <30.965231, 36.763496, 34.004730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067484, 36.429539, 33.809753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728541, 0.497800, -0.470558,
		0.635516, -0.234833, 0.735509,
		0.255633, -0.834895, -0.487445,
		31.144175, 36.179070, 33.663521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727730, 36.712502, 33.937119>,  <30.965231, 36.763496, 34.004730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727730, 36.712502, 33.937119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.599915, 36.445446, 33.668148>,  <31.523226, 36.285213, 33.506763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.599915, 36.445446, 33.668148>,  <31.727730, 36.712502, 33.937119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599915, 36.445446, 33.668148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727231, 0.282152, -0.625719,
		0.607480, -0.688950, 0.395368,
		-0.319535, -0.667636, -0.672428,
		31.504053, 36.245155, 33.466419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244358, 36.760193, 33.592426>,  <31.727730, 36.712502, 33.937119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244358, 36.760193, 33.592426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.998793, 36.574219, 33.337257>,  <31.851454, 36.462635, 33.184155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.998793, 36.574219, 33.337257>,  <32.244358, 36.760193, 33.592426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998793, 36.574219, 33.337257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562623, 0.309129, -0.766743,
		0.553684, -0.829625, 0.071803,
		-0.613913, -0.464931, -0.637926,
		31.814619, 36.434738, 33.145878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637238, 36.395065, 33.085880>,  <32.244358, 36.760193, 33.592426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637238, 36.395065, 33.085880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287640, 36.423725, 32.893631>,  <32.077881, 36.440922, 32.778282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287640, 36.423725, 32.893631>,  <32.637238, 36.395065, 33.085880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287640, 36.423725, 32.893631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475223, 0.332505, -0.814618,
		0.101443, -0.940376, -0.324657,
		-0.873998, 0.071648, -0.480619,
		32.025440, 36.445221, 32.749447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626194, 36.079388, 32.379890>,  <32.637238, 36.395065, 33.085880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626194, 36.079388, 32.379890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.334721, 36.350075, 32.337799>,  <32.159836, 36.512486, 32.312546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.334721, 36.350075, 32.337799>,  <32.626194, 36.079388, 32.379890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334721, 36.350075, 32.337799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364589, 0.253250, -0.896069,
		-0.579737, -0.691315, -0.431263,
		-0.728684, 0.676718, -0.105228,
		32.116116, 36.553089, 32.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313721, 36.086643, 31.716652>,  <32.626194, 36.079388, 32.379890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313721, 36.086643, 31.716652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221016, 36.448490, 31.859732>,  <32.165394, 36.665600, 31.945580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221016, 36.448490, 31.859732>,  <32.313721, 36.086643, 31.716652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221016, 36.448490, 31.859732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447607, 0.425639, -0.786435,
		-0.863676, -0.022155, -0.503560,
		-0.231758, 0.904622, 0.357697,
		32.151489, 36.719875, 31.967041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372097, 36.580864, 31.128857>,  <32.313721, 36.086643, 31.716652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372097, 36.580864, 31.128857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354561, 36.858143, 31.416620>,  <32.344040, 37.024509, 31.589279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354561, 36.858143, 31.416620>,  <32.372097, 36.580864, 31.128857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354561, 36.858143, 31.416620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562460, 0.612261, -0.555676,
		-0.825661, 0.380275, -0.416742,
		-0.043845, 0.693201, 0.719410,
		32.341408, 37.066105, 31.632442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254272, 37.134563, 30.694218>,  <32.372097, 36.580864, 31.128857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254272, 37.134563, 30.694218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327564, 37.311462, 31.045408>,  <32.371540, 37.417603, 31.256123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327564, 37.311462, 31.045408>,  <32.254272, 37.134563, 30.694218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327564, 37.311462, 31.045408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445824, 0.758597, -0.475155,
		-0.876167, 0.478484, -0.058169,
		0.183227, 0.442249, 0.877977,
		32.382534, 37.444138, 31.308802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064911, 37.822880, 30.634068>,  <32.254272, 37.134563, 30.694218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064911, 37.822880, 30.634068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.364826, 37.765762, 30.892504>,  <32.544773, 37.731491, 31.047565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.364826, 37.765762, 30.892504>,  <32.064911, 37.822880, 30.634068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364826, 37.765762, 30.892504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548708, 0.679873, -0.486510,
		-0.369787, 0.719292, 0.588112,
		0.749785, -0.142797, 0.646090,
		32.589760, 37.722923, 31.086330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276638, 38.423882, 30.611073>,  <32.064911, 37.822880, 30.634068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276638, 38.423882, 30.611073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575562, 38.203732, 30.759998>,  <32.754917, 38.071640, 30.849354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575562, 38.203732, 30.759998>,  <32.276638, 38.423882, 30.611073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575562, 38.203732, 30.759998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660881, 0.557417, -0.502516,
		0.069037, 0.621590, 0.780294,
		0.747308, -0.550374, 0.372315,
		32.799755, 38.038620, 30.871693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.433807, 37.325275, 48.542992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232174, 37.064030, 48.769032>,  <38.111195, 36.907284, 48.904655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232174, 37.064030, 48.769032>,  <38.433807, 37.325275, 48.542992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232174, 37.064030, 48.769032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061833, 0.679927, 0.730668,
		-0.861436, 0.333380, -0.383127,
		-0.504088, -0.653113, 0.565100,
		38.080948, 36.868095, 48.938560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080261, 37.801895, 49.134632>,  <38.433807, 37.325275, 48.542992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080261, 37.801895, 49.134632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026035, 37.421223, 49.244846>,  <37.993500, 37.192818, 49.310974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026035, 37.421223, 49.244846>,  <38.080261, 37.801895, 49.134632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026035, 37.421223, 49.244846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121518, 0.291974, 0.948675,
		-0.983288, 0.095124, -0.155228,
		-0.135564, -0.951684, 0.275535,
		37.985367, 37.135719, 49.327507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589005, 37.870876, 49.488033>,  <38.080261, 37.801895, 49.134632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589005, 37.870876, 49.488033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745441, 37.523823, 49.610840>,  <37.839302, 37.315590, 49.684525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745441, 37.523823, 49.610840>,  <37.589005, 37.870876, 49.488033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745441, 37.523823, 49.610840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177244, 0.256337, 0.950198,
		-0.903123, -0.426031, -0.053532,
		0.391092, -0.867634, 0.307015,
		37.862770, 37.263531, 49.702946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125343, 37.592274, 49.989243>,  <37.589005, 37.870876, 49.488033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125343, 37.592274, 49.989243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.481461, 37.418293, 50.043190>,  <37.695133, 37.313904, 50.075558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.481461, 37.418293, 50.043190>,  <37.125343, 37.592274, 49.989243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481461, 37.418293, 50.043190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013234, 0.271325, 0.962397,
		-0.455191, -0.858602, 0.235803,
		0.890296, -0.434954, 0.134868,
		37.748550, 37.287807, 50.083649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043541, 37.156433, 50.652767>,  <37.125343, 37.592274, 49.989243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043541, 37.156433, 50.652767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434380, 37.207233, 50.584473>,  <37.668884, 37.237713, 50.543495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434380, 37.207233, 50.584473>,  <37.043541, 37.156433, 50.652767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434380, 37.207233, 50.584473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156845, 0.112371, 0.981210,
		0.143810, -0.985515, 0.089877,
		0.977097, 0.127011, -0.170734,
		37.727509, 37.245335, 50.533253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365437, 36.867905, 51.223686>,  <37.043541, 37.156433, 50.652767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365437, 36.867905, 51.223686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665482, 37.090549, 51.080849>,  <37.845509, 37.224136, 50.995148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665482, 37.090549, 51.080849>,  <37.365437, 36.867905, 51.223686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665482, 37.090549, 51.080849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222125, 0.296540, 0.928830,
		0.622891, -0.776045, 0.098801,
		0.750112, 0.556613, -0.357091,
		37.890514, 37.257534, 50.973721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965294, 36.701733, 51.683193>,  <37.365437, 36.867905, 51.223686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965294, 36.701733, 51.683193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061924, 37.055141, 51.522682>,  <38.119904, 37.267189, 51.426376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061924, 37.055141, 51.522682>,  <37.965294, 36.701733, 51.683193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061924, 37.055141, 51.522682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329665, 0.314207, 0.890278,
		0.912666, -0.347361, -0.215361,
		0.241580, 0.883524, -0.401279,
		38.134399, 37.320198, 51.402298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575233, 36.811897, 51.976322>,  <37.965294, 36.701733, 51.683193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575233, 36.811897, 51.976322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473228, 37.169380, 51.828671>,  <38.412025, 37.383869, 51.740078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473228, 37.169380, 51.828671>,  <38.575233, 36.811897, 51.976322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473228, 37.169380, 51.828671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272287, 0.432676, 0.859449,
		0.927808, 0.118661, -0.353682,
		-0.255013, 0.893707, -0.369130,
		38.396725, 37.437492, 51.717930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134007, 37.181934, 52.048607>,  <38.575233, 36.811897, 51.976322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134007, 37.181934, 52.048607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821880, 37.432083, 52.050198>,  <38.634605, 37.582172, 52.051151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821880, 37.432083, 52.050198>,  <39.134007, 37.181934, 52.048607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821880, 37.432083, 52.050198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326351, 0.401765, 0.855617,
		0.533478, 0.668953, -0.517594,
		-0.780318, 0.625370, 0.003981,
		38.587784, 37.619694, 52.051392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403992, 37.794815, 52.133976>,  <39.134007, 37.181934, 52.048607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403992, 37.794815, 52.133976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019695, 37.856522, 52.226223>,  <38.789120, 37.893547, 52.281570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019695, 37.856522, 52.226223>,  <39.403992, 37.794815, 52.133976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019695, 37.856522, 52.226223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277422, 0.547700, 0.789343,
		-0.004539, 0.822330, -0.568993,
		-0.960738, 0.154268, 0.230618,
		38.731476, 37.902802, 52.295410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373665, 38.475739, 52.394421>,  <39.403992, 37.794815, 52.133976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373665, 38.475739, 52.394421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035522, 38.317665, 52.538197>,  <38.832634, 38.222820, 52.624462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035522, 38.317665, 52.538197>,  <39.373665, 38.475739, 52.394421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035522, 38.317665, 52.538197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113180, 0.525084, 0.843491,
		-0.522069, 0.753735, -0.399159,
		-0.845361, -0.395183, 0.359438,
		38.781914, 38.199112, 52.646027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008781, 38.978188, 52.824261>,  <39.373665, 38.475739, 52.394421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008781, 38.978188, 52.824261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802200, 38.660870, 52.953232>,  <38.678253, 38.470478, 53.030617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802200, 38.660870, 52.953232>,  <39.008781, 38.978188, 52.824261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802200, 38.660870, 52.953232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044280, 0.400768, 0.915109,
		-0.855172, 0.458330, -0.242104,
		-0.516449, -0.793296, 0.322431,
		38.647266, 38.422882, 53.049961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580265, 39.065422, 53.272263>,  <39.008781, 38.978188, 52.824261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580265, 39.065422, 53.272263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.415485, 39.331001, 53.521893>,  <39.316616, 39.490349, 53.671669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.415485, 39.331001, 53.521893>,  <39.580265, 39.065422, 53.272263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415485, 39.331001, 53.521893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810829, -0.045394, 0.583520,
		0.415757, 0.746399, -0.519648,
		-0.411950, 0.663948, 0.624075,
		39.291901, 39.530186, 53.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007542, 39.786533, 53.464443>,  <39.580265, 39.065422, 53.272263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007542, 39.786533, 53.464443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.772812, 39.597404, 53.727371>,  <39.631973, 39.483925, 53.885128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.772812, 39.597404, 53.727371>,  <40.007542, 39.786533, 53.464443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772812, 39.597404, 53.727371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730069, 0.042129, 0.682073,
		-0.350195, 0.880148, 0.320473,
		-0.586824, -0.472826, 0.657323,
		39.596764, 39.455555, 53.924568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590202, 40.256859, 53.717892>,  <40.007542, 39.786533, 53.464443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590202, 40.256859, 53.717892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291695, 40.522030, 53.693882>,  <39.112591, 40.681133, 53.679474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291695, 40.522030, 53.693882>,  <39.590202, 40.256859, 53.717892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291695, 40.522030, 53.693882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108578, -0.210206, -0.971609,
		-0.656727, -0.718566, 0.228850,
		-0.746270, 0.662930, -0.060028,
		39.067814, 40.720909, 53.675873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931343, 39.939880, 53.484310>,  <39.590202, 40.256859, 53.717892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931343, 39.939880, 53.484310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949841, 40.329346, 53.395000>,  <38.960938, 40.563023, 53.341415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949841, 40.329346, 53.395000>,  <38.931343, 39.939880, 53.484310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949841, 40.329346, 53.395000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221502, -0.207955, -0.952729,
		-0.974063, 0.093509, 0.206052,
		0.046239, 0.973659, -0.223273,
		38.963711, 40.621445, 53.328018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275955, 40.057812, 53.149002>,  <38.931343, 39.939880, 53.484310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275955, 40.057812, 53.149002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.510708, 40.364063, 53.043644>,  <38.651558, 40.547813, 52.980427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.510708, 40.364063, 53.043644>,  <38.275955, 40.057812, 53.149002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510708, 40.364063, 53.043644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118992, -0.240226, -0.963396,
		-0.800880, 0.596743, -0.049881,
		0.586883, 0.765630, -0.263400,
		38.686771, 40.593754, 52.964622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071060, 40.441853, 52.591610>,  <38.275955, 40.057812, 53.149002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071060, 40.441853, 52.591610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454765, 40.546597, 52.549202>,  <38.684990, 40.609444, 52.523758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454765, 40.546597, 52.549202>,  <38.071060, 40.441853, 52.591610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454765, 40.546597, 52.549202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062572, -0.169036, -0.983622,
		-0.275488, 0.950189, -0.145766,
		0.959266, 0.261855, -0.106022,
		38.742546, 40.625153, 52.517395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095158, 40.835285, 51.992981>,  <38.071060, 40.441853, 52.591610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095158, 40.835285, 51.992981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474632, 40.727364, 52.058952>,  <38.702316, 40.662609, 52.098534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474632, 40.727364, 52.058952>,  <38.095158, 40.835285, 51.992981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474632, 40.727364, 52.058952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136297, -0.121731, -0.983161,
		0.285341, 0.955189, -0.078711,
		0.948685, -0.269808, 0.164924,
		38.759239, 40.646420, 52.108429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359287, 41.250134, 51.525764>,  <38.095158, 40.835285, 51.992981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359287, 41.250134, 51.525764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634327, 40.971893, 51.609039>,  <38.799351, 40.804947, 51.659004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634327, 40.971893, 51.609039>,  <38.359287, 41.250134, 51.525764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634327, 40.971893, 51.609039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133539, -0.160688, -0.977930,
		0.713705, 0.700226, -0.017599,
		0.687599, -0.695603, 0.208191,
		38.840607, 40.763214, 51.671497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950001, 41.278141, 50.995689>,  <38.359287, 41.250134, 51.525764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950001, 41.278141, 50.995689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992298, 40.923378, 51.175568>,  <39.017677, 40.710522, 51.283493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992298, 40.923378, 51.175568>,  <38.950001, 41.278141, 50.995689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992298, 40.923378, 51.175568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215222, -0.421096, -0.881112,
		0.970824, 0.189951, 0.146355,
		0.105739, -0.886903, 0.449691,
		39.024021, 40.657307, 51.310474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585407, 40.906857, 50.756130>,  <38.950001, 41.278141, 50.995689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585407, 40.906857, 50.756130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346806, 40.616165, 50.892391>,  <39.203644, 40.441750, 50.974148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346806, 40.616165, 50.892391>,  <39.585407, 40.906857, 50.756130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346806, 40.616165, 50.892391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065213, -0.466909, -0.881897,
		0.799957, -0.503840, 0.325905,
		-0.596503, -0.726733, 0.340650,
		39.167854, 40.398144, 50.994587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925709, 40.343460, 50.490273>,  <39.585407, 40.906857, 50.756130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925709, 40.343460, 50.490273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573051, 40.191818, 50.602695>,  <39.361458, 40.100834, 50.670151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573051, 40.191818, 50.602695>,  <39.925709, 40.343460, 50.490273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573051, 40.191818, 50.602695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009566, -0.581080, -0.813790,
		0.471825, -0.720159, 0.508677,
		-0.881640, -0.379101, 0.281057,
		39.308559, 40.078087, 50.687012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937508, 39.675457, 50.562431>,  <39.925709, 40.343460, 50.490273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937508, 39.675457, 50.562431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550945, 39.740196, 50.482563>,  <39.319008, 39.779037, 50.434639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550945, 39.740196, 50.482563>,  <39.937508, 39.675457, 50.562431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550945, 39.740196, 50.482563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014416, -0.741507, -0.670790,
		-0.256624, -0.651132, 0.714262,
		-0.966404, 0.161844, -0.199675,
		39.261024, 39.788750, 50.422661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659534, 39.008305, 50.358875>,  <39.937508, 39.675457, 50.562431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659534, 39.008305, 50.358875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372166, 39.252426, 50.225368>,  <39.199745, 39.398899, 50.145264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372166, 39.252426, 50.225368>,  <39.659534, 39.008305, 50.358875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372166, 39.252426, 50.225368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069350, -0.540277, -0.838625,
		-0.692142, -0.579339, 0.430471,
		-0.718422, 0.610300, -0.333771,
		39.156639, 39.435516, 50.125237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090630, 38.522305, 50.187820>,  <39.659534, 39.008305, 50.358875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090630, 38.522305, 50.187820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.069084, 38.868397, 49.988434>,  <39.056156, 39.076054, 49.868801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.069084, 38.868397, 49.988434>,  <39.090630, 38.522305, 50.187820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069084, 38.868397, 49.988434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185626, -0.499170, -0.846388,
		-0.981143, 0.046939, 0.187497,
		-0.053864, 0.865232, -0.498471,
		39.052925, 39.127968, 49.838894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403885, 38.529003, 49.781197>,  <39.090630, 38.522305, 50.187820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403885, 38.529003, 49.781197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649544, 38.781590, 49.591850>,  <38.796940, 38.933140, 49.478241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649544, 38.781590, 49.591850>,  <38.403885, 38.529003, 49.781197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649544, 38.781590, 49.591850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171865, -0.478404, -0.861157,
		-0.770253, 0.610231, -0.185282,
		0.614144, 0.631465, -0.473369,
		38.833786, 38.971027, 49.449841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021355, 38.555111, 49.249847>,  <38.403885, 38.529003, 49.781197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021355, 38.555111, 49.249847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378975, 38.701023, 49.145840>,  <38.593548, 38.788570, 49.083435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378975, 38.701023, 49.145840>,  <38.021355, 38.555111, 49.249847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378975, 38.701023, 49.145840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080199, -0.440729, -0.894050,
		-0.440729, 0.820179, -0.364779,
		0.894050, 0.364779, -0.260020,
		38.647190, 38.810455, 49.067833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593327, 38.929760, 48.760338>,  <38.021355, 38.555111, 49.249847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593327, 38.929760, 48.760338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200611, 38.860428, 48.791424>,  <36.964981, 38.818829, 48.810074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200611, 38.860428, 48.791424>,  <37.593327, 38.929760, 48.760338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200611, 38.860428, 48.791424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049340, 0.162357, 0.985498,
		-0.183438, 0.971388, -0.150849,
		-0.981792, -0.173335, 0.077710,
		36.906075, 38.808426, 48.814735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544674, 39.379959, 49.156574>,  <37.593327, 38.929760, 48.760338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544674, 39.379959, 49.156574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209717, 39.162937, 49.183109>,  <37.008743, 39.032722, 49.199032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209717, 39.162937, 49.183109>,  <37.544674, 39.379959, 49.156574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209717, 39.162937, 49.183109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098428, 0.269064, 0.958079,
		-0.537660, 0.795763, -0.278716,
		-0.837397, -0.542554, 0.066340,
		36.958496, 39.000172, 49.203011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053024, 39.835739, 49.454845>,  <37.544674, 39.379959, 49.156574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053024, 39.835739, 49.454845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.888432, 39.475586, 49.511417>,  <36.789677, 39.259495, 49.545361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.888432, 39.475586, 49.511417>,  <37.053024, 39.835739, 49.454845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888432, 39.475586, 49.511417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350804, 0.299678, 0.887203,
		-0.841202, 0.315453, -0.439168,
		-0.411480, -0.900379, 0.141427,
		36.764988, 39.205471, 49.553844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330814, 40.015663, 49.729679>,  <37.053024, 39.835739, 49.454845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330814, 40.015663, 49.729679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427086, 39.641502, 49.833290>,  <36.484848, 39.417004, 49.895454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427086, 39.641502, 49.833290>,  <36.330814, 40.015663, 49.729679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427086, 39.641502, 49.833290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415334, 0.141946, 0.898526,
		-0.877253, -0.323836, -0.354342,
		0.240677, -0.935405, 0.259023,
		36.499290, 39.360882, 49.910995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683933, 39.715336, 49.914852>,  <36.330814, 40.015663, 49.729679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683933, 39.715336, 49.914852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984047, 39.514931, 50.087391>,  <36.164116, 39.394688, 50.190914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984047, 39.514931, 50.087391>,  <35.683933, 39.715336, 49.914852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984047, 39.514931, 50.087391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338413, 0.269442, 0.901597,
		-0.567933, -0.822429, 0.032610,
		0.750286, -0.501011, 0.431346,
		36.209133, 39.364628, 50.216793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352634, 39.439983, 50.422493>,  <35.683933, 39.715336, 49.914852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352634, 39.439983, 50.422493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.724541, 39.352440, 50.540913>,  <35.947685, 39.299911, 50.611965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.724541, 39.352440, 50.540913>,  <35.352634, 39.439983, 50.422493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724541, 39.352440, 50.540913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245038, 0.232274, 0.941279,
		-0.274773, -0.947707, 0.162330,
		0.929762, -0.218861, 0.296046,
		36.003468, 39.286781, 50.629726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347408, 38.909691, 50.958099>,  <35.352634, 39.439983, 50.422493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347408, 38.909691, 50.958099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686939, 39.117786, 50.995716>,  <35.890659, 39.242641, 51.018288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686939, 39.117786, 50.995716>,  <35.347408, 38.909691, 50.958099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686939, 39.117786, 50.995716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197777, 0.147516, 0.969084,
		0.490280, -0.841185, 0.228107,
		0.848828, 0.520237, 0.094043,
		35.941589, 39.273857, 51.023930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324238, 38.163727, 51.287292>,  <35.347408, 38.909691, 50.958099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324238, 38.163727, 51.287292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047916, 37.936893, 51.466717>,  <34.882122, 37.800793, 51.574371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047916, 37.936893, 51.466717>,  <35.324238, 38.163727, 51.287292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047916, 37.936893, 51.466717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433852, -0.171182, -0.884573,
		0.578410, -0.805677, -0.127775,
		-0.690807, -0.567081, 0.448558,
		34.840675, 37.766769, 51.601284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453018, 37.452370, 51.074039>,  <35.324238, 38.163727, 51.287292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453018, 37.452370, 51.074039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076035, 37.551338, 51.163971>,  <34.849842, 37.610718, 51.217930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076035, 37.551338, 51.163971>,  <35.453018, 37.452370, 51.074039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076035, 37.551338, 51.163971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274809, -0.190379, -0.942463,
		-0.190379, -0.950021, 0.247418,
		0.942463, -0.247418, -0.224830,
		34.793297, 37.625565, 51.231419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003407, 36.845684, 50.934078>,  <35.453018, 37.452370, 51.074039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003407, 36.845684, 50.934078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794460, 37.186256, 50.915310>,  <34.669094, 37.390598, 50.904049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794460, 37.186256, 50.915310>,  <35.003407, 36.845684, 50.934078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794460, 37.186256, 50.915310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411593, -0.299947, -0.860595,
		-0.746811, -0.430230, 0.507125,
		-0.522364, 0.851431, -0.046924,
		34.637753, 37.441685, 50.901234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279999, 36.654457, 50.769169>,  <35.003407, 36.845684, 50.934078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279999, 36.654457, 50.769169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290783, 37.039246, 50.660442>,  <34.297253, 37.270119, 50.595207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290783, 37.039246, 50.660442>,  <34.279999, 36.654457, 50.769169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290783, 37.039246, 50.660442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569345, -0.208729, -0.795159,
		-0.821656, 0.176195, 0.542067,
		0.026958, 0.961971, -0.271819,
		34.298870, 37.327835, 50.578896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572445, 36.738472, 50.536167>,  <34.279999, 36.654457, 50.769169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572445, 36.738472, 50.536167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806469, 37.025742, 50.385479>,  <33.946884, 37.198105, 50.295067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806469, 37.025742, 50.385479>,  <33.572445, 36.738472, 50.536167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806469, 37.025742, 50.385479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478063, -0.069815, -0.875546,
		-0.655099, 0.692348, 0.302489,
		0.585065, 0.718178, -0.376722,
		33.981987, 37.241196, 50.272461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120636, 37.101078, 50.166367>,  <33.572445, 36.738472, 50.536167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120636, 37.101078, 50.166367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464725, 37.235229, 50.012726>,  <33.671181, 37.315720, 49.920540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464725, 37.235229, 50.012726>,  <33.120636, 37.101078, 50.166367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464725, 37.235229, 50.012726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390993, -0.049698, -0.919051,
		-0.327316, 0.940773, 0.088378,
		0.860226, 0.335375, -0.384103,
		33.722794, 37.335842, 49.897495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965019, 37.682129, 49.807674>,  <33.120636, 37.101078, 50.166367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965019, 37.682129, 49.807674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318939, 37.564583, 49.663021>,  <33.531292, 37.494057, 49.576229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318939, 37.564583, 49.663021>,  <32.965019, 37.682129, 49.807674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318939, 37.564583, 49.663021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395883, -0.064704, -0.916019,
		0.245788, 0.953654, -0.173586,
		0.884797, -0.293866, -0.361632,
		33.584377, 37.476421, 49.554531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.182163, 35.118305, 54.536285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.384068, 35.417763, 54.364357>,  <37.505211, 35.597439, 54.261200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.384068, 35.417763, 54.364357>,  <37.182163, 35.118305, 54.536285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384068, 35.417763, 54.364357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306150, -0.310302, -0.899992,
		-0.807149, 0.585871, 0.072570,
		0.504761, 0.748644, -0.429824,
		37.535496, 35.642357, 54.235409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860348, 35.147717, 54.006268>,  <37.182163, 35.118305, 54.536285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860348, 35.147717, 54.006268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.160042, 35.400742, 53.927769>,  <37.339859, 35.552555, 53.880669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.160042, 35.400742, 53.927769>,  <36.860348, 35.147717, 54.006268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160042, 35.400742, 53.927769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119469, -0.162375, -0.979470,
		-0.651439, 0.757300, -0.046086,
		0.749236, 0.632559, -0.196251,
		37.384811, 35.590508, 53.868893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698437, 35.589638, 53.360703>,  <36.860348, 35.147717, 54.006268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698437, 35.589638, 53.360703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.097038, 35.568867, 53.386883>,  <37.336201, 35.556404, 53.402592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.097038, 35.568867, 53.386883>,  <36.698437, 35.589638, 53.360703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097038, 35.568867, 53.386883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052023, -0.227313, -0.972431,
		0.065376, 0.972436, -0.223816,
		0.996504, -0.051930, 0.065450,
		37.395988, 35.553288, 53.406517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933537, 35.924984, 52.788948>,  <36.698437, 35.589638, 53.360703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933537, 35.924984, 52.788948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.248329, 35.714989, 52.918594>,  <37.437202, 35.588989, 52.996384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.248329, 35.714989, 52.918594>,  <36.933537, 35.924984, 52.788948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248329, 35.714989, 52.918594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257588, -0.197776, -0.945798,
		0.560637, 0.827810, -0.020414,
		0.786978, -0.524991, 0.324115,
		37.484421, 35.557491, 53.015827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483730, 35.937946, 52.310085>,  <36.933537, 35.924984, 52.788948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483730, 35.937946, 52.310085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.621521, 35.630428, 52.525600>,  <37.704193, 35.445915, 52.654907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.621521, 35.630428, 52.525600>,  <37.483730, 35.937946, 52.310085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621521, 35.630428, 52.525600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319092, -0.443857, -0.837360,
		0.882904, 0.460369, 0.092421,
		0.344472, -0.768799, 0.538783,
		37.724861, 35.399788, 52.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253761, 35.644394, 52.091415>,  <37.483730, 35.937946, 52.310085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253761, 35.644394, 52.091415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.060623, 35.343849, 52.271332>,  <37.944740, 35.163521, 52.379280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.060623, 35.343849, 52.271332>,  <38.253761, 35.644394, 52.091415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060623, 35.343849, 52.271332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227237, -0.603541, -0.764265,
		0.845710, -0.266811, 0.462154,
		-0.482843, -0.751365, 0.449792,
		37.915771, 35.118439, 52.406269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730633, 35.056252, 52.102726>,  <38.253761, 35.644394, 52.091415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730633, 35.056252, 52.102726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.368099, 34.887558, 52.113255>,  <38.150578, 34.786343, 52.119572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.368099, 34.887558, 52.113255>,  <38.730633, 35.056252, 52.102726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368099, 34.887558, 52.113255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270786, -0.627497, -0.730016,
		0.324391, -0.654513, 0.682923,
		-0.906336, -0.421736, 0.026322,
		38.096199, 34.761036, 52.121151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777466, 34.237663, 52.131290>,  <38.730633, 35.056252, 52.102726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777466, 34.237663, 52.131290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.423130, 34.362648, 51.994083>,  <38.210529, 34.437637, 51.911758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.423130, 34.362648, 51.994083>,  <38.777466, 34.237663, 52.131290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423130, 34.362648, 51.994083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046159, -0.676255, -0.735220,
		-0.461692, -0.667119, 0.584630,
		-0.885838, 0.312459, -0.343015,
		38.157379, 34.456387, 51.891178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459019, 33.609814, 51.919556>,  <38.777466, 34.237663, 52.131290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459019, 33.609814, 51.919556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.232315, 33.885101, 51.738388>,  <38.096291, 34.050274, 51.629688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.232315, 33.885101, 51.738388>,  <38.459019, 33.609814, 51.919556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232315, 33.885101, 51.738388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130091, -0.617601, -0.775658,
		-0.813546, -0.380692, 0.439564,
		-0.566762, 0.688217, -0.452922,
		38.062286, 34.091568, 51.602512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853142, 33.152306, 51.807899>,  <38.459019, 33.609814, 51.919556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853142, 33.152306, 51.807899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.869465, 33.477276, 51.575249>,  <37.879261, 33.672260, 51.435658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.869465, 33.477276, 51.575249>,  <37.853142, 33.152306, 51.807899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869465, 33.477276, 51.575249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326936, -0.539214, -0.776119,
		-0.944165, 0.221831, 0.243606,
		0.040812, 0.812428, -0.581632,
		37.881710, 33.721004, 51.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144062, 33.136398, 51.543941>,  <37.853142, 33.152306, 51.807899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144062, 33.136398, 51.543941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396896, 33.323448, 51.296783>,  <37.548595, 33.435677, 51.148487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396896, 33.323448, 51.296783>,  <37.144062, 33.136398, 51.543941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396896, 33.323448, 51.296783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427500, -0.454628, -0.781382,
		-0.646305, 0.758051, -0.087455,
		0.632087, 0.467624, -0.617895,
		37.586521, 33.463734, 51.111416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828003, 33.144215, 50.972214>,  <37.144062, 33.136398, 51.543941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828003, 33.144215, 50.972214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.186535, 33.237617, 50.821449>,  <37.401653, 33.293659, 50.730991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.186535, 33.237617, 50.821449>,  <36.828003, 33.144215, 50.972214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186535, 33.237617, 50.821449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261549, -0.407962, -0.874734,
		-0.358025, 0.882633, -0.304594,
		0.896331, 0.233511, -0.376912,
		37.455433, 33.307671, 50.708374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096310, 33.337479, 50.863270>,  <36.828003, 33.144215, 50.972214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096310, 33.337479, 50.863270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.709923, 33.268002, 50.786594>,  <35.478092, 33.226315, 50.740589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.709923, 33.268002, 50.786594>,  <36.096310, 33.337479, 50.863270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709923, 33.268002, 50.786594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240938, 0.334451, 0.911093,
		-0.094141, 0.926268, -0.364917,
		-0.965964, -0.173694, -0.191688,
		35.420135, 33.215893, 50.729088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732826, 33.985641, 50.876415>,  <36.096310, 33.337479, 50.863270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732826, 33.985641, 50.876415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.498184, 33.672890, 50.960846>,  <35.357399, 33.485237, 51.011505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.498184, 33.672890, 50.960846>,  <35.732826, 33.985641, 50.876415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498184, 33.672890, 50.960846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006254, 0.256252, 0.966590,
		-0.809847, 0.568330, -0.145429,
		-0.586608, -0.781880, 0.211079,
		35.322201, 33.438324, 51.024170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191792, 34.280968, 51.180908>,  <35.732826, 33.985641, 50.876415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191792, 34.280968, 51.180908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.160652, 33.901211, 51.302620>,  <35.141968, 33.673355, 51.375648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.160652, 33.901211, 51.302620>,  <35.191792, 34.280968, 51.180908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160652, 33.901211, 51.302620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177236, 0.313524, 0.932893,
		-0.981084, 0.018698, -0.192676,
		-0.077852, -0.949396, 0.304280,
		35.137295, 33.616390, 51.393906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503750, 34.217098, 51.307991>,  <35.191792, 34.280968, 51.180908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503750, 34.217098, 51.307991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652737, 33.911968, 51.519413>,  <34.742130, 33.728889, 51.646267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652737, 33.911968, 51.519413>,  <34.503750, 34.217098, 51.307991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652737, 33.911968, 51.519413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149550, 0.512752, 0.845411,
		-0.915916, -0.393933, 0.076903,
		0.372467, -0.762825, 0.528551,
		34.764477, 33.683121, 51.677979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011021, 34.082993, 51.889355>,  <34.503750, 34.217098, 51.307991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011021, 34.082993, 51.889355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368717, 33.928810, 51.980354>,  <34.583336, 33.836300, 52.034954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368717, 33.928810, 51.980354>,  <34.011021, 34.082993, 51.889355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368717, 33.928810, 51.980354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023061, 0.467936, 0.883462,
		-0.446992, -0.795274, 0.409559,
		0.894241, -0.385455, 0.227503,
		34.636990, 33.813175, 52.048607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984806, 33.938511, 52.656239>,  <34.011021, 34.082993, 51.889355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984806, 33.938511, 52.656239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.377052, 33.915905, 52.581188>,  <34.612400, 33.902340, 52.536160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.377052, 33.915905, 52.581188>,  <33.984806, 33.938511, 52.656239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377052, 33.915905, 52.581188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195827, 0.248125, 0.948729,
		-0.007065, -0.967078, 0.254382,
		0.980613, -0.056518, -0.187626,
		34.671238, 33.898949, 52.524899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247574, 33.664875, 53.233841>,  <33.984806, 33.938511, 52.656239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247574, 33.664875, 53.233841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548546, 33.863594, 53.060848>,  <34.729130, 33.982826, 52.957050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548546, 33.863594, 53.060848>,  <34.247574, 33.664875, 53.233841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548546, 33.863594, 53.060848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225916, 0.422119, 0.877939,
		0.618721, -0.758290, 0.205378,
		0.752427, 0.496801, -0.432484,
		34.774273, 34.012634, 52.931103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715412, 33.566814, 53.720352>,  <34.247574, 33.664875, 53.233841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715412, 33.566814, 53.720352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.821163, 33.887764, 53.506325>,  <34.884613, 34.080334, 53.377907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.821163, 33.887764, 53.506325>,  <34.715412, 33.566814, 53.720352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821163, 33.887764, 53.506325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209818, 0.493667, 0.843961,
		0.941318, -0.335395, -0.037836,
		0.264382, 0.802374, -0.535069,
		34.900478, 34.128475, 53.345802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157478, 33.908279, 54.194759>,  <34.715412, 33.566814, 53.720352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157478, 33.908279, 54.194759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.071827, 34.196548, 53.931007>,  <35.020435, 34.369511, 53.772755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.071827, 34.196548, 53.931007>,  <35.157478, 33.908279, 54.194759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071827, 34.196548, 53.931007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037231, 0.668527, 0.742756,
		0.976096, 0.183593, -0.116318,
		-0.214127, 0.720670, -0.659382,
		35.007587, 34.412750, 53.733192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583019, 34.453388, 54.338470>,  <35.157478, 33.908279, 54.194759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583019, 34.453388, 54.338470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.293350, 34.644970, 54.140003>,  <35.119549, 34.759918, 54.020924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.293350, 34.644970, 54.140003>,  <35.583019, 34.453388, 54.338470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293350, 34.644970, 54.140003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040865, 0.688408, 0.724171,
		0.688409, 0.544700, -0.478953,
		-0.724171, 0.478953, -0.496165,
		35.076099, 34.788654, 53.991154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858894, 35.105648, 54.323635>,  <35.583019, 34.453388, 54.338470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858894, 35.105648, 54.323635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460175, 35.092693, 54.294376>,  <35.220943, 35.084919, 54.276821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460175, 35.092693, 54.294376>,  <35.858894, 35.105648, 54.323635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460175, 35.092693, 54.294376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076252, 0.661075, 0.746436,
		0.024176, 0.749621, -0.661426,
		-0.996795, -0.032389, -0.073142,
		35.161137, 35.082977, 54.272434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610188, 35.792641, 54.601868>,  <35.858894, 35.105648, 54.323635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610188, 35.792641, 54.601868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.266258, 35.588642, 54.611694>,  <35.059902, 35.466244, 54.617592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.266258, 35.588642, 54.611694>,  <35.610188, 35.792641, 54.601868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266258, 35.588642, 54.611694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229934, 0.429719, 0.873196,
		-0.455887, 0.745146, -0.486749,
		-0.859824, -0.509999, 0.024569,
		35.008312, 35.435642, 54.619064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313457, 36.129494, 55.086830>,  <35.610188, 35.792641, 54.601868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313457, 36.129494, 55.086830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010635, 35.868809, 55.068321>,  <34.828941, 35.712399, 55.057217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010635, 35.868809, 55.068321>,  <35.313457, 36.129494, 55.086830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010635, 35.868809, 55.068321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380254, 0.381912, 0.842348,
		-0.531300, 0.655294, -0.536944,
		-0.757052, -0.651715, -0.046268,
		34.783520, 35.673294, 55.054440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626556, 36.441700, 55.104553>,  <35.313457, 36.129494, 55.086830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626556, 36.441700, 55.104553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.651455, 36.074993, 55.262371>,  <34.666393, 35.854969, 55.357059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.651455, 36.074993, 55.262371>,  <34.626556, 36.441700, 55.104553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651455, 36.074993, 55.262371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340038, 0.352178, 0.871978,
		-0.938349, -0.188440, -0.289813,
		0.062250, -0.916767, 0.394543,
		34.670132, 35.799965, 55.380733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818089, 36.424469, 54.388615>,  <34.626556, 36.441700, 55.104553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818089, 36.424469, 54.388615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.910099, 36.813744, 54.389076>,  <34.965305, 37.047306, 54.389351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.910099, 36.813744, 54.389076>,  <34.818089, 36.424469, 54.388615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910099, 36.813744, 54.389076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491797, 0.117262, -0.862778,
		-0.839776, 0.197896, 0.505582,
		0.230026, 0.973184, 0.001150,
		34.979107, 37.105698, 54.389420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245205, 36.727589, 54.154465>,  <34.818089, 36.424469, 54.388615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245205, 36.727589, 54.154465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533569, 36.997349, 54.090633>,  <34.706589, 37.159206, 54.052334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.533569, 36.997349, 54.090633>,  <34.245205, 36.727589, 54.154465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533569, 36.997349, 54.090633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440494, 0.268140, -0.856776,
		-0.535024, 0.687953, 0.490377,
		0.720912, 0.674404, -0.159578,
		34.749844, 37.199669, 54.042759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832848, 37.299202, 53.905910>,  <34.245205, 36.727589, 54.154465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832848, 37.299202, 53.905910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207172, 37.361168, 53.779251>,  <34.431767, 37.398350, 53.703255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207172, 37.361168, 53.779251>,  <33.832848, 37.299202, 53.905910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207172, 37.361168, 53.779251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349917, 0.299484, -0.887619,
		-0.042677, 0.941440, 0.334467,
		0.935808, 0.154917, -0.316645,
		34.487915, 37.407642, 53.684258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741913, 37.781471, 53.370567>,  <33.832848, 37.299202, 53.905910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741913, 37.781471, 53.370567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.130119, 37.698273, 53.321850>,  <34.363045, 37.648354, 53.292618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.130119, 37.698273, 53.321850>,  <33.741913, 37.781471, 53.370567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130119, 37.698273, 53.321850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035164, 0.377725, -0.925250,
		0.238451, 0.902254, 0.359275,
		0.970518, -0.207993, -0.121795,
		34.421276, 37.635876, 53.285313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083080, 38.427467, 53.077503>,  <33.741913, 37.781471, 53.370567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083080, 38.427467, 53.077503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273697, 38.087029, 52.989380>,  <34.388069, 37.882767, 52.936504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273697, 38.087029, 52.989380>,  <34.083080, 38.427467, 53.077503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273697, 38.087029, 52.989380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026776, 0.236429, -0.971280,
		0.878742, 0.468758, 0.089880,
		0.476545, -0.851098, -0.220312,
		34.416660, 37.831699, 52.923286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613342, 38.682240, 52.669067>,  <34.083080, 38.427467, 53.077503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613342, 38.682240, 52.669067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.595711, 38.292507, 52.580769>,  <34.585133, 38.058666, 52.527790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.595711, 38.292507, 52.580769>,  <34.613342, 38.682240, 52.669067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595711, 38.292507, 52.580769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049208, 0.218572, -0.974579,
		0.997815, -0.053821, 0.038311,
		-0.044079, -0.974335, -0.220743,
		34.582485, 38.000206, 52.514545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246063, 38.610874, 52.321217>,  <34.613342, 38.682240, 52.669067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246063, 38.610874, 52.321217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934875, 38.374287, 52.236420>,  <34.748165, 38.232334, 52.185543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934875, 38.374287, 52.236420>,  <35.246063, 38.610874, 52.321217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934875, 38.374287, 52.236420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011016, 0.350185, -0.936616,
		0.628211, -0.726319, -0.278947,
		-0.777965, -0.591466, -0.211989,
		34.701485, 38.196846, 52.172825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921963, 38.616455, 51.879078>,  <35.246063, 38.610874, 52.321217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921963, 38.616455, 51.879078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060135, 38.966084, 51.742443>,  <36.143036, 39.175861, 51.660461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060135, 38.966084, 51.742443>,  <35.921963, 38.616455, 51.879078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060135, 38.966084, 51.742443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049296, 0.380386, 0.923513,
		0.937150, -0.302167, 0.174483,
		0.345426, 0.874071, -0.341584,
		36.163761, 39.228306, 51.639969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512577, 38.841042, 52.322544>,  <35.921963, 38.616455, 51.879078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512577, 38.841042, 52.322544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.367825, 39.168896, 52.144894>,  <36.280975, 39.365608, 52.038303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.367825, 39.168896, 52.144894>,  <36.512577, 38.841042, 52.322544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367825, 39.168896, 52.144894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162624, 0.524610, 0.835667,
		0.917932, 0.230184, -0.323136,
		-0.361877, 0.819634, -0.444122,
		36.259262, 39.414787, 52.011658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966560, 39.407818, 52.361572>,  <36.512577, 38.841042, 52.322544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966560, 39.407818, 52.361572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617737, 39.603439, 52.369019>,  <36.408443, 39.720814, 52.373486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617737, 39.603439, 52.369019>,  <36.966560, 39.407818, 52.361572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617737, 39.603439, 52.369019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197817, 0.317441, 0.927416,
		0.447646, 0.812440, -0.373569,
		-0.872056, 0.489052, 0.018613,
		36.356121, 39.750156, 52.374603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132870, 39.972591, 52.737293>,  <36.966560, 39.407818, 52.361572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132870, 39.972591, 52.737293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.738953, 40.026001, 52.692848>,  <36.502602, 40.058044, 52.666180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.738953, 40.026001, 52.692848>,  <37.132870, 39.972591, 52.737293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738953, 40.026001, 52.692848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006381, 0.611439, 0.791265,
		0.173591, 0.779945, -0.601292,
		-0.984797, 0.133520, -0.111117,
		36.443512, 40.066055, 52.659512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019424, 40.685738, 52.733543>,  <37.132870, 39.972591, 52.737293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019424, 40.685738, 52.733543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676201, 40.509033, 52.838303>,  <36.470268, 40.403011, 52.901157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676201, 40.509033, 52.838303>,  <37.019424, 40.685738, 52.733543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676201, 40.509033, 52.838303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046679, 0.574943, 0.816861,
		-0.511432, 0.688686, -0.513954,
		-0.858055, -0.441759, 0.261898,
		36.418785, 40.376507, 52.916870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498714, 41.254917, 52.906311>,  <37.019424, 40.685738, 52.733543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498714, 41.254917, 52.906311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.388962, 40.915581, 53.087433>,  <36.323109, 40.711979, 53.196106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.388962, 40.915581, 53.087433>,  <36.498714, 41.254917, 52.906311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388962, 40.915581, 53.087433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000626, 0.470716, 0.882284,
		-0.961620, 0.242369, -0.128626,
		-0.274385, -0.848342, 0.452801,
		36.306644, 40.661079, 53.223274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952179, 41.508675, 53.349434>,  <36.498714, 41.254917, 52.906311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952179, 41.508675, 53.349434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060322, 41.157291, 53.507023>,  <36.125206, 40.946461, 53.601578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060322, 41.157291, 53.507023>,  <35.952179, 41.508675, 53.349434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060322, 41.157291, 53.507023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009695, 0.411674, 0.911279,
		-0.962713, -0.242547, 0.119814,
		0.270352, -0.878462, 0.393973,
		36.141426, 40.893753, 53.625214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670132, 41.489922, 54.040215>,  <35.952179, 41.508675, 53.349434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670132, 41.489922, 54.040215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.961178, 41.217289, 54.071251>,  <36.135807, 41.053711, 54.089870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.961178, 41.217289, 54.071251>,  <35.670132, 41.489922, 54.040215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961178, 41.217289, 54.071251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238247, 0.357146, 0.903153,
		-0.643283, -0.638663, 0.422251,
		0.727616, -0.681583, 0.077586,
		36.179462, 41.012814, 54.094528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641178, 41.140545, 54.728825>,  <35.670132, 41.489922, 54.040215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641178, 41.140545, 54.728825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.010334, 41.069939, 54.591938>,  <36.231827, 41.027576, 54.509808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.010334, 41.069939, 54.591938>,  <35.641178, 41.140545, 54.728825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010334, 41.069939, 54.591938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373673, 0.196063, 0.906602,
		-0.092932, -0.964574, 0.246903,
		0.922893, -0.176513, -0.342215,
		36.287201, 41.016983, 54.489273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.518585, 34.882790, 39.374226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856270, 34.708992, 39.499779>,  <36.058880, 34.604713, 39.575111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856270, 34.708992, 39.499779>,  <35.518585, 34.882790, 39.374226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856270, 34.708992, 39.499779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073839, 0.485733, 0.870983,
		-0.530901, -0.758469, 0.377979,
		0.844211, -0.434497, 0.313881,
		36.109531, 34.578644, 39.593945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445839, 34.511997, 40.117760>,  <35.518585, 34.882790, 39.374226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445839, 34.511997, 40.117760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813595, 34.647385, 40.037601>,  <36.034248, 34.728619, 39.989506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813595, 34.647385, 40.037601>,  <35.445839, 34.511997, 40.117760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813595, 34.647385, 40.037601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002216, 0.504996, 0.863119,
		0.393338, -0.793988, 0.463539,
		0.919391, 0.338470, -0.200393,
		36.089413, 34.748924, 39.977482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631058, 34.520920, 40.710430>,  <35.445839, 34.511997, 40.117760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631058, 34.520920, 40.710430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906357, 34.725563, 40.504681>,  <36.071537, 34.848351, 40.381233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906357, 34.725563, 40.504681>,  <35.631058, 34.520920, 40.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906357, 34.725563, 40.504681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176400, 0.569715, 0.802688,
		0.703707, -0.643179, 0.301855,
		0.688243, 0.511610, -0.514370,
		36.112831, 34.879047, 40.350368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261570, 34.490749, 41.056885>,  <35.631058, 34.520920, 40.710430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261570, 34.490749, 41.056885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254578, 34.823410, 40.834877>,  <36.250381, 35.023006, 40.701672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254578, 34.823410, 40.834877>,  <36.261570, 34.490749, 41.056885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254578, 34.823410, 40.834877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010001, 0.554930, 0.831837,
		0.999797, 0.020093, -0.001383,
		-0.017481, 0.831654, -0.555019,
		36.249332, 35.072906, 40.668373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761124, 34.954777, 41.372517>,  <36.261570, 34.490749, 41.056885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761124, 34.954777, 41.372517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494480, 35.187366, 41.185959>,  <36.334496, 35.326920, 41.074024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494480, 35.187366, 41.185959>,  <36.761124, 34.954777, 41.372517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494480, 35.187366, 41.185959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113756, 0.539007, 0.834585,
		0.736678, 0.609395, -0.293159,
		-0.666607, 0.581472, -0.466397,
		36.294498, 35.361809, 41.046040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863190, 35.644562, 41.641197>,  <36.761124, 34.954777, 41.372517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863190, 35.644562, 41.641197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494698, 35.648827, 41.485645>,  <36.273602, 35.651386, 41.392315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494698, 35.648827, 41.485645>,  <36.863190, 35.644562, 41.641197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494698, 35.648827, 41.485645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307369, 0.592803, 0.744385,
		0.238463, 0.805277, -0.542830,
		-0.921227, 0.010659, -0.388879,
		36.218330, 35.652023, 41.368980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613693, 36.369045, 41.665520>,  <36.863190, 35.644562, 41.641197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613693, 36.369045, 41.665520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262241, 36.179867, 41.639198>,  <36.051369, 36.066360, 41.623405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262241, 36.179867, 41.639198>,  <36.613693, 36.369045, 41.665520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262241, 36.179867, 41.639198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401329, 0.656748, 0.638449,
		-0.258740, 0.587368, -0.766846,
		-0.878629, -0.472950, -0.065800,
		35.998653, 36.037983, 41.619457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071232, 36.924877, 41.791557>,  <36.613693, 36.369045, 41.665520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071232, 36.924877, 41.791557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877884, 36.578796, 41.844883>,  <35.761875, 36.371147, 41.876877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877884, 36.578796, 41.844883>,  <36.071232, 36.924877, 41.791557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877884, 36.578796, 41.844883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590755, 0.434771, 0.679693,
		-0.646033, 0.249791, -0.721281,
		-0.483373, -0.865205, 0.133311,
		35.732872, 36.319237, 41.884876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352077, 37.005840, 41.776653>,  <36.071232, 36.924877, 41.791557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352077, 37.005840, 41.776653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390663, 36.656868, 41.968300>,  <35.413815, 36.447483, 42.083286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390663, 36.656868, 41.968300>,  <35.352077, 37.005840, 41.776653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390663, 36.656868, 41.968300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493199, 0.376213, 0.784359,
		-0.864551, -0.311963, -0.393992,
		0.096466, -0.872435, 0.479115,
		35.419601, 36.395138, 42.112034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668709, 36.905636, 42.083363>,  <35.352077, 37.005840, 41.776653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668709, 36.905636, 42.083363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928680, 36.685520, 42.293037>,  <35.084663, 36.553452, 42.418842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928680, 36.685520, 42.293037>,  <34.668709, 36.905636, 42.083363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928680, 36.685520, 42.293037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304281, 0.443623, 0.842978,
		-0.696427, -0.707374, 0.120879,
		0.649925, -0.550291, 0.524192,
		35.123657, 36.520432, 42.450294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330692, 36.697464, 42.745728>,  <34.668709, 36.905636, 42.083363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330692, 36.697464, 42.745728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720547, 36.656143, 42.825130>,  <34.954460, 36.631351, 42.872772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720547, 36.656143, 42.825130>,  <34.330692, 36.697464, 42.745728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720547, 36.656143, 42.825130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151524, 0.348123, 0.925122,
		-0.164672, -0.931740, 0.323642,
		0.974640, -0.103302, 0.198507,
		35.012939, 36.625153, 42.884682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395992, 36.594425, 43.458111>,  <34.330692, 36.697464, 42.745728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395992, 36.594425, 43.458111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786911, 36.640129, 43.386742>,  <35.021461, 36.667553, 43.343922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786911, 36.640129, 43.386742>,  <34.395992, 36.594425, 43.458111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786911, 36.640129, 43.386742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126316, 0.361863, 0.923634,
		0.170098, -0.925203, 0.339215,
		0.977298, 0.114260, -0.178420,
		35.080101, 36.674408, 43.333214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090328, 35.897129, 43.641941>,  <34.395992, 36.594425, 43.458111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090328, 35.897129, 43.641941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704052, 35.838909, 43.727974>,  <33.472286, 35.803978, 43.779594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704052, 35.838909, 43.727974>,  <34.090328, 35.897129, 43.641941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704052, 35.838909, 43.727974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140997, -0.401670, -0.904865,
		0.218097, -0.904144, 0.367366,
		-0.965688, -0.145551, 0.215084,
		33.414345, 35.795242, 43.792500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977901, 35.344292, 43.190472>,  <34.090328, 35.897129, 43.641941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977901, 35.344292, 43.190472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611809, 35.430218, 43.326828>,  <33.392155, 35.481773, 43.408642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611809, 35.430218, 43.326828>,  <33.977901, 35.344292, 43.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611809, 35.430218, 43.326828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401604, -0.417843, -0.814937,
		-0.032622, -0.882758, 0.468693,
		-0.915232, 0.214814, 0.340888,
		33.337238, 35.494663, 43.429096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633320, 34.801556, 42.955025>,  <33.977901, 35.344292, 43.190472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633320, 34.801556, 42.955025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340683, 35.068913, 43.008728>,  <33.165100, 35.229324, 43.040951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340683, 35.068913, 43.008728>,  <33.633320, 34.801556, 42.955025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340683, 35.068913, 43.008728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449489, -0.324841, -0.832128,
		-0.512571, -0.669130, 0.538085,
		-0.731594, 0.668388, 0.134263,
		33.121204, 35.269428, 43.049007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988522, 34.415749, 42.818237>,  <33.633320, 34.801556, 42.955025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988522, 34.415749, 42.818237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876324, 34.797474, 42.777023>,  <32.809006, 35.026508, 42.752296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876324, 34.797474, 42.777023>,  <32.988522, 34.415749, 42.818237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876324, 34.797474, 42.777023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379719, -0.208910, -0.901205,
		-0.881552, -0.213662, 0.420968,
		-0.280498, 0.954308, -0.103034,
		32.792175, 35.083767, 42.746113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172344, 34.456902, 42.774200>,  <32.988522, 34.415749, 42.818237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172344, 34.456902, 42.774200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339584, 34.766094, 42.583332>,  <32.439930, 34.951611, 42.468811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339584, 34.766094, 42.583332>,  <32.172344, 34.456902, 42.774200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339584, 34.766094, 42.583332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509288, -0.235504, -0.827746,
		-0.752207, 0.589100, 0.295205,
		0.418103, 0.772981, -0.477169,
		32.465015, 34.997990, 42.440182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607502, 34.839035, 42.363285>,  <32.172344, 34.456902, 42.774200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607502, 34.839035, 42.363285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951920, 34.958786, 42.198856>,  <32.158569, 35.030636, 42.100201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951920, 34.958786, 42.198856>,  <31.607502, 34.839035, 42.363285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951920, 34.958786, 42.198856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443283, 0.045727, -0.895214,
		-0.249209, 0.953038, 0.172081,
		0.861043, 0.299376, -0.411070,
		32.210232, 35.048599, 42.075535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383907, 35.309059, 42.013836>,  <31.607502, 34.839035, 42.363285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383907, 35.309059, 42.013836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736494, 35.250542, 41.834229>,  <31.948046, 35.215431, 41.726463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736494, 35.250542, 41.834229>,  <31.383907, 35.309059, 42.013836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736494, 35.250542, 41.834229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459876, -0.049701, -0.886591,
		0.107390, 0.987991, -0.111089,
		0.881465, -0.146298, -0.449016,
		32.000935, 35.206654, 41.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398071, 35.753723, 41.359989>,  <31.383907, 35.309059, 42.013836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398071, 35.753723, 41.359989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702480, 35.497730, 41.317539>,  <31.885126, 35.344135, 41.292068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702480, 35.497730, 41.317539>,  <31.398071, 35.753723, 41.359989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702480, 35.497730, 41.317539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313677, -0.219822, -0.923734,
		0.567847, 0.736272, -0.368039,
		0.761023, -0.639986, -0.106126,
		31.930788, 35.305733, 41.285702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789064, 35.948730, 40.710056>,  <31.398071, 35.753723, 41.359989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789064, 35.948730, 40.710056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846212, 35.558937, 40.779301>,  <31.880501, 35.325062, 40.820847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846212, 35.558937, 40.779301>,  <31.789064, 35.948730, 40.710056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846212, 35.558937, 40.779301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296838, -0.209043, -0.931766,
		0.944180, 0.081736, -0.319130,
		0.142871, -0.974485, 0.173111,
		31.889074, 35.266590, 40.831234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961462, 35.806694, 40.039902>,  <31.789064, 35.948730, 40.710056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961462, 35.806694, 40.039902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882944, 35.455055, 40.213638>,  <31.835835, 35.244072, 40.317883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882944, 35.455055, 40.213638>,  <31.961462, 35.806694, 40.039902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882944, 35.455055, 40.213638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311267, -0.364185, -0.877771,
		0.929829, -0.307497, -0.202148,
		-0.196293, -0.879099, 0.434344,
		31.824057, 35.191326, 40.343941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234917, 35.208374, 39.621971>,  <31.961462, 35.806694, 40.039902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234917, 35.208374, 39.621971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920113, 35.073456, 39.828602>,  <31.731232, 34.992504, 39.952579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920113, 35.073456, 39.828602>,  <32.234917, 35.208374, 39.621971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920113, 35.073456, 39.828602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406767, -0.345854, -0.845533,
		0.463857, -0.875566, 0.134987,
		-0.787005, -0.337298, 0.516577,
		31.684011, 34.972267, 39.983574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197433, 34.477776, 39.480675>,  <32.234917, 35.208374, 39.621971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197433, 34.477776, 39.480675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847252, 34.649178, 39.570080>,  <31.637142, 34.752018, 39.623722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847252, 34.649178, 39.570080>,  <32.197433, 34.477776, 39.480675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847252, 34.649178, 39.570080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400771, -0.385190, -0.831271,
		-0.270103, -0.817322, 0.508948,
		-0.875458, 0.428501, 0.223518,
		31.584614, 34.777729, 39.637135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616131, 34.115726, 39.919968>,  <32.197433, 34.477776, 39.480675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616131, 34.115726, 39.919968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941353, 33.901722, 39.828144>,  <33.136486, 33.773319, 39.773048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941353, 33.901722, 39.828144>,  <32.616131, 34.115726, 39.919968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941353, 33.901722, 39.828144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013352, -0.377064, 0.926091,
		-0.582032, -0.756029, -0.299431,
		0.813056, -0.535016, -0.229558,
		33.185268, 33.741219, 39.759277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550297, 33.368668, 40.055222>,  <32.616131, 34.115726, 39.919968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550297, 33.368668, 40.055222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944469, 33.436577, 40.059258>,  <33.180973, 33.477322, 40.061680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944469, 33.436577, 40.059258>,  <32.550297, 33.368668, 40.055222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944469, 33.436577, 40.059258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054961, -0.374062, 0.925774,
		0.160948, -0.911732, -0.377944,
		0.985431, 0.169774, 0.010095,
		33.240097, 33.487511, 40.062286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926449, 32.642452, 40.156967>,  <32.550297, 33.368668, 40.055222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926449, 32.642452, 40.156967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153088, 32.944859, 40.288055>,  <33.289070, 33.126301, 40.366711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153088, 32.944859, 40.288055>,  <32.926449, 32.642452, 40.156967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153088, 32.944859, 40.288055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176301, -0.499744, 0.848041,
		0.804911, -0.422723, -0.416442,
		0.566601, 0.756017, 0.327723,
		33.323067, 33.171665, 40.386372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880863, 32.122780, 40.622810>,  <32.926449, 32.642452, 40.156967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880863, 32.122780, 40.622810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147442, 31.825762, 40.596027>,  <33.307388, 31.647552, 40.579956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147442, 31.825762, 40.596027>,  <32.880863, 32.122780, 40.622810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147442, 31.825762, 40.596027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334518, 0.217554, 0.916934,
		-0.666294, -0.633484, 0.393382,
		0.666445, -0.742541, -0.066957,
		33.347374, 31.602999, 40.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811268, 31.810972, 41.204666>,  <32.880863, 32.122780, 40.622810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811268, 31.810972, 41.204666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166527, 31.670120, 41.086552>,  <33.379684, 31.585609, 41.015682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166527, 31.670120, 41.086552>,  <32.811268, 31.810972, 41.204666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166527, 31.670120, 41.086552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369820, 0.166224, 0.914113,
		-0.272801, -0.921073, 0.277856,
		0.888151, -0.352128, -0.295285,
		33.432972, 31.564482, 40.997967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108715, 31.209152, 41.583942>,  <32.811268, 31.810972, 41.204666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108715, 31.209152, 41.583942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414463, 31.411777, 41.424377>,  <33.597912, 31.533352, 41.328640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414463, 31.411777, 41.424377>,  <33.108715, 31.209152, 41.583942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414463, 31.411777, 41.424377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367151, 0.166632, 0.915114,
		0.530033, -0.845948, -0.058615,
		0.764372, 0.506562, -0.398912,
		33.643776, 31.563745, 41.304703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699154, 31.122013, 42.068859>,  <33.108715, 31.209152, 41.583942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699154, 31.122013, 42.068859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790398, 31.433008, 41.834431>,  <33.845142, 31.619606, 41.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790398, 31.433008, 41.834431>,  <33.699154, 31.122013, 42.068859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790398, 31.433008, 41.834431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430552, 0.459335, 0.776940,
		0.873265, -0.429560, -0.229971,
		0.228109, 0.777489, -0.586069,
		33.858829, 31.666254, 41.658611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335415, 31.233702, 42.308723>,  <33.699154, 31.122013, 42.068859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335415, 31.233702, 42.308723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245373, 31.564175, 42.102131>,  <34.191349, 31.762459, 41.978176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245373, 31.564175, 42.102131>,  <34.335415, 31.233702, 42.308723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245373, 31.564175, 42.102131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317714, 0.563350, 0.762689,
		0.921078, 0.007593, -0.389303,
		-0.225105, 0.826183, -0.516478,
		34.177841, 31.812029, 41.947189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955669, 31.736183, 42.383034>,  <34.335415, 31.233702, 42.308723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955669, 31.736183, 42.383034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638206, 31.960646, 42.289051>,  <34.447727, 32.095325, 42.232662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638206, 31.960646, 42.289051>,  <34.955669, 31.736183, 42.383034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638206, 31.960646, 42.289051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226847, 0.631337, 0.741589,
		0.564486, 0.535270, -0.628364,
		-0.793660, 0.561159, -0.234957,
		34.400108, 32.128994, 42.218563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212246, 32.411751, 42.430843>,  <34.955669, 31.736183, 42.383034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212246, 32.411751, 42.430843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813507, 32.434711, 42.452766>,  <34.574265, 32.448486, 42.465919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813507, 32.434711, 42.452766>,  <35.212246, 32.411751, 42.430843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813507, 32.434711, 42.452766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074160, 0.427855, 0.900800,
		0.028261, 0.902023, -0.430762,
		-0.996846, 0.057403, 0.054803,
		34.514454, 32.451931, 42.469208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084862, 33.029758, 42.647263>,  <35.212246, 32.411751, 42.430843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084862, 33.029758, 42.647263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771469, 32.805019, 42.753464>,  <34.583435, 32.670177, 42.817184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771469, 32.805019, 42.753464>,  <35.084862, 33.029758, 42.647263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771469, 32.805019, 42.753464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077146, 0.336001, 0.938697,
		-0.616613, 0.755930, -0.219905,
		-0.783477, -0.561849, 0.265499,
		34.536427, 32.636463, 42.833115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706936, 33.484570, 43.145237>,  <35.084862, 33.029758, 42.647263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706936, 33.484570, 43.145237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581890, 33.107403, 43.191166>,  <34.506863, 32.881104, 43.218723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581890, 33.107403, 43.191166>,  <34.706936, 33.484570, 43.145237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581890, 33.107403, 43.191166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269419, 0.203928, 0.941184,
		-0.910872, 0.263290, -0.317789,
		-0.312610, -0.942917, 0.114818,
		34.488106, 32.824528, 43.225613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094555, 33.641464, 43.455864>,  <34.706936, 33.484570, 43.145237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094555, 33.641464, 43.455864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203617, 33.267151, 43.545277>,  <34.269054, 33.042561, 43.598923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203617, 33.267151, 43.545277>,  <34.094555, 33.641464, 43.455864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203617, 33.267151, 43.545277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163315, 0.183947, 0.969274,
		-0.948150, -0.300781, -0.102674,
		0.272652, -0.935785, 0.223531,
		34.285412, 32.986416, 43.612335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615437, 33.426521, 43.910355>,  <34.094555, 33.641464, 43.455864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615437, 33.426521, 43.910355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907085, 33.155792, 43.950947>,  <34.082073, 32.993355, 43.975304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907085, 33.155792, 43.950947>,  <33.615437, 33.426521, 43.910355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907085, 33.155792, 43.950947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074772, 0.068618, 0.994837,
		-0.680291, -0.732942, -0.000577,
		0.729118, -0.676822, 0.101484,
		34.125820, 32.952747, 43.981392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276089, 33.005535, 44.368786>,  <33.615437, 33.426521, 43.910355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276089, 33.005535, 44.368786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668694, 32.928997, 44.366859>,  <33.904255, 32.883076, 44.365704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668694, 32.928997, 44.366859>,  <33.276089, 33.005535, 44.368786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668694, 32.928997, 44.366859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028808, 0.122802, 0.992013,
		-0.189227, -0.973810, 0.126044,
		0.981511, -0.191347, -0.004816,
		33.963146, 32.871593, 44.365414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382092, 32.493301, 44.993061>,  <33.276089, 33.005535, 44.368786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382092, 32.493301, 44.993061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739090, 32.644016, 44.893883>,  <33.953289, 32.734447, 44.834377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739090, 32.644016, 44.893883>,  <33.382092, 32.493301, 44.993061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739090, 32.644016, 44.893883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299112, -0.082970, 0.950604,
		0.337606, -0.922575, -0.186753,
		0.892499, 0.376790, -0.247942,
		34.006840, 32.757053, 44.819500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863537, 32.043983, 45.330593>,  <33.382092, 32.493301, 44.993061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863537, 32.043983, 45.330593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067558, 32.378700, 45.250965>,  <34.189972, 32.579529, 45.203190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067558, 32.378700, 45.250965>,  <33.863537, 32.043983, 45.330593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067558, 32.378700, 45.250965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252290, 0.075710, 0.964685,
		0.822311, -0.542264, -0.172498,
		0.510054, 0.836790, -0.199065,
		34.220573, 32.629738, 45.191246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602737, 31.957573, 45.686501>,  <33.863537, 32.043983, 45.330593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602737, 31.957573, 45.686501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503773, 32.340168, 45.624630>,  <34.444393, 32.569725, 45.587509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503773, 32.340168, 45.624630>,  <34.602737, 31.957573, 45.686501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503773, 32.340168, 45.624630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402808, 0.246726, 0.881404,
		0.881212, 0.155761, -0.446322,
		-0.247407, 0.956486, -0.154676,
		34.429550, 32.627113, 45.578228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237640, 32.516872, 45.821724>,  <34.602737, 31.957573, 45.686501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237640, 32.516872, 45.821724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881611, 32.683495, 45.895748>,  <34.667992, 32.783466, 45.940163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881611, 32.683495, 45.895748>,  <35.237640, 32.516872, 45.821724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881611, 32.683495, 45.895748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331477, 0.312866, 0.890078,
		0.312866, 0.853580, -0.416552,
		-0.890078, 0.416552, 0.185057,
		34.614586, 32.808460, 45.951263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391323, 33.149788, 46.080532>,  <35.237640, 32.516872, 45.821724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391323, 33.149788, 46.080532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011063, 33.107227, 46.197105>,  <34.782906, 33.081692, 46.267052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011063, 33.107227, 46.197105>,  <35.391323, 33.149788, 46.080532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011063, 33.107227, 46.197105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264066, 0.215623, 0.940094,
		-0.162871, 0.970662, -0.176885,
		-0.950653, -0.106405, 0.291438,
		34.725868, 33.075306, 46.284538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245380, 33.702721, 46.542572>,  <35.391323, 33.149788, 46.080532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245380, 33.702721, 46.542572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950115, 33.448704, 46.633640>,  <34.772957, 33.296295, 46.688282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950115, 33.448704, 46.633640>,  <35.245380, 33.702721, 46.542572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950115, 33.448704, 46.633640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078662, 0.254162, 0.963957,
		-0.670018, 0.729469, -0.137660,
		-0.738165, -0.635041, 0.227675,
		34.728664, 33.258190, 46.701942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085960, 33.988792, 47.160938>,  <35.245380, 33.702721, 46.542572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085960, 33.988792, 47.160938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871830, 33.651104, 47.171612>,  <34.743351, 33.448490, 47.178017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871830, 33.651104, 47.171612>,  <35.085960, 33.988792, 47.160938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871830, 33.651104, 47.171612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001072, 0.032274, 0.999479,
		-0.844647, 0.535016, -0.018182,
		-0.535324, -0.844226, 0.026687,
		34.711231, 33.397835, 47.179619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514473, 34.079163, 47.537796>,  <35.085960, 33.988792, 47.160938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514473, 34.079163, 47.537796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585239, 33.685749, 47.552608>,  <34.627701, 33.449703, 47.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585239, 33.685749, 47.552608>,  <34.514473, 34.079163, 47.537796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585239, 33.685749, 47.552608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040120, 0.030388, 0.998733,
		-0.983408, -0.178176, -0.034083,
		0.176915, -0.983529, 0.037032,
		34.638313, 33.390690, 47.563717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033592, 33.796383, 48.031273>,  <34.514473, 34.079163, 47.537796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033592, 33.796383, 48.031273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317966, 33.516636, 48.001713>,  <34.488590, 33.348789, 47.983978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317966, 33.516636, 48.001713>,  <34.033592, 33.796383, 48.031273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317966, 33.516636, 48.001713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035765, -0.140903, 0.989377,
		-0.702349, -0.700738, -0.125185,
		0.710933, -0.699365, -0.073901,
		34.531246, 33.306828, 47.979542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813911, 33.238953, 48.411026>,  <34.033592, 33.796383, 48.031273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813911, 33.238953, 48.411026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201122, 33.141476, 48.387264>,  <34.433449, 33.082989, 48.373009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201122, 33.141476, 48.387264>,  <33.813911, 33.238953, 48.411026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201122, 33.141476, 48.387264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016162, -0.175724, 0.984307,
		-0.250310, -0.953800, -0.166167,
		0.968031, -0.243696, -0.059401,
		34.491531, 33.068367, 48.369446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933224, 32.491562, 48.585964>,  <33.813911, 33.238953, 48.411026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933224, 32.491562, 48.585964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279232, 32.683239, 48.645443>,  <34.486839, 32.798244, 48.681129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279232, 32.683239, 48.645443>,  <33.933224, 32.491562, 48.585964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279232, 32.683239, 48.645443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070523, -0.177299, 0.981627,
		0.496751, -0.859617, -0.119573,
		0.865023, 0.479191, 0.148696,
		34.538738, 32.826996, 48.690052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313660, 32.143063, 49.189571>,  <33.933224, 32.491562, 48.585964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313660, 32.143063, 49.189571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484356, 32.503773, 49.162144>,  <34.586773, 32.720200, 49.145687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484356, 32.503773, 49.162144>,  <34.313660, 32.143063, 49.189571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484356, 32.503773, 49.162144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267342, -0.053351, 0.962124,
		0.863957, -0.428908, -0.263848,
		0.426740, 0.901771, -0.068572,
		34.612377, 32.774303, 49.141571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021000, 32.080395, 49.387093>,  <34.313660, 32.143063, 49.189571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021000, 32.080395, 49.387093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934811, 32.463989, 49.460766>,  <34.883095, 32.694145, 49.504971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934811, 32.463989, 49.460766>,  <35.021000, 32.080395, 49.387093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934811, 32.463989, 49.460766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416414, -0.080367, 0.905616,
		0.883271, 0.271837, -0.382016,
		-0.215478, 0.958982, 0.184183,
		34.870167, 32.751682, 49.516022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522488, 32.279819, 49.859417>,  <35.021000, 32.080395, 49.387093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522488, 32.279819, 49.859417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285339, 32.601650, 49.873039>,  <35.143051, 32.794750, 49.881214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285339, 32.601650, 49.873039>,  <35.522488, 32.279819, 49.859417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285339, 32.601650, 49.873039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255734, 0.147999, 0.955351,
		0.763613, 0.575110, -0.293502,
		-0.592870, 0.804578, 0.034060,
		35.107479, 32.843025, 49.883259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979267, 32.806690, 50.230358>,  <35.522488, 32.279819, 49.859417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979267, 32.806690, 50.230358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594181, 32.912510, 50.252968>,  <35.363129, 32.976002, 50.266533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594181, 32.912510, 50.252968>,  <35.979267, 32.806690, 50.230358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594181, 32.912510, 50.252968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152889, 0.359722, 0.920448,
		0.223174, 0.894769, -0.386757,
		-0.962714, 0.264551, 0.056520,
		35.305367, 32.991875, 50.269924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684719, 33.156418, 50.272057>,  <35.979267, 32.806690, 50.230358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684719, 33.156418, 50.272057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083855, 33.177006, 50.255711>,  <37.323338, 33.189358, 50.245903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083855, 33.177006, 50.255711>,  <36.684719, 33.156418, 50.272057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083855, 33.177006, 50.255711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013627, -0.446269, -0.894795,
		-0.064297, 0.893417, -0.444602,
		0.997838, 0.051474, -0.040868,
		37.383205, 33.192448, 50.243450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953949, 33.538662, 49.619045>,  <36.684719, 33.156418, 50.272057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953949, 33.538662, 49.619045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223679, 33.277054, 49.756187>,  <37.385517, 33.120090, 49.838474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223679, 33.277054, 49.756187>,  <36.953949, 33.538662, 49.619045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223679, 33.277054, 49.756187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118774, -0.362194, -0.924504,
		0.728825, 0.664134, -0.166554,
		0.674320, -0.654019, 0.342858,
		37.425976, 33.080849, 49.859043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557686, 33.704044, 49.239014>,  <36.953949, 33.538662, 49.619045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557686, 33.704044, 49.239014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601273, 33.331917, 49.379089>,  <37.627422, 33.108639, 49.463135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601273, 33.331917, 49.379089>,  <37.557686, 33.704044, 49.239014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601273, 33.331917, 49.379089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129878, -0.335941, -0.932886,
		0.985524, 0.147133, 0.084222,
		0.108965, -0.930320, 0.350187,
		37.633961, 33.052822, 49.484146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173077, 33.448132, 49.081951>,  <37.557686, 33.704044, 49.239014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173077, 33.448132, 49.081951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956799, 33.118416, 49.149124>,  <37.827030, 32.920586, 49.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956799, 33.118416, 49.149124>,  <38.173077, 33.448132, 49.081951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956799, 33.118416, 49.149124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099060, -0.260634, -0.960342,
		0.835366, -0.502617, 0.222577,
		-0.540695, -0.824285, 0.167936,
		37.794590, 32.871132, 49.199505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591831, 32.928444, 48.809513>,  <38.173077, 33.448132, 49.081951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591831, 32.928444, 48.809513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235451, 32.746975, 48.817432>,  <38.021622, 32.638092, 48.822182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235451, 32.746975, 48.817432>,  <38.591831, 32.928444, 48.809513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235451, 32.746975, 48.817432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128446, -0.293579, -0.947266,
		0.435561, -0.841422, 0.319837,
		-0.890948, -0.453674, 0.019794,
		37.968166, 32.610874, 48.823372>
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
