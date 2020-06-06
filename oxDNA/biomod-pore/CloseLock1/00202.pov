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
	<24.067091, 35.212532, 35.053410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217325, 35.014332, 34.740128>,  <24.307467, 34.895412, 34.552158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217325, 35.014332, 34.740128>,  <24.067091, 35.212532, 35.053410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.217325, 35.014332, 34.740128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781225, 0.623925, -0.020099,
		0.498621, -0.604312, 0.621438,
		0.375585, -0.495504, -0.783206,
		24.330000, 34.865681, 34.505165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773237, 34.807266, 35.135994>,  <24.067091, 35.212532, 35.053410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773237, 34.807266, 35.135994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743437, 34.944595, 34.761490>,  <24.725557, 35.026993, 34.536789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743437, 34.944595, 34.761490>,  <24.773237, 34.807266, 35.135994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743437, 34.944595, 34.761490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875173, 0.472575, 0.103655,
		0.478039, -0.811664, -0.335678,
		-0.074500, 0.343327, -0.936256,
		24.721087, 35.047592, 34.480614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319235, 34.646370, 34.784740>,  <24.773237, 34.807266, 35.135994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319235, 34.646370, 34.784740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164089, 34.978245, 34.624149>,  <25.071001, 35.177368, 34.527794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164089, 34.978245, 34.624149>,  <25.319235, 34.646370, 34.784740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164089, 34.978245, 34.624149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836052, 0.500067, 0.225719,
		0.388042, -0.248110, -0.887618,
		-0.387866, 0.829683, -0.401480,
		25.047729, 35.227150, 34.503704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765423, 34.923580, 34.384281>,  <25.319235, 34.646370, 34.784740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765423, 34.923580, 34.384281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530027, 35.234089, 34.474689>,  <25.388790, 35.420395, 34.528934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530027, 35.234089, 34.474689>,  <25.765423, 34.923580, 34.384281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530027, 35.234089, 34.474689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806144, 0.542030, 0.237350,
		0.061740, 0.321880, -0.944765,
		-0.588490, 0.776271, 0.226017,
		25.353481, 35.466969, 34.542496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108236, 35.542744, 34.071239>,  <25.765423, 34.923580, 34.384281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108236, 35.542744, 34.071239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883905, 35.666260, 34.378517>,  <25.749306, 35.740372, 34.562881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883905, 35.666260, 34.378517>,  <26.108236, 35.542744, 34.071239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883905, 35.666260, 34.378517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744624, 0.593752, 0.304950,
		-0.361947, 0.743037, -0.562930,
		-0.560829, 0.308795, 0.768190,
		25.715656, 35.758900, 34.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594025, 35.461109, 34.667187>,  <26.108236, 35.542744, 34.071239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594025, 35.461109, 34.667187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854731, 35.707233, 34.844543>,  <27.011154, 35.854908, 34.950958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854731, 35.707233, 34.844543>,  <26.594025, 35.461109, 34.667187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854731, 35.707233, 34.844543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703945, 0.708367, 0.051744,
		-0.282249, -0.345852, 0.894831,
		0.651764, 0.615307, 0.443397,
		27.050261, 35.891827, 34.977562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898960, 35.589203, 35.359985>,  <26.594025, 35.461109, 34.667187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898960, 35.589203, 35.359985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824289, 35.906021, 35.127499>,  <26.779488, 36.096111, 34.988007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824289, 35.906021, 35.127499>,  <26.898960, 35.589203, 35.359985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824289, 35.906021, 35.127499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326389, -0.608014, -0.723733,
		-0.926619, 0.054601, 0.372016,
		-0.186675, 0.792047, -0.581218,
		26.768286, 36.143635, 34.953133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625704, 35.714489, 35.171219>,  <26.898960, 35.589203, 35.359985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625704, 35.714489, 35.171219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968006, 35.692608, 35.377010>,  <28.173388, 35.679478, 35.500484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968006, 35.692608, 35.377010>,  <27.625704, 35.714489, 35.171219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968006, 35.692608, 35.377010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079372, -0.996504, 0.026067,
		0.511258, -0.063142, -0.857105,
		0.855754, -0.054704, 0.514482,
		28.224733, 35.676197, 35.531357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865467, 35.128109, 34.937752>,  <27.625704, 35.714489, 35.171219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865467, 35.128109, 34.937752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102892, 35.195168, 35.252605>,  <28.245346, 35.235405, 35.441517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102892, 35.195168, 35.252605>,  <27.865467, 35.128109, 34.937752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102892, 35.195168, 35.252605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027808, -0.981750, 0.188133,
		0.804309, -0.089779, -0.587390,
		0.593560, 0.167651, 0.787134,
		28.280960, 35.245464, 35.488747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361702, 34.666275, 34.835522>,  <27.865467, 35.128109, 34.937752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361702, 34.666275, 34.835522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383478, 34.754292, 35.225109>,  <28.396544, 34.807102, 35.458862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383478, 34.754292, 35.225109>,  <28.361702, 34.666275, 34.835522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383478, 34.754292, 35.225109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161149, -0.964566, 0.208910,
		0.985427, 0.145580, -0.087972,
		0.054441, 0.220042, 0.973970,
		28.399811, 34.820305, 35.517300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014122, 34.323086, 35.145496>,  <28.361702, 34.666275, 34.835522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014122, 34.323086, 35.145496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770241, 34.421101, 35.447018>,  <28.623913, 34.479912, 35.627930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770241, 34.421101, 35.447018>,  <29.014122, 34.323086, 35.145496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770241, 34.421101, 35.447018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033921, -0.942077, 0.333677,
		0.791905, 0.229013, 0.566074,
		-0.609702, 0.245039, 0.753804,
		28.587330, 34.494614, 35.673161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336845, 34.006828, 35.752865>,  <29.014122, 34.323086, 35.145496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336845, 34.006828, 35.752865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982252, 34.078838, 35.923389>,  <28.769497, 34.122044, 36.025703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982252, 34.078838, 35.923389>,  <29.336845, 34.006828, 35.752865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982252, 34.078838, 35.923389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117211, -0.803836, 0.583189,
		0.447675, 0.566954, 0.691484,
		-0.886481, 0.180029, 0.426311,
		28.716309, 34.132847, 36.051281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410692, 33.685421, 36.418777>,  <29.336845, 34.006828, 35.752865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410692, 33.685421, 36.418777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018854, 33.722141, 36.347260>,  <28.783751, 33.744171, 36.304348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018854, 33.722141, 36.347260>,  <29.410692, 33.685421, 36.418777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018854, 33.722141, 36.347260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182995, -0.775239, 0.604581,
		-0.083110, 0.624963, 0.776218,
		-0.979595, 0.091797, -0.178795,
		28.724976, 33.749680, 36.293621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079805, 33.789173, 37.010082>,  <29.410692, 33.685421, 36.418777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079805, 33.789173, 37.010082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797434, 33.627182, 36.777649>,  <28.628012, 33.529987, 36.638187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797434, 33.627182, 36.777649>,  <29.079805, 33.789173, 37.010082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797434, 33.627182, 36.777649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093773, -0.759746, 0.643422,
		-0.702049, 0.508699, 0.498349,
		-0.705927, -0.404982, -0.581082,
		28.585655, 33.505688, 36.603325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634218, 33.349358, 37.466312>,  <29.079805, 33.789173, 37.010082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634218, 33.349358, 37.466312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559536, 33.200607, 37.102585>,  <28.514727, 33.111359, 36.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559536, 33.200607, 37.102585>,  <28.634218, 33.349358, 37.466312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559536, 33.200607, 37.102585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029225, -0.923077, 0.383502,
		-0.981981, 0.098177, 0.161475,
		-0.186705, -0.371872, -0.909314,
		28.503525, 33.089046, 36.829792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022884, 32.877636, 37.559689>,  <28.634218, 33.349358, 37.466312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022884, 32.877636, 37.559689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183912, 32.762348, 37.212158>,  <28.280529, 32.693176, 37.003639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183912, 32.762348, 37.212158>,  <28.022884, 32.877636, 37.559689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183912, 32.762348, 37.212158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129035, -0.957528, 0.257858,
		-0.906248, 0.008303, -0.422665,
		0.402572, -0.288222, -0.868829,
		28.304684, 32.675880, 36.951508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617706, 32.295815, 37.422958>,  <28.022884, 32.877636, 37.559689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617706, 32.295815, 37.422958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937901, 32.258400, 37.186157>,  <28.130018, 32.235950, 37.044075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937901, 32.258400, 37.186157>,  <27.617706, 32.295815, 37.422958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937901, 32.258400, 37.186157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100496, -0.994710, 0.021279,
		-0.590864, 0.042460, -0.805653,
		0.800487, -0.093538, -0.592005,
		28.178047, 32.230339, 37.008556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411615, 31.664877, 36.989582>,  <27.617706, 32.295815, 37.422958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411615, 31.664877, 36.989582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807516, 31.674322, 36.933247>,  <28.045055, 31.679989, 36.899445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807516, 31.674322, 36.933247>,  <27.411615, 31.664877, 36.989582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807516, 31.674322, 36.933247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021902, -0.999667, -0.013678,
		-0.141118, 0.010453, -0.989937,
		0.989750, 0.023612, -0.140842,
		28.104441, 31.681406, 36.890995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557224, 31.199821, 36.504692>,  <27.411615, 31.664877, 36.989582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557224, 31.199821, 36.504692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902168, 31.236444, 36.703873>,  <28.109135, 31.258419, 36.823380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902168, 31.236444, 36.703873>,  <27.557224, 31.199821, 36.504692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902168, 31.236444, 36.703873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135080, -0.989469, -0.051998,
		0.487946, 0.112104, -0.865645,
		0.862358, 0.091559, 0.497951,
		28.160875, 31.263912, 36.853256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003119, 30.786316, 36.114857>,  <27.557224, 31.199821, 36.504692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003119, 30.786316, 36.114857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148308, 30.815748, 36.486412>,  <28.235420, 30.833408, 36.709347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148308, 30.815748, 36.486412>,  <28.003119, 30.786316, 36.114857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148308, 30.815748, 36.486412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421548, -0.901996, -0.093273,
		0.830993, 0.425427, -0.358417,
		0.362972, 0.073581, 0.928890,
		28.257200, 30.837822, 36.765079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643858, 30.505499, 36.023724>,  <28.003119, 30.786316, 36.114857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643858, 30.505499, 36.023724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605186, 30.471844, 36.420425>,  <28.581984, 30.451651, 36.658447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605186, 30.471844, 36.420425>,  <28.643858, 30.505499, 36.023724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605186, 30.471844, 36.420425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330932, -0.942449, -0.047692,
		0.938689, 0.323592, 0.118959,
		-0.096680, -0.084135, 0.991753,
		28.576181, 30.446604, 36.717953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218103, 30.115234, 36.338989>,  <28.643858, 30.505499, 36.023724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218103, 30.115234, 36.338989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938046, 30.098406, 36.624096>,  <28.770012, 30.088308, 36.795158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938046, 30.098406, 36.624096>,  <29.218103, 30.115234, 36.338989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938046, 30.098406, 36.624096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297102, -0.924902, 0.237247,
		0.649254, 0.377870, 0.660064,
		-0.700143, -0.042073, 0.712762,
		28.728003, 30.085785, 36.837925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601957, 29.868885, 36.958553>,  <29.218103, 30.115234, 36.338989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601957, 29.868885, 36.958553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211700, 29.791704, 37.000309>,  <28.977547, 29.745396, 37.025360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211700, 29.791704, 37.000309>,  <29.601957, 29.868885, 36.958553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211700, 29.791704, 37.000309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212681, -0.948586, 0.234417,
		0.053787, 0.250907, 0.966516,
		-0.975640, -0.192951, 0.104385,
		28.919008, 29.733818, 37.031624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565203, 29.403912, 37.546631>,  <29.601957, 29.868885, 36.958553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565203, 29.403912, 37.546631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218449, 29.352873, 37.353870>,  <29.010397, 29.322250, 37.238213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218449, 29.352873, 37.353870>,  <29.565203, 29.403912, 37.546631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218449, 29.352873, 37.353870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001575, -0.965982, 0.258604,
		-0.498507, 0.224938, 0.837194,
		-0.866885, -0.127597, -0.481903,
		28.958384, 29.314594, 37.209301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196802, 28.866175, 37.912052>,  <29.565203, 29.403912, 37.546631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196802, 28.866175, 37.912052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041824, 28.881439, 37.543610>,  <28.948837, 28.890598, 37.322544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041824, 28.881439, 37.543610>,  <29.196802, 28.866175, 37.912052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041824, 28.881439, 37.543610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192969, -0.980367, 0.040553,
		-0.901472, 0.193457, 0.387199,
		-0.387442, 0.038160, -0.921104,
		28.925592, 28.892887, 37.267277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577248, 28.543407, 37.938530>,  <29.196802, 28.866175, 37.912052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577248, 28.543407, 37.938530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683632, 28.494085, 37.556103>,  <28.747463, 28.464491, 37.326649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683632, 28.494085, 37.556103>,  <28.577248, 28.543407, 37.938530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683632, 28.494085, 37.556103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001621, -0.991727, 0.128357,
		-0.963982, -0.035687, -0.263562,
		0.265962, -0.123306, -0.956065,
		28.763420, 28.457094, 37.269283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200073, 28.426405, 37.318287>,  <28.577248, 28.543407, 37.938530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200073, 28.426405, 37.318287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992590, 28.744856, 37.442947>,  <27.868101, 28.935926, 37.517746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992590, 28.744856, 37.442947>,  <28.200073, 28.426405, 37.318287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992590, 28.744856, 37.442947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427363, 0.074274, -0.901024,
		-0.740476, -0.600556, 0.301708,
		-0.518706, 0.796126, 0.311653,
		27.836979, 28.983694, 37.536442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579062, 28.272905, 36.823593>,  <28.200073, 28.426405, 37.318287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579062, 28.272905, 36.823593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574543, 27.882923, 36.734749>,  <27.571831, 27.648933, 36.681442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574543, 27.882923, 36.734749>,  <27.579062, 28.272905, 36.823593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574543, 27.882923, 36.734749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702490, -0.150337, 0.695634,
		-0.711604, 0.163891, -0.683198,
		-0.011299, -0.974956, -0.222112,
		27.571154, 27.590437, 36.668114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856070, 28.036572, 36.617771>,  <27.579062, 28.272905, 36.823593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856070, 28.036572, 36.617771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082563, 27.749023, 36.779072>,  <27.218460, 27.576494, 36.875851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082563, 27.749023, 36.779072>,  <26.856070, 28.036572, 36.617771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082563, 27.749023, 36.779072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784017, -0.318765, 0.532641,
		-0.254355, -0.617754, -0.744099,
		0.566234, -0.718866, 0.403250,
		27.252434, 27.533363, 36.900047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597107, 27.428833, 36.370419>,  <26.856070, 28.036572, 36.617771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597107, 27.428833, 36.370419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738295, 27.467609, 36.742657>,  <26.823008, 27.490875, 36.966000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738295, 27.467609, 36.742657>,  <26.597107, 27.428833, 36.370419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738295, 27.467609, 36.742657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835613, -0.414782, 0.360149,
		0.420908, -0.904742, -0.065401,
		0.352969, 0.096940, 0.930600,
		26.844185, 27.496691, 37.021835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697933, 27.260384, 35.644596>,  <26.597107, 27.428833, 36.370419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697933, 27.260384, 35.644596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781858, 26.900961, 35.490414>,  <26.832214, 26.685307, 35.397903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781858, 26.900961, 35.490414>,  <26.697933, 27.260384, 35.644596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781858, 26.900961, 35.490414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139696, 0.362636, -0.921401,
		0.967710, 0.247169, -0.049439,
		0.209814, -0.898556, -0.385455,
		26.844803, 26.631393, 35.374779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312895, 27.194494, 35.100491>,  <26.697933, 27.260384, 35.644596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312895, 27.194494, 35.100491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017906, 26.928801, 35.051620>,  <26.840912, 26.769384, 35.022297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017906, 26.928801, 35.051620>,  <27.312895, 27.194494, 35.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017906, 26.928801, 35.051620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087150, 0.272985, -0.958063,
		0.669731, -0.695897, -0.259207,
		-0.737472, -0.664234, -0.122179,
		26.796665, 26.729530, 35.014965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436319, 26.549530, 34.558830>,  <27.312895, 27.194494, 35.100491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436319, 26.549530, 34.558830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061148, 26.683519, 34.594795>,  <26.836044, 26.763914, 34.616375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061148, 26.683519, 34.594795>,  <27.436319, 26.549530, 34.558830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061148, 26.683519, 34.594795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023862, 0.196293, -0.980255,
		-0.346010, -0.921554, -0.176115,
		-0.937928, 0.334975, 0.089909,
		26.779770, 26.784012, 34.621769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632822, 26.910025, 33.897049>,  <27.436319, 26.549530, 34.558830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632822, 26.910025, 33.897049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778231, 27.061520, 33.556599>,  <27.865475, 27.152416, 33.352329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778231, 27.061520, 33.556599>,  <27.632822, 26.910025, 33.897049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778231, 27.061520, 33.556599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251334, 0.839877, 0.481079,
		0.897043, -0.388797, 0.210121,
		0.363518, 0.378738, -0.851124,
		27.887287, 27.175140, 33.301262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166267, 27.294750, 33.932831>,  <27.632822, 26.910025, 33.897049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166267, 27.294750, 33.932831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067139, 27.430687, 33.569935>,  <28.007662, 27.512249, 33.352196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067139, 27.430687, 33.569935>,  <28.166267, 27.294750, 33.932831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067139, 27.430687, 33.569935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247743, 0.927550, 0.279775,
		0.936593, -0.155428, -0.314063,
		-0.247824, 0.339843, -0.907243,
		27.992792, 27.532640, 33.297760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737259, 27.544281, 33.451130>,  <28.166267, 27.294750, 33.932831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737259, 27.544281, 33.451130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389296, 27.721701, 33.364853>,  <28.180517, 27.828154, 33.313087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389296, 27.721701, 33.364853>,  <28.737259, 27.544281, 33.451130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389296, 27.721701, 33.364853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427819, 0.896194, 0.117505,
		0.245418, 0.009944, -0.969366,
		-0.869909, 0.443551, -0.215688,
		28.128323, 27.854767, 33.300148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925663, 28.057848, 32.936436>,  <28.737259, 27.544281, 33.451130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925663, 28.057848, 32.936436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604149, 28.169523, 33.146572>,  <28.411240, 28.236528, 33.272655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604149, 28.169523, 33.146572>,  <28.925663, 28.057848, 32.936436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604149, 28.169523, 33.146572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370490, 0.925816, 0.074843,
		-0.465473, 0.254791, -0.847594,
		-0.803786, 0.279188, 0.525340,
		28.363012, 28.253279, 33.304173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767439, 28.693676, 32.648438>,  <28.925663, 28.057848, 32.936436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767439, 28.693676, 32.648438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527300, 28.705095, 32.968128>,  <28.383217, 28.711946, 33.159943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527300, 28.705095, 32.968128>,  <28.767439, 28.693676, 32.648438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527300, 28.705095, 32.968128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213055, 0.968956, 0.125426,
		-0.770837, 0.245579, -0.587794,
		-0.600348, 0.028549, 0.799229,
		28.347195, 28.713659, 33.207897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239100, 29.180637, 32.463303>,  <28.767439, 28.693676, 32.648438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239100, 29.180637, 32.463303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273386, 29.177444, 32.861816>,  <28.293959, 29.175529, 33.100925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273386, 29.177444, 32.861816>,  <28.239100, 29.180637, 32.463303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273386, 29.177444, 32.861816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013220, 0.999871, 0.009147,
		-0.996232, -0.013955, 0.085601,
		0.085717, -0.007981, 0.996288,
		28.299101, 29.175051, 33.160702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714560, 29.686899, 32.751308>,  <28.239100, 29.180637, 32.463303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714560, 29.686899, 32.751308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014015, 29.618908, 33.007637>,  <28.193689, 29.578114, 33.161434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014015, 29.618908, 33.007637>,  <27.714560, 29.686899, 32.751308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014015, 29.618908, 33.007637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134966, 0.985408, 0.103703,
		-0.649094, 0.008853, 0.760656,
		0.748639, -0.169976, 0.640818,
		28.238607, 29.567915, 33.199883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613546, 30.162859, 33.240429>,  <27.714560, 29.686899, 32.751308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613546, 30.162859, 33.240429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992571, 30.051403, 33.303024>,  <28.219986, 29.984529, 33.340580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992571, 30.051403, 33.303024>,  <27.613546, 30.162859, 33.240429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992571, 30.051403, 33.303024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259676, 0.956746, 0.131169,
		-0.186269, -0.083654, 0.978931,
		0.947561, -0.278638, 0.156489,
		28.276840, 29.967812, 33.349972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873117, 30.475895, 33.952469>,  <27.613546, 30.162859, 33.240429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873117, 30.475895, 33.952469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205553, 30.378510, 33.752464>,  <28.405014, 30.320078, 33.632462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205553, 30.378510, 33.752464>,  <27.873117, 30.475895, 33.952469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205553, 30.378510, 33.752464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343490, 0.931813, 0.117214,
		0.437383, -0.269165, 0.858048,
		0.831090, -0.243464, -0.500015,
		28.454880, 30.305470, 33.602459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457266, 30.657003, 34.389328>,  <27.873117, 30.475895, 33.952469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457266, 30.657003, 34.389328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599146, 30.641260, 34.015667>,  <28.684275, 30.631815, 33.791470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599146, 30.641260, 34.015667>,  <28.457266, 30.657003, 34.389328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599146, 30.641260, 34.015667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379877, 0.918999, 0.105523,
		0.854330, -0.392292, 0.340921,
		0.354702, -0.039356, -0.934151,
		28.705557, 30.629454, 33.735420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148382, 30.677624, 34.444527>,  <28.457266, 30.657003, 34.389328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148382, 30.677624, 34.444527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097311, 30.774284, 34.059757>,  <29.066668, 30.832281, 33.828896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097311, 30.774284, 34.059757>,  <29.148382, 30.677624, 34.444527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097311, 30.774284, 34.059757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613264, 0.781473, 0.114921,
		0.779491, -0.575242, -0.247974,
		-0.127678, 0.241653, -0.961926,
		29.059008, 30.846781, 33.771179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828953, 30.735411, 34.193707>,  <29.148382, 30.677624, 34.444527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828953, 30.735411, 34.193707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591532, 30.930311, 33.937496>,  <29.449080, 31.047253, 33.783768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591532, 30.930311, 33.937496>,  <29.828953, 30.735411, 34.193707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591532, 30.930311, 33.937496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561043, 0.821133, 0.104741,
		0.576995, -0.297195, -0.760758,
		-0.593555, 0.487253, -0.640529,
		29.413465, 31.076487, 33.745338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233973, 31.035212, 33.689236>,  <29.828953, 30.735411, 34.193707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233973, 31.035212, 33.689236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902739, 31.257322, 33.658417>,  <29.703999, 31.390589, 33.639923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902739, 31.257322, 33.658417>,  <30.233973, 31.035212, 33.689236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902739, 31.257322, 33.658417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558975, 0.828306, -0.038142,
		0.042642, -0.074655, -0.996297,
		-0.828087, 0.555279, -0.077051,
		29.654312, 31.423906, 33.635300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446150, 31.595966, 33.304123>,  <30.233973, 31.035212, 33.689236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446150, 31.595966, 33.304123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116407, 31.746449, 33.473312>,  <29.918562, 31.836739, 33.574825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116407, 31.746449, 33.473312>,  <30.446150, 31.595966, 33.304123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116407, 31.746449, 33.473312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465161, 0.876006, 0.127431,
		-0.322586, 0.301799, -0.897137,
		-0.824356, 0.376205, 0.422973,
		29.869101, 31.859310, 33.600204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316992, 32.229187, 32.931671>,  <30.446150, 31.595966, 33.304123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316992, 32.229187, 32.931671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110044, 32.260231, 33.272564>,  <29.985876, 32.278858, 33.477100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110044, 32.260231, 33.272564>,  <30.316992, 32.229187, 32.931671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110044, 32.260231, 33.272564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420514, 0.890406, 0.174201,
		-0.745316, 0.448503, -0.493304,
		-0.517370, 0.077607, 0.852235,
		29.954834, 32.283512, 33.528236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128462, 32.950897, 32.896320>,  <30.316992, 32.229187, 32.931671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128462, 32.950897, 32.896320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058077, 32.850899, 33.277168>,  <30.015846, 32.790901, 33.505676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058077, 32.850899, 33.277168>,  <30.128462, 32.950897, 32.896320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058077, 32.850899, 33.277168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237975, 0.927725, 0.287567,
		-0.955199, 0.277183, -0.103754,
		-0.175964, -0.249993, 0.952124,
		30.005287, 32.775902, 33.562805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596647, 33.419525, 33.134663>,  <30.128462, 32.950897, 32.896320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596647, 33.419525, 33.134663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796026, 33.270390, 33.447723>,  <29.915653, 33.180908, 33.635559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796026, 33.270390, 33.447723>,  <29.596647, 33.419525, 33.134663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796026, 33.270390, 33.447723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229077, 0.927350, 0.295880,
		-0.836106, 0.031806, 0.547644,
		0.498447, -0.372840, 0.782650,
		29.945560, 33.158539, 33.682518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334690, 33.836525, 33.728771>,  <29.596647, 33.419525, 33.134663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334690, 33.836525, 33.728771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672096, 33.695400, 33.890759>,  <29.874540, 33.610725, 33.987949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672096, 33.695400, 33.890759>,  <29.334690, 33.836525, 33.728771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672096, 33.695400, 33.890759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180205, 0.896191, 0.405422,
		-0.505969, -0.269004, 0.819532,
		0.843518, -0.352815, 0.404969,
		29.925152, 33.589558, 34.012249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278223, 34.129238, 34.423393>,  <29.334690, 33.836525, 33.728771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278223, 34.129238, 34.423393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661079, 34.033253, 34.358524>,  <29.890793, 33.975662, 34.319603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661079, 34.033253, 34.358524>,  <29.278223, 34.129238, 34.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661079, 34.033253, 34.358524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281710, 0.901348, 0.328954,
		0.067234, -0.360540, 0.930317,
		0.957141, -0.239963, -0.162169,
		29.948221, 33.961266, 34.309875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680269, 34.487724, 34.970078>,  <29.278223, 34.129238, 34.423393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680269, 34.487724, 34.970078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948713, 34.413803, 34.682896>,  <30.109779, 34.369450, 34.510586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948713, 34.413803, 34.682896>,  <29.680269, 34.487724, 34.970078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948713, 34.413803, 34.682896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301085, 0.952911, 0.036161,
		0.677463, -0.240433, 0.695152,
		0.671113, -0.184802, -0.717953,
		30.150047, 34.358364, 34.467510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317434, 34.603565, 35.189159>,  <29.680269, 34.487724, 34.970078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317434, 34.603565, 35.189159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364796, 34.642139, 34.793850>,  <30.393213, 34.665283, 34.556664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364796, 34.642139, 34.793850>,  <30.317434, 34.603565, 35.189159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364796, 34.642139, 34.793850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563780, 0.812764, 0.146857,
		0.817394, -0.574556, 0.041864,
		0.118403, 0.096438, -0.988271,
		30.400316, 34.671070, 34.497368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988750, 34.846642, 35.055775>,  <30.317434, 34.603565, 35.189159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988750, 34.846642, 35.055775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823689, 34.958622, 34.709053>,  <30.724651, 35.025810, 34.501022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823689, 34.958622, 34.709053>,  <30.988750, 34.846642, 35.055775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823689, 34.958622, 34.709053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357606, 0.924989, 0.128503,
		0.837755, -0.256946, -0.481815,
		-0.412655, 0.279954, -0.866799,
		30.699892, 35.042606, 34.449013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471668, 35.198597, 34.557667>,  <30.988750, 34.846642, 35.055775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471668, 35.198597, 34.557667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122149, 35.351177, 34.437023>,  <30.912437, 35.442726, 34.364635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122149, 35.351177, 34.437023>,  <31.471668, 35.198597, 34.557667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122149, 35.351177, 34.437023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360484, 0.924388, 0.124734,
		0.326387, 0.000266, -0.945236,
		-0.873798, 0.381454, -0.301612,
		30.860008, 35.465614, 34.346539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700676, 35.644382, 34.138199>,  <31.471668, 35.198597, 34.557667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700676, 35.644382, 34.138199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328411, 35.767559, 34.217236>,  <31.105053, 35.841465, 34.264656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328411, 35.767559, 34.217236>,  <31.700676, 35.644382, 34.138199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328411, 35.767559, 34.217236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313270, 0.949653, -0.004506,
		-0.189028, 0.057705, -0.980275,
		-0.930661, 0.307943, 0.197588,
		31.049213, 35.859943, 34.276512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569134, 36.139778, 33.569572>,  <31.700676, 35.644382, 34.138199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569134, 36.139778, 33.569572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409933, 36.201252, 33.931339>,  <31.314413, 36.238136, 34.148399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409933, 36.201252, 33.931339>,  <31.569134, 36.139778, 33.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409933, 36.201252, 33.931339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523668, 0.847527, 0.086427,
		-0.753238, 0.508014, -0.417796,
		-0.398000, 0.153686, 0.904421,
		31.290533, 36.247356, 34.202667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080467, 35.630173, 33.386738>,  <31.569134, 36.139778, 33.569572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080467, 35.630173, 33.386738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447685, 35.671127, 33.233528>,  <32.668018, 35.695702, 33.141602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447685, 35.671127, 33.233528>,  <32.080467, 35.630173, 33.386738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447685, 35.671127, 33.233528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316336, 0.393206, 0.863319,
		0.239000, -0.913732, 0.328593,
		0.918047, 0.102388, -0.383023,
		32.723099, 35.701843, 33.118622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589214, 35.269569, 33.844856>,  <32.080467, 35.630173, 33.386738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589214, 35.269569, 33.844856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699635, 35.601295, 33.650520>,  <32.765888, 35.800331, 33.533920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699635, 35.601295, 33.650520>,  <32.589214, 35.269569, 33.844856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699635, 35.601295, 33.650520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200956, 0.444509, 0.872942,
		0.939900, -0.338608, -0.043949,
		0.276049, 0.829311, -0.485840,
		32.782448, 35.850090, 33.504768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396282, 35.504215, 33.880383>,  <32.589214, 35.269569, 33.844856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396282, 35.504215, 33.880383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111198, 35.783459, 33.852970>,  <32.940147, 35.951004, 33.836525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111198, 35.783459, 33.852970>,  <33.396282, 35.504215, 33.880383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111198, 35.783459, 33.852970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211966, 0.307460, 0.927652,
		0.668668, 0.646620, -0.367104,
		-0.712708, 0.698105, -0.068527,
		32.897385, 35.992889, 33.832413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704002, 36.112679, 33.920071>,  <33.396282, 35.504215, 33.880383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704002, 36.112679, 33.920071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338112, 36.088394, 34.079861>,  <33.118576, 36.073822, 34.175735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338112, 36.088394, 34.079861>,  <33.704002, 36.112679, 33.920071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338112, 36.088394, 34.079861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359355, 0.329808, 0.872978,
		-0.184751, 0.942094, -0.279868,
		-0.914730, -0.060712, 0.399479,
		33.063694, 36.070179, 34.199703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334988, 36.781376, 34.257500>,  <33.704002, 36.112679, 33.920071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334988, 36.781376, 34.257500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276573, 36.423340, 34.426014>,  <33.241524, 36.208519, 34.527122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276573, 36.423340, 34.426014>,  <33.334988, 36.781376, 34.257500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276573, 36.423340, 34.426014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417811, 0.330207, 0.846403,
		-0.896721, 0.299625, 0.325757,
		-0.146036, -0.895091, 0.421290,
		33.232761, 36.154812, 34.552402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074947, 36.862526, 34.910378>,  <33.334988, 36.781376, 34.257500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074947, 36.862526, 34.910378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210926, 36.486423, 34.917912>,  <33.292515, 36.260761, 34.922432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210926, 36.486423, 34.917912>,  <33.074947, 36.862526, 34.910378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210926, 36.486423, 34.917912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371723, 0.152739, 0.915693,
		-0.863861, -0.304290, 0.401438,
		0.339951, -0.940254, 0.018833,
		33.312912, 36.204346, 34.923561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830963, 36.664684, 35.467957>,  <33.074947, 36.862526, 34.910378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830963, 36.664684, 35.467957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125359, 36.402576, 35.399910>,  <33.301994, 36.245312, 35.359081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125359, 36.402576, 35.399910>,  <32.830963, 36.664684, 35.467957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125359, 36.402576, 35.399910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220864, -0.005128, 0.975291,
		-0.639955, -0.755375, 0.140953,
		0.735987, -0.655273, -0.170117,
		33.346153, 36.205994, 35.348873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788414, 36.079510, 36.024296>,  <32.830963, 36.664684, 35.467957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788414, 36.079510, 36.024296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163898, 36.088284, 35.886688>,  <33.389187, 36.093548, 35.804123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163898, 36.088284, 35.886688>,  <32.788414, 36.079510, 36.024296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163898, 36.088284, 35.886688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343409, -0.146284, 0.927724,
		-0.029971, -0.988999, -0.144852,
		0.938708, 0.021939, -0.344015,
		33.445511, 36.094864, 35.783485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101433, 35.653214, 36.459354>,  <32.788414, 36.079510, 36.024296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101433, 35.653214, 36.459354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414585, 35.838966, 36.293728>,  <33.602474, 35.950417, 36.194351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414585, 35.838966, 36.293728>,  <33.101433, 35.653214, 36.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414585, 35.838966, 36.293728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417715, 0.100921, 0.902956,
		0.461104, -0.879867, -0.114970,
		0.782878, 0.464381, -0.414068,
		33.649448, 35.978279, 36.169506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775311, 35.285942, 36.689610>,  <33.101433, 35.653214, 36.459354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775311, 35.285942, 36.689610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885960, 35.647514, 36.559135>,  <33.952351, 35.864456, 36.480850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885960, 35.647514, 36.559135>,  <33.775311, 35.285942, 36.689610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885960, 35.647514, 36.559135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563789, 0.122216, 0.816826,
		0.778216, -0.409854, -0.475815,
		0.276627, 0.903926, -0.326182,
		33.968948, 35.918694, 36.461281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506435, 35.257309, 36.763824>,  <33.775311, 35.285942, 36.689610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506435, 35.257309, 36.763824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356186, 35.628017, 36.763317>,  <34.266037, 35.850441, 36.763012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356186, 35.628017, 36.763317>,  <34.506435, 35.257309, 36.763824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356186, 35.628017, 36.763317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502248, 0.204708, 0.840144,
		0.778880, 0.314941, -0.542363,
		-0.375622, 0.926772, -0.001264,
		34.243500, 35.906048, 36.762939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026920, 35.655422, 37.136715>,  <34.506435, 35.257309, 36.763824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026920, 35.655422, 37.136715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713764, 35.904278, 37.138638>,  <34.525871, 36.053593, 37.139790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713764, 35.904278, 37.138638>,  <35.026920, 35.655422, 37.136715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713764, 35.904278, 37.138638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283735, 0.350146, 0.892688,
		0.553696, 0.700240, -0.450649,
		-0.782889, 0.622143, 0.004808,
		34.478897, 36.090919, 37.140079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162037, 36.271202, 37.467396>,  <35.026920, 35.655422, 37.136715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162037, 36.271202, 37.467396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764633, 36.259850, 37.511448>,  <34.526192, 36.253036, 37.537880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764633, 36.259850, 37.511448>,  <35.162037, 36.271202, 37.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764633, 36.259850, 37.511448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097956, 0.278414, 0.955453,
		-0.057781, 0.960042, -0.273828,
		-0.993512, -0.028384, 0.110129,
		34.466579, 36.251335, 37.544487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935265, 36.947994, 37.874470>,  <35.162037, 36.271202, 37.467396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935265, 36.947994, 37.874470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635120, 36.693054, 37.944607>,  <34.455032, 36.540089, 37.986687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635120, 36.693054, 37.944607>,  <34.935265, 36.947994, 37.874470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635120, 36.693054, 37.944607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014159, 0.280689, 0.959694,
		-0.660877, 0.717635, -0.219642,
		-0.750361, -0.637350, 0.175339,
		34.410011, 36.501850, 37.997208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379234, 37.305191, 38.127293>,  <34.935265, 36.947994, 37.874470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379234, 37.305191, 38.127293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337139, 36.924732, 38.243393>,  <34.311882, 36.696457, 38.313053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337139, 36.924732, 38.243393>,  <34.379234, 37.305191, 38.127293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337139, 36.924732, 38.243393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052478, 0.296773, 0.953505,
		-0.993061, 0.085113, -0.081146,
		-0.105238, -0.951147, 0.290247,
		34.305569, 36.639389, 38.330467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940857, 37.339718, 38.655025>,  <34.379234, 37.305191, 38.127293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940857, 37.339718, 38.655025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072514, 36.963150, 38.684414>,  <34.151508, 36.737209, 38.702045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072514, 36.963150, 38.684414>,  <33.940857, 37.339718, 38.655025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072514, 36.963150, 38.684414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176302, 0.015168, 0.984219,
		-0.927676, -0.336899, -0.160982,
		0.329141, -0.941418, 0.073467,
		34.171257, 36.680725, 38.706455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426334, 36.962029, 38.892750>,  <33.940857, 37.339718, 38.655025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426334, 36.962029, 38.892750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740490, 36.732822, 38.986404>,  <33.928982, 36.595299, 39.042599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740490, 36.732822, 38.986404>,  <33.426334, 36.962029, 38.892750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740490, 36.732822, 38.986404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216963, 0.099425, 0.971103,
		-0.579736, -0.813491, -0.046236,
		0.785387, -0.573015, 0.234138,
		33.976105, 36.560917, 39.056644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179161, 36.669842, 39.494171>,  <33.426334, 36.962029, 38.892750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179161, 36.669842, 39.494171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575813, 36.619461, 39.505524>,  <33.813805, 36.589233, 39.512337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575813, 36.619461, 39.505524>,  <33.179161, 36.669842, 39.494171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575813, 36.619461, 39.505524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037299, -0.069018, 0.996918,
		-0.123610, -0.989632, -0.073139,
		0.991630, -0.125957, 0.028381,
		33.873302, 36.581676, 39.514038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276024, 36.096893, 39.901371>,  <33.179161, 36.669842, 39.494171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276024, 36.096893, 39.901371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652447, 36.230221, 39.924381>,  <33.878300, 36.310219, 39.938187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652447, 36.230221, 39.924381>,  <33.276024, 36.096893, 39.901371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652447, 36.230221, 39.924381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045354, -0.292881, 0.955073,
		0.335195, -0.896168, -0.290735,
		0.941056, 0.333321, 0.057527,
		33.934765, 36.330215, 39.941639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719139, 35.580021, 40.019600>,  <33.276024, 36.096893, 39.901371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719139, 35.580021, 40.019600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902771, 35.903511, 40.166683>,  <34.012951, 36.097603, 40.254932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902771, 35.903511, 40.166683>,  <33.719139, 35.580021, 40.019600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902771, 35.903511, 40.166683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103561, -0.459800, 0.881963,
		0.882336, -0.366815, -0.294839,
		0.459084, 0.808722, 0.367711,
		34.040497, 36.146126, 40.276997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297573, 35.248684, 40.400528>,  <33.719139, 35.580021, 40.019600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297573, 35.248684, 40.400528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240623, 35.619595, 40.539032>,  <34.206455, 35.842140, 40.622135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240623, 35.619595, 40.539032>,  <34.297573, 35.248684, 40.400528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240623, 35.619595, 40.539032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228165, -0.309658, 0.923067,
		0.963157, 0.210423, -0.167484,
		-0.142372, 0.927272, 0.346261,
		34.197910, 35.897778, 40.642910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723408, 35.241302, 40.837872>,  <34.297573, 35.248684, 40.400528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723408, 35.241302, 40.837872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512611, 35.568394, 40.930485>,  <34.386135, 35.764648, 40.986053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512611, 35.568394, 40.930485>,  <34.723408, 35.241302, 40.837872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512611, 35.568394, 40.930485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208659, -0.139599, 0.967974,
		0.823859, 0.558422, -0.097059,
		-0.526989, 0.817726, 0.231530,
		34.354515, 35.813713, 40.999943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074123, 35.556931, 41.282993>,  <34.723408, 35.241302, 40.837872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074123, 35.556931, 41.282993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713066, 35.719879, 41.338535>,  <34.496433, 35.817650, 41.371861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713066, 35.719879, 41.338535>,  <35.074123, 35.556931, 41.282993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713066, 35.719879, 41.338535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112946, -0.087110, 0.989775,
		0.415304, 0.909098, 0.032618,
		-0.902644, 0.407374, 0.138856,
		34.442272, 35.842091, 41.380192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156277, 36.136078, 41.749107>,  <35.074123, 35.556931, 41.282993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156277, 36.136078, 41.749107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771431, 36.031132, 41.778797>,  <34.540524, 35.968166, 41.796612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771431, 36.031132, 41.778797>,  <35.156277, 36.136078, 41.749107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771431, 36.031132, 41.778797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095852, -0.070600, 0.992889,
		-0.255255, 0.962384, 0.093073,
		-0.962111, -0.262361, 0.074225,
		34.482800, 35.952423, 41.801064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762135, 36.544434, 42.262180>,  <35.156277, 36.136078, 41.749107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762135, 36.544434, 42.262180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509594, 36.235043, 42.239815>,  <34.358070, 36.049408, 42.226395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509594, 36.235043, 42.239815>,  <34.762135, 36.544434, 42.262180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509594, 36.235043, 42.239815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189290, 0.083781, 0.978340,
		-0.752044, 0.628256, -0.199308,
		-0.631347, -0.773482, -0.055915,
		34.320190, 36.002998, 42.223042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176506, 36.743126, 42.568497>,  <34.762135, 36.544434, 42.262180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176506, 36.743126, 42.568497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188053, 36.343658, 42.585552>,  <34.194981, 36.103977, 42.595787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188053, 36.343658, 42.585552>,  <34.176506, 36.743126, 42.568497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188053, 36.343658, 42.585552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139131, 0.038231, 0.989536,
		-0.989853, -0.034495, -0.137843,
		0.028864, -0.998673, 0.042643,
		34.196712, 36.044056, 42.598347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673206, 36.577225, 42.959190>,  <34.176506, 36.743126, 42.568497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673206, 36.577225, 42.959190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916012, 36.259953, 42.978821>,  <34.061695, 36.069592, 42.990597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916012, 36.259953, 42.978821>,  <33.673206, 36.577225, 42.959190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916012, 36.259953, 42.978821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159117, -0.060808, 0.985385,
		-0.778600, -0.605949, -0.163119,
		0.607012, -0.793176, 0.049072,
		34.098114, 36.021999, 42.993542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183151, 36.021645, 43.262913>,  <33.673206, 36.577225, 42.959190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183151, 36.021645, 43.262913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571255, 35.949188, 43.327137>,  <33.804119, 35.905712, 43.365669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571255, 35.949188, 43.327137>,  <33.183151, 36.021645, 43.262913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571255, 35.949188, 43.327137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182258, -0.110217, 0.977054,
		-0.159301, -0.977259, -0.139956,
		0.970261, -0.181154, 0.160555,
		33.862335, 35.894844, 43.375305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236649, 35.472923, 43.825191>,  <33.183151, 36.021645, 43.262913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236649, 35.472923, 43.825191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607487, 35.622345, 43.812881>,  <33.829990, 35.711998, 43.805496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607487, 35.622345, 43.812881>,  <33.236649, 35.472923, 43.825191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607487, 35.622345, 43.812881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068705, -0.088638, 0.993692,
		0.368472, -0.923362, -0.107841,
		0.927096, 0.373557, -0.030779,
		33.885616, 35.734413, 43.803646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630791, 35.053547, 44.231453>,  <33.236649, 35.472923, 43.825191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630791, 35.053547, 44.231453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865940, 35.375751, 44.201630>,  <34.007030, 35.569073, 44.183735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865940, 35.375751, 44.201630>,  <33.630791, 35.053547, 44.231453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865940, 35.375751, 44.201630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132313, -0.004825, 0.991196,
		0.798056, -0.592566, -0.109416,
		0.587877, 0.805507, -0.074554,
		34.042305, 35.617405, 44.179264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124481, 34.985355, 44.691338>,  <33.630791, 35.053547, 44.231453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124481, 34.985355, 44.691338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176754, 35.375294, 44.619110>,  <34.208118, 35.609257, 44.575775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176754, 35.375294, 44.619110>,  <34.124481, 34.985355, 44.691338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176754, 35.375294, 44.619110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318177, 0.131259, 0.938901,
		0.938982, -0.180147, -0.293020,
		0.130679, 0.974842, -0.180569,
		34.215958, 35.667747, 44.564938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595814, 35.150150, 45.267719>,  <34.124481, 34.985355, 44.691338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595814, 35.150150, 45.267719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423603, 35.495495, 45.162449>,  <34.320278, 35.702702, 45.099289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423603, 35.495495, 45.162449>,  <34.595814, 35.150150, 45.267719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423603, 35.495495, 45.162449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075255, 0.256226, 0.963683,
		0.899435, 0.434697, -0.045340,
		-0.430528, 0.863358, -0.263171,
		34.294445, 35.754501, 45.083496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971680, 35.552471, 45.619560>,  <34.595814, 35.150150, 45.267719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971680, 35.552471, 45.619560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628582, 35.740955, 45.537350>,  <34.422726, 35.854046, 45.488026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628582, 35.740955, 45.537350>,  <34.971680, 35.552471, 45.619560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628582, 35.740955, 45.537350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048970, 0.323077, 0.945105,
		0.511744, 0.820720, -0.254041,
		-0.857741, 0.471212, -0.205524,
		34.371262, 35.882320, 45.475693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997765, 36.243031, 45.939419>,  <34.971680, 35.552471, 45.619560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997765, 36.243031, 45.939419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608372, 36.167133, 45.888309>,  <34.374737, 36.121597, 45.857643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608372, 36.167133, 45.888309>,  <34.997765, 36.243031, 45.939419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608372, 36.167133, 45.888309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163962, 0.189296, 0.968134,
		-0.159508, 0.963413, -0.215387,
		-0.973485, -0.189740, -0.127769,
		34.316326, 36.110210, 45.849979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650467, 36.814606, 46.290501>,  <34.997765, 36.243031, 45.939419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650467, 36.814606, 46.290501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375431, 36.524185, 46.287369>,  <34.210407, 36.349934, 46.285488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375431, 36.524185, 46.287369>,  <34.650467, 36.814606, 46.290501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375431, 36.524185, 46.287369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304121, 0.278189, 0.911110,
		-0.659336, 0.628855, -0.412089,
		-0.687594, -0.726053, -0.007828,
		34.169151, 36.306370, 46.285019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100273, 37.077534, 46.613007>,  <34.650467, 36.814606, 46.290501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100273, 37.077534, 46.613007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003601, 36.689426, 46.607891>,  <33.945599, 36.456562, 46.604820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003601, 36.689426, 46.607891>,  <34.100273, 37.077534, 46.613007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003601, 36.689426, 46.607891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502519, 0.113873, 0.857035,
		-0.830100, 0.213556, -0.515100,
		-0.241681, -0.970272, -0.012790,
		33.931095, 36.398346, 46.604053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462788, 37.062843, 46.833649>,  <34.100273, 37.077534, 46.613007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462788, 37.062843, 46.833649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614113, 36.699867, 46.906792>,  <33.704906, 36.482082, 46.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614113, 36.699867, 46.906792>,  <33.462788, 37.062843, 46.833649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614113, 36.699867, 46.906792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616966, -0.099910, 0.780623,
		-0.690097, -0.408136, -0.597655,
		0.378312, -0.907438, 0.182859,
		33.727608, 36.427635, 46.961651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033142, 36.789474, 47.315044>,  <33.462788, 37.062843, 46.833649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033142, 36.789474, 47.315044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306763, 36.498470, 47.336208>,  <33.470936, 36.323868, 47.348907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306763, 36.498470, 47.336208>,  <33.033142, 36.789474, 47.315044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306763, 36.498470, 47.336208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326564, -0.240577, 0.914045,
		-0.652252, -0.642531, -0.402147,
		0.684050, -0.727514, 0.052910,
		33.511978, 36.280216, 47.352081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717068, 36.230400, 47.523514>,  <33.033142, 36.789474, 47.315044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717068, 36.230400, 47.523514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099991, 36.176910, 47.626022>,  <33.329746, 36.144817, 47.687527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099991, 36.176910, 47.626022>,  <32.717068, 36.230400, 47.523514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099991, 36.176910, 47.626022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283396, -0.259470, 0.923235,
		-0.056958, -0.956449, -0.286288,
		0.957310, -0.133718, 0.256275,
		33.387184, 36.136795, 47.702904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765129, 35.616207, 47.968307>,  <32.717068, 36.230400, 47.523514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765129, 35.616207, 47.968307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090740, 35.833179, 48.051380>,  <33.286106, 35.963364, 48.101223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090740, 35.833179, 48.051380>,  <32.765129, 35.616207, 47.968307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090740, 35.833179, 48.051380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169420, -0.120261, 0.978179,
		0.555569, -0.831449, -0.005997,
		0.814027, 0.542430, 0.207678,
		33.334949, 35.995907, 48.113682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092049, 35.132683, 48.408703>,  <32.765129, 35.616207, 47.968307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092049, 35.132683, 48.408703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257946, 35.492077, 48.466259>,  <33.357487, 35.707714, 48.500793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257946, 35.492077, 48.466259>,  <33.092049, 35.132683, 48.408703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257946, 35.492077, 48.466259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032920, -0.172843, 0.984399,
		0.909341, -0.403540, -0.101264,
		0.414747, 0.898488, 0.143888,
		33.382370, 35.761623, 48.509426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479378, 35.093319, 49.013824>,  <33.092049, 35.132683, 48.408703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479378, 35.093319, 49.013824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416077, 35.484833, 48.961773>,  <33.378098, 35.719742, 48.930542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416077, 35.484833, 48.961773>,  <33.479378, 35.093319, 49.013824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416077, 35.484833, 48.961773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150815, 0.106288, 0.982831,
		0.975813, 0.175159, 0.130795,
		-0.158250, 0.978786, -0.130133,
		33.368603, 35.778469, 48.922733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881329, 35.386948, 49.553509>,  <33.479378, 35.093319, 49.013824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881329, 35.386948, 49.553509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649715, 35.695011, 49.446495>,  <33.510746, 35.879848, 49.382286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649715, 35.695011, 49.446495>,  <33.881329, 35.386948, 49.553509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649715, 35.695011, 49.446495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101844, 0.257248, 0.960964,
		0.808918, 0.583677, -0.070519,
		-0.579033, 0.770159, -0.267536,
		33.476006, 35.926060, 49.366234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236584, 35.985622, 49.854431>,  <33.881329, 35.386948, 49.553509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236584, 35.985622, 49.854431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850037, 36.079353, 49.812073>,  <33.618107, 36.135593, 49.786655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850037, 36.079353, 49.812073>,  <34.236584, 35.985622, 49.854431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850037, 36.079353, 49.812073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055163, 0.213330, 0.975422,
		0.251161, 0.948462, -0.193230,
		-0.966372, 0.234329, -0.105900,
		33.560123, 36.149651, 49.780304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058914, 36.627831, 50.271172>,  <34.236584, 35.985622, 49.854431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058914, 36.627831, 50.271172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708027, 36.443321, 50.217926>,  <33.497494, 36.332615, 50.185978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708027, 36.443321, 50.217926>,  <34.058914, 36.627831, 50.271172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708027, 36.443321, 50.217926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236403, 0.173685, 0.956006,
		-0.417861, 0.870091, -0.261406,
		-0.877215, -0.461275, -0.133116,
		33.444862, 36.304939, 50.177990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556992, 37.177296, 50.535774>,  <34.058914, 36.627831, 50.271172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556992, 37.177296, 50.535774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374302, 36.821487, 50.530804>,  <33.264690, 36.608002, 50.527821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374302, 36.821487, 50.530804>,  <33.556992, 37.177296, 50.535774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374302, 36.821487, 50.530804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485718, 0.237639, 0.841193,
		-0.745309, 0.390225, -0.540592,
		-0.456720, -0.889524, -0.012425,
		33.237286, 36.554630, 50.527077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994293, 37.328018, 50.897644>,  <33.556992, 37.177296, 50.535774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994293, 37.328018, 50.897644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976448, 36.928574, 50.886410>,  <32.965740, 36.688908, 50.879669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976448, 36.928574, 50.886410>,  <32.994293, 37.328018, 50.897644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976448, 36.928574, 50.886410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530023, -0.000171, 0.847983,
		-0.846809, 0.052719, -0.529278,
		-0.044615, -0.998609, -0.028087,
		32.963062, 36.628990, 50.877983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245003, 37.049248, 51.140911>,  <32.994293, 37.328018, 50.897644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245003, 37.049248, 51.140911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549225, 36.803574, 51.225128>,  <32.731758, 36.656170, 51.275658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549225, 36.803574, 51.225128>,  <32.245003, 37.049248, 51.140911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549225, 36.803574, 51.225128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413658, -0.208426, 0.886254,
		-0.500446, -0.761136, -0.412584,
		0.760553, -0.614191, 0.210544,
		32.777390, 36.619316, 51.288292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000141, 36.319805, 51.326145>,  <32.245003, 37.049248, 51.140911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000141, 36.319805, 51.326145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331791, 36.472195, 51.489811>,  <32.530781, 36.563629, 51.588009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331791, 36.472195, 51.489811>,  <32.000141, 36.319805, 51.326145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331791, 36.472195, 51.489811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342270, -0.232775, 0.910312,
		0.442044, -0.894806, -0.062605,
		0.829125, 0.380970, 0.409162,
		32.580528, 36.586487, 51.612560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315773, 35.718361, 51.619488>,  <32.000141, 36.319805, 51.326145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315773, 35.718361, 51.619488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392822, 36.056107, 51.819466>,  <32.439053, 36.258755, 51.939453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392822, 36.056107, 51.819466>,  <32.315773, 35.718361, 51.619488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392822, 36.056107, 51.819466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597362, -0.303298, 0.742407,
		0.778495, -0.441653, 0.445969,
		0.192625, 0.844365, 0.499942,
		32.450611, 36.309418, 51.969448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496540, 35.459675, 52.263603>,  <32.315773, 35.718361, 51.619488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496540, 35.459675, 52.263603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360615, 35.835835, 52.268894>,  <32.279060, 36.061531, 52.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360615, 35.835835, 52.268894>,  <32.496540, 35.459675, 52.263603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360615, 35.835835, 52.268894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614855, -0.232775, 0.753505,
		0.711675, 0.247919, 0.657309,
		-0.339813, 0.940400, 0.013226,
		32.258671, 36.117954, 52.272861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434662, 35.542877, 52.949986>,  <32.496540, 35.459675, 52.263603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434662, 35.542877, 52.949986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257698, 35.868961, 52.800472>,  <32.151520, 36.064610, 52.710766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257698, 35.868961, 52.800472>,  <32.434662, 35.542877, 52.949986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257698, 35.868961, 52.800472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556548, 0.077253, 0.827216,
		0.703229, 0.573993, 0.419525,
		-0.442406, 0.815208, -0.373781,
		32.124977, 36.113525, 52.688339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333370, 35.570332, 52.753078>,  <32.434662, 35.542877, 52.949986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333370, 35.570332, 52.753078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709534, 35.482494, 52.856930>,  <33.935234, 35.429790, 52.919239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709534, 35.482494, 52.856930>,  <33.333370, 35.570332, 52.753078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709534, 35.482494, 52.856930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305735, -0.880235, 0.362922,
		0.148838, -0.420673, -0.894920,
		0.940411, -0.219592, 0.259627,
		33.991657, 35.416618, 52.934818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123333, 34.782574, 52.893501>,  <33.333370, 35.570332, 52.753078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123333, 34.782574, 52.893501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725731, 34.783417, 52.937229>,  <32.487171, 34.783920, 52.963467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725731, 34.783417, 52.937229>,  <33.123333, 34.782574, 52.893501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725731, 34.783417, 52.937229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079741, -0.697996, -0.711649,
		0.074805, -0.716099, 0.693979,
		-0.994005, 0.002104, 0.109316,
		32.427528, 34.784046, 52.970024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853092, 34.123661, 52.837433>,  <33.123333, 34.782574, 52.893501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853092, 34.123661, 52.837433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565594, 34.374321, 52.716957>,  <32.393097, 34.524719, 52.644672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565594, 34.374321, 52.716957>,  <32.853092, 34.123661, 52.837433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565594, 34.374321, 52.716957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155056, -0.566752, -0.809166,
		-0.677768, -0.534880, 0.504514,
		-0.718741, 0.626655, -0.301189,
		32.349972, 34.562317, 52.626602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560883, 33.716614, 52.365498>,  <32.853092, 34.123661, 52.837433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560883, 33.716614, 52.365498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391373, 34.076717, 52.325596>,  <32.289665, 34.292778, 52.301655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391373, 34.076717, 52.325596>,  <32.560883, 33.716614, 52.365498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391373, 34.076717, 52.325596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262128, -0.227312, -0.937880,
		-0.867009, -0.371300, 0.332312,
		-0.423773, 0.900258, -0.099753,
		32.264240, 34.346794, 52.295670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924570, 33.621376, 51.986847>,  <32.560883, 33.716614, 52.365498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924570, 33.621376, 51.986847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051365, 33.993919, 51.915192>,  <32.127441, 34.217445, 51.872200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051365, 33.993919, 51.915192>,  <31.924570, 33.621376, 51.986847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051365, 33.993919, 51.915192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035195, -0.177197, -0.983546,
		-0.947776, 0.318078, -0.023391,
		0.316989, 0.931358, -0.179138,
		32.146461, 34.273327, 51.861450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566240, 33.837975, 51.409031>,  <31.924570, 33.621376, 51.986847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566240, 33.837975, 51.409031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897284, 34.061302, 51.432175>,  <32.095909, 34.195297, 51.446060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897284, 34.061302, 51.432175>,  <31.566240, 33.837975, 51.409031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897284, 34.061302, 51.432175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119470, -0.074494, -0.990039,
		-0.548447, 0.826276, -0.128354,
		0.827607, 0.558318, 0.057860,
		32.145565, 34.228798, 51.449532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434311, 34.336220, 50.886688>,  <31.566240, 33.837975, 51.409031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434311, 34.336220, 50.886688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828350, 34.297867, 50.943806>,  <32.064774, 34.274853, 50.978077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828350, 34.297867, 50.943806>,  <31.434311, 34.336220, 50.886688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828350, 34.297867, 50.943806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124034, -0.179121, -0.975977,
		0.119159, 0.979143, -0.164559,
		0.985097, -0.095885, 0.142791,
		32.123878, 34.269100, 50.986645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815027, 34.806934, 50.420498>,  <31.434311, 34.336220, 50.886688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815027, 34.806934, 50.420498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064907, 34.510475, 50.518837>,  <32.214836, 34.332600, 50.577839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064907, 34.510475, 50.518837>,  <31.815027, 34.806934, 50.420498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064907, 34.510475, 50.518837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291763, -0.070493, -0.953889,
		0.724308, 0.667625, 0.172204,
		0.624701, -0.741152, 0.245847,
		32.252319, 34.288128, 50.592590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364441, 34.915642, 49.954823>,  <31.815027, 34.806934, 50.420498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364441, 34.915642, 49.954823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458218, 34.549412, 50.085522>,  <32.514484, 34.329674, 50.163940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458218, 34.549412, 50.085522>,  <32.364441, 34.915642, 49.954823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458218, 34.549412, 50.085522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328615, -0.241692, -0.913015,
		0.914905, 0.321420, 0.244209,
		0.234438, -0.915573, 0.326748,
		32.528549, 34.274738, 50.183548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002930, 34.816040, 49.652092>,  <32.364441, 34.915642, 49.954823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002930, 34.816040, 49.652092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839989, 34.461933, 49.741856>,  <32.742226, 34.249466, 49.795712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839989, 34.461933, 49.741856>,  <33.002930, 34.816040, 49.652092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839989, 34.461933, 49.741856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269183, -0.351185, -0.896777,
		0.872700, -0.304898, 0.381357,
		-0.407352, -0.885272, 0.224405,
		32.717785, 34.196350, 49.809177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427425, 34.329590, 49.477970>,  <33.002930, 34.816040, 49.652092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427425, 34.329590, 49.477970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084682, 34.123493, 49.485172>,  <32.879036, 33.999836, 49.489494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084682, 34.123493, 49.485172>,  <33.427425, 34.329590, 49.477970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084682, 34.123493, 49.485172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144799, -0.274029, -0.950758,
		0.494805, -0.812055, 0.309410,
		-0.856855, -0.515242, 0.018006,
		32.827625, 33.968922, 49.490574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568310, 33.880997, 49.017540>,  <33.427425, 34.329590, 49.477970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568310, 33.880997, 49.017540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172779, 33.843369, 49.063793>,  <32.935459, 33.820793, 49.091545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172779, 33.843369, 49.063793>,  <33.568310, 33.880997, 49.017540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172779, 33.843369, 49.063793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082782, -0.298563, -0.950793,
		0.123965, -0.949742, 0.287440,
		-0.988827, -0.094071, 0.115633,
		32.876129, 33.815147, 49.098484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440605, 33.253353, 48.687141>,  <33.568310, 33.880997, 49.017540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440605, 33.253353, 48.687141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067818, 33.397964, 48.676270>,  <32.844147, 33.484730, 48.669746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067818, 33.397964, 48.676270>,  <33.440605, 33.253353, 48.687141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067818, 33.397964, 48.676270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079495, -0.276910, -0.957602,
		-0.353730, -0.890289, 0.286810,
		-0.931963, 0.361533, -0.027178,
		32.788227, 33.506424, 48.668118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969757, 32.740047, 48.410641>,  <33.440605, 33.253353, 48.687141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969757, 32.740047, 48.410641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767609, 33.081944, 48.363266>,  <32.646320, 33.287079, 48.334839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767609, 33.081944, 48.363266>,  <32.969757, 32.740047, 48.410641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767609, 33.081944, 48.363266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396277, -0.351814, -0.848052,
		-0.766530, -0.381643, 0.516508,
		-0.505368, 0.854737, -0.118440,
		32.615997, 33.338364, 48.327736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244423, 32.555393, 48.124752>,  <32.969757, 32.740047, 48.410641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244423, 32.555393, 48.124752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323608, 32.937786, 48.038124>,  <32.371120, 33.167221, 47.986149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323608, 32.937786, 48.038124>,  <32.244423, 32.555393, 48.124752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323608, 32.937786, 48.038124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130775, -0.193210, -0.972403,
		-0.971446, 0.220827, 0.086770,
		0.197968, 0.955984, -0.216571,
		32.382999, 33.224583, 47.973152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748491, 32.731094, 47.639153>,  <32.244423, 32.555393, 48.124752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748491, 32.731094, 47.639153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048702, 32.989067, 47.581497>,  <32.228828, 33.143848, 47.546906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048702, 32.989067, 47.581497>,  <31.748491, 32.731094, 47.639153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048702, 32.989067, 47.581497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072914, -0.297597, -0.951903,
		-0.656804, 0.703920, -0.270379,
		0.750528, 0.644928, -0.144138,
		32.273861, 33.182545, 47.538258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546364, 32.940083, 46.989605>,  <31.748491, 32.731094, 47.639153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546364, 32.940083, 46.989605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919773, 33.077106, 47.031921>,  <32.143818, 33.159321, 47.057312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919773, 33.077106, 47.031921>,  <31.546364, 32.940083, 46.989605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919773, 33.077106, 47.031921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112789, -0.000501, -0.993619,
		-0.340318, 0.939497, -0.039104,
		0.933522, 0.342557, 0.105794,
		32.199829, 33.179874, 47.063660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651552, 33.445839, 46.479240>,  <31.546364, 32.940083, 46.989605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651552, 33.445839, 46.479240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032791, 33.356514, 46.560959>,  <32.261536, 33.302917, 46.609989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032791, 33.356514, 46.560959>,  <31.651552, 33.445839, 46.479240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032791, 33.356514, 46.560959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238291, 0.137467, -0.961416,
		0.186613, 0.965005, 0.184233,
		0.953096, -0.223314, 0.204299,
		32.318722, 33.289520, 46.622250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966925, 33.975441, 46.190552>,  <31.651552, 33.445839, 46.479240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966925, 33.975441, 46.190552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249813, 33.692947, 46.203621>,  <32.419548, 33.523449, 46.211464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249813, 33.692947, 46.203621>,  <31.966925, 33.975441, 46.190552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249813, 33.692947, 46.203621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292156, 0.249850, -0.923158,
		0.643802, 0.662424, 0.383030,
		0.707222, -0.706236, 0.032677,
		32.461979, 33.481075, 46.213425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546494, 34.259735, 45.954098>,  <31.966925, 33.975441, 46.190552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546494, 34.259735, 45.954098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591610, 33.866261, 45.898033>,  <32.618679, 33.630177, 45.864395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591610, 33.866261, 45.898033>,  <32.546494, 34.259735, 45.954098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591610, 33.866261, 45.898033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367333, 0.172348, -0.913982,
		0.923226, 0.051601, 0.380778,
		0.112789, -0.983684, -0.140162,
		32.625446, 33.571156, 45.855984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212727, 34.215534, 45.520279>,  <32.546494, 34.259735, 45.954098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212727, 34.215534, 45.520279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982967, 33.890770, 45.478569>,  <32.845112, 33.695911, 45.453541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982967, 33.890770, 45.478569>,  <33.212727, 34.215534, 45.520279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982967, 33.890770, 45.478569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283876, -0.078089, -0.955676,
		0.767779, -0.578538, 0.275335,
		-0.574396, -0.811909, -0.104278,
		32.810650, 33.647198, 45.447285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449039, 34.057388, 44.903320>,  <33.212727, 34.215534, 45.520279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449039, 34.057388, 44.903320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129333, 33.817459, 44.918217>,  <32.937508, 33.673504, 44.927155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129333, 33.817459, 44.918217>,  <33.449039, 34.057388, 44.903320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129333, 33.817459, 44.918217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045503, -0.122188, -0.991463,
		0.599250, -0.790750, 0.124954,
		-0.799268, -0.599820, 0.037240,
		32.889553, 33.637512, 44.929390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575932, 33.374763, 44.526440>,  <33.449039, 34.057388, 44.903320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575932, 33.374763, 44.526440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179863, 33.422981, 44.554821>,  <32.942223, 33.451912, 44.571850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179863, 33.422981, 44.554821>,  <33.575932, 33.374763, 44.526440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179863, 33.422981, 44.554821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080136, -0.073142, -0.994097,
		-0.114648, -0.990009, 0.082084,
		-0.990169, 0.120549, 0.070950,
		32.882812, 33.459145, 44.576107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503601, 32.903740, 44.148209>,  <33.575932, 33.374763, 44.526440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503601, 32.903740, 44.148209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168758, 33.120193, 44.180279>,  <32.967854, 33.250065, 44.199520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168758, 33.120193, 44.180279>,  <33.503601, 32.903740, 44.148209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168758, 33.120193, 44.180279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180812, -0.135365, -0.974158,
		-0.516299, -0.829969, 0.211159,
		-0.837104, 0.541136, 0.080179,
		32.917625, 33.282536, 44.204334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033985, 32.497974, 43.836678>,  <33.503601, 32.903740, 44.148209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033985, 32.497974, 43.836678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901318, 32.874874, 43.818089>,  <32.821716, 33.101013, 43.806934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901318, 32.874874, 43.818089>,  <33.033985, 32.497974, 43.836678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901318, 32.874874, 43.818089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241979, -0.132584, -0.961180,
		-0.911833, -0.307551, 0.271979,
		-0.331672, 0.942249, -0.046473,
		32.801815, 33.157547, 43.804146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478683, 32.360523, 43.397793>,  <33.033985, 32.497974, 43.836678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478683, 32.360523, 43.397793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547783, 32.754501, 43.395409>,  <32.589245, 32.990891, 43.393978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547783, 32.754501, 43.395409>,  <32.478683, 32.360523, 43.397793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547783, 32.754501, 43.395409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241214, 0.036434, -0.969788,
		-0.954972, 0.168972, 0.243878,
		0.172752, 0.984947, -0.005965,
		32.599609, 33.049984, 43.393620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885775, 32.647335, 43.081070>,  <32.478683, 32.360523, 43.397793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885775, 32.647335, 43.081070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170765, 32.923813, 43.032688>,  <32.341759, 33.089699, 43.003658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170765, 32.923813, 43.032688>,  <31.885775, 32.647335, 43.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170765, 32.923813, 43.032688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307329, 0.152424, -0.939317,
		-0.630813, 0.706414, 0.321022,
		0.712478, 0.691192, -0.120950,
		32.384510, 33.131172, 42.996403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624245, 33.305885, 42.760136>,  <31.885775, 32.647335, 43.081070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624245, 33.305885, 42.760136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015274, 33.326889, 42.678562>,  <32.249893, 33.339493, 42.629616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015274, 33.326889, 42.678562>,  <31.624245, 33.305885, 42.760136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015274, 33.326889, 42.678562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210254, 0.188627, -0.959277,
		-0.011905, 0.980644, 0.195438,
		0.977574, 0.052512, -0.203938,
		32.308548, 33.342644, 42.617382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626829, 33.864792, 42.480560>,  <31.624245, 33.305885, 42.760136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626829, 33.864792, 42.480560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969723, 33.698757, 42.358673>,  <32.175457, 33.599136, 42.285542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969723, 33.698757, 42.358673>,  <31.626829, 33.864792, 42.480560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969723, 33.698757, 42.358673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171667, 0.327544, -0.929110,
		0.485472, 0.848774, 0.209524,
		0.857232, -0.415089, -0.304720,
		32.226891, 33.574230, 42.267258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940033, 34.413113, 42.180397>,  <31.626829, 33.864792, 42.480560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940033, 34.413113, 42.180397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122940, 34.094597, 42.021992>,  <32.232685, 33.903488, 41.926949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122940, 34.094597, 42.021992>,  <31.940033, 34.413113, 42.180397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122940, 34.094597, 42.021992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109072, 0.391722, -0.913596,
		0.882616, 0.460950, 0.092268,
		0.457266, -0.796291, -0.396017,
		32.260120, 33.855709, 41.903187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372959, 34.656025, 41.593544>,  <31.940033, 34.413113, 42.180397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372959, 34.656025, 41.593544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353027, 34.261726, 41.529263>,  <32.341068, 34.025146, 41.490692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353027, 34.261726, 41.529263>,  <32.372959, 34.656025, 41.593544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353027, 34.261726, 41.529263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028521, 0.159436, -0.986796,
		0.998351, -0.053752, 0.020170,
		-0.049826, -0.985744, -0.160706,
		32.338078, 33.966003, 41.481052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992447, 34.523266, 41.270409>,  <32.372959, 34.656025, 41.593544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992447, 34.523266, 41.270409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764732, 34.199036, 41.215450>,  <32.628105, 34.004498, 41.182476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764732, 34.199036, 41.215450>,  <32.992447, 34.523266, 41.270409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764732, 34.199036, 41.215450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367313, -0.101253, -0.924570,
		0.735523, -0.576812, 0.355378,
		-0.569286, -0.810577, -0.137397,
		32.593948, 33.955864, 41.174232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404305, 33.989769, 40.998356>,  <32.992447, 34.523266, 41.270409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404305, 33.989769, 40.998356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035198, 33.896717, 40.875465>,  <32.813736, 33.840885, 40.801731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035198, 33.896717, 40.875465>,  <33.404305, 33.989769, 40.998356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035198, 33.896717, 40.875465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337338, -0.102211, -0.935818,
		0.186301, -0.967179, 0.172793,
		-0.922765, -0.232634, -0.307224,
		32.758369, 33.826927, 40.783298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489769, 33.429951, 40.497841>,  <33.404305, 33.989769, 40.998356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489769, 33.429951, 40.497841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118320, 33.569813, 40.448196>,  <32.895451, 33.653732, 40.418411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118320, 33.569813, 40.448196>,  <33.489769, 33.429951, 40.497841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118320, 33.569813, 40.448196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077118, -0.145302, -0.986377,
		-0.362929, -0.925541, 0.107966,
		-0.928620, 0.349659, -0.124110,
		32.839733, 33.674709, 40.410965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154778, 32.892204, 40.041313>,  <33.489769, 33.429951, 40.497841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154778, 32.892204, 40.041313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953232, 33.235477, 40.002041>,  <32.832306, 33.441441, 39.978477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953232, 33.235477, 40.002041>,  <33.154778, 32.892204, 40.041313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953232, 33.235477, 40.002041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119108, -0.043552, -0.991926,
		-0.855532, -0.511490, -0.080273,
		-0.503864, 0.858185, -0.098182,
		32.802074, 33.492931, 39.972588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799072, 32.824940, 39.403000>,  <33.154778, 32.892204, 40.041313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799072, 32.824940, 39.403000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755894, 33.217430, 39.466934>,  <32.729988, 33.452923, 39.505295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755894, 33.217430, 39.466934>,  <32.799072, 32.824940, 39.403000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755894, 33.217430, 39.466934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031178, 0.164041, -0.985961,
		-0.993668, -0.101446, -0.048300,
		-0.107945, 0.981223, 0.159839,
		32.723511, 33.511799, 39.514885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200256, 33.060627, 39.001240>,  <32.799072, 32.824940, 39.403000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200256, 33.060627, 39.001240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425121, 33.382271, 39.078571>,  <32.560040, 33.575256, 39.124969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425121, 33.382271, 39.078571>,  <32.200256, 33.060627, 39.001240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425121, 33.382271, 39.078571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060492, 0.273118, -0.960077,
		-0.824809, 0.528028, 0.202180,
		0.562167, 0.804110, 0.193329,
		32.593773, 33.623505, 39.136570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834673, 33.622902, 38.793072>,  <32.200256, 33.060627, 39.001240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834673, 33.622902, 38.793072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226353, 33.701832, 38.774166>,  <32.461361, 33.749187, 38.762821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226353, 33.701832, 38.774166>,  <31.834673, 33.622902, 38.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226353, 33.701832, 38.774166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095163, 0.240883, -0.965878,
		-0.179204, 0.950284, 0.254650,
		0.979199, 0.197322, -0.047264,
		32.520111, 33.761028, 38.759987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901430, 34.110729, 38.280094>,  <31.834673, 33.622902, 38.793072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901430, 34.110729, 38.280094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287460, 34.012184, 38.315720>,  <32.519077, 33.953056, 38.337093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287460, 34.012184, 38.315720>,  <31.901430, 34.110729, 38.280094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287460, 34.012184, 38.315720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127017, 0.142715, -0.981580,
		0.229112, 0.958613, 0.169023,
		0.965077, -0.246360, 0.089063,
		32.576984, 33.938274, 38.342438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315830, 34.597893, 37.896610>,  <31.901430, 34.110729, 38.280094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315830, 34.597893, 37.896610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570358, 34.291134, 37.929977>,  <32.723076, 34.107079, 37.949997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570358, 34.291134, 37.929977>,  <32.315830, 34.597893, 37.896610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570358, 34.291134, 37.929977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191927, 0.052651, -0.979996,
		0.747168, 0.639601, 0.180692,
		0.636320, -0.766901, 0.083417,
		32.761253, 34.061062, 37.955002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945950, 34.876740, 37.465500>,  <32.315830, 34.597893, 37.896610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945950, 34.876740, 37.465500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956059, 34.478600, 37.502678>,  <32.962124, 34.239716, 37.524982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956059, 34.478600, 37.502678>,  <32.945950, 34.876740, 37.465500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956059, 34.478600, 37.502678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307237, -0.080737, -0.948202,
		0.951297, 0.052522, 0.303768,
		0.025277, -0.995351, 0.092942,
		32.963642, 34.179993, 37.530560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696983, 34.700817, 37.330811>,  <32.945950, 34.876740, 37.465500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696983, 34.700817, 37.330811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448101, 34.393238, 37.272060>,  <33.298771, 34.208691, 37.236809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448101, 34.393238, 37.272060>,  <33.696983, 34.700817, 37.330811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448101, 34.393238, 37.272060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471473, -0.218292, -0.854437,
		0.624955, -0.600888, 0.498362,
		-0.622209, -0.768949, -0.146880,
		33.261436, 34.162552, 37.227997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097454, 34.178165, 37.099297>,  <33.696983, 34.700817, 37.330811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097454, 34.178165, 37.099297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740631, 34.030216, 36.995434>,  <33.526535, 33.941448, 36.933117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740631, 34.030216, 36.995434>,  <34.097454, 34.178165, 37.099297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740631, 34.030216, 36.995434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388206, -0.333042, -0.859290,
		0.231349, -0.867340, 0.440679,
		-0.892062, -0.369870, -0.259658,
		33.473011, 33.919254, 36.917538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201775, 33.482845, 36.883545>,  <34.097454, 34.178165, 37.099297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201775, 33.482845, 36.883545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866383, 33.602684, 36.701473>,  <33.665146, 33.674587, 36.592232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866383, 33.602684, 36.701473>,  <34.201775, 33.482845, 36.883545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866383, 33.602684, 36.701473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349628, -0.344926, -0.871083,
		-0.417978, -0.889531, 0.184467,
		-0.838484, 0.299599, -0.455177,
		33.614838, 33.692562, 36.564919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975868, 33.031548, 36.438320>,  <34.201775, 33.482845, 36.883545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975868, 33.031548, 36.438320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816154, 33.363148, 36.281689>,  <33.720325, 33.562107, 36.187710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816154, 33.363148, 36.281689>,  <33.975868, 33.031548, 36.438320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816154, 33.363148, 36.281689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224563, -0.325664, -0.918431,
		-0.888901, -0.454648, -0.056130,
		-0.399283, 0.828999, -0.391580,
		33.696369, 33.611847, 36.164215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454563, 32.566868, 35.990734>,  <33.975868, 33.031548, 36.438320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454563, 32.566868, 35.990734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691608, 32.245140, 36.008076>,  <34.833836, 32.052105, 36.018478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691608, 32.245140, 36.008076>,  <34.454563, 32.566868, 35.990734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691608, 32.245140, 36.008076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429347, -0.269887, 0.861871,
		-0.681518, -0.529372, -0.505271,
		0.592617, -0.804317, 0.043351,
		34.869392, 32.003845, 36.021080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048340, 32.014278, 36.278866>,  <34.454563, 32.566868, 35.990734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048340, 32.014278, 36.278866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420761, 31.884573, 36.345791>,  <34.644215, 31.806749, 36.385944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420761, 31.884573, 36.345791>,  <34.048340, 32.014278, 36.278866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420761, 31.884573, 36.345791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246771, -0.221819, 0.943345,
		-0.268786, -0.919590, -0.286546,
		0.931052, -0.324269, 0.167306,
		34.700077, 31.787294, 36.395985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920361, 31.362644, 36.645977>,  <34.048340, 32.014278, 36.278866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920361, 31.362644, 36.645977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306694, 31.431395, 36.723568>,  <34.538494, 31.472645, 36.770123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306694, 31.431395, 36.723568>,  <33.920361, 31.362644, 36.645977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306694, 31.431395, 36.723568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173570, -0.126835, 0.976620,
		0.192463, -0.976919, -0.092668,
		0.965832, 0.171878, 0.193975,
		34.596443, 31.482958, 36.781761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171993, 30.893629, 37.223980>,  <33.920361, 31.362644, 36.645977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171993, 30.893629, 37.223980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457375, 31.173874, 37.228500>,  <34.628601, 31.342022, 37.231213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457375, 31.173874, 37.228500>,  <34.171993, 30.893629, 37.223980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457375, 31.173874, 37.228500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056964, 0.041923, 0.997496,
		0.698386, -0.712308, 0.069820,
		0.713451, 0.700614, 0.011297,
		34.671410, 31.384058, 37.231888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624901, 30.681868, 37.666039>,  <34.171993, 30.893629, 37.223980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624901, 30.681868, 37.666039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683788, 31.077343, 37.654552>,  <34.719120, 31.314629, 37.647659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683788, 31.077343, 37.654552>,  <34.624901, 30.681868, 37.666039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683788, 31.077343, 37.654552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148840, 0.006558, 0.988840,
		0.977841, -0.149851, -0.146191,
		0.147219, 0.988687, -0.028716,
		34.727955, 31.373949, 37.645939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329712, 30.782566, 37.785587>,  <34.624901, 30.681868, 37.666039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329712, 30.782566, 37.785587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098080, 31.095901, 37.875961>,  <34.959099, 31.283903, 37.930183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098080, 31.095901, 37.875961>,  <35.329712, 30.782566, 37.785587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098080, 31.095901, 37.875961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332174, -0.026380, 0.942849,
		0.744531, 0.621034, -0.244929,
		-0.579080, 0.783339, 0.225932,
		34.924355, 31.330904, 37.943741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711979, 31.166117, 38.195580>,  <35.329712, 30.782566, 37.785587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711979, 31.166117, 38.195580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352848, 31.327299, 38.266609>,  <35.137371, 31.424007, 38.309227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352848, 31.327299, 38.266609>,  <35.711979, 31.166117, 38.195580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352848, 31.327299, 38.266609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212961, 0.044375, 0.976052,
		0.385425, 0.914143, -0.125655,
		-0.897828, 0.402955, 0.177573,
		35.083500, 31.448185, 38.319881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841690, 31.703350, 38.750961>,  <35.711979, 31.166117, 38.195580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841690, 31.703350, 38.750961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443966, 31.664785, 38.769104>,  <35.205334, 31.641645, 38.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443966, 31.664785, 38.769104>,  <35.841690, 31.703350, 38.750961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443966, 31.664785, 38.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049900, -0.045280, 0.997727,
		-0.094141, 0.994311, 0.049833,
		-0.994308, -0.096414, 0.045353,
		35.145672, 31.635860, 38.782711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633186, 32.098335, 39.212006>,  <35.841690, 31.703350, 38.750961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633186, 32.098335, 39.212006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328621, 31.839153, 39.204033>,  <35.145882, 31.683643, 39.199249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328621, 31.839153, 39.204033>,  <35.633186, 32.098335, 39.212006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328621, 31.839153, 39.204033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005109, -0.036744, 0.999312,
		-0.648246, 0.760788, 0.031288,
		-0.761414, -0.647959, -0.019932,
		35.100197, 31.644766, 39.198051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097469, 32.377876, 39.728195>,  <35.633186, 32.098335, 39.212006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097469, 32.377876, 39.728195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001289, 31.995546, 39.660564>,  <34.943581, 31.766150, 39.619987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001289, 31.995546, 39.660564>,  <35.097469, 32.377876, 39.728195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001289, 31.995546, 39.660564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266200, -0.102572, 0.958445,
		-0.933446, 0.275466, -0.229777,
		-0.240450, -0.955823, -0.169074,
		34.929153, 31.708799, 39.609840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425327, 32.265606, 39.965721>,  <35.097469, 32.377876, 39.728195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425327, 32.265606, 39.965721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605358, 31.908480, 39.958660>,  <34.713375, 31.694204, 39.954426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605358, 31.908480, 39.958660>,  <34.425327, 32.265606, 39.965721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605358, 31.908480, 39.958660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256620, -0.148245, 0.955076,
		-0.855323, -0.425329, -0.295836,
		0.450078, -0.892815, -0.017650,
		34.740383, 31.640635, 39.953365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046204, 31.813290, 40.369282>,  <34.425327, 32.265606, 39.965721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046204, 31.813290, 40.369282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391956, 31.612297, 40.376884>,  <34.599407, 31.491701, 40.381447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391956, 31.612297, 40.376884>,  <34.046204, 31.813290, 40.369282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391956, 31.612297, 40.376884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150284, -0.222071, 0.963379,
		-0.479860, -0.835581, -0.267468,
		0.864378, -0.502483, 0.019011,
		34.651268, 31.461552, 40.382587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928265, 31.055456, 40.622559>,  <34.046204, 31.813290, 40.369282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928265, 31.055456, 40.622559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314110, 31.136242, 40.690365>,  <34.545616, 31.184713, 40.731049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314110, 31.136242, 40.690365>,  <33.928265, 31.055456, 40.622559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314110, 31.136242, 40.690365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094172, -0.336624, 0.936918,
		0.246287, -0.919725, -0.305692,
		0.964611, 0.201963, 0.169518,
		34.603493, 31.196831, 40.741219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203888, 30.412849, 41.060249>,  <33.928265, 31.055456, 40.622559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203888, 30.412849, 41.060249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485828, 30.689327, 41.124043>,  <34.654991, 30.855213, 41.162319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485828, 30.689327, 41.124043>,  <34.203888, 30.412849, 41.060249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485828, 30.689327, 41.124043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055417, -0.277798, 0.959040,
		0.707188, -0.667141, -0.234110,
		0.704850, 0.691195, 0.159485,
		34.697285, 30.896687, 41.171886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709915, 30.110285, 41.531464>,  <34.203888, 30.412849, 41.060249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709915, 30.110285, 41.531464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731670, 30.507872, 41.569565>,  <34.744724, 30.746424, 41.592426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731670, 30.507872, 41.569565>,  <34.709915, 30.110285, 41.531464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731670, 30.507872, 41.569565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060786, -0.098515, 0.993277,
		0.996668, -0.048229, -0.065777,
		0.054385, 0.993966, 0.095255,
		34.747986, 30.806061, 41.598141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175774, 30.165852, 42.065170>,  <34.709915, 30.110285, 41.531464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175774, 30.165852, 42.065170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985107, 30.517380, 42.073833>,  <34.870708, 30.728296, 42.079033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985107, 30.517380, 42.073833>,  <35.175774, 30.165852, 42.065170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985107, 30.517380, 42.073833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023956, -0.037618, 0.999005,
		0.878759, 0.475670, 0.038984,
		-0.476664, 0.878819, 0.021662,
		34.842110, 30.781025, 42.080334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479885, 30.503435, 42.634991>,  <35.175774, 30.165852, 42.065170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479885, 30.503435, 42.634991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146877, 30.710081, 42.554970>,  <34.947075, 30.834068, 42.506958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146877, 30.710081, 42.554970>,  <35.479885, 30.503435, 42.634991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146877, 30.710081, 42.554970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140870, 0.151837, 0.978316,
		0.535790, 0.842647, -0.053631,
		-0.832517, 0.516616, -0.200056,
		34.897121, 30.865067, 42.494953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506256, 31.135246, 43.011784>,  <35.479885, 30.503435, 42.634991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506256, 31.135246, 43.011784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120907, 31.068712, 42.927647>,  <34.889698, 31.028791, 42.877163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120907, 31.068712, 42.927647>,  <35.506256, 31.135246, 43.011784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120907, 31.068712, 42.927647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262426, 0.423370, 0.867116,
		-0.055177, 0.890556, -0.451514,
		-0.963373, -0.166334, -0.210345,
		34.831894, 31.018812, 42.864544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150578, 31.740114, 43.220188>,  <35.506256, 31.135246, 43.011784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150578, 31.740114, 43.220188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852837, 31.473255, 43.208538>,  <34.674191, 31.313141, 43.201546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852837, 31.473255, 43.208538>,  <35.150578, 31.740114, 43.220188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852837, 31.473255, 43.208538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345106, 0.346969, 0.872075,
		-0.571695, 0.659188, -0.488505,
		-0.744357, -0.667146, -0.029129,
		34.629528, 31.273111, 43.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540855, 32.121040, 43.366131>,  <35.150578, 31.740114, 43.220188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540855, 32.121040, 43.366131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488438, 31.731068, 43.438057>,  <34.456985, 31.497084, 43.481213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488438, 31.731068, 43.438057>,  <34.540855, 32.121040, 43.366131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488438, 31.731068, 43.438057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300737, 0.211923, 0.929863,
		-0.944661, 0.067776, -0.320970,
		-0.131044, -0.974933, 0.179813,
		34.449123, 31.438587, 43.492001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133560, 32.130833, 43.893448>,  <34.540855, 32.121040, 43.366131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133560, 32.130833, 43.893448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217663, 31.739773, 43.893837>,  <34.268124, 31.505138, 43.894070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217663, 31.739773, 43.893837>,  <34.133560, 32.130833, 43.893448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217663, 31.739773, 43.893837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177091, -0.037107, 0.983495,
		-0.961474, -0.206955, -0.180934,
		0.210253, -0.977646, 0.000973,
		34.280739, 31.446478, 43.894131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554073, 31.774664, 44.308140>,  <34.133560, 32.130833, 43.893448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554073, 31.774664, 44.308140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907261, 31.587811, 44.326729>,  <34.119171, 31.475698, 44.337883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907261, 31.587811, 44.326729>,  <33.554073, 31.774664, 44.308140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907261, 31.587811, 44.326729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095542, -0.081904, 0.992050,
		-0.459614, -0.880385, -0.116949,
		0.882965, -0.467133, 0.046469,
		34.172150, 31.447670, 44.340672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310799, 31.274738, 44.729736>,  <33.554073, 31.774664, 44.308140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310799, 31.274738, 44.729736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710346, 31.269224, 44.747944>,  <33.950073, 31.265915, 44.758869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710346, 31.269224, 44.747944>,  <33.310799, 31.274738, 44.729736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710346, 31.269224, 44.747944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047284, -0.184751, 0.981647,
		-0.005122, -0.982689, -0.185194,
		0.998868, -0.013785, 0.045519,
		34.010006, 31.265089, 44.761600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590481, 30.617823, 45.156609>,  <33.310799, 31.274738, 44.729736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590481, 30.617823, 45.156609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889496, 30.882469, 45.133099>,  <34.068905, 31.041258, 45.118992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889496, 30.882469, 45.133099>,  <33.590481, 30.617823, 45.156609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889496, 30.882469, 45.133099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154710, -0.087382, 0.984088,
		0.645955, -0.744732, -0.167680,
		0.747534, 0.661618, -0.058773,
		34.113754, 31.080956, 45.115467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056236, 30.318504, 45.572975>,  <33.590481, 30.617823, 45.156609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056236, 30.318504, 45.572975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207523, 30.685242, 45.521820>,  <34.298294, 30.905283, 45.491127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207523, 30.685242, 45.521820>,  <34.056236, 30.318504, 45.572975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207523, 30.685242, 45.521820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134174, 0.082397, 0.987526,
		0.915943, -0.390656, -0.091852,
		0.378215, 0.916842, -0.127886,
		34.320988, 30.960295, 45.483456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729538, 30.472010, 45.999844>,  <34.056236, 30.318504, 45.572975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729538, 30.472010, 45.999844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563190, 30.827827, 45.924206>,  <34.463383, 31.041319, 45.878822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563190, 30.827827, 45.924206>,  <34.729538, 30.472010, 45.999844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563190, 30.827827, 45.924206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283011, 0.324198, 0.902663,
		0.864266, 0.321875, -0.386576,
		-0.415872, 0.889546, -0.189099,
		34.438427, 31.094690, 45.867477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202030, 31.050371, 46.081085>,  <34.729538, 30.472010, 45.999844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202030, 31.050371, 46.081085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833786, 31.183546, 46.162697>,  <34.612839, 31.263451, 46.211662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833786, 31.183546, 46.162697>,  <35.202030, 31.050371, 46.081085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833786, 31.183546, 46.162697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344216, 0.445246, 0.826603,
		0.184365, 0.831209, -0.524500,
		-0.920611, 0.332938, 0.204027,
		34.557602, 31.283428, 46.223904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335510, 31.683670, 46.505074>,  <35.202030, 31.050371, 46.081085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335510, 31.683670, 46.505074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950035, 31.602571, 46.574581>,  <34.718750, 31.553913, 46.616287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950035, 31.602571, 46.574581>,  <35.335510, 31.683670, 46.505074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950035, 31.602571, 46.574581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117974, 0.260524, 0.958233,
		-0.239548, 0.943940, -0.227145,
		-0.963690, -0.202745, 0.173769,
		34.660927, 31.541748, 46.626713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042221, 32.293129, 46.898190>,  <35.335510, 31.683670, 46.505074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042221, 32.293129, 46.898190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798695, 31.985508, 46.976063>,  <34.652576, 31.800936, 47.022785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798695, 31.985508, 46.976063>,  <35.042221, 32.293129, 46.898190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798695, 31.985508, 46.976063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038931, 0.216143, 0.975585,
		-0.792352, 0.601536, -0.101652,
		-0.608821, -0.769049, 0.194679,
		34.616047, 31.754793, 47.034466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555435, 32.538239, 47.369125>,  <35.042221, 32.293129, 46.898190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555435, 32.538239, 47.369125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552135, 32.139801, 47.404293>,  <34.550156, 31.900738, 47.425392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552135, 32.139801, 47.404293>,  <34.555435, 32.538239, 47.369125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552135, 32.139801, 47.404293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054694, 0.087338, 0.994676,
		-0.998469, 0.013018, 0.053759,
		-0.008254, -0.996094, 0.087917,
		34.549660, 31.840973, 47.430668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120461, 32.444115, 47.927650>,  <34.555435, 32.538239, 47.369125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120461, 32.444115, 47.927650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328537, 32.102562, 47.920887>,  <34.453384, 31.897631, 47.916828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328537, 32.102562, 47.920887>,  <34.120461, 32.444115, 47.927650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328537, 32.102562, 47.920887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017523, -0.030467, 0.999382,
		-0.853868, -0.519578, -0.030811,
		0.520195, -0.853880, -0.016910,
		34.484596, 31.846397, 47.915813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839191, 31.993067, 48.311569>,  <34.120461, 32.444115, 47.927650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839191, 31.993067, 48.311569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223244, 31.881599, 48.320419>,  <34.453674, 31.814720, 48.325729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223244, 31.881599, 48.320419>,  <33.839191, 31.993067, 48.311569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223244, 31.881599, 48.320419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001718, 0.085018, 0.996378,
		-0.279539, -0.956617, 0.082107,
		0.960133, -0.278668, 0.022122,
		34.511284, 31.797998, 48.327057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801064, 31.523998, 48.932442>,  <33.839191, 31.993067, 48.311569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801064, 31.523998, 48.932442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175991, 31.624668, 48.836025>,  <34.400948, 31.685070, 48.778175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175991, 31.624668, 48.836025>,  <33.801064, 31.523998, 48.932442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175991, 31.624668, 48.836025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197123, 0.187468, 0.962288,
		0.287372, -0.949481, 0.126106,
		0.937315, 0.251677, -0.241038,
		34.457188, 31.700171, 48.763714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288391, 31.152384, 49.358810>,  <33.801064, 31.523998, 48.932442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288391, 31.152384, 49.358810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463753, 31.497900, 49.259476>,  <34.568970, 31.705210, 49.199875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463753, 31.497900, 49.259476>,  <34.288391, 31.152384, 49.358810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463753, 31.497900, 49.259476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291311, 0.124828, 0.948449,
		0.850260, -0.488145, -0.196906,
		0.438401, 0.863789, -0.248339,
		34.595272, 31.757036, 49.184975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527737, 31.137281, 49.956020>,  <34.288391, 31.152384, 49.358810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527737, 31.137281, 49.956020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675430, 31.453234, 49.760162>,  <34.764046, 31.642805, 49.642647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675430, 31.453234, 49.760162>,  <34.527737, 31.137281, 49.956020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675430, 31.453234, 49.760162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485969, 0.284995, 0.826203,
		0.792149, -0.543016, -0.278628,
		0.369234, 0.789881, -0.489647,
		34.786201, 31.690199, 49.613270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250332, 31.174532, 50.152824>,  <34.527737, 31.137281, 49.956020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250332, 31.174532, 50.152824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141319, 31.529596, 50.004345>,  <35.075912, 31.742634, 49.915257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141319, 31.529596, 50.004345>,  <35.250332, 31.174532, 50.152824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141319, 31.529596, 50.004345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526501, 0.460501, 0.714658,
		0.805311, -0.000673, -0.592852,
		-0.272527, 0.887659, -0.371201,
		35.059563, 31.795895, 49.892986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873615, 31.542654, 50.042839>,  <35.250332, 31.174532, 50.152824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873615, 31.542654, 50.042839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552483, 31.776958, 50.087273>,  <35.359802, 31.917542, 50.113934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552483, 31.776958, 50.087273>,  <35.873615, 31.542654, 50.042839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552483, 31.776958, 50.087273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513211, 0.584150, 0.628796,
		0.303434, 0.561829, -0.769595,
		-0.802834, 0.585762, 0.111086,
		35.311634, 31.952686, 50.120598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006493, 32.157276, 49.861443>,  <35.873615, 31.542654, 50.042839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006493, 32.157276, 49.861443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696537, 32.235348, 50.101925>,  <35.510563, 32.282192, 50.246216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696537, 32.235348, 50.101925>,  <36.006493, 32.157276, 49.861443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696537, 32.235348, 50.101925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603309, 0.512152, 0.611326,
		-0.188593, 0.836424, -0.514614,
		-0.774888, 0.195180, 0.601210,
		35.464069, 32.293903, 50.282288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882736, 32.707176, 50.478737>,  <36.006493, 32.157276, 49.861443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882736, 32.707176, 50.478737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269958, 32.775352, 50.552296>,  <36.502293, 32.816257, 50.596432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269958, 32.775352, 50.552296>,  <35.882736, 32.707176, 50.478737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269958, 32.775352, 50.552296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207265, -0.131195, -0.969448,
		-0.141107, 0.976595, -0.162331,
		0.968055, 0.170442, 0.183902,
		36.560375, 32.826485, 50.607468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130360, 33.274796, 50.062710>,  <35.882736, 32.707176, 50.478737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130360, 33.274796, 50.062710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493477, 33.127304, 50.142666>,  <36.711346, 33.038811, 50.190639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493477, 33.127304, 50.142666>,  <36.130360, 33.274796, 50.062710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493477, 33.127304, 50.142666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241652, 0.070275, -0.967815,
		0.342812, 0.926877, 0.152898,
		0.907791, -0.368727, 0.199891,
		36.765816, 33.016685, 50.202633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692352, 33.690350, 49.679615>,  <36.130360, 33.274796, 50.062710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692352, 33.690350, 49.679615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877842, 33.346973, 49.767292>,  <36.989136, 33.140949, 49.819901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877842, 33.346973, 49.767292>,  <36.692352, 33.690350, 49.679615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877842, 33.346973, 49.767292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246722, -0.112498, -0.962535,
		0.850933, 0.500432, 0.159627,
		0.463726, -0.858436, 0.219195,
		37.016960, 33.089443, 49.833050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428387, 33.652851, 49.522419>,  <36.692352, 33.690350, 49.679615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428387, 33.652851, 49.522419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266876, 33.286983, 49.515011>,  <37.169971, 33.067463, 49.510567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266876, 33.286983, 49.515011>,  <37.428387, 33.652851, 49.522419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266876, 33.286983, 49.515011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341227, -0.131784, -0.930697,
		0.848841, -0.382111, 0.365321,
		-0.403773, -0.914672, -0.018523,
		37.145744, 33.012581, 49.509453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952110, 33.252888, 49.318638>,  <37.428387, 33.652851, 49.522419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952110, 33.252888, 49.318638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636047, 33.016785, 49.252602>,  <37.446411, 32.875122, 49.212982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636047, 33.016785, 49.252602>,  <37.952110, 33.252888, 49.318638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636047, 33.016785, 49.252602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306977, -0.147998, -0.940139,
		0.530488, -0.793535, 0.298136,
		-0.790157, -0.590254, -0.165086,
		37.399002, 32.839710, 49.203075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284393, 32.558987, 49.032608>,  <37.952110, 33.252888, 49.318638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284393, 32.558987, 49.032608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901562, 32.597412, 48.923237>,  <37.671864, 32.620468, 48.857613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901562, 32.597412, 48.923237>,  <38.284393, 32.558987, 49.032608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901562, 32.597412, 48.923237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255705, -0.164156, -0.952716,
		-0.136401, -0.981746, 0.132548,
		-0.957084, 0.096058, -0.273428,
		37.614437, 32.626232, 48.841209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231163, 32.193024, 48.530998>,  <38.284393, 32.558987, 49.032608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231163, 32.193024, 48.530998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863518, 32.335350, 48.463314>,  <37.642933, 32.420746, 48.422703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863518, 32.335350, 48.463314>,  <38.231163, 32.193024, 48.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863518, 32.335350, 48.463314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147691, -0.087014, -0.985198,
		-0.365273, -0.930497, 0.027425,
		-0.919110, 0.355816, -0.169210,
		37.587784, 32.442093, 48.412552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833820, 31.755009, 48.186947>,  <38.231163, 32.193024, 48.530998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833820, 31.755009, 48.186947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661526, 32.099590, 48.079346>,  <37.558147, 32.306339, 48.014786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661526, 32.099590, 48.079346>,  <37.833820, 31.755009, 48.186947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661526, 32.099590, 48.079346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123329, -0.239089, -0.963134,
		-0.894011, -0.448034, -0.003258,
		-0.430737, 0.861454, -0.269003,
		37.532303, 32.358025, 47.998646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407661, 31.594587, 47.626720>,  <37.833820, 31.755009, 48.186947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407661, 31.594587, 47.626720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439484, 31.991831, 47.592300>,  <37.458576, 32.230179, 47.571648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439484, 31.991831, 47.592300>,  <37.407661, 31.594587, 47.626720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439484, 31.991831, 47.592300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058150, -0.081557, -0.994971,
		-0.995133, 0.084163, 0.051261,
		0.079559, 0.993109, -0.086054,
		37.463352, 32.289764, 47.566483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961132, 31.741459, 47.111755>,  <37.407661, 31.594587, 47.626720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961132, 31.741459, 47.111755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217510, 32.048321, 47.101406>,  <37.371338, 32.232437, 47.095196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217510, 32.048321, 47.101406>,  <36.961132, 31.741459, 47.111755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217510, 32.048321, 47.101406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010729, -0.024747, -0.999636,
		-0.767514, 0.640986, -0.007631,
		0.640942, 0.767153, -0.025870,
		37.409794, 32.278465, 47.093643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788021, 32.123722, 46.541126>,  <36.961132, 31.741459, 47.111755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788021, 32.123722, 46.541126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136593, 32.308857, 46.606121>,  <37.345734, 32.419937, 46.645119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136593, 32.308857, 46.606121>,  <36.788021, 32.123722, 46.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136593, 32.308857, 46.606121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131588, 0.098532, -0.986395,
		-0.472547, 0.880952, 0.024960,
		0.871426, 0.462834, 0.162484,
		37.398022, 32.447708, 46.654865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707176, 32.763130, 46.317284>,  <36.788021, 32.123722, 46.541126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707176, 32.763130, 46.317284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099033, 32.689194, 46.285950>,  <37.334148, 32.644833, 46.267151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099033, 32.689194, 46.285950>,  <36.707176, 32.763130, 46.317284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099033, 32.689194, 46.285950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046404, 0.171144, -0.984153,
		0.195314, 0.967752, 0.159083,
		0.979642, -0.184837, -0.078335,
		37.392925, 32.633743, 46.262451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875492, 33.347580, 45.905148>,  <36.707176, 32.763130, 46.317284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875492, 33.347580, 45.905148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150036, 33.057369, 45.885017>,  <37.314762, 32.883244, 45.872940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150036, 33.057369, 45.885017>,  <36.875492, 33.347580, 45.905148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150036, 33.057369, 45.885017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087368, 0.150949, -0.984673,
		0.721998, 0.671440, 0.166992,
		0.686356, -0.725522, -0.050322,
		37.355942, 32.839714, 45.869923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338402, 33.587925, 45.451046>,  <36.875492, 33.347580, 45.905148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338402, 33.587925, 45.451046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417469, 33.197056, 45.482178>,  <37.464909, 32.962536, 45.500858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417469, 33.197056, 45.482178>,  <37.338402, 33.587925, 45.451046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417469, 33.197056, 45.482178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036534, -0.071996, -0.996735,
		0.979587, 0.199870, 0.021468,
		0.197672, -0.977174, 0.077829,
		37.476772, 32.903904, 45.505527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061272, 33.500919, 45.164131>,  <37.338402, 33.587925, 45.451046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061272, 33.500919, 45.164131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831852, 33.175301, 45.127544>,  <37.694199, 32.979931, 45.105591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831852, 33.175301, 45.127544>,  <38.061272, 33.500919, 45.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831852, 33.175301, 45.127544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177274, -0.014333, -0.984057,
		0.799758, -0.580621, 0.152530,
		-0.573551, -0.814048, -0.091466,
		37.659786, 32.931087, 45.100105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236568, 33.304150, 44.492317>,  <38.061272, 33.500919, 45.164131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236568, 33.304150, 44.492317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955704, 33.044823, 44.610069>,  <37.787186, 32.889225, 44.680721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955704, 33.044823, 44.610069>,  <38.236568, 33.304150, 44.492317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955704, 33.044823, 44.610069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070050, -0.348538, -0.934673,
		0.708568, -0.676909, 0.199314,
		-0.702157, -0.648318, 0.294380,
		37.745056, 32.850327, 44.698383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407787, 32.570225, 44.288055>,  <38.236568, 33.304150, 44.492317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407787, 32.570225, 44.288055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009338, 32.580547, 44.321682>,  <37.770267, 32.586742, 44.341858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009338, 32.580547, 44.321682>,  <38.407787, 32.570225, 44.288055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009338, 32.580547, 44.321682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085893, -0.490445, -0.867229,
		0.018847, -0.871090, 0.490762,
		-0.996126, 0.025809, 0.084063,
		37.710499, 32.588291, 44.346901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106735, 31.908072, 44.065174>,  <38.407787, 32.570225, 44.288055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106735, 31.908072, 44.065174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771896, 32.124237, 44.031170>,  <37.570995, 32.253937, 44.010769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771896, 32.124237, 44.031170>,  <38.106735, 31.908072, 44.065174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771896, 32.124237, 44.031170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129789, -0.347145, -0.928787,
		-0.531440, -0.766449, 0.360733,
		-0.837094, 0.540413, -0.085010,
		37.520767, 32.286362, 44.005669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678268, 31.504822, 43.693024>,  <38.106735, 31.908072, 44.065174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678268, 31.504822, 43.693024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523144, 31.870785, 43.648224>,  <37.430069, 32.090363, 43.621346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523144, 31.870785, 43.648224>,  <37.678268, 31.504822, 43.693024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523144, 31.870785, 43.648224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243335, -0.218823, -0.944936,
		-0.889038, -0.339207, 0.307492,
		-0.387815, 0.914907, -0.112001,
		37.406799, 32.145256, 43.614624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028107, 31.348541, 43.454514>,  <37.678268, 31.504822, 43.693024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028107, 31.348541, 43.454514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115063, 31.723410, 43.345371>,  <37.167236, 31.948330, 43.279884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115063, 31.723410, 43.345371>,  <37.028107, 31.348541, 43.454514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115063, 31.723410, 43.345371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307366, -0.199595, -0.930424,
		-0.926427, 0.286133, 0.244665,
		0.217391, 0.937171, -0.272858,
		37.180279, 32.004562, 43.263515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494972, 31.479879, 43.114918>,  <37.028107, 31.348541, 43.454514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494972, 31.479879, 43.114918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764660, 31.747452, 42.989723>,  <36.926472, 31.907995, 42.914608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764660, 31.747452, 42.989723>,  <36.494972, 31.479879, 43.114918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764660, 31.747452, 42.989723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311510, -0.126669, -0.941762,
		-0.669620, 0.732452, 0.122976,
		0.674218, 0.668932, -0.312986,
		36.966927, 31.948132, 42.895828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177631, 31.801455, 42.601231>,  <36.494972, 31.479879, 43.114918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177631, 31.801455, 42.601231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559189, 31.896168, 42.527454>,  <36.788124, 31.952995, 42.483189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559189, 31.896168, 42.527454>,  <36.177631, 31.801455, 42.601231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559189, 31.896168, 42.527454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143210, -0.180993, -0.973002,
		-0.263775, 0.954554, -0.138739,
		0.953894, 0.236785, -0.184443,
		36.845356, 31.967203, 42.472122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207897, 32.296329, 42.013580>,  <36.177631, 31.801455, 42.601231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207897, 32.296329, 42.013580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586975, 32.170757, 42.036629>,  <36.814423, 32.095413, 42.050457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586975, 32.170757, 42.036629>,  <36.207897, 32.296329, 42.013580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586975, 32.170757, 42.036629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033864, -0.080621, -0.996170,
		0.317377, 0.946016, -0.065773,
		0.947695, -0.313934, 0.057623,
		36.871284, 32.076576, 42.053917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616013, 32.712994, 41.552849>,  <36.207897, 32.296329, 42.013580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616013, 32.712994, 41.552849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828453, 32.377796, 41.602959>,  <36.955917, 32.176678, 41.633022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828453, 32.377796, 41.602959>,  <36.616013, 32.712994, 41.552849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828453, 32.377796, 41.602959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052182, -0.115218, -0.991969,
		0.845699, 0.533375, -0.017464,
		0.531103, -0.837995, 0.125273,
		36.987785, 32.126396, 41.640541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146049, 32.815502, 41.118729>,  <36.616013, 32.712994, 41.552849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146049, 32.815502, 41.118729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148460, 32.419811, 41.177242>,  <37.149906, 32.182396, 41.212353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148460, 32.419811, 41.177242>,  <37.146049, 32.815502, 41.118729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148460, 32.419811, 41.177242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199218, -0.142171, -0.969587,
		0.979937, 0.034985, 0.196214,
		0.006025, -0.989224, 0.146288,
		37.150269, 32.123043, 41.221130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719452, 32.549797, 40.811302>,  <37.146049, 32.815502, 41.118729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719452, 32.549797, 40.811302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439686, 32.264069, 40.820774>,  <37.271828, 32.092632, 40.826458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439686, 32.264069, 40.820774>,  <37.719452, 32.549797, 40.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439686, 32.264069, 40.820774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180055, -0.208168, -0.961377,
		0.691665, -0.668136, 0.274213,
		-0.699413, -0.714325, 0.023681,
		37.229862, 32.049770, 40.827877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104633, 31.979725, 40.647915>,  <37.719452, 32.549797, 40.811302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104633, 31.979725, 40.647915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725601, 31.896292, 40.551098>,  <37.498180, 31.846231, 40.493008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725601, 31.896292, 40.551098>,  <38.104633, 31.979725, 40.647915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725601, 31.896292, 40.551098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288934, -0.235975, -0.927811,
		0.136410, -0.949110, 0.283872,
		-0.947581, -0.208583, -0.242041,
		37.441326, 31.833717, 40.478485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134998, 31.488434, 40.225742>,  <38.104633, 31.979725, 40.647915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134998, 31.488434, 40.225742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758171, 31.594351, 40.143379>,  <37.532074, 31.657902, 40.093960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758171, 31.594351, 40.143379>,  <38.134998, 31.488434, 40.225742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758171, 31.594351, 40.143379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166417, -0.164027, -0.972317,
		-0.291238, -0.950252, 0.110458,
		-0.942064, 0.264793, -0.205909,
		37.475552, 31.673788, 40.081608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995178, 31.033175, 39.700008>,  <38.134998, 31.488434, 40.225742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995178, 31.033175, 39.700008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741722, 31.341476, 39.673363>,  <37.589649, 31.526459, 39.657375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741722, 31.341476, 39.673363>,  <37.995178, 31.033175, 39.700008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741722, 31.341476, 39.673363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084378, -0.016741, -0.996293,
		-0.769014, -0.636910, -0.054427,
		-0.633638, 0.770756, -0.066615,
		37.551632, 31.572702, 39.653378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566097, 30.781139, 39.208183>,  <37.995178, 31.033175, 39.700008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566097, 30.781139, 39.208183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484848, 31.172184, 39.230164>,  <37.436100, 31.406811, 39.243351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484848, 31.172184, 39.230164>,  <37.566097, 30.781139, 39.208183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484848, 31.172184, 39.230164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144540, 0.085443, -0.985803,
		-0.968427, -0.192294, -0.158659,
		-0.203120, 0.977611, 0.054951,
		37.423912, 31.465467, 39.246651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074326, 30.854460, 38.658497>,  <37.566097, 30.781139, 39.208183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074326, 30.854460, 38.658497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256554, 31.205484, 38.718285>,  <37.365891, 31.416100, 38.754158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256554, 31.205484, 38.718285>,  <37.074326, 30.854460, 38.658497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256554, 31.205484, 38.718285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036256, 0.149473, -0.988101,
		-0.889462, 0.455566, 0.036279,
		0.455568, 0.877563, 0.149468,
		37.393223, 31.468754, 38.763126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835644, 31.317081, 38.095123>,  <37.074326, 30.854460, 38.658497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835644, 31.317081, 38.095123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162273, 31.506405, 38.227291>,  <37.358253, 31.619999, 38.306591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162273, 31.506405, 38.227291>,  <36.835644, 31.317081, 38.095123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162273, 31.506405, 38.227291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188458, 0.322449, -0.927637,
		-0.545604, 0.819758, 0.174106,
		0.816578, 0.473310, 0.330419,
		37.407246, 31.648397, 38.326416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815765, 32.019646, 37.840290>,  <36.835644, 31.317081, 38.095123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815765, 32.019646, 37.840290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196777, 31.925289, 37.917271>,  <37.425385, 31.868675, 37.963459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196777, 31.925289, 37.917271>,  <36.815765, 32.019646, 37.840290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196777, 31.925289, 37.917271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266335, 0.339479, -0.902119,
		0.147467, 0.910555, 0.386191,
		0.952533, -0.235889, 0.192451,
		37.482536, 31.854523, 37.975006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171795, 32.418556, 37.342594>,  <36.815765, 32.019646, 37.840290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171795, 32.418556, 37.342594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480423, 32.204407, 37.480030>,  <37.665600, 32.075916, 37.562492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480423, 32.204407, 37.480030>,  <37.171795, 32.418556, 37.342594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480423, 32.204407, 37.480030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524808, 0.230453, -0.819431,
		0.359522, 0.812567, 0.458780,
		0.771570, -0.535375, 0.343589,
		37.711895, 32.043793, 37.583107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783852, 32.851669, 37.430794>,  <37.171795, 32.418556, 37.342594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783852, 32.851669, 37.430794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938602, 32.483120, 37.415871>,  <38.031456, 32.261990, 37.406918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938602, 32.483120, 37.415871>,  <37.783852, 32.851669, 37.430794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938602, 32.483120, 37.415871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674844, 0.310474, -0.669471,
		0.628417, 0.233828, 0.741901,
		0.386882, -0.921374, -0.037309,
		38.054668, 32.206707, 37.404678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468712, 32.924202, 37.555767>,  <37.783852, 32.851669, 37.430794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468712, 32.924202, 37.555767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419842, 32.572788, 37.371052>,  <38.390518, 32.361938, 37.260223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419842, 32.572788, 37.371052>,  <38.468712, 32.924202, 37.555767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419842, 32.572788, 37.371052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704044, 0.251235, -0.664231,
		0.699567, -0.406276, 0.587831,
		-0.122177, -0.878533, -0.461792,
		38.383190, 32.309227, 37.232513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077435, 32.572113, 37.542068>,  <38.468712, 32.924202, 37.555767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077435, 32.572113, 37.542068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868622, 32.421070, 37.236153>,  <38.743336, 32.330444, 37.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868622, 32.421070, 37.236153>,  <39.077435, 32.572113, 37.542068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868622, 32.421070, 37.236153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727569, 0.270798, -0.630327,
		0.445119, -0.885484, 0.133371,
		-0.522027, -0.377607, -0.764788,
		38.712013, 32.307789, 37.006718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672123, 32.460690, 37.103455>,  <39.077435, 32.572113, 37.542068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672123, 32.460690, 37.103455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371098, 32.379204, 36.852970>,  <39.190483, 32.330311, 36.702679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371098, 32.379204, 36.852970>,  <39.672123, 32.460690, 37.103455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371098, 32.379204, 36.852970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550715, 0.326678, -0.768111,
		0.361047, -0.922920, -0.133658,
		-0.752568, -0.203717, -0.626212,
		39.145329, 32.318089, 36.665108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885887, 31.915152, 36.518055>,  <39.672123, 32.460690, 37.103455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885887, 31.915152, 36.518055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574795, 32.147026, 36.420815>,  <39.388138, 32.286152, 36.362469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574795, 32.147026, 36.420815>,  <39.885887, 31.915152, 36.518055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574795, 32.147026, 36.420815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539575, 0.417247, -0.731275,
		-0.322477, -0.699907, -0.637290,
		-0.777732, 0.579685, -0.243100,
		39.341476, 32.320930, 36.347885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814907, 31.865110, 35.701611>,  <39.885887, 31.915152, 36.518055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814907, 31.865110, 35.701611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669724, 32.200577, 35.864044>,  <39.582611, 32.401855, 35.961502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669724, 32.200577, 35.864044>,  <39.814907, 31.865110, 35.701611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669724, 32.200577, 35.864044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433713, 0.537769, -0.722978,
		-0.824714, -0.086290, -0.558928,
		-0.362961, 0.838664, 0.406081,
		39.560837, 32.452175, 35.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273479, 32.142231, 35.322773>,  <39.814907, 31.865110, 35.701611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273479, 32.142231, 35.322773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551910, 32.347130, 35.524002>,  <39.718967, 32.470070, 35.644737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551910, 32.347130, 35.524002>,  <39.273479, 32.142231, 35.322773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551910, 32.347130, 35.524002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385921, 0.323908, -0.863799,
		-0.605430, 0.795414, 0.027776,
		0.696074, 0.512250, 0.503071,
		39.760735, 32.500805, 35.674923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168343, 32.702156, 35.133301>,  <39.273479, 32.142231, 35.322773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168343, 32.702156, 35.133301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552223, 32.685379, 35.244453>,  <39.782551, 32.675312, 35.311146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552223, 32.685379, 35.244453>,  <39.168343, 32.702156, 35.133301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552223, 32.685379, 35.244453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263780, 0.475480, -0.839249,
		-0.096928, 0.878726, 0.467381,
		0.959700, -0.041939, 0.277878,
		39.840134, 32.672798, 35.327816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562107, 33.321213, 34.970196>,  <39.168343, 32.702156, 35.133301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562107, 33.321213, 34.970196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881165, 33.080929, 34.991764>,  <40.072601, 32.936760, 35.004704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881165, 33.080929, 34.991764>,  <39.562107, 33.321213, 34.970196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881165, 33.080929, 34.991764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363481, 0.407450, -0.837775,
		0.481290, 0.687847, 0.543348,
		0.797648, -0.600709, 0.053917,
		40.120461, 32.900715, 35.007938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200531, 33.649433, 35.127338>,  <39.562107, 33.321213, 34.970196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200531, 33.649433, 35.127338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249420, 33.311947, 34.918262>,  <40.278755, 33.109455, 34.792816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249420, 33.311947, 34.918262>,  <40.200531, 33.649433, 35.127338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249420, 33.311947, 34.918262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286014, 0.534239, -0.795478,
		0.950398, -0.052270, 0.306611,
		0.122224, -0.843716, -0.522690,
		40.286087, 33.058830, 34.761456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927704, 33.589500, 35.052395>,  <40.200531, 33.649433, 35.127338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927704, 33.589500, 35.052395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705231, 33.427940, 34.761871>,  <40.571747, 33.331005, 34.587555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705231, 33.427940, 34.761871>,  <40.927704, 33.589500, 35.052395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705231, 33.427940, 34.761871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592198, 0.420543, -0.687346,
		0.583061, -0.812411, 0.005287,
		-0.556184, -0.403896, -0.726311,
		40.538376, 33.306770, 34.543980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332577, 33.065872, 34.695148>,  <40.927704, 33.589500, 35.052395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332577, 33.065872, 34.695148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059078, 33.237057, 34.458729>,  <40.894978, 33.339767, 34.316875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059078, 33.237057, 34.458729>,  <41.332577, 33.065872, 34.695148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059078, 33.237057, 34.458729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729201, 0.431213, -0.531340,
		0.027475, -0.794295, -0.606910,
		-0.683748, 0.427961, -0.591048,
		40.853954, 33.365444, 34.281414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496357, 32.967010, 33.940212>,  <41.332577, 33.065872, 34.695148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496357, 32.967010, 33.940212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260269, 33.289246, 33.960888>,  <41.118614, 33.482586, 33.973293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260269, 33.289246, 33.960888>,  <41.496357, 32.967010, 33.940212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260269, 33.289246, 33.960888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555040, 0.451485, -0.698636,
		-0.586149, -0.383659, -0.713608,
		-0.590221, 0.805585, 0.051692,
		41.083202, 33.530922, 33.976395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246277, 32.907238, 34.103725>,  <41.496357, 32.967010, 33.940212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246277, 32.907238, 34.103725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565449, 33.142811, 34.155056>,  <42.756950, 33.284153, 34.185856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565449, 33.142811, 34.155056>,  <42.246277, 32.907238, 34.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565449, 33.142811, 34.155056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542751, 0.609426, 0.577946,
		0.262161, -0.530813, 0.805922,
		0.797931, 0.588929, 0.128331,
		42.804829, 33.319489, 34.193554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255783, 32.945309, 34.755474>,  <42.246277, 32.907238, 34.103725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255783, 32.945309, 34.755474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456703, 33.263145, 34.619057>,  <42.577255, 33.453850, 34.537205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456703, 33.263145, 34.619057>,  <42.255783, 32.945309, 34.755474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456703, 33.263145, 34.619057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492487, 0.587083, 0.642488,
		0.710739, -0.154763, 0.686220,
		0.502302, 0.794595, -0.341044,
		42.607395, 33.501526, 34.516743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358059, 33.438663, 35.370529>,  <42.255783, 32.945309, 34.755474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358059, 33.438663, 35.370529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424553, 33.671871, 35.052422>,  <42.464451, 33.811794, 34.861557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424553, 33.671871, 35.052422>,  <42.358059, 33.438663, 35.370529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424553, 33.671871, 35.052422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494504, 0.747042, 0.444291,
		0.853130, 0.319406, 0.412491,
		0.166239, 0.583016, -0.795271,
		42.474426, 33.846775, 34.813839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465363, 34.056190, 35.715572>,  <42.358059, 33.438663, 35.370529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465363, 34.056190, 35.715572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383671, 34.141926, 35.333504>,  <42.334656, 34.193367, 35.104263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383671, 34.141926, 35.333504>,  <42.465363, 34.056190, 35.715572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383671, 34.141926, 35.333504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320549, 0.907300, 0.272130,
		0.924953, 0.361757, -0.116594,
		-0.204230, 0.214334, -0.955171,
		42.322403, 34.206226, 35.046951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784832, 34.704449, 35.553677>,  <42.465363, 34.056190, 35.715572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784832, 34.704449, 35.553677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503860, 34.669540, 35.271126>,  <42.335278, 34.648598, 35.101593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503860, 34.669540, 35.271126>,  <42.784832, 34.704449, 35.553677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503860, 34.669540, 35.271126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320255, 0.925066, 0.204179,
		0.635632, 0.369644, -0.677743,
		-0.702431, -0.087268, -0.706382,
		42.293133, 34.643360, 35.059212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763538, 35.303646, 35.140587>,  <42.784832, 34.704449, 35.553677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763538, 35.303646, 35.140587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401882, 35.152367, 35.061100>,  <42.184887, 35.061600, 35.013409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401882, 35.152367, 35.061100>,  <42.763538, 35.303646, 35.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401882, 35.152367, 35.061100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409408, 0.899934, 0.150015,
		0.122100, 0.216994, -0.968507,
		-0.904144, -0.378198, -0.198721,
		42.130638, 35.038906, 35.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418373, 35.720680, 34.598347>,  <42.763538, 35.303646, 35.140587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418373, 35.720680, 34.598347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149162, 35.524330, 34.819645>,  <41.987637, 35.406521, 34.952423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149162, 35.524330, 34.819645>,  <42.418373, 35.720680, 34.598347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149162, 35.524330, 34.819645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535208, 0.839498, 0.093784,
		-0.510483, -0.232982, -0.827724,
		-0.673023, -0.490880, 0.553243,
		41.947254, 35.377068, 34.985619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926804, 36.055202, 34.361572>,  <42.418373, 35.720680, 34.598347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926804, 36.055202, 34.361572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722492, 35.865295, 34.648262>,  <41.599903, 35.751350, 34.820278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722492, 35.865295, 34.648262>,  <41.926804, 36.055202, 34.361572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722492, 35.865295, 34.648262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611706, 0.786500, 0.085046,
		-0.604084, -0.394988, -0.692147,
		-0.510782, -0.474765, 0.716729,
		41.569256, 35.722866, 34.863281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235821, 36.220776, 34.251030>,  <41.926804, 36.055202, 34.361572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235821, 36.220776, 34.251030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239861, 36.102921, 34.633251>,  <41.242283, 36.032207, 34.862583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239861, 36.102921, 34.633251>,  <41.235821, 36.220776, 34.251030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239861, 36.102921, 34.633251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659651, 0.716215, 0.227808,
		-0.751504, -0.632633, -0.187126,
		0.010096, -0.294637, 0.955556,
		41.242889, 36.014530, 34.919918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503830, 36.253193, 34.565952>,  <41.235821, 36.220776, 34.251030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503830, 36.253193, 34.565952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740047, 36.266033, 34.888500>,  <40.881779, 36.273739, 35.082027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740047, 36.266033, 34.888500>,  <40.503830, 36.253193, 34.565952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740047, 36.266033, 34.888500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561830, 0.733641, 0.382252,
		-0.579313, -0.678778, 0.451283,
		0.590544, 0.032100, 0.806366,
		40.917210, 36.275665, 35.130409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037251, 36.283852, 35.203278>,  <40.503830, 36.253193, 34.565952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037251, 36.283852, 35.203278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393059, 36.420998, 35.324070>,  <40.606544, 36.503284, 35.396545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393059, 36.420998, 35.324070>,  <40.037251, 36.283852, 35.203278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393059, 36.420998, 35.324070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443724, 0.805817, 0.392132,
		-0.108895, -0.482807, 0.868930,
		0.889523, 0.342864, 0.301982,
		40.659916, 36.523857, 35.414665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897041, 36.455898, 35.924839>,  <40.037251, 36.283852, 35.203278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897041, 36.455898, 35.924839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226124, 36.651306, 35.808556>,  <40.423573, 36.768551, 35.738785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226124, 36.651306, 35.808556>,  <39.897041, 36.455898, 35.924839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226124, 36.651306, 35.808556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420296, 0.867041, 0.267564,
		0.382768, -0.097941, 0.918638,
		0.822703, 0.488515, -0.290711,
		40.472935, 36.797859, 35.721344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071377, 36.971172, 36.439472>,  <39.897041, 36.455898, 35.924839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071377, 36.971172, 36.439472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276901, 37.107399, 36.124508>,  <40.400215, 37.189137, 35.935532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276901, 37.107399, 36.124508>,  <40.071377, 36.971172, 36.439472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276901, 37.107399, 36.124508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307120, 0.930020, 0.201843,
		0.801045, 0.138119, 0.582452,
		0.513813, 0.340567, -0.787407,
		40.431046, 37.209568, 35.888287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583549, 37.532654, 36.637775>,  <40.071377, 36.971172, 36.439472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583549, 37.532654, 36.637775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514984, 37.607475, 36.250862>,  <40.473846, 37.652367, 36.018715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514984, 37.607475, 36.250862>,  <40.583549, 37.532654, 36.637775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514984, 37.607475, 36.250862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221071, 0.949471, 0.222783,
		0.960076, 0.252025, -0.121399,
		-0.171411, 0.187051, -0.967280,
		40.463562, 37.663589, 35.960678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020195, 38.055241, 36.477406>,  <40.583549, 37.532654, 36.637775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020195, 38.055241, 36.477406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778461, 38.085194, 36.160122>,  <40.633423, 38.103165, 35.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778461, 38.085194, 36.160122>,  <41.020195, 38.055241, 36.477406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778461, 38.085194, 36.160122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193970, 0.951789, 0.237641,
		0.772761, 0.297472, -0.560670,
		-0.604331, 0.074887, -0.793206,
		40.597160, 38.107658, 35.922161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188911, 38.706482, 36.070198>,  <41.020195, 38.055241, 36.477406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188911, 38.706482, 36.070198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816944, 38.611591, 35.957779>,  <40.593765, 38.554657, 35.890327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816944, 38.611591, 35.957779>,  <41.188911, 38.706482, 36.070198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816944, 38.611591, 35.957779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273997, 0.956606, 0.099147,
		0.245329, 0.169203, -0.954560,
		-0.929914, -0.237223, -0.281044,
		40.537971, 38.540424, 35.873466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976765, 39.125416, 35.494099>,  <41.188911, 38.706482, 36.070198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976765, 39.125416, 35.494099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630939, 39.015099, 35.662128>,  <40.423443, 38.948910, 35.762947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630939, 39.015099, 35.662128>,  <40.976765, 39.125416, 35.494099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630939, 39.015099, 35.662128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364777, 0.919394, -0.147148,
		-0.345633, -0.280453, -0.895480,
		-0.864567, -0.275791, 0.420075,
		40.371571, 38.932362, 35.788151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514446, 39.340759, 35.071308>,  <40.976765, 39.125416, 35.494099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514446, 39.340759, 35.071308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301830, 39.291496, 35.406521>,  <40.174259, 39.261940, 35.607647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301830, 39.291496, 35.406521>,  <40.514446, 39.340759, 35.071308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301830, 39.291496, 35.406521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364208, 0.926475, -0.094853,
		-0.764734, -0.355636, -0.537312,
		-0.531539, -0.123156, 0.838033,
		40.142368, 39.254551, 35.657932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978519, 39.794655, 34.917076>,  <40.514446, 39.340759, 35.071308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978519, 39.794655, 34.917076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929489, 39.707581, 35.304394>,  <39.900070, 39.655334, 35.536785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929489, 39.707581, 35.304394>,  <39.978519, 39.794655, 34.917076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929489, 39.707581, 35.304394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450924, 0.881346, 0.141055,
		-0.884105, -0.419335, -0.206194,
		-0.122579, -0.217686, 0.968291,
		39.892715, 39.642273, 35.594879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309502, 40.010246, 35.083309>,  <39.978519, 39.794655, 34.917076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309502, 40.010246, 35.083309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495270, 40.000641, 35.437424>,  <39.606731, 39.994877, 35.649895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495270, 40.000641, 35.437424>,  <39.309502, 40.010246, 35.083309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495270, 40.000641, 35.437424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228729, 0.962465, 0.146095,
		-0.855568, -0.270341, 0.441498,
		0.464421, -0.024011, 0.885289,
		39.634598, 39.993439, 35.703011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026402, 40.129929, 35.879387>,  <39.309502, 40.010246, 35.083309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026402, 40.129929, 35.879387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401127, 40.266834, 35.850414>,  <39.625961, 40.348976, 35.833031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401127, 40.266834, 35.850414>,  <39.026402, 40.129929, 35.879387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401127, 40.266834, 35.850414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318995, 0.920708, 0.224811,
		0.143633, -0.187499, 0.971707,
		0.936809, 0.342260, -0.072432,
		39.682171, 40.369511, 35.828686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836826, 40.792889, 36.012878>,  <39.026402, 40.129929, 35.879387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836826, 40.792889, 36.012878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232002, 40.775585, 35.953396>,  <39.469109, 40.765205, 35.917706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232002, 40.775585, 35.953396>,  <38.836826, 40.792889, 36.012878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232002, 40.775585, 35.953396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056056, 0.994973, 0.082993,
		0.144367, -0.090327, 0.985393,
		0.987936, -0.043256, -0.148704,
		39.528381, 40.762608, 35.908783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257980, 41.197544, 36.529362>,  <38.836826, 40.792889, 36.012878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257980, 41.197544, 36.529362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421013, 41.163250, 36.165707>,  <39.518833, 41.142673, 35.947514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421013, 41.163250, 36.165707>,  <39.257980, 41.197544, 36.529362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421013, 41.163250, 36.165707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229153, 0.973329, 0.010941,
		0.883951, -0.212791, 0.416353,
		0.407577, -0.085737, -0.909137,
		39.543285, 41.137527, 35.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973106, 41.344448, 36.562073>,  <39.257980, 41.197544, 36.529362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973106, 41.344448, 36.562073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806190, 41.429752, 36.208714>,  <39.706039, 41.480934, 35.996700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806190, 41.429752, 36.208714>,  <39.973106, 41.344448, 36.562073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806190, 41.429752, 36.208714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475742, 0.879498, -0.012406,
		0.774299, -0.425445, -0.468463,
		-0.417290, 0.213262, -0.883396,
		39.681004, 41.493732, 35.943695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504307, 41.576015, 36.058170>,  <39.973106, 41.344448, 36.562073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504307, 41.576015, 36.058170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156384, 41.742237, 35.951782>,  <39.947628, 41.841972, 35.887951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156384, 41.742237, 35.951782>,  <40.504307, 41.576015, 36.058170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156384, 41.742237, 35.951782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466564, 0.868095, -0.169495,
		0.160454, -0.271521, -0.948963,
		-0.869811, 0.415556, -0.265972,
		39.895439, 41.866905, 35.871990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638435, 42.107475, 35.574837>,  <40.504307, 41.576015, 36.058170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638435, 42.107475, 35.574837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283665, 42.247208, 35.695717>,  <40.070801, 42.331047, 35.768246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283665, 42.247208, 35.695717>,  <40.638435, 42.107475, 35.574837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283665, 42.247208, 35.695717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328069, 0.936971, -0.120234,
		-0.325152, -0.007497, -0.945632,
		-0.886931, 0.349327, 0.302198,
		40.017586, 42.352005, 35.786377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270847, 41.887215, 34.858353>,  <40.638435, 42.107475, 35.574837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270847, 41.887215, 34.858353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396912, 41.533978, 34.719318>,  <40.472549, 41.322033, 34.635899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396912, 41.533978, 34.719318>,  <40.270847, 41.887215, 34.858353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396912, 41.533978, 34.719318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204231, -0.294562, 0.933554,
		-0.926804, -0.365206, 0.087522,
		0.315159, -0.883096, -0.347588,
		40.491459, 41.269051, 34.615044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014114, 41.719273, 34.770203>,  <40.270847, 41.887215, 34.858353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014114, 41.719273, 34.770203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291462, 41.874229, 35.013241>,  <41.457870, 41.967201, 35.159065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291462, 41.874229, 35.013241>,  <41.014114, 41.719273, 34.770203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291462, 41.874229, 35.013241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386313, -0.911622, 0.140381,
		0.608280, 0.137387, -0.781741,
		0.693367, 0.387388, 0.607596,
		41.499474, 41.990444, 35.195518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712292, 41.767262, 34.481792>,  <41.014114, 41.719273, 34.770203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712292, 41.767262, 34.481792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679573, 41.694824, 34.873814>,  <41.659943, 41.651360, 35.109028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679573, 41.694824, 34.873814>,  <41.712292, 41.767262, 34.481792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679573, 41.694824, 34.873814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532533, -0.839150, -0.110614,
		0.842447, 0.512865, 0.165081,
		-0.081798, -0.181098, 0.980057,
		41.655033, 41.640495, 35.167831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065586, 41.082073, 34.496258>,  <41.712292, 41.767262, 34.481792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065586, 41.082073, 34.496258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920364, 41.158539, 34.861038>,  <41.833233, 41.204418, 35.079906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920364, 41.158539, 34.861038>,  <42.065586, 41.082073, 34.496258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920364, 41.158539, 34.861038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355834, -0.876101, 0.325314,
		0.861147, 0.442608, 0.250047,
		-0.363053, 0.191168, 0.911947,
		41.811447, 41.215889, 35.134621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563549, 41.295506, 34.911163>,  <42.065586, 41.082073, 34.496258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563549, 41.295506, 34.911163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284016, 41.076805, 35.095638>,  <42.116295, 40.945583, 35.206322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284016, 41.076805, 35.095638>,  <42.563549, 41.295506, 34.911163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284016, 41.076805, 35.095638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693533, -0.675727, 0.249810,
		0.175052, 0.494423, 0.851412,
		-0.698834, -0.546752, 0.461186,
		42.074364, 40.912781, 35.233994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869331, 40.978756, 35.618416>,  <42.563549, 41.295506, 34.911163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869331, 40.978756, 35.618416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557346, 40.771225, 35.478428>,  <42.370155, 40.646706, 35.394436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557346, 40.771225, 35.478428>,  <42.869331, 40.978756, 35.618416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557346, 40.771225, 35.478428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420045, -0.848534, 0.321796,
		-0.463919, 0.103984, 0.879754,
		-0.779962, -0.518823, -0.349973,
		42.323357, 40.615578, 35.373436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539406, 40.597099, 36.160904>,  <42.869331, 40.978756, 35.618416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539406, 40.597099, 36.160904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456703, 40.424332, 35.809746>,  <42.407082, 40.320671, 35.599052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456703, 40.424332, 35.809746>,  <42.539406, 40.597099, 36.160904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456703, 40.424332, 35.809746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333989, -0.874542, 0.351608,
		-0.919620, -0.220508, 0.325077,
		-0.206761, -0.431918, -0.877893,
		42.394676, 40.294758, 35.546379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335484, 39.957611, 36.381115>,  <42.539406, 40.597099, 36.160904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335484, 39.957611, 36.381115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416489, 39.906155, 35.992798>,  <42.465092, 39.875282, 35.759808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416489, 39.906155, 35.992798>,  <42.335484, 39.957611, 36.381115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416489, 39.906155, 35.992798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416709, -0.885784, 0.204304,
		-0.886203, -0.445908, -0.125742,
		0.202481, -0.128657, -0.970798,
		42.477245, 39.867561, 35.701561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240383, 39.249813, 36.363087>,  <42.335484, 39.957611, 36.381115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240383, 39.249813, 36.363087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440269, 39.350498, 36.031563>,  <42.560200, 39.410912, 35.832649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440269, 39.350498, 36.031563>,  <42.240383, 39.249813, 36.363087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440269, 39.350498, 36.031563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338282, -0.937571, -0.080787,
		-0.797404, -0.240002, -0.553667,
		0.499712, 0.251715, -0.828811,
		42.590183, 39.426014, 35.782921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024517, 38.756062, 35.811024>,  <42.240383, 39.249813, 36.363087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024517, 38.756062, 35.811024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385178, 38.897888, 35.711979>,  <42.601574, 38.982983, 35.652554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385178, 38.897888, 35.711979>,  <42.024517, 38.756062, 35.811024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385178, 38.897888, 35.711979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325514, -0.933369, -0.151203,
		-0.284725, 0.055731, -0.956988,
		0.901650, 0.354565, -0.247612,
		42.655674, 39.004257, 35.637695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163715, 38.452667, 35.221188>,  <42.024517, 38.756062, 35.811024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163715, 38.452667, 35.221188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502831, 38.584473, 35.387409>,  <42.706299, 38.663555, 35.487141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502831, 38.584473, 35.387409>,  <42.163715, 38.452667, 35.221188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502831, 38.584473, 35.387409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423646, -0.892140, -0.156874,
		0.319039, 0.309043, -0.895939,
		0.847784, 0.329512, 0.415553,
		42.757164, 38.683327, 35.512074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660255, 38.211067, 34.788502>,  <42.163715, 38.452667, 35.221188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660255, 38.211067, 34.788502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844341, 38.291134, 35.134480>,  <42.954792, 38.339172, 35.342068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844341, 38.291134, 35.134480>,  <42.660255, 38.211067, 34.788502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844341, 38.291134, 35.134480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513466, -0.854792, -0.075387,
		0.724260, 0.478816, -0.496168,
		0.460217, 0.200165, 0.864947,
		42.982407, 38.351185, 35.393963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371113, 37.992107, 34.675301>,  <42.660255, 38.211067, 34.788502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371113, 37.992107, 34.675301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344673, 38.017929, 35.073589>,  <43.328808, 38.033424, 35.312561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344673, 38.017929, 35.073589>,  <43.371113, 37.992107, 34.675301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344673, 38.017929, 35.073589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608914, -0.787940, 0.091508,
		0.790477, 0.612358, 0.012776,
		-0.066103, 0.064556, 0.995722,
		43.324841, 38.037296, 35.372307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977802, 37.875145, 34.873035>,  <43.371113, 37.992107, 34.675301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977802, 37.875145, 34.873035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765953, 37.793526, 35.202366>,  <43.638844, 37.744556, 35.399963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765953, 37.793526, 35.202366>,  <43.977802, 37.875145, 34.873035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765953, 37.793526, 35.202366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591625, -0.784423, 0.186170,
		0.607850, 0.585701, 0.536165,
		-0.529620, -0.204045, 0.823327,
		43.607067, 37.732311, 35.449364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469334, 37.795193, 35.382877>,  <43.977802, 37.875145, 34.873035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469334, 37.795193, 35.382877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142956, 37.607250, 35.517620>,  <43.947128, 37.494484, 35.598465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142956, 37.607250, 35.517620>,  <44.469334, 37.795193, 35.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142956, 37.607250, 35.517620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528840, -0.842013, 0.106503,
		0.233600, 0.265045, 0.935512,
		-0.815941, -0.469856, 0.336860,
		43.898174, 37.466293, 35.618679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750107, 37.370712, 35.913452>,  <44.469334, 37.795193, 35.382877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750107, 37.370712, 35.913452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388222, 37.243744, 35.799789>,  <44.171093, 37.167561, 35.731590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388222, 37.243744, 35.799789>,  <44.750107, 37.370712, 35.913452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388222, 37.243744, 35.799789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328391, -0.944494, 0.009525,
		-0.271408, -0.084698, 0.958730,
		-0.904708, -0.317423, -0.284157,
		44.116810, 37.148518, 35.714542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499378, 36.815964, 36.353237>,  <44.750107, 37.370712, 35.913452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499378, 36.815964, 36.353237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307114, 36.752934, 36.008183>,  <44.191757, 36.715115, 35.801151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307114, 36.752934, 36.008183>,  <44.499378, 36.815964, 36.353237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307114, 36.752934, 36.008183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303269, -0.952892, 0.005082,
		-0.822797, -0.259167, 0.505804,
		-0.480659, -0.157576, -0.862634,
		44.162914, 36.705662, 35.749393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162601, 36.129627, 36.387108>,  <44.499378, 36.815964, 36.353237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162601, 36.129627, 36.387108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162407, 36.211315, 35.995537>,  <44.162289, 36.260326, 35.760593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162407, 36.211315, 35.995537>,  <44.162601, 36.129627, 36.387108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162407, 36.211315, 35.995537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126404, -0.971061, -0.202640,
		-0.991979, -0.123839, -0.025337,
		-0.000491, 0.204218, -0.978925,
		44.162258, 36.272579, 35.701859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758469, 35.554623, 36.138184>,  <44.162601, 36.129627, 36.387108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758469, 35.554623, 36.138184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928200, 35.717796, 35.814816>,  <44.030037, 35.815701, 35.620796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928200, 35.717796, 35.814816>,  <43.758469, 35.554623, 36.138184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928200, 35.717796, 35.814816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110093, -0.909395, -0.401098,
		-0.898791, 0.081196, -0.430792,
		0.424327, 0.407931, -0.808417,
		44.055496, 35.840176, 35.572289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370510, 35.274353, 35.629040>,  <43.758469, 35.554623, 36.138184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370510, 35.274353, 35.629040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731853, 35.395134, 35.507210>,  <43.948658, 35.467602, 35.434113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731853, 35.395134, 35.507210>,  <43.370510, 35.274353, 35.629040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731853, 35.395134, 35.507210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129291, -0.868847, -0.477900,
		-0.408934, 0.392336, -0.823921,
		0.903358, 0.301955, -0.304576,
		44.002861, 35.485722, 35.415836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422997, 35.075470, 34.861416>,  <43.370510, 35.274353, 35.629040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422997, 35.075470, 34.861416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797745, 35.136139, 34.987450>,  <44.022594, 35.172539, 35.063068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797745, 35.136139, 34.987450>,  <43.422997, 35.075470, 34.861416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797745, 35.136139, 34.987450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297672, -0.818738, -0.490978,
		0.183503, 0.553772, -0.812197,
		0.936866, 0.151672, 0.315083,
		44.078804, 35.181641, 35.081974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835255, 35.013508, 34.357544>,  <43.422997, 35.075470, 34.861416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835255, 35.013508, 34.357544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091122, 34.952885, 34.658970>,  <44.244640, 34.916512, 34.839825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091122, 34.952885, 34.658970>,  <43.835255, 35.013508, 34.357544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091122, 34.952885, 34.658970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351825, -0.813916, -0.462341,
		0.683409, 0.560867, -0.467312,
		0.639665, -0.151556, 0.753565,
		44.283020, 34.907417, 34.885040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540493, 34.980701, 33.933186>,  <43.835255, 35.013508, 34.357544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540493, 34.980701, 33.933186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534431, 34.811142, 34.295418>,  <44.530792, 34.709408, 34.512756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534431, 34.811142, 34.295418>,  <44.540493, 34.980701, 33.933186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534431, 34.811142, 34.295418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334258, -0.855730, -0.394965,
		0.942360, 0.296713, 0.154660,
		-0.015156, -0.423895, 0.905584,
		44.529884, 34.683975, 34.567093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198421, 34.732281, 34.082001>,  <44.540493, 34.980701, 33.933186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198421, 34.732281, 34.082001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966053, 34.513634, 34.323242>,  <44.826630, 34.382446, 34.467987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966053, 34.513634, 34.323242>,  <45.198421, 34.732281, 34.082001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966053, 34.513634, 34.323242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387470, -0.837326, -0.385683,
		0.715818, 0.009634, 0.698220,
		-0.580923, -0.546618, 0.603106,
		44.791775, 34.349648, 34.504173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662521, 34.287987, 34.341061>,  <45.198421, 34.732281, 34.082001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662521, 34.287987, 34.341061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316906, 34.112637, 34.440071>,  <45.109539, 34.007427, 34.499477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316906, 34.112637, 34.440071>,  <45.662521, 34.287987, 34.341061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316906, 34.112637, 34.440071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385845, -0.892466, -0.233728,
		0.323366, -0.106445, 0.940268,
		-0.864036, -0.438377, 0.247522,
		45.057693, 33.981125, 34.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748512, 33.768990, 34.847061>,  <45.662521, 34.287987, 34.341061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748512, 33.768990, 34.847061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434708, 33.697868, 34.609432>,  <45.246426, 33.655197, 34.466854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434708, 33.697868, 34.609432>,  <45.748512, 33.768990, 34.847061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434708, 33.697868, 34.609432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455147, -0.815760, -0.356898,
		-0.421165, -0.550383, 0.720901,
		-0.784513, -0.177803, -0.594075,
		45.199352, 33.644527, 34.431210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427307, 34.220566, 34.691322>,  <45.748512, 33.768990, 34.847061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427307, 34.220566, 34.691322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720425, 34.167831, 34.958344>,  <46.896297, 34.136192, 35.118557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720425, 34.167831, 34.958344>,  <46.427307, 34.220566, 34.691322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720425, 34.167831, 34.958344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404815, 0.873016, -0.271970,
		-0.546932, 0.469535, 0.693111,
		0.732796, -0.131833, 0.667555,
		46.940262, 34.128281, 35.158611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673138, 34.843315, 35.082382>,  <46.427307, 34.220566, 34.691322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673138, 34.843315, 35.082382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993092, 34.605343, 35.050785>,  <47.185062, 34.462559, 35.031826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993092, 34.605343, 35.050785>,  <46.673138, 34.843315, 35.082382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993092, 34.605343, 35.050785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581566, 0.800871, -0.142779,
		0.148204, 0.068269, 0.986598,
		0.799885, -0.594932, -0.078989,
		47.233059, 34.426865, 35.027088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274212, 35.027977, 35.635406>,  <46.673138, 34.843315, 35.082382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274212, 35.027977, 35.635406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.364529, 34.896263, 35.268673>,  <47.418720, 34.817234, 35.048634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.364529, 34.896263, 35.268673>,  <47.274212, 35.027977, 35.635406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.364529, 34.896263, 35.268673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465962, 0.863006, -0.195195,
		0.855510, -0.383138, 0.348293,
		0.225792, -0.329282, -0.916838,
		47.432266, 34.797478, 34.993622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.993679, 35.029774, 35.419441>,  <47.274212, 35.027977, 35.635406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.993679, 35.029774, 35.419441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781361, 35.070026, 35.082840>,  <47.653969, 35.094177, 34.880878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781361, 35.070026, 35.082840>,  <47.993679, 35.029774, 35.419441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.781361, 35.070026, 35.082840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274583, 0.959787, -0.058421,
		0.801787, -0.262072, -0.537080,
		-0.530793, 0.100632, -0.841505,
		47.622124, 35.100216, 34.830387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.183136, 38.492111, 44.450176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803535, 38.369270, 44.421635>,  <36.575775, 38.295567, 44.404510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803535, 38.369270, 44.421635>,  <37.183136, 38.492111, 44.450176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803535, 38.369270, 44.421635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037589, 0.114510, -0.992711,
		0.313036, -0.944762, -0.097126,
		-0.948997, -0.307103, -0.071358,
		36.518837, 38.277138, 44.400227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119553, 37.832829, 44.006798>,  <37.183136, 38.492111, 44.450176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119553, 37.832829, 44.006798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767170, 38.018742, 43.971268>,  <36.555740, 38.130287, 43.949951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767170, 38.018742, 43.971268>,  <37.119553, 37.832829, 44.006798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767170, 38.018742, 43.971268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033510, -0.125966, -0.991468,
		-0.472004, -0.876420, 0.095396,
		-0.880959, 0.464780, -0.088825,
		36.502884, 38.158176, 43.944618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773228, 37.525257, 43.464424>,  <37.119553, 37.832829, 44.006798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773228, 37.525257, 43.464424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542015, 37.848213, 43.511757>,  <36.403286, 38.041988, 43.540157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542015, 37.848213, 43.511757>,  <36.773228, 37.525257, 43.464424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542015, 37.848213, 43.511757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186224, 0.010666, -0.982450,
		-0.794482, -0.589922, 0.144190,
		-0.578031, 0.807390, 0.118331,
		36.368607, 38.090431, 43.547256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065239, 37.409645, 43.062950>,  <36.773228, 37.525257, 43.464424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065239, 37.409645, 43.062950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091869, 37.807365, 43.096237>,  <36.107849, 38.045998, 43.116211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091869, 37.807365, 43.096237>,  <36.065239, 37.409645, 43.062950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091869, 37.807365, 43.096237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353243, 0.101492, -0.930010,
		-0.933160, 0.032522, 0.357988,
		0.066579, 0.994305, 0.083220,
		36.111843, 38.105656, 43.121204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386204, 37.666042, 42.793472>,  <36.065239, 37.409645, 43.062950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386204, 37.666042, 42.793472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665958, 37.950691, 42.766792>,  <35.833813, 38.121479, 42.750786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665958, 37.950691, 42.766792>,  <35.386204, 37.666042, 42.793472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665958, 37.950691, 42.766792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186709, 0.091820, -0.978115,
		-0.689922, 0.696538, 0.197084,
		0.699390, 0.711621, -0.066702,
		35.875774, 38.164177, 42.746780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078636, 38.107082, 42.353214>,  <35.386204, 37.666042, 42.793472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078636, 38.107082, 42.353214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454605, 38.242027, 42.332298>,  <35.680187, 38.322994, 42.319748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454605, 38.242027, 42.332298>,  <35.078636, 38.107082, 42.353214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454605, 38.242027, 42.332298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088008, 0.091443, -0.991914,
		-0.329856, 0.936922, 0.115640,
		0.939920, 0.337366, -0.052293,
		35.736580, 38.343239, 42.316608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149963, 38.614544, 41.837440>,  <35.078636, 38.107082, 42.353214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149963, 38.614544, 41.837440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539368, 38.538517, 41.888275>,  <35.773010, 38.492901, 41.918774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539368, 38.538517, 41.888275>,  <35.149963, 38.614544, 41.837440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539368, 38.538517, 41.888275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112795, -0.084234, -0.990041,
		0.198883, 0.978150, -0.060563,
		0.973510, -0.190071, 0.127083,
		35.831421, 38.481495, 41.926399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491825, 39.006439, 41.277042>,  <35.149963, 38.614544, 41.837440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491825, 39.006439, 41.277042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704597, 38.689960, 41.397739>,  <35.832260, 38.500072, 41.470158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704597, 38.689960, 41.397739>,  <35.491825, 39.006439, 41.277042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704597, 38.689960, 41.397739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150011, -0.262657, -0.953157,
		0.833394, 0.552279, -0.021027,
		0.531931, -0.791201, 0.301745,
		35.864178, 38.452599, 41.488262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124405, 38.979103, 40.885117>,  <35.491825, 39.006439, 41.277042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124405, 38.979103, 40.885117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099781, 38.611950, 41.041939>,  <36.085007, 38.391659, 41.136032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099781, 38.611950, 41.041939>,  <36.124405, 38.979103, 40.885117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099781, 38.611950, 41.041939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382140, -0.384545, -0.840294,
		0.922052, 0.098095, 0.374430,
		-0.061557, -0.917879, 0.392056,
		36.081314, 38.336586, 41.159557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807503, 38.587646, 40.939571>,  <36.124405, 38.979103, 40.885117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807503, 38.587646, 40.939571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514900, 38.315361, 40.923889>,  <36.339340, 38.151989, 40.914478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514900, 38.315361, 40.923889>,  <36.807503, 38.587646, 40.939571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514900, 38.315361, 40.923889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403970, -0.386357, -0.829178,
		0.549282, -0.622384, 0.557608,
		-0.731503, -0.680710, -0.039206,
		36.295448, 38.111149, 40.912128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136036, 38.045677, 40.774017>,  <36.807503, 38.587646, 40.939571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136036, 38.045677, 40.774017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758537, 37.937370, 40.698101>,  <36.532036, 37.872387, 40.652550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758537, 37.937370, 40.698101>,  <37.136036, 38.045677, 40.774017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758537, 37.937370, 40.698101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303337, -0.480495, -0.822867,
		0.131612, -0.834152, 0.535601,
		-0.943750, -0.270768, -0.189790,
		36.475410, 37.856140, 40.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116356, 37.291534, 40.561489>,  <37.136036, 38.045677, 40.774017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116356, 37.291534, 40.561489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760708, 37.416523, 40.427727>,  <36.547318, 37.491516, 40.347469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760708, 37.416523, 40.427727>,  <37.116356, 37.291534, 40.561489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760708, 37.416523, 40.427727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119054, -0.547604, -0.828225,
		-0.441919, -0.776203, 0.449684,
		-0.889120, 0.312472, -0.334407,
		36.493973, 37.510265, 40.327404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907673, 36.771137, 40.159767>,  <37.116356, 37.291534, 40.561489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907673, 36.771137, 40.159767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659992, 37.061493, 40.039978>,  <36.511383, 37.235706, 39.968105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659992, 37.061493, 40.039978>,  <36.907673, 36.771137, 40.159767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659992, 37.061493, 40.039978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029983, -0.359243, -0.932762,
		-0.784661, -0.586545, 0.200679,
		-0.619200, 0.725885, -0.299470,
		36.474232, 37.279259, 39.950138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497738, 36.441582, 39.589046>,  <36.907673, 36.771137, 40.159767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497738, 36.441582, 39.589046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477551, 36.830444, 39.497517>,  <36.465439, 37.063763, 39.442600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477551, 36.830444, 39.497517>,  <36.497738, 36.441582, 39.589046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477551, 36.830444, 39.497517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124898, -0.221172, -0.967204,
		-0.990885, -0.077394, -0.110258,
		-0.050470, 0.972159, -0.228822,
		36.462410, 37.122093, 39.428871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993694, 36.487617, 39.041416>,  <36.497738, 36.441582, 39.589046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993694, 36.487617, 39.041416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203327, 36.828285, 39.040154>,  <36.329105, 37.032684, 39.039394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203327, 36.828285, 39.040154>,  <35.993694, 36.487617, 39.041416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203327, 36.828285, 39.040154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113896, -0.073757, -0.990751,
		-0.844020, 0.518871, -0.135655,
		0.524078, 0.851665, -0.003155,
		36.360550, 37.083786, 39.039207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665359, 36.907158, 38.524609>,  <35.993694, 36.487617, 39.041416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665359, 36.907158, 38.524609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040512, 37.036610, 38.574627>,  <36.265606, 37.114281, 38.604637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040512, 37.036610, 38.574627>,  <35.665359, 36.907158, 38.524609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040512, 37.036610, 38.574627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145717, -0.040345, -0.988503,
		-0.314861, 0.945325, -0.084997,
		0.937886, 0.323626, 0.125047,
		36.321877, 37.133698, 38.612141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808006, 37.157410, 37.899075>,  <35.665359, 36.907158, 38.524609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808006, 37.157410, 37.899075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179859, 37.176342, 38.045254>,  <36.402969, 37.187702, 38.132961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179859, 37.176342, 38.045254>,  <35.808006, 37.157410, 37.899075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179859, 37.176342, 38.045254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368475, -0.108089, -0.923333,
		-0.004199, 0.993014, -0.117922,
		0.929628, 0.047328, 0.365447,
		36.458748, 37.190540, 38.154888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165119, 37.611126, 37.409405>,  <35.808006, 37.157410, 37.899075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165119, 37.611126, 37.409405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468582, 37.435314, 37.601761>,  <36.650658, 37.329826, 37.717175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468582, 37.435314, 37.601761>,  <36.165119, 37.611126, 37.409405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468582, 37.435314, 37.601761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476752, -0.128518, -0.869592,
		0.444014, 0.888987, 0.112046,
		0.758656, -0.439529, 0.480890,
		36.696178, 37.303455, 37.746029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776791, 37.849388, 37.017780>,  <36.165119, 37.611126, 37.409405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776791, 37.849388, 37.017780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852024, 37.502792, 37.202740>,  <36.897163, 37.294834, 37.313717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852024, 37.502792, 37.202740>,  <36.776791, 37.849388, 37.017780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852024, 37.502792, 37.202740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379046, -0.370287, -0.848063,
		0.906061, 0.334781, 0.258794,
		0.188087, -0.866492, 0.462400,
		36.908451, 37.242844, 37.341461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497425, 37.712959, 36.806194>,  <36.776791, 37.849388, 37.017780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497425, 37.712959, 36.806194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338509, 37.367256, 36.929623>,  <37.243160, 37.159832, 37.003677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338509, 37.367256, 36.929623>,  <37.497425, 37.712959, 36.806194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338509, 37.367256, 36.929623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356909, -0.455289, -0.815676,
		0.845444, -0.213931, 0.489345,
		-0.397292, -0.864260, 0.308568,
		37.219322, 37.107979, 37.022194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033180, 37.158825, 36.649910>,  <37.497425, 37.712959, 36.806194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033180, 37.158825, 36.649910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.672546, 36.992653, 36.698166>,  <37.456165, 36.892948, 36.727119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.672546, 36.992653, 36.698166>,  <38.033180, 37.158825, 36.649910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672546, 36.992653, 36.698166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156225, -0.572734, -0.804717,
		0.403403, -0.706675, 0.581271,
		-0.901587, -0.415434, 0.120643,
		37.402069, 36.868023, 36.734360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951809, 36.286007, 36.718399>,  <38.033180, 37.158825, 36.649910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951809, 36.286007, 36.718399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603252, 36.422665, 36.577568>,  <37.394119, 36.504662, 36.493069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603252, 36.422665, 36.577568>,  <37.951809, 36.286007, 36.718399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603252, 36.422665, 36.577568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104814, -0.571434, -0.813927,
		-0.479262, -0.746151, 0.462133,
		-0.871391, 0.341646, -0.352074,
		37.341835, 36.525158, 36.471947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137589, 35.616413, 36.801056>,  <37.951809, 36.286007, 36.718399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137589, 35.616413, 36.801056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472584, 35.439590, 36.672550>,  <38.673580, 35.333496, 36.595448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472584, 35.439590, 36.672550>,  <38.137589, 35.616413, 36.801056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472584, 35.439590, 36.672550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329622, -0.060249, 0.942188,
		-0.435855, -0.894962, 0.095253,
		0.837484, -0.442055, -0.321260,
		38.723827, 35.306973, 36.576172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282005, 35.133724, 37.268234>,  <38.137589, 35.616413, 36.801056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282005, 35.133724, 37.268234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635101, 35.151505, 37.081127>,  <38.846958, 35.162170, 36.968864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635101, 35.151505, 37.081127>,  <38.282005, 35.133724, 37.268234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635101, 35.151505, 37.081127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469548, -0.120320, 0.874670,
		-0.017406, -0.991740, -0.127080,
		0.882736, 0.044445, -0.467763,
		38.899921, 35.164837, 36.940800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725979, 34.636890, 37.587719>,  <38.282005, 35.133724, 37.268234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725979, 34.636890, 37.587719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006496, 34.891945, 37.460220>,  <39.174809, 35.044979, 37.383720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006496, 34.891945, 37.460220>,  <38.725979, 34.636890, 37.587719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006496, 34.891945, 37.460220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401200, 0.016565, 0.915841,
		0.589255, -0.770158, -0.244203,
		0.701297, 0.637638, -0.318748,
		39.216885, 35.083237, 37.364597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261570, 34.497742, 37.974087>,  <38.725979, 34.636890, 37.587719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261570, 34.497742, 37.974087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368801, 34.855019, 37.829674>,  <39.433140, 35.069386, 37.743027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368801, 34.855019, 37.829674>,  <39.261570, 34.497742, 37.974087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368801, 34.855019, 37.829674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245080, 0.299190, 0.922183,
		0.931702, -0.335700, -0.138696,
		0.268080, 0.893191, -0.361030,
		39.449226, 35.122974, 37.721363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856110, 34.580658, 38.271141>,  <39.261570, 34.497742, 37.974087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856110, 34.580658, 38.271141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723774, 34.943314, 38.166412>,  <39.644371, 35.160908, 38.103577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723774, 34.943314, 38.166412>,  <39.856110, 34.580658, 38.271141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723774, 34.943314, 38.166412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216360, 0.342926, 0.914106,
		0.918549, 0.245778, -0.309615,
		-0.330842, 0.906639, -0.261818,
		39.624523, 35.215305, 38.087868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422371, 34.988270, 38.428253>,  <39.856110, 34.580658, 38.271141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422371, 34.988270, 38.428253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091217, 35.211166, 38.402679>,  <39.892525, 35.344902, 38.387337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091217, 35.211166, 38.402679>,  <40.422371, 34.988270, 38.428253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091217, 35.211166, 38.402679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201600, 0.401995, 0.893173,
		0.523413, 0.726556, -0.445146,
		-0.827887, 0.557240, -0.063935,
		39.842850, 35.378338, 38.383499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674297, 35.552113, 38.937939>,  <40.422371, 34.988270, 38.428253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674297, 35.552113, 38.937939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.283108, 35.599094, 38.868919>,  <40.048393, 35.627285, 38.827507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.283108, 35.599094, 38.868919>,  <40.674297, 35.552113, 38.937939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283108, 35.599094, 38.868919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113925, 0.392291, 0.912759,
		0.174897, 0.912311, -0.370269,
		-0.977974, 0.117456, -0.172545,
		39.989716, 35.634331, 38.817154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450920, 36.207584, 39.076073>,  <40.674297, 35.552113, 38.937939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450920, 36.207584, 39.076073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086639, 36.045296, 39.107090>,  <39.868073, 35.947922, 39.125702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086639, 36.045296, 39.107090>,  <40.450920, 36.207584, 39.076073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086639, 36.045296, 39.107090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175064, 0.549150, 0.817182,
		-0.374129, 0.730635, -0.571139,
		-0.910703, -0.405718, 0.077545,
		39.813427, 35.923580, 39.130352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006287, 36.781406, 39.391014>,  <40.450920, 36.207584, 39.076073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006287, 36.781406, 39.391014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788845, 36.449730, 39.443069>,  <39.658379, 36.250725, 39.474304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788845, 36.449730, 39.443069>,  <40.006287, 36.781406, 39.391014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788845, 36.449730, 39.443069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184823, 0.269495, 0.945099,
		-0.818741, 0.489707, -0.299752,
		-0.543603, -0.829192, 0.130137,
		39.625763, 36.200974, 39.482109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454052, 37.022919, 39.614098>,  <40.006287, 36.781406, 39.391014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454052, 37.022919, 39.614098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.404305, 36.641891, 39.725201>,  <39.374454, 36.413277, 39.791862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.404305, 36.641891, 39.725201>,  <39.454052, 37.022919, 39.614098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404305, 36.641891, 39.725201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227209, 0.299832, 0.926540,
		-0.965871, 0.052126, -0.253723,
		-0.124371, -0.952567, 0.277755,
		39.366993, 36.356121, 39.808529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828476, 37.007587, 39.921028>,  <39.454052, 37.022919, 39.614098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828476, 37.007587, 39.921028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043991, 36.698158, 40.054470>,  <39.173302, 36.512501, 40.134533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043991, 36.698158, 40.054470>,  <38.828476, 37.007587, 39.921028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043991, 36.698158, 40.054470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198586, 0.268211, 0.942670,
		-0.818698, -0.574152, -0.009111,
		0.538792, -0.773571, 0.333603,
		39.205627, 36.466087, 40.154552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463703, 36.813179, 40.469604>,  <38.828476, 37.007587, 39.921028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463703, 36.813179, 40.469604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822453, 36.650425, 40.538944>,  <39.037704, 36.552773, 40.580547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822453, 36.650425, 40.538944>,  <38.463703, 36.813179, 40.469604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822453, 36.650425, 40.538944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149888, 0.089131, 0.984677,
		-0.416105, -0.909119, 0.018952,
		0.896878, -0.406889, 0.173354,
		39.091515, 36.528358, 40.590950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341248, 36.198223, 40.872948>,  <38.463703, 36.813179, 40.469604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341248, 36.198223, 40.872948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.696445, 36.363125, 40.954445>,  <38.909565, 36.462067, 41.003342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.696445, 36.363125, 40.954445>,  <38.341248, 36.198223, 40.872948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696445, 36.363125, 40.954445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286740, 0.150009, 0.946191,
		0.359509, -0.898634, 0.251417,
		0.887994, 0.412255, 0.203744,
		38.962845, 36.486801, 41.015568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732693, 35.827122, 41.447144>,  <38.341248, 36.198223, 40.872948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732693, 35.827122, 41.447144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846558, 36.210320, 41.433231>,  <38.914879, 36.440239, 41.424885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846558, 36.210320, 41.433231>,  <38.732693, 35.827122, 41.447144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846558, 36.210320, 41.433231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056191, 0.052891, 0.997018,
		0.956979, -0.281863, 0.068887,
		0.284666, 0.957996, -0.034777,
		38.931957, 36.497719, 41.422798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200058, 35.931934, 41.994766>,  <38.732693, 35.827122, 41.447144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200058, 35.931934, 41.994766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128075, 36.316322, 41.910725>,  <39.084885, 36.546955, 41.860298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128075, 36.316322, 41.910725>,  <39.200058, 35.931934, 41.994766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128075, 36.316322, 41.910725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016565, 0.210605, 0.977431,
		0.983534, 0.179380, -0.021982,
		-0.179961, 0.960973, -0.210109,
		39.074085, 36.604614, 41.847691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692539, 36.375748, 42.373833>,  <39.200058, 35.931934, 41.994766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692539, 36.375748, 42.373833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375507, 36.614685, 42.324848>,  <39.185287, 36.758049, 42.295456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375507, 36.614685, 42.324848>,  <39.692539, 36.375748, 42.373833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375507, 36.614685, 42.324848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023657, 0.230810, 0.972711,
		0.609311, 0.768053, -0.197066,
		-0.792579, 0.597345, -0.122465,
		39.137733, 36.793888, 42.288109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829552, 36.984570, 42.778568>,  <39.692539, 36.375748, 42.373833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829552, 36.984570, 42.778568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434834, 36.975014, 42.714481>,  <39.198002, 36.969280, 42.676029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434834, 36.975014, 42.714481>,  <39.829552, 36.984570, 42.778568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434834, 36.975014, 42.714481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161702, 0.204339, 0.965452,
		0.009675, 0.978609, -0.205503,
		-0.986792, -0.023890, -0.160220,
		39.138794, 36.967846, 42.666416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567722, 37.651104, 43.073460>,  <39.829552, 36.984570, 42.778568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567722, 37.651104, 43.073460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253368, 37.407608, 43.029972>,  <39.064754, 37.261509, 43.003880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.253368, 37.407608, 43.029972>,  <39.567722, 37.651104, 43.073460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253368, 37.407608, 43.029972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321908, 0.252618, 0.912447,
		-0.527978, 0.752076, -0.394488,
		-0.785884, -0.608741, -0.108722,
		39.017605, 37.224987, 42.997356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.984718, 38.009556, 43.284977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909897, 37.616722, 43.294094>,  <38.865002, 37.381023, 43.299564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909897, 37.616722, 43.294094>,  <38.984718, 38.009556, 43.284977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909897, 37.616722, 43.294094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359944, 0.090109, 0.928612,
		-0.914030, 0.165499, -0.370351,
		-0.187056, -0.982085, 0.022791,
		38.853779, 37.322098, 43.300930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405197, 37.956711, 43.613323>,  <38.984718, 38.009556, 43.284977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405197, 37.956711, 43.613323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.536724, 37.583805, 43.673676>,  <38.615643, 37.360062, 43.709888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.536724, 37.583805, 43.673676>,  <38.405197, 37.956711, 43.613323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536724, 37.583805, 43.673676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456363, -0.016980, 0.889632,
		-0.826808, -0.361385, -0.431033,
		0.328819, -0.932262, 0.150884,
		38.635368, 37.304127, 43.718941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823116, 37.599323, 43.933575>,  <38.405197, 37.956711, 43.613323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823116, 37.599323, 43.933575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143681, 37.369251, 43.999199>,  <38.336018, 37.231209, 44.038574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143681, 37.369251, 43.999199>,  <37.823116, 37.599323, 43.933575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143681, 37.369251, 43.999199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367408, -0.256964, 0.893858,
		-0.471973, -0.776619, -0.417258,
		0.801407, -0.575180, 0.164056,
		38.384102, 37.196697, 44.048416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585026, 36.925873, 44.225967>,  <37.823116, 37.599323, 43.933575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585026, 36.925873, 44.225967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968788, 36.960999, 44.333176>,  <38.199043, 36.982075, 44.397499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968788, 36.960999, 44.333176>,  <37.585026, 36.925873, 44.225967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968788, 36.960999, 44.333176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244836, -0.212408, 0.946012,
		0.140004, -0.973227, -0.182285,
		0.959403, 0.087815, 0.268019,
		38.256611, 36.987343, 44.413582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682507, 36.364471, 44.705322>,  <37.585026, 36.925873, 44.225967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682507, 36.364471, 44.705322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990925, 36.608749, 44.777473>,  <38.175976, 36.755318, 44.820763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990925, 36.608749, 44.777473>,  <37.682507, 36.364471, 44.705322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990925, 36.608749, 44.777473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087306, -0.179201, 0.979931,
		0.630764, -0.771321, -0.084855,
		0.771047, 0.610697, 0.180374,
		38.222240, 36.791958, 44.831585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163204, 36.010227, 45.254147>,  <37.682507, 36.364471, 44.705322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163204, 36.010227, 45.254147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254116, 36.399452, 45.238720>,  <38.308662, 36.632988, 45.229462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254116, 36.399452, 45.238720>,  <38.163204, 36.010227, 45.254147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254116, 36.399452, 45.238720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096542, 0.016898, 0.995185,
		0.969031, -0.229913, -0.090101,
		0.227283, 0.973064, -0.038571,
		38.322300, 36.691372, 45.227150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731022, 35.988800, 45.570477>,  <38.163204, 36.010227, 45.254147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731022, 35.988800, 45.570477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589920, 36.362457, 45.592148>,  <38.505260, 36.586651, 45.605152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589920, 36.362457, 45.592148>,  <38.731022, 35.988800, 45.570477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589920, 36.362457, 45.592148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160199, 0.003243, 0.987079,
		0.921900, 0.356878, -0.150793,
		-0.352755, 0.934145, 0.054182,
		38.484093, 36.642700, 45.608402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205021, 36.327557, 45.971012>,  <38.731022, 35.988800, 45.570477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205021, 36.327557, 45.971012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875320, 36.553696, 45.983616>,  <38.677498, 36.689377, 45.991177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875320, 36.553696, 45.983616>,  <39.205021, 36.327557, 45.971012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875320, 36.553696, 45.983616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084013, 0.067073, 0.994205,
		0.559955, 0.822123, -0.102781,
		-0.824253, 0.565345, 0.031511,
		38.628044, 36.723301, 45.993069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291706, 37.052197, 46.358177>,  <39.205021, 36.327557, 45.971012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291706, 37.052197, 46.358177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904129, 36.960484, 46.395222>,  <38.671581, 36.905457, 46.417450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904129, 36.960484, 46.395222>,  <39.291706, 37.052197, 46.358177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904129, 36.960484, 46.395222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047475, 0.195077, 0.979638,
		-0.242678, 0.953612, -0.178133,
		-0.968944, -0.229280, 0.092614,
		38.613445, 36.891701, 46.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230415, 37.296532, 47.092167>,  <39.291706, 37.052197, 46.358177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230415, 37.296532, 47.092167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888134, 37.112617, 46.997204>,  <38.682766, 37.002270, 46.940224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888134, 37.112617, 46.997204>,  <39.230415, 37.296532, 47.092167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888134, 37.112617, 46.997204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250188, -0.034001, 0.967600,
		-0.452963, 0.887377, -0.085939,
		-0.855704, -0.459788, -0.237412,
		38.631424, 36.974682, 46.925980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769138, 37.683334, 47.529087>,  <39.230415, 37.296532, 47.092167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769138, 37.683334, 47.529087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627365, 37.324631, 47.423111>,  <38.542301, 37.109409, 47.359528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627365, 37.324631, 47.423111>,  <38.769138, 37.683334, 47.529087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627365, 37.324631, 47.423111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353751, -0.133680, 0.925738,
		-0.865584, 0.421836, -0.269850,
		-0.354436, -0.896763, -0.264936,
		38.521034, 37.055603, 47.343632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186424, 37.643944, 47.900131>,  <38.769138, 37.683334, 47.529087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186424, 37.643944, 47.900131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282356, 37.264954, 47.815498>,  <38.339916, 37.037560, 47.764721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282356, 37.264954, 47.815498>,  <38.186424, 37.643944, 47.900131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282356, 37.264954, 47.815498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367466, -0.290322, 0.883562,
		-0.898582, -0.134156, -0.417794,
		0.239830, -0.947478, -0.211580,
		38.354305, 36.980709, 47.752026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741722, 37.297386, 48.263447>,  <38.186424, 37.643944, 47.900131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741722, 37.297386, 48.263447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992744, 36.994789, 48.189800>,  <38.143356, 36.813232, 48.145611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992744, 36.994789, 48.189800>,  <37.741722, 37.297386, 48.263447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992744, 36.994789, 48.189800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280223, -0.440094, 0.853107,
		-0.726395, -0.483777, -0.488169,
		0.627554, -0.756489, -0.184117,
		38.181011, 36.767841, 48.134563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336472, 36.717274, 48.456852>,  <37.741722, 37.297386, 48.263447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336472, 36.717274, 48.456852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717827, 36.596581, 48.455963>,  <37.946640, 36.524166, 48.455429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717827, 36.596581, 48.455963>,  <37.336472, 36.717274, 48.456852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717827, 36.596581, 48.455963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146525, -0.469389, 0.870749,
		-0.263775, -0.829839, -0.491722,
		0.953391, -0.301732, -0.002221,
		38.003845, 36.506062, 48.455296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294777, 35.999203, 48.536106>,  <37.336472, 36.717274, 48.456852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294777, 35.999203, 48.536106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633476, 36.123142, 48.709080>,  <37.836697, 36.197506, 48.812866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633476, 36.123142, 48.709080>,  <37.294777, 35.999203, 48.536106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633476, 36.123142, 48.709080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214081, -0.545684, 0.810184,
		0.487012, -0.778601, -0.395726,
		0.846752, 0.309852, 0.432439,
		37.887501, 36.216099, 48.838810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389416, 35.515968, 49.073826>,  <37.294777, 35.999203, 48.536106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389416, 35.515968, 49.073826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666931, 35.784992, 49.176834>,  <37.833439, 35.946407, 49.238640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666931, 35.784992, 49.176834>,  <37.389416, 35.515968, 49.073826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666931, 35.784992, 49.176834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109771, -0.254649, 0.960783,
		0.711766, -0.694847, -0.102844,
		0.693786, 0.672563, 0.257525,
		37.875069, 35.986763, 49.254093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859829, 35.137783, 49.453156>,  <37.389416, 35.515968, 49.073826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859829, 35.137783, 49.453156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.961140, 35.503891, 49.578461>,  <38.021927, 35.723557, 49.653645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.961140, 35.503891, 49.578461>,  <37.859829, 35.137783, 49.453156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961140, 35.503891, 49.578461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045125, -0.312290, 0.948914,
		0.966342, -0.254470, -0.037793,
		0.253272, 0.915270, 0.313262,
		38.037121, 35.778473, 49.672440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285866, 35.063137, 50.048298>,  <37.859829, 35.137783, 49.453156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285866, 35.063137, 50.048298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154922, 35.438843, 50.089497>,  <38.076355, 35.664268, 50.114216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154922, 35.438843, 50.089497>,  <38.285866, 35.063137, 50.048298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154922, 35.438843, 50.089497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188111, -0.171609, 0.967039,
		0.925985, 0.297196, 0.232865,
		-0.327362, 0.939268, 0.103001,
		38.056713, 35.720623, 50.120396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514187, 35.236305, 50.719269>,  <38.285866, 35.063137, 50.048298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514187, 35.236305, 50.719269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204556, 35.462906, 50.606220>,  <38.018776, 35.598866, 50.538391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204556, 35.462906, 50.606220>,  <38.514187, 35.236305, 50.719269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204556, 35.462906, 50.606220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351075, -0.012622, 0.936262,
		0.526828, 0.823963, 0.208656,
		-0.774079, 0.566503, -0.282623,
		37.972332, 35.632858, 50.521435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428555, 35.686100, 51.303802>,  <38.514187, 35.236305, 50.719269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428555, 35.686100, 51.303802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073170, 35.707317, 51.121456>,  <37.859940, 35.720047, 51.012047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073170, 35.707317, 51.121456>,  <38.428555, 35.686100, 51.303802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073170, 35.707317, 51.121456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458286, -0.155770, 0.875048,
		-0.024594, 0.986368, 0.162706,
		-0.888464, 0.053045, -0.455870,
		37.806629, 35.723232, 50.984695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034714, 36.019711, 51.730762>,  <38.428555, 35.686100, 51.303802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034714, 36.019711, 51.730762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782932, 35.822083, 51.490868>,  <37.631863, 35.703506, 51.346931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782932, 35.822083, 51.490868>,  <38.034714, 36.019711, 51.730762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782932, 35.822083, 51.490868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540861, -0.275576, 0.794687,
		-0.557904, 0.824592, -0.093762,
		-0.629454, -0.494071, -0.599735,
		37.594097, 35.673862, 51.310947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504910, 36.160816, 52.213680>,  <38.034714, 36.019711, 51.730762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504910, 36.160816, 52.213680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243790, 36.080574, 51.921486>,  <37.087116, 36.032429, 51.746170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243790, 36.080574, 51.921486>,  <37.504910, 36.160816, 52.213680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243790, 36.080574, 51.921486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750040, 0.035886, 0.660418,
		-0.106267, 0.979015, -0.173887,
		-0.652799, -0.200603, -0.730487,
		37.047951, 36.020393, 51.702339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914619, 36.587551, 52.236050>,  <37.504910, 36.160816, 52.213680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914619, 36.587551, 52.236050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777451, 36.258034, 52.055485>,  <36.695148, 36.060326, 51.947147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777451, 36.258034, 52.055485>,  <36.914619, 36.587551, 52.236050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777451, 36.258034, 52.055485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742568, -0.056588, 0.667375,
		-0.575322, 0.564063, -0.592316,
		-0.342923, -0.823791, -0.451412,
		36.674572, 36.010895, 51.920063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263100, 36.690182, 52.111355>,  <36.914619, 36.587551, 52.236050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263100, 36.690182, 52.111355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340996, 36.305805, 52.190002>,  <36.387733, 36.075180, 52.237190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340996, 36.305805, 52.190002>,  <36.263100, 36.690182, 52.111355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340996, 36.305805, 52.190002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669194, 0.016393, 0.742907,
		-0.717116, -0.276252, -0.639866,
		0.194740, -0.960945, 0.196622,
		36.399418, 36.017521, 52.248989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871151, 37.359276, 52.303818>,  <36.263100, 36.690182, 52.111355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871151, 37.359276, 52.303818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520554, 37.551838, 52.303387>,  <35.310196, 37.667377, 52.303127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520554, 37.551838, 52.303387>,  <35.871151, 37.359276, 52.303818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520554, 37.551838, 52.303387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042724, -0.080023, -0.995877,
		-0.479511, -0.872835, 0.090707,
		-0.876495, 0.481409, -0.001081,
		35.257607, 37.696262, 52.303062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286907, 36.919567, 52.065460>,  <35.871151, 37.359276, 52.303818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286907, 36.919567, 52.065460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209988, 37.303185, 51.982262>,  <35.163834, 37.533356, 51.932343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209988, 37.303185, 51.982262>,  <35.286907, 36.919567, 52.065460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209988, 37.303185, 51.982262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080933, -0.195734, -0.977312,
		-0.977993, -0.204774, -0.039978,
		-0.192303, 0.959039, -0.207999,
		35.152298, 37.590897, 51.919861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919300, 36.862217, 51.389973>,  <35.286907, 36.919567, 52.065460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919300, 36.862217, 51.389973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025463, 37.246136, 51.426540>,  <35.089161, 37.476486, 51.448483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025463, 37.246136, 51.426540>,  <34.919300, 36.862217, 51.389973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025463, 37.246136, 51.426540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163111, 0.138155, -0.976887,
		-0.950240, 0.244356, 0.193220,
		0.265403, 0.959793, 0.091423,
		35.105083, 37.534073, 51.453968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478298, 37.120731, 51.056705>,  <34.919300, 36.862217, 51.389973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478298, 37.120731, 51.056705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750313, 37.413799, 51.067654>,  <34.913521, 37.589642, 51.074223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750313, 37.413799, 51.067654>,  <34.478298, 37.120731, 51.056705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750313, 37.413799, 51.067654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111957, 0.140656, -0.983708,
		-0.724583, 0.665891, 0.177678,
		0.680034, 0.732670, 0.027366,
		34.954323, 37.633602, 51.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200897, 37.633808, 50.688515>,  <34.478298, 37.120731, 51.056705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200897, 37.633808, 50.688515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592812, 37.713749, 50.685074>,  <34.827961, 37.761711, 50.683010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592812, 37.713749, 50.685074>,  <34.200897, 37.633808, 50.688515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592812, 37.713749, 50.685074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055628, 0.230902, -0.971386,
		-0.192142, 0.952232, 0.237352,
		0.979789, 0.199848, -0.008605,
		34.886749, 37.773705, 50.682491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178242, 38.134197, 50.208805>,  <34.200897, 37.633808, 50.688515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178242, 38.134197, 50.208805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557259, 38.006378, 50.211578>,  <34.784668, 37.929688, 50.213242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557259, 38.006378, 50.211578>,  <34.178242, 38.134197, 50.208805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557259, 38.006378, 50.211578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083522, 0.226615, -0.970397,
		0.308513, 0.920075, 0.241417,
		0.947546, -0.319544, 0.006933,
		34.841522, 37.910515, 50.213657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541172, 38.541866, 49.687695>,  <34.178242, 38.134197, 50.208805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541172, 38.541866, 49.687695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.781406, 38.228855, 49.753353>,  <34.925549, 38.041046, 49.792747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.781406, 38.228855, 49.753353>,  <34.541172, 38.541866, 49.687695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781406, 38.228855, 49.753353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252865, -0.008868, -0.967461,
		0.758522, 0.622550, 0.192548,
		0.600586, -0.782529, 0.164148,
		34.961582, 37.994095, 49.802597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237625, 38.751709, 49.404949>,  <34.541172, 38.541866, 49.687695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237625, 38.751709, 49.404949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227570, 38.353397, 49.440281>,  <35.221535, 38.114410, 49.461479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227570, 38.353397, 49.440281>,  <35.237625, 38.751709, 49.404949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227570, 38.353397, 49.440281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432061, -0.090498, -0.897292,
		0.901494, 0.015606, 0.432510,
		-0.025138, -0.995774, 0.088326,
		35.220028, 38.054665, 49.466778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871670, 38.478085, 49.144176>,  <35.237625, 38.751709, 49.404949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871670, 38.478085, 49.144176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643639, 38.150906, 49.113262>,  <35.506821, 37.954597, 49.094711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643639, 38.150906, 49.113262>,  <35.871670, 38.478085, 49.144176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643639, 38.150906, 49.113262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389124, -0.185951, -0.902222,
		0.723601, -0.544408, 0.424290,
		-0.570074, -0.817950, -0.077287,
		35.472618, 37.905521, 49.090076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291435, 37.958916, 48.937378>,  <35.871670, 38.478085, 49.144176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291435, 37.958916, 48.937378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923470, 37.849289, 48.825207>,  <35.702690, 37.783512, 48.757904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923470, 37.849289, 48.825207>,  <36.291435, 37.958916, 48.937378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923470, 37.849289, 48.825207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359297, -0.302731, -0.882757,
		0.157042, -0.912820, 0.376959,
		-0.919915, -0.274070, -0.280432,
		35.647495, 37.767067, 48.741077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412632, 37.452248, 48.573170>,  <36.291435, 37.958916, 48.937378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412632, 37.452248, 48.573170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048641, 37.555927, 48.443703>,  <35.830246, 37.618134, 48.366024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048641, 37.555927, 48.443703>,  <36.412632, 37.452248, 48.573170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048641, 37.555927, 48.443703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281327, -0.187521, -0.941112,
		-0.304631, -0.947444, 0.097720,
		-0.909975, 0.259201, -0.323666,
		35.775650, 37.633686, 48.346603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170193, 36.917572, 48.163906>,  <36.412632, 37.452248, 48.573170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170193, 36.917572, 48.163906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.939285, 37.224941, 48.053421>,  <35.800743, 37.409363, 47.987129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.939285, 37.224941, 48.053421>,  <36.170193, 36.917572, 48.163906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939285, 37.224941, 48.053421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244420, -0.160152, -0.956353,
		-0.779117, -0.619582, -0.095367,
		-0.577265, 0.768421, -0.276216,
		35.766106, 37.455467, 47.970558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834114, 36.657536, 47.604328>,  <36.170193, 36.917572, 48.163906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834114, 36.657536, 47.604328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807999, 37.054871, 47.566338>,  <35.792328, 37.293270, 47.543545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807999, 37.054871, 47.566338>,  <35.834114, 36.657536, 47.604328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807999, 37.054871, 47.566338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145143, -0.084710, -0.985778,
		-0.987254, -0.078147, -0.138645,
		-0.065291, 0.993336, -0.094973,
		35.788410, 37.352871, 47.537846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512142, 36.824566, 46.988297>,  <35.834114, 36.657536, 47.604328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512142, 36.824566, 46.988297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713924, 37.158352, 47.077007>,  <35.834995, 37.358624, 47.130234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713924, 37.158352, 47.077007>,  <35.512142, 36.824566, 46.988297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713924, 37.158352, 47.077007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351401, 0.036207, -0.935525,
		-0.788697, 0.549863, -0.274969,
		0.504455, 0.834470, 0.221778,
		35.865261, 37.408691, 47.143539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167809, 37.308903, 46.547607>,  <35.512142, 36.824566, 46.988297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167809, 37.308903, 46.547607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517372, 37.466957, 46.660851>,  <35.727112, 37.561790, 46.728798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517372, 37.466957, 46.660851>,  <35.167809, 37.308903, 46.547607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517372, 37.466957, 46.660851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233097, 0.170431, -0.957402,
		-0.426553, 0.902675, 0.056836,
		0.873909, 0.395135, 0.283109,
		35.779545, 37.585499, 46.745785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119213, 37.892796, 46.363346>,  <35.167809, 37.308903, 46.547607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119213, 37.892796, 46.363346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510544, 37.812832, 46.384933>,  <35.745342, 37.764854, 46.397884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510544, 37.812832, 46.384933>,  <35.119213, 37.892796, 46.363346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510544, 37.812832, 46.384933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117761, 0.322795, -0.939114,
		0.170318, 0.925116, 0.339341,
		0.978327, -0.199909, 0.053964,
		35.804043, 37.752857, 46.401123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382118, 38.489182, 46.213039>,  <35.119213, 37.892796, 46.363346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382118, 38.489182, 46.213039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648445, 38.198296, 46.146286>,  <35.808239, 38.023766, 46.106232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648445, 38.198296, 46.146286>,  <35.382118, 38.489182, 46.213039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648445, 38.198296, 46.146286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137402, 0.339353, -0.930570,
		0.733357, 0.596656, 0.325867,
		0.665814, -0.727215, -0.166886,
		35.848190, 37.980129, 46.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666565, 38.832806, 45.683075>,  <35.382118, 38.489182, 46.213039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666565, 38.832806, 45.683075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853977, 38.483925, 45.626869>,  <35.966423, 38.274597, 45.593147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853977, 38.483925, 45.626869>,  <35.666565, 38.832806, 45.683075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853977, 38.483925, 45.626869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302395, 0.307775, -0.902126,
		0.830083, 0.380182, 0.407951,
		0.468530, -0.872202, -0.140514,
		35.994537, 38.222263, 45.584717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197258, 39.040604, 45.368118>,  <35.666565, 38.832806, 45.683075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197258, 39.040604, 45.368118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191208, 38.648972, 45.286961>,  <36.187580, 38.413990, 45.238266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191208, 38.648972, 45.286961>,  <36.197258, 39.040604, 45.368118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191208, 38.648972, 45.286961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371377, 0.182903, -0.910289,
		0.928359, -0.089117, 0.360843,
		-0.015123, -0.979083, -0.202896,
		36.186672, 38.355247, 45.226093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897602, 38.895515, 45.118122>,  <36.197258, 39.040604, 45.368118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897602, 38.895515, 45.118122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632923, 38.623158, 44.992565>,  <36.474113, 38.459743, 44.917233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632923, 38.623158, 44.992565>,  <36.897602, 38.895515, 45.118122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632923, 38.623158, 44.992565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287360, 0.156370, -0.944972,
		0.692514, -0.715489, 0.092193,
		-0.661701, -0.680899, -0.313892,
		36.434414, 38.418888, 44.898399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.483791, 40.626781, 36.528374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118320, 40.518520, 36.407089>,  <39.899036, 40.453564, 36.334320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118320, 40.518520, 36.407089>,  <40.483791, 40.626781, 36.528374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118320, 40.518520, 36.407089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315781, -0.942394, -0.110343,
		-0.255879, -0.196566, 0.946513,
		-0.913678, -0.270656, -0.303211,
		39.844215, 40.437325, 36.316128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178310, 39.988239, 36.872841>,  <40.483791, 40.626781, 36.528374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178310, 39.988239, 36.872841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.976994, 39.978268, 36.527340>,  <39.856205, 39.972282, 36.320038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.976994, 39.978268, 36.527340>,  <40.178310, 39.988239, 36.872841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976994, 39.978268, 36.527340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217263, -0.971124, -0.098563,
		-0.836356, -0.237268, 0.494178,
		-0.503294, -0.024933, -0.863755,
		39.826004, 39.970787, 36.268211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836063, 39.406170, 36.877655>,  <40.178310, 39.988239, 36.872841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836063, 39.406170, 36.877655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838985, 39.480057, 36.484550>,  <39.840736, 39.524387, 36.248688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838985, 39.480057, 36.484550>,  <39.836063, 39.406170, 36.877655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838985, 39.480057, 36.484550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123434, -0.975441, -0.182422,
		-0.992326, -0.119974, -0.029923,
		0.007303, 0.184716, -0.982765,
		39.841175, 39.535473, 36.189720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311260, 38.996750, 36.607594>,  <39.836063, 39.406170, 36.877655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311260, 38.996750, 36.607594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.570187, 39.067436, 36.311012>,  <39.725544, 39.109848, 36.133064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.570187, 39.067436, 36.311012>,  <39.311260, 38.996750, 36.607594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570187, 39.067436, 36.311012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034345, -0.978526, -0.203240,
		-0.761444, 0.106097, -0.639489,
		0.647320, 0.176719, -0.741449,
		39.764381, 39.120453, 36.088577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184666, 38.517780, 36.079735>,  <39.311260, 38.996750, 36.607594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184666, 38.517780, 36.079735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555008, 38.648140, 36.003231>,  <39.777214, 38.726357, 35.957329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555008, 38.648140, 36.003231>,  <39.184666, 38.517780, 36.079735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555008, 38.648140, 36.003231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272469, -0.926466, -0.259655,
		-0.261819, 0.188290, -0.946571,
		0.925857, 0.325894, -0.191263,
		39.832764, 38.745907, 35.945850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288418, 38.221016, 35.526253>,  <39.184666, 38.517780, 36.079735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288418, 38.221016, 35.526253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.660797, 38.307697, 35.643810>,  <39.884224, 38.359707, 35.714344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.660797, 38.307697, 35.643810>,  <39.288418, 38.221016, 35.526253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660797, 38.307697, 35.643810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299705, -0.913243, -0.275979,
		0.208594, 0.345005, -0.915129,
		0.930949, 0.216701, 0.293897,
		39.940083, 38.372707, 35.731979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669724, 37.917435, 34.994125>,  <39.288418, 38.221016, 35.526253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669724, 37.917435, 34.994125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.943916, 38.002205, 35.272751>,  <40.108433, 38.053066, 35.439926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.943916, 38.002205, 35.272751>,  <39.669724, 37.917435, 34.994125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943916, 38.002205, 35.272751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490828, -0.841137, -0.227104,
		0.537778, 0.497569, -0.680603,
		0.685480, 0.211928, 0.696566,
		40.149559, 38.065784, 35.481720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310036, 37.741375, 34.682465>,  <39.669724, 37.917435, 34.994125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310036, 37.741375, 34.682465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372662, 37.745369, 35.077511>,  <40.410236, 37.747765, 35.314541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372662, 37.745369, 35.077511>,  <40.310036, 37.741375, 34.682465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372662, 37.745369, 35.077511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527171, -0.846442, -0.075015,
		0.835212, 0.532388, -0.137780,
		0.156560, 0.009980, 0.987618,
		40.419628, 37.748363, 35.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055016, 37.620064, 34.799728>,  <40.310036, 37.741375, 34.682465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055016, 37.620064, 34.799728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.866051, 37.496815, 35.130032>,  <40.752670, 37.422867, 35.328213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.866051, 37.496815, 35.130032>,  <41.055016, 37.620064, 34.799728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866051, 37.496815, 35.130032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556730, -0.830649, 0.008558,
		0.683282, 0.463769, 0.563954,
		-0.472417, -0.308123, 0.825762,
		40.724327, 37.404377, 35.377762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510120, 37.452896, 35.280739>,  <41.055016, 37.620064, 34.799728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510120, 37.452896, 35.280739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.189274, 37.237934, 35.384895>,  <40.996765, 37.108955, 35.447392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.189274, 37.237934, 35.384895>,  <41.510120, 37.452896, 35.280739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189274, 37.237934, 35.384895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537983, -0.839565, -0.075528,
		0.259208, 0.079506, 0.962544,
		-0.802113, -0.537409, 0.260395,
		40.948639, 37.076710, 35.463013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755634, 36.997944, 35.884296>,  <41.510120, 37.452896, 35.280739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755634, 36.997944, 35.884296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414646, 36.830498, 35.759037>,  <41.210052, 36.730030, 35.683880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414646, 36.830498, 35.759037>,  <41.755634, 36.997944, 35.884296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414646, 36.830498, 35.759037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428978, -0.902488, 0.038651,
		-0.298794, -0.101386, 0.948917,
		-0.852467, -0.418613, -0.313150,
		41.158905, 36.704914, 35.665092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740059, 36.322872, 36.126507>,  <41.755634, 36.997944, 35.884296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740059, 36.322872, 36.126507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468124, 36.299873, 35.834064>,  <41.304962, 36.286076, 35.658600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468124, 36.299873, 35.834064>,  <41.740059, 36.322872, 36.126507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468124, 36.299873, 35.834064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212389, -0.969634, -0.121246,
		-0.701932, -0.237706, 0.671406,
		-0.679839, -0.057493, -0.731104,
		41.264172, 36.282627, 35.614735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381332, 35.768188, 36.197830>,  <41.740059, 36.322872, 36.126507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381332, 35.768188, 36.197830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336426, 35.840870, 35.807060>,  <41.309483, 35.884480, 35.572598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336426, 35.840870, 35.807060>,  <41.381332, 35.768188, 36.197830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336426, 35.840870, 35.807060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263797, -0.942411, -0.205605,
		-0.958022, -0.280792, 0.057868,
		-0.112268, 0.181708, -0.976923,
		41.302746, 35.895382, 35.513985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028500, 35.128113, 35.895901>,  <41.381332, 35.768188, 36.197830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028500, 35.128113, 35.895901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202240, 35.316551, 35.588810>,  <41.306484, 35.429615, 35.404556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202240, 35.316551, 35.588810>,  <41.028500, 35.128113, 35.895901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202240, 35.316551, 35.588810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412055, -0.861837, -0.295716,
		-0.800969, -0.187903, -0.568455,
		0.434349, 0.471094, -0.767731,
		41.332546, 35.457878, 35.358490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971451, 34.667549, 35.394615>,  <41.028500, 35.128113, 35.895901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971451, 34.667549, 35.394615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287998, 34.888859, 35.290604>,  <41.477928, 35.021645, 35.228199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287998, 34.888859, 35.290604>,  <40.971451, 34.667549, 35.394615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287998, 34.888859, 35.290604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348928, -0.758045, -0.551015,
		-0.501976, 0.345327, -0.792950,
		0.791372, 0.553279, -0.260026,
		41.525410, 35.054844, 35.212597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972782, 34.601177, 34.646690>,  <40.971451, 34.667549, 35.394615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972782, 34.601177, 34.646690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.332558, 34.713505, 34.780647>,  <41.548424, 34.780903, 34.861023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.332558, 34.713505, 34.780647>,  <40.972782, 34.601177, 34.646690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332558, 34.713505, 34.780647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436653, -0.610140, -0.661107,
		0.018678, 0.740856, -0.671404,
		0.899436, 0.280823, 0.334893,
		41.602390, 34.797752, 34.881115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363441, 34.485950, 34.086872>,  <40.972782, 34.601177, 34.646690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363441, 34.485950, 34.086872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635399, 34.542595, 34.374676>,  <41.798573, 34.576580, 34.547356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635399, 34.542595, 34.374676>,  <41.363441, 34.485950, 34.086872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635399, 34.542595, 34.374676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625543, -0.624019, -0.468291,
		0.382670, 0.768470, -0.512852,
		0.679897, 0.141610, 0.719505,
		41.839367, 34.585079, 34.590527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942749, 34.508869, 33.756931>,  <41.363441, 34.485950, 34.086872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942749, 34.508869, 33.756931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033546, 34.410042, 34.133747>,  <42.088024, 34.350746, 34.359837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033546, 34.410042, 34.133747>,  <41.942749, 34.508869, 33.756931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033546, 34.410042, 34.133747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622201, -0.707349, -0.335444,
		0.749227, 0.662279, -0.006834,
		0.226992, -0.247071, 0.942035,
		42.101643, 34.335922, 34.416359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613533, 34.579449, 33.747780>,  <41.942749, 34.508869, 33.756931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613533, 34.579449, 33.747780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585960, 34.364231, 34.083817>,  <42.569416, 34.235100, 34.285439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585960, 34.364231, 34.083817>,  <42.613533, 34.579449, 33.747780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585960, 34.364231, 34.083817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643897, -0.667201, -0.374484,
		0.762001, 0.515120, 0.392436,
		-0.068929, -0.538046, 0.840092,
		42.565281, 34.202816, 34.335846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254074, 34.488457, 34.023865>,  <42.613533, 34.579449, 33.747780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254074, 34.488457, 34.023865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.050110, 34.183113, 34.182491>,  <42.927731, 33.999905, 34.277668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.050110, 34.183113, 34.182491>,  <43.254074, 34.488457, 34.023865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050110, 34.183113, 34.182491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706218, -0.634707, -0.313693,
		0.491165, 0.120106, 0.862746,
		-0.509914, -0.763362, 0.396567,
		42.897137, 33.954105, 34.301460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828938, 34.040379, 34.328655>,  <43.254074, 34.488457, 34.023865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828938, 34.040379, 34.328655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491920, 33.833450, 34.268669>,  <43.289711, 33.709293, 34.232677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491920, 33.833450, 34.268669>,  <43.828938, 34.040379, 34.328655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491920, 33.833450, 34.268669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535621, -0.775369, -0.334532,
		0.056780, -0.362186, 0.930375,
		-0.842547, -0.517323, -0.149969,
		43.239155, 33.678253, 34.223679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231407, 33.455742, 34.081554>,  <43.828938, 34.040379, 34.328655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231407, 33.455742, 34.081554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543713, 33.446899, 34.331326>,  <44.731098, 33.441593, 34.481190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543713, 33.446899, 34.331326>,  <44.231407, 33.455742, 34.081554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543713, 33.446899, 34.331326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381147, 0.775046, 0.504014,
		-0.495106, -0.631518, 0.596704,
		0.780767, -0.022108, 0.624431,
		44.777943, 33.440266, 34.518654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929703, 33.415535, 34.786983>,  <44.231407, 33.455742, 34.081554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929703, 33.415535, 34.786983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289204, 33.586464, 34.747711>,  <44.504906, 33.689022, 34.724148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289204, 33.586464, 34.747711>,  <43.929703, 33.415535, 34.786983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289204, 33.586464, 34.747711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297966, 0.759535, 0.578206,
		0.321647, -0.490412, 0.809962,
		0.898754, 0.427319, -0.098176,
		44.558830, 33.714661, 34.718258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083336, 33.735142, 35.426140>,  <43.929703, 33.415535, 34.786983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083336, 33.735142, 35.426140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306625, 33.918034, 35.149204>,  <44.440598, 34.027767, 34.983044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306625, 33.918034, 35.149204>,  <44.083336, 33.735142, 35.426140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306625, 33.918034, 35.149204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260813, 0.888853, 0.376720,
		0.787632, -0.029724, 0.615429,
		0.558223, 0.457228, -0.692337,
		44.474091, 34.055202, 34.941502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503304, 34.207878, 35.804165>,  <44.083336, 33.735142, 35.426140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503304, 34.207878, 35.804165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.517258, 34.332596, 35.424362>,  <44.525631, 34.407425, 35.196480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.517258, 34.332596, 35.424362>,  <44.503304, 34.207878, 35.804165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517258, 34.332596, 35.424362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002860, 0.950115, 0.311886,
		0.999387, -0.008165, 0.034036,
		0.034884, 0.311792, -0.949510,
		44.527721, 34.426132, 35.139511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104996, 34.612759, 35.788151>,  <44.503304, 34.207878, 35.804165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104996, 34.612759, 35.788151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844154, 34.704922, 35.499241>,  <44.687649, 34.760220, 35.325897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844154, 34.704922, 35.499241>,  <45.104996, 34.612759, 35.788151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844154, 34.704922, 35.499241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094790, 0.920443, 0.379209,
		0.752182, 0.315747, -0.578382,
		-0.652101, 0.230409, -0.722271,
		44.648525, 34.774044, 35.282558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269314, 35.329697, 35.504757>,  <45.104996, 34.612759, 35.788151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269314, 35.329697, 35.504757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893181, 35.279083, 35.378418>,  <44.667500, 35.248714, 35.302616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893181, 35.279083, 35.378418>,  <45.269314, 35.329697, 35.504757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893181, 35.279083, 35.378418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170974, 0.978292, 0.117098,
		0.294174, 0.164113, -0.941556,
		-0.940335, -0.126534, -0.315848,
		44.611080, 35.241123, 35.283665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184471, 35.852856, 34.982075>,  <45.269314, 35.329697, 35.504757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184471, 35.852856, 34.982075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831676, 35.737171, 35.130917>,  <44.619999, 35.667759, 35.220222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831676, 35.737171, 35.130917>,  <45.184471, 35.852856, 34.982075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831676, 35.737171, 35.130917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251312, 0.956556, 0.147793,
		-0.398683, 0.036837, -0.916349,
		-0.881983, -0.289212, 0.372105,
		44.567081, 35.650406, 35.242550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694397, 36.192482, 34.514309>,  <45.184471, 35.852856, 34.982075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694397, 36.192482, 34.514309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482342, 36.102406, 34.841293>,  <44.355110, 36.048359, 35.037483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482342, 36.102406, 34.841293>,  <44.694397, 36.192482, 34.514309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482342, 36.102406, 34.841293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273453, 0.957983, 0.086560,
		-0.802608, -0.177649, -0.569440,
		-0.530136, -0.225189, 0.817463,
		44.323299, 36.034847, 35.086533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070000, 36.609612, 34.484600>,  <44.694397, 36.192482, 34.514309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070000, 36.609612, 34.484600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084198, 36.485180, 34.864487>,  <44.092716, 36.410522, 35.092419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084198, 36.485180, 34.864487>,  <44.070000, 36.609612, 34.484600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084198, 36.485180, 34.864487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427929, 0.854058, 0.295738,
		-0.903115, -0.416910, -0.102805,
		0.035495, -0.311079, 0.949721,
		44.094845, 36.391857, 35.149403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336040, 36.594910, 34.773907>,  <44.070000, 36.609612, 34.484600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336040, 36.594910, 34.773907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592548, 36.633186, 35.078438>,  <43.746452, 36.656155, 35.261158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592548, 36.633186, 35.078438>,  <43.336040, 36.594910, 34.773907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592548, 36.633186, 35.078438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506239, 0.798379, 0.326055,
		-0.576626, -0.594502, 0.560419,
		0.641267, 0.095694, 0.761327,
		43.784927, 36.661896, 35.306835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973320, 36.599049, 35.398388>,  <43.336040, 36.594910, 34.773907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973320, 36.599049, 35.398388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316704, 36.790295, 35.472630>,  <43.522736, 36.905041, 35.517174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316704, 36.790295, 35.472630>,  <42.973320, 36.599049, 35.398388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316704, 36.790295, 35.472630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510566, 0.762385, 0.397607,
		0.048599, -0.436094, 0.898588,
		0.858464, 0.478112, 0.185604,
		43.574242, 36.933727, 35.528309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798100, 36.873600, 36.087723>,  <42.973320, 36.599049, 35.398388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798100, 36.873600, 36.087723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124889, 37.053646, 35.943527>,  <43.320965, 37.161674, 35.857010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124889, 37.053646, 35.943527>,  <42.798100, 36.873600, 36.087723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124889, 37.053646, 35.943527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365462, 0.887675, 0.280125,
		0.446084, -0.097110, 0.889707,
		0.816974, 0.450113, -0.360488,
		43.369980, 37.188679, 35.835381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938034, 37.494617, 36.493847>,  <42.798100, 36.873600, 36.087723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938034, 37.494617, 36.493847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.143970, 37.570595, 36.159454>,  <43.267532, 37.616180, 35.958820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.143970, 37.570595, 36.159454>,  <42.938034, 37.494617, 36.493847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143970, 37.570595, 36.159454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332965, 0.942894, 0.009182,
		0.789982, 0.273624, 0.548688,
		0.514843, 0.189948, -0.835977,
		43.298424, 37.627579, 35.908661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173294, 38.130966, 36.631138>,  <42.938034, 37.494617, 36.493847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173294, 38.130966, 36.631138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239246, 38.095463, 36.238213>,  <43.278816, 38.074162, 36.002457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239246, 38.095463, 36.238213>,  <43.173294, 38.130966, 36.631138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239246, 38.095463, 36.238213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273657, 0.952724, -0.132016,
		0.947590, 0.290584, 0.132796,
		0.164880, -0.088757, -0.982312,
		43.288712, 38.068836, 35.943520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691223, 38.598377, 36.460869>,  <43.173294, 38.130966, 36.631138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691223, 38.598377, 36.460869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467632, 38.527985, 36.136749>,  <43.333477, 38.485748, 35.942280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467632, 38.527985, 36.136749>,  <43.691223, 38.598377, 36.460869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467632, 38.527985, 36.136749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208715, 0.975616, -0.067906,
		0.802488, 0.131163, -0.582073,
		-0.558973, -0.175981, -0.810296,
		43.299942, 38.475189, 35.893661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945648, 39.066059, 35.938740>,  <43.691223, 38.598377, 36.460869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945648, 39.066059, 35.938740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580669, 38.956638, 35.817009>,  <43.361683, 38.890987, 35.743969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580669, 38.956638, 35.817009>,  <43.945648, 39.066059, 35.938740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580669, 38.956638, 35.817009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244451, 0.960811, -0.130714,
		0.328158, -0.044876, -0.943556,
		-0.912445, -0.273548, -0.304328,
		43.306934, 38.874573, 35.725712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782200, 39.524464, 35.468803>,  <43.945648, 39.066059, 35.938740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782200, 39.524464, 35.468803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414242, 39.369354, 35.492195>,  <43.193466, 39.276287, 35.506229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414242, 39.369354, 35.492195>,  <43.782200, 39.524464, 35.468803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414242, 39.369354, 35.492195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392115, 0.907274, -0.151985,
		0.005878, -0.162741, -0.986651,
		-0.919898, -0.387775, 0.058481,
		43.138271, 39.253021, 35.509739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369431, 39.747246, 34.839237>,  <43.782200, 39.524464, 35.468803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369431, 39.747246, 34.839237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102947, 39.625439, 35.111542>,  <42.943058, 39.552353, 35.274925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102947, 39.625439, 35.111542>,  <43.369431, 39.747246, 34.839237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102947, 39.625439, 35.111542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510580, 0.851593, -0.118732,
		-0.543577, -0.426684, -0.722817,
		-0.666207, -0.304516, 0.680763,
		42.903084, 39.534084, 35.315769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763912, 39.658043, 34.472855>,  <43.369431, 39.747246, 34.839237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763912, 39.658043, 34.472855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.681507, 39.734791, 34.856678>,  <42.632065, 39.780838, 35.086971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.681507, 39.734791, 34.856678>,  <42.763912, 39.658043, 34.472855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681507, 39.734791, 34.856678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641360, 0.714130, -0.280492,
		-0.739065, -0.673205, -0.024063,
		-0.206012, 0.191868, 0.959555,
		42.619705, 39.792351, 35.144543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085316, 39.634670, 34.500984>,  <42.763912, 39.658043, 34.472855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085316, 39.634670, 34.500984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185760, 39.852165, 34.821304>,  <42.246029, 39.982662, 35.013496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185760, 39.852165, 34.821304>,  <42.085316, 39.634670, 34.500984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185760, 39.852165, 34.821304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641288, 0.713152, -0.283135,
		-0.725047, -0.442448, 0.527775,
		0.251112, 0.543742, 0.800805,
		42.261093, 40.015289, 35.061546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417877, 39.887287, 34.760242>,  <42.085316, 39.634670, 34.500984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417877, 39.887287, 34.760242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705215, 40.110146, 34.926888>,  <41.877621, 40.243858, 35.026875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705215, 40.110146, 34.926888>,  <41.417877, 39.887287, 34.760242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705215, 40.110146, 34.926888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577814, 0.811333, -0.088708,
		-0.387437, -0.177003, 0.904745,
		0.718348, 0.557143, 0.416615,
		41.920719, 40.277290, 35.051872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.237194, 36.037052, 40.844296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866688, 36.166828, 40.767593>,  <39.644382, 36.244694, 40.721573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866688, 36.166828, 40.767593>,  <40.237194, 36.037052, 40.844296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866688, 36.166828, 40.767593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061520, -0.371813, -0.926267,
		-0.371813, -0.869767, 0.324439,
		0.926267, -0.324439, 0.191754,
		39.588806, 36.264160, 40.710068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883347, 35.444813, 40.543839>,  <40.237194, 36.037052, 40.844296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883347, 35.444813, 40.543839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658066, 35.754734, 40.428959>,  <39.522896, 35.940685, 40.360031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658066, 35.754734, 40.428959>,  <39.883347, 35.444813, 40.543839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658066, 35.754734, 40.428959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084664, -0.399848, -0.912663,
		-0.821967, -0.489702, 0.290795,
		-0.563206, 0.774799, -0.287202,
		39.489105, 35.987175, 40.342796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246899, 35.219822, 40.273773>,  <39.883347, 35.444813, 40.543839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246899, 35.219822, 40.273773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331841, 35.574394, 40.109268>,  <39.382805, 35.787140, 40.010563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331841, 35.574394, 40.109268>,  <39.246899, 35.219822, 40.273773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331841, 35.574394, 40.109268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175900, -0.379316, -0.908393,
		-0.961231, 0.265240, 0.075375,
		0.212352, 0.886435, -0.411266,
		39.395546, 35.840324, 39.985889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705887, 35.400764, 39.712227>,  <39.246899, 35.219822, 40.273773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705887, 35.400764, 39.712227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047703, 35.589043, 39.624397>,  <39.252792, 35.702011, 39.571701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047703, 35.589043, 39.624397>,  <38.705887, 35.400764, 39.712227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047703, 35.589043, 39.624397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130488, -0.214627, -0.967940,
		-0.502730, 0.855793, -0.121987,
		0.854538, 0.470695, -0.219570,
		39.304066, 35.730251, 39.558525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700455, 35.233704, 39.095318>,  <38.705887, 35.400764, 39.712227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700455, 35.233704, 39.095318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035076, 35.452511, 39.107639>,  <39.235847, 35.583794, 39.115032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035076, 35.452511, 39.107639>,  <38.700455, 35.233704, 39.095318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035076, 35.452511, 39.107639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168124, -0.202790, -0.964682,
		-0.521452, 0.812187, -0.261611,
		0.836554, 0.547018, 0.030803,
		39.286041, 35.616615, 39.116879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679474, 35.829159, 38.652008>,  <38.700455, 35.233704, 39.095318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679474, 35.829159, 38.652008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062710, 35.724850, 38.699421>,  <39.292652, 35.662262, 38.727871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062710, 35.724850, 38.699421>,  <38.679474, 35.829159, 38.652008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062710, 35.724850, 38.699421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071985, -0.181340, -0.980782,
		0.277260, 0.948215, -0.154969,
		0.958095, -0.260776, 0.118535,
		39.350140, 35.646618, 38.734982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971504, 36.320614, 38.339687>,  <38.679474, 35.829159, 38.652008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971504, 36.320614, 38.339687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230419, 36.017715, 38.374550>,  <39.385769, 35.835976, 38.395466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230419, 36.017715, 38.374550>,  <38.971504, 36.320614, 38.339687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230419, 36.017715, 38.374550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112594, -0.018103, -0.993476,
		0.753883, 0.652879, 0.073543,
		0.647288, -0.757246, 0.087158,
		39.424606, 35.790543, 38.400696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273895, 36.410439, 37.762432>,  <38.971504, 36.320614, 38.339687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273895, 36.410439, 37.762432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439381, 36.054016, 37.837105>,  <39.538673, 35.840160, 37.881908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439381, 36.054016, 37.837105>,  <39.273895, 36.410439, 37.762432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439381, 36.054016, 37.837105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059633, -0.178091, -0.982205,
		0.908451, 0.417486, -0.020542,
		0.413715, -0.891061, 0.186683,
		39.563496, 35.786697, 37.893108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712860, 36.304138, 37.262035>,  <39.273895, 36.410439, 37.762432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712860, 36.304138, 37.262035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624527, 35.936562, 37.392742>,  <39.571526, 35.716015, 37.471169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624527, 35.936562, 37.392742>,  <39.712860, 36.304138, 37.262035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624527, 35.936562, 37.392742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061959, -0.321147, -0.945000,
		0.973341, -0.228936, 0.013984,
		-0.220836, -0.918941, 0.326770,
		39.558277, 35.660881, 37.490772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121338, 35.838139, 36.894054>,  <39.712860, 36.304138, 37.262035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121338, 35.838139, 36.894054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821857, 35.609901, 37.029030>,  <39.642170, 35.472958, 37.110016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821857, 35.609901, 37.029030>,  <40.121338, 35.838139, 36.894054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821857, 35.609901, 37.029030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221649, -0.264250, -0.938639,
		0.624752, -0.777554, 0.071372,
		-0.748703, -0.570598, 0.337435,
		39.597248, 35.438721, 37.130260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098248, 35.306717, 36.430756>,  <40.121338, 35.838139, 36.894054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098248, 35.306717, 36.430756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732601, 35.294449, 36.592472>,  <39.513214, 35.287086, 36.689503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732601, 35.294449, 36.592472>,  <40.098248, 35.306717, 36.430756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732601, 35.294449, 36.592472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389171, -0.213333, -0.896122,
		0.113738, -0.976498, 0.183073,
		-0.914117, -0.030676, 0.404289,
		39.458366, 35.285248, 36.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788528, 34.724503, 36.198711>,  <40.098248, 35.306717, 36.430756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788528, 34.724503, 36.198711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474220, 34.940331, 36.319660>,  <39.285637, 35.069828, 36.392231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474220, 34.940331, 36.319660>,  <39.788528, 34.724503, 36.198711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474220, 34.940331, 36.319660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509373, -0.287194, -0.811208,
		-0.350865, -0.791443, 0.500512,
		-0.785769, 0.539572, 0.302373,
		39.238491, 35.102200, 36.410374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230576, 34.265011, 36.105339>,  <39.788528, 34.724503, 36.198711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230576, 34.265011, 36.105339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112675, 34.646904, 36.089306>,  <39.041935, 34.876041, 36.079685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112675, 34.646904, 36.089306>,  <39.230576, 34.265011, 36.105339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112675, 34.646904, 36.089306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448853, -0.175358, -0.876231,
		-0.843594, -0.240282, 0.480222,
		-0.294753, 0.954732, -0.040080,
		39.024250, 34.933323, 36.077282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595459, 33.621128, 36.186131>,  <39.230576, 34.265011, 36.105339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595459, 33.621128, 36.186131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480465, 33.331017, 35.935909>,  <39.411469, 33.156948, 35.785778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480465, 33.331017, 35.935909>,  <39.595459, 33.621128, 36.186131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480465, 33.331017, 35.935909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636815, -0.343106, 0.690467,
		-0.715414, 0.596864, -0.363230,
		-0.287488, -0.725281, -0.625555,
		39.394218, 33.113434, 35.748241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882252, 33.506924, 36.203873>,  <39.595459, 33.621128, 36.186131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882252, 33.506924, 36.203873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995041, 33.151512, 36.059090>,  <39.062714, 32.938267, 35.972218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995041, 33.151512, 36.059090>,  <38.882252, 33.506924, 36.203873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995041, 33.151512, 36.059090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617169, -0.456832, 0.640630,
		-0.734571, 0.042753, -0.677183,
		0.281970, -0.888525, -0.361962,
		39.079632, 32.884956, 35.950500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309273, 33.001400, 36.027599>,  <38.882252, 33.506924, 36.203873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309273, 33.001400, 36.027599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639183, 32.789677, 36.107170>,  <38.837132, 32.662643, 36.154911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639183, 32.789677, 36.107170>,  <38.309273, 33.001400, 36.027599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639183, 32.789677, 36.107170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549640, -0.667842, 0.501880,
		-0.132800, -0.523277, -0.841752,
		0.824779, -0.529310, 0.198924,
		38.886616, 32.630882, 36.166847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029549, 32.294254, 35.977787>,  <38.309273, 33.001400, 36.027599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029549, 32.294254, 35.977787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370571, 32.285606, 36.186661>,  <38.575184, 32.280418, 36.311985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370571, 32.285606, 36.186661>,  <38.029549, 32.294254, 35.977787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370571, 32.285606, 36.186661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431666, -0.592400, 0.680240,
		0.294634, -0.805353, -0.514390,
		0.852558, -0.021623, 0.522184,
		38.626339, 32.279121, 36.343315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173283, 31.567923, 36.096733>,  <38.029549, 32.294254, 35.977787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173283, 31.567923, 36.096733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342045, 31.805723, 36.370541>,  <38.443302, 31.948404, 36.534824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342045, 31.805723, 36.370541>,  <38.173283, 31.567923, 36.096733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342045, 31.805723, 36.370541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417207, -0.543009, 0.728752,
		0.804942, -0.593052, 0.018930,
		0.421909, 0.594501, 0.684516,
		38.468616, 31.984074, 36.575897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464054, 31.141253, 36.662586>,  <38.173283, 31.567923, 36.096733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464054, 31.141253, 36.662586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422886, 31.498131, 36.838493>,  <38.398186, 31.712257, 36.944038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422886, 31.498131, 36.838493>,  <38.464054, 31.141253, 36.662586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422886, 31.498131, 36.838493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491018, -0.430066, 0.757591,
		0.865048, -0.137961, 0.482347,
		-0.102922, 0.892194, 0.439770,
		38.392010, 31.765789, 36.970425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611107, 31.046555, 37.338799>,  <38.464054, 31.141253, 36.662586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611107, 31.046555, 37.338799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413773, 31.394403, 37.346603>,  <38.295372, 31.603113, 37.351288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413773, 31.394403, 37.346603>,  <38.611107, 31.046555, 37.338799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413773, 31.394403, 37.346603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441729, -0.269794, 0.855621,
		0.749331, 0.413487, 0.517235,
		-0.493335, 0.869621, 0.019516,
		38.265774, 31.655289, 37.352459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576668, 31.190948, 37.955524>,  <38.611107, 31.046555, 37.338799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576668, 31.190948, 37.955524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324783, 31.480989, 37.844036>,  <38.173653, 31.655014, 37.777142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324783, 31.480989, 37.844036>,  <38.576668, 31.190948, 37.955524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324783, 31.480989, 37.844036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393647, 0.011467, 0.919190,
		0.669705, 0.688544, 0.278214,
		-0.629712, 0.725104, -0.278723,
		38.135868, 31.698521, 37.760418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717781, 31.796473, 38.287956>,  <38.576668, 31.190948, 37.955524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717781, 31.796473, 38.287956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330891, 31.814787, 38.188053>,  <38.098755, 31.825775, 38.128109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330891, 31.814787, 38.188053>,  <38.717781, 31.796473, 38.287956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330891, 31.814787, 38.188053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250260, -0.005421, 0.968164,
		0.042972, 0.998937, 0.016701,
		-0.967225, 0.045784, -0.249761,
		38.040722, 31.828522, 38.113125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383308, 32.327560, 38.768967>,  <38.717781, 31.796473, 38.287956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383308, 32.327560, 38.768967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085320, 32.112606, 38.610859>,  <37.906525, 31.983635, 38.515995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085320, 32.112606, 38.610859>,  <38.383308, 32.327560, 38.768967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085320, 32.112606, 38.610859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494120, 0.046440, 0.868153,
		-0.448173, 0.842060, -0.300128,
		-0.744974, -0.537382, -0.395265,
		37.861828, 31.951391, 38.492279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882774, 32.632843, 39.040981>,  <38.383308, 32.327560, 38.768967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882774, 32.632843, 39.040981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722157, 32.279297, 38.945023>,  <37.625786, 32.067169, 38.887447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722157, 32.279297, 38.945023>,  <37.882774, 32.632843, 39.040981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722157, 32.279297, 38.945023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308070, -0.116318, 0.944226,
		-0.862469, 0.453054, -0.225585,
		-0.401546, -0.883862, -0.239893,
		37.601692, 32.014137, 38.873055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159111, 32.709652, 39.253235>,  <37.882774, 32.632843, 39.040981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159111, 32.709652, 39.253235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267879, 32.324863, 39.242859>,  <37.333141, 32.093990, 39.236633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267879, 32.324863, 39.242859>,  <37.159111, 32.709652, 39.253235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267879, 32.324863, 39.242859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293878, -0.108679, 0.949645,
		-0.916348, -0.250606, -0.312254,
		0.271922, -0.961970, -0.025941,
		37.349457, 32.036274, 39.235077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603127, 32.404163, 39.540520>,  <37.159111, 32.709652, 39.253235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603127, 32.404163, 39.540520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911091, 32.151035, 39.573425>,  <37.095871, 31.999159, 39.593170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911091, 32.151035, 39.573425>,  <36.603127, 32.404163, 39.540520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911091, 32.151035, 39.573425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294194, -0.237587, 0.925744,
		-0.566287, -0.736945, -0.369094,
		0.769915, -0.632823, 0.082263,
		37.142067, 31.961189, 39.598103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237350, 31.857061, 39.796864>,  <36.603127, 32.404163, 39.540520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237350, 31.857061, 39.796864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624336, 31.813147, 39.888035>,  <36.856529, 31.786797, 39.942738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624336, 31.813147, 39.888035>,  <36.237350, 31.857061, 39.796864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624336, 31.813147, 39.888035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231909, -0.024755, 0.972422,
		-0.101122, -0.993646, -0.049412,
		0.967467, -0.109792, 0.227932,
		36.914577, 31.780210, 39.956413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243633, 31.358288, 40.321774>,  <36.237350, 31.857061, 39.796864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243633, 31.358288, 40.321774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604816, 31.521214, 40.376568>,  <36.821526, 31.618969, 40.409447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604816, 31.521214, 40.376568>,  <36.243633, 31.358288, 40.321774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604816, 31.521214, 40.376568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187062, 0.085561, 0.978615,
		0.386883, -0.909271, 0.153451,
		0.902956, 0.407315, 0.136988,
		36.875702, 31.643408, 40.417664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780178, 30.826864, 40.375381>,  <36.243633, 31.358288, 40.321774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780178, 30.826864, 40.375381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427029, 31.014259, 40.388412>,  <35.215141, 31.126696, 40.396229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427029, 31.014259, 40.388412>,  <35.780178, 30.826864, 40.375381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427029, 31.014259, 40.388412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020046, 0.106896, -0.994068,
		-0.469192, -0.876979, -0.103767,
		-0.882869, 0.468488, 0.032574,
		35.162167, 31.154806, 40.398186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298084, 30.477015, 39.932232>,  <35.780178, 30.826864, 40.375381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298084, 30.477015, 39.932232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120628, 30.835495, 39.933449>,  <35.014156, 31.050583, 39.934177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120628, 30.835495, 39.933449>,  <35.298084, 30.477015, 39.932232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120628, 30.835495, 39.933449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014676, 0.010656, -0.999836,
		-0.896087, -0.443519, -0.017880,
		-0.443636, 0.896202, 0.003040,
		34.987537, 31.104355, 39.934361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714985, 30.447021, 39.509975>,  <35.298084, 30.477015, 39.932232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714985, 30.447021, 39.509975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836811, 30.827497, 39.529877>,  <34.909908, 31.055782, 39.541817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836811, 30.827497, 39.529877>,  <34.714985, 30.447021, 39.509975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836811, 30.827497, 39.529877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124377, 0.091509, -0.988006,
		-0.944334, 0.294728, 0.146177,
		0.304570, 0.951189, 0.049758,
		34.928181, 31.112854, 39.544804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167336, 30.741322, 39.117420>,  <34.714985, 30.447021, 39.509975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167336, 30.741322, 39.117420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472069, 30.999947, 39.133228>,  <34.654911, 31.155123, 39.142715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472069, 30.999947, 39.133228>,  <34.167336, 30.741322, 39.117420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472069, 30.999947, 39.133228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124408, 0.205921, -0.970628,
		-0.635712, 0.734542, 0.237315,
		0.761835, 0.646564, 0.039524,
		34.700619, 31.193916, 39.145084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883709, 31.526941, 38.987110>,  <34.167336, 30.741322, 39.117420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883709, 31.526941, 38.987110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275257, 31.561188, 38.912834>,  <34.510185, 31.581736, 38.868267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275257, 31.561188, 38.912834>,  <33.883709, 31.526941, 38.987110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275257, 31.561188, 38.912834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204248, 0.366148, -0.907865,
		-0.009737, 0.926610, 0.375898,
		0.978871, 0.085616, -0.185693,
		34.568920, 31.586872, 38.857128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088856, 32.156677, 38.665184>,  <33.883709, 31.526941, 38.987110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088856, 32.156677, 38.665184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386372, 31.926071, 38.529888>,  <34.564880, 31.787708, 38.448711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386372, 31.926071, 38.529888>,  <34.088856, 32.156677, 38.665184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386372, 31.926071, 38.529888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118026, 0.384810, -0.915418,
		0.657911, 0.720800, 0.218174,
		0.743789, -0.576514, -0.338244,
		34.609509, 31.753117, 38.428413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361202, 32.534164, 38.107845>,  <34.088856, 32.156677, 38.665184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361202, 32.534164, 38.107845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534286, 32.177120, 38.057240>,  <34.638138, 31.962894, 38.026875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534286, 32.177120, 38.057240>,  <34.361202, 32.534164, 38.107845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534286, 32.177120, 38.057240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094258, 0.184359, -0.978329,
		0.896591, 0.411409, 0.163910,
		0.432712, -0.892611, -0.126515,
		34.664101, 31.909336, 38.019283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921597, 32.671028, 37.710964>,  <34.361202, 32.534164, 38.107845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921597, 32.671028, 37.710964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881142, 32.275520, 37.666950>,  <34.856869, 32.038216, 37.640541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881142, 32.275520, 37.666950>,  <34.921597, 32.671028, 37.710964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881142, 32.275520, 37.666950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426889, 0.056771, -0.902520,
		0.898630, -0.138255, 0.416353,
		-0.101142, -0.988768, -0.110036,
		34.850800, 31.978889, 37.633938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462334, 32.418850, 37.275517>,  <34.921597, 32.671028, 37.710964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462334, 32.418850, 37.275517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225239, 32.097019, 37.261040>,  <35.082981, 31.903919, 37.252354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225239, 32.097019, 37.261040>,  <35.462334, 32.418850, 37.275517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225239, 32.097019, 37.261040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328194, -0.200254, -0.923140,
		0.735491, -0.559061, 0.382757,
		-0.592740, -0.804580, -0.036196,
		35.047417, 31.855644, 37.250179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864906, 31.776585, 37.100689>,  <35.462334, 32.418850, 37.275517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864906, 31.776585, 37.100689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483871, 31.700657, 37.005566>,  <35.255253, 31.655100, 36.948494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483871, 31.700657, 37.005566>,  <35.864906, 31.776585, 37.100689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483871, 31.700657, 37.005566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250484, -0.045504, -0.967051,
		0.172747, -0.980763, 0.090894,
		-0.952584, -0.189823, -0.237805,
		35.198097, 31.643711, 36.934223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927364, 31.350899, 36.506550>,  <35.864906, 31.776585, 37.100689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927364, 31.350899, 36.506550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550846, 31.484240, 36.485237>,  <35.324936, 31.564245, 36.472450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550846, 31.484240, 36.485237>,  <35.927364, 31.350899, 36.506550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550846, 31.484240, 36.485237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072621, 0.045825, -0.996306,
		-0.329681, -0.941687, -0.067343,
		-0.941295, 0.333354, -0.053279,
		35.268459, 31.584246, 36.469254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620182, 30.942303, 35.945923>,  <35.927364, 31.350899, 36.506550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620182, 30.942303, 35.945923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387005, 31.261158, 36.008846>,  <35.247097, 31.452471, 36.046600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387005, 31.261158, 36.008846>,  <35.620182, 30.942303, 35.945923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387005, 31.261158, 36.008846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053686, 0.230967, -0.971479,
		-0.810737, -0.557872, -0.177436,
		-0.582943, 0.797140, 0.157304,
		35.212120, 31.500299, 36.056038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.644440, 30.235529, 44.020008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.537491, 30.619841, 43.990562>,  <34.473320, 30.850428, 43.972897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.537491, 30.619841, 43.990562>,  <34.644440, 30.235529, 44.020008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537491, 30.619841, 43.990562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002532, -0.077092, -0.997021,
		-0.963590, -0.266390, 0.023045,
		-0.267373, 0.960777, -0.073611,
		34.457279, 30.908073, 43.968479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297653, 30.117817, 43.529911>,  <34.644440, 30.235529, 44.020008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297653, 30.117817, 43.529911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.307980, 30.516685, 43.558155>,  <34.314175, 30.756006, 43.575100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.307980, 30.516685, 43.558155>,  <34.297653, 30.117817, 43.529911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307980, 30.516685, 43.558155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145051, 0.073624, -0.986681,
		-0.989087, 0.015226, 0.146541,
		0.025812, 0.997170, 0.070612,
		34.315723, 30.815836, 43.579338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751766, 30.312475, 43.184158>,  <34.297653, 30.117817, 43.529911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751766, 30.312475, 43.184158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.023232, 30.606255, 43.183701>,  <34.186111, 30.782522, 43.183426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.023232, 30.606255, 43.183701>,  <33.751766, 30.312475, 43.184158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023232, 30.606255, 43.183701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195591, -0.182239, -0.963604,
		-0.707927, 0.653739, -0.267331,
		0.678663, 0.734449, -0.001147,
		34.226830, 30.826590, 43.183357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550102, 30.832281, 42.583195>,  <33.751766, 30.312475, 43.184158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550102, 30.832281, 42.583195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934853, 30.910318, 42.659866>,  <34.165703, 30.957142, 42.705868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934853, 30.910318, 42.659866>,  <33.550102, 30.832281, 42.583195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934853, 30.910318, 42.659866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178210, 0.084546, -0.980353,
		-0.207468, 0.977133, 0.046555,
		0.961872, 0.195095, 0.191676,
		34.223415, 30.968847, 42.717369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692806, 31.401096, 42.262989>,  <33.550102, 30.832281, 42.583195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692806, 31.401096, 42.262989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057350, 31.251560, 42.331879>,  <34.276077, 31.161839, 42.373211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057350, 31.251560, 42.331879>,  <33.692806, 31.401096, 42.262989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057350, 31.251560, 42.331879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308740, 0.344172, -0.886693,
		0.272210, 0.861271, 0.429086,
		0.911362, -0.373842, 0.172222,
		34.330757, 31.139408, 42.383545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106174, 31.886950, 41.909054>,  <33.692806, 31.401096, 42.262989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106174, 31.886950, 41.909054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.340775, 31.568119, 41.966583>,  <34.481533, 31.376820, 42.001102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.340775, 31.568119, 41.966583>,  <34.106174, 31.886950, 41.909054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340775, 31.568119, 41.966583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392932, 0.124728, -0.911069,
		0.708254, 0.590855, 0.386350,
		0.586499, -0.797078, 0.143827,
		34.516724, 31.328995, 42.009731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979149, 32.032791, 41.847534>,  <34.106174, 31.886950, 41.909054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979149, 32.032791, 41.847534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905529, 31.653282, 41.744801>,  <34.861359, 31.425577, 41.683163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905529, 31.653282, 41.744801>,  <34.979149, 32.032791, 41.847534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905529, 31.653282, 41.744801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358562, 0.178482, -0.916285,
		0.915182, -0.260732, 0.307343,
		-0.184050, -0.948769, -0.256832,
		34.850315, 31.368652, 41.667751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511013, 31.900446, 41.352764>,  <34.979149, 32.032791, 41.847534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511013, 31.900446, 41.352764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260834, 31.593586, 41.295784>,  <35.110725, 31.409470, 41.261597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260834, 31.593586, 41.295784>,  <35.511013, 31.900446, 41.352764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260834, 31.593586, 41.295784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193261, 0.024560, -0.980840,
		0.755949, -0.640998, 0.132899,
		-0.625452, -0.767149, -0.142446,
		35.073196, 31.363441, 41.253052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859901, 31.361456, 40.925453>,  <35.511013, 31.900446, 41.352764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859901, 31.361456, 40.925453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466705, 31.315559, 40.868092>,  <35.230789, 31.288021, 40.833675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466705, 31.315559, 40.868092>,  <35.859901, 31.361456, 40.925453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466705, 31.315559, 40.868092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152996, -0.079678, -0.985009,
		0.101596, -0.990195, 0.095878,
		-0.982991, -0.114742, -0.143401,
		35.171806, 31.281137, 40.825069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456139, 31.016863, 40.905048>,  <35.859901, 31.361456, 40.925453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456139, 31.016863, 40.905048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716187, 31.319723, 40.879528>,  <36.872215, 31.501438, 40.864216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716187, 31.319723, 40.879528>,  <36.456139, 31.016863, 40.905048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716187, 31.319723, 40.879528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055806, 0.036156, 0.997787,
		0.757780, -0.652240, -0.018748,
		0.650119, 0.757149, -0.063797,
		36.911221, 31.546867, 40.860390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010193, 30.848972, 41.495079>,  <36.456139, 31.016863, 40.905048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010193, 30.848972, 41.495079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062061, 31.228754, 41.380733>,  <37.093182, 31.456623, 41.312126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062061, 31.228754, 41.380733>,  <37.010193, 30.848972, 41.495079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062061, 31.228754, 41.380733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199580, 0.257405, 0.945468,
		0.971264, -0.179653, -0.156114,
		0.129671, 0.949457, -0.285863,
		37.100964, 31.513592, 41.294975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681602, 31.028214, 41.791153>,  <37.010193, 30.848972, 41.495079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681602, 31.028214, 41.791153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506859, 31.383463, 41.734039>,  <37.402012, 31.596613, 41.699772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506859, 31.383463, 41.734039>,  <37.681602, 31.028214, 41.791153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506859, 31.383463, 41.734039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131495, 0.220078, 0.966579,
		0.889866, 0.403485, -0.212928,
		-0.436861, 0.888125, -0.142783,
		37.375801, 31.649900, 41.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060688, 31.565567, 42.176949>,  <37.681602, 31.028214, 41.791153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060688, 31.565567, 42.176949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709606, 31.748831, 42.120781>,  <37.498955, 31.858789, 42.087082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709606, 31.748831, 42.120781>,  <38.060688, 31.565567, 42.176949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709606, 31.748831, 42.120781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067583, 0.408451, 0.910275,
		0.474405, 0.789467, -0.389465,
		-0.877709, 0.458160, -0.140416,
		37.446293, 31.886278, 42.078655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117306, 32.277702, 42.303440>,  <38.060688, 31.565567, 42.176949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117306, 32.277702, 42.303440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725685, 32.205292, 42.340736>,  <37.490715, 32.161846, 42.363113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725685, 32.205292, 42.340736>,  <38.117306, 32.277702, 42.303440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725685, 32.205292, 42.340736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029367, 0.327581, 0.944367,
		-0.201502, 0.927318, -0.315401,
		-0.979048, -0.181029, 0.093241,
		37.431973, 32.150982, 42.368710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834202, 32.878536, 42.420334>,  <38.117306, 32.277702, 42.303440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834202, 32.878536, 42.420334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575169, 32.612915, 42.569820>,  <37.419750, 32.453541, 42.659512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575169, 32.612915, 42.569820>,  <37.834202, 32.878536, 42.420334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575169, 32.612915, 42.569820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084627, 0.424736, 0.901353,
		-0.757280, 0.615328, -0.218855,
		-0.647584, -0.664056, 0.373717,
		37.380894, 32.413696, 42.681934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529102, 33.226887, 42.885353>,  <37.834202, 32.878536, 42.420334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529102, 33.226887, 42.885353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393585, 32.869030, 43.001865>,  <37.312275, 32.654316, 43.071774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393585, 32.869030, 43.001865>,  <37.529102, 33.226887, 42.885353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393585, 32.869030, 43.001865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105513, 0.271504, 0.956636,
		-0.934925, 0.354836, 0.002412,
		-0.338794, -0.894638, 0.291276,
		37.291946, 32.600639, 43.089249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028767, 33.372200, 43.340775>,  <37.529102, 33.226887, 42.885353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028767, 33.372200, 43.340775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153076, 33.001049, 43.423203>,  <37.227661, 32.778358, 43.472660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153076, 33.001049, 43.423203>,  <37.028767, 33.372200, 43.340775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153076, 33.001049, 43.423203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054863, 0.198928, 0.978477,
		-0.948899, -0.315390, 0.010915,
		0.310773, -0.927878, 0.206066,
		37.246307, 32.722687, 43.485023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545799, 33.101509, 43.882370>,  <37.028767, 33.372200, 43.340775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545799, 33.101509, 43.882370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860268, 32.857101, 43.919453>,  <37.048950, 32.710457, 43.941700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860268, 32.857101, 43.919453>,  <36.545799, 33.101509, 43.882370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860268, 32.857101, 43.919453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190119, -0.096386, 0.977018,
		-0.588038, -0.785729, -0.191941,
		0.786172, -0.611016, 0.092703,
		37.096119, 32.673798, 43.947262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418613, 32.589779, 44.432377>,  <36.545799, 33.101509, 43.882370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418613, 32.589779, 44.432377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.816814, 32.595371, 44.394890>,  <37.055737, 32.598728, 44.372398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.816814, 32.595371, 44.394890>,  <36.418613, 32.589779, 44.432377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816814, 32.595371, 44.394890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094065, -0.026994, 0.995200,
		0.011393, -0.999538, -0.028188,
		0.995501, 0.013990, -0.093714,
		37.115463, 32.599567, 44.366776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563568, 32.165756, 44.828602>,  <36.418613, 32.589779, 44.432377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563568, 32.165756, 44.828602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895145, 32.388226, 44.804852>,  <37.094090, 32.521709, 44.790600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895145, 32.388226, 44.804852>,  <36.563568, 32.165756, 44.828602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895145, 32.388226, 44.804852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098073, -0.040006, 0.994375,
		0.550672, -0.830101, -0.087708,
		0.828940, 0.556176, -0.059380,
		37.143829, 32.555077, 44.787037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176937, 31.724550, 45.091534>,  <36.563568, 32.165756, 44.828602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176937, 31.724550, 45.091534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296284, 32.106030, 45.076382>,  <37.367893, 32.334919, 45.067291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296284, 32.106030, 45.076382>,  <37.176937, 31.724550, 45.091534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296284, 32.106030, 45.076382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199838, -0.023618, 0.979544,
		0.933296, -0.299833, -0.197632,
		0.298368, 0.953699, -0.037875,
		37.385796, 32.392139, 45.065018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784416, 31.661327, 45.500385>,  <37.176937, 31.724550, 45.091534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784416, 31.661327, 45.500385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671116, 32.044392, 45.479778>,  <37.603138, 32.274231, 45.467415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671116, 32.044392, 45.479778>,  <37.784416, 31.661327, 45.500385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671116, 32.044392, 45.479778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217533, 0.116473, 0.969079,
		0.934050, 0.263282, -0.241314,
		-0.283248, 0.957662, -0.051519,
		37.586143, 32.331692, 45.464321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288841, 31.987406, 45.788441>,  <37.784416, 31.661327, 45.500385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288841, 31.987406, 45.788441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982731, 32.243954, 45.810352>,  <37.799065, 32.397881, 45.823498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982731, 32.243954, 45.810352>,  <38.288841, 31.987406, 45.788441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982731, 32.243954, 45.810352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154180, 0.100017, 0.982967,
		0.624967, 0.760685, -0.175427,
		-0.765274, 0.641370, 0.054775,
		37.753147, 32.436363, 45.826786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.323086, 36.695263, 45.286091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631798, 36.446156, 45.337498>,  <33.817024, 36.296692, 45.368343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631798, 36.446156, 45.337498>,  <33.323086, 36.695263, 45.286091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631798, 36.446156, 45.337498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252496, 0.114637, -0.960783,
		0.583610, 0.773964, 0.245721,
		0.771780, -0.622766, 0.128520,
		33.863331, 36.259327, 45.376053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744194, 36.902836, 44.774448>,  <33.323086, 36.695263, 45.286091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744194, 36.902836, 44.774448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919079, 36.553196, 44.859100>,  <34.024010, 36.343410, 44.909889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919079, 36.553196, 44.859100>,  <33.744194, 36.902836, 44.774448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919079, 36.553196, 44.859100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205153, -0.132171, -0.969765,
		0.875646, 0.467411, 0.121538,
		0.437215, -0.874104, 0.211625,
		34.050243, 36.290966, 44.922588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378712, 36.917194, 44.370678>,  <33.744194, 36.902836, 44.774448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378712, 36.917194, 44.370678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331085, 36.527092, 44.445183>,  <34.302509, 36.293030, 44.489887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331085, 36.527092, 44.445183>,  <34.378712, 36.917194, 44.370678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331085, 36.527092, 44.445183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150611, -0.203170, -0.967491,
		0.981397, -0.087141, 0.171075,
		-0.119065, -0.975258, 0.186266,
		34.295364, 36.234516, 44.501064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944492, 36.565857, 44.170834>,  <34.378712, 36.917194, 44.370678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944492, 36.565857, 44.170834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631737, 36.317196, 44.152107>,  <34.444084, 36.167999, 44.140873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631737, 36.317196, 44.152107>,  <34.944492, 36.565857, 44.170834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631737, 36.317196, 44.152107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255225, -0.250685, -0.933819,
		0.568779, -0.742091, 0.354670,
		-0.781889, -0.621657, -0.046816,
		34.397171, 36.130699, 44.138062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163212, 35.933762, 43.777260>,  <34.944492, 36.565857, 44.170834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163212, 35.933762, 43.777260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764996, 35.896034, 43.777084>,  <34.526066, 35.873398, 43.776978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764996, 35.896034, 43.777084>,  <35.163212, 35.933762, 43.777260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764996, 35.896034, 43.777084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024129, -0.250174, -0.967900,
		0.091186, -0.963596, 0.251334,
		-0.995542, -0.094323, -0.000438,
		34.466331, 35.867737, 43.776955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122074, 35.362621, 43.376736>,  <35.163212, 35.933762, 43.777260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122074, 35.362621, 43.376736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763283, 35.539410, 43.380356>,  <34.548008, 35.645485, 43.382526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763283, 35.539410, 43.380356>,  <35.122074, 35.362621, 43.376736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763283, 35.539410, 43.380356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171270, -0.328569, -0.928821,
		-0.407542, -0.834686, 0.370417,
		-0.896982, 0.441975, 0.009051,
		34.494186, 35.672001, 43.383072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509701, 34.877903, 43.245415>,  <35.122074, 35.362621, 43.376736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509701, 34.877903, 43.245415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384426, 35.240570, 43.132378>,  <34.309261, 35.458172, 43.064556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384426, 35.240570, 43.132378>,  <34.509701, 34.877903, 43.245415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384426, 35.240570, 43.132378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091133, -0.324880, -0.941354,
		-0.945308, -0.269069, 0.184377,
		-0.313190, 0.906673, -0.282590,
		34.290470, 35.512573, 43.047600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137138, 34.751381, 42.589542>,  <34.509701, 34.877903, 43.245415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137138, 34.751381, 42.589542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150139, 35.151093, 42.597305>,  <34.157940, 35.390919, 42.601963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150139, 35.151093, 42.597305>,  <34.137138, 34.751381, 42.589542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150139, 35.151093, 42.597305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175732, 0.024830, -0.984125,
		-0.983902, 0.028570, 0.176413,
		0.032497, 0.999283, 0.019410,
		34.159889, 35.450878, 42.603127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653881, 34.958324, 42.128845>,  <34.137138, 34.751381, 42.589542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653881, 34.958324, 42.128845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861176, 35.298557, 42.164505>,  <33.985550, 35.502697, 42.185902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861176, 35.298557, 42.164505>,  <33.653881, 34.958324, 42.128845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861176, 35.298557, 42.164505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177173, 0.208752, -0.961786,
		-0.836687, 0.482633, 0.258882,
		0.518232, 0.850581, 0.089150,
		34.016644, 35.553730, 42.191250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234467, 35.472065, 41.809017>,  <33.653881, 34.958324, 42.128845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234467, 35.472065, 41.809017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607471, 35.616199, 41.818668>,  <33.831276, 35.702679, 41.824459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607471, 35.616199, 41.818668>,  <33.234467, 35.472065, 41.809017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607471, 35.616199, 41.818668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107526, 0.340799, -0.933967,
		-0.344761, 0.868341, 0.356545,
		0.932512, 0.360333, 0.024125,
		33.887226, 35.724300, 41.825905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199883, 36.088753, 41.465118>,  <33.234467, 35.472065, 41.809017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199883, 36.088753, 41.465118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596630, 36.039886, 41.479340>,  <33.834679, 36.010567, 41.487873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596630, 36.039886, 41.479340>,  <33.199883, 36.088753, 41.465118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596630, 36.039886, 41.479340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101027, 0.586355, -0.803730,
		0.077342, 0.800789, 0.593932,
		0.991873, -0.122165, 0.035551,
		33.894192, 36.003239, 41.490005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557259, 36.748474, 41.352287>,  <33.199883, 36.088753, 41.465118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557259, 36.748474, 41.352287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.833042, 36.479862, 41.243706>,  <33.998512, 36.318695, 41.178558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.833042, 36.479862, 41.243706>,  <33.557259, 36.748474, 41.352287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833042, 36.479862, 41.243706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138900, 0.490391, -0.860363,
		0.710881, 0.555481, 0.431381,
		0.689460, -0.671534, -0.271453,
		34.039879, 36.278400, 41.162270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015942, 37.208130, 41.053741>,  <33.557259, 36.748474, 41.352287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015942, 37.208130, 41.053741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074165, 36.828629, 40.941547>,  <34.109100, 36.600925, 40.874229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074165, 36.828629, 40.941547>,  <34.015942, 37.208130, 41.053741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074165, 36.828629, 40.941547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016796, 0.281098, -0.959532,
		0.989207, 0.144378, 0.024981,
		0.145558, -0.948757, -0.280489,
		34.117832, 36.544003, 40.857399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644440, 37.147289, 40.668976>,  <34.015942, 37.208130, 41.053741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644440, 37.147289, 40.668976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450638, 36.819435, 40.546696>,  <34.334354, 36.622723, 40.473328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450638, 36.819435, 40.546696>,  <34.644440, 37.147289, 40.668976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450638, 36.819435, 40.546696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041934, 0.327296, -0.943991,
		0.873782, -0.470189, -0.124206,
		-0.484506, -0.819634, -0.305703,
		34.305286, 36.573544, 40.454987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413277, 37.207565, 41.033405>,  <34.644440, 37.147289, 40.668976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413277, 37.207565, 41.033405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689823, 37.490360, 40.973835>,  <35.855751, 37.660038, 40.938095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689823, 37.490360, 40.973835>,  <35.413277, 37.207565, 41.033405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689823, 37.490360, 40.973835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036257, 0.239813, 0.970142,
		0.721591, -0.665327, 0.191433,
		0.691370, 0.706986, -0.148924,
		35.897236, 37.702457, 40.929157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877373, 37.109386, 41.629536>,  <35.413277, 37.207565, 41.033405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877373, 37.109386, 41.629536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946438, 37.467297, 41.464825>,  <35.987877, 37.682041, 41.365997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946438, 37.467297, 41.464825>,  <35.877373, 37.109386, 41.629536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946438, 37.467297, 41.464825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187805, 0.380484, 0.905517,
		0.966911, -0.233683, -0.102348,
		0.172662, 0.894776, -0.411781,
		35.998238, 37.735729, 41.341290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607002, 37.398628, 41.756992>,  <35.877373, 37.109386, 41.629536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607002, 37.398628, 41.756992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.382366, 37.724880, 41.701324>,  <36.247585, 37.920631, 41.667923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.382366, 37.724880, 41.701324>,  <36.607002, 37.398628, 41.756992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382366, 37.724880, 41.701324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277120, 0.343890, 0.897187,
		0.779629, 0.465285, -0.419152,
		-0.561590, 0.815628, -0.139167,
		36.213890, 37.969570, 41.659573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999958, 38.003529, 42.053406>,  <36.607002, 37.398628, 41.756992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999958, 38.003529, 42.053406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622009, 38.130775, 42.022369>,  <36.395241, 38.207123, 42.003746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622009, 38.130775, 42.022369>,  <36.999958, 38.003529, 42.053406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622009, 38.130775, 42.022369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078135, 0.449160, 0.890028,
		0.317982, 0.834900, -0.449255,
		-0.944872, 0.318115, -0.077590,
		36.338547, 38.226212, 41.999092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998260, 38.641884, 42.337852>,  <36.999958, 38.003529, 42.053406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998260, 38.641884, 42.337852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606693, 38.560280, 42.333698>,  <36.371754, 38.511318, 42.331207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606693, 38.560280, 42.333698>,  <36.998260, 38.641884, 42.337852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606693, 38.560280, 42.333698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083530, 0.353391, 0.931739,
		-0.186415, 0.912959, -0.362980,
		-0.978914, -0.204010, -0.010382,
		36.313019, 38.499077, 42.330585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706097, 39.143921, 42.747459>,  <36.998260, 38.641884, 42.337852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706097, 39.143921, 42.747459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442638, 38.842949, 42.744827>,  <36.284565, 38.662369, 42.743248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442638, 38.842949, 42.744827>,  <36.706097, 39.143921, 42.747459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442638, 38.842949, 42.744827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113041, 0.090303, 0.989478,
		-0.743914, 0.652458, -0.144533,
		-0.658645, -0.752425, -0.006577,
		36.245045, 38.617222, 42.742855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316334, 39.340874, 43.271206>,  <36.706097, 39.143921, 42.747459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316334, 39.340874, 43.271206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.251446, 38.950455, 43.213219>,  <36.212513, 38.716202, 43.178429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.251446, 38.950455, 43.213219>,  <36.316334, 39.340874, 43.271206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251446, 38.950455, 43.213219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106855, -0.128670, 0.985914,
		-0.980951, 0.175428, -0.083423,
		-0.162222, -0.976048, -0.144964,
		36.202778, 38.657639, 43.169731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670742, 39.218395, 43.592117>,  <36.316334, 39.340874, 43.271206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670742, 39.218395, 43.592117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871143, 38.872749, 43.572899>,  <35.991383, 38.665363, 43.561367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871143, 38.872749, 43.572899>,  <35.670742, 39.218395, 43.592117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871143, 38.872749, 43.572899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282801, -0.215927, 0.934558,
		-0.817936, -0.454630, -0.352552,
		0.501004, -0.864111, -0.048045,
		36.021446, 38.613518, 43.558487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396507, 38.761749, 44.048027>,  <35.670742, 39.218395, 43.592117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396507, 38.761749, 44.048027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738937, 38.557961, 44.013229>,  <35.944397, 38.435688, 43.992352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738937, 38.557961, 44.013229>,  <35.396507, 38.761749, 44.048027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738937, 38.557961, 44.013229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061123, -0.266932, 0.961775,
		-0.513222, -0.818036, -0.259655,
		0.856077, -0.509475, -0.086995,
		35.995762, 38.405117, 43.987129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218571, 38.120872, 44.352261>,  <35.396507, 38.761749, 44.048027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218571, 38.120872, 44.352261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617027, 38.146862, 44.375835>,  <35.856102, 38.162457, 44.389980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617027, 38.146862, 44.375835>,  <35.218571, 38.120872, 44.352261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617027, 38.146862, 44.375835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040500, -0.255358, 0.965998,
		0.077819, -0.964661, -0.251742,
		0.996144, 0.064978, 0.058940,
		35.915871, 38.166355, 44.393517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613644, 37.470222, 44.690109>,  <35.218571, 38.120872, 44.352261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613644, 37.470222, 44.690109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.889851, 37.755932, 44.735703>,  <36.055576, 37.927357, 44.763058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.889851, 37.755932, 44.735703>,  <35.613644, 37.470222, 44.690109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889851, 37.755932, 44.735703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157963, -0.302692, 0.939907,
		0.705854, -0.631021, -0.321844,
		0.690520, 0.714276, 0.113978,
		36.097008, 37.970215, 44.769897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131699, 37.110817, 44.778225>,  <35.613644, 37.470222, 44.690109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131699, 37.110817, 44.778225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184963, 37.471325, 44.943142>,  <36.216923, 37.687630, 45.042091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184963, 37.471325, 44.943142>,  <36.131699, 37.110817, 44.778225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184963, 37.471325, 44.943142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100617, -0.401555, 0.910291,
		0.985974, -0.162699, 0.037212,
		0.133161, 0.901267, 0.412293,
		36.224911, 37.741707, 45.066830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742104, 37.158916, 45.241199>,  <36.131699, 37.110817, 44.778225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742104, 37.158916, 45.241199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.506710, 37.455826, 45.369396>,  <36.365475, 37.633972, 45.446316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.506710, 37.455826, 45.369396>,  <36.742104, 37.158916, 45.241199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506710, 37.455826, 45.369396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151616, -0.288057, 0.945535,
		0.794163, 0.605028, 0.056978,
		-0.588488, 0.742270, 0.320496,
		36.330162, 37.678505, 45.465546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901234, 37.149853, 45.904610>,  <36.742104, 37.158916, 45.241199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901234, 37.149853, 45.904610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.599663, 37.406796, 45.959698>,  <36.418720, 37.560963, 45.992752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.599663, 37.406796, 45.959698>,  <36.901234, 37.149853, 45.904610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599663, 37.406796, 45.959698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064917, -0.135769, 0.988611,
		0.653744, 0.754281, 0.060659,
		-0.753926, 0.642361, 0.137724,
		36.373486, 37.599503, 46.001015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557514, 37.478264, 45.877327>,  <36.901234, 37.149853, 45.904610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557514, 37.478264, 45.877327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883366, 37.251846, 45.927883>,  <38.078876, 37.115997, 45.958218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883366, 37.251846, 45.927883>,  <37.557514, 37.478264, 45.877327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883366, 37.251846, 45.927883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249537, 0.145351, -0.957394,
		0.523554, 0.811462, 0.259656,
		0.814630, -0.566041, 0.126391,
		38.127754, 37.082035, 45.965801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106659, 37.876984, 45.684998>,  <37.557514, 37.478264, 45.877327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106659, 37.876984, 45.684998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212322, 37.492107, 45.658459>,  <38.275719, 37.261181, 45.642536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212322, 37.492107, 45.658459>,  <38.106659, 37.876984, 45.684998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212322, 37.492107, 45.658459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155959, 0.110495, -0.981564,
		0.951787, 0.248941, 0.179251,
		0.264158, -0.962195, -0.066343,
		38.291569, 37.203449, 45.638557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580486, 37.935677, 45.210480>,  <38.106659, 37.876984, 45.684998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580486, 37.935677, 45.210480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490585, 37.546097, 45.222477>,  <38.436646, 37.312347, 45.229675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490585, 37.546097, 45.222477>,  <38.580486, 37.935677, 45.210480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490585, 37.546097, 45.222477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122208, -0.058715, -0.990766,
		0.966722, -0.219011, 0.132221,
		-0.224752, -0.973954, 0.029996,
		38.423161, 37.253910, 45.231476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226574, 37.615707, 45.039845>,  <38.580486, 37.935677, 45.210480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226574, 37.615707, 45.039845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929459, 37.356499, 44.972527>,  <38.751190, 37.200974, 44.932137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929459, 37.356499, 44.972527>,  <39.226574, 37.615707, 45.039845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929459, 37.356499, 44.972527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386692, -0.210036, -0.897973,
		0.546561, -0.732085, 0.406599,
		-0.742793, -0.648025, -0.168294,
		38.706619, 37.162090, 44.922039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501999, 36.946499, 44.841160>,  <39.226574, 37.615707, 45.039845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501999, 36.946499, 44.841160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129906, 36.971527, 44.696522>,  <38.906651, 36.986542, 44.609737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129906, 36.971527, 44.696522>,  <39.501999, 36.946499, 44.841160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129906, 36.971527, 44.696522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344543, -0.190273, -0.919286,
		-0.126320, -0.979735, 0.155441,
		-0.930233, 0.062568, -0.361596,
		38.850838, 36.990299, 44.588043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427296, 36.439522, 44.330261>,  <39.501999, 36.946499, 44.841160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427296, 36.439522, 44.330261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113068, 36.673744, 44.250256>,  <38.924530, 36.814278, 44.202251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113068, 36.673744, 44.250256>,  <39.427296, 36.439522, 44.330261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113068, 36.673744, 44.250256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130938, -0.158619, -0.978619,
		-0.604762, -0.794962, 0.047935,
		-0.785569, 0.585555, -0.200018,
		38.877396, 36.849411, 44.190250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001839, 36.061344, 43.816002>,  <39.427296, 36.439522, 44.330261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001839, 36.061344, 43.816002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902367, 36.448357, 43.797955>,  <38.842686, 36.680565, 43.787128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902367, 36.448357, 43.797955>,  <39.001839, 36.061344, 43.816002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902367, 36.448357, 43.797955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092240, -0.022710, -0.995478,
		-0.964184, -0.251714, -0.083598,
		-0.248677, 0.967535, -0.045114,
		38.827763, 36.738617, 43.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504944, 36.054905, 43.323723>,  <39.001839, 36.061344, 43.816002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504944, 36.054905, 43.323723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605808, 36.441952, 43.319080>,  <38.666328, 36.674179, 43.316296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605808, 36.441952, 43.319080>,  <38.504944, 36.054905, 43.323723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605808, 36.441952, 43.319080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015223, -0.008021, -0.999852,
		-0.967565, 0.252301, 0.012708,
		0.252162, 0.967616, -0.011602,
		38.681458, 36.732235, 43.315601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036186, 36.353413, 42.799683>,  <38.504944, 36.054905, 43.323723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036186, 36.353413, 42.799683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335529, 36.606327, 42.879852>,  <38.515137, 36.758076, 42.927952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335529, 36.606327, 42.879852>,  <38.036186, 36.353413, 42.799683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335529, 36.606327, 42.879852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176565, 0.101361, -0.979056,
		-0.639361, 0.768074, -0.035786,
		0.748360, 0.632289, 0.200421,
		38.560036, 36.796013, 42.939980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837955, 37.024601, 42.394409>,  <38.036186, 36.353413, 42.799683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837955, 37.024601, 42.394409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.227142, 37.001671, 42.483887>,  <38.460655, 36.987911, 42.537575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.227142, 37.001671, 42.483887>,  <37.837955, 37.024601, 42.394409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227142, 37.001671, 42.483887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230909, 0.253662, -0.939328,
		-0.002894, 0.965593, 0.260043,
		0.972971, -0.057328, 0.223698,
		38.519035, 36.984474, 42.550995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227924, 37.657665, 42.006351>,  <37.837955, 37.024601, 42.394409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227924, 37.657665, 42.006351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495369, 37.379028, 42.110439>,  <38.655838, 37.211845, 42.172894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495369, 37.379028, 42.110439>,  <38.227924, 37.657665, 42.006351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495369, 37.379028, 42.110439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358976, -0.004105, -0.933338,
		0.651222, 0.717458, 0.247315,
		0.668615, -0.696590, 0.260224,
		38.695953, 37.170052, 42.188507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863277, 37.857628, 41.677113>,  <38.227924, 37.657665, 42.006351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863277, 37.857628, 41.677113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937408, 37.467548, 41.725521>,  <38.981888, 37.233501, 41.754566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937408, 37.467548, 41.725521>,  <38.863277, 37.857628, 41.677113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937408, 37.467548, 41.725521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247511, -0.072863, -0.966142,
		0.950995, 0.209010, 0.227867,
		0.185330, -0.975195, 0.121025,
		38.993008, 37.174992, 41.761829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492596, 37.648693, 41.287632>,  <38.863277, 37.857628, 41.677113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492596, 37.648693, 41.287632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314075, 37.294273, 41.337807>,  <39.206963, 37.081623, 41.367912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314075, 37.294273, 41.337807>,  <39.492596, 37.648693, 41.287632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314075, 37.294273, 41.337807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374793, -0.312363, -0.872903,
		0.812616, -0.342563, 0.471492,
		-0.446301, -0.886047, 0.125441,
		39.180183, 37.028458, 41.375439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021790, 37.238628, 41.257938>,  <39.492596, 37.648693, 41.287632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021790, 37.238628, 41.257938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693474, 37.020790, 41.188992>,  <39.496483, 36.890087, 41.147621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693474, 37.020790, 41.188992>,  <40.021790, 37.238628, 41.257938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693474, 37.020790, 41.188992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386874, -0.307977, -0.869183,
		0.420271, -0.780104, 0.463477,
		-0.820793, -0.544599, -0.172369,
		39.447235, 36.857410, 41.137280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.274252, 28.899916, 36.086388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474821, 28.893110, 36.432400>,  <28.595163, 28.889027, 36.640007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474821, 28.893110, 36.432400>,  <28.274252, 28.899916, 36.086388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474821, 28.893110, 36.432400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292817, 0.937469, 0.188174,
		-0.814145, -0.347652, 0.465087,
		0.501424, -0.017015, 0.865034,
		28.625248, 28.888006, 36.691910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881618, 28.968311, 36.691849>,  <28.274252, 28.899916, 36.086388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881618, 28.968311, 36.691849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214281, 29.116922, 36.856922>,  <28.413879, 29.206089, 36.955967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214281, 29.116922, 36.856922>,  <27.881618, 28.968311, 36.691849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214281, 29.116922, 36.856922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488671, 0.842641, 0.226178,
		-0.263715, -0.389771, 0.882345,
		0.831658, 0.371530, 0.412687,
		28.463779, 29.228382, 36.980728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663193, 29.456276, 37.186878>,  <27.881618, 28.968311, 36.691849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663193, 29.456276, 37.186878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050419, 29.536617, 37.126862>,  <28.282755, 29.584822, 37.090851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050419, 29.536617, 37.126862>,  <27.663193, 29.456276, 37.186878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050419, 29.536617, 37.126862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173488, 0.968717, 0.177453,
		0.180987, -0.145756, 0.972625,
		0.968063, 0.200855, -0.150038,
		28.340837, 29.596874, 37.081852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800592, 29.941650, 37.697880>,  <27.663193, 29.456276, 37.186878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800592, 29.941650, 37.697880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093103, 30.008463, 37.433353>,  <28.268610, 30.048550, 37.274639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093103, 30.008463, 37.433353>,  <27.800592, 29.941650, 37.697880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093103, 30.008463, 37.433353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144610, 0.985478, 0.088998,
		0.666575, 0.030550, 0.744812,
		0.731277, 0.167031, -0.661313,
		28.312487, 30.058573, 37.234959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183537, 30.462320, 38.001072>,  <27.800592, 29.941650, 37.697880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183537, 30.462320, 38.001072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317375, 30.458878, 37.624142>,  <28.397678, 30.456812, 37.397984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317375, 30.458878, 37.624142>,  <28.183537, 30.462320, 38.001072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317375, 30.458878, 37.624142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128873, 0.990146, -0.054804,
		0.933507, 0.139777, 0.330192,
		0.334598, -0.008607, -0.942322,
		28.417755, 30.456295, 37.341446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673279, 30.936743, 37.942879>,  <28.183537, 30.462320, 38.001072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673279, 30.936743, 37.942879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565323, 30.896856, 37.559792>,  <28.500549, 30.872925, 37.329941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565323, 30.896856, 37.559792>,  <28.673279, 30.936743, 37.942879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565323, 30.896856, 37.559792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022009, 0.993725, -0.109667,
		0.962640, -0.050676, -0.266000,
		-0.269889, -0.099716, -0.957715,
		28.484356, 30.866941, 37.272476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180132, 31.403179, 37.596107>,  <28.673279, 30.936743, 37.942879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180132, 31.403179, 37.596107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854956, 31.361322, 37.366959>,  <28.659849, 31.336208, 37.229469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854956, 31.361322, 37.366959>,  <29.180132, 31.403179, 37.596107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854956, 31.361322, 37.366959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086077, 0.951326, -0.295921,
		0.575951, -0.289877, -0.764364,
		-0.812940, -0.104642, -0.572869,
		28.611074, 31.329929, 37.195099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357031, 31.770613, 36.966549>,  <29.180132, 31.403179, 37.596107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357031, 31.770613, 36.966549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959051, 31.757324, 36.928658>,  <28.720263, 31.749352, 36.905922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959051, 31.757324, 36.928658>,  <29.357031, 31.770613, 36.966549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959051, 31.757324, 36.928658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002707, 0.952185, -0.305510,
		0.100344, -0.303711, -0.947465,
		-0.994949, -0.033220, -0.094724,
		28.660566, 31.747358, 36.900242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202635, 31.894512, 36.167522>,  <29.357031, 31.770613, 36.966549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202635, 31.894512, 36.167522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906382, 32.005436, 36.412327>,  <28.728630, 32.071991, 36.559212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906382, 32.005436, 36.412327>,  <29.202635, 31.894512, 36.167522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906382, 32.005436, 36.412327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057479, 0.881370, -0.468917,
		-0.669445, -0.382474, -0.636834,
		-0.740635, 0.277309, 0.612013,
		28.684191, 32.088627, 36.595932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914633, 32.384281, 35.888222>,  <29.202635, 31.894512, 36.167522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914633, 32.384281, 35.888222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714552, 32.470413, 36.223705>,  <28.594503, 32.522095, 36.424995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714552, 32.470413, 36.223705>,  <28.914633, 32.384281, 35.888222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714552, 32.470413, 36.223705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328742, 0.848844, -0.413997,
		-0.801079, -0.482800, -0.353803,
		-0.500201, 0.215334, 0.838707,
		28.564491, 32.535015, 36.475319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272474, 32.620792, 35.669281>,  <28.914633, 32.384281, 35.888222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272474, 32.620792, 35.669281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332232, 32.765316, 36.037441>,  <28.368086, 32.852032, 36.258339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332232, 32.765316, 36.037441>,  <28.272474, 32.620792, 35.669281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332232, 32.765316, 36.037441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321275, 0.898077, -0.300401,
		-0.935128, -0.250824, 0.250247,
		0.149393, 0.361311, 0.920400,
		28.377048, 32.873711, 36.313560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618219, 32.985878, 35.888927>,  <28.272474, 32.620792, 35.669281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618219, 32.985878, 35.888927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906570, 33.143063, 36.117283>,  <28.079580, 33.237373, 36.254295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906570, 33.143063, 36.117283>,  <27.618219, 32.985878, 35.888927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906570, 33.143063, 36.117283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219626, 0.910791, -0.349605,
		-0.657344, 0.126640, 0.742874,
		0.720877, 0.392965, 0.570890,
		28.122833, 33.260952, 36.288551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455811, 33.614609, 35.995422>,  <27.618219, 32.985878, 35.888927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455811, 33.614609, 35.995422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845167, 33.662560, 36.073544>,  <28.078781, 33.691330, 36.120415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845167, 33.662560, 36.073544>,  <27.455811, 33.614609, 35.995422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845167, 33.662560, 36.073544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070558, 0.967640, -0.242269,
		-0.218024, 0.222042, 0.950349,
		0.973390, 0.119875, 0.195302,
		28.137184, 33.698521, 36.132133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553621, 34.288464, 36.458908>,  <27.455811, 33.614609, 35.995422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553621, 34.288464, 36.458908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919100, 34.212704, 36.315079>,  <28.138386, 34.167248, 36.228783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919100, 34.212704, 36.315079>,  <27.553621, 34.288464, 36.458908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919100, 34.212704, 36.315079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091900, 0.958138, -0.271158,
		0.395873, 0.214711, 0.892852,
		0.913695, -0.189397, -0.359569,
		28.193209, 34.155884, 36.207207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814047, 34.866947, 36.554592>,  <27.553621, 34.288464, 36.458908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814047, 34.866947, 36.554592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030119, 34.736401, 36.244316>,  <28.159761, 34.658073, 36.058151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030119, 34.736401, 36.244316>,  <27.814047, 34.866947, 36.554592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030119, 34.736401, 36.244316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358755, 0.923091, -0.138554,
		0.761250, -0.203438, 0.615720,
		0.540178, -0.326367, -0.775688,
		28.192173, 34.638489, 36.011608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496729, 35.074806, 36.775944>,  <27.814047, 34.866947, 36.554592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496729, 35.074806, 36.775944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476126, 35.006828, 36.382301>,  <28.463764, 34.966042, 36.146114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476126, 35.006828, 36.382301>,  <28.496729, 35.074806, 36.775944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476126, 35.006828, 36.382301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445311, 0.878118, -0.174949,
		0.893893, -0.447245, 0.030446,
		-0.051509, -0.169944, -0.984107,
		28.460672, 34.955845, 36.087070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079475, 35.353249, 36.526901>,  <28.496729, 35.074806, 36.775944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079475, 35.353249, 36.526901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837610, 35.326744, 36.209415>,  <28.692492, 35.310841, 36.018925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837610, 35.326744, 36.209415>,  <29.079475, 35.353249, 36.526901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837610, 35.326744, 36.209415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212755, 0.946886, -0.241127,
		0.767539, -0.314669, -0.558451,
		-0.604665, -0.066261, -0.793719,
		28.656210, 35.306866, 35.971298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508333, 35.605099, 35.980980>,  <29.079475, 35.353249, 36.526901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508333, 35.605099, 35.980980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138498, 35.613319, 35.828812>,  <28.916597, 35.618252, 35.737511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138498, 35.613319, 35.828812>,  <29.508333, 35.605099, 35.980980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138498, 35.613319, 35.828812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162116, 0.924852, -0.344044,
		0.344761, -0.379771, -0.858437,
		-0.924586, 0.020553, -0.380419,
		28.861122, 35.619484, 35.714687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621502, 35.843063, 35.323807>,  <29.508333, 35.605099, 35.980980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621502, 35.843063, 35.323807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.250477, 35.919926, 35.452000>,  <29.027863, 35.966042, 35.528915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.250477, 35.919926, 35.452000>,  <29.621502, 35.843063, 35.323807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250477, 35.919926, 35.452000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121026, 0.965907, -0.228860,
		-0.353530, -0.173495, -0.919193,
		-0.927561, 0.192156, 0.320479,
		28.972208, 35.977573, 35.548145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277637, 36.238720, 35.149860>,  <29.621502, 35.843063, 35.323807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277637, 36.238720, 35.149860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446775, 36.308620, 34.794182>,  <30.548258, 36.350559, 34.580776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446775, 36.308620, 34.794182>,  <30.277637, 36.238720, 35.149860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446775, 36.308620, 34.794182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168208, -0.949043, -0.266501,
		-0.890453, 0.262259, -0.371905,
		0.422846, 0.174749, -0.889193,
		30.573629, 36.361046, 34.527424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803108, 36.062962, 34.585552>,  <30.277637, 36.238720, 35.149860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803108, 36.062962, 34.585552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180206, 36.006447, 34.464710>,  <30.406466, 35.972538, 34.392204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180206, 36.006447, 34.464710>,  <29.803108, 36.062962, 34.585552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180206, 36.006447, 34.464710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210525, -0.954657, -0.210497,
		-0.258669, 0.262046, -0.929743,
		0.942746, -0.141285, -0.302108,
		30.463030, 35.964062, 34.374077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739233, 35.816490, 33.923698>,  <29.803108, 36.062962, 34.585552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739233, 35.816490, 33.923698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083759, 35.710026, 34.096809>,  <30.290474, 35.646149, 34.200676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083759, 35.710026, 34.096809>,  <29.739233, 35.816490, 33.923698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083759, 35.710026, 34.096809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062373, -0.900752, -0.429833,
		0.504230, 0.343227, -0.792431,
		0.861314, -0.266161, 0.432778,
		30.342154, 35.630177, 34.226643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123878, 35.338245, 33.344826>,  <29.739233, 35.816490, 33.923698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123878, 35.338245, 33.344826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304552, 35.238544, 33.687489>,  <30.412956, 35.178722, 33.893085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304552, 35.238544, 33.687489>,  <30.123878, 35.338245, 33.344826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304552, 35.238544, 33.687489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100410, -0.968283, -0.228793,
		0.886510, 0.017325, -0.462385,
		0.451683, -0.249255, 0.856653,
		30.440058, 35.163769, 33.944485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664009, 34.744621, 33.245090>,  <30.123878, 35.338245, 33.344826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664009, 34.744621, 33.245090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584249, 34.726898, 33.636658>,  <30.536394, 34.716263, 33.871597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584249, 34.726898, 33.636658>,  <30.664009, 34.744621, 33.245090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584249, 34.726898, 33.636658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118683, -0.990531, -0.069012,
		0.972704, -0.129942, 0.192253,
		-0.199401, -0.044311, 0.978916,
		30.524429, 34.713604, 33.930332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892513, 34.114471, 33.430702>,  <30.664009, 34.744621, 33.245090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892513, 34.114471, 33.430702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651016, 34.185623, 33.741535>,  <30.506119, 34.228313, 33.928036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651016, 34.185623, 33.741535>,  <30.892513, 34.114471, 33.430702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651016, 34.185623, 33.741535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114507, -0.984029, 0.136288,
		0.788913, -0.006699, 0.614468,
		-0.603742, 0.177880, 0.777081,
		30.469894, 34.238987, 33.974659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163805, 33.613785, 33.943027>,  <30.892513, 34.114471, 33.430702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163805, 33.613785, 33.943027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798183, 33.717968, 34.067394>,  <30.578810, 33.780479, 34.142014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798183, 33.717968, 34.067394>,  <31.163805, 33.613785, 33.943027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798183, 33.717968, 34.067394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271601, -0.962379, 0.007725,
		0.301228, -0.077383, 0.950407,
		-0.914054, 0.260458, 0.310913,
		30.523968, 33.796104, 34.160667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057697, 33.145966, 34.454914>,  <31.163805, 33.613785, 33.943027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057697, 33.145966, 34.454914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703791, 33.272266, 34.317806>,  <30.491447, 33.348045, 34.235542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703791, 33.272266, 34.317806>,  <31.057697, 33.145966, 34.454914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703791, 33.272266, 34.317806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351034, -0.935304, 0.044516,
		-0.306537, 0.159709, 0.938365,
		-0.884766, 0.315753, -0.342769,
		30.438360, 33.366993, 34.214977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535883, 32.752110, 34.772381>,  <31.057697, 33.145966, 34.454914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535883, 32.752110, 34.772381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351759, 32.876442, 34.439754>,  <30.241283, 32.951042, 34.240181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351759, 32.876442, 34.439754>,  <30.535883, 32.752110, 34.772381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351759, 32.876442, 34.439754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467823, -0.881018, -0.070356,
		-0.754490, 0.356638, 0.550957,
		-0.460312, 0.310833, -0.831562,
		30.213665, 32.969692, 34.190285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830729, 32.516926, 34.835899>,  <30.535883, 32.752110, 34.772381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830729, 32.516926, 34.835899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883383, 32.583179, 34.444954>,  <29.914976, 32.622932, 34.210388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883383, 32.583179, 34.444954>,  <29.830729, 32.516926, 34.835899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883383, 32.583179, 34.444954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508856, -0.834841, -0.210015,
		-0.850727, 0.524983, -0.025611,
		0.131636, 0.165633, -0.977363,
		29.922874, 32.632870, 34.151745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203430, 32.434383, 34.570511>,  <29.830729, 32.516926, 34.835899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203430, 32.434383, 34.570511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427378, 32.379105, 34.243721>,  <29.561747, 32.345936, 34.047646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427378, 32.379105, 34.243721>,  <29.203430, 32.434383, 34.570511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427378, 32.379105, 34.243721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561962, -0.787897, -0.251827,
		-0.608890, 0.600099, -0.518782,
		0.559868, -0.138200, -0.816976,
		29.595339, 32.337643, 33.998627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737919, 32.303215, 34.128620>,  <29.203430, 32.434383, 34.570511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737919, 32.303215, 34.128620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073454, 32.172440, 33.954510>,  <29.274775, 32.093975, 33.850044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073454, 32.172440, 33.954510>,  <28.737919, 32.303215, 34.128620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073454, 32.172440, 33.954510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495315, -0.790116, -0.361081,
		-0.225872, 0.518488, -0.824713,
		0.838835, -0.326935, -0.435280,
		29.325104, 32.074360, 33.823925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555447, 32.063763, 33.479885>,  <28.737919, 32.303215, 34.128620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555447, 32.063763, 33.479885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906420, 31.889080, 33.559280>,  <29.117004, 31.784269, 33.606918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906420, 31.889080, 33.559280>,  <28.555447, 32.063763, 33.479885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906420, 31.889080, 33.559280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328960, -0.848939, -0.413628,
		0.349136, 0.297637, -0.888547,
		0.877434, -0.436709, 0.198484,
		29.169649, 31.758068, 33.618824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620178, 31.779146, 32.922581>,  <28.555447, 32.063763, 33.479885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620178, 31.779146, 32.922581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865635, 31.587387, 33.173538>,  <29.012909, 31.472332, 33.324112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865635, 31.587387, 33.173538>,  <28.620178, 31.779146, 32.922581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865635, 31.587387, 33.173538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314227, -0.877225, -0.362958,
		0.724366, 0.025582, -0.688941,
		0.613641, -0.479398, 0.627393,
		29.049726, 31.443567, 33.361755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929516, 31.305218, 32.532578>,  <28.620178, 31.779146, 32.922581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929516, 31.305218, 32.532578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953611, 31.164227, 32.906128>,  <28.968069, 31.079632, 33.130260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953611, 31.164227, 32.906128>,  <28.929516, 31.305218, 32.532578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953611, 31.164227, 32.906128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346620, -0.884747, -0.311574,
		0.936069, -0.304932, -0.175472,
		0.060239, -0.352476, 0.933880,
		28.971684, 31.058483, 33.186291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144400, 30.598152, 32.486668>,  <28.929516, 31.305218, 32.532578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144400, 30.598152, 32.486668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024775, 30.596430, 32.868359>,  <28.952999, 30.595396, 33.097374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024775, 30.596430, 32.868359>,  <29.144400, 30.598152, 32.486668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024775, 30.596430, 32.868359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218499, -0.973113, -0.072869,
		0.928880, -0.230290, 0.290082,
		-0.299063, -0.004304, 0.954224,
		28.935055, 30.595139, 33.154625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447649, 30.014460, 32.873192>,  <29.144400, 30.598152, 32.486668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447649, 30.014460, 32.873192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134571, 30.122509, 33.097485>,  <28.946724, 30.187340, 33.232059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134571, 30.122509, 33.097485>,  <29.447649, 30.014460, 32.873192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134571, 30.122509, 33.097485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192212, -0.961779, 0.195026,
		0.591985, 0.044866, 0.804699,
		-0.782693, 0.270125, 0.560735,
		28.899763, 30.203547, 33.265705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506922, 29.707069, 33.508121>,  <29.447649, 30.014460, 32.873192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506922, 29.707069, 33.508121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114552, 29.779087, 33.478802>,  <28.879129, 29.822298, 33.461208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114552, 29.779087, 33.478802>,  <29.506922, 29.707069, 33.508121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114552, 29.779087, 33.478802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189596, -0.969342, 0.156301,
		-0.042915, 0.167217, 0.984986,
		-0.980924, 0.180042, -0.073303,
		28.820274, 29.833099, 33.456810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239986, 29.505659, 34.033512>,  <29.506922, 29.707069, 33.508121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239986, 29.505659, 34.033512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937899, 29.493683, 33.771599>,  <28.756645, 29.486496, 33.614449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937899, 29.493683, 33.771599>,  <29.239986, 29.505659, 34.033512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937899, 29.493683, 33.771599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240535, -0.916603, 0.319345,
		-0.609741, 0.398674, 0.685036,
		-0.755221, -0.029943, -0.654786,
		28.711332, 29.484699, 33.575165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576475, 29.138880, 34.436314>,  <29.239986, 29.505659, 34.033512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576475, 29.138880, 34.436314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488119, 29.152931, 34.046448>,  <28.435106, 29.161362, 33.812527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488119, 29.152931, 34.046448>,  <28.576475, 29.138880, 34.436314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488119, 29.152931, 34.046448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547357, -0.831595, 0.094076,
		-0.807223, 0.554271, 0.202917,
		-0.220888, 0.035127, -0.974666,
		28.421852, 29.163469, 33.754047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915524, 28.709461, 34.376492>,  <28.576475, 29.138880, 34.436314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915524, 28.709461, 34.376492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020086, 28.750492, 33.992588>,  <28.082825, 28.775110, 33.762245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020086, 28.750492, 33.992588>,  <27.915524, 28.709461, 34.376492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020086, 28.750492, 33.992588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533754, -0.813113, -0.232282,
		-0.804222, 0.572996, -0.157802,
		0.261407, 0.102579, -0.959762,
		28.098509, 28.781265, 33.704659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272169, 28.662523, 33.910118>,  <27.915524, 28.709461, 34.376492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272169, 28.662523, 33.910118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593325, 28.533804, 33.709393>,  <27.786018, 28.456572, 33.588959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593325, 28.533804, 33.709393>,  <27.272169, 28.662523, 33.910118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593325, 28.533804, 33.709393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540648, -0.747704, -0.385537,
		-0.251142, 0.580847, -0.774302,
		0.802886, -0.321801, -0.501814,
		27.834190, 28.437263, 33.558849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008198, 28.524313, 33.278862>,  <27.272169, 28.662523, 33.910118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008198, 28.524313, 33.278862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344027, 28.307980, 33.299309>,  <27.545525, 28.178179, 33.311577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344027, 28.307980, 33.299309>,  <27.008198, 28.524313, 33.278862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344027, 28.307980, 33.299309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501942, -0.808287, -0.307777,
		0.207773, 0.232745, -0.950084,
		0.839574, -0.540835, 0.051115,
		27.595900, 28.145729, 33.314644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.627956, 32.581429, 46.064014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232929, 32.581470, 46.126904>,  <37.995914, 32.581497, 46.164635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232929, 32.581470, 46.126904>,  <38.627956, 32.581429, 46.064014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232929, 32.581470, 46.126904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152481, 0.244357, 0.957622,
		-0.038316, 0.969685, -0.241334,
		-0.987563, 0.000106, 0.157221,
		37.936661, 32.581501, 46.174068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599571, 32.720161, 46.796196>,  <38.627956, 32.581429, 46.064014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599571, 32.720161, 46.796196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204422, 32.677887, 46.750710>,  <37.967331, 32.652523, 46.723419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204422, 32.677887, 46.750710>,  <38.599571, 32.720161, 46.796196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204422, 32.677887, 46.750710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134645, 0.218674, 0.966464,
		-0.077275, 0.970058, -0.230253,
		-0.987876, -0.105686, -0.113715,
		37.908058, 32.646183, 46.716595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148598, 33.354950, 46.969585>,  <38.599571, 32.720161, 46.796196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148598, 33.354950, 46.969585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925381, 33.026134, 47.014919>,  <37.791451, 32.828846, 47.042118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925381, 33.026134, 47.014919>,  <38.148598, 33.354950, 46.969585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925381, 33.026134, 47.014919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255826, 0.300357, 0.918879,
		-0.789392, 0.483781, -0.377910,
		-0.558045, -0.822035, 0.113336,
		37.757969, 32.779526, 47.048920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682446, 33.578854, 47.508537>,  <38.148598, 33.354950, 46.969585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682446, 33.578854, 47.508537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603924, 33.186638, 47.507587>,  <37.556808, 32.951309, 47.507019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603924, 33.186638, 47.507587>,  <37.682446, 33.578854, 47.508537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603924, 33.186638, 47.507587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499910, 0.098004, 0.860515,
		-0.843536, 0.170111, -0.509420,
		-0.196309, -0.980539, -0.002370,
		37.545033, 32.892475, 47.506878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949535, 33.495918, 47.814720>,  <37.682446, 33.578854, 47.508537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949535, 33.495918, 47.814720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124641, 33.139046, 47.859219>,  <37.229706, 32.924923, 47.885918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124641, 33.139046, 47.859219>,  <36.949535, 33.495918, 47.814720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124641, 33.139046, 47.859219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230247, 0.008362, 0.973096,
		-0.869109, -0.451600, -0.201762,
		0.437763, -0.892182, 0.111247,
		37.255970, 32.871391, 47.892593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521481, 33.141323, 48.266453>,  <36.949535, 33.495918, 47.814720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521481, 33.141323, 48.266453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850719, 32.916901, 48.301594>,  <37.048264, 32.782246, 48.322678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850719, 32.916901, 48.301594>,  <36.521481, 33.141323, 48.266453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850719, 32.916901, 48.301594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200098, -0.141743, 0.969469,
		-0.531476, -0.815550, -0.228936,
		0.823101, -0.561059, 0.087856,
		37.097649, 32.748585, 48.327950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330864, 32.527164, 48.614685>,  <36.521481, 33.141323, 48.266453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330864, 32.527164, 48.614685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722202, 32.580059, 48.678383>,  <36.957005, 32.611797, 48.716602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722202, 32.580059, 48.678383>,  <36.330864, 32.527164, 48.614685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722202, 32.580059, 48.678383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148324, -0.088736, 0.984950,
		0.144382, -0.987238, -0.067200,
		0.978342, 0.132242, 0.159243,
		37.015705, 32.619732, 48.726154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436699, 32.013676, 49.039104>,  <36.330864, 32.527164, 48.614685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436699, 32.013676, 49.039104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746948, 32.260902, 49.090336>,  <36.933098, 32.409241, 49.121075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746948, 32.260902, 49.090336>,  <36.436699, 32.013676, 49.039104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746948, 32.260902, 49.090336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132514, -0.038944, 0.990416,
		0.617135, -0.785157, 0.051698,
		0.775619, 0.618071, 0.128078,
		36.979633, 32.446323, 49.128757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800072, 31.777306, 49.637630>,  <36.436699, 32.013676, 49.039104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800072, 31.777306, 49.637630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906033, 32.160946, 49.597717>,  <36.969608, 32.391129, 49.573769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906033, 32.160946, 49.597717>,  <36.800072, 31.777306, 49.637630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906033, 32.160946, 49.597717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026192, 0.110595, 0.993520,
		0.963919, -0.260574, 0.054418,
		0.264904, 0.959098, -0.099780,
		36.985504, 32.448677, 49.567783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414944, 31.918749, 50.101044>,  <36.800072, 31.777306, 49.637630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414944, 31.918749, 50.101044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279560, 32.286091, 50.019001>,  <37.198330, 32.506496, 49.969776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279560, 32.286091, 50.019001>,  <37.414944, 31.918749, 50.101044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279560, 32.286091, 50.019001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026769, 0.208485, 0.977659,
		0.940599, 0.336392, -0.045981,
		-0.338463, 0.918354, -0.205106,
		37.178020, 32.561596, 49.957470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807217, 32.347736, 50.623299>,  <37.414944, 31.918749, 50.101044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807217, 32.347736, 50.623299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.494324, 32.560143, 50.492989>,  <37.306587, 32.687588, 50.414803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.494324, 32.560143, 50.492989>,  <37.807217, 32.347736, 50.623299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494324, 32.560143, 50.492989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225469, 0.246161, 0.942639,
		0.580752, 0.810817, -0.072827,
		-0.782235, 0.531019, -0.325772,
		37.259655, 32.719448, 50.395256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835423, 33.035686, 50.860165>,  <37.807217, 32.347736, 50.623299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835423, 33.035686, 50.860165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451687, 32.950386, 50.786209>,  <37.221443, 32.899208, 50.741837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451687, 32.950386, 50.786209>,  <37.835423, 33.035686, 50.860165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451687, 32.950386, 50.786209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250949, 0.344683, 0.904554,
		-0.129166, 0.914177, -0.384184,
		-0.959344, -0.213248, -0.184890,
		37.163883, 32.886410, 50.730743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349987, 33.617966, 51.001865>,  <37.835423, 33.035686, 50.860165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349987, 33.617966, 51.001865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.149509, 33.275627, 51.052979>,  <37.029224, 33.070225, 51.083649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.149509, 33.275627, 51.052979>,  <37.349987, 33.617966, 51.001865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149509, 33.275627, 51.052979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253339, 0.286325, 0.924033,
		-0.827420, 0.430746, -0.360324,
		-0.501194, -0.855848, 0.127786,
		36.999153, 33.018871, 51.091316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759911, 33.778229, 51.364613>,  <37.349987, 33.617966, 51.001865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759911, 33.778229, 51.364613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836876, 33.390396, 51.425117>,  <36.883057, 33.157696, 51.461422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836876, 33.390396, 51.425117>,  <36.759911, 33.778229, 51.364613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836876, 33.390396, 51.425117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306623, 0.087024, 0.947844,
		-0.932180, -0.228759, -0.280553,
		0.192413, -0.969586, 0.151265,
		36.894600, 33.099522, 51.470497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928608, 34.520580, 51.073544>,  <36.759911, 33.778229, 51.364613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928608, 34.520580, 51.073544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995285, 34.890339, 51.210773>,  <37.035294, 35.112194, 51.293114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995285, 34.890339, 51.210773>,  <36.928608, 34.520580, 51.073544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995285, 34.890339, 51.210773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352084, 0.269203, -0.896419,
		-0.921004, 0.270222, -0.280590,
		0.166696, 0.924397, 0.343078,
		37.045296, 35.167660, 51.313698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798534, 34.983635, 50.509594>,  <36.928608, 34.520580, 51.073544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798534, 34.983635, 50.509594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032570, 35.191536, 50.758602>,  <37.172989, 35.316277, 50.908009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032570, 35.191536, 50.758602>,  <36.798534, 34.983635, 50.509594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032570, 35.191536, 50.758602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435983, 0.445665, -0.781858,
		-0.683807, 0.728863, 0.034150,
		0.585087, 0.519751, 0.622521,
		37.208096, 35.347462, 50.945358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766804, 35.629562, 50.195911>,  <36.798534, 34.983635, 50.509594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766804, 35.629562, 50.195911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075214, 35.659485, 50.448872>,  <37.260262, 35.677437, 50.600647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075214, 35.659485, 50.448872>,  <36.766804, 35.629562, 50.195911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075214, 35.659485, 50.448872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469320, 0.604476, -0.643699,
		-0.430422, 0.793103, 0.430957,
		0.771022, 0.074806, 0.632399,
		37.306522, 35.681927, 50.638592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958271, 36.363678, 50.441475>,  <36.766804, 35.629562, 50.195911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958271, 36.363678, 50.441475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277794, 36.123051, 50.443657>,  <37.469509, 35.978676, 50.444965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277794, 36.123051, 50.443657>,  <36.958271, 36.363678, 50.441475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277794, 36.123051, 50.443657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369118, 0.482940, -0.794054,
		0.475039, 0.636309, 0.607823,
		0.798806, -0.601564, 0.005458,
		37.517437, 35.942581, 50.445293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477760, 36.845337, 50.345085>,  <36.958271, 36.363678, 50.441475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477760, 36.845337, 50.345085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.643173, 36.493259, 50.251915>,  <37.742420, 36.282013, 50.196014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.643173, 36.493259, 50.251915>,  <37.477760, 36.845337, 50.345085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643173, 36.493259, 50.251915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543205, 0.443814, -0.712711,
		0.730696, 0.168206, 0.661657,
		0.413535, -0.880191, -0.232923,
		37.767235, 36.229202, 50.182037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159843, 37.033649, 50.063618>,  <37.477760, 36.845337, 50.345085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159843, 37.033649, 50.063618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117512, 36.654465, 49.943504>,  <38.092113, 36.426952, 49.871437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117512, 36.654465, 49.943504>,  <38.159843, 37.033649, 50.063618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117512, 36.654465, 49.943504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409340, 0.233673, -0.881951,
		0.906224, -0.216251, 0.363310,
		-0.105827, -0.947962, -0.300281,
		38.085762, 36.370075, 49.853420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717491, 36.836590, 49.641415>,  <38.159843, 37.033649, 50.063618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717491, 36.836590, 49.641415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464298, 36.554543, 49.513573>,  <38.312382, 36.385315, 49.436867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464298, 36.554543, 49.513573>,  <38.717491, 36.836590, 49.641415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464298, 36.554543, 49.513573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364443, 0.092823, -0.926588,
		0.683017, -0.702992, 0.198219,
		-0.632985, -0.705114, -0.319600,
		38.274403, 36.343010, 49.417694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166264, 36.522274, 49.236755>,  <38.717491, 36.836590, 49.641415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166264, 36.522274, 49.236755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791336, 36.430893, 49.131493>,  <38.566380, 36.376064, 49.068336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791336, 36.430893, 49.131493>,  <39.166264, 36.522274, 49.236755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791336, 36.430893, 49.131493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207428, 0.241039, -0.948090,
		0.280031, -0.943242, -0.178540,
		-0.937313, -0.228460, -0.263153,
		38.510143, 36.362354, 49.052547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239952, 36.305073, 48.625900>,  <39.166264, 36.522274, 49.236755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239952, 36.305073, 48.625900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843815, 36.338043, 48.581326>,  <38.606133, 36.357826, 48.554581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843815, 36.338043, 48.581326>,  <39.239952, 36.305073, 48.625900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843815, 36.338043, 48.581326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106925, -0.057315, -0.992614,
		-0.088214, -0.994947, 0.047947,
		-0.990346, 0.082436, -0.111441,
		38.546711, 36.362774, 48.547894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079643, 35.791801, 48.145653>,  <39.239952, 36.305073, 48.625900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079643, 35.791801, 48.145653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811100, 36.087643, 48.126625>,  <38.649975, 36.265148, 48.115208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811100, 36.087643, 48.126625>,  <39.079643, 35.791801, 48.145653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811100, 36.087643, 48.126625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044891, -0.023490, -0.998716,
		-0.739775, -0.672628, -0.017432,
		-0.671355, 0.739608, -0.047572,
		38.609692, 36.309525, 48.112354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707455, 35.722336, 47.461304>,  <39.079643, 35.791801, 48.145653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707455, 35.722336, 47.461304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.596649, 36.094425, 47.557594>,  <38.530167, 36.317680, 47.615368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.596649, 36.094425, 47.557594>,  <38.707455, 35.722336, 47.461304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596649, 36.094425, 47.557594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020558, 0.244735, -0.969372,
		-0.960647, -0.273474, -0.048670,
		-0.277009, 0.930224, 0.240726,
		38.513546, 36.373493, 47.629810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016911, 35.854832, 47.102737>,  <38.707455, 35.722336, 47.461304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016911, 35.854832, 47.102737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183430, 36.211647, 47.173130>,  <38.283340, 36.425735, 47.215366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183430, 36.211647, 47.173130>,  <38.016911, 35.854832, 47.102737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183430, 36.211647, 47.173130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133888, 0.251582, -0.958531,
		-0.899318, 0.375470, 0.224165,
		0.416296, 0.892036, 0.175981,
		38.308319, 36.479259, 47.225925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574005, 36.241463, 46.786629>,  <38.016911, 35.854832, 47.102737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574005, 36.241463, 46.786629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891750, 36.483391, 46.809158>,  <38.082397, 36.628548, 46.822678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891750, 36.483391, 46.809158>,  <37.574005, 36.241463, 46.786629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891750, 36.483391, 46.809158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172657, 0.313715, -0.933688,
		-0.582386, 0.731965, 0.353631,
		0.794366, 0.604823, 0.056324,
		38.130058, 36.664837, 46.826057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359291, 36.863728, 46.423130>,  <37.574005, 36.241463, 46.786629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359291, 36.863728, 46.423130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758808, 36.865459, 46.403553>,  <37.998520, 36.866497, 46.391808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758808, 36.865459, 46.403553>,  <37.359291, 36.863728, 46.423130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758808, 36.865459, 46.403553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048891, 0.187414, -0.981064,
		0.004926, 0.982272, 0.187400,
		0.998792, 0.004330, -0.048947,
		38.058445, 36.866756, 46.388870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065861, 37.532887, 46.526550>,  <37.359291, 36.863728, 46.423130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065861, 37.532887, 46.526550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673931, 37.609360, 46.503223>,  <36.438774, 37.655243, 46.489227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673931, 37.609360, 46.503223>,  <37.065861, 37.532887, 46.526550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673931, 37.609360, 46.503223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058294, 0.005776, 0.998283,
		0.191193, 0.981537, 0.005486,
		-0.979820, 0.191184, -0.058322,
		36.379986, 37.666714, 46.485725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962292, 38.060612, 47.115337>,  <37.065861, 37.532887, 46.526550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962292, 38.060612, 47.115337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601997, 37.929501, 47.001331>,  <36.385822, 37.850834, 46.932926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601997, 37.929501, 47.001331>,  <36.962292, 38.060612, 47.115337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601997, 37.929501, 47.001331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341709, 0.129629, 0.930823,
		-0.268155, 0.935820, -0.228765,
		-0.900737, -0.327776, -0.285018,
		36.331776, 37.831169, 46.915825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446445, 38.473137, 47.436443>,  <36.962292, 38.060612, 47.115337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446445, 38.473137, 47.436443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261574, 38.129856, 47.347111>,  <36.150650, 37.923889, 47.293510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261574, 38.129856, 47.347111>,  <36.446445, 38.473137, 47.436443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261574, 38.129856, 47.347111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588365, 0.108331, 0.801306,
		-0.663490, 0.501748, -0.555005,
		-0.462178, -0.858203, -0.223334,
		36.122921, 37.872395, 47.280109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677227, 38.659153, 47.533150>,  <36.446445, 38.473137, 47.436443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677227, 38.659153, 47.533150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709518, 38.260475, 47.536968>,  <35.728893, 38.021271, 47.539257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709518, 38.260475, 47.536968>,  <35.677227, 38.659153, 47.533150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709518, 38.260475, 47.536968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513572, -0.033390, 0.857397,
		-0.854240, -0.074120, -0.514568,
		0.080732, -0.996690, 0.009543,
		35.733738, 37.961468, 47.539829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021645, 38.427921, 47.596367>,  <35.677227, 38.659153, 47.533150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021645, 38.427921, 47.596367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257797, 38.124897, 47.707760>,  <35.399487, 37.943081, 47.774593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257797, 38.124897, 47.707760>,  <35.021645, 38.427921, 47.596367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257797, 38.124897, 47.707760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423901, 0.002585, 0.905705,
		-0.686850, -0.652755, -0.319606,
		0.590377, -0.757565, 0.278479,
		35.434910, 37.897629, 47.791306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624596, 37.966602, 47.906147>,  <35.021645, 38.427921, 47.596367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624596, 37.966602, 47.906147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982914, 37.860283, 48.048637>,  <35.197906, 37.796494, 48.134132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982914, 37.860283, 48.048637>,  <34.624596, 37.966602, 47.906147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982914, 37.860283, 48.048637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374745, -0.020751, 0.926895,
		-0.238973, -0.963806, -0.118195,
		0.895800, -0.265796, 0.356223,
		35.251656, 37.780544, 48.155506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448151, 37.403675, 48.406078>,  <34.624596, 37.966602, 47.906147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448151, 37.403675, 48.406078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815830, 37.521847, 48.510223>,  <35.036438, 37.592751, 48.572712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815830, 37.521847, 48.510223>,  <34.448151, 37.403675, 48.406078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815830, 37.521847, 48.510223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298284, 0.090714, 0.950157,
		0.257085, -0.951048, 0.171506,
		0.919203, 0.295429, 0.260361,
		35.091591, 37.610474, 48.588333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432423, 36.653790, 48.277599>,  <34.448151, 37.403675, 48.406078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432423, 36.653790, 48.277599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095219, 36.442181, 48.238659>,  <33.892899, 36.315216, 48.215294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095219, 36.442181, 48.238659>,  <34.432423, 36.653790, 48.277599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095219, 36.442181, 48.238659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299884, -0.311967, -0.901525,
		0.446555, -0.789185, 0.421634,
		-0.843006, -0.529021, -0.097354,
		33.842316, 36.283474, 48.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662548, 36.090832, 48.025192>,  <34.432423, 36.653790, 48.277599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662548, 36.090832, 48.025192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274281, 36.067230, 47.931973>,  <34.041321, 36.053070, 47.876041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274281, 36.067230, 47.931973>,  <34.662548, 36.090832, 48.025192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274281, 36.067230, 47.931973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240331, -0.213887, -0.946833,
		0.006024, -0.975074, 0.221795,
		-0.970672, -0.059008, -0.233052,
		33.983078, 36.049526, 47.862057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604084, 35.592468, 47.542549>,  <34.662548, 36.090832, 48.025192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604084, 35.592468, 47.542549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269363, 35.801151, 47.476109>,  <34.068531, 35.926361, 47.436245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269363, 35.801151, 47.476109>,  <34.604084, 35.592468, 47.542549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269363, 35.801151, 47.476109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032090, -0.256116, -0.966113,
		-0.546568, -0.813773, 0.197576,
		-0.836800, 0.521707, -0.166099,
		34.018322, 35.957664, 47.426277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198097, 35.138855, 47.126343>,  <34.604084, 35.592468, 47.542549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198097, 35.138855, 47.126343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070675, 35.512642, 47.062725>,  <33.994221, 35.736916, 47.024555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070675, 35.512642, 47.062725>,  <34.198097, 35.138855, 47.126343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070675, 35.512642, 47.062725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025543, -0.159266, -0.986905,
		-0.947561, -0.318442, 0.026866,
		-0.318551, 0.934467, -0.159049,
		33.975109, 35.792980, 47.015011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739464, 35.057293, 46.609280>,  <34.198097, 35.138855, 47.126343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739464, 35.057293, 46.609280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784775, 35.454716, 46.610161>,  <33.811962, 35.693169, 46.610691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784775, 35.454716, 46.610161>,  <33.739464, 35.057293, 46.609280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784775, 35.454716, 46.610161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101853, 0.013820, -0.994703,
		-0.988329, 0.112452, 0.102763,
		0.113277, 0.993561, 0.002205,
		33.818756, 35.752785, 46.610821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216640, 35.423615, 46.106529>,  <33.739464, 35.057293, 46.609280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216640, 35.423615, 46.106529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498672, 35.699661, 46.171776>,  <33.667892, 35.865288, 46.210922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498672, 35.699661, 46.171776>,  <33.216640, 35.423615, 46.106529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498672, 35.699661, 46.171776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025231, 0.205458, -0.978341,
		-0.708678, 0.693925, 0.127453,
		0.705081, 0.690112, 0.163112,
		33.710197, 35.906696, 46.220711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055431, 36.105228, 45.730469>,  <33.216640, 35.423615, 46.106529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055431, 36.105228, 45.730469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454765, 36.110718, 45.752884>,  <33.694366, 36.114010, 45.766335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454765, 36.110718, 45.752884>,  <33.055431, 36.105228, 45.730469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454765, 36.110718, 45.752884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052175, 0.199767, -0.978453,
		-0.024621, 0.979747, 0.198718,
		0.998334, 0.013722, 0.056037,
		33.754265, 36.114834, 45.769695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.330048, 32.486027, 50.801842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694786, 32.425571, 50.649158>,  <34.913628, 32.389297, 50.557549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694786, 32.425571, 50.649158>,  <34.330048, 32.486027, 50.801842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694786, 32.425571, 50.649158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396553, -0.083624, -0.914195,
		0.106251, 0.984969, -0.136186,
		0.911842, -0.151139, -0.381707,
		34.968338, 32.380230, 50.534645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385651, 32.976112, 50.259342>,  <34.330048, 32.486027, 50.801842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385651, 32.976112, 50.259342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612141, 32.648373, 50.223442>,  <34.748035, 32.451729, 50.201900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612141, 32.648373, 50.223442>,  <34.385651, 32.976112, 50.259342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612141, 32.648373, 50.223442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442682, -0.210442, -0.871635,
		0.695285, 0.533274, -0.481869,
		0.566225, -0.819349, -0.089754,
		34.782009, 32.402569, 50.196514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579182, 32.948574, 49.552044>,  <34.385651, 32.976112, 50.259342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579182, 32.948574, 49.552044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.749992, 32.603333, 49.659897>,  <34.852478, 32.396187, 49.724609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.749992, 32.603333, 49.659897>,  <34.579182, 32.948574, 49.552044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749992, 32.603333, 49.659897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074998, -0.330968, -0.940657,
		0.901123, 0.381464, -0.206063,
		0.427027, -0.863102, 0.269634,
		34.878101, 32.344402, 49.740788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175690, 32.833138, 49.146694>,  <34.579182, 32.948574, 49.552044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175690, 32.833138, 49.146694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.058140, 32.479282, 49.291500>,  <34.987610, 32.266968, 49.378384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.058140, 32.479282, 49.291500>,  <35.175690, 32.833138, 49.146694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058140, 32.479282, 49.291500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043158, -0.390630, -0.919536,
		0.954869, -0.254606, 0.152975,
		-0.293876, -0.884638, 0.362012,
		34.969978, 32.213890, 49.400105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710880, 32.244701, 49.010056>,  <35.175690, 32.833138, 49.146694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710880, 32.244701, 49.010056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334766, 32.108833, 49.018970>,  <35.109100, 32.027313, 49.024319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334766, 32.108833, 49.018970>,  <35.710880, 32.244701, 49.010056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334766, 32.108833, 49.018970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131199, -0.422043, -0.897032,
		0.314098, -0.840539, 0.441403,
		-0.940282, -0.339668, 0.022285,
		35.052681, 32.006931, 49.025658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754955, 31.723871, 48.561588>,  <35.710880, 32.244701, 49.010056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754955, 31.723871, 48.561588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.360729, 31.735031, 48.628391>,  <35.124195, 31.741728, 48.668472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.360729, 31.735031, 48.628391>,  <35.754955, 31.723871, 48.561588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360729, 31.735031, 48.628391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165646, -0.363261, -0.916844,
		0.035089, -0.931270, 0.362637,
		-0.985561, 0.027898, 0.167008,
		35.065060, 31.743401, 48.678493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534798, 31.089828, 48.198975>,  <35.754955, 31.723871, 48.561588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534798, 31.089828, 48.198975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.231262, 31.347387, 48.238083>,  <35.049141, 31.501923, 48.261547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.231262, 31.347387, 48.238083>,  <35.534798, 31.089828, 48.198975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231262, 31.347387, 48.238083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320578, -0.238617, -0.916674,
		-0.566915, -0.726951, 0.387491,
		-0.758839, 0.643898, 0.097768,
		35.003609, 31.540556, 48.267414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072041, 30.722933, 47.876930>,  <35.534798, 31.089828, 48.198975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072041, 30.722933, 47.876930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904251, 31.085583, 47.895126>,  <34.803577, 31.303173, 47.906044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904251, 31.085583, 47.895126>,  <35.072041, 30.722933, 47.876930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904251, 31.085583, 47.895126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035912, 0.033495, -0.998793,
		-0.907057, -0.420601, 0.018508,
		-0.419474, 0.906627, 0.045487,
		34.778408, 31.357571, 47.908772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450039, 30.579853, 47.490540>,  <35.072041, 30.722933, 47.876930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450039, 30.579853, 47.490540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517776, 30.971193, 47.442955>,  <34.558418, 31.205997, 47.414406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517776, 30.971193, 47.442955>,  <34.450039, 30.579853, 47.490540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517776, 30.971193, 47.442955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351002, -0.052919, -0.934878,
		-0.920934, 0.200075, 0.334441,
		0.169347, 0.978351, -0.118962,
		34.568581, 31.264698, 47.407265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800331, 30.780689, 47.320076>,  <34.450039, 30.579853, 47.490540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800331, 30.780689, 47.320076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050419, 31.078588, 47.226734>,  <34.200470, 31.257328, 47.170731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050419, 31.078588, 47.226734>,  <33.800331, 30.780689, 47.320076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050419, 31.078588, 47.226734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291361, -0.054650, -0.955051,
		-0.724025, 0.665105, 0.182822,
		0.625218, 0.744748, -0.233354,
		34.237984, 31.302013, 47.156727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403439, 31.172300, 46.842773>,  <33.800331, 30.780689, 47.320076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403439, 31.172300, 46.842773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.781025, 31.288195, 46.779541>,  <34.007576, 31.357731, 46.741600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.781025, 31.288195, 46.779541>,  <33.403439, 31.172300, 46.842773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781025, 31.288195, 46.779541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176620, 0.038807, -0.983514,
		-0.278823, 0.956320, 0.087806,
		0.943961, 0.289734, -0.158085,
		34.064213, 31.375114, 46.732117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336967, 31.762411, 46.376884>,  <33.403439, 31.172300, 46.842773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336967, 31.762411, 46.376884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.717579, 31.645782, 46.337727>,  <33.945946, 31.575806, 46.314232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.717579, 31.645782, 46.337727>,  <33.336967, 31.762411, 46.376884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717579, 31.645782, 46.337727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057742, 0.143279, -0.987996,
		0.302099, 0.945757, 0.119498,
		0.951526, -0.291573, -0.097894,
		34.003036, 31.558311, 46.308357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323475, 32.539532, 46.282547>,  <33.336967, 31.762411, 46.376884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323475, 32.539532, 46.282547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.046566, 32.827629, 46.264629>,  <32.880421, 33.000488, 46.253880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.046566, 32.827629, 46.264629>,  <33.323475, 32.539532, 46.282547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046566, 32.827629, 46.264629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006860, 0.055498, 0.998435,
		0.721602, 0.691498, -0.033479,
		-0.692274, 0.720243, -0.044791,
		32.838882, 33.043701, 46.251194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480408, 32.863129, 46.909252>,  <33.323475, 32.539532, 46.282547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480408, 32.863129, 46.909252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.138432, 33.042747, 46.805374>,  <32.933247, 33.150517, 46.743046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.138432, 33.042747, 46.805374>,  <33.480408, 32.863129, 46.909252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138432, 33.042747, 46.805374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105625, 0.339458, 0.934672,
		0.507865, 0.826516, -0.242785,
		-0.854937, 0.449043, -0.259700,
		32.881950, 33.177460, 46.727463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462097, 33.562080, 47.200245>,  <33.480408, 32.863129, 46.909252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462097, 33.562080, 47.200245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073006, 33.479813, 47.157352>,  <32.839550, 33.430454, 47.131618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.073006, 33.479813, 47.157352>,  <33.462097, 33.562080, 47.200245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073006, 33.479813, 47.157352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171968, 0.329293, 0.928436,
		-0.155637, 0.921558, -0.355681,
		-0.972730, -0.205665, -0.107229,
		32.781185, 33.418114, 47.125183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028427, 34.169781, 47.199230>,  <33.462097, 33.562080, 47.200245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028427, 34.169781, 47.199230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.800491, 33.862415, 47.315727>,  <32.663731, 33.677994, 47.385624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.800491, 33.862415, 47.315727>,  <33.028427, 34.169781, 47.199230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800491, 33.862415, 47.315727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027925, 0.372313, 0.927687,
		-0.821284, 0.520497, -0.233616,
		-0.569836, -0.768418, 0.291240,
		32.629539, 33.631889, 47.403099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504353, 34.470924, 47.541897>,  <33.028427, 34.169781, 47.199230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504353, 34.470924, 47.541897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492226, 34.089340, 47.661259>,  <32.484951, 33.860390, 47.732876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492226, 34.089340, 47.661259>,  <32.504353, 34.470924, 47.541897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492226, 34.089340, 47.661259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099346, 0.299943, 0.948770,
		-0.994591, -0.000885, -0.103864,
		-0.030314, -0.953957, 0.298409,
		32.483131, 33.803154, 47.750782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998652, 34.481144, 48.167435>,  <32.504353, 34.470924, 47.541897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998652, 34.481144, 48.167435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.196293, 34.137009, 48.217514>,  <32.314877, 33.930527, 48.247562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.196293, 34.137009, 48.217514>,  <31.998652, 34.481144, 48.167435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196293, 34.137009, 48.217514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137791, 0.064696, 0.988346,
		-0.858415, -0.505597, -0.086581,
		0.494103, -0.860341, 0.125203,
		32.344524, 33.878906, 48.255074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649181, 34.156937, 48.623936>,  <31.998652, 34.481144, 48.167435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649181, 34.156937, 48.623936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010075, 33.984966, 48.637478>,  <32.226608, 33.881786, 48.645603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010075, 33.984966, 48.637478>,  <31.649181, 34.156937, 48.623936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010075, 33.984966, 48.637478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005819, 0.066358, 0.997779,
		-0.431214, -0.900424, 0.057369,
		0.902231, -0.429923, 0.033854,
		32.280743, 33.855991, 48.647633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639324, 33.821201, 49.169476>,  <31.649181, 34.156937, 48.623936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639324, 33.821201, 49.169476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036655, 33.805073, 49.126259>,  <32.275055, 33.795395, 49.100327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036655, 33.805073, 49.126259>,  <31.639324, 33.821201, 49.169476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036655, 33.805073, 49.126259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106222, -0.044902, 0.993328,
		-0.044902, -0.998177, -0.040319,
		-0.993328, 0.040319, 0.108044,
		32.334656, 33.792976, 49.093845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760696, 33.324009, 49.601398>,  <31.639324, 33.821201, 49.169476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760696, 33.324009, 49.601398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088982, 33.550362, 49.569889>,  <32.285954, 33.686172, 49.550983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088982, 33.550362, 49.569889>,  <31.760696, 33.324009, 49.601398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088982, 33.550362, 49.569889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133709, -0.056191, 0.989426,
		0.555475, -0.822567, -0.121781,
		0.820712, 0.565885, -0.078772,
		32.335194, 33.720127, 49.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172207, 33.013496, 50.043743>,  <31.760696, 33.324009, 49.601398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172207, 33.013496, 50.043743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304245, 33.386288, 49.983807>,  <32.383469, 33.609962, 49.947845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304245, 33.386288, 49.983807>,  <32.172207, 33.013496, 50.043743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304245, 33.386288, 49.983807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270210, 0.058800, 0.961004,
		0.904447, -0.357708, -0.232421,
		0.330093, 0.931980, -0.149838,
		32.403275, 33.665882, 49.938854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583740, 33.078804, 50.626598>,  <32.172207, 33.013496, 50.043743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583740, 33.078804, 50.626598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585995, 33.455570, 50.492279>,  <32.587345, 33.681629, 50.411686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585995, 33.455570, 50.492279>,  <32.583740, 33.078804, 50.626598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585995, 33.455570, 50.492279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238793, 0.324821, 0.915133,
		0.971054, -0.085341, -0.223094,
		0.005633, 0.941917, -0.335798,
		32.587685, 33.738144, 50.391541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163387, 33.409416, 50.954922>,  <32.583740, 33.078804, 50.626598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163387, 33.409416, 50.954922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.901028, 33.687946, 50.838352>,  <32.743610, 33.855064, 50.768410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.901028, 33.687946, 50.838352>,  <33.163387, 33.409416, 50.954922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901028, 33.687946, 50.838352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055862, 0.340233, 0.938680,
		0.752776, 0.631961, -0.184261,
		-0.655902, 0.696323, -0.291422,
		32.704258, 33.896843, 50.750927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393341, 34.062469, 51.172009>,  <33.163387, 33.409416, 50.954922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393341, 34.062469, 51.172009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.002754, 34.137997, 51.130314>,  <32.768402, 34.183315, 51.105297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.002754, 34.137997, 51.130314>,  <33.393341, 34.062469, 51.172009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002754, 34.137997, 51.130314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036253, 0.332744, 0.942320,
		0.212615, 0.923920, -0.318067,
		-0.976463, 0.188821, -0.104241,
		32.709816, 34.194641, 51.099041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334415, 34.698555, 51.397480>,  <33.393341, 34.062469, 51.172009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334415, 34.698555, 51.397480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967514, 34.544327, 51.437443>,  <32.747372, 34.451790, 51.461418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967514, 34.544327, 51.437443>,  <33.334415, 34.698555, 51.397480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967514, 34.544327, 51.437443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028048, 0.312732, 0.949427,
		-0.397311, 0.868065, -0.297669,
		-0.917255, -0.385567, 0.099905,
		32.692337, 34.428658, 51.467415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275574, 35.378075, 50.863762>,  <33.334415, 34.698555, 51.397480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275574, 35.378075, 50.863762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167839, 35.763012, 50.878445>,  <33.103199, 35.993977, 50.887253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167839, 35.763012, 50.878445>,  <33.275574, 35.378075, 50.863762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167839, 35.763012, 50.878445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251212, 0.106997, -0.962000,
		-0.929705, -0.249879, -0.270571,
		-0.269334, 0.962347, 0.036703,
		33.087040, 36.051716, 50.889454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537579, 35.443874, 50.597130>,  <33.275574, 35.378075, 50.863762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537579, 35.443874, 50.597130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776402, 35.761772, 50.553482>,  <32.919697, 35.952511, 50.527294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776402, 35.761772, 50.553482>,  <32.537579, 35.443874, 50.597130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776402, 35.761772, 50.553482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040470, -0.106016, -0.993541,
		-0.801177, 0.597617, -0.031134,
		0.597057, 0.794742, -0.109123,
		32.955517, 36.000195, 50.520744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323807, 35.741814, 49.838318>,  <32.537579, 35.443874, 50.597130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323807, 35.741814, 49.838318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654961, 35.930759, 49.959301>,  <32.853653, 36.044128, 50.031891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654961, 35.930759, 49.959301>,  <32.323807, 35.741814, 49.838318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654961, 35.930759, 49.959301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161616, 0.315484, -0.935067,
		-0.537115, 0.823008, 0.184842,
		0.827882, 0.472365, 0.302462,
		32.903324, 36.072468, 50.050041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277317, 36.408398, 49.588318>,  <32.323807, 35.741814, 49.838318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277317, 36.408398, 49.588318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.667824, 36.338169, 49.639030>,  <32.902130, 36.296032, 49.669460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.667824, 36.338169, 49.639030>,  <32.277317, 36.408398, 49.588318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667824, 36.338169, 49.639030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140552, 0.068285, -0.987716,
		0.164756, 0.982096, 0.091341,
		0.976269, -0.175570, 0.126785,
		32.960705, 36.285500, 49.677067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556305, 36.714725, 48.980679>,  <32.277317, 36.408398, 49.588318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556305, 36.714725, 48.980679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857071, 36.479702, 49.100273>,  <33.037529, 36.338688, 49.172031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857071, 36.479702, 49.100273>,  <32.556305, 36.714725, 48.980679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857071, 36.479702, 49.100273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370304, 0.001195, -0.928910,
		0.545435, 0.809178, 0.218475,
		0.751915, -0.587562, 0.298990,
		33.082645, 36.303432, 49.189972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146030, 37.074188, 48.733894>,  <32.556305, 36.714725, 48.980679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146030, 37.074188, 48.733894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.230255, 36.686787, 48.787052>,  <33.280792, 36.454346, 48.818947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.230255, 36.686787, 48.787052>,  <33.146030, 37.074188, 48.733894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230255, 36.686787, 48.787052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460065, -0.021771, -0.887618,
		0.862555, 0.248042, 0.440991,
		0.210565, -0.968505, 0.132895,
		33.293427, 36.396236, 48.826920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890007, 36.962776, 48.727776>,  <33.146030, 37.074188, 48.733894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890007, 36.962776, 48.727776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.716061, 36.610748, 48.651505>,  <33.611691, 36.399532, 48.605743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.716061, 36.610748, 48.651505>,  <33.890007, 36.962776, 48.727776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716061, 36.610748, 48.651505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521654, -0.073609, -0.849976,
		0.734006, -0.469096, 0.491105,
		-0.434869, -0.880074, -0.190676,
		33.585598, 36.346725, 48.594303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616428, 36.940292, 48.977028>,  <33.890007, 36.962776, 48.727776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616428, 36.940292, 48.977028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897007, 37.223469, 49.009991>,  <35.065353, 37.393375, 49.029766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897007, 37.223469, 49.009991>,  <34.616428, 36.940292, 48.977028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897007, 37.223469, 49.009991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096369, -0.208764, 0.973206,
		0.706175, -0.674713, -0.214660,
		0.701448, 0.707941, 0.082403,
		35.107441, 37.435852, 49.034710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103683, 36.712826, 49.481564>,  <34.616428, 36.940292, 48.977028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103683, 36.712826, 49.481564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.140141, 37.111050, 49.472118>,  <35.162014, 37.349983, 49.466450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.140141, 37.111050, 49.472118>,  <35.103683, 36.712826, 49.481564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140141, 37.111050, 49.472118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045574, 0.027861, 0.998572,
		0.994794, -0.089937, 0.047911,
		0.091144, 0.995558, -0.023618,
		35.167484, 37.409718, 49.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621414, 36.901394, 50.023258>,  <35.103683, 36.712826, 49.481564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621414, 36.901394, 50.023258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.422993, 37.242264, 49.956646>,  <35.303940, 37.446785, 49.916679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.422993, 37.242264, 49.956646>,  <35.621414, 36.901394, 50.023258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422993, 37.242264, 49.956646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010221, 0.186042, 0.982489,
		0.868233, 0.489067, -0.083577,
		-0.496052, 0.852175, -0.166526,
		35.274178, 37.497917, 49.906689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042049, 37.381325, 50.396385>,  <35.621414, 36.901394, 50.023258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042049, 37.381325, 50.396385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.675602, 37.530045, 50.336391>,  <35.455734, 37.619278, 50.300392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.675602, 37.530045, 50.336391>,  <36.042049, 37.381325, 50.396385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675602, 37.530045, 50.336391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032779, 0.303401, 0.952299,
		0.399575, 0.877331, -0.265763,
		-0.916114, 0.371804, -0.149989,
		35.400768, 37.641586, 50.291393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099472, 38.038998, 50.595913>,  <36.042049, 37.381325, 50.396385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099472, 38.038998, 50.595913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717300, 37.929272, 50.639557>,  <35.487999, 37.863434, 50.665745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717300, 37.929272, 50.639557>,  <36.099472, 38.038998, 50.595913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717300, 37.929272, 50.639557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063871, 0.168764, 0.983585,
		-0.288230, 0.946714, -0.143721,
		-0.955429, -0.274319, 0.109111,
		35.430672, 37.846977, 50.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769272, 38.615341, 51.013668>,  <36.099472, 38.038998, 50.595913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769272, 38.615341, 51.013668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531963, 38.295403, 51.050041>,  <35.389580, 38.103439, 51.071865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531963, 38.295403, 51.050041>,  <35.769272, 38.615341, 51.013668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531963, 38.295403, 51.050041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005397, 0.109009, 0.994026,
		-0.804984, 0.590219, -0.060355,
		-0.593272, -0.799849, 0.090936,
		35.353981, 38.055447, 51.077324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296234, 38.846558, 51.517056>,  <35.769272, 38.615341, 51.013668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296234, 38.846558, 51.517056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.243595, 38.451557, 51.482372>,  <35.212009, 38.214558, 51.461563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.243595, 38.451557, 51.482372>,  <35.296234, 38.846558, 51.517056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243595, 38.451557, 51.482372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129115, -0.069644, 0.989181,
		-0.982858, 0.141373, -0.118336,
		-0.131602, -0.987504, -0.086704,
		35.204113, 38.155308, 51.456360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713440, 38.806698, 51.792038>,  <35.296234, 38.846558, 51.517056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713440, 38.806698, 51.792038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875187, 38.441872, 51.819267>,  <34.972233, 38.222977, 51.835606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875187, 38.441872, 51.819267>,  <34.713440, 38.806698, 51.792038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875187, 38.441872, 51.819267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254508, -0.040718, 0.966213,
		-0.878473, -0.408028, -0.248592,
		0.404364, -0.912061, 0.068077,
		34.996494, 38.168255, 51.839691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228710, 38.424076, 52.278919>,  <34.713440, 38.806698, 51.792038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228710, 38.424076, 52.278919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556133, 38.195206, 52.299259>,  <34.752586, 38.057884, 52.311462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.556133, 38.195206, 52.299259>,  <34.228710, 38.424076, 52.278919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556133, 38.195206, 52.299259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152604, -0.131259, 0.979532,
		-0.553788, -0.809561, -0.194758,
		0.818554, -0.572174, 0.050853,
		34.801701, 38.023552, 52.314514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.124783, 36.563725, 36.482605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516201, 36.483025, 36.465851>,  <36.751053, 36.434605, 36.455799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516201, 36.483025, 36.465851>,  <36.124783, 36.563725, 36.482605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516201, 36.483025, 36.465851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136790, 0.484041, 0.864287,
		-0.154095, -0.851470, 0.501252,
		0.978542, -0.201748, -0.041884,
		36.809765, 36.422501, 36.453285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299061, 36.056679, 36.942307>,  <36.124783, 36.563725, 36.482605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299061, 36.056679, 36.942307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601662, 36.312729, 36.888741>,  <36.783222, 36.466362, 36.856602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601662, 36.312729, 36.888741>,  <36.299061, 36.056679, 36.942307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601662, 36.312729, 36.888741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005464, 0.198576, 0.980070,
		0.653965, -0.742160, 0.146726,
		0.756505, 0.640130, -0.133916,
		36.828613, 36.504768, 36.848564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641846, 35.980976, 37.487144>,  <36.299061, 36.056679, 36.942307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641846, 35.980976, 37.487144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813919, 36.313431, 37.346207>,  <36.917164, 36.512905, 37.261642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813919, 36.313431, 37.346207>,  <36.641846, 35.980976, 37.487144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813919, 36.313431, 37.346207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018186, 0.398208, 0.917115,
		0.902559, -0.388118, 0.186417,
		0.430181, 0.831141, -0.352348,
		36.942974, 36.562775, 37.240501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160458, 36.190964, 38.023987>,  <36.641846, 35.980976, 37.487144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160458, 36.190964, 38.023987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062363, 36.510647, 37.804485>,  <37.003506, 36.702457, 37.672787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062363, 36.510647, 37.804485>,  <37.160458, 36.190964, 38.023987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062363, 36.510647, 37.804485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083427, 0.546539, 0.833268,
		0.965866, 0.250131, -0.067357,
		-0.245239, 0.799206, -0.548751,
		36.988792, 36.750408, 37.639858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499805, 36.517006, 38.429512>,  <37.160458, 36.190964, 38.023987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499805, 36.517006, 38.429512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266296, 36.762012, 38.216331>,  <37.126190, 36.909016, 38.088425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266296, 36.762012, 38.216331>,  <37.499805, 36.517006, 38.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266296, 36.762012, 38.216331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272943, 0.470158, 0.839317,
		0.764666, 0.635434, -0.107283,
		-0.583771, 0.612515, -0.532951,
		37.091164, 36.945766, 38.056446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572903, 37.047550, 38.770500>,  <37.499805, 36.517006, 38.429512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572903, 37.047550, 38.770500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244396, 37.121391, 38.554558>,  <37.047291, 37.165695, 38.424992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244396, 37.121391, 38.554558>,  <37.572903, 37.047550, 38.770500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244396, 37.121391, 38.554558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389809, 0.509386, 0.767186,
		0.416620, 0.840505, -0.346381,
		-0.821265, 0.184603, -0.539857,
		36.998016, 37.176773, 38.392601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466713, 37.738190, 38.707821>,  <37.572903, 37.047550, 38.770500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466713, 37.738190, 38.707821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113609, 37.551529, 38.686012>,  <36.901749, 37.439533, 38.672928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113609, 37.551529, 38.686012>,  <37.466713, 37.738190, 38.707821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113609, 37.551529, 38.686012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289564, 0.449003, 0.845310,
		-0.369989, 0.761991, -0.531487,
		-0.882757, -0.466655, -0.054519,
		36.848782, 37.411533, 38.669655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948975, 38.274887, 38.973240>,  <37.466713, 37.738190, 38.707821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948975, 38.274887, 38.973240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763966, 37.920242, 38.973698>,  <36.652962, 37.707455, 38.973972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763966, 37.920242, 38.973698>,  <36.948975, 38.274887, 38.973240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763966, 37.920242, 38.973698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410067, 0.215062, 0.886337,
		-0.786078, 0.409482, -0.463039,
		-0.462522, -0.886608, 0.001141,
		36.625210, 37.654259, 38.974041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236275, 38.363026, 39.059761>,  <36.948975, 38.274887, 38.973240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236275, 38.363026, 39.059761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321026, 37.993595, 39.187584>,  <36.371876, 37.771938, 39.264278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321026, 37.993595, 39.187584>,  <36.236275, 38.363026, 39.059761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321026, 37.993595, 39.187584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403916, 0.214992, 0.889174,
		-0.889921, -0.317472, -0.327494,
		0.211879, -0.923575, 0.319558,
		36.384590, 37.716522, 39.283451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671726, 38.165016, 39.519886>,  <36.236275, 38.363026, 39.059761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671726, 38.165016, 39.519886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944851, 37.903503, 39.650322>,  <36.108727, 37.746597, 39.728584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944851, 37.903503, 39.650322>,  <35.671726, 38.165016, 39.519886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944851, 37.903503, 39.650322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443176, -0.015805, 0.896296,
		-0.580825, -0.756521, -0.300530,
		0.682816, -0.653778, 0.326092,
		36.149696, 37.707371, 39.748150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298496, 37.673744, 39.815353>,  <35.671726, 38.165016, 39.519886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298496, 37.673744, 39.815353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660107, 37.667072, 39.986217>,  <35.877071, 37.663067, 40.088737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660107, 37.667072, 39.986217>,  <35.298496, 37.673744, 39.815353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660107, 37.667072, 39.986217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411599, 0.235907, 0.880304,
		-0.115458, -0.971632, 0.206397,
		0.904022, -0.016686, 0.427160,
		35.931313, 37.662067, 40.114365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201832, 37.520336, 40.431129>,  <35.298496, 37.673744, 39.815353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201832, 37.520336, 40.431129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583485, 37.627995, 40.483593>,  <35.812477, 37.692589, 40.515072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583485, 37.627995, 40.483593>,  <35.201832, 37.520336, 40.431129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583485, 37.627995, 40.483593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214540, 0.309029, 0.926539,
		0.208835, -0.912176, 0.352595,
		0.954128, 0.269139, 0.131162,
		35.869724, 37.708736, 40.522942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092407, 36.872253, 40.111012>,  <35.201832, 37.520336, 40.431129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092407, 36.872253, 40.111012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746494, 36.676777, 40.064827>,  <34.538944, 36.559490, 40.037117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746494, 36.676777, 40.064827>,  <35.092407, 36.872253, 40.111012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746494, 36.676777, 40.064827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131729, 0.001104, -0.991285,
		0.484557, -0.872458, 0.063420,
		-0.864785, -0.488688, -0.115463,
		34.487061, 36.530170, 40.030190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231174, 36.346252, 39.673840>,  <35.092407, 36.872253, 40.111012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231174, 36.346252, 39.673840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838146, 36.389122, 39.613075>,  <34.602329, 36.414845, 39.576618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838146, 36.389122, 39.613075>,  <35.231174, 36.346252, 39.673840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838146, 36.389122, 39.613075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122570, -0.240931, -0.962771,
		-0.139780, -0.964607, 0.223595,
		-0.982567, 0.107170, -0.151909,
		34.543377, 36.421272, 39.567501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999584, 35.803055, 39.429661>,  <35.231174, 36.346252, 39.673840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999584, 35.803055, 39.429661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693241, 36.031235, 39.310970>,  <34.509434, 36.168140, 39.239758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693241, 36.031235, 39.310970>,  <34.999584, 35.803055, 39.429661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693241, 36.031235, 39.310970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139651, -0.302890, -0.942738,
		-0.627657, -0.763446, 0.152309,
		-0.765862, 0.570446, -0.296727,
		34.463482, 36.202370, 39.221951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674843, 35.529636, 38.963673>,  <34.999584, 35.803055, 39.429661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674843, 35.529636, 38.963673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526699, 35.890369, 38.874645>,  <34.437813, 36.106808, 38.821228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526699, 35.890369, 38.874645>,  <34.674843, 35.529636, 38.963673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526699, 35.890369, 38.874645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022402, -0.248214, -0.968446,
		-0.928618, -0.353687, 0.112131,
		-0.370360, 0.901829, -0.222572,
		34.415592, 36.160919, 38.807873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003147, 35.426792, 38.598137>,  <34.674843, 35.529636, 38.963673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003147, 35.426792, 38.598137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092628, 35.808846, 38.520493>,  <34.146317, 36.038078, 38.473907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092628, 35.808846, 38.520493>,  <34.003147, 35.426792, 38.598137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092628, 35.808846, 38.520493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113328, -0.172315, -0.978501,
		-0.968045, 0.240897, 0.069695,
		0.223708, 0.955132, -0.194109,
		34.159740, 36.095387, 38.462261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524509, 35.571796, 38.140373>,  <34.003147, 35.426792, 38.598137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524509, 35.571796, 38.140373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820080, 35.839733, 38.111279>,  <33.997421, 36.000496, 38.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820080, 35.839733, 38.111279>,  <33.524509, 35.571796, 38.140373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820080, 35.839733, 38.111279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219207, 0.136922, -0.966023,
		-0.637128, 0.729766, 0.248011,
		0.738929, 0.669846, -0.072733,
		34.041759, 36.040688, 38.089458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220444, 36.196861, 37.731441>,  <33.524509, 35.571796, 38.140373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220444, 36.196861, 37.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614639, 36.200283, 37.663624>,  <33.851154, 36.202335, 37.622932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614639, 36.200283, 37.663624>,  <33.220444, 36.196861, 37.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614639, 36.200283, 37.663624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169265, 0.125895, -0.977497,
		0.012987, 0.992006, 0.125515,
		0.985485, 0.008550, -0.169548,
		33.910286, 36.202847, 37.612759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366432, 36.748302, 37.173275>,  <33.220444, 36.196861, 37.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366432, 36.748302, 37.173275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703964, 36.533703, 37.168945>,  <33.906483, 36.404945, 37.166348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703964, 36.533703, 37.168945>,  <33.366432, 36.748302, 37.173275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703964, 36.533703, 37.168945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006996, 0.031176, -0.999489,
		0.536559, 0.843327, 0.030061,
		0.843834, -0.536495, -0.010828,
		33.957115, 36.372753, 37.165695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759457, 37.089676, 36.723087>,  <33.366432, 36.748302, 37.173275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759457, 37.089676, 36.723087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926670, 36.726490, 36.711517>,  <34.027000, 36.508575, 36.704575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926670, 36.726490, 36.711517>,  <33.759457, 37.089676, 36.723087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926670, 36.726490, 36.711517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083647, -0.006772, -0.996473,
		0.904571, 0.418982, -0.078780,
		0.418037, -0.907969, -0.028921,
		34.052082, 36.454098, 36.702843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142948, 37.146217, 36.064709>,  <33.759457, 37.089676, 36.723087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142948, 37.146217, 36.064709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089127, 36.768288, 36.184170>,  <34.056835, 36.541527, 36.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089127, 36.768288, 36.184170>,  <34.142948, 37.146217, 36.064709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089127, 36.768288, 36.184170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351041, -0.236398, -0.906027,
		0.926642, -0.226747, -0.299866,
		-0.134551, -0.944829, 0.298654,
		34.048759, 36.484840, 36.273766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549450, 36.713299, 35.630520>,  <34.142948, 37.146217, 36.064709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549450, 36.713299, 35.630520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280609, 36.468815, 35.797710>,  <34.119305, 36.322124, 35.898026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280609, 36.468815, 35.797710>,  <34.549450, 36.713299, 35.630520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280609, 36.468815, 35.797710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311364, -0.278858, -0.908455,
		0.671814, -0.740715, -0.002889,
		-0.672101, -0.611212, 0.417972,
		34.078979, 36.285450, 35.923103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644451, 36.014511, 35.294548>,  <34.549450, 36.713299, 35.630520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644451, 36.014511, 35.294548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274433, 36.023643, 35.446220>,  <34.052422, 36.029121, 35.537224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274433, 36.023643, 35.446220>,  <34.644451, 36.014511, 35.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274433, 36.023643, 35.446220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375017, -0.213880, -0.902007,
		0.060507, -0.976593, 0.206409,
		-0.925041, 0.022830, 0.379181,
		33.996922, 36.030495, 35.559975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322338, 35.379448, 35.063229>,  <34.644451, 36.014511, 35.294548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322338, 35.379448, 35.063229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022064, 35.623920, 35.163570>,  <33.841900, 35.770603, 35.223774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022064, 35.623920, 35.163570>,  <34.322338, 35.379448, 35.063229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022064, 35.623920, 35.163570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502198, -0.281192, -0.817758,
		-0.429259, -0.739859, 0.518021,
		-0.750689, 0.611179, 0.250852,
		33.796856, 35.807274, 35.238827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707962, 35.003616, 34.921463>,  <34.322338, 35.379448, 35.063229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707962, 35.003616, 34.921463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632137, 35.396008, 34.904732>,  <33.586643, 35.631443, 34.894695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632137, 35.396008, 34.904732>,  <33.707962, 35.003616, 34.921463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632137, 35.396008, 34.904732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384541, -0.113370, -0.916120,
		-0.903434, -0.157579, 0.398717,
		-0.189564, 0.980977, -0.041826,
		33.575268, 35.690300, 34.892185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112598, 34.931351, 34.626678>,  <33.707962, 35.003616, 34.921463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112598, 34.931351, 34.626678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204590, 35.319542, 34.597618>,  <33.259785, 35.552456, 34.580181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204590, 35.319542, 34.597618>,  <33.112598, 34.931351, 34.626678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204590, 35.319542, 34.597618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091550, -0.052742, -0.994403,
		-0.968880, 0.235344, 0.076718,
		0.229980, 0.970480, -0.072647,
		33.273582, 35.610687, 34.575825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966534, 34.972309, 35.421654>,  <33.112598, 34.931351, 34.626678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966534, 34.972309, 35.421654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747803, 35.287350, 35.535259>,  <32.616566, 35.476376, 35.603420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747803, 35.287350, 35.535259>,  <32.966534, 34.972309, 35.421654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747803, 35.287350, 35.535259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595972, -0.127911, -0.792753,
		-0.588048, -0.602758, 0.539335,
		-0.546825, 0.787605, 0.284009,
		32.583755, 35.523632, 35.620461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871571, 34.364506, 35.752548>,  <32.966534, 34.972309, 35.421654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871571, 34.364506, 35.752548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066936, 34.041687, 35.885288>,  <33.184155, 33.847996, 35.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066936, 34.041687, 35.885288>,  <32.871571, 34.364506, 35.752548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066936, 34.041687, 35.885288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382183, 0.144043, 0.912791,
		-0.784468, -0.572646, -0.238089,
		0.488411, -0.807049, 0.331853,
		33.213459, 33.799572, 35.984844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447708, 33.920128, 36.164455>,  <32.871571, 34.364506, 35.752548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447708, 33.920128, 36.164455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814842, 33.813305, 36.281933>,  <33.035122, 33.749210, 36.352421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814842, 33.813305, 36.281933>,  <32.447708, 33.920128, 36.164455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814842, 33.813305, 36.281933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256896, 0.164424, 0.952349,
		-0.302626, -0.949549, 0.082307,
		0.917835, -0.267062, 0.293694,
		33.090195, 33.733185, 36.370041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309734, 33.482143, 36.596764>,  <32.447708, 33.920128, 36.164455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309734, 33.482143, 36.596764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680492, 33.582260, 36.708630>,  <32.902946, 33.642330, 36.775749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680492, 33.582260, 36.708630>,  <32.309734, 33.482143, 36.596764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680492, 33.582260, 36.708630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324762, 0.161377, 0.931927,
		0.188123, -0.954626, 0.230865,
		0.926898, 0.250293, 0.279668,
		32.958561, 33.657349, 36.792530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453449, 33.103237, 37.207859>,  <32.309734, 33.482143, 36.596764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453449, 33.103237, 37.207859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735649, 33.386589, 37.199196>,  <32.904968, 33.556599, 37.194000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735649, 33.386589, 37.199196>,  <32.453449, 33.103237, 37.207859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735649, 33.386589, 37.199196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074152, 0.104167, 0.991792,
		0.704820, -0.698104, 0.126018,
		0.705500, 0.708379, -0.021653,
		32.947300, 33.599102, 37.192699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001022, 32.917908, 37.572826>,  <32.453449, 33.103237, 37.207859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001022, 32.917908, 37.572826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011356, 33.317715, 37.565880>,  <33.017555, 33.557598, 37.561710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011356, 33.317715, 37.565880>,  <33.001022, 32.917908, 37.572826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011356, 33.317715, 37.565880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087650, 0.015042, 0.996038,
		0.995816, -0.027253, -0.087219,
		0.025833, 0.999515, -0.017368,
		33.019108, 33.617569, 37.560669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648289, 33.153141, 37.947254>,  <33.001022, 32.917908, 37.572826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648289, 33.153141, 37.947254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361664, 33.432072, 37.953892>,  <33.189690, 33.599430, 37.957874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361664, 33.432072, 37.953892>,  <33.648289, 33.153141, 37.947254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361664, 33.432072, 37.953892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011788, -0.011674, 0.999863,
		0.697427, 0.716656, 0.000145,
		-0.716559, 0.697329, 0.016589,
		33.146698, 33.641270, 37.958870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799118, 33.579269, 38.542980>,  <33.648289, 33.153141, 37.947254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799118, 33.579269, 38.542980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423672, 33.690220, 38.460941>,  <33.198402, 33.756790, 38.411716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423672, 33.690220, 38.460941>,  <33.799118, 33.579269, 38.542980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423672, 33.690220, 38.460941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212252, 0.004333, 0.977205,
		0.271942, 0.960752, 0.054806,
		-0.938614, 0.277376, -0.205100,
		33.142086, 33.773434, 38.399410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709309, 34.152504, 38.933739>,  <33.799118, 33.579269, 38.542980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709309, 34.152504, 38.933739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337856, 34.026909, 38.854698>,  <33.114983, 33.951553, 38.807274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337856, 34.026909, 38.854698>,  <33.709309, 34.152504, 38.933739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337856, 34.026909, 38.854698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244044, 0.115831, 0.962822,
		-0.279426, 0.942335, -0.184192,
		-0.928635, -0.313988, -0.197605,
		33.059265, 33.932713, 38.795418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298489, 34.709305, 39.217335>,  <33.709309, 34.152504, 38.933739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298489, 34.709305, 39.217335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069149, 34.382298, 39.195694>,  <32.931545, 34.186092, 39.182709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069149, 34.382298, 39.195694>,  <33.298489, 34.709305, 39.217335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069149, 34.382298, 39.195694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225899, 0.094265, 0.969579,
		-0.787553, 0.568129, -0.238724,
		-0.573349, -0.817523, -0.054101,
		32.897144, 34.137039, 39.179462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719540, 34.746490, 39.698788>,  <33.298489, 34.709305, 39.217335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719540, 34.746490, 39.698788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713139, 34.353897, 39.622444>,  <32.709297, 34.118340, 39.576637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713139, 34.353897, 39.622444>,  <32.719540, 34.746490, 39.698788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713139, 34.353897, 39.622444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366909, -0.171800, 0.914255,
		-0.930119, 0.084660, -0.357367,
		-0.016005, -0.981487, -0.190857,
		32.708336, 34.059452, 39.565186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016045, 34.539997, 39.756172>,  <32.719540, 34.746490, 39.698788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016045, 34.539997, 39.756172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251144, 34.224964, 39.830215>,  <32.392204, 34.035946, 39.874641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251144, 34.224964, 39.830215>,  <32.016045, 34.539997, 39.756172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251144, 34.224964, 39.830215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348342, -0.039848, 0.936520,
		-0.730208, -0.614923, -0.297768,
		0.587754, -0.787579, 0.185106,
		32.427471, 33.988689, 39.885746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575119, 34.037785, 40.074337>,  <32.016045, 34.539997, 39.756172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575119, 34.037785, 40.074337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942537, 33.905361, 40.160755>,  <32.162987, 33.825909, 40.212608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942537, 33.905361, 40.160755>,  <31.575119, 34.037785, 40.074337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942537, 33.905361, 40.160755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210059, 0.054236, 0.976183,
		-0.334888, -0.942052, -0.019723,
		0.918545, -0.331055, 0.216050,
		32.218102, 33.806046, 40.225571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500847, 33.425701, 40.505913>,  <31.575119, 34.037785, 40.074337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500847, 33.425701, 40.505913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874958, 33.545879, 40.580738>,  <32.099426, 33.617985, 40.625633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874958, 33.545879, 40.580738>,  <31.500847, 33.425701, 40.505913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874958, 33.545879, 40.580738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214485, 0.060736, 0.974837,
		0.281522, -0.951864, 0.121245,
		0.935276, 0.300443, 0.187062,
		32.155540, 33.636013, 40.636856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648064, 33.106934, 41.075733>,  <31.500847, 33.425701, 40.505913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648064, 33.106934, 41.075733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942415, 33.377632, 41.066856>,  <32.119026, 33.540051, 41.061531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942415, 33.377632, 41.066856>,  <31.648064, 33.106934, 41.075733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942415, 33.377632, 41.066856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077450, -0.051570, 0.995662,
		0.672667, -0.734407, -0.090363,
		0.735881, 0.676747, -0.022190,
		32.163181, 33.580658, 41.060200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077461, 32.716854, 41.379047>,  <31.648064, 33.106934, 41.075733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077461, 32.716854, 41.379047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154392, 33.108101, 41.410778>,  <32.200550, 33.342850, 41.429817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154392, 33.108101, 41.410778>,  <32.077461, 32.716854, 41.379047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154392, 33.108101, 41.410778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094995, -0.099017, 0.990541,
		0.976723, -0.182969, -0.111960,
		0.192324, 0.978120, 0.079331,
		32.212090, 33.401535, 41.434578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763588, 32.770111, 41.424095>,  <32.077461, 32.716854, 41.379047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763588, 32.770111, 41.424095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614651, 33.108543, 41.576675>,  <32.525288, 33.311604, 41.668224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614651, 33.108543, 41.576675>,  <32.763588, 32.770111, 41.424095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614651, 33.108543, 41.576675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345889, -0.254889, 0.902991,
		0.861234, 0.468159, -0.197746,
		-0.372340, 0.846085, 0.381450,
		32.502949, 33.362370, 41.691109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284718, 32.968258, 41.873478>,  <32.763588, 32.770111, 41.424095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284718, 32.968258, 41.873478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966980, 33.179901, 41.992847>,  <32.776337, 33.306889, 42.064468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966980, 33.179901, 41.992847>,  <33.284718, 32.968258, 41.873478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966980, 33.179901, 41.992847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190357, -0.249711, 0.949425,
		0.576872, 0.810978, 0.097636,
		-0.794344, 0.529111, 0.298427,
		32.728676, 33.338634, 42.082375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532009, 33.488865, 42.378033>,  <33.284718, 32.968258, 41.873478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532009, 33.488865, 42.378033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141228, 33.431381, 42.441154>,  <32.906757, 33.396893, 42.479027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141228, 33.431381, 42.441154>,  <33.532009, 33.488865, 42.378033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141228, 33.431381, 42.441154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147020, 0.082838, 0.985659,
		-0.154718, 0.986147, -0.059802,
		-0.976958, -0.143707, 0.157800,
		32.848141, 33.388268, 42.488495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426975, 33.974480, 42.955696>,  <33.532009, 33.488865, 42.378033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426975, 33.974480, 42.955696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098038, 33.747669, 42.974606>,  <32.900677, 33.611584, 42.985950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098038, 33.747669, 42.974606>,  <33.426975, 33.974480, 42.955696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098038, 33.747669, 42.974606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036252, 0.135136, 0.990164,
		-0.567833, 0.812542, -0.131684,
		-0.822345, -0.567022, 0.047278,
		32.851334, 33.577564, 42.988789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774723, 34.323807, 43.222061>,  <33.426975, 33.974480, 42.955696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774723, 34.323807, 43.222061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706242, 33.933750, 43.278339>,  <32.665154, 33.699718, 43.312107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706242, 33.933750, 43.278339>,  <32.774723, 34.323807, 43.222061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706242, 33.933750, 43.278339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098734, 0.159068, 0.982318,
		-0.980277, 0.154281, -0.123512,
		-0.171200, -0.975138, 0.140698,
		32.654881, 33.641209, 43.320549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192684, 34.315956, 43.734612>,  <32.774723, 34.323807, 43.222061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192684, 34.315956, 43.734612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377338, 33.961834, 43.756962>,  <32.488129, 33.749359, 43.770374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377338, 33.961834, 43.756962>,  <32.192684, 34.315956, 43.734612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377338, 33.961834, 43.756962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000594, 0.062683, 0.998033,
		-0.887072, -0.460757, 0.028410,
		0.461631, -0.885310, 0.055878,
		32.515827, 33.696239, 43.773724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786589, 33.901718, 44.217705>,  <32.192684, 34.315956, 43.734612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786589, 33.901718, 44.217705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164383, 33.770317, 44.215298>,  <32.391060, 33.691475, 44.213856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164383, 33.770317, 44.215298>,  <31.786589, 33.901718, 44.217705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164383, 33.770317, 44.215298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049610, -0.160684, 0.985758,
		-0.324792, -0.930734, -0.168060,
		0.944484, -0.328504, -0.006015,
		32.447727, 33.671768, 44.213493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637497, 33.411766, 44.682243>,  <31.786589, 33.901718, 44.217705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637497, 33.411766, 44.682243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033035, 33.455173, 44.641430>,  <32.270359, 33.481216, 44.616940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033035, 33.455173, 44.641430>,  <31.637497, 33.411766, 44.682243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033035, 33.455173, 44.641430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138052, -0.410421, 0.901386,
		0.055939, -0.905416, -0.420823,
		0.988844, 0.108519, -0.102036,
		32.329689, 33.487728, 44.610821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861967, 32.813728, 44.900063>,  <31.637497, 33.411766, 44.682243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861967, 32.813728, 44.900063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162975, 33.073051, 44.946377>,  <32.343578, 33.228645, 44.974163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162975, 33.073051, 44.946377>,  <31.861967, 32.813728, 44.900063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162975, 33.073051, 44.946377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250787, -0.444662, 0.859873,
		0.608949, -0.618035, -0.497205,
		0.752520, 0.648312, 0.115781,
		32.388733, 33.267544, 44.981110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360180, 32.475807, 45.286789>,  <31.861967, 32.813728, 44.900063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360180, 32.475807, 45.286789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496731, 32.846107, 45.351852>,  <32.578659, 33.068287, 45.390888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496731, 32.846107, 45.351852>,  <32.360180, 32.475807, 45.286789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496731, 32.846107, 45.351852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411403, -0.302759, 0.859700,
		0.845110, -0.226563, -0.484209,
		0.341375, 0.925746, 0.162656,
		32.599144, 33.123833, 45.400650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969784, 32.344643, 45.676651>,  <32.360180, 32.475807, 45.286789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969784, 32.344643, 45.676651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850616, 32.718571, 45.753967>,  <32.779118, 32.942928, 45.800358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850616, 32.718571, 45.753967>,  <32.969784, 32.344643, 45.676651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850616, 32.718571, 45.753967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280616, -0.107773, 0.953750,
		0.912415, 0.338377, -0.230218,
		-0.297916, 0.934819, 0.193287,
		32.761242, 32.999016, 45.811954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716694, 32.170029, 45.750938>,  <32.969784, 32.344643, 45.676651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716694, 32.170029, 45.750938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944141, 31.842468, 45.782108>,  <34.080612, 31.645931, 45.800808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944141, 31.842468, 45.782108>,  <33.716694, 32.170029, 45.750938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944141, 31.842468, 45.782108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044443, -0.064003, -0.996960,
		0.821398, 0.570355, 0.000001,
		0.568621, -0.818901, 0.077920,
		34.114727, 31.596798, 45.805485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384552, 32.242752, 45.321598>,  <33.716694, 32.170029, 45.750938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384552, 32.242752, 45.321598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378311, 31.847490, 45.382671>,  <34.374565, 31.610334, 45.419315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378311, 31.847490, 45.382671>,  <34.384552, 32.242752, 45.321598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378311, 31.847490, 45.382671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180898, -0.152968, -0.971533,
		0.983378, 0.012460, 0.181141,
		-0.015604, -0.988153, 0.152680,
		34.373631, 31.551044, 45.428474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929226, 31.998852, 44.942917>,  <34.384552, 32.242752, 45.321598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929226, 31.998852, 44.942917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695179, 31.684879, 45.024426>,  <34.554752, 31.496496, 45.073330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695179, 31.684879, 45.024426>,  <34.929226, 31.998852, 44.942917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695179, 31.684879, 45.024426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123070, -0.334312, -0.934393,
		0.801555, -0.521653, 0.292213,
		-0.585119, -0.784929, 0.203770,
		34.519642, 31.449400, 45.085556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272308, 31.399706, 44.702236>,  <34.929226, 31.998852, 44.942917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272308, 31.399706, 44.702236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879482, 31.327234, 44.723137>,  <34.643787, 31.283752, 44.735680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879482, 31.327234, 44.723137>,  <35.272308, 31.399706, 44.702236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879482, 31.327234, 44.723137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043916, -0.489266, -0.871028,
		0.183378, -0.853108, 0.488446,
		-0.982061, -0.181178, 0.052256,
		34.584866, 31.272881, 44.738815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140392, 30.619379, 44.522697>,  <35.272308, 31.399706, 44.702236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140392, 30.619379, 44.522697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833241, 30.869736, 44.468109>,  <34.648949, 31.019951, 44.435356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833241, 30.869736, 44.468109>,  <35.140392, 30.619379, 44.522697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833241, 30.869736, 44.468109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104579, -0.332662, -0.937230,
		-0.632005, -0.705403, 0.320898,
		-0.767875, 0.625893, -0.136474,
		34.602879, 31.057503, 44.427166>
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
