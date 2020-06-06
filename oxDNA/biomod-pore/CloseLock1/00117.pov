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
	<24.210737, 34.709755, 34.950260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479494, 34.947033, 35.127655>,  <24.640749, 35.089397, 35.234093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479494, 34.947033, 35.127655>,  <24.210737, 34.709755, 34.950260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479494, 34.947033, 35.127655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501375, -0.805007, 0.317155,
		0.545146, 0.009260, -0.838290,
		0.671893, 0.593193, 0.443489,
		24.681063, 35.124992, 35.260700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921843, 34.587944, 34.870720>,  <24.210737, 34.709755, 34.950260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921843, 34.587944, 34.870720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904526, 34.765034, 35.228966>,  <24.894136, 34.871288, 35.443913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904526, 34.765034, 35.228966>,  <24.921843, 34.587944, 34.870720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.904526, 34.765034, 35.228966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392217, -0.816950, 0.422799,
		0.918853, 0.369578, -0.138277,
		-0.043292, 0.442725, 0.895611,
		24.891539, 34.897850, 35.497650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648060, 34.654938, 35.086090>,  <24.921843, 34.587944, 34.870720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648060, 34.654938, 35.086090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389608, 34.642460, 35.391125>,  <25.234537, 34.634972, 35.574146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389608, 34.642460, 35.391125>,  <25.648060, 34.654938, 35.086090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389608, 34.642460, 35.391125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639725, -0.567071, 0.518828,
		0.416256, 0.823078, 0.386359,
		-0.646129, -0.031198, 0.762590,
		25.195770, 34.633099, 35.619904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099489, 34.765236, 35.666454>,  <25.648060, 34.654938, 35.086090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099489, 34.765236, 35.666454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752464, 34.577961, 35.733547>,  <25.544249, 34.465595, 35.773804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752464, 34.577961, 35.733547>,  <26.099489, 34.765236, 35.666454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752464, 34.577961, 35.733547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490834, -0.751744, 0.440411,
		-0.080101, 0.464415, 0.881988,
		-0.867563, -0.468187, 0.167735,
		25.492195, 34.437504, 35.783867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078156, 34.676254, 36.343643>,  <26.099489, 34.765236, 35.666454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078156, 34.676254, 36.343643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871878, 34.394615, 36.148376>,  <25.748112, 34.225632, 36.031216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871878, 34.394615, 36.148376>,  <26.078156, 34.676254, 36.343643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871878, 34.394615, 36.148376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616178, -0.700678, 0.359686,
		-0.595302, -0.115311, 0.795185,
		-0.515693, -0.704098, -0.488167,
		25.717169, 34.183388, 36.001926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771509, 34.538132, 36.598534>,  <26.078156, 34.676254, 36.343643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771509, 34.538132, 36.598534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133715, 34.659454, 36.479839>,  <27.351038, 34.732246, 36.408623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133715, 34.659454, 36.479839>,  <26.771509, 34.538132, 36.598534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133715, 34.659454, 36.479839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320336, -0.947258, 0.009297,
		-0.278264, -0.103473, -0.954915,
		0.905513, 0.303306, -0.296734,
		27.405369, 34.750446, 36.390820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048309, 34.209835, 35.936153>,  <26.771509, 34.538132, 36.598534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048309, 34.209835, 35.936153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349817, 34.316078, 36.176582>,  <27.530722, 34.379822, 36.320839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349817, 34.316078, 36.176582>,  <27.048309, 34.209835, 35.936153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349817, 34.316078, 36.176582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422723, -0.896289, -0.134059,
		0.503124, 0.355135, -0.787874,
		0.753771, 0.265605, 0.601068,
		27.575949, 34.395760, 36.356903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674475, 34.089985, 35.556446>,  <27.048309, 34.209835, 35.936153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674475, 34.089985, 35.556446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799656, 34.098827, 35.936249>,  <27.874765, 34.104134, 36.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799656, 34.098827, 35.936249>,  <27.674475, 34.089985, 35.556446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799656, 34.098827, 35.936249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458542, -0.879013, -0.130670,
		0.831745, 0.476285, -0.285225,
		0.312953, 0.022104, 0.949511,
		27.893541, 34.105457, 36.221104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397577, 34.070599, 35.525452>,  <27.674475, 34.089985, 35.556446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397577, 34.070599, 35.525452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321239, 33.949654, 35.899010>,  <28.275436, 33.877087, 36.123142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321239, 33.949654, 35.899010>,  <28.397577, 34.070599, 35.525452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321239, 33.949654, 35.899010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657562, -0.745753, -0.107076,
		0.728828, 0.593656, 0.341148,
		-0.190845, -0.302366, 0.933891,
		28.263987, 33.858944, 36.179176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983627, 33.834343, 35.801567>,  <28.397577, 34.070599, 35.525452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983627, 33.834343, 35.801567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725410, 33.626991, 36.025906>,  <28.570480, 33.502579, 36.160511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725410, 33.626991, 36.025906>,  <28.983627, 33.834343, 35.801567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725410, 33.626991, 36.025906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586458, -0.806882, -0.070768,
		0.489225, 0.283232, 0.824887,
		-0.645543, -0.518383, 0.560850,
		28.531748, 33.471478, 36.194160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398710, 33.493145, 36.215485>,  <28.983627, 33.834343, 35.801567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398710, 33.493145, 36.215485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070213, 33.285648, 36.310539>,  <28.873116, 33.161152, 36.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070213, 33.285648, 36.310539>,  <29.398710, 33.493145, 36.215485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070213, 33.285648, 36.310539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570492, -0.753895, 0.325855,
		0.010115, 0.403173, 0.915068,
		-0.821241, -0.518743, 0.237633,
		28.823841, 33.130024, 36.381828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629446, 33.057564, 36.777393>,  <29.398710, 33.493145, 36.215485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629446, 33.057564, 36.777393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306999, 32.887592, 36.612659>,  <29.113531, 32.785610, 36.513821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306999, 32.887592, 36.612659>,  <29.629446, 33.057564, 36.777393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306999, 32.887592, 36.612659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338306, -0.901941, 0.268423,
		-0.485511, 0.077054, 0.870828,
		-0.806119, -0.424929, -0.411835,
		29.065163, 32.760113, 36.489109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284883, 32.595615, 37.296383>,  <29.629446, 33.057564, 36.777393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284883, 32.595615, 37.296383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160217, 32.486538, 36.932293>,  <29.085419, 32.421089, 36.713840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160217, 32.486538, 36.932293>,  <29.284883, 32.595615, 37.296383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160217, 32.486538, 36.932293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138962, -0.960715, 0.240245,
		-0.939976, -0.051610, 0.337315,
		-0.311664, -0.272698, -0.910221,
		29.066719, 32.404728, 36.659225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901421, 32.010384, 37.456844>,  <29.284883, 32.595615, 37.296383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901421, 32.010384, 37.456844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972916, 31.975876, 37.064800>,  <29.015812, 31.955170, 36.829575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972916, 31.975876, 37.064800>,  <28.901421, 32.010384, 37.456844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972916, 31.975876, 37.064800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060602, -0.993292, 0.098484,
		-0.982029, -0.076999, -0.172308,
		0.178736, -0.086272, -0.980108,
		29.026537, 31.949995, 36.770767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481710, 31.406889, 37.220371>,  <28.901421, 32.010384, 37.456844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481710, 31.406889, 37.220371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758762, 31.469339, 36.938694>,  <28.924994, 31.506809, 36.769688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758762, 31.469339, 36.938694>,  <28.481710, 31.406889, 37.220371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758762, 31.469339, 36.938694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198625, -0.979831, -0.021874,
		-0.693404, -0.124719, -0.709673,
		0.692632, 0.156126, -0.704191,
		28.966553, 31.516176, 36.727436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197155, 30.966461, 36.637119>,  <28.481710, 31.406889, 37.220371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197155, 30.966461, 36.637119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590513, 31.008133, 36.577682>,  <28.826529, 31.033136, 36.542019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590513, 31.008133, 36.577682>,  <28.197155, 30.966461, 36.637119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590513, 31.008133, 36.577682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130195, -0.975425, 0.177751,
		-0.126425, -0.194146, -0.972792,
		0.983395, 0.104180, -0.148594,
		28.885532, 31.039387, 36.533104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364561, 30.402874, 36.165756>,  <28.197155, 30.966461, 36.637119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364561, 30.402874, 36.165756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716902, 30.507160, 36.323807>,  <28.928307, 30.569733, 36.418636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716902, 30.507160, 36.323807>,  <28.364561, 30.402874, 36.165756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716902, 30.507160, 36.323807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233548, -0.965362, 0.116327,
		0.411771, -0.010186, -0.911230,
		0.880852, 0.260716, 0.395129,
		28.981157, 30.585375, 36.442345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855211, 29.970863, 35.737396>,  <28.364561, 30.402874, 36.165756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855211, 29.970863, 35.737396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031862, 30.095387, 36.073978>,  <29.137854, 30.170101, 36.275928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031862, 30.095387, 36.073978>,  <28.855211, 29.970863, 35.737396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031862, 30.095387, 36.073978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297551, -0.935613, 0.189978,
		0.846421, 0.166477, -0.505824,
		0.441628, 0.311310, 0.841457,
		29.164351, 30.188780, 36.326416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602949, 29.713673, 35.910450>,  <28.855211, 29.970863, 35.737396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602949, 29.713673, 35.910450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445244, 29.787771, 36.270504>,  <29.350620, 29.832230, 36.486538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445244, 29.787771, 36.270504>,  <29.602949, 29.713673, 35.910450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445244, 29.787771, 36.270504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386006, -0.855502, 0.345133,
		0.834000, 0.483530, 0.265787,
		-0.394263, 0.185245, 0.900134,
		29.326965, 29.843346, 36.540543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773996, 29.100439, 36.291721>,  <29.602949, 29.713673, 35.910450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773996, 29.100439, 36.291721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586933, 29.293903, 36.587658>,  <29.474695, 29.409983, 36.765221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586933, 29.293903, 36.587658>,  <29.773996, 29.100439, 36.291721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586933, 29.293903, 36.587658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047911, -0.849653, 0.525162,
		0.882611, 0.210149, 0.420518,
		-0.467656, 0.483661, 0.739844,
		29.446636, 29.439001, 36.809612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167027, 28.923010, 36.836761>,  <29.773996, 29.100439, 36.291721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167027, 28.923010, 36.836761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813631, 29.044319, 36.979576>,  <29.601593, 29.117104, 37.065266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813631, 29.044319, 36.979576>,  <30.167027, 28.923010, 36.836761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813631, 29.044319, 36.979576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039269, -0.711531, 0.701557,
		0.466804, 0.633838, 0.616720,
		-0.883489, 0.303271, 0.357035,
		29.548584, 29.135300, 37.086685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214342, 28.935202, 37.523228>,  <30.167027, 28.923010, 36.836761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214342, 28.935202, 37.523228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815735, 28.914261, 37.497272>,  <29.576571, 28.901697, 37.481697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815735, 28.914261, 37.497272>,  <30.214342, 28.935202, 37.523228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815735, 28.914261, 37.497272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005145, -0.738203, 0.674559,
		-0.083218, 0.672544, 0.735363,
		-0.996518, -0.052352, -0.064892,
		29.516779, 28.898556, 37.477806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941521, 28.786108, 38.197628>,  <30.214342, 28.935202, 37.523228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941521, 28.786108, 38.197628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626865, 28.688046, 37.970966>,  <29.438072, 28.629208, 37.834969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626865, 28.688046, 37.970966>,  <29.941521, 28.786108, 38.197628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626865, 28.688046, 37.970966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245932, -0.717418, 0.651789,
		-0.566320, 0.652081, 0.504056,
		-0.786638, -0.245158, -0.566655,
		29.390875, 28.614498, 37.800968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417402, 28.751207, 38.614510>,  <29.941521, 28.786108, 38.197628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417402, 28.751207, 38.614510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299761, 28.535946, 38.298561>,  <29.229176, 28.406790, 38.108994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299761, 28.535946, 38.298561>,  <29.417402, 28.751207, 38.614510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299761, 28.535946, 38.298561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096559, -0.805461, 0.584729,
		-0.950883, 0.248241, 0.184927,
		-0.294105, -0.538153, -0.789869,
		29.211529, 28.374500, 38.061600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862541, 28.276180, 38.917862>,  <29.417402, 28.751207, 38.614510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862541, 28.276180, 38.917862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989309, 28.135406, 38.565567>,  <29.065371, 28.050941, 38.354191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989309, 28.135406, 38.565567>,  <28.862541, 28.276180, 38.917862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989309, 28.135406, 38.565567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036413, -0.932438, 0.359490,
		-0.947753, -0.081859, -0.308322,
		0.316919, -0.351935, -0.880741,
		29.084385, 28.029825, 38.301346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531918, 27.547989, 38.770130>,  <28.862541, 28.276180, 38.917862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531918, 27.547989, 38.770130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879896, 27.576860, 38.574997>,  <29.088684, 27.594183, 38.457916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879896, 27.576860, 38.574997>,  <28.531918, 27.547989, 38.770130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879896, 27.576860, 38.574997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115811, -0.991468, 0.059824,
		-0.479350, -0.108540, -0.870886,
		0.869949, 0.072181, -0.487831,
		29.140881, 27.598515, 38.428646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518538, 26.973673, 38.276993>,  <28.531918, 27.547989, 38.770130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518538, 26.973673, 38.276993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883112, 27.090252, 38.393158>,  <29.101856, 27.160200, 38.462856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883112, 27.090252, 38.393158>,  <28.518538, 26.973673, 38.276993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883112, 27.090252, 38.393158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189091, -0.923606, 0.333460,
		0.365412, -0.249015, -0.896920,
		0.911438, 0.291450, 0.290410,
		29.156544, 27.177687, 38.480282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729465, 26.822332, 38.414185>,  <28.518538, 26.973673, 38.276993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729465, 26.822332, 38.414185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859468, 27.127399, 38.190502>,  <27.937469, 27.310440, 38.056293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859468, 27.127399, 38.190502>,  <27.729465, 26.822332, 38.414185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859468, 27.127399, 38.190502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738564, -0.164626, -0.653775,
		-0.590673, 0.625488, 0.509775,
		0.325006, 0.762669, -0.559203,
		27.956970, 27.356199, 38.022743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112690, 27.209627, 38.209938>,  <27.729465, 26.822332, 38.414185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112690, 27.209627, 38.209938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426107, 27.263079, 37.967220>,  <27.614159, 27.295149, 37.821590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426107, 27.263079, 37.967220>,  <27.112690, 27.209627, 38.209938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426107, 27.263079, 37.967220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612213, -0.000691, -0.790693,
		-0.106079, 0.991031, 0.081268,
		0.783545, 0.133629, -0.606795,
		27.661171, 27.303167, 37.785183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110422, 27.868076, 38.044384>,  <27.112690, 27.209627, 38.209938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110422, 27.868076, 38.044384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245337, 27.635935, 37.747890>,  <27.326284, 27.496651, 37.569996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245337, 27.635935, 37.747890>,  <27.110422, 27.868076, 38.044384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245337, 27.635935, 37.747890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659140, 0.416581, -0.626095,
		0.672140, 0.699751, -0.242027,
		0.337286, -0.580353, -0.741235,
		27.346523, 27.461828, 37.525520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964685, 28.263531, 38.711132>,  <27.110422, 27.868076, 38.044384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964685, 28.263531, 38.711132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243954, 28.415438, 38.468369>,  <27.411514, 28.506582, 38.322712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243954, 28.415438, 38.468369>,  <26.964685, 28.263531, 38.711132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243954, 28.415438, 38.468369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644765, -0.701999, 0.302450,
		-0.311188, -0.602474, -0.734974,
		0.698169, 0.379766, -0.606908,
		27.453405, 28.529367, 38.286297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922813, 28.267279, 39.377876>,  <26.964685, 28.263531, 38.711132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922813, 28.267279, 39.377876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802601, 27.886353, 39.398949>,  <26.730473, 27.657797, 39.411594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802601, 27.886353, 39.398949>,  <26.922813, 28.267279, 39.377876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802601, 27.886353, 39.398949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123375, 0.015959, 0.992232,
		-0.945759, 0.304697, 0.112696,
		-0.300532, -0.952316, 0.052685,
		26.712440, 27.600658, 39.414753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223501, 28.288132, 39.488789>,  <26.922813, 28.267279, 39.377876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223501, 28.288132, 39.488789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420015, 27.972958, 39.637272>,  <26.537924, 27.783854, 39.726364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420015, 27.972958, 39.637272>,  <26.223501, 28.288132, 39.488789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420015, 27.972958, 39.637272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358346, 0.205601, 0.910668,
		-0.793868, -0.580421, -0.181345,
		0.491286, -0.787934, 0.371211,
		26.567402, 27.736578, 39.748634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818062, 27.790754, 39.996300>,  <26.223501, 28.288132, 39.488789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818062, 27.790754, 39.996300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200003, 27.821779, 40.111012>,  <26.429167, 27.840395, 40.179840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200003, 27.821779, 40.111012>,  <25.818062, 27.790754, 39.996300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200003, 27.821779, 40.111012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249229, 0.734530, 0.631150,
		-0.161696, -0.674128, 0.720698,
		0.954851, 0.077564, 0.286784,
		26.486458, 27.845049, 40.197048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923805, 28.022144, 40.813572>,  <25.818062, 27.790754, 39.996300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923805, 28.022144, 40.813572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269804, 28.110825, 40.633514>,  <26.477404, 28.164034, 40.525482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269804, 28.110825, 40.633514>,  <25.923805, 28.022144, 40.813572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269804, 28.110825, 40.633514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054413, 0.850361, 0.523379,
		0.498816, -0.477215, 0.723497,
		0.864998, 0.221702, -0.450141,
		26.529303, 28.177336, 40.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329990, 28.414507, 41.288017>,  <25.923805, 28.022144, 40.813572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329990, 28.414507, 41.288017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515203, 28.504028, 40.944969>,  <26.626331, 28.557741, 40.739140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515203, 28.504028, 40.944969>,  <26.329990, 28.414507, 41.288017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515203, 28.504028, 40.944969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223825, 0.906711, 0.357460,
		0.857615, -0.357473, 0.369744,
		0.463033, 0.223805, -0.857620,
		26.654114, 28.571171, 40.687683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951881, 28.826885, 41.646431>,  <26.329990, 28.414507, 41.288017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951881, 28.826885, 41.646431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940748, 28.882261, 41.250439>,  <26.934069, 28.915487, 41.012844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940748, 28.882261, 41.250439>,  <26.951881, 28.826885, 41.646431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940748, 28.882261, 41.250439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344818, 0.930905, 0.120486,
		0.938257, -0.338009, -0.073646,
		-0.027832, 0.138442, -0.989979,
		26.932398, 28.923794, 40.953445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598467, 29.177654, 41.336693>,  <26.951881, 28.826885, 41.646431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598467, 29.177654, 41.336693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324593, 29.253334, 41.055149>,  <27.160269, 29.298742, 40.886223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324593, 29.253334, 41.055149>,  <27.598467, 29.177654, 41.336693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324593, 29.253334, 41.055149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226989, 0.973044, 0.040753,
		0.692592, -0.131864, -0.709174,
		-0.684684, 0.189200, -0.703855,
		27.119186, 29.310095, 40.843994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964024, 29.574831, 40.784065>,  <27.598467, 29.177654, 41.336693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964024, 29.574831, 40.784065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575611, 29.668497, 40.765038>,  <27.342564, 29.724697, 40.753620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575611, 29.668497, 40.765038>,  <27.964024, 29.574831, 40.784065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575611, 29.668497, 40.765038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237596, 0.967356, -0.088155,
		0.025375, -0.096904, -0.994970,
		-0.971033, 0.234164, -0.047571,
		27.284302, 29.738747, 40.750767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924911, 29.938807, 40.219574>,  <27.964024, 29.574831, 40.784065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924911, 29.938807, 40.219574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579473, 30.032764, 40.398022>,  <27.372210, 30.089138, 40.505093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579473, 30.032764, 40.398022>,  <27.924911, 29.938807, 40.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579473, 30.032764, 40.398022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194644, 0.971572, -0.134765,
		-0.465097, -0.029547, -0.884767,
		-0.863596, 0.234894, 0.446123,
		27.320395, 30.103233, 40.531860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470255, 30.395378, 39.766087>,  <27.924911, 29.938807, 40.219574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470255, 30.395378, 39.766087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362663, 30.468197, 40.144402>,  <27.298109, 30.511889, 40.371391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362663, 30.468197, 40.144402>,  <27.470255, 30.395378, 39.766087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362663, 30.468197, 40.144402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154835, 0.977376, -0.144092,
		-0.950620, 0.107684, -0.291078,
		-0.268976, 0.182046, 0.945786,
		27.281971, 30.522810, 40.428139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183933, 31.075094, 39.644558>,  <27.470255, 30.395378, 39.766087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183933, 31.075094, 39.644558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229946, 31.025518, 40.038799>,  <27.257553, 30.995773, 40.275345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229946, 31.025518, 40.038799>,  <27.183933, 31.075094, 39.644558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229946, 31.025518, 40.038799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016464, 0.992287, 0.122861,
		-0.993226, 0.002095, 0.116184,
		0.115031, -0.123941, 0.985600,
		27.264456, 30.988337, 40.334480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812859, 31.556025, 39.971039>,  <27.183933, 31.075094, 39.644558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812859, 31.556025, 39.971039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058584, 31.462648, 40.272537>,  <27.206018, 31.406624, 40.453434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058584, 31.462648, 40.272537>,  <26.812859, 31.556025, 39.971039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058584, 31.462648, 40.272537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234806, 0.966044, 0.107819,
		-0.753317, 0.110748, 0.648266,
		0.614313, -0.233439, 0.753742,
		27.242878, 31.392616, 40.498661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638401, 31.977921, 40.459629>,  <26.812859, 31.556025, 39.971039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638401, 31.977921, 40.459629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008503, 31.878967, 40.574665>,  <27.230564, 31.819595, 40.643684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008503, 31.878967, 40.574665>,  <26.638401, 31.977921, 40.459629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008503, 31.878967, 40.574665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206914, 0.964518, 0.163986,
		-0.317950, -0.092223, 0.943612,
		0.925254, -0.247385, 0.287586,
		27.286079, 31.804752, 40.660942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866688, 32.315563, 41.051945>,  <26.638401, 31.977921, 40.459629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866688, 32.315563, 41.051945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208952, 32.218822, 40.868923>,  <27.414310, 32.160778, 40.759109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208952, 32.218822, 40.868923>,  <26.866688, 32.315563, 41.051945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208952, 32.218822, 40.868923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265930, 0.963915, -0.012202,
		0.443990, -0.111235, 0.889100,
		0.855660, -0.241856, -0.457550,
		27.465651, 32.146267, 40.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413692, 32.696949, 41.415337>,  <26.866688, 32.315563, 41.051945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413692, 32.696949, 41.415337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542200, 32.606907, 41.047398>,  <27.619305, 32.552883, 40.826633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542200, 32.606907, 41.047398>,  <27.413692, 32.696949, 41.415337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542200, 32.606907, 41.047398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275126, 0.951627, -0.136793,
		0.906141, -0.209125, 0.367661,
		0.321270, -0.225107, -0.919844,
		27.638580, 32.539375, 40.771446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956299, 33.206341, 41.320957>,  <27.413692, 32.696949, 41.415337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956299, 33.206341, 41.320957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941513, 33.033482, 40.960541>,  <27.932642, 32.929768, 40.744289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941513, 33.033482, 40.960541>,  <27.956299, 33.206341, 41.320957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941513, 33.033482, 40.960541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372758, 0.830622, -0.413665,
		0.927192, -0.351162, 0.130384,
		-0.036963, -0.432149, -0.901044,
		27.930424, 32.903835, 40.690228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633432, 33.331070, 40.977787>,  <27.956299, 33.206341, 41.320957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633432, 33.331070, 40.977787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377480, 33.255650, 40.679794>,  <28.223907, 33.210400, 40.500999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377480, 33.255650, 40.679794>,  <28.633432, 33.331070, 40.977787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377480, 33.255650, 40.679794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556611, 0.554684, -0.618473,
		0.529838, -0.810418, -0.249989,
		-0.639887, -0.188544, -0.744980,
		28.185514, 33.199085, 40.456299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069626, 33.129375, 40.458950>,  <28.633432, 33.331070, 40.977787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069626, 33.129375, 40.458950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726671, 33.246994, 40.289989>,  <28.520899, 33.317566, 40.188614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726671, 33.246994, 40.289989>,  <29.069626, 33.129375, 40.458950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726671, 33.246994, 40.289989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514014, 0.530671, -0.673927,
		0.025993, -0.794938, -0.606133,
		-0.857388, 0.294044, -0.422403,
		28.469456, 33.335209, 40.163269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175610, 32.913254, 39.737534>,  <29.069626, 33.129375, 40.458950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175610, 32.913254, 39.737534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891285, 33.194576, 39.741611>,  <28.720690, 33.363369, 39.744061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891285, 33.194576, 39.741611>,  <29.175610, 32.913254, 39.737534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891285, 33.194576, 39.741611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439796, 0.455712, -0.773890,
		-0.548929, -0.545606, -0.633238,
		-0.710814, 0.703307, 0.010198,
		28.678041, 33.405567, 39.744671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900814, 32.950264, 39.034737>,  <29.175610, 32.913254, 39.737534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900814, 32.950264, 39.034737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801941, 33.297775, 39.206375>,  <28.742617, 33.506283, 39.309357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801941, 33.297775, 39.206375>,  <28.900814, 32.950264, 39.034737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801941, 33.297775, 39.206375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348372, 0.492906, -0.797296,
		-0.904178, -0.047595, -0.424497,
		-0.247184, 0.868780, 0.429094,
		28.727785, 33.558411, 39.335102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650831, 33.285172, 38.514488>,  <28.900814, 32.950264, 39.034737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650831, 33.285172, 38.514488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758509, 33.550560, 38.793728>,  <28.823114, 33.709793, 38.961269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758509, 33.550560, 38.793728>,  <28.650831, 33.285172, 38.514488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758509, 33.550560, 38.793728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280296, 0.639501, -0.715872,
		-0.921395, 0.388381, -0.013819,
		0.269194, 0.663474, 0.698095,
		28.839268, 33.749603, 39.003155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456831, 33.994591, 38.276108>,  <28.650831, 33.285172, 38.514488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456831, 33.994591, 38.276108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702408, 34.117035, 38.567139>,  <28.849754, 34.190502, 38.741756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702408, 34.117035, 38.567139>,  <28.456831, 33.994591, 38.276108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702408, 34.117035, 38.567139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322298, 0.744199, -0.585058,
		-0.720554, 0.593689, 0.358238,
		0.613943, 0.306106, 0.727580,
		28.886591, 34.208866, 38.785412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235811, 34.708927, 38.399490>,  <28.456831, 33.994591, 38.276108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235811, 34.708927, 38.399490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610516, 34.649448, 38.526215>,  <28.835339, 34.613762, 38.602249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610516, 34.649448, 38.526215>,  <28.235811, 34.708927, 38.399490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610516, 34.649448, 38.526215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312603, 0.762533, -0.566412,
		-0.157350, 0.629628, 0.760795,
		0.936761, -0.148701, 0.316808,
		28.891544, 34.604839, 38.621258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553059, 35.411602, 38.626198>,  <28.235811, 34.708927, 38.399490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553059, 35.411602, 38.626198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855305, 35.156784, 38.565243>,  <29.036652, 35.003895, 38.528671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855305, 35.156784, 38.565243>,  <28.553059, 35.411602, 38.626198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855305, 35.156784, 38.565243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491099, 0.704921, -0.511770,
		0.433439, 0.311865, 0.845500,
		0.755614, -0.637045, -0.152384,
		29.081989, 34.965672, 38.519527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183916, 35.793503, 38.652264>,  <28.553059, 35.411602, 38.626198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183916, 35.793503, 38.652264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326693, 35.468742, 38.467476>,  <29.412357, 35.273888, 38.356602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326693, 35.468742, 38.467476>,  <29.183916, 35.793503, 38.652264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326693, 35.468742, 38.467476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568551, 0.581218, -0.582182,
		0.741178, -0.054850, 0.669064,
		0.356940, -0.811897, -0.461971,
		29.433775, 35.225174, 38.328884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982197, 35.877655, 38.604443>,  <29.183916, 35.793503, 38.652264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982197, 35.877655, 38.604443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872198, 35.614830, 38.323689>,  <29.806198, 35.457134, 38.155235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872198, 35.614830, 38.323689>,  <29.982197, 35.877655, 38.604443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872198, 35.614830, 38.323689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571388, 0.475433, -0.668939,
		0.773235, -0.585007, 0.244693,
		-0.274999, -0.657062, -0.701887,
		29.789698, 35.417713, 38.113121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604923, 35.769817, 38.114773>,  <29.982197, 35.877655, 38.604443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604923, 35.769817, 38.114773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289328, 35.686714, 37.883488>,  <30.099970, 35.636852, 37.744717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289328, 35.686714, 37.883488>,  <30.604923, 35.769817, 38.114773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289328, 35.686714, 37.883488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450342, 0.444641, -0.774265,
		0.417955, -0.871282, -0.257257,
		-0.788990, -0.207754, -0.578215,
		30.052631, 35.624386, 37.710022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261446, 35.709579, 38.330128>,  <30.604923, 35.769817, 38.114773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261446, 35.709579, 38.330128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602823, 35.809029, 38.146904>,  <31.807650, 35.868698, 38.036968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602823, 35.809029, 38.146904>,  <31.261446, 35.709579, 38.330128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602823, 35.809029, 38.146904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161567, 0.709377, 0.686062,
		0.495511, -0.659522, 0.565242,
		0.853443, 0.248627, -0.458061,
		31.858856, 35.883617, 38.009487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711023, 35.663414, 38.855244>,  <31.261446, 35.709579, 38.330128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711023, 35.663414, 38.855244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798553, 35.930363, 38.570503>,  <31.851070, 36.090530, 38.399658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798553, 35.930363, 38.570503>,  <31.711023, 35.663414, 38.855244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798553, 35.930363, 38.570503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235478, 0.671855, 0.702254,
		0.946925, -0.321296, -0.010133,
		0.218823, 0.667368, -0.711854,
		31.864201, 36.130573, 38.356949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484333, 35.809139, 38.825726>,  <31.711023, 35.663414, 38.855244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484333, 35.809139, 38.825726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213833, 36.093906, 38.749973>,  <32.051533, 36.264767, 38.704521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213833, 36.093906, 38.749973>,  <32.484333, 35.809139, 38.825726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213833, 36.093906, 38.749973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320574, 0.515841, 0.794443,
		0.663267, 0.476530, -0.577058,
		-0.676246, 0.711918, -0.189377,
		32.010960, 36.307484, 38.693161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789799, 36.430836, 38.755672>,  <32.484333, 35.809139, 38.825726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789799, 36.430836, 38.755672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429947, 36.440392, 38.930073>,  <32.214035, 36.446125, 39.034714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429947, 36.440392, 38.930073>,  <32.789799, 36.430836, 38.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429947, 36.440392, 38.930073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362698, 0.596882, 0.715669,
		-0.243144, 0.801973, -0.545637,
		-0.899628, 0.023891, 0.436003,
		32.160057, 36.447559, 39.060875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539478, 37.059402, 38.847836>,  <32.789799, 36.430836, 38.755672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539478, 37.059402, 38.847836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385586, 36.834702, 39.140797>,  <32.293251, 36.699883, 39.316574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385586, 36.834702, 39.140797>,  <32.539478, 37.059402, 38.847836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385586, 36.834702, 39.140797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296522, 0.676203, 0.674406,
		-0.874105, 0.476637, -0.093581,
		-0.384727, -0.561754, 0.732406,
		32.270168, 36.666176, 39.360519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082901, 37.527878, 39.212364>,  <32.539478, 37.059402, 38.847836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082901, 37.527878, 39.212364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160351, 37.203453, 39.433159>,  <32.206821, 37.008797, 39.565636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160351, 37.203453, 39.433159>,  <32.082901, 37.527878, 39.212364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160351, 37.203453, 39.433159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147217, 0.580283, 0.800999,
		-0.969968, -0.073828, 0.231757,
		0.193620, -0.811062, 0.551987,
		32.218437, 36.960136, 39.598755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582611, 37.497684, 39.804970>,  <32.082901, 37.527878, 39.212364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582611, 37.497684, 39.804970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909752, 37.285641, 39.894505>,  <32.106037, 37.158413, 39.948227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909752, 37.285641, 39.894505>,  <31.582611, 37.497684, 39.804970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909752, 37.285641, 39.894505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056276, 0.460810, 0.885713,
		-0.572671, -0.711785, 0.406707,
		0.817852, -0.530110, 0.223835,
		32.155106, 37.126606, 39.961655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541025, 37.203701, 40.506012>,  <31.582611, 37.497684, 39.804970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541025, 37.203701, 40.506012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931501, 37.250233, 40.432774>,  <32.165787, 37.278152, 40.388832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931501, 37.250233, 40.432774>,  <31.541025, 37.203701, 40.506012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931501, 37.250233, 40.432774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131267, 0.355198, 0.925529,
		0.172697, -0.927525, 0.331471,
		0.976189, 0.116325, -0.183095,
		32.224358, 37.285130, 40.377846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962814, 36.971855, 41.090462>,  <31.541025, 37.203701, 40.506012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962814, 36.971855, 41.090462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249210, 37.180866, 40.905281>,  <32.421047, 37.306274, 40.794170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249210, 37.180866, 40.905281>,  <31.962814, 36.971855, 41.090462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249210, 37.180866, 40.905281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285137, 0.386431, 0.877136,
		0.637228, -0.760024, 0.127688,
		0.715987, 0.522528, -0.462955,
		32.464008, 37.337624, 40.766396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590023, 36.878349, 41.397507>,  <31.962814, 36.971855, 41.090462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590023, 36.878349, 41.397507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620762, 37.237984, 41.225117>,  <32.639206, 37.453766, 41.121685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620762, 37.237984, 41.225117>,  <32.590023, 36.878349, 41.397507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620762, 37.237984, 41.225117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326628, 0.385698, 0.862874,
		0.942024, -0.207075, -0.264028,
		0.076844, 0.899087, -0.430973,
		32.643814, 37.507710, 41.095825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314373, 37.077965, 41.387028>,  <32.590023, 36.878349, 41.397507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314373, 37.077965, 41.387028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080906, 37.402561, 41.375576>,  <32.940826, 37.597321, 41.368706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080906, 37.402561, 41.375576>,  <33.314373, 37.077965, 41.387028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080906, 37.402561, 41.375576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396098, 0.315318, 0.862369,
		0.708831, 0.491995, -0.505469,
		-0.583666, 0.811489, -0.028629,
		32.905807, 37.646008, 41.366989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787758, 37.769863, 41.658051>,  <33.314373, 37.077965, 41.387028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787758, 37.769863, 41.658051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415535, 37.915962, 41.668285>,  <33.192200, 38.003624, 41.674427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415535, 37.915962, 41.668285>,  <33.787758, 37.769863, 41.658051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415535, 37.915962, 41.668285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245222, 0.569821, 0.784328,
		0.271897, 0.736136, -0.619819,
		-0.930558, 0.365249, 0.025585,
		33.136368, 38.025536, 41.675961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854340, 38.461983, 41.842358>,  <33.787758, 37.769863, 41.658051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854340, 38.461983, 41.842358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464966, 38.403240, 41.912632>,  <33.231342, 38.367996, 41.954796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464966, 38.403240, 41.912632>,  <33.854340, 38.461983, 41.842358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464966, 38.403240, 41.912632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068065, 0.546998, 0.834362,
		-0.218629, 0.824152, -0.522469,
		-0.973431, -0.146854, 0.175686,
		33.172935, 38.359184, 41.965340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743759, 39.086075, 42.131386>,  <33.854340, 38.461983, 41.842358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743759, 39.086075, 42.131386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447865, 38.831985, 42.220181>,  <33.270329, 38.679531, 42.273457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447865, 38.831985, 42.220181>,  <33.743759, 39.086075, 42.131386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447865, 38.831985, 42.220181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017305, 0.347748, 0.937428,
		-0.672671, 0.689611, -0.268235,
		-0.739739, -0.635223, 0.221986,
		33.225945, 38.641418, 42.286777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476311, 39.395180, 42.616287>,  <33.743759, 39.086075, 42.131386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476311, 39.395180, 42.616287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293468, 39.043129, 42.667557>,  <33.183765, 38.831898, 42.698318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293468, 39.043129, 42.667557>,  <33.476311, 39.395180, 42.616287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293468, 39.043129, 42.667557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048488, 0.168559, 0.984498,
		-0.888091, 0.443801, -0.119724,
		-0.457102, -0.880130, 0.128176,
		33.156338, 38.779091, 42.706009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893345, 39.555954, 42.989128>,  <33.476311, 39.395180, 42.616287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893345, 39.555954, 42.989128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012329, 39.179417, 43.052879>,  <33.083717, 38.953495, 43.091129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012329, 39.179417, 43.052879>,  <32.893345, 39.555954, 42.989128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012329, 39.179417, 43.052879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027551, 0.158400, 0.986991,
		-0.954338, -0.297978, 0.021182,
		0.297457, -0.941339, 0.159376,
		33.101566, 38.897015, 43.100693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505291, 39.332577, 43.493469>,  <32.893345, 39.555954, 42.989128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505291, 39.332577, 43.493469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827377, 39.096344, 43.514744>,  <33.020630, 38.954605, 43.527508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827377, 39.096344, 43.514744>,  <32.505291, 39.332577, 43.493469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827377, 39.096344, 43.514744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048977, 0.155634, 0.986600,
		-0.590949, -0.791825, 0.154245,
		0.805221, -0.590585, 0.053190,
		33.068943, 38.919170, 43.530701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454010, 39.167576, 44.136730>,  <32.505291, 39.332577, 43.493469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454010, 39.167576, 44.136730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822350, 39.018337, 44.091419>,  <33.043354, 38.928795, 44.064232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822350, 39.018337, 44.091419>,  <32.454010, 39.167576, 44.136730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822350, 39.018337, 44.091419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196102, 0.192043, 0.961594,
		-0.337011, -0.907700, 0.250008,
		0.920851, -0.373095, -0.113281,
		33.098606, 38.906410, 44.057434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577168, 38.603798, 44.641766>,  <32.454010, 39.167576, 44.136730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577168, 38.603798, 44.641766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943367, 38.719372, 44.529778>,  <33.163086, 38.788715, 44.462585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943367, 38.719372, 44.529778>,  <32.577168, 38.603798, 44.641766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943367, 38.719372, 44.529778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306505, -0.050117, 0.950549,
		0.260617, -0.956036, -0.134442,
		0.915497, 0.288936, -0.279969,
		33.218018, 38.806053, 44.445786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133518, 38.060390, 44.945766>,  <32.577168, 38.603798, 44.641766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133518, 38.060390, 44.945766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317596, 38.408337, 44.874710>,  <33.428043, 38.617104, 44.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317596, 38.408337, 44.874710>,  <33.133518, 38.060390, 44.945766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317596, 38.408337, 44.874710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522411, -0.103537, 0.846385,
		0.717846, -0.482307, -0.502073,
		0.460200, 0.869862, -0.177639,
		33.455658, 38.669296, 44.821419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816559, 37.934418, 45.107113>,  <33.133518, 38.060390, 44.945766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816559, 37.934418, 45.107113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776260, 38.332157, 45.120506>,  <33.752083, 38.570801, 45.128540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776260, 38.332157, 45.120506>,  <33.816559, 37.934418, 45.107113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776260, 38.332157, 45.120506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500691, 0.021590, 0.865357,
		0.859744, 0.103942, -0.500037,
		-0.100743, 0.994349, 0.033481,
		33.746037, 38.630463, 45.130550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516884, 38.290047, 45.373161>,  <33.816559, 37.934418, 45.107113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516884, 38.290047, 45.373161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168957, 38.478687, 45.431133>,  <33.960201, 38.591873, 45.465916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168957, 38.478687, 45.431133>,  <34.516884, 38.290047, 45.373161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168957, 38.478687, 45.431133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253435, 0.175051, 0.951382,
		0.423304, 0.864261, -0.271784,
		-0.869819, 0.471603, 0.144934,
		33.908012, 38.620167, 45.474613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794426, 38.767937, 45.690876>,  <34.516884, 38.290047, 45.373161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794426, 38.767937, 45.690876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402542, 38.804703, 45.762112>,  <34.167412, 38.826763, 45.804852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402542, 38.804703, 45.762112>,  <34.794426, 38.767937, 45.690876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402542, 38.804703, 45.762112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198773, 0.332388, 0.921959,
		0.025547, 0.938653, -0.343914,
		-0.979713, 0.091914, 0.178087,
		34.108627, 38.832275, 45.815536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641586, 39.435326, 46.075710>,  <34.794426, 38.767937, 45.690876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641586, 39.435326, 46.075710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311275, 39.223186, 46.152470>,  <34.113091, 39.095905, 46.198524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311275, 39.223186, 46.152470>,  <34.641586, 39.435326, 46.075710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311275, 39.223186, 46.152470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109774, 0.182611, 0.977038,
		-0.553210, 0.827882, -0.092578,
		-0.825778, -0.530344, 0.191902,
		34.063541, 39.064083, 46.210041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264915, 39.910507, 46.598564>,  <34.641586, 39.435326, 46.075710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264915, 39.910507, 46.598564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109669, 39.542316, 46.616837>,  <34.016521, 39.321404, 46.627800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109669, 39.542316, 46.616837>,  <34.264915, 39.910507, 46.598564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109669, 39.542316, 46.616837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002822, 0.050754, 0.998707,
		-0.921605, 0.387489, -0.022296,
		-0.388120, -0.920476, 0.045682,
		33.993233, 39.266174, 46.630543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604500, 39.911652, 47.057697>,  <34.264915, 39.910507, 46.598564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604500, 39.911652, 47.057697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742657, 39.536495, 47.044647>,  <33.825550, 39.311401, 47.036816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742657, 39.536495, 47.044647>,  <33.604500, 39.911652, 47.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742657, 39.536495, 47.044647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124393, -0.080211, 0.988985,
		-0.930177, -0.337531, -0.144371,
		0.345394, -0.937891, -0.032624,
		33.846275, 39.255127, 47.034859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174572, 39.580837, 47.421902>,  <33.604500, 39.911652, 47.057697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174572, 39.580837, 47.421902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470947, 39.312553, 47.435577>,  <33.648773, 39.151585, 47.443783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470947, 39.312553, 47.435577>,  <33.174572, 39.580837, 47.421902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470947, 39.312553, 47.435577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077085, -0.034366, 0.996432,
		-0.667138, -0.740927, -0.077165,
		0.740935, -0.670706, 0.034188,
		33.693230, 39.111343, 47.445835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954956, 38.928120, 47.842365>,  <33.174572, 39.580837, 47.421902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954956, 38.928120, 47.842365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352169, 38.974579, 47.850338>,  <33.590496, 39.002453, 47.855122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352169, 38.974579, 47.850338>,  <32.954956, 38.928120, 47.842365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352169, 38.974579, 47.850338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001511, -0.156608, 0.987660,
		0.117839, -0.980807, -0.155341,
		0.993031, 0.116150, 0.019937,
		33.650078, 39.009422, 47.856319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189301, 38.430294, 48.308018>,  <32.954956, 38.928120, 47.842365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189301, 38.430294, 48.308018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534782, 38.631248, 48.291862>,  <33.742069, 38.751820, 48.282169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534782, 38.631248, 48.291862>,  <33.189301, 38.430294, 48.308018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534782, 38.631248, 48.291862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056488, -0.016856, 0.998261,
		0.500830, -0.864480, -0.042937,
		0.863701, 0.502384, -0.040391,
		33.793892, 38.781963, 48.279747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682533, 38.101082, 48.802345>,  <33.189301, 38.430294, 48.308018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682533, 38.101082, 48.802345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819984, 38.467072, 48.717728>,  <33.902454, 38.686665, 48.666958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819984, 38.467072, 48.717728>,  <33.682533, 38.101082, 48.802345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819984, 38.467072, 48.717728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182973, 0.155709, 0.970709,
		0.921108, -0.372269, -0.113909,
		0.343628, 0.914970, -0.211540,
		33.923073, 38.741562, 48.654266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334923, 38.192783, 49.095131>,  <33.682533, 38.101082, 48.802345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334923, 38.192783, 49.095131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216232, 38.572102, 49.050060>,  <34.145020, 38.799690, 49.023018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216232, 38.572102, 49.050060>,  <34.334923, 38.192783, 49.095131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216232, 38.572102, 49.050060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382220, 0.226063, 0.895993,
		0.875136, 0.222792, -0.429535,
		-0.296722, 0.948293, -0.112680,
		34.127216, 38.856590, 49.016254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758625, 38.554787, 49.529835>,  <34.334923, 38.192783, 49.095131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758625, 38.554787, 49.529835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517818, 38.862629, 49.444721>,  <34.373333, 39.047333, 49.393654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517818, 38.862629, 49.444721>,  <34.758625, 38.554787, 49.529835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517818, 38.862629, 49.444721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157622, 0.375785, 0.913204,
		0.782768, 0.516228, -0.347537,
		-0.602021, 0.769606, -0.212784,
		34.337212, 39.093510, 49.380886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121494, 39.140728, 49.658142>,  <34.758625, 38.554787, 49.529835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121494, 39.140728, 49.658142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737946, 39.252132, 49.680069>,  <34.507816, 39.318974, 49.693226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737946, 39.252132, 49.680069>,  <35.121494, 39.140728, 49.658142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737946, 39.252132, 49.680069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192916, 0.497748, 0.845594,
		0.208219, 0.821389, -0.531004,
		-0.958868, 0.278508, 0.054818,
		34.450287, 39.335686, 49.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135330, 39.913376, 49.724464>,  <35.121494, 39.140728, 49.658142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135330, 39.913376, 49.724464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803658, 39.743294, 49.869606>,  <34.604656, 39.641243, 49.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803658, 39.743294, 49.869606>,  <35.135330, 39.913376, 49.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803658, 39.743294, 49.869606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177425, 0.415359, 0.892187,
		-0.530080, 0.804160, -0.268963,
		-0.829177, -0.425210, 0.362852,
		34.554905, 39.615730, 49.978462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872589, 40.474480, 50.175091>,  <35.135330, 39.913376, 49.724464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872589, 40.474480, 50.175091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696857, 40.132256, 50.284637>,  <34.591419, 39.926922, 50.350365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696857, 40.132256, 50.284637>,  <34.872589, 40.474480, 50.175091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696857, 40.132256, 50.284637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047299, 0.326474, 0.944022,
		-0.897079, 0.401786, -0.183898,
		-0.439332, -0.855560, 0.273869,
		34.565056, 39.875587, 50.366798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202702, 40.667072, 50.430412>,  <34.872589, 40.474480, 50.175091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202702, 40.667072, 50.430412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304043, 40.310448, 50.580578>,  <34.364849, 40.096474, 50.670677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304043, 40.310448, 50.580578>,  <34.202702, 40.667072, 50.430412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304043, 40.310448, 50.580578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059989, 0.372844, 0.925953,
		-0.965511, -0.257117, 0.040979,
		0.253357, -0.891559, 0.375410,
		34.380051, 40.042980, 50.693199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644260, 40.583504, 51.003311>,  <34.202702, 40.667072, 50.430412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644260, 40.583504, 51.003311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951839, 40.334084, 51.059734>,  <34.136387, 40.184429, 51.093590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951839, 40.334084, 51.059734>,  <33.644260, 40.583504, 51.003311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951839, 40.334084, 51.059734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077562, 0.310002, 0.947567,
		-0.634588, -0.717690, 0.286740,
		0.768949, -0.623555, 0.141058,
		34.182526, 40.147018, 51.102051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514469, 40.210766, 51.584080>,  <33.644260, 40.583504, 51.003311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514469, 40.210766, 51.584080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912338, 40.198746, 51.544621>,  <34.151058, 40.191532, 51.520943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912338, 40.198746, 51.544621>,  <33.514469, 40.210766, 51.584080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912338, 40.198746, 51.544621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102459, 0.179327, 0.978440,
		-0.011712, -0.983330, 0.181450,
		0.994668, -0.030051, -0.098651,
		34.210739, 40.189732, 51.515026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689522, 39.971004, 52.179676>,  <33.514469, 40.210766, 51.584080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689522, 39.971004, 52.179676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044498, 40.102768, 52.050724>,  <34.257484, 40.181828, 51.973354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044498, 40.102768, 52.050724>,  <33.689522, 39.971004, 52.179676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044498, 40.102768, 52.050724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349852, -0.026072, 0.936442,
		0.300070, -0.943826, -0.138383,
		0.887446, 0.329412, -0.322376,
		34.310734, 40.201591, 51.954010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188721, 39.552204, 52.468369>,  <33.689522, 39.971004, 52.179676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188721, 39.552204, 52.468369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377464, 39.893894, 52.381054>,  <34.490711, 40.098907, 52.328667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377464, 39.893894, 52.381054>,  <34.188721, 39.552204, 52.468369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377464, 39.893894, 52.381054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357276, 0.041085, 0.933095,
		0.806041, -0.518278, -0.285808,
		0.471860, 0.854225, -0.218284,
		34.519024, 40.150162, 52.315567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819973, 39.417435, 52.626850>,  <34.188721, 39.552204, 52.468369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819973, 39.417435, 52.626850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831062, 39.817272, 52.623981>,  <34.837715, 40.057175, 52.622261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831062, 39.817272, 52.623981>,  <34.819973, 39.417435, 52.626850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831062, 39.817272, 52.623981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620713, -0.011587, 0.783952,
		0.783548, -0.026187, -0.620780,
		0.027722, 0.999590, -0.007175,
		34.839378, 40.117149, 52.621830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498901, 39.577053, 52.757092>,  <34.819973, 39.417435, 52.626850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498901, 39.577053, 52.757092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294514, 39.905266, 52.859566>,  <35.171879, 40.102196, 52.921051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294514, 39.905266, 52.859566>,  <35.498901, 39.577053, 52.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294514, 39.905266, 52.859566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464546, 0.012831, 0.885456,
		0.723259, 0.571454, -0.387732,
		-0.510973, 0.820534, 0.256187,
		35.141220, 40.151424, 52.936420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962238, 39.952278, 52.979832>,  <35.498901, 39.577053, 52.757092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962238, 39.952278, 52.979832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632710, 40.108509, 53.144157>,  <35.434994, 40.202248, 53.242752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632710, 40.108509, 53.144157>,  <35.962238, 39.952278, 52.979832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632710, 40.108509, 53.144157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468226, 0.060388, 0.881543,
		0.319506, 0.918586, -0.232628,
		-0.823821, 0.390581, 0.410811,
		35.385563, 40.225685, 53.267403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221676, 40.413937, 53.429760>,  <35.962238, 39.952278, 52.979832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221676, 40.413937, 53.429760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839798, 40.402431, 53.548233>,  <35.610672, 40.395527, 53.619316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839798, 40.402431, 53.548233>,  <36.221676, 40.413937, 53.429760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839798, 40.402431, 53.548233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288648, 0.152436, 0.945222,
		-0.072336, 0.987895, -0.137228,
		-0.954699, -0.028763, 0.296180,
		35.553387, 40.393803, 53.637089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252655, 40.907303, 53.964401>,  <36.221676, 40.413937, 53.429760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252655, 40.907303, 53.964401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917191, 40.694931, 54.013004>,  <35.715912, 40.567509, 54.042168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917191, 40.694931, 54.013004>,  <36.252655, 40.907303, 53.964401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917191, 40.694931, 54.013004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083321, 0.095402, 0.991946,
		-0.538247, 0.842027, -0.035772,
		-0.838658, -0.530932, 0.121508,
		35.665592, 40.535652, 54.049458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958828, 41.264221, 54.468552>,  <36.252655, 40.907303, 53.964401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958828, 41.264221, 54.468552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784950, 40.904015, 54.472729>,  <35.680622, 40.687889, 54.475235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784950, 40.904015, 54.472729>,  <35.958828, 41.264221, 54.468552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784950, 40.904015, 54.472729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079025, 0.049697, 0.995633,
		-0.897104, 0.431970, -0.092767,
		-0.434694, -0.900518, 0.010447,
		35.654541, 40.633858, 54.475864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262947, 41.270752, 54.851357>,  <35.958828, 41.264221, 54.468552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262947, 41.270752, 54.851357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387012, 40.891426, 54.824516>,  <35.461452, 40.663830, 54.808411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387012, 40.891426, 54.824516>,  <35.262947, 41.270752, 54.851357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387012, 40.891426, 54.824516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300784, -0.164841, 0.939338,
		-0.901847, -0.271166, -0.336365,
		0.310163, -0.948312, -0.067099,
		35.480061, 40.606934, 54.804386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781807, 40.740143, 55.067627>,  <35.262947, 41.270752, 54.851357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781807, 40.740143, 55.067627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110886, 40.523022, 55.135204>,  <35.308331, 40.392750, 55.175751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110886, 40.523022, 55.135204>,  <34.781807, 40.740143, 55.067627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110886, 40.523022, 55.135204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329132, -0.212475, 0.920069,
		-0.463519, -0.812539, -0.353455,
		0.822692, -0.542802, 0.168946,
		35.357693, 40.360180, 55.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656376, 40.123920, 55.417339>,  <34.781807, 40.740143, 55.067627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656376, 40.123920, 55.417339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036728, 40.223461, 55.490986>,  <35.264938, 40.283184, 55.535175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036728, 40.223461, 55.490986>,  <34.656376, 40.123920, 55.417339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036728, 40.223461, 55.490986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110244, -0.283544, 0.952601,
		0.289258, -0.926109, -0.242182,
		0.950882, 0.248848, 0.184115,
		35.321991, 40.298115, 55.546219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042080, 39.473160, 55.728561>,  <34.656376, 40.123920, 55.417339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042080, 39.473160, 55.728561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163883, 39.834263, 55.850090>,  <35.236965, 40.050926, 55.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163883, 39.834263, 55.850090>,  <35.042080, 39.473160, 55.728561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163883, 39.834263, 55.850090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134793, -0.274914, 0.951973,
		0.942924, -0.330836, 0.037971,
		0.304508, 0.902757, 0.303818,
		35.255238, 40.105091, 55.941235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557343, 39.437729, 56.260426>,  <35.042080, 39.473160, 55.728561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557343, 39.437729, 56.260426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355408, 39.776989, 56.324650>,  <35.234245, 39.980545, 56.363182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355408, 39.776989, 56.324650>,  <35.557343, 39.437729, 56.260426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355408, 39.776989, 56.324650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183323, -0.287100, 0.940195,
		0.843521, 0.445215, 0.300425,
		-0.504841, 0.848149, 0.160557,
		35.203957, 40.031433, 56.372818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757591, 39.661213, 56.997910>,  <35.557343, 39.437729, 56.260426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757591, 39.661213, 56.997910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410580, 39.848576, 56.931000>,  <35.202374, 39.960995, 56.890854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410580, 39.848576, 56.931000>,  <35.757591, 39.661213, 56.997910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410580, 39.848576, 56.931000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190465, -0.002177, 0.981692,
		0.459470, 0.883509, 0.091105,
		-0.867531, 0.468410, -0.167277,
		35.150322, 39.989098, 56.880817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692322, 38.964886, 57.145912>,  <35.757591, 39.661213, 56.997910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692322, 38.964886, 57.145912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029510, 38.761284, 57.215557>,  <36.231823, 38.639122, 57.257343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029510, 38.761284, 57.215557>,  <35.692322, 38.964886, 57.145912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029510, 38.761284, 57.215557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193603, -0.589008, -0.784594,
		0.501911, 0.627684, -0.595062,
		0.842973, -0.509002, 0.174108,
		36.282402, 38.608582, 57.267788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233440, 38.985233, 56.592789>,  <35.692322, 38.964886, 57.145912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233440, 38.985233, 56.592789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229279, 38.639339, 56.793640>,  <36.226780, 38.431805, 56.914150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229279, 38.639339, 56.793640>,  <36.233440, 38.985233, 56.592789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229279, 38.639339, 56.793640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126824, -0.496959, -0.858456,
		0.991871, -0.072616, -0.104497,
		-0.010407, -0.864730, 0.502129,
		36.226158, 38.379921, 56.944279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621597, 38.423115, 56.262413>,  <36.233440, 38.985233, 56.592789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621597, 38.423115, 56.262413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329208, 38.229908, 56.455235>,  <36.153774, 38.113983, 56.570927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329208, 38.229908, 56.455235>,  <36.621597, 38.423115, 56.262413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329208, 38.229908, 56.455235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170313, -0.554919, -0.814284,
		0.660816, -0.677316, 0.323364,
		-0.730969, -0.483019, 0.482055,
		36.109917, 38.085003, 56.599850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650665, 37.650146, 56.285671>,  <36.621597, 38.423115, 56.262413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650665, 37.650146, 56.285671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279800, 37.799408, 56.299076>,  <36.057281, 37.888966, 56.307117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279800, 37.799408, 56.299076>,  <36.650665, 37.650146, 56.285671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279800, 37.799408, 56.299076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185337, -0.379072, -0.906617,
		-0.325602, -0.846795, 0.420621,
		-0.927164, 0.373153, 0.033515,
		36.001652, 37.911354, 56.309132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304188, 37.316631, 55.819057>,  <36.650665, 37.650146, 56.285671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304188, 37.316631, 55.819057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034351, 37.609440, 55.857178>,  <35.872452, 37.785126, 55.880051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034351, 37.609440, 55.857178>,  <36.304188, 37.316631, 55.819057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034351, 37.609440, 55.857178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306812, -0.160605, -0.938122,
		-0.671416, -0.662085, 0.332934,
		-0.674587, 0.732018, 0.095302,
		35.831974, 37.829044, 55.885769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658192, 37.089432, 55.522972>,  <36.304188, 37.316631, 55.819057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658192, 37.089432, 55.522972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688103, 37.488003, 55.507248>,  <35.706051, 37.727146, 55.497814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688103, 37.488003, 55.507248>,  <35.658192, 37.089432, 55.522972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688103, 37.488003, 55.507248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178517, -0.025404, -0.983609,
		-0.981091, 0.080570, 0.175979,
		0.074778, 0.996425, -0.039307,
		35.710537, 37.786930, 55.495457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009457, 37.346973, 55.234280>,  <35.658192, 37.089432, 55.522972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009457, 37.346973, 55.234280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327454, 37.581238, 55.171055>,  <35.518253, 37.721798, 55.133118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327454, 37.581238, 55.171055>,  <35.009457, 37.346973, 55.234280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327454, 37.581238, 55.171055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257221, 0.089469, -0.962202,
		-0.549384, 0.805602, 0.221772,
		0.794993, 0.585663, -0.158065,
		35.565952, 37.756935, 55.123634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768383, 37.867504, 55.016567>,  <35.009457, 37.346973, 55.234280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768383, 37.867504, 55.016567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146141, 37.871613, 54.885101>,  <35.372795, 37.874077, 54.806221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146141, 37.871613, 54.885101>,  <34.768383, 37.867504, 55.016567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146141, 37.871613, 54.885101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327094, -0.073078, -0.942162,
		-0.033698, 0.997273, -0.065654,
		0.944391, 0.010274, -0.328664,
		35.429459, 37.874695, 54.786503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770752, 38.281376, 54.395401>,  <34.768383, 37.867504, 55.016567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770752, 38.281376, 54.395401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113293, 38.078102, 54.358723>,  <35.318817, 37.956139, 54.336716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113293, 38.078102, 54.358723>,  <34.770752, 38.281376, 54.395401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113293, 38.078102, 54.358723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267862, -0.285345, -0.920233,
		0.441482, 0.812606, -0.380479,
		0.856355, -0.508182, -0.091692,
		35.370197, 37.925648, 54.331215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964882, 38.487610, 53.832870>,  <34.770752, 38.281376, 54.395401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964882, 38.487610, 53.832870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169880, 38.146942, 53.876701>,  <35.292877, 37.942539, 53.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169880, 38.146942, 53.876701>,  <34.964882, 38.487610, 53.832870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169880, 38.146942, 53.876701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133887, -0.205298, -0.969498,
		0.848190, 0.482190, -0.219242,
		0.512492, -0.851672, 0.109573,
		35.323627, 37.891441, 53.909573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398090, 38.490112, 53.247814>,  <34.964882, 38.487610, 53.832870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398090, 38.490112, 53.247814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396858, 38.113503, 53.382587>,  <35.396118, 37.887539, 53.463451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396858, 38.113503, 53.382587>,  <35.398090, 38.490112, 53.247814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396858, 38.113503, 53.382587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148691, -0.332761, -0.931215,
		0.988879, -0.052968, -0.138970,
		-0.003080, -0.941522, 0.336937,
		35.395935, 37.831047, 53.483669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933140, 38.064240, 52.867512>,  <35.398090, 38.490112, 53.247814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933140, 38.064240, 52.867512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682087, 37.800995, 53.033867>,  <35.531456, 37.643047, 53.133678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682087, 37.800995, 53.033867>,  <35.933140, 38.064240, 52.867512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682087, 37.800995, 53.033867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164571, -0.409978, -0.897125,
		0.760918, -0.631507, 0.149008,
		-0.627631, -0.658116, 0.415888,
		35.493797, 37.603561, 53.158634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125652, 37.372169, 52.573456>,  <35.933140, 38.064240, 52.867512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125652, 37.372169, 52.573456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747601, 37.333736, 52.698360>,  <35.520771, 37.310677, 52.773304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747601, 37.333736, 52.698360>,  <36.125652, 37.372169, 52.573456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747601, 37.333736, 52.698360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243399, -0.430493, -0.869156,
		0.217933, -0.897466, 0.383484,
		-0.945125, -0.096078, 0.312261,
		35.464062, 37.304913, 52.792038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887253, 36.658298, 52.574989>,  <36.125652, 37.372169, 52.573456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887253, 36.658298, 52.574989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549164, 36.871246, 52.556347>,  <35.346310, 36.999016, 52.545162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549164, 36.871246, 52.556347>,  <35.887253, 36.658298, 52.574989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549164, 36.871246, 52.556347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332548, -0.592227, -0.733947,
		-0.418333, -0.604854, 0.677606,
		-0.845227, 0.532371, -0.046605,
		35.295597, 37.030956, 52.542366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455681, 36.156734, 52.359959>,  <35.887253, 36.658298, 52.574989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455681, 36.156734, 52.359959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239956, 36.477543, 52.257271>,  <35.110519, 36.670029, 52.195660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239956, 36.477543, 52.257271>,  <35.455681, 36.156734, 52.359959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239956, 36.477543, 52.257271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367980, -0.498657, -0.784813,
		-0.757451, -0.328792, 0.564060,
		-0.539313, 0.802021, -0.256720,
		35.078163, 36.718147, 52.180256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931973, 35.881107, 51.876106>,  <35.455681, 36.156734, 52.359959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931973, 35.881107, 51.876106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920509, 36.277180, 51.821369>,  <34.913631, 36.514824, 51.788525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920509, 36.277180, 51.821369>,  <34.931973, 35.881107, 51.876106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920509, 36.277180, 51.821369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241719, -0.139705, -0.960236,
		-0.969923, 0.005558, 0.243349,
		-0.028660, 0.990177, -0.136847,
		34.911911, 36.574234, 51.780315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307793, 36.000587, 51.524948>,  <34.931973, 35.881107, 51.876106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307793, 36.000587, 51.524948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547375, 36.311764, 51.448994>,  <34.691124, 36.498470, 51.403423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547375, 36.311764, 51.448994>,  <34.307793, 36.000587, 51.524948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547375, 36.311764, 51.448994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046794, -0.202714, -0.978119,
		-0.799413, 0.594737, -0.085014,
		0.598957, 0.777943, -0.189883,
		34.727062, 36.545147, 51.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000713, 36.348766, 50.922646>,  <34.307793, 36.000587, 51.524948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000713, 36.348766, 50.922646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381901, 36.464977, 50.957150>,  <34.610615, 36.534702, 50.977852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381901, 36.464977, 50.957150>,  <34.000713, 36.348766, 50.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381901, 36.464977, 50.957150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114626, -0.082035, -0.990016,
		-0.280547, 0.953345, -0.111478,
		0.952971, 0.290524, 0.086263,
		34.667793, 36.552135, 50.983028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016674, 36.864834, 50.433109>,  <34.000713, 36.348766, 50.922646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016674, 36.864834, 50.433109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406288, 36.797672, 50.493862>,  <34.640057, 36.757374, 50.530312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406288, 36.797672, 50.493862>,  <34.016674, 36.864834, 50.433109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406288, 36.797672, 50.493862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144689, -0.054335, -0.987984,
		0.174139, 0.984305, -0.028630,
		0.974033, -0.167904, 0.151880,
		34.698498, 36.747299, 50.539425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377308, 37.340931, 50.071327>,  <34.016674, 36.864834, 50.433109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377308, 37.340931, 50.071327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606327, 37.017712, 50.126804>,  <34.743740, 36.823780, 50.160091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606327, 37.017712, 50.126804>,  <34.377308, 37.340931, 50.071327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606327, 37.017712, 50.126804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074820, -0.116957, -0.990315,
		0.816447, 0.577383, -0.006506,
		0.572552, -0.808053, 0.138689,
		34.778091, 36.775295, 50.168411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923512, 37.433109, 49.595783>,  <34.377308, 37.340931, 50.071327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923512, 37.433109, 49.595783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900330, 37.047119, 49.698120>,  <34.886421, 36.815525, 49.759521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900330, 37.047119, 49.698120>,  <34.923512, 37.433109, 49.595783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900330, 37.047119, 49.698120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027803, -0.257738, -0.965815,
		0.997932, -0.048861, 0.041767,
		-0.057955, -0.964978, 0.255847,
		34.882942, 36.757626, 49.774876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094360, 37.134731, 49.103832>,  <34.923512, 37.433109, 49.595783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094360, 37.134731, 49.103832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951374, 36.799721, 49.269127>,  <34.865582, 36.598713, 49.368301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951374, 36.799721, 49.269127>,  <35.094360, 37.134731, 49.103832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951374, 36.799721, 49.269127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101515, -0.474691, -0.874279,
		0.928392, -0.270577, 0.254708,
		-0.357467, -0.837530, 0.413232,
		34.844135, 36.548462, 49.393097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595257, 36.519066, 49.030968>,  <35.094360, 37.134731, 49.103832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595257, 36.519066, 49.030968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224052, 36.377609, 49.077850>,  <35.001331, 36.292736, 49.105980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224052, 36.377609, 49.077850>,  <35.595257, 36.519066, 49.030968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224052, 36.377609, 49.077850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057436, -0.446635, -0.892871,
		0.368105, -0.821860, 0.434793,
		-0.928009, -0.353643, 0.117204,
		34.945648, 36.271515, 49.113010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586536, 35.809685, 48.911911>,  <35.595257, 36.519066, 49.030968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586536, 35.809685, 48.911911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218311, 35.949947, 48.843102>,  <34.997375, 36.034107, 48.801815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218311, 35.949947, 48.843102>,  <35.586536, 35.809685, 48.911911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218311, 35.949947, 48.843102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029769, -0.502144, -0.864271,
		-0.389447, -0.790499, 0.472697,
		-0.920567, 0.350660, -0.172026,
		34.942142, 36.055145, 48.791492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319542, 35.274311, 48.573109>,  <35.586536, 35.809685, 48.911911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319542, 35.274311, 48.573109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028538, 35.538406, 48.498478>,  <34.853935, 35.696865, 48.453701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028538, 35.538406, 48.498478>,  <35.319542, 35.274311, 48.573109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028538, 35.538406, 48.498478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181136, -0.447123, -0.875940,
		-0.661751, -0.603463, 0.444880,
		-0.727513, 0.660238, -0.186575,
		34.810284, 35.736477, 48.442505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648983, 34.915703, 48.260311>,  <35.319542, 35.274311, 48.573109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648983, 34.915703, 48.260311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611664, 35.297302, 48.146336>,  <34.589272, 35.526260, 48.077950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611664, 35.297302, 48.146336>,  <34.648983, 34.915703, 48.260311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611664, 35.297302, 48.146336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152129, -0.296485, -0.942843,
		-0.983947, -0.044618, 0.172791,
		-0.093298, 0.953995, -0.284938,
		34.583675, 35.583500, 48.060856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033920, 34.841789, 47.877953>,  <34.648983, 34.915703, 48.260311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033920, 34.841789, 47.877953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193291, 35.195175, 47.779369>,  <34.288914, 35.407207, 47.720219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193291, 35.195175, 47.779369>,  <34.033920, 34.841789, 47.877953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193291, 35.195175, 47.779369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312731, -0.121751, -0.942006,
		-0.862240, 0.452392, 0.227780,
		0.398424, 0.883469, -0.246456,
		34.312817, 35.460217, 47.705433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504921, 35.205929, 47.506706>,  <34.033920, 34.841789, 47.877953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504921, 35.205929, 47.506706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836578, 35.407051, 47.408962>,  <34.035572, 35.527725, 47.350315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836578, 35.407051, 47.408962>,  <33.504921, 35.205929, 47.506706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836578, 35.407051, 47.408962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283728, 0.001865, -0.958903,
		-0.481685, 0.864398, 0.144206,
		0.829143, 0.502804, -0.244355,
		34.085320, 35.557892, 47.335655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290352, 35.745316, 47.034752>,  <33.504921, 35.205929, 47.506706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290352, 35.745316, 47.034752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674091, 35.657360, 46.963985>,  <33.904335, 35.604588, 46.921524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674091, 35.657360, 46.963985>,  <33.290352, 35.745316, 47.034752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674091, 35.657360, 46.963985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216378, -0.170587, -0.961291,
		0.181194, 0.960495, -0.211230,
		0.959348, -0.219886, -0.176920,
		33.961895, 35.591393, 46.910908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454170, 36.138145, 46.382881>,  <33.290352, 35.745316, 47.034752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454170, 36.138145, 46.382881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740234, 35.861801, 46.425339>,  <33.911873, 35.695995, 46.450813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740234, 35.861801, 46.425339>,  <33.454170, 36.138145, 46.382881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740234, 35.861801, 46.425339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117969, -0.030382, -0.992552,
		0.688937, 0.722353, 0.059772,
		0.715157, -0.690857, 0.106146,
		33.954781, 35.654545, 46.457184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848957, 36.323090, 45.807449>,  <33.454170, 36.138145, 46.382881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848957, 36.323090, 45.807449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994522, 35.967487, 45.918613>,  <34.081863, 35.754128, 45.985313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994522, 35.967487, 45.918613>,  <33.848957, 36.323090, 45.807449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994522, 35.967487, 45.918613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073622, -0.269983, -0.960046,
		0.928518, 0.369836, -0.032800,
		0.363915, -0.889005, 0.277912,
		34.103695, 35.700787, 46.001987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459538, 36.331608, 45.403515>,  <33.848957, 36.323090, 45.807449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459538, 36.331608, 45.403515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376499, 35.953159, 45.502926>,  <34.326675, 35.726089, 45.562572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376499, 35.953159, 45.502926>,  <34.459538, 36.331608, 45.403515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376499, 35.953159, 45.502926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280380, -0.300950, -0.911491,
		0.937172, -0.119539, 0.327749,
		-0.207595, -0.946118, 0.248525,
		34.314220, 35.669323, 45.577484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077465, 35.933060, 45.301197>,  <34.459538, 36.331608, 45.403515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077465, 35.933060, 45.301197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765648, 35.683804, 45.275879>,  <34.578556, 35.534248, 45.260689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765648, 35.683804, 45.275879>,  <35.077465, 35.933060, 45.301197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765648, 35.683804, 45.275879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273548, -0.247806, -0.929389,
		0.563454, -0.741815, 0.363634,
		-0.779546, -0.623139, -0.063295,
		34.531784, 35.496861, 45.256889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238159, 35.712711, 44.696674>,  <35.077465, 35.933060, 45.301197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238159, 35.712711, 44.696674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880180, 35.542461, 44.750210>,  <34.665394, 35.440311, 44.782333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880180, 35.542461, 44.750210>,  <35.238159, 35.712711, 44.696674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880180, 35.542461, 44.750210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052521, -0.197400, -0.978915,
		0.443069, -0.883107, 0.154309,
		-0.894948, -0.425623, 0.133843,
		34.611694, 35.414776, 44.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162601, 35.129040, 44.203838>,  <35.238159, 35.712711, 44.696674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162601, 35.129040, 44.203838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789120, 35.221951, 44.312824>,  <34.565029, 35.277699, 44.378216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789120, 35.221951, 44.312824>,  <35.162601, 35.129040, 44.203838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789120, 35.221951, 44.312824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305987, -0.122524, -0.944118,
		-0.185916, -0.964901, 0.185476,
		-0.933706, 0.232280, 0.272468,
		34.509007, 35.291634, 44.394566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698669, 34.669487, 44.021877>,  <35.162601, 35.129040, 44.203838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698669, 34.669487, 44.021877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486374, 35.008297, 44.010124>,  <34.358997, 35.211582, 44.003071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486374, 35.008297, 44.010124>,  <34.698669, 34.669487, 44.021877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486374, 35.008297, 44.010124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194885, -0.155705, -0.968389,
		-0.824825, -0.508235, 0.247711,
		-0.530739, 0.847026, -0.029381,
		34.327152, 35.262405, 44.001308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153698, 34.465679, 43.605049>,  <34.698669, 34.669487, 44.021877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153698, 34.465679, 43.605049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166225, 34.865353, 43.615196>,  <34.173744, 35.105156, 43.621284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166225, 34.865353, 43.615196>,  <34.153698, 34.465679, 43.605049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166225, 34.865353, 43.615196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205213, 0.031264, -0.978218,
		-0.978216, 0.025435, 0.206026,
		0.031322, 0.999188, 0.025363,
		34.175621, 35.165108, 43.622807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603344, 34.685280, 43.065693>,  <34.153698, 34.465679, 43.605049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603344, 34.685280, 43.065693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801857, 35.026886, 43.128113>,  <33.920967, 35.231850, 43.165565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801857, 35.026886, 43.128113>,  <33.603344, 34.685280, 43.065693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801857, 35.026886, 43.128113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284869, 0.329985, -0.899978,
		-0.820091, 0.402194, 0.407050,
		0.496286, 0.854020, 0.156045,
		33.950745, 35.283092, 43.174927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139961, 35.102188, 42.828846>,  <33.603344, 34.685280, 43.065693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139961, 35.102188, 42.828846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494362, 35.287621, 42.832901>,  <33.707001, 35.398880, 42.835335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494362, 35.287621, 42.832901>,  <33.139961, 35.102188, 42.828846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494362, 35.287621, 42.832901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226675, 0.452096, -0.862686,
		-0.404507, 0.762039, 0.505638,
		0.885998, 0.463578, 0.010141,
		33.760162, 35.426693, 42.835945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078236, 35.826454, 42.793423>,  <33.139961, 35.102188, 42.828846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078236, 35.826454, 42.793423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445641, 35.749504, 42.655247>,  <33.666084, 35.703335, 42.572342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445641, 35.749504, 42.655247>,  <33.078236, 35.826454, 42.793423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445641, 35.749504, 42.655247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248828, 0.397725, -0.883119,
		0.307277, 0.897111, 0.317448,
		0.918513, -0.192372, -0.345438,
		33.721195, 35.691792, 42.551617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399849, 36.535622, 42.478436>,  <33.078236, 35.826454, 42.793423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399849, 36.535622, 42.478436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622246, 36.240612, 42.325108>,  <33.755684, 36.063606, 42.233112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622246, 36.240612, 42.325108>,  <33.399849, 36.535622, 42.478436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622246, 36.240612, 42.325108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090602, 0.404646, -0.909974,
		0.826232, 0.540672, 0.158161,
		0.555996, -0.737520, -0.383318,
		33.789043, 36.019356, 42.210114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809715, 36.826653, 42.001156>,  <33.399849, 36.535622, 42.478436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809715, 36.826653, 42.001156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848125, 36.444107, 41.890778>,  <33.871170, 36.214581, 41.824551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848125, 36.444107, 41.890778>,  <33.809715, 36.826653, 42.001156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848125, 36.444107, 41.890778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003493, 0.277550, -0.960705,
		0.995373, 0.091286, 0.029992,
		0.096024, -0.956364, -0.275947,
		33.876934, 36.157196, 41.807995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397686, 36.726364, 41.455929>,  <33.809715, 36.826653, 42.001156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397686, 36.726364, 41.455929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116768, 36.444885, 41.412861>,  <33.948215, 36.275997, 41.387020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116768, 36.444885, 41.412861>,  <34.397686, 36.726364, 41.455929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116768, 36.444885, 41.412861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004701, 0.146664, -0.989175,
		0.711868, -0.695201, -0.099694,
		-0.702297, -0.703694, -0.107673,
		33.906078, 36.233776, 41.380558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593666, 36.302948, 40.741627>,  <34.397686, 36.726364, 41.455929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593666, 36.302948, 40.741627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419693, 36.561123, 40.490471>,  <34.315311, 36.716026, 40.339775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419693, 36.561123, 40.490471>,  <34.593666, 36.302948, 40.741627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419693, 36.561123, 40.490471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585469, -0.732485, -0.347407,
		-0.684149, 0.216513, 0.696464,
		-0.434932, 0.645436, -0.627891,
		34.289215, 36.754753, 40.302105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041435, 35.574020, 40.981670>,  <34.593666, 36.302948, 40.741627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041435, 35.574020, 40.981670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319256, 35.463600, 40.715919>,  <35.485947, 35.397346, 40.556469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319256, 35.463600, 40.715919>,  <35.041435, 35.574020, 40.981670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319256, 35.463600, 40.715919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591603, -0.306344, 0.745761,
		-0.409397, -0.911015, -0.049457,
		0.694550, -0.276053, -0.664375,
		35.527622, 35.380783, 40.516605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297867, 35.026356, 41.245861>,  <35.041435, 35.574020, 40.981670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297867, 35.026356, 41.245861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582073, 35.197121, 41.022110>,  <35.752598, 35.299580, 40.887859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582073, 35.197121, 41.022110>,  <35.297867, 35.026356, 41.245861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582073, 35.197121, 41.022110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638448, -0.056853, 0.767563,
		0.295883, -0.902503, -0.312959,
		0.710520, 0.426916, -0.559379,
		35.795231, 35.325195, 40.854298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924412, 34.651417, 41.488300>,  <35.297867, 35.026356, 41.245861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924412, 34.651417, 41.488300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060760, 34.972260, 41.292164>,  <36.142570, 35.164764, 41.174480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060760, 34.972260, 41.292164>,  <35.924412, 34.651417, 41.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060760, 34.972260, 41.292164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781494, 0.048158, 0.622051,
		0.522564, -0.595239, -0.610424,
		0.340872, 0.802104, -0.490342,
		36.163021, 35.212891, 41.145061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610214, 34.596912, 41.626045>,  <35.924412, 34.651417, 41.488300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610214, 34.596912, 41.626045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573524, 34.968571, 41.482784>,  <36.551510, 35.191566, 41.396828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573524, 34.968571, 41.482784>,  <36.610214, 34.596912, 41.626045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573524, 34.968571, 41.482784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827269, 0.271301, 0.491957,
		0.554267, -0.251166, -0.793539,
		-0.091726, 0.929146, -0.358155,
		36.546005, 35.247314, 41.375340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306412, 34.749779, 41.453629>,  <36.610214, 34.596912, 41.626045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306412, 34.749779, 41.453629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122017, 35.100758, 41.506649>,  <37.011379, 35.311348, 41.538464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122017, 35.100758, 41.506649>,  <37.306412, 34.749779, 41.453629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122017, 35.100758, 41.506649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839010, 0.382298, 0.387183,
		0.289059, 0.289701, -0.912425,
		-0.460985, 0.877452, 0.132555,
		36.983723, 35.363995, 41.546417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732769, 35.290157, 41.210411>,  <37.306412, 34.749779, 41.453629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732769, 35.290157, 41.210411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478462, 35.442890, 41.478741>,  <37.325878, 35.534531, 41.639740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478462, 35.442890, 41.478741>,  <37.732769, 35.290157, 41.210411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478462, 35.442890, 41.478741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759521, 0.464362, 0.455517,
		-0.137574, 0.799107, -0.585236,
		-0.635768, 0.381832, 0.670823,
		37.287731, 35.557438, 41.679989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998623, 36.023293, 41.428246>,  <37.732769, 35.290157, 41.210411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998623, 36.023293, 41.428246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726322, 35.912380, 41.699448>,  <37.562943, 35.845833, 41.862171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726322, 35.912380, 41.699448>,  <37.998623, 36.023293, 41.428246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726322, 35.912380, 41.699448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547162, 0.422911, 0.722330,
		-0.487023, 0.862707, -0.136181,
		-0.680752, -0.277278, 0.678008,
		37.522099, 35.829197, 41.902851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035763, 36.565041, 41.937336>,  <37.998623, 36.023293, 41.428246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035763, 36.565041, 41.937336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883533, 36.243797, 42.120720>,  <37.792194, 36.051052, 42.230751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883533, 36.243797, 42.120720>,  <38.035763, 36.565041, 41.937336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883533, 36.243797, 42.120720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578044, 0.180377, 0.795820,
		-0.721823, 0.567877, 0.395584,
		-0.380574, -0.803106, 0.458458,
		37.769360, 36.002865, 42.258259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844982, 36.745483, 42.607601>,  <38.035763, 36.565041, 41.937336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844982, 36.745483, 42.607601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843536, 36.350456, 42.670460>,  <37.842667, 36.113441, 42.708176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843536, 36.350456, 42.670460>,  <37.844982, 36.745483, 42.607601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843536, 36.350456, 42.670460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402538, 0.142416, 0.904257,
		-0.915396, 0.066529, 0.397019,
		-0.003618, -0.987568, 0.157148,
		37.842453, 36.054184, 42.717606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522686, 36.743633, 43.259670>,  <37.844982, 36.745483, 42.607601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522686, 36.743633, 43.259670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713535, 36.393867, 43.224442>,  <37.828045, 36.184010, 43.203304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713535, 36.393867, 43.224442>,  <37.522686, 36.743633, 43.259670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713535, 36.393867, 43.224442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163672, -0.010045, 0.986464,
		-0.863460, -0.485082, 0.138323,
		0.477126, -0.874411, -0.088068,
		37.856674, 36.131546, 43.198021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356304, 36.341145, 43.885185>,  <37.522686, 36.743633, 43.259670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356304, 36.341145, 43.885185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639286, 36.104660, 43.730278>,  <37.809074, 35.962769, 43.637337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639286, 36.104660, 43.730278>,  <37.356304, 36.341145, 43.885185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639286, 36.104660, 43.730278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192733, -0.365794, 0.910521,
		-0.679968, -0.718795, -0.144839,
		0.707459, -0.591210, -0.387263,
		37.851524, 35.927296, 43.614098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136578, 35.679150, 44.028271>,  <37.356304, 36.341145, 43.885185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136578, 35.679150, 44.028271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535210, 35.682320, 43.995361>,  <37.774387, 35.684223, 43.975616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535210, 35.682320, 43.995361>,  <37.136578, 35.679150, 44.028271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535210, 35.682320, 43.995361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078607, -0.398691, 0.913710,
		-0.025562, -0.917051, -0.397950,
		0.996578, 0.007926, -0.082278,
		37.834183, 35.684696, 43.970676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421368, 34.991440, 44.228016>,  <37.136578, 35.679150, 44.028271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421368, 34.991440, 44.228016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714458, 35.259613, 44.274727>,  <37.890312, 35.420517, 44.302753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714458, 35.259613, 44.274727>,  <37.421368, 34.991440, 44.228016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714458, 35.259613, 44.274727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172568, -0.349043, 0.921080,
		0.658283, -0.654744, -0.371447,
		0.732723, 0.670432, 0.116781,
		37.934277, 35.460743, 44.309761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846973, 34.695854, 44.781715>,  <37.421368, 34.991440, 44.228016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846973, 34.695854, 44.781715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007217, 35.061749, 44.760651>,  <38.103363, 35.281284, 44.748013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007217, 35.061749, 44.760651>,  <37.846973, 34.695854, 44.781715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007217, 35.061749, 44.760651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424167, -0.134206, 0.895584,
		0.812154, -0.381116, -0.441764,
		0.400609, 0.914734, -0.052661,
		38.127399, 35.336170, 44.744854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430725, 34.610725, 45.076618>,  <37.846973, 34.695854, 44.781715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430725, 34.610725, 45.076618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366852, 35.004486, 45.106148>,  <38.328526, 35.240742, 45.123867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366852, 35.004486, 45.106148>,  <38.430725, 34.610725, 45.076618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366852, 35.004486, 45.106148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256991, -0.030754, 0.965924,
		0.953130, 0.173218, -0.248072,
		-0.159686, 0.984403, 0.073828,
		38.318947, 35.299809, 45.128296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063499, 34.870739, 45.389133>,  <38.430725, 34.610725, 45.076618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063499, 34.870739, 45.389133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755444, 35.119499, 45.445885>,  <38.570610, 35.268757, 45.479935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755444, 35.119499, 45.445885>,  <39.063499, 34.870739, 45.389133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755444, 35.119499, 45.445885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179049, -0.002717, 0.983836,
		0.612235, 0.783090, -0.109259,
		-0.770136, 0.621902, 0.141875,
		38.524403, 35.306068, 45.488445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271542, 35.444908, 45.827770>,  <39.063499, 34.870739, 45.389133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271542, 35.444908, 45.827770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875065, 35.405983, 45.863682>,  <38.637177, 35.382629, 45.885227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875065, 35.405983, 45.863682>,  <39.271542, 35.444908, 45.827770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875065, 35.405983, 45.863682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090364, -0.001621, 0.995907,
		-0.096768, 0.995253, 0.010400,
		-0.991196, -0.097311, 0.089778,
		38.577705, 35.376789, 45.890614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109703, 35.849846, 46.436146>,  <39.271542, 35.444908, 45.827770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109703, 35.849846, 46.436146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774361, 35.636284, 46.392124>,  <38.573154, 35.508148, 46.365711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774361, 35.636284, 46.392124>,  <39.109703, 35.849846, 46.436146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774361, 35.636284, 46.392124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228930, 0.161594, 0.959937,
		-0.494730, 0.829960, -0.257699,
		-0.838352, -0.533905, -0.110057,
		38.522854, 35.476112, 46.359108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583317, 36.234959, 46.739471>,  <39.109703, 35.849846, 46.436146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583317, 36.234959, 46.739471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443005, 35.860821, 46.721176>,  <38.358818, 35.636337, 46.710201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443005, 35.860821, 46.721176>,  <38.583317, 36.234959, 46.739471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443005, 35.860821, 46.721176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261297, 0.050862, 0.963917,
		-0.899265, 0.350072, -0.262244,
		-0.350779, -0.935341, -0.045734,
		38.337772, 35.580219, 46.707455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936096, 36.243710, 47.064163>,  <38.583317, 36.234959, 46.739471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936096, 36.243710, 47.064163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016060, 35.852531, 47.088371>,  <38.064037, 35.617825, 47.102894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016060, 35.852531, 47.088371>,  <37.936096, 36.243710, 47.064163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016060, 35.852531, 47.088371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362361, -0.016407, 0.931893,
		-0.910347, -0.208223, -0.357649,
		0.199909, -0.977944, 0.060516,
		38.076035, 35.559147, 47.106525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348190, 35.836342, 47.296238>,  <37.936096, 36.243710, 47.064163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348190, 35.836342, 47.296238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619190, 35.556061, 47.385681>,  <37.781792, 35.387890, 47.439346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619190, 35.556061, 47.385681>,  <37.348190, 35.836342, 47.296238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619190, 35.556061, 47.385681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318269, -0.005209, 0.947986,
		-0.663095, -0.713431, -0.226542,
		0.677503, -0.700706, 0.223609,
		37.822441, 35.345848, 47.452763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039658, 35.151249, 47.460358>,  <37.348190, 35.836342, 47.296238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039658, 35.151249, 47.460358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389103, 35.180500, 47.652794>,  <37.598770, 35.198051, 47.768257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389103, 35.180500, 47.652794>,  <37.039658, 35.151249, 47.460358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389103, 35.180500, 47.652794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472951, -0.105073, 0.874801,
		0.114520, -0.991772, -0.057209,
		0.873615, 0.073125, 0.481093,
		37.651188, 35.202438, 47.797123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015224, 34.747440, 48.079800>,  <37.039658, 35.151249, 47.460358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015224, 34.747440, 48.079800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317406, 34.974171, 48.211254>,  <37.498714, 35.110207, 48.290127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317406, 34.974171, 48.211254>,  <37.015224, 34.747440, 48.079800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317406, 34.974171, 48.211254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362921, -0.055598, 0.930160,
		0.545508, -0.821961, 0.163711,
		0.755453, 0.566823, 0.328636,
		37.544041, 35.144218, 48.309845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087406, 34.536041, 48.808430>,  <37.015224, 34.747440, 48.079800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087406, 34.536041, 48.808430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267761, 34.889561, 48.758465>,  <37.375977, 35.101673, 48.728485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267761, 34.889561, 48.758465>,  <37.087406, 34.536041, 48.808430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267761, 34.889561, 48.758465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230330, 0.250408, 0.940343,
		0.862349, -0.395221, 0.316471,
		0.450890, 0.883796, -0.124908,
		37.403027, 35.154701, 48.720993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302059, 34.680183, 49.485992>,  <37.087406, 34.536041, 48.808430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302059, 34.680183, 49.485992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369705, 35.032330, 49.308743>,  <37.410294, 35.243618, 49.202393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369705, 35.032330, 49.308743>,  <37.302059, 34.680183, 49.485992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369705, 35.032330, 49.308743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123625, 0.427102, 0.895712,
		0.977812, -0.206264, -0.036603,
		0.169120, 0.880363, -0.443125,
		37.420441, 35.296440, 49.175804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984669, 34.903656, 49.754002>,  <37.302059, 34.680183, 49.485992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984669, 34.903656, 49.754002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737076, 35.198128, 49.644531>,  <37.588520, 35.374813, 49.578850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737076, 35.198128, 49.644531>,  <37.984669, 34.903656, 49.754002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737076, 35.198128, 49.644531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152822, 0.454683, 0.877444,
		0.770394, 0.501298, -0.393945,
		-0.618981, 0.736182, -0.273677,
		37.551380, 35.418983, 49.562428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297161, 35.450882, 50.052547>,  <37.984669, 34.903656, 49.754002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297161, 35.450882, 50.052547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923668, 35.574211, 49.979794>,  <37.699574, 35.648209, 49.936142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923668, 35.574211, 49.979794>,  <38.297161, 35.450882, 50.052547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923668, 35.574211, 49.979794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015792, 0.543083, 0.839530,
		0.357625, 0.781024, -0.511963,
		-0.933732, 0.308322, -0.181886,
		37.643547, 35.666706, 49.925228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378124, 36.096729, 50.164146>,  <38.297161, 35.450882, 50.052547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378124, 36.096729, 50.164146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978729, 36.078213, 50.175980>,  <37.739090, 36.067104, 50.183079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978729, 36.078213, 50.175980>,  <38.378124, 36.096729, 50.164146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978729, 36.078213, 50.175980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008965, 0.668577, 0.743588,
		-0.054198, 0.742200, -0.667983,
		-0.998490, -0.046290, 0.029582,
		37.679184, 36.064327, 50.184853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177208, 36.757576, 50.095860>,  <38.378124, 36.096729, 50.164146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177208, 36.757576, 50.095860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905239, 36.563633, 50.315903>,  <37.742058, 36.447269, 50.447929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905239, 36.563633, 50.315903>,  <38.177208, 36.757576, 50.095860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905239, 36.563633, 50.315903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011234, 0.743226, 0.668946,
		-0.733199, 0.461011, -0.499889,
		-0.679922, -0.484854, 0.550111,
		37.701263, 36.418175, 50.480938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944084, 37.364647, 50.445332>,  <38.177208, 36.757576, 50.095860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944084, 37.364647, 50.445332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727913, 37.089634, 50.639339>,  <37.598209, 36.924625, 50.755745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727913, 37.089634, 50.639339>,  <37.944084, 37.364647, 50.445332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727913, 37.089634, 50.639339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071062, 0.537092, 0.840525,
		-0.838386, 0.488706, -0.241401,
		-0.540424, -0.687530, 0.485019,
		37.565784, 36.883373, 50.784843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306973, 37.661152, 50.765575>,  <37.944084, 37.364647, 50.445332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306973, 37.661152, 50.765575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393307, 37.334743, 50.980061>,  <37.445107, 37.138897, 51.108749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393307, 37.334743, 50.980061>,  <37.306973, 37.661152, 50.765575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393307, 37.334743, 50.980061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031388, 0.554667, 0.831480,
		-0.975924, -0.162636, 0.145332,
		0.215840, -0.816023, 0.536208,
		37.458057, 37.089935, 51.140923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948170, 37.777943, 51.394302>,  <37.306973, 37.661152, 50.765575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948170, 37.777943, 51.394302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213974, 37.496571, 51.495186>,  <37.373459, 37.327747, 51.555717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213974, 37.496571, 51.495186>,  <36.948170, 37.777943, 51.394302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213974, 37.496571, 51.495186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094167, 0.413643, 0.905556,
		-0.741318, -0.578006, 0.341111,
		0.664515, -0.703426, 0.252212,
		37.413330, 37.285542, 51.570850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842701, 37.714249, 52.077835>,  <36.948170, 37.777943, 51.394302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842701, 37.714249, 52.077835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183876, 37.506069, 52.061680>,  <37.388580, 37.381161, 52.051987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183876, 37.506069, 52.061680>,  <36.842701, 37.714249, 52.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183876, 37.506069, 52.061680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235528, 0.314642, 0.919525,
		-0.465863, -0.793807, 0.390951,
		0.852935, -0.520453, -0.040384,
		37.439758, 37.349934, 52.049564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988331, 37.314667, 52.694679>,  <36.842701, 37.714249, 52.077835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988331, 37.314667, 52.694679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336662, 37.417671, 52.527180>,  <37.545662, 37.479473, 52.426682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336662, 37.417671, 52.527180>,  <36.988331, 37.314667, 52.694679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336662, 37.417671, 52.527180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244464, 0.512174, 0.823356,
		0.426494, -0.819369, 0.383063,
		0.870827, 0.257511, -0.418746,
		37.597912, 37.494926, 52.401554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425488, 37.311989, 53.249031>,  <36.988331, 37.314667, 52.694679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425488, 37.311989, 53.249031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648319, 37.523827, 52.993160>,  <37.782021, 37.650928, 52.839638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648319, 37.523827, 52.993160>,  <37.425488, 37.311989, 53.249031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648319, 37.523827, 52.993160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223154, 0.646483, 0.729563,
		0.799914, -0.549173, 0.241963,
		0.557082, 0.529593, -0.639681,
		37.815445, 37.682705, 52.801254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081890, 37.435112, 53.609318>,  <37.425488, 37.311989, 53.249031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081890, 37.435112, 53.609318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081619, 37.722553, 53.331150>,  <38.081459, 37.895020, 53.164249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081619, 37.722553, 53.331150>,  <38.081890, 37.435112, 53.609318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081619, 37.722553, 53.331150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255843, 0.672395, 0.694571,
		0.966718, -0.177449, -0.184303,
		-0.000673, 0.718608, -0.695415,
		38.081417, 37.938137, 53.122524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679199, 37.774445, 53.742203>,  <38.081890, 37.435112, 53.609318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679199, 37.774445, 53.742203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451180, 38.017296, 53.520779>,  <38.314365, 38.163006, 53.387924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451180, 38.017296, 53.520779>,  <38.679199, 37.774445, 53.742203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451180, 38.017296, 53.520779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279728, 0.776924, 0.564041,
		0.772523, 0.166686, -0.612719,
		-0.570053, 0.607129, -0.553565,
		38.280163, 38.199436, 53.354710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162300, 38.322517, 53.693546>,  <38.679199, 37.774445, 53.742203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162300, 38.322517, 53.693546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791943, 38.450985, 53.613972>,  <38.569729, 38.528065, 53.566227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791943, 38.450985, 53.613972>,  <39.162300, 38.322517, 53.693546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791943, 38.450985, 53.613972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083355, 0.687274, 0.721600,
		0.368483, 0.651540, -0.663111,
		-0.925890, 0.321171, -0.198939,
		38.514175, 38.547337, 53.554291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265789, 39.019016, 53.732101>,  <39.162300, 38.322517, 53.693546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265789, 39.019016, 53.732101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879475, 38.928082, 53.782017>,  <38.647686, 38.873520, 53.811966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879475, 38.928082, 53.782017>,  <39.265789, 39.019016, 53.732101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879475, 38.928082, 53.782017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086418, 0.735802, 0.671660,
		-0.244515, 0.637897, -0.730274,
		-0.965787, -0.227340, 0.124789,
		38.589737, 38.859879, 53.819454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924664, 39.686672, 53.619320>,  <39.265789, 39.019016, 53.732101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924664, 39.686672, 53.619320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704571, 39.452209, 53.857197>,  <38.572514, 39.311531, 53.999924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704571, 39.452209, 53.857197>,  <38.924664, 39.686672, 53.619320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704571, 39.452209, 53.857197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076934, 0.744761, 0.662882,
		-0.831458, 0.318989, -0.454889,
		-0.550235, -0.586155, 0.594696,
		38.539501, 39.276363, 54.035606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592392, 40.432358, 53.617542>,  <38.924664, 39.686672, 53.619320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592392, 40.432358, 53.617542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740089, 40.778320, 53.481544>,  <38.828709, 40.985897, 53.399948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740089, 40.778320, 53.481544>,  <38.592392, 40.432358, 53.617542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740089, 40.778320, 53.481544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099774, -0.326836, -0.939800,
		-0.923960, 0.380940, -0.034388,
		0.369247, 0.864906, -0.339991,
		38.850864, 41.037792, 53.379547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180603, 40.752346, 53.162796>,  <38.592392, 40.432358, 53.617542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180603, 40.752346, 53.162796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522171, 40.938942, 53.070538>,  <38.727112, 41.050900, 53.015182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522171, 40.938942, 53.070538>,  <38.180603, 40.752346, 53.162796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522171, 40.938942, 53.070538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134689, -0.229995, -0.963826,
		-0.502665, 0.854101, -0.133567,
		0.853925, 0.466491, -0.230648,
		38.778347, 41.078888, 53.001343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976341, 41.034760, 52.517860>,  <38.180603, 40.752346, 53.162796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976341, 41.034760, 52.517860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374561, 41.071835, 52.524757>,  <38.613491, 41.094078, 52.528896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374561, 41.071835, 52.524757>,  <37.976341, 41.034760, 52.517860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374561, 41.071835, 52.524757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028178, -0.117974, -0.992617,
		-0.089965, 0.988682, -0.120060,
		0.995546, 0.092683, 0.017246,
		38.673225, 41.099640, 52.529930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200302, 41.472118, 51.921291>,  <37.976341, 41.034760, 52.517860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200302, 41.472118, 51.921291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527088, 41.264801, 52.022438>,  <38.723160, 41.140411, 52.083126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527088, 41.264801, 52.022438>,  <38.200302, 41.472118, 51.921291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527088, 41.264801, 52.022438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195264, -0.163973, -0.966946,
		0.542621, 0.839338, -0.032757,
		0.816966, -0.518289, 0.252868,
		38.772179, 41.109314, 52.098297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685745, 41.646584, 51.394073>,  <38.200302, 41.472118, 51.921291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685745, 41.646584, 51.394073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808414, 41.318264, 51.586838>,  <38.882015, 41.121273, 51.702496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808414, 41.318264, 51.586838>,  <38.685745, 41.646584, 51.394073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808414, 41.318264, 51.586838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205313, -0.437338, -0.875546,
		0.929406, 0.367452, 0.034400,
		0.306677, -0.820801, 0.481908,
		38.900417, 41.072025, 51.731411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237766, 41.458012, 50.980354>,  <38.685745, 41.646584, 51.394073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237766, 41.458012, 50.980354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150154, 41.121330, 51.177761>,  <39.097588, 40.919319, 51.296204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150154, 41.121330, 51.177761>,  <39.237766, 41.458012, 50.980354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150154, 41.121330, 51.177761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287689, -0.539022, -0.791638,
		0.932341, -0.031417, 0.360214,
		-0.219034, -0.841706, 0.493514,
		39.084442, 40.868820, 51.325817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917458, 40.996670, 51.022121>,  <39.237766, 41.458012, 50.980354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917458, 40.996670, 51.022121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560829, 40.815651, 51.029163>,  <39.346851, 40.707039, 51.033390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560829, 40.815651, 51.029163>,  <39.917458, 40.996670, 51.022121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560829, 40.815651, 51.029163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303452, -0.625787, -0.718546,
		0.336194, -0.635289, 0.695257,
		-0.891566, -0.452548, 0.017606,
		39.293358, 40.679886, 51.034447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051178, 40.298855, 50.724258>,  <39.917458, 40.996670, 51.022121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051178, 40.298855, 50.724258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659538, 40.233051, 50.772106>,  <39.424557, 40.193569, 50.800816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659538, 40.233051, 50.772106>,  <40.051178, 40.298855, 50.724258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659538, 40.233051, 50.772106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031113, -0.702309, -0.711192,
		0.201004, -0.692604, 0.692747,
		-0.979096, -0.164506, 0.119618,
		39.365810, 40.183701, 50.807991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962463, 39.685570, 50.921452>,  <40.051178, 40.298855, 50.724258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962463, 39.685570, 50.921452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631779, 39.793659, 50.724060>,  <39.433369, 39.858513, 50.605625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631779, 39.793659, 50.724060>,  <39.962463, 39.685570, 50.921452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631779, 39.793659, 50.724060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160599, -0.727269, -0.667299,
		-0.539211, -0.630919, 0.557847,
		-0.826716, 0.270226, -0.493476,
		39.383762, 39.874725, 50.576015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553875, 39.113594, 50.685932>,  <39.962463, 39.685570, 50.921452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553875, 39.113594, 50.685932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432678, 39.389454, 50.422852>,  <39.359959, 39.554970, 50.265003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432678, 39.389454, 50.422852>,  <39.553875, 39.113594, 50.685932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432678, 39.389454, 50.422852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040557, -0.680190, -0.731913,
		-0.952129, -0.248439, 0.178123,
		-0.302993, 0.689652, -0.657705,
		39.341782, 39.596348, 50.225540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220310, 38.765270, 50.249123>,  <39.553875, 39.113594, 50.685932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220310, 38.765270, 50.249123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297993, 39.096992, 50.039536>,  <39.344601, 39.296024, 49.913784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297993, 39.096992, 50.039536>,  <39.220310, 38.765270, 50.249123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297993, 39.096992, 50.039536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033034, -0.539360, -0.841427,
		-0.980404, 0.146102, -0.132143,
		0.194207, 0.829304, -0.523964,
		39.356255, 39.345783, 49.882347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809612, 38.705250, 49.720654>,  <39.220310, 38.765270, 50.249123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809612, 38.705250, 49.720654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025703, 39.011559, 49.581085>,  <39.155357, 39.195343, 49.497345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025703, 39.011559, 49.581085>,  <38.809612, 38.705250, 49.720654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025703, 39.011559, 49.581085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085990, -0.362228, -0.928114,
		-0.837111, 0.531401, -0.129839,
		0.540232, 0.765770, -0.348920,
		39.187775, 39.241291, 49.476410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465668, 39.022793, 49.145943>,  <38.809612, 38.705250, 49.720654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465668, 39.022793, 49.145943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841816, 39.140820, 49.078251>,  <39.067505, 39.211636, 49.037636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841816, 39.140820, 49.078251>,  <38.465668, 39.022793, 49.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841816, 39.140820, 49.078251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027048, -0.431077, -0.901910,
		-0.339073, 0.852708, -0.397391,
		0.940371, 0.295064, -0.169231,
		39.123928, 39.229340, 49.027481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455280, 39.479286, 48.563126>,  <38.465668, 39.022793, 49.145943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455280, 39.479286, 48.563126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812927, 39.306557, 48.610580>,  <39.027515, 39.202919, 48.639053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812927, 39.306557, 48.610580>,  <38.455280, 39.479286, 48.563126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812927, 39.306557, 48.610580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009420, -0.282986, -0.959078,
		0.447727, 0.856414, -0.257092,
		0.894121, -0.431827, 0.118633,
		39.081165, 39.177010, 48.646172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837124, 39.668819, 47.896465>,  <38.455280, 39.479286, 48.563126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837124, 39.668819, 47.896465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012646, 39.353737, 48.069424>,  <39.117958, 39.164688, 48.173199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012646, 39.353737, 48.069424>,  <38.837124, 39.668819, 47.896465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012646, 39.353737, 48.069424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064488, -0.452351, -0.889505,
		0.896266, 0.418203, -0.147696,
		0.438805, -0.787709, 0.432396,
		39.144287, 39.117424, 48.199142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325905, 39.476162, 47.446117>,  <38.837124, 39.668819, 47.896465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325905, 39.476162, 47.446117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292099, 39.162228, 47.691681>,  <39.271816, 38.973866, 47.839020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292099, 39.162228, 47.691681>,  <39.325905, 39.476162, 47.446117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292099, 39.162228, 47.691681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074142, -0.619358, -0.781600,
		0.993660, -0.020542, 0.110535,
		-0.084516, -0.784840, 0.613908,
		39.266743, 38.926777, 47.875854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816929, 38.982609, 47.182747>,  <39.325905, 39.476162, 47.446117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816929, 38.982609, 47.182747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562115, 38.764404, 47.400593>,  <39.409225, 38.633484, 47.531300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562115, 38.764404, 47.400593>,  <39.816929, 38.982609, 47.182747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562115, 38.764404, 47.400593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105170, -0.638410, -0.762478,
		0.763623, -0.543005, 0.349321,
		-0.637039, -0.545507, 0.544613,
		39.371002, 38.600754, 47.563976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046608, 38.261974, 47.194889>,  <39.816929, 38.982609, 47.182747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046608, 38.261974, 47.194889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654884, 38.266182, 47.275719>,  <39.419849, 38.268707, 47.324215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654884, 38.266182, 47.275719>,  <40.046608, 38.261974, 47.194889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654884, 38.266182, 47.275719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143755, -0.738972, -0.658222,
		0.142405, -0.673654, 0.725197,
		-0.979314, 0.010516, 0.202074,
		39.361092, 38.269337, 47.336342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792229, 37.591831, 47.190487>,  <40.046608, 38.261974, 47.194889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792229, 37.591831, 47.190487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490456, 37.841618, 47.109612>,  <39.309391, 37.991489, 47.061089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490456, 37.841618, 47.109612>,  <39.792229, 37.591831, 47.190487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490456, 37.841618, 47.109612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250594, -0.558724, -0.790589,
		-0.606659, -0.545779, 0.578005,
		-0.754432, 0.624462, -0.202186,
		39.264126, 38.028957, 47.048954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279984, 37.073997, 46.939316>,  <39.792229, 37.591831, 47.190487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279984, 37.073997, 46.939316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148960, 37.432743, 46.820431>,  <39.070347, 37.647991, 46.749100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148960, 37.432743, 46.820431>,  <39.279984, 37.073997, 46.939316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148960, 37.432743, 46.820431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352195, -0.407795, -0.842414,
		-0.876735, -0.171264, 0.449449,
		-0.327558, 0.896868, -0.297210,
		39.050694, 37.701805, 46.731266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746719, 36.966557, 46.472672>,  <39.279984, 37.073997, 46.939316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746719, 36.966557, 46.472672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819069, 37.354568, 46.407768>,  <38.862480, 37.587376, 46.368828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819069, 37.354568, 46.407768>,  <38.746719, 36.966557, 46.472672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819069, 37.354568, 46.407768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321540, -0.097588, -0.941854,
		-0.929460, 0.222533, 0.294252,
		0.180878, 0.970029, -0.162258,
		38.873333, 37.645576, 46.359093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190338, 37.125412, 45.957401>,  <38.746719, 36.966557, 46.472672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190338, 37.125412, 45.957401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488892, 37.389622, 45.924847>,  <38.668022, 37.548145, 45.905315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488892, 37.389622, 45.924847>,  <38.190338, 37.125412, 45.957401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488892, 37.389622, 45.924847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176541, 0.078597, -0.981150,
		-0.641674, 0.746682, 0.175272,
		0.746383, 0.660522, -0.081387,
		38.712807, 37.587780, 45.900429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962467, 37.623672, 45.514774>,  <38.190338, 37.125412, 45.957401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962467, 37.623672, 45.514774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353390, 37.706196, 45.495590>,  <38.587944, 37.755711, 45.484081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353390, 37.706196, 45.495590>,  <37.962467, 37.623672, 45.514774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353390, 37.706196, 45.495590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104297, 0.271667, -0.956723,
		-0.184354, 0.940017, 0.287021,
		0.977311, 0.206311, -0.047958,
		38.646584, 37.768089, 45.481201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038586, 38.221760, 45.038849>,  <37.962467, 37.623672, 45.514774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038586, 38.221760, 45.038849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391121, 38.035149, 45.068787>,  <38.602642, 37.923183, 45.086750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391121, 38.035149, 45.068787>,  <38.038586, 38.221760, 45.038849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391121, 38.035149, 45.068787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131195, 0.089458, -0.987312,
		0.453912, 0.879972, 0.140049,
		0.881335, -0.466527, 0.074841,
		38.655521, 37.895191, 45.091240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459896, 38.618752, 44.683796>,  <38.038586, 38.221760, 45.038849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459896, 38.618752, 44.683796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637970, 38.261009, 44.666229>,  <38.744816, 38.046364, 44.655689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637970, 38.261009, 44.666229>,  <38.459896, 38.618752, 44.683796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637970, 38.261009, 44.666229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025902, 0.036164, -0.999010,
		0.895064, 0.445883, -0.007066,
		0.445186, -0.894361, -0.043918,
		38.771526, 37.992702, 44.653053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102188, 38.689068, 44.391613>,  <38.459896, 38.618752, 44.683796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102188, 38.689068, 44.391613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043636, 38.297817, 44.332504>,  <39.008507, 38.063065, 44.297039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043636, 38.297817, 44.332504>,  <39.102188, 38.689068, 44.391613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043636, 38.297817, 44.332504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103225, 0.133459, -0.985664,
		0.983829, -0.159530, 0.081432,
		-0.146375, -0.978130, -0.147768,
		38.999725, 38.004379, 44.288174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744610, 38.339058, 44.045128>,  <39.102188, 38.689068, 44.391613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744610, 38.339058, 44.045128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479431, 38.046825, 43.979702>,  <39.320324, 37.871487, 43.940445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479431, 38.046825, 43.979702>,  <39.744610, 38.339058, 44.045128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479431, 38.046825, 43.979702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255038, -0.014975, -0.966815,
		0.703885, -0.682664, 0.196253,
		-0.662948, -0.730579, -0.163565,
		39.280548, 37.827652, 43.930634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130569, 37.744408, 43.712162>,  <39.744610, 38.339058, 44.045128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130569, 37.744408, 43.712162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743198, 37.725800, 43.614189>,  <39.510777, 37.714634, 43.555405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743198, 37.725800, 43.614189>,  <40.130569, 37.744408, 43.712162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743198, 37.725800, 43.614189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249304, -0.176121, -0.952276,
		0.001161, -0.983269, 0.182157,
		-0.968424, -0.046518, -0.244928,
		39.452671, 37.711845, 43.540710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075245, 37.077778, 43.404003>,  <40.130569, 37.744408, 43.712162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075245, 37.077778, 43.404003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779896, 37.310623, 43.267799>,  <39.602684, 37.450329, 43.186077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779896, 37.310623, 43.267799>,  <40.075245, 37.077778, 43.404003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779896, 37.310623, 43.267799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295755, -0.174261, -0.939235,
		-0.606078, -0.794215, -0.043493,
		-0.738375, 0.582112, -0.340509,
		39.558384, 37.485256, 43.165646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646629, 36.698120, 42.917622>,  <40.075245, 37.077778, 43.404003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646629, 36.698120, 42.917622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584660, 37.080502, 42.817894>,  <39.547478, 37.309929, 42.758057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584660, 37.080502, 42.817894>,  <39.646629, 36.698120, 42.917622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584660, 37.080502, 42.817894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353126, -0.182112, -0.917680,
		-0.922660, -0.230209, -0.309358,
		-0.154920, 0.955949, -0.249320,
		39.538185, 37.367287, 42.743099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341450, 36.688702, 42.167755>,  <39.646629, 36.698120, 42.917622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341450, 36.688702, 42.167755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466434, 37.061775, 42.239830>,  <39.541424, 37.285618, 42.283077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466434, 37.061775, 42.239830>,  <39.341450, 36.688702, 42.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466434, 37.061775, 42.239830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363804, 0.057734, -0.929685,
		-0.877505, 0.356044, -0.321275,
		0.312461, 0.932684, 0.180192,
		39.560173, 37.341579, 42.293888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083836, 37.069775, 41.552956>,  <39.341450, 36.688702, 42.167755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083836, 37.069775, 41.552956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339863, 37.344154, 41.691399>,  <39.493477, 37.508781, 41.774464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339863, 37.344154, 41.691399>,  <39.083836, 37.069775, 41.552956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339863, 37.344154, 41.691399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339279, 0.151829, -0.928352,
		-0.689353, 0.711632, -0.135548,
		0.640065, 0.685950, 0.346105,
		39.531883, 37.549938, 41.795231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056709, 37.813179, 41.207623>,  <39.083836, 37.069775, 41.552956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056709, 37.813179, 41.207623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434086, 37.778030, 41.335499>,  <39.660511, 37.756939, 41.412224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434086, 37.778030, 41.335499>,  <39.056709, 37.813179, 41.207623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434086, 37.778030, 41.335499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330761, 0.315803, -0.889306,
		-0.022810, 0.944747, 0.327007,
		0.943439, -0.087875, 0.319689,
		39.717117, 37.751667, 41.431404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366951, 38.336884, 41.058865>,  <39.056709, 37.813179, 41.207623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366951, 38.336884, 41.058865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698734, 38.118164, 41.104485>,  <39.897804, 37.986931, 41.131855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698734, 38.118164, 41.104485>,  <39.366951, 38.336884, 41.058865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698734, 38.118164, 41.104485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311209, 0.282850, -0.907273,
		0.463836, 0.788041, 0.404782,
		0.829461, -0.546797, 0.114050,
		39.947571, 37.954124, 41.138699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912739, 38.743652, 40.860222>,  <39.366951, 38.336884, 41.058865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912739, 38.743652, 40.860222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037849, 38.365170, 40.827068>,  <40.112915, 38.138081, 40.807178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037849, 38.365170, 40.827068>,  <39.912739, 38.743652, 40.860222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037849, 38.365170, 40.827068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439815, 0.221618, -0.870315,
		0.841864, 0.235758, 0.485471,
		0.312773, -0.946205, -0.082882,
		40.131680, 38.081306, 40.802204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631977, 38.809757, 40.570721>,  <39.912739, 38.743652, 40.860222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631977, 38.809757, 40.570721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505276, 38.442276, 40.476353>,  <40.429256, 38.221786, 40.419731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505276, 38.442276, 40.476353>,  <40.631977, 38.809757, 40.570721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505276, 38.442276, 40.476353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568932, 0.014989, -0.822248,
		0.758936, -0.394671, 0.517930,
		-0.316754, -0.918700, -0.235916,
		40.410248, 38.166664, 40.405579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183865, 38.588440, 40.312824>,  <40.631977, 38.809757, 40.570721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183865, 38.588440, 40.312824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947174, 38.293617, 40.182224>,  <40.805161, 38.116722, 40.103863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947174, 38.293617, 40.182224>,  <41.183865, 38.588440, 40.312824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947174, 38.293617, 40.182224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531941, -0.052672, -0.845142,
		0.605720, -0.673775, 0.423238,
		-0.591729, -0.737056, -0.326504,
		40.769657, 38.072502, 40.084274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635731, 38.083656, 40.113068>,  <41.183865, 38.588440, 40.312824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635731, 38.083656, 40.113068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288010, 38.031864, 39.922260>,  <41.079376, 38.000790, 39.807774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288010, 38.031864, 39.922260>,  <41.635731, 38.083656, 40.113068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288010, 38.031864, 39.922260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471663, 0.071299, -0.878891,
		0.147808, -0.989016, -0.000911,
		-0.869302, -0.129477, -0.477021,
		41.027218, 37.993023, 39.779156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538551, 37.480629, 39.619015>,  <41.635731, 38.083656, 40.113068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538551, 37.480629, 39.619015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321995, 37.800045, 39.513771>,  <41.192059, 37.991695, 39.450626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321995, 37.800045, 39.513771>,  <41.538551, 37.480629, 39.619015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321995, 37.800045, 39.513771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555812, 0.105125, -0.824634,
		-0.630844, -0.592691, -0.500752,
		-0.541395, 0.798540, -0.263108,
		41.159576, 38.039608, 39.434837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263874, 37.449230, 38.903519>,  <41.538551, 37.480629, 39.619015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263874, 37.449230, 38.903519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307343, 37.834148, 39.003258>,  <41.333424, 38.065102, 39.063099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307343, 37.834148, 39.003258>,  <41.263874, 37.449230, 38.903519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307343, 37.834148, 39.003258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455096, 0.174842, -0.873108,
		-0.883786, 0.208357, -0.418938,
		0.108671, 0.962298, 0.249345,
		41.339943, 38.122837, 39.078060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939274, 37.938698, 38.375221>,  <41.263874, 37.449230, 38.903519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939274, 37.938698, 38.375221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233055, 38.127243, 38.570526>,  <41.409325, 38.240368, 38.687710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233055, 38.127243, 38.570526>,  <40.939274, 37.938698, 38.375221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233055, 38.127243, 38.570526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509161, 0.092970, -0.855635,
		-0.448707, 0.877026, -0.171717,
		0.734450, 0.471361, 0.488264,
		41.453392, 38.268650, 38.717007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188431, 38.569275, 38.032665>,  <40.939274, 37.938698, 38.375221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188431, 38.569275, 38.032665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500465, 38.414623, 38.229435>,  <41.687687, 38.321835, 38.347496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500465, 38.414623, 38.229435>,  <41.188431, 38.569275, 38.032665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500465, 38.414623, 38.229435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580138, 0.152515, -0.800111,
		0.234318, 0.909538, 0.343271,
		0.780086, -0.386625, 0.491921,
		41.734489, 38.298637, 38.377010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731037, 39.013332, 38.203819>,  <41.188431, 38.569275, 38.032665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731037, 39.013332, 38.203819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888214, 38.649860, 38.147388>,  <41.982521, 38.431778, 38.113529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888214, 38.649860, 38.147388>,  <41.731037, 39.013332, 38.203819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888214, 38.649860, 38.147388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683845, 0.391325, -0.615809,
		0.614778, 0.145503, 0.775162,
		0.392942, -0.908677, -0.141076,
		42.006096, 38.377258, 38.105064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488708, 38.958855, 38.463375>,  <41.731037, 39.013332, 38.203819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488708, 38.958855, 38.463375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408207, 38.737099, 38.140354>,  <42.359905, 38.604046, 37.946541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408207, 38.737099, 38.140354>,  <42.488708, 38.958855, 38.463375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408207, 38.737099, 38.140354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676071, 0.517956, -0.524070,
		0.708818, -0.651437, 0.270567,
		-0.201257, -0.554393, -0.807554,
		42.347828, 38.570782, 37.898087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046104, 38.652233, 38.151073>,  <42.488708, 38.958855, 38.463375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046104, 38.652233, 38.151073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756798, 38.745037, 37.890903>,  <42.583214, 38.800720, 37.734802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756798, 38.745037, 37.890903>,  <43.046104, 38.652233, 38.151073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756798, 38.745037, 37.890903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535009, 0.783788, -0.315344,
		0.436631, -0.576061, -0.691019,
		-0.723270, 0.232013, -0.650424,
		42.539818, 38.814640, 37.695778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130409, 38.666557, 37.312630>,  <43.046104, 38.652233, 38.151073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130409, 38.666557, 37.312630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882210, 38.956879, 37.431416>,  <42.733288, 39.131073, 37.502689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882210, 38.956879, 37.431416>,  <43.130409, 38.666557, 37.312630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882210, 38.956879, 37.431416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450405, 0.639838, -0.622691,
		-0.641960, -0.252625, -0.723925,
		-0.620502, 0.725802, 0.296967,
		42.696060, 39.174618, 37.520504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722530, 38.301926, 37.739166>,  <43.130409, 38.666557, 37.312630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722530, 38.301926, 37.739166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988041, 38.051365, 37.575695>,  <44.147346, 37.901028, 37.477612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988041, 38.051365, 37.575695>,  <43.722530, 38.301926, 37.739166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988041, 38.051365, 37.575695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243268, -0.335887, 0.909946,
		-0.707266, -0.703417, -0.070569,
		0.663774, -0.626406, -0.408680,
		44.187172, 37.863441, 37.453091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661774, 37.682346, 38.095345>,  <43.722530, 38.301926, 37.739166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661774, 37.682346, 38.095345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012753, 37.609886, 37.917683>,  <44.223339, 37.566410, 37.811085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012753, 37.609886, 37.917683>,  <43.661774, 37.682346, 38.095345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012753, 37.609886, 37.917683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244230, -0.628216, 0.738712,
		-0.412845, -0.756656, -0.506983,
		0.877445, -0.181153, -0.444155,
		44.275986, 37.555542, 37.784435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729843, 36.930660, 38.081547>,  <43.661774, 37.682346, 38.095345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729843, 36.930660, 38.081547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094650, 37.087692, 38.034042>,  <44.313534, 37.181911, 38.005539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094650, 37.087692, 38.034042>,  <43.729843, 36.930660, 38.081547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094650, 37.087692, 38.034042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386445, -0.725469, 0.569522,
		0.137423, -0.565310, -0.813351,
		0.912017, 0.392581, -0.118765,
		44.368256, 37.205467, 37.998413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153244, 36.404999, 38.330711>,  <43.729843, 36.930660, 38.081547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153244, 36.404999, 38.330711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407867, 36.711861, 38.299057>,  <44.560642, 36.895977, 38.280064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407867, 36.711861, 38.299057>,  <44.153244, 36.404999, 38.330711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407867, 36.711861, 38.299057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634293, -0.462400, 0.619564,
		0.438709, -0.444585, -0.780947,
		0.636558, 0.767157, -0.079138,
		44.598835, 36.942009, 38.275314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753292, 36.118847, 38.088566>,  <44.153244, 36.404999, 38.330711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753292, 36.118847, 38.088566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809559, 36.445717, 38.312153>,  <44.843319, 36.641838, 38.446304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809559, 36.445717, 38.312153>,  <44.753292, 36.118847, 38.088566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809559, 36.445717, 38.312153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433290, -0.558450, 0.707384,
		0.890209, 0.142689, -0.432628,
		0.140666, 0.817174, 0.558963,
		44.851757, 36.690868, 38.479843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445530, 36.012665, 38.396217>,  <44.753292, 36.118847, 38.088566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445530, 36.012665, 38.396217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273106, 36.286407, 38.631451>,  <45.169651, 36.450653, 38.772591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273106, 36.286407, 38.631451>,  <45.445530, 36.012665, 38.396217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273106, 36.286407, 38.631451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224583, -0.549857, 0.804500,
		0.873928, 0.478861, 0.083325,
		-0.431060, 0.684361, 0.588079,
		45.143787, 36.491714, 38.807873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848087, 36.035297, 39.022346>,  <45.445530, 36.012665, 38.396217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848087, 36.035297, 39.022346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520462, 36.220051, 39.158463>,  <45.323887, 36.330902, 39.240131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520462, 36.220051, 39.158463>,  <45.848087, 36.035297, 39.022346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520462, 36.220051, 39.158463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026972, -0.561494, 0.827041,
		0.573071, 0.686576, 0.447440,
		-0.819062, 0.461885, 0.340294,
		45.274742, 36.358616, 39.260551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037880, 36.236290, 39.676105>,  <45.848087, 36.035297, 39.022346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037880, 36.236290, 39.676105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638844, 36.208523, 39.675846>,  <45.399422, 36.191864, 39.675690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638844, 36.208523, 39.675846>,  <46.037880, 36.236290, 39.676105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638844, 36.208523, 39.675846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039881, -0.580665, 0.813165,
		-0.056821, 0.811178, 0.582032,
		-0.997588, -0.069417, -0.000644,
		45.339569, 36.187698, 39.675652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907524, 36.272198, 40.391068>,  <46.037880, 36.236290, 39.676105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907524, 36.272198, 40.391068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578316, 36.114902, 40.227119>,  <45.380791, 36.020527, 40.128750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578316, 36.114902, 40.227119>,  <45.907524, 36.272198, 40.391068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578316, 36.114902, 40.227119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157760, -0.534956, 0.830021,
		-0.545659, 0.747789, 0.378244,
		-0.823024, -0.393237, -0.409875,
		45.331409, 35.996933, 40.104156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600773, 36.121445, 40.994667>,  <45.907524, 36.272198, 40.391068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600773, 36.121445, 40.994667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372917, 35.934967, 40.723915>,  <45.236202, 35.823082, 40.561462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372917, 35.934967, 40.723915>,  <45.600773, 36.121445, 40.994667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372917, 35.934967, 40.723915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489387, -0.469261, 0.735047,
		-0.660311, 0.749971, 0.039160,
		-0.569640, -0.466195, -0.676884,
		45.202026, 35.795109, 40.520851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040718, 36.006542, 41.361317>,  <45.600773, 36.121445, 40.994667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040718, 36.006542, 41.361317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002888, 35.762756, 41.046455>,  <44.980190, 35.616486, 40.857540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002888, 35.762756, 41.046455>,  <45.040718, 36.006542, 41.361317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002888, 35.762756, 41.046455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255020, -0.749478, 0.610940,
		-0.962299, 0.258521, -0.084542,
		-0.094578, -0.609467, -0.787150,
		44.974514, 35.579918, 40.810310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333878, 35.651459, 41.371815>,  <45.040718, 36.006542, 41.361317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333878, 35.651459, 41.371815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594620, 35.434101, 41.160229>,  <44.751064, 35.303684, 41.033279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594620, 35.434101, 41.160229>,  <44.333878, 35.651459, 41.371815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594620, 35.434101, 41.160229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197659, -0.795160, 0.573281,
		-0.732130, -0.269143, -0.625738,
		0.651856, -0.543399, -0.528962,
		44.790176, 35.271080, 41.001541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067928, 34.986050, 41.378944>,  <44.333878, 35.651459, 41.371815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067928, 34.986050, 41.378944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438950, 34.877144, 41.276558>,  <44.661564, 34.811802, 41.215126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438950, 34.877144, 41.276558>,  <44.067928, 34.986050, 41.378944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438950, 34.877144, 41.276558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152294, -0.900916, 0.406396,
		-0.341249, -0.337972, -0.877111,
		0.927554, -0.272261, -0.255965,
		44.717216, 34.795467, 41.199768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970592, 34.262234, 41.202255>,  <44.067928, 34.986050, 41.378944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970592, 34.262234, 41.202255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360538, 34.322636, 41.267776>,  <44.594505, 34.358875, 41.307087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360538, 34.322636, 41.267776>,  <43.970592, 34.262234, 41.202255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360538, 34.322636, 41.267776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063914, -0.893901, 0.443685,
		0.213419, -0.422066, -0.881086,
		0.974868, 0.151004, 0.163799,
		44.653000, 34.367935, 41.316917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273582, 33.575253, 41.006222>,  <43.970592, 34.262234, 41.202255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273582, 33.575253, 41.006222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532715, 33.762062, 41.246956>,  <44.688194, 33.874149, 41.391396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532715, 33.762062, 41.246956>,  <44.273582, 33.575253, 41.006222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532715, 33.762062, 41.246956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014189, -0.797293, 0.603425,
		0.761651, -0.382379, -0.523138,
		0.647832, 0.467023, 0.601834,
		44.727066, 33.902168, 41.427505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751186, 33.038719, 41.126480>,  <44.273582, 33.575253, 41.006222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751186, 33.038719, 41.126480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797215, 33.310352, 41.416473>,  <44.824833, 33.473331, 41.590469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797215, 33.310352, 41.416473>,  <44.751186, 33.038719, 41.126480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797215, 33.310352, 41.416473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058198, -0.723969, 0.687374,
		0.991651, -0.121291, -0.043787,
		0.115073, 0.679086, 0.724983,
		44.831738, 33.514080, 41.633968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279289, 32.829926, 41.521099>,  <44.751186, 33.038719, 41.126480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279289, 32.829926, 41.521099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056114, 33.042576, 41.775997>,  <44.922211, 33.170166, 41.928936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056114, 33.042576, 41.775997>,  <45.279289, 32.829926, 41.521099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056114, 33.042576, 41.775997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142119, -0.695324, 0.704505,
		0.817626, 0.483632, 0.312390,
		-0.557933, 0.531625, 0.637248,
		44.888733, 33.202065, 41.967171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534988, 32.617012, 42.210899>,  <45.279289, 32.829926, 41.521099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534988, 32.617012, 42.210899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187244, 32.795033, 42.296829>,  <44.978600, 32.901844, 42.348385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187244, 32.795033, 42.296829>,  <45.534988, 32.617012, 42.210899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187244, 32.795033, 42.296829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171531, -0.679423, 0.713415,
		0.463461, 0.583364, 0.667001,
		-0.869357, 0.445051, 0.214821,
		44.926437, 32.928547, 42.361275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574734, 32.724331, 42.871033>,  <45.534988, 32.617012, 42.210899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574734, 32.724331, 42.871033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.179134, 32.733696, 42.812603>,  <44.941776, 32.739315, 42.777546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.179134, 32.733696, 42.812603>,  <45.574734, 32.724331, 42.871033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.179134, 32.733696, 42.812603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113186, -0.755556, 0.645232,
		-0.095263, 0.654666, 0.749892,
		-0.988997, 0.023410, -0.146075,
		44.882435, 32.740719, 42.768780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321316, 32.498146, 43.446770>,  <45.574734, 32.724331, 42.871033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321316, 32.498146, 43.446770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987740, 32.446201, 43.232224>,  <44.787594, 32.415035, 43.103497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987740, 32.446201, 43.232224>,  <45.321316, 32.498146, 43.446770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987740, 32.446201, 43.232224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186229, -0.848683, 0.495031,
		-0.519486, 0.512712, 0.683565,
		-0.833938, -0.129862, -0.536361,
		44.737556, 32.407242, 43.071316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728245, 32.407768, 43.892643>,  <45.321316, 32.498146, 43.446770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728245, 32.407768, 43.892643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660027, 32.226860, 43.542473>,  <44.619095, 32.118317, 43.332371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660027, 32.226860, 43.542473>,  <44.728245, 32.407768, 43.892643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660027, 32.226860, 43.542473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190151, -0.856635, 0.479604,
		-0.966828, 0.248257, 0.060096,
		-0.170545, -0.452267, -0.875425,
		44.608864, 32.091179, 43.279846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209312, 31.915073, 43.919178>,  <44.728245, 32.407768, 43.892643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209312, 31.915073, 43.919178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358330, 31.790279, 43.569576>,  <44.447739, 31.715403, 43.359818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358330, 31.790279, 43.569576>,  <44.209312, 31.915073, 43.919178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358330, 31.790279, 43.569576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148198, -0.949710, 0.275841,
		-0.916106, 0.026763, -0.400042,
		0.372541, -0.311985, -0.874002,
		44.470093, 31.696684, 43.307377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681416, 31.449905, 43.716335>,  <44.209312, 31.915073, 43.919178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681416, 31.449905, 43.716335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035595, 31.368700, 43.549114>,  <44.248104, 31.319977, 43.448780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035595, 31.368700, 43.549114>,  <43.681416, 31.449905, 43.716335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035595, 31.368700, 43.549114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014429, -0.887101, 0.461350,
		-0.464513, -0.414533, -0.782553,
		0.885448, -0.203012, -0.418051,
		44.301231, 31.307796, 43.423698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713799, 30.749987, 43.473423>,  <43.681416, 31.449905, 43.716335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713799, 30.749987, 43.473423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072792, 30.897001, 43.570946>,  <44.288189, 30.985210, 43.629459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072792, 30.897001, 43.570946>,  <43.713799, 30.749987, 43.473423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072792, 30.897001, 43.570946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078570, -0.677178, 0.731612,
		0.433997, -0.637452, -0.636632,
		0.897481, 0.367538, 0.243809,
		44.342037, 31.007263, 43.644089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091141, 31.008282, 43.216080>,  <43.713799, 30.749987, 43.473423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091141, 31.008282, 43.216080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944004, 31.266224, 42.948093>,  <42.855721, 31.420990, 42.787304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944004, 31.266224, 42.948093>,  <43.091141, 31.008282, 43.216080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944004, 31.266224, 42.948093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521758, 0.453242, 0.722731,
		0.769713, 0.615411, 0.169736,
		-0.367845, 0.644857, -0.669963,
		42.833649, 31.459681, 42.747105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195374, 30.578411, 42.605698>,  <43.091141, 31.008282, 43.216080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195374, 30.578411, 42.605698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946800, 30.889679, 42.642094>,  <42.797657, 31.076439, 42.663929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946800, 30.889679, 42.642094>,  <43.195374, 30.578411, 42.605698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946800, 30.889679, 42.642094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132765, 0.009860, -0.991098,
		-0.772139, -0.627978, 0.097187,
		-0.621430, 0.778168, 0.090987,
		42.760372, 31.123129, 42.669388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601353, 30.427429, 42.200500>,  <43.195374, 30.578411, 42.605698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601353, 30.427429, 42.200500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626366, 30.823467, 42.250778>,  <42.641373, 31.061090, 42.280945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626366, 30.823467, 42.250778>,  <42.601353, 30.427429, 42.200500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626366, 30.823467, 42.250778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099806, 0.131515, -0.986277,
		-0.993040, 0.049127, 0.107042,
		0.062531, 0.990096, 0.125696,
		42.645126, 31.120497, 42.288486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828362, 30.604542, 42.083706>,  <42.601353, 30.427429, 42.200500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828362, 30.604542, 42.083706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724823, 30.745371, 41.723919>,  <41.662701, 30.829868, 41.508045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724823, 30.745371, 41.723919>,  <41.828362, 30.604542, 42.083706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724823, 30.745371, 41.723919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688621, 0.720268, 0.083758,
		0.677347, -0.597711, -0.428886,
		-0.258850, 0.352073, -0.899467,
		41.647167, 30.850992, 41.454079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171455, 31.136721, 42.049252>,  <41.828362, 30.604542, 42.083706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171455, 31.136721, 42.049252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038113, 31.163136, 41.673058>,  <41.958107, 31.178986, 41.447342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038113, 31.163136, 41.673058>,  <42.171455, 31.136721, 42.049252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038113, 31.163136, 41.673058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595163, 0.788398, -0.155595,
		0.731202, -0.611611, -0.302118,
		-0.333353, 0.066038, -0.940486,
		41.938107, 31.182947, 41.390911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593403, 31.680744, 41.802685>,  <42.171455, 31.136721, 42.049252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593403, 31.680744, 41.802685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354832, 31.633600, 41.485100>,  <42.211689, 31.605314, 41.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354832, 31.633600, 41.485100>,  <42.593403, 31.680744, 41.802685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354832, 31.633600, 41.485100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456679, 0.763630, -0.456413,
		0.660089, -0.634806, -0.401627,
		-0.596428, -0.117859, -0.793967,
		42.175903, 31.598242, 41.246910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006863, 31.479589, 41.212009>,  <42.593403, 31.680744, 41.802685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006863, 31.479589, 41.212009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687420, 31.716887, 41.171436>,  <42.495754, 31.859264, 41.147091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687420, 31.716887, 41.171436>,  <43.006863, 31.479589, 41.212009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687420, 31.716887, 41.171436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582542, 0.719580, -0.377954,
		-0.151228, -0.360927, -0.920251,
		-0.798608, 0.593242, -0.101435,
		42.447838, 31.894859, 41.141006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777615, 31.549646, 40.385319>,  <43.006863, 31.479589, 41.212009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777615, 31.549646, 40.385319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686584, 31.847988, 40.635731>,  <42.631966, 32.026993, 40.785976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686584, 31.847988, 40.635731>,  <42.777615, 31.549646, 40.385319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686584, 31.847988, 40.635731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245376, 0.666076, -0.704367,
		-0.942339, -0.006680, -0.334594,
		-0.227571, 0.745854, 0.626030,
		42.618313, 32.071743, 40.823540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488663, 32.004044, 39.917603>,  <42.777615, 31.549646, 40.385319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488663, 32.004044, 39.917603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519234, 32.225601, 40.249229>,  <42.537575, 32.358536, 40.448208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519234, 32.225601, 40.249229>,  <42.488663, 32.004044, 39.917603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519234, 32.225601, 40.249229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076304, 0.825814, -0.558756,
		-0.994151, 0.105963, 0.020848,
		0.076424, 0.553898, 0.829070,
		42.542160, 32.391769, 40.497952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086494, 32.569027, 39.732391>,  <42.488663, 32.004044, 39.917603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086494, 32.569027, 39.732391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312691, 32.698174, 40.035965>,  <42.448410, 32.775661, 40.218109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312691, 32.698174, 40.035965>,  <42.086494, 32.569027, 39.732391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312691, 32.698174, 40.035965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183402, 0.847924, -0.497381,
		-0.804102, 0.420455, 0.420283,
		0.565494, 0.322864, 0.758930,
		42.482338, 32.795033, 40.263645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962910, 33.245533, 39.697128>,  <42.086494, 32.569027, 39.732391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962910, 33.245533, 39.697128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296738, 33.218616, 39.915840>,  <42.497032, 33.202469, 40.047070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296738, 33.218616, 39.915840>,  <41.962910, 33.245533, 39.697128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296738, 33.218616, 39.915840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380962, 0.787439, -0.484570,
		-0.397953, 0.612709, 0.682804,
		0.834566, -0.067287, 0.546783,
		42.547108, 33.198429, 40.079876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196560, 34.006557, 39.924904>,  <41.962910, 33.245533, 39.697128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196560, 34.006557, 39.924904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463081, 33.711628, 39.880363>,  <42.622993, 33.534672, 39.853642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463081, 33.711628, 39.880363>,  <42.196560, 34.006557, 39.924904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463081, 33.711628, 39.880363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475522, 0.535157, -0.698201,
		0.574390, 0.412262, 0.707189,
		0.666299, -0.737324, -0.111349,
		42.662971, 33.490429, 39.846958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881596, 34.351273, 39.943058>,  <42.196560, 34.006557, 39.924904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881596, 34.351273, 39.943058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954201, 33.995659, 39.774933>,  <42.997765, 33.782291, 39.674057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954201, 33.995659, 39.774933>,  <42.881596, 34.351273, 39.943058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954201, 33.995659, 39.774933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616549, 0.435863, -0.655660,
		0.766107, -0.140133, 0.627250,
		0.181516, -0.889036, -0.420317,
		43.008656, 33.728947, 39.648838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696957, 34.244804, 39.861794>,  <42.881596, 34.351273, 39.943058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696957, 34.244804, 39.861794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528576, 34.001076, 39.593006>,  <43.427547, 33.854839, 39.431736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528576, 34.001076, 39.593006>,  <43.696957, 34.244804, 39.861794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528576, 34.001076, 39.593006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479375, 0.479461, -0.735063,
		0.770066, -0.631546, 0.090264,
		-0.420948, -0.609317, -0.671964,
		43.402290, 33.818279, 39.391418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133022, 34.152313, 39.284161>,  <43.696957, 34.244804, 39.861794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133022, 34.152313, 39.284161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809017, 34.037003, 39.079899>,  <43.614613, 33.967815, 38.957340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809017, 34.037003, 39.079899>,  <44.133022, 34.152313, 39.284161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809017, 34.037003, 39.079899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350693, 0.459794, -0.815846,
		0.469992, -0.839930, -0.271340,
		-0.810014, -0.288284, -0.510656,
		43.566013, 33.950520, 38.926701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422462, 33.724094, 38.768108>,  <44.133022, 34.152313, 39.284161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422462, 33.724094, 38.768108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064075, 33.860035, 38.653748>,  <43.849045, 33.941601, 38.585129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064075, 33.860035, 38.653748>,  <44.422462, 33.724094, 38.768108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064075, 33.860035, 38.653748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419434, 0.435879, -0.796294,
		-0.146002, -0.833373, -0.533079,
		-0.895968, 0.339852, -0.285906,
		43.795284, 33.961990, 38.567974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355064, 33.470268, 38.075920>,  <44.422462, 33.724094, 38.768108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355064, 33.470268, 38.075920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095207, 33.770103, 38.126656>,  <43.939293, 33.950005, 38.157097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095207, 33.770103, 38.126656>,  <44.355064, 33.470268, 38.075920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095207, 33.770103, 38.126656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334263, 0.431478, -0.837911,
		-0.682816, -0.501942, -0.530864,
		-0.649639, 0.749588, 0.126839,
		43.900314, 33.994980, 38.164707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057964, 33.549809, 37.450165>,  <44.355064, 33.470268, 38.075920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057964, 33.549809, 37.450165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949429, 33.899876, 37.610397>,  <43.884308, 34.109917, 37.706535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949429, 33.899876, 37.610397>,  <44.057964, 33.549809, 37.450165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949429, 33.899876, 37.610397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295204, 0.471805, -0.830815,
		-0.916095, -0.107180, -0.386372,
		-0.271339, 0.875164, 0.400578,
		43.868027, 34.162426, 37.730572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800068, 33.935604, 36.932983>,  <44.057964, 33.549809, 37.450165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800068, 33.935604, 36.932983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872459, 34.209042, 37.215809>,  <43.915894, 34.373104, 37.385506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872459, 34.209042, 37.215809>,  <43.800068, 33.935604, 36.932983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872459, 34.209042, 37.215809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286294, 0.651182, -0.702850,
		-0.940894, 0.329632, -0.077857,
		0.180983, 0.683597, 0.707064,
		43.926754, 34.414120, 37.427929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653786, 34.589790, 36.610203>,  <43.800068, 33.935604, 36.932983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653786, 34.589790, 36.610203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861748, 34.683193, 36.938877>,  <43.986526, 34.739235, 37.136082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861748, 34.683193, 36.938877>,  <43.653786, 34.589790, 36.610203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861748, 34.683193, 36.938877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426364, 0.762591, -0.486487,
		-0.740211, 0.603265, 0.296915,
		0.519905, 0.233509, 0.821689,
		44.017719, 34.753246, 37.185383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718403, 35.365833, 36.590893>,  <43.653786, 34.589790, 36.610203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718403, 35.365833, 36.590893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006668, 35.237480, 36.836716>,  <44.179626, 35.160469, 36.984211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006668, 35.237480, 36.836716>,  <43.718403, 35.365833, 36.590893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006668, 35.237480, 36.836716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616352, 0.702400, -0.356011,
		-0.317428, 0.635348, 0.703969,
		0.720659, -0.320885, 0.614560,
		44.222866, 35.141216, 37.021084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927910, 35.897327, 37.030479>,  <43.718403, 35.365833, 36.590893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927910, 35.897327, 37.030479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244759, 35.655071, 37.000164>,  <44.434868, 35.509716, 36.981976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244759, 35.655071, 37.000164>,  <43.927910, 35.897327, 37.030479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244759, 35.655071, 37.000164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537283, 0.750796, -0.384230,
		0.289610, 0.263634, 0.920121,
		0.792119, -0.605643, -0.075792,
		44.482395, 35.473377, 36.977425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462475, 36.361271, 37.218807>,  <43.927910, 35.897327, 37.030479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462475, 36.361271, 37.218807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629025, 36.048515, 37.033211>,  <44.728954, 35.860863, 36.921852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629025, 36.048515, 37.033211>,  <44.462475, 36.361271, 37.218807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629025, 36.048515, 37.033211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683840, 0.605629, -0.406910,
		0.599162, -0.147866, 0.786855,
		0.416374, -0.781888, -0.463987,
		44.753937, 35.813950, 36.894016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172623, 36.312641, 37.339779>,  <44.462475, 36.361271, 37.218807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172623, 36.312641, 37.339779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145302, 36.098427, 37.003078>,  <45.128910, 35.969898, 36.801060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145302, 36.098427, 37.003078>,  <45.172623, 36.312641, 37.339779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145302, 36.098427, 37.003078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523590, 0.698943, -0.487167,
		0.849228, -0.474005, 0.232661,
		-0.068303, -0.535535, -0.841746,
		45.124809, 35.937767, 36.750553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834789, 36.356796, 37.026772>,  <45.172623, 36.312641, 37.339779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834789, 36.356796, 37.026772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588619, 36.253185, 36.729008>,  <45.440918, 36.191017, 36.550350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588619, 36.253185, 36.729008>,  <45.834789, 36.356796, 37.026772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588619, 36.253185, 36.729008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487705, 0.616794, -0.617826,
		0.619176, -0.743285, -0.253273,
		-0.615439, -0.259021, -0.744408,
		45.403992, 36.175476, 36.505684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223255, 35.970531, 36.472553>,  <45.834789, 36.356796, 37.026772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223255, 35.970531, 36.472553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905540, 36.179394, 36.348316>,  <45.714912, 36.304710, 36.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905540, 36.179394, 36.348316>,  <46.223255, 35.970531, 36.472553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905540, 36.179394, 36.348316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600608, 0.597842, -0.530900,
		-0.091528, -0.608229, -0.788467,
		-0.794287, 0.522152, -0.310588,
		45.667255, 36.336040, 36.255138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584599, 36.559063, 36.716347>,  <46.223255, 35.970531, 36.472553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584599, 36.559063, 36.716347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590782, 36.573082, 36.316639>,  <46.594494, 36.581493, 36.076817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590782, 36.573082, 36.316639>,  <46.584599, 36.559063, 36.716347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590782, 36.573082, 36.316639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999850, 0.007238, 0.015724,
		0.007784, -0.999359, -0.034935,
		0.015461, 0.035052, -0.999266,
		46.595421, 36.583599, 36.016861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034027, 36.055336, 36.441467>,  <46.584599, 36.559063, 36.716347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034027, 36.055336, 36.441467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034668, 36.393314, 36.227528>,  <47.035053, 36.596104, 36.099163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034668, 36.393314, 36.227528>,  <47.034027, 36.055336, 36.441467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034668, 36.393314, 36.227528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988196, 0.080591, 0.130285,
		0.153188, -0.528741, -0.834846,
		0.001605, 0.844949, -0.534845,
		47.035149, 36.646797, 36.067074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719681, 35.735115, 36.629997>,  <47.034027, 36.055336, 36.441467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719681, 35.735115, 36.629997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551670, 35.418808, 36.451893>,  <47.450863, 35.229023, 36.345028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551670, 35.418808, 36.451893>,  <47.719681, 35.735115, 36.629997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.551670, 35.418808, 36.451893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040217, 0.473940, -0.879638,
		0.906621, -0.387377, -0.167264,
		-0.420025, -0.790772, -0.445263,
		47.425663, 35.181576, 36.318314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.071594, 35.487190, 36.001953>,  <47.719681, 35.735115, 36.629997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.071594, 35.487190, 36.001953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703156, 35.335102, 35.968449>,  <47.482094, 35.243851, 35.948345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703156, 35.335102, 35.968449>,  <48.071594, 35.487190, 36.001953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703156, 35.335102, 35.968449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012110, 0.243016, -0.969946,
		0.389152, -0.892397, -0.228446,
		-0.921094, -0.380223, -0.083763,
		47.426826, 35.221035, 35.943321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.165951, 35.010567, 35.545860>,  <48.071594, 35.487190, 36.001953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.165951, 35.010567, 35.545860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792446, 35.152241, 35.566383>,  <47.568344, 35.237247, 35.578697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792446, 35.152241, 35.566383>,  <48.165951, 35.010567, 35.545860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792446, 35.152241, 35.566383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063941, 0.306163, -0.949830,
		-0.352129, -0.883637, -0.308531,
		-0.933765, 0.354190, 0.051308,
		47.512318, 35.258499, 35.581776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658848, 34.647137, 35.039448>,  <48.165951, 35.010567, 35.545860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658848, 34.647137, 35.039448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566460, 35.021961, 35.144192>,  <47.511028, 35.246857, 35.207039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566460, 35.021961, 35.144192>,  <47.658848, 34.647137, 35.039448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.566460, 35.021961, 35.144192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137004, 0.297776, -0.944753,
		-0.963267, -0.182333, -0.197159,
		-0.230969, 0.937062, 0.261858,
		47.497169, 35.303082, 35.222748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.350945, 42.159481, 47.356400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969349, 42.116276, 47.468285>,  <35.740391, 42.090351, 47.535416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969349, 42.116276, 47.468285>,  <36.350945, 42.159481, 47.356400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969349, 42.116276, 47.468285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201858, -0.458436, -0.865500,
		0.221718, -0.882139, 0.415538,
		-0.953989, -0.108017, 0.279711,
		35.683151, 42.083870, 47.552197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162560, 41.462395, 47.265312>,  <36.350945, 42.159481, 47.356400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162560, 41.462395, 47.265312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807323, 41.646049, 47.274120>,  <35.594181, 41.756241, 47.279404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807323, 41.646049, 47.274120>,  <36.162560, 41.462395, 47.265312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807323, 41.646049, 47.274120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293438, -0.529416, -0.795998,
		-0.353813, -0.713382, 0.604898,
		-0.888094, 0.459135, 0.022019,
		35.540897, 41.783791, 47.280727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649784, 40.953350, 47.323071>,  <36.162560, 41.462395, 47.265312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649784, 40.953350, 47.323071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490685, 41.278111, 47.152142>,  <35.395226, 41.472969, 47.049583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490685, 41.278111, 47.152142>,  <35.649784, 40.953350, 47.323071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490685, 41.278111, 47.152142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287590, -0.552606, -0.782252,
		-0.871256, -0.188248, 0.453295,
		-0.397751, 0.811905, -0.427323,
		35.371361, 41.521683, 47.023945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974335, 40.744755, 46.963306>,  <35.649784, 40.953350, 47.323071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974335, 40.744755, 46.963306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047901, 41.100254, 46.795357>,  <35.092041, 41.313553, 46.694588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047901, 41.100254, 46.795357>,  <34.974335, 40.744755, 46.963306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047901, 41.100254, 46.795357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143964, -0.398200, -0.905931,
		-0.972342, 0.227064, 0.054712,
		0.183918, 0.888751, -0.419876,
		35.103077, 41.366879, 46.669395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421562, 40.847027, 46.481785>,  <34.974335, 40.744755, 46.963306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421562, 40.847027, 46.481785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710232, 41.096394, 46.361423>,  <34.883434, 41.246014, 46.289207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710232, 41.096394, 46.361423>,  <34.421562, 40.847027, 46.481785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710232, 41.096394, 46.361423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155905, -0.277142, -0.948096,
		-0.674449, 0.731128, -0.102813,
		0.721673, 0.623414, -0.300904,
		34.926735, 41.283417, 46.271152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192638, 41.092216, 45.822777>,  <34.421562, 40.847027, 46.481785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192638, 41.092216, 45.822777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.582035, 41.181538, 45.842533>,  <34.815674, 41.235130, 45.854385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.582035, 41.181538, 45.842533>,  <34.192638, 41.092216, 45.822777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582035, 41.181538, 45.842533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089627, -0.173821, -0.980690,
		-0.210410, 0.959125, -0.189228,
		0.973496, 0.223306, 0.049390,
		34.874084, 41.248531, 45.857349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305355, 41.502235, 45.282700>,  <34.192638, 41.092216, 45.822777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305355, 41.502235, 45.282700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678005, 41.382008, 45.364410>,  <34.901596, 41.309872, 45.413437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678005, 41.382008, 45.364410>,  <34.305355, 41.502235, 45.282700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678005, 41.382008, 45.364410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153205, -0.184883, -0.970745,
		0.329544, 0.935669, -0.126193,
		0.931627, -0.300570, 0.204276,
		34.957493, 41.291836, 45.425694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650684, 41.751064, 44.743748>,  <34.305355, 41.502235, 45.282700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650684, 41.751064, 44.743748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906849, 41.486950, 44.900665>,  <35.060547, 41.328480, 44.994816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906849, 41.486950, 44.900665>,  <34.650684, 41.751064, 44.743748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906849, 41.486950, 44.900665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237429, -0.315551, -0.918725,
		0.730410, 0.681504, -0.045311,
		0.640413, -0.660288, 0.392290,
		35.098972, 41.288864, 45.018353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216667, 41.702095, 44.251366>,  <34.650684, 41.751064, 44.743748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216667, 41.702095, 44.251366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259396, 41.354584, 44.444782>,  <35.285034, 41.146076, 44.560833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259396, 41.354584, 44.444782>,  <35.216667, 41.702095, 44.251366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259396, 41.354584, 44.444782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380492, -0.413589, -0.827146,
		0.918594, 0.272346, 0.286381,
		0.106826, -0.868776, 0.483546,
		35.291443, 41.093952, 44.589848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860153, 41.499527, 44.054974>,  <35.216667, 41.702095, 44.251366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860153, 41.499527, 44.054974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673027, 41.162632, 44.162140>,  <35.560753, 40.960495, 44.226440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673027, 41.162632, 44.162140>,  <35.860153, 41.499527, 44.054974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673027, 41.162632, 44.162140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305674, -0.438610, -0.845095,
		0.829286, -0.313449, 0.462638,
		-0.467812, -0.842242, 0.267920,
		35.532684, 40.909958, 44.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215595, 41.008007, 43.819477>,  <35.860153, 41.499527, 44.054974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215595, 41.008007, 43.819477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.897186, 40.772331, 43.874912>,  <35.706142, 40.630924, 43.908173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.897186, 40.772331, 43.874912>,  <36.215595, 41.008007, 43.819477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897186, 40.772331, 43.874912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090100, -0.341762, -0.935458,
		0.598529, -0.732155, 0.325135,
		-0.796018, -0.589193, 0.138587,
		35.658382, 40.595573, 43.916489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349056, 40.271614, 43.604916>,  <36.215595, 41.008007, 43.819477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349056, 40.271614, 43.604916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951065, 40.310848, 43.612862>,  <35.712269, 40.334389, 43.617630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951065, 40.310848, 43.612862>,  <36.349056, 40.271614, 43.604916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951065, 40.310848, 43.612862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057099, -0.393359, -0.917610,
		-0.082188, -0.914138, 0.396985,
		-0.994980, 0.098083, 0.019867,
		35.652573, 40.340275, 43.618820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078064, 39.628944, 43.471733>,  <36.349056, 40.271614, 43.604916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078064, 39.628944, 43.471733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790337, 39.875366, 43.343327>,  <35.617699, 40.023220, 43.266281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790337, 39.875366, 43.343327>,  <36.078064, 39.628944, 43.471733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790337, 39.875366, 43.343327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056379, -0.408818, -0.910873,
		-0.692386, -0.673309, 0.259339,
		-0.719321, 0.616054, -0.321020,
		35.574539, 40.060181, 43.247021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546524, 39.198044, 43.174046>,  <36.078064, 39.628944, 43.471733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546524, 39.198044, 43.174046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496296, 39.566761, 43.027336>,  <35.466160, 39.787991, 42.939308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496296, 39.566761, 43.027336>,  <35.546524, 39.198044, 43.174046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496296, 39.566761, 43.027336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158636, -0.383604, -0.909771,
		-0.979320, -0.056056, 0.194399,
		-0.125571, 0.921795, -0.366778,
		35.458626, 39.843300, 42.917301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955776, 39.151958, 42.725384>,  <35.546524, 39.198044, 43.174046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955776, 39.151958, 42.725384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178818, 39.469402, 42.628006>,  <35.312645, 39.659866, 42.569580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178818, 39.469402, 42.628006>,  <34.955776, 39.151958, 42.725384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178818, 39.469402, 42.628006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122939, -0.211080, -0.969707,
		-0.820951, 0.570644, -0.020134,
		0.557608, 0.793606, -0.243441,
		35.346100, 39.707485, 42.554974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608440, 39.340847, 42.174595>,  <34.955776, 39.151958, 42.725384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608440, 39.340847, 42.174595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948864, 39.546600, 42.132431>,  <35.153118, 39.670052, 42.107132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948864, 39.546600, 42.132431>,  <34.608440, 39.340847, 42.174595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948864, 39.546600, 42.132431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026028, -0.159175, -0.986907,
		-0.524423, 0.842661, -0.122079,
		0.851060, 0.514379, -0.105408,
		35.204182, 39.700912, 42.100807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473083, 39.708138, 41.488804>,  <34.608440, 39.340847, 42.174595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473083, 39.708138, 41.488804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866756, 39.714092, 41.559410>,  <35.102962, 39.717667, 41.601776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866756, 39.714092, 41.559410>,  <34.473083, 39.708138, 41.488804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866756, 39.714092, 41.559410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173901, -0.271020, -0.946735,
		0.033743, 0.962458, -0.269323,
		0.984185, 0.014890, 0.176518,
		35.162010, 39.718559, 41.612366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737381, 40.052803, 40.982128>,  <34.473083, 39.708138, 41.488804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737381, 40.052803, 40.982128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040321, 39.819244, 41.099075>,  <35.222084, 39.679108, 41.169243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040321, 39.819244, 41.099075>,  <34.737381, 40.052803, 40.982128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040321, 39.819244, 41.099075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179663, -0.244132, -0.952954,
		0.627806, 0.774249, -0.079988,
		0.757351, -0.583899, 0.292372,
		35.267529, 39.644073, 41.186787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263279, 40.116596, 40.535061>,  <34.737381, 40.052803, 40.982128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263279, 40.116596, 40.535061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348888, 39.755116, 40.683395>,  <35.400253, 39.538227, 40.772396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348888, 39.755116, 40.683395>,  <35.263279, 40.116596, 40.535061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348888, 39.755116, 40.683395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028744, -0.373640, -0.927128,
		0.976406, 0.209086, -0.053991,
		0.214023, -0.903701, 0.370834,
		35.413094, 39.484005, 40.794647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033794, 39.839077, 40.260075>,  <35.263279, 40.116596, 40.535061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033794, 39.839077, 40.260075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.827145, 39.524082, 40.394512>,  <35.703156, 39.335087, 40.475174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.827145, 39.524082, 40.394512>,  <36.033794, 39.839077, 40.260075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827145, 39.524082, 40.394512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099290, -0.444995, -0.890012,
		0.850434, -0.426433, 0.308086,
		-0.516627, -0.787486, 0.336098,
		35.672157, 39.287838, 40.495342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316277, 39.239086, 39.942226>,  <36.033794, 39.839077, 40.260075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316277, 39.239086, 39.942226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961815, 39.093136, 40.056484>,  <35.749138, 39.005566, 40.125038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961815, 39.093136, 40.056484>,  <36.316277, 39.239086, 39.942226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961815, 39.093136, 40.056484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014451, -0.594372, -0.804061,
		0.463162, -0.716651, 0.521433,
		-0.886156, -0.364875, 0.285647,
		35.695969, 38.983673, 40.142178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414326, 38.593914, 39.968178>,  <36.316277, 39.239086, 39.942226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414326, 38.593914, 39.968178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014572, 38.602146, 39.956806>,  <35.774719, 38.607086, 39.949982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014572, 38.602146, 39.956806>,  <36.414326, 38.593914, 39.968178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014572, 38.602146, 39.956806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012322, -0.552727, -0.833271,
		-0.032866, -0.833108, 0.552133,
		-0.999384, 0.020583, -0.028431,
		35.714756, 38.608322, 39.948277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103786, 38.749901, 40.056198>,  <36.414326, 38.593914, 39.968178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103786, 38.749901, 40.056198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478760, 38.882744, 40.097996>,  <37.703743, 38.962448, 40.123074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.478760, 38.882744, 40.097996>,  <37.103786, 38.749901, 40.056198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478760, 38.882744, 40.097996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143758, 0.095878, 0.984957,
		0.317095, -0.938355, 0.137623,
		0.937435, 0.332110, 0.104494,
		37.759991, 38.982376, 40.129345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368896, 38.328308, 40.664459>,  <37.103786, 38.749901, 40.056198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368896, 38.328308, 40.664459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602997, 38.646038, 40.599316>,  <37.743458, 38.836678, 40.560230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602997, 38.646038, 40.599316>,  <37.368896, 38.328308, 40.664459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602997, 38.646038, 40.599316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197605, 0.055078, 0.978733,
		0.786402, -0.604991, -0.124728,
		0.585255, 0.794325, -0.162863,
		37.778572, 38.884335, 40.550457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011429, 38.217476, 41.073563>,  <37.368896, 38.328308, 40.664459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011429, 38.217476, 41.073563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014664, 38.610725, 41.000465>,  <38.016605, 38.846676, 40.956608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014664, 38.610725, 41.000465>,  <38.011429, 38.217476, 41.073563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014664, 38.610725, 41.000465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611317, 0.139762, 0.778947,
		0.791344, -0.118018, -0.599872,
		0.008091, 0.983127, -0.182747,
		38.017090, 38.905663, 40.945641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534340, 38.410271, 41.510773>,  <38.011429, 38.217476, 41.073563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534340, 38.410271, 41.510773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364811, 38.757458, 41.407230>,  <38.263092, 38.965771, 41.345104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364811, 38.757458, 41.407230>,  <38.534340, 38.410271, 41.510773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364811, 38.757458, 41.407230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327979, 0.413465, 0.849398,
		0.844275, 0.275099, -0.459913,
		-0.423826, 0.867967, -0.258851,
		38.237663, 39.017849, 41.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025143, 38.906853, 41.615768>,  <38.534340, 38.410271, 41.510773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025143, 38.906853, 41.615768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688351, 39.121178, 41.640999>,  <38.486275, 39.249775, 41.656136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688351, 39.121178, 41.640999>,  <39.025143, 38.906853, 41.615768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688351, 39.121178, 41.640999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383618, 0.512374, 0.768316,
		0.379359, 0.671100, -0.636955,
		-0.841976, 0.535815, 0.063073,
		38.435757, 39.281921, 41.659920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139553, 39.640594, 41.494835>,  <39.025143, 38.906853, 41.615768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139553, 39.640594, 41.494835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800858, 39.608288, 41.705173>,  <38.597641, 39.588905, 41.831375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800858, 39.608288, 41.705173>,  <39.139553, 39.640594, 41.494835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800858, 39.608288, 41.705173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448046, 0.424693, 0.786696,
		-0.286859, 0.901728, -0.323417,
		-0.846739, -0.080765, 0.525843,
		38.546837, 39.584057, 41.862926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970490, 40.325073, 41.922089>,  <39.139553, 39.640594, 41.494835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970490, 40.325073, 41.922089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737789, 40.050907, 42.097256>,  <38.598167, 39.886406, 42.202354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737789, 40.050907, 42.097256>,  <38.970490, 40.325073, 41.922089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737789, 40.050907, 42.097256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180047, 0.416525, 0.891117,
		-0.793190, 0.597253, -0.118906,
		-0.581750, -0.685417, 0.437917,
		38.563263, 39.845284, 42.228630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471661, 40.701321, 42.300068>,  <38.970490, 40.325073, 41.922089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471661, 40.701321, 42.300068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469440, 40.335552, 42.461956>,  <38.468109, 40.116089, 42.559090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469440, 40.335552, 42.461956>,  <38.471661, 40.701321, 42.300068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469440, 40.335552, 42.461956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126599, 0.400827, 0.907364,
		-0.991938, 0.056274, 0.113540,
		-0.005551, -0.914424, 0.404720,
		38.467773, 40.061226, 42.583370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983578, 40.731968, 42.911030>,  <38.471661, 40.701321, 42.300068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983578, 40.731968, 42.911030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.209644, 40.404022, 42.947712>,  <38.345284, 40.207253, 42.969719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.209644, 40.404022, 42.947712>,  <37.983578, 40.731968, 42.911030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209644, 40.404022, 42.947712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127650, 0.196726, 0.972113,
		-0.815043, -0.537698, 0.215838,
		0.565164, -0.819866, 0.091703,
		38.379192, 40.158062, 42.975224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673164, 40.391846, 43.575813>,  <37.983578, 40.731968, 42.911030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673164, 40.391846, 43.575813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039890, 40.246696, 43.509159>,  <38.259926, 40.159607, 43.469166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039890, 40.246696, 43.509159>,  <37.673164, 40.391846, 43.575813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039890, 40.246696, 43.509159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253569, 0.206700, 0.944975,
		-0.308466, -0.908623, 0.281520,
		0.916816, -0.362878, -0.166638,
		38.314934, 40.137833, 43.459167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823849, 39.721443, 43.995636>,  <37.673164, 40.391846, 43.575813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823849, 39.721443, 43.995636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154556, 39.928619, 43.907829>,  <38.352982, 40.052925, 43.855145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154556, 39.928619, 43.907829>,  <37.823849, 39.721443, 43.995636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154556, 39.928619, 43.907829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147050, 0.177666, 0.973042,
		0.542983, -0.836760, 0.070725,
		0.826768, 0.517945, -0.219515,
		38.402588, 40.084003, 43.841976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156445, 39.628300, 44.580166>,  <37.823849, 39.721443, 43.995636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156445, 39.628300, 44.580166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400860, 39.888931, 44.400356>,  <38.547508, 40.045311, 44.292469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400860, 39.888931, 44.400356>,  <38.156445, 39.628300, 44.580166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400860, 39.888931, 44.400356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408436, 0.226940, 0.884126,
		0.678097, -0.723836, -0.127461,
		0.611036, 0.651583, -0.449527,
		38.584171, 40.084408, 44.265499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786205, 39.532692, 44.928944>,  <38.156445, 39.628300, 44.580166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786205, 39.532692, 44.928944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813141, 39.906700, 44.789692>,  <38.829304, 40.131107, 44.706139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813141, 39.906700, 44.789692>,  <38.786205, 39.532692, 44.928944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813141, 39.906700, 44.789692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269857, 0.318849, 0.908577,
		0.960543, -0.155133, -0.230850,
		0.067343, 0.935024, -0.348132,
		38.833344, 40.187206, 44.685253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142506, 39.919441, 45.491455>,  <38.786205, 39.532692, 44.928944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142506, 39.919441, 45.491455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049438, 40.232723, 45.260822>,  <38.993599, 40.420692, 45.122440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049438, 40.232723, 45.260822>,  <39.142506, 39.919441, 45.491455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049438, 40.232723, 45.260822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050475, 0.601781, 0.797065,
		0.971245, 0.156351, -0.179550,
		-0.232672, 0.783208, -0.576584,
		38.979637, 40.467686, 45.087849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660789, 40.422123, 45.618607>,  <39.142506, 39.919441, 45.491455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660789, 40.422123, 45.618607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321732, 40.590317, 45.489182>,  <39.118298, 40.691235, 45.411526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321732, 40.590317, 45.489182>,  <39.660789, 40.422123, 45.618607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321732, 40.590317, 45.489182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084348, 0.708882, 0.700266,
		0.523818, 0.566284, -0.636347,
		-0.847644, 0.420487, -0.323560,
		39.067440, 40.716461, 45.392113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725197, 41.209980, 45.724392>,  <39.660789, 40.422123, 45.618607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725197, 41.209980, 45.724392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330479, 41.182976, 45.665489>,  <39.093647, 41.166771, 45.630146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330479, 41.182976, 45.665489>,  <39.725197, 41.209980, 45.724392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330479, 41.182976, 45.665489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160481, 0.531459, 0.831743,
		0.022107, 0.844389, -0.535274,
		-0.986791, -0.067514, -0.147258,
		39.034443, 41.162720, 45.621311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476715, 41.847176, 45.728241>,  <39.725197, 41.209980, 45.724392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476715, 41.847176, 45.728241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160023, 41.620144, 45.818588>,  <38.970005, 41.483925, 45.872795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160023, 41.620144, 45.818588>,  <39.476715, 41.847176, 45.728241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160023, 41.620144, 45.818588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189182, 0.579388, 0.792793,
		-0.580833, 0.584951, -0.566096,
		-0.791734, -0.567576, 0.225865,
		38.922501, 41.449871, 45.886349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882183, 42.304165, 45.925758>,  <39.476715, 41.847176, 45.728241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882183, 42.304165, 45.925758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777424, 41.952862, 46.085796>,  <38.714569, 41.742081, 46.181820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777424, 41.952862, 46.085796>,  <38.882183, 42.304165, 45.925758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777424, 41.952862, 46.085796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297968, 0.467895, 0.832039,
		-0.917946, 0.098694, -0.384233,
		-0.261898, -0.878256, 0.400095,
		38.698856, 41.689384, 46.205826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.248276, 42.452187, 46.340477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412525, 42.113380, 46.475502>,  <38.511074, 41.910095, 46.556515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412525, 42.113380, 46.475502>,  <38.248276, 42.452187, 46.340477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412525, 42.113380, 46.475502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132789, 0.310713, 0.941183,
		-0.902082, -0.431300, 0.015113,
		0.410628, -0.847017, 0.337560,
		38.535713, 41.859276, 46.576771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735550, 42.362904, 46.787766>,  <38.248276, 42.452187, 46.340477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735550, 42.362904, 46.787766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043484, 42.123970, 46.877701>,  <38.228245, 41.980610, 46.931660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043484, 42.123970, 46.877701>,  <37.735550, 42.362904, 46.787766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043484, 42.123970, 46.877701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009991, 0.340949, 0.940029,
		-0.638170, -0.725910, 0.256505,
		0.769831, -0.597335, 0.224836,
		38.274433, 41.944771, 46.945152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545971, 41.868839, 47.336437>,  <37.735550, 42.362904, 46.787766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545971, 41.868839, 47.336437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943653, 41.898979, 47.367085>,  <38.182262, 41.917065, 47.385471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943653, 41.898979, 47.367085>,  <37.545971, 41.868839, 47.336437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943653, 41.898979, 47.367085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091764, 0.224297, 0.970191,
		0.055921, -0.971603, 0.229913,
		0.994209, 0.075352, 0.076615,
		38.241917, 41.921585, 47.390068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713017, 41.422329, 47.964981>,  <37.545971, 41.868839, 47.336437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713017, 41.422329, 47.964981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032097, 41.651657, 47.890163>,  <38.223545, 41.789253, 47.845272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032097, 41.651657, 47.890163>,  <37.713017, 41.422329, 47.964981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032097, 41.651657, 47.890163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045223, 0.366153, 0.929455,
		0.601360, -0.732966, 0.318007,
		0.797698, 0.573318, -0.187043,
		38.271408, 41.823654, 47.834049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245956, 41.280506, 48.536667>,  <37.713017, 41.422329, 47.964981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245956, 41.280506, 48.536667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282127, 41.649887, 48.387508>,  <38.303829, 41.871517, 48.298012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282127, 41.649887, 48.387508>,  <38.245956, 41.280506, 48.536667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282127, 41.649887, 48.387508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023763, 0.372327, 0.927797,
		0.995619, -0.092761, 0.011726,
		0.090429, 0.923454, -0.372901,
		38.309258, 41.926922, 48.275639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510578, 41.616581, 49.040051>,  <38.245956, 41.280506, 48.536667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510578, 41.616581, 49.040051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386116, 41.921009, 48.812382>,  <38.311440, 42.103664, 48.675781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386116, 41.921009, 48.812382>,  <38.510578, 41.616581, 49.040051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386116, 41.921009, 48.812382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131052, 0.558816, 0.818871,
		0.941279, 0.329389, -0.074140,
		-0.311158, 0.761070, -0.569169,
		38.292770, 42.149330, 48.641632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752636, 42.277805, 49.437920>,  <38.510578, 41.616581, 49.040051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752636, 42.277805, 49.437920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522011, 42.438499, 49.153336>,  <38.383636, 42.534916, 48.982586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522011, 42.438499, 49.153336>,  <38.752636, 42.277805, 49.437920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522011, 42.438499, 49.153336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320991, 0.689384, 0.649395,
		0.751355, 0.602794, -0.268524,
		-0.576568, 0.401732, -0.711464,
		38.349041, 42.559021, 48.939896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946396, 43.060303, 49.266685>,  <38.752636, 42.277805, 49.437920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946396, 43.060303, 49.266685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561916, 42.976768, 49.194592>,  <38.331230, 42.926647, 49.151337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561916, 42.976768, 49.194592>,  <38.946396, 43.060303, 49.266685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561916, 42.976768, 49.194592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275852, 0.732062, 0.622889,
		0.001857, 0.648438, -0.761265,
		-0.961198, -0.208840, -0.180232,
		38.273556, 42.914116, 49.140522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589844, 43.716904, 49.199451>,  <38.946396, 43.060303, 49.266685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589844, 43.716904, 49.199451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280434, 43.475498, 49.276852>,  <38.094788, 43.330654, 49.323292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280434, 43.475498, 49.276852>,  <38.589844, 43.716904, 49.199451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280434, 43.475498, 49.276852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315096, 0.631117, 0.708806,
		-0.549891, 0.487306, -0.678346,
		-0.773521, -0.603510, 0.193497,
		38.048378, 43.294445, 49.334900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020340, 44.150833, 49.184742>,  <38.589844, 43.716904, 49.199451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020340, 44.150833, 49.184742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929604, 43.821533, 49.392895>,  <37.875160, 43.623951, 49.517788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929604, 43.821533, 49.392895>,  <38.020340, 44.150833, 49.184742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929604, 43.821533, 49.392895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466873, 0.560837, 0.683733,
		-0.854734, -0.087852, -0.511577,
		-0.226844, -0.823252, 0.520382,
		37.861549, 43.574558, 49.549011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496078, 44.381710, 49.514587>,  <38.020340, 44.150833, 49.184742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496078, 44.381710, 49.514587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572678, 44.049564, 49.723900>,  <37.618637, 43.850277, 49.849487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572678, 44.049564, 49.723900>,  <37.496078, 44.381710, 49.514587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572678, 44.049564, 49.723900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194994, 0.490330, 0.849443,
		-0.961928, -0.264705, -0.068018,
		0.191501, -0.830366, 0.523278,
		37.630127, 43.800453, 49.880882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921680, 44.312950, 49.970112>,  <37.496078, 44.381710, 49.514587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921680, 44.312950, 49.970112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184681, 44.069637, 50.147961>,  <37.342480, 43.923649, 50.254669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184681, 44.069637, 50.147961>,  <36.921680, 44.312950, 49.970112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184681, 44.069637, 50.147961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273568, 0.357102, 0.893106,
		-0.702035, -0.708851, 0.068388,
		0.657501, -0.608283, 0.444617,
		37.381931, 43.887154, 50.281345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521244, 43.986416, 50.516441>,  <36.921680, 44.312950, 49.970112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521244, 43.986416, 50.516441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910572, 43.972916, 50.607220>,  <37.144169, 43.964817, 50.661686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910572, 43.972916, 50.607220>,  <36.521244, 43.986416, 50.516441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910572, 43.972916, 50.607220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198316, 0.373726, 0.906090,
		-0.115394, -0.926925, 0.357063,
		0.973322, -0.033747, 0.226950,
		37.202568, 43.962791, 50.675304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595406, 43.657276, 51.204254>,  <36.521244, 43.986416, 50.516441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595406, 43.657276, 51.204254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967327, 43.801830, 51.176380>,  <37.190479, 43.888561, 51.159657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967327, 43.801830, 51.176380>,  <36.595406, 43.657276, 51.204254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967327, 43.801830, 51.176380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016187, 0.149013, 0.988703,
		0.367689, -0.920432, 0.132704,
		0.929808, 0.361386, -0.069690,
		37.246269, 43.910248, 51.155472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103912, 43.310932, 51.675800>,  <36.595406, 43.657276, 51.204254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103912, 43.310932, 51.675800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202850, 43.692272, 51.606579>,  <37.262215, 43.921074, 51.565044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202850, 43.692272, 51.606579>,  <37.103912, 43.310932, 51.675800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202850, 43.692272, 51.606579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033594, 0.170058, 0.984861,
		0.968345, -0.249415, 0.010036,
		0.247346, 0.953348, -0.173054,
		37.277054, 43.978275, 51.554661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582485, 43.382496, 52.183952>,  <37.103912, 43.310932, 51.675800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582485, 43.382496, 52.183952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533283, 43.761887, 52.067154>,  <37.503761, 43.989521, 51.997074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533283, 43.761887, 52.067154>,  <37.582485, 43.382496, 52.183952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533283, 43.761887, 52.067154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084260, 0.303149, 0.949211,
		0.988823, 0.092150, -0.117206,
		-0.123001, 0.948477, -0.291996,
		37.496384, 44.046429, 51.979553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182648, 43.691299, 52.511192>,  <37.582485, 43.382496, 52.183952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182648, 43.691299, 52.511192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889915, 43.949772, 52.424587>,  <37.714275, 44.104855, 52.372623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889915, 43.949772, 52.424587>,  <38.182648, 43.691299, 52.511192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889915, 43.949772, 52.424587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016223, 0.334141, 0.942384,
		0.681297, 0.686149, -0.255017,
		-0.731827, 0.646181, -0.216517,
		37.670368, 44.143627, 52.359631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418118, 44.239479, 52.895645>,  <38.182648, 43.691299, 52.511192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418118, 44.239479, 52.895645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036030, 44.330639, 52.820148>,  <37.806778, 44.385334, 52.774849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036030, 44.330639, 52.820148>,  <38.418118, 44.239479, 52.895645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036030, 44.330639, 52.820148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142116, 0.206142, 0.968147,
		0.259548, 0.951613, -0.164522,
		-0.955216, 0.227900, -0.188743,
		37.749466, 44.399010, 52.763527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330860, 44.925617, 53.159111>,  <38.418118, 44.239479, 52.895645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330860, 44.925617, 53.159111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964798, 44.767723, 53.126415>,  <37.745159, 44.672989, 53.106800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964798, 44.767723, 53.126415>,  <38.330860, 44.925617, 53.159111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964798, 44.767723, 53.126415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130812, 0.099019, 0.986450,
		-0.381289, 0.913446, -0.142253,
		-0.915154, -0.394731, -0.081735,
		37.690250, 44.649303, 53.101894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853394, 45.327896, 53.549671>,  <38.330860, 44.925617, 53.159111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853394, 45.327896, 53.549671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.648190, 44.986073, 53.517300>,  <37.525066, 44.780979, 53.497875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.648190, 44.986073, 53.517300>,  <37.853394, 45.327896, 53.549671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648190, 44.986073, 53.517300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253242, 0.060593, 0.965503,
		-0.820176, 0.515807, -0.247495,
		-0.513010, -0.854559, -0.080927,
		37.494286, 44.729706, 53.493023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202991, 45.374084, 53.885586>,  <37.853394, 45.327896, 53.549671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202991, 45.374084, 53.885586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219372, 44.975449, 53.856934>,  <37.229198, 44.736267, 53.839745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219372, 44.975449, 53.856934>,  <37.202991, 45.374084, 53.885586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219372, 44.975449, 53.856934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304804, -0.080731, 0.948987,
		-0.951534, -0.017029, -0.307071,
		0.040950, -0.996590, -0.071628,
		37.231655, 44.676472, 53.835445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579136, 45.120190, 54.172173>,  <37.202991, 45.374084, 53.885586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579136, 45.120190, 54.172173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838936, 44.816177, 54.181149>,  <36.994816, 44.633770, 54.186535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838936, 44.816177, 54.181149>,  <36.579136, 45.120190, 54.172173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838936, 44.816177, 54.181149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264118, -0.197835, 0.943982,
		-0.713017, -0.619042, -0.329232,
		0.649498, -0.760032, 0.022440,
		37.033787, 44.588169, 54.187881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249641, 44.685722, 54.563595>,  <36.579136, 45.120190, 54.172173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249641, 44.685722, 54.563595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638321, 44.591831, 54.552986>,  <36.871529, 44.535496, 54.546619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638321, 44.591831, 54.552986>,  <36.249641, 44.685722, 54.563595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638321, 44.591831, 54.552986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021434, -0.199431, 0.979677,
		-0.235251, -0.951382, -0.198818,
		0.971698, -0.234732, -0.026524,
		36.929832, 44.521412, 54.545029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421654, 44.487961, 55.257809>,  <36.249641, 44.685722, 54.563595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421654, 44.487961, 55.257809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200134, 44.222347, 55.458755>,  <36.067223, 44.062981, 55.579323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200134, 44.222347, 55.458755>,  <36.421654, 44.487961, 55.257809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200134, 44.222347, 55.458755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098922, -0.546588, -0.831538,
		0.826754, -0.510199, 0.237011,
		-0.553797, -0.664032, 0.502364,
		36.033997, 44.023136, 55.609467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558807, 43.851585, 54.989090>,  <36.421654, 44.487961, 55.257809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558807, 43.851585, 54.989090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203156, 43.781395, 55.158165>,  <35.989765, 43.739281, 55.259609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203156, 43.781395, 55.158165>,  <36.558807, 43.851585, 54.989090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203156, 43.781395, 55.158165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220088, -0.645832, -0.731069,
		0.401266, -0.743041, 0.535607,
		-0.889127, -0.175472, 0.422685,
		35.936417, 43.728752, 55.284969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499588, 43.050041, 54.952579>,  <36.558807, 43.851585, 54.989090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499588, 43.050041, 54.952579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148758, 43.242146, 54.956089>,  <35.938259, 43.357410, 54.958195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148758, 43.242146, 54.956089>,  <36.499588, 43.050041, 54.952579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148758, 43.242146, 54.956089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347767, -0.622292, -0.701293,
		-0.331345, -0.618142, 0.712819,
		-0.877080, 0.480265, 0.008776,
		35.885635, 43.386227, 54.958721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034668, 42.539581, 54.883190>,  <36.499588, 43.050041, 54.952579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034668, 42.539581, 54.883190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852077, 42.874802, 54.763657>,  <35.742523, 43.075935, 54.691936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852077, 42.874802, 54.763657>,  <36.034668, 42.539581, 54.883190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852077, 42.874802, 54.763657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381900, -0.487902, -0.784923,
		-0.803608, -0.244171, 0.542766,
		-0.456472, 0.838053, -0.298833,
		35.715137, 43.126217, 54.674007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394783, 42.327835, 54.709675>,  <36.034668, 42.539581, 54.883190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394783, 42.327835, 54.709675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450081, 42.681190, 54.530560>,  <35.483261, 42.893204, 54.423092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450081, 42.681190, 54.530560>,  <35.394783, 42.327835, 54.709675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450081, 42.681190, 54.530560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374651, -0.371883, -0.849317,
		-0.916801, 0.285178, 0.279551,
		0.138246, 0.883389, -0.447785,
		35.491554, 42.946209, 54.396225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854244, 42.347885, 54.133205>,  <35.394783, 42.327835, 54.709675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854244, 42.347885, 54.133205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119019, 42.633976, 54.043503>,  <35.277882, 42.805630, 53.989681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119019, 42.633976, 54.043503>,  <34.854244, 42.347885, 54.133205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119019, 42.633976, 54.043503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196438, -0.123201, -0.972746,
		-0.723362, 0.687948, 0.058946,
		0.661936, 0.715226, -0.224258,
		35.317600, 42.848545, 53.976227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550201, 42.809780, 53.648449>,  <34.854244, 42.347885, 54.133205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550201, 42.809780, 53.648449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948410, 42.831104, 53.617226>,  <35.187336, 42.843899, 53.598492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948410, 42.831104, 53.617226>,  <34.550201, 42.809780, 53.648449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948410, 42.831104, 53.617226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068761, -0.158194, -0.985011,
		-0.064858, 0.985968, -0.153820,
		0.995523, 0.053309, -0.078056,
		35.247066, 42.847095, 53.593807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610863, 43.137310, 53.043499>,  <34.550201, 42.809780, 53.648449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610863, 43.137310, 53.043499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979744, 42.994675, 53.103352>,  <35.201073, 42.909092, 53.139263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979744, 42.994675, 53.103352>,  <34.610863, 43.137310, 53.043499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979744, 42.994675, 53.103352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076752, -0.210451, -0.974587,
		0.379018, 0.910249, -0.166710,
		0.922201, -0.356590, 0.149628,
		35.256405, 42.887699, 53.148239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039101, 43.535137, 52.615822>,  <34.610863, 43.137310, 53.043499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039101, 43.535137, 52.615822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244331, 43.201511, 52.696892>,  <35.367470, 43.001335, 52.745533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244331, 43.201511, 52.696892>,  <35.039101, 43.535137, 52.615822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244331, 43.201511, 52.696892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054702, -0.203876, -0.977468,
		0.856597, 0.512605, -0.058980,
		0.513079, -0.834069, 0.202679,
		35.398254, 42.951290, 52.757694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743362, 43.634998, 52.390926>,  <35.039101, 43.535137, 52.615822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743362, 43.634998, 52.390926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681610, 43.240303, 52.410980>,  <35.644558, 43.003487, 52.423012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681610, 43.240303, 52.410980>,  <35.743362, 43.634998, 52.390926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681610, 43.240303, 52.410980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223237, -0.084270, -0.971115,
		0.962462, -0.138727, 0.233286,
		-0.154379, -0.986739, 0.050138,
		35.635296, 42.944283, 52.426022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402096, 43.264996, 52.091125>,  <35.743362, 43.634998, 52.390926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402096, 43.264996, 52.091125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092655, 43.017937, 52.034473>,  <35.906990, 42.869701, 52.000484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092655, 43.017937, 52.034473>,  <36.402096, 43.264996, 52.091125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092655, 43.017937, 52.034473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340460, -0.216623, -0.914965,
		0.534447, -0.756032, 0.377864,
		-0.773598, -0.617648, -0.141625,
		35.860577, 42.832642, 51.991985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702648, 42.748547, 51.836334>,  <36.402096, 43.264996, 52.091125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702648, 42.748547, 51.836334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316277, 42.685959, 51.753880>,  <36.084454, 42.648407, 51.704407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316277, 42.685959, 51.753880>,  <36.702648, 42.748547, 51.836334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316277, 42.685959, 51.753880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236438, -0.209660, -0.948757,
		0.105231, -0.965174, 0.239512,
		-0.965932, -0.156469, -0.206141,
		36.026497, 42.639019, 51.692036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697033, 42.167015, 51.493382>,  <36.702648, 42.748547, 51.836334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697033, 42.167015, 51.493382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334053, 42.306541, 51.399696>,  <36.116264, 42.390259, 51.343487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334053, 42.306541, 51.399696>,  <36.697033, 42.167015, 51.493382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334053, 42.306541, 51.399696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234126, -0.043061, -0.971252,
		-0.348878, -0.936200, -0.042592,
		-0.907452, 0.348820, -0.234212,
		36.061817, 42.411186, 51.329433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356133, 41.720425, 50.994408>,  <36.697033, 42.167015, 51.493382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356133, 41.720425, 50.994408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200115, 42.084282, 50.937248>,  <36.106506, 42.302597, 50.902954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200115, 42.084282, 50.937248>,  <36.356133, 41.720425, 50.994408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200115, 42.084282, 50.937248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079713, -0.121252, -0.989416,
		-0.917341, -0.397302, -0.025217,
		-0.390039, 0.909642, -0.142900,
		36.083103, 42.357174, 50.894379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912041, 41.618824, 50.421753>,  <36.356133, 41.720425, 50.994408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912041, 41.618824, 50.421753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915596, 42.018738, 50.414227>,  <35.917728, 42.258686, 50.409710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915596, 42.018738, 50.414227>,  <35.912041, 41.618824, 50.421753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915596, 42.018738, 50.414227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086473, -0.017976, -0.996092,
		-0.996214, 0.010477, 0.086295,
		0.008885, 0.999783, -0.018814,
		35.918262, 42.318672, 50.408581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361767, 41.830257, 50.003696>,  <35.912041, 41.618824, 50.421753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361767, 41.830257, 50.003696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590412, 42.157589, 49.979706>,  <35.727600, 42.353989, 49.965309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590412, 42.157589, 49.979706>,  <35.361767, 41.830257, 50.003696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590412, 42.157589, 49.979706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129381, 0.017709, -0.991437,
		-0.810258, 0.574479, 0.115998,
		0.571614, 0.818328, -0.059978,
		35.761898, 42.403088, 49.961712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982811, 42.296452, 49.574123>,  <35.361767, 41.830257, 50.003696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982811, 42.296452, 49.574123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370533, 42.394608, 49.568111>,  <35.603168, 42.453499, 49.564503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370533, 42.394608, 49.568111>,  <34.982811, 42.296452, 49.574123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370533, 42.394608, 49.568111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054755, 0.155863, -0.986260,
		-0.239671, 0.956814, 0.164516,
		0.969309, 0.245386, -0.015035,
		35.661327, 42.468224, 49.563602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014893, 42.833561, 49.132538>,  <34.982811, 42.296452, 49.574123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014893, 42.833561, 49.132538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380711, 42.672089, 49.122372>,  <35.600201, 42.575207, 49.116272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380711, 42.672089, 49.122372>,  <35.014893, 42.833561, 49.132538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380711, 42.672089, 49.122372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006099, 0.049057, -0.998777,
		0.404432, 0.913585, 0.042403,
		0.914548, -0.403679, -0.025413,
		35.655075, 42.550983, 49.114746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345661, 43.262234, 48.617085>,  <35.014893, 42.833561, 49.132538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345661, 43.262234, 48.617085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542912, 42.915226, 48.643139>,  <35.661263, 42.707024, 48.658772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542912, 42.915226, 48.643139>,  <35.345661, 43.262234, 48.617085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542912, 42.915226, 48.643139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032447, -0.056484, -0.997876,
		0.869353, 0.494191, 0.000295,
		0.493124, -0.867517, 0.065139,
		35.690849, 42.654972, 48.662682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774956, 43.235306, 47.959885>,  <35.345661, 43.262234, 48.617085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774956, 43.235306, 47.959885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758163, 42.862114, 48.102871>,  <35.748089, 42.638199, 48.188663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758163, 42.862114, 48.102871>,  <35.774956, 43.235306, 47.959885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758163, 42.862114, 48.102871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054868, -0.355084, -0.933223,
		0.997611, -0.058793, -0.036283,
		-0.041983, -0.932984, 0.357462,
		35.745567, 42.582218, 48.210110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224110, 42.851452, 47.575657>,  <35.774956, 43.235306, 47.959885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224110, 42.851452, 47.575657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953827, 42.582760, 47.697113>,  <35.791656, 42.421547, 47.769989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953827, 42.582760, 47.697113>,  <36.224110, 42.851452, 47.575657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953827, 42.582760, 47.697113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091850, -0.331979, -0.938804,
		0.731423, -0.662249, 0.162623,
		-0.675710, -0.671726, 0.303645,
		35.751114, 42.381241, 47.788208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.062149, 31.712473, 42.305622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140457, 31.840466, 42.676414>,  <44.187443, 31.917261, 42.898888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140457, 31.840466, 42.676414>,  <44.062149, 31.712473, 42.305622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140457, 31.840466, 42.676414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211857, 0.909146, -0.358566,
		-0.957493, 0.266582, 0.110190,
		0.195766, 0.319980, 0.926978,
		44.199188, 31.936460, 42.954510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588490, 32.198437, 42.529617>,  <44.062149, 31.712473, 42.305622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588490, 32.198437, 42.529617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950592, 32.256947, 42.689171>,  <44.167854, 32.292053, 42.784904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950592, 32.256947, 42.689171>,  <43.588490, 32.198437, 42.529617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950592, 32.256947, 42.689171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102010, 0.836564, -0.538288,
		-0.412435, 0.527980, 0.742384,
		0.905258, 0.146278, 0.398888,
		44.222168, 32.300831, 42.808838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592190, 32.871510, 42.686707>,  <43.588490, 32.198437, 42.529617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592190, 32.871510, 42.686707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989616, 32.827618, 42.697956>,  <44.228073, 32.801281, 42.704704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989616, 32.827618, 42.697956>,  <43.592190, 32.871510, 42.686707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989616, 32.827618, 42.697956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108401, 0.848938, -0.517256,
		0.032883, 0.516976, 0.855368,
		0.993563, -0.109732, 0.028125,
		44.287685, 32.794697, 42.706394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861702, 33.611176, 42.696430>,  <43.592190, 32.871510, 42.686707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861702, 33.611176, 42.696430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190899, 33.404472, 42.602074>,  <44.388416, 33.280453, 42.545460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190899, 33.404472, 42.602074>,  <43.861702, 33.611176, 42.696430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190899, 33.404472, 42.602074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325488, 0.769320, -0.549731,
		0.465549, 0.375648, 0.801344,
		0.822996, -0.516755, -0.235887,
		44.437798, 33.249447, 42.531307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305664, 34.117584, 42.657928>,  <43.861702, 33.611176, 42.696430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305664, 34.117584, 42.657928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494041, 33.832462, 42.450035>,  <44.607067, 33.661388, 42.325298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494041, 33.832462, 42.450035>,  <44.305664, 34.117584, 42.657928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494041, 33.832462, 42.450035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427611, 0.699767, -0.572254,
		0.771596, 0.047257, 0.634355,
		0.470944, -0.712806, -0.519730,
		44.635323, 33.618622, 42.294117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948986, 34.388180, 42.615582>,  <44.305664, 34.117584, 42.657928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948986, 34.388180, 42.615582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922253, 34.138668, 42.304085>,  <44.906212, 33.988960, 42.117188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922253, 34.138668, 42.304085>,  <44.948986, 34.388180, 42.615582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922253, 34.138668, 42.304085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440577, 0.681824, -0.583960,
		0.895223, -0.382124, 0.229252,
		-0.066836, -0.623777, -0.778739,
		44.902203, 33.951534, 42.070461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573860, 34.532013, 42.230057>,  <44.948986, 34.388180, 42.615582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573860, 34.532013, 42.230057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302021, 34.378841, 41.979774>,  <45.138916, 34.286938, 41.829605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302021, 34.378841, 41.979774>,  <45.573860, 34.532013, 42.230057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302021, 34.378841, 41.979774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189606, 0.732273, -0.654084,
		0.708661, -0.563150, -0.425042,
		-0.679594, -0.382933, -0.625710,
		45.098141, 34.263962, 41.792061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908554, 34.419189, 41.594635>,  <45.573860, 34.532013, 42.230057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908554, 34.419189, 41.594635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.518517, 34.408840, 41.506523>,  <45.284492, 34.402630, 41.453655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.518517, 34.408840, 41.506523>,  <45.908554, 34.419189, 41.594635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518517, 34.408840, 41.506523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139908, 0.698881, -0.701421,
		0.172098, -0.714770, -0.677855,
		-0.975094, -0.025876, -0.220278,
		45.225990, 34.401077, 41.440441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999294, 34.472084, 40.914158>,  <45.908554, 34.419189, 41.594635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999294, 34.472084, 40.914158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612198, 34.543251, 40.985519>,  <45.379940, 34.585953, 41.028336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612198, 34.543251, 40.985519>,  <45.999294, 34.472084, 40.914158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612198, 34.543251, 40.985519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002329, 0.714362, -0.699772,
		-0.251947, -0.676781, -0.691730,
		-0.967738, 0.177917, 0.178405,
		45.321877, 34.596626, 41.039040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627098, 34.555450, 40.312042>,  <45.999294, 34.472084, 40.914158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627098, 34.555450, 40.312042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382675, 34.774628, 40.540558>,  <45.236023, 34.906132, 40.677670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382675, 34.774628, 40.540558>,  <45.627098, 34.555450, 40.312042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382675, 34.774628, 40.540558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255657, 0.546421, -0.797536,
		-0.749167, -0.633393, -0.193809,
		-0.611055, 0.547939, 0.571292,
		45.199360, 34.939011, 40.711945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953999, 34.541092, 40.034657>,  <45.627098, 34.555450, 40.312042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953999, 34.541092, 40.034657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950493, 34.878922, 40.248802>,  <44.948387, 35.081619, 40.377289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950493, 34.878922, 40.248802>,  <44.953999, 34.541092, 40.034657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950493, 34.878922, 40.248802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149840, 0.528232, -0.835774,
		-0.988671, -0.087546, 0.121920,
		-0.008767, 0.844575, 0.535366,
		44.947865, 35.132294, 40.409412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518410, 35.013241, 39.722393>,  <44.953999, 34.541092, 40.034657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518410, 35.013241, 39.722393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739674, 35.260265, 39.946049>,  <44.872433, 35.408478, 40.080242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739674, 35.260265, 39.946049>,  <44.518410, 35.013241, 39.722393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739674, 35.260265, 39.946049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167860, 0.740031, -0.651289,
		-0.815988, 0.266411, 0.513020,
		0.553161, 0.617559, 0.559137,
		44.905621, 35.445534, 40.113789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158710, 35.604565, 39.732296>,  <44.518410, 35.013241, 39.722393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158710, 35.604565, 39.732296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516968, 35.736034, 39.852161>,  <44.731922, 35.814915, 39.924080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516968, 35.736034, 39.852161>,  <44.158710, 35.604565, 39.732296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516968, 35.736034, 39.852161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092365, 0.796499, -0.597543,
		-0.435080, 0.507506, 0.743736,
		0.895642, 0.328674, 0.299665,
		44.785660, 35.834637, 39.942062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056404, 36.247475, 39.864208>,  <44.158710, 35.604565, 39.732296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056404, 36.247475, 39.864208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453136, 36.253761, 39.813576>,  <44.691177, 36.257534, 39.783195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453136, 36.253761, 39.813576>,  <44.056404, 36.247475, 39.864208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453136, 36.253761, 39.813576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086536, 0.811984, -0.577229,
		0.093712, 0.583468, 0.806711,
		0.991831, 0.015716, -0.126584,
		44.750687, 36.258476, 39.775600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191597, 36.851471, 39.706482>,  <44.056404, 36.247475, 39.864208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191597, 36.851471, 39.706482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542797, 36.709274, 39.578270>,  <44.753517, 36.623955, 39.501343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542797, 36.709274, 39.578270>,  <44.191597, 36.851471, 39.706482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542797, 36.709274, 39.578270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017468, 0.692985, -0.720741,
		0.478340, 0.627212, 0.614651,
		0.878001, -0.355496, -0.320526,
		44.806198, 36.602627, 39.482113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587444, 37.392342, 39.537525>,  <44.191597, 36.851471, 39.706482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587444, 37.392342, 39.537525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780392, 37.117676, 39.319973>,  <44.896160, 36.952877, 39.189442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780392, 37.117676, 39.319973>,  <44.587444, 37.392342, 39.537525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780392, 37.117676, 39.319973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007978, 0.617423, -0.786591,
		0.875930, 0.383768, 0.292349,
		0.482372, -0.686666, -0.543882,
		44.925102, 36.911674, 39.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052166, 37.769833, 39.125759>,  <44.587444, 37.392342, 39.537525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052166, 37.769833, 39.125759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.987190, 37.434040, 38.918343>,  <44.948204, 37.232567, 38.793892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.987190, 37.434040, 38.918343>,  <45.052166, 37.769833, 39.125759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987190, 37.434040, 38.918343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099840, 0.536811, -0.837774,
		0.981654, -0.084317, -0.171014,
		-0.162441, -0.839479, -0.518544,
		44.938457, 37.182198, 38.762779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389652, 37.974773, 38.521816>,  <45.052166, 37.769833, 39.125759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389652, 37.974773, 38.521816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125637, 37.684380, 38.444565>,  <44.967228, 37.510143, 38.398212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125637, 37.684380, 38.444565>,  <45.389652, 37.974773, 38.521816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125637, 37.684380, 38.444565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185923, 0.406943, -0.894332,
		0.727866, -0.554382, -0.403574,
		-0.660034, -0.725987, -0.193128,
		44.927628, 37.466583, 38.386627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591286, 37.763348, 37.815357>,  <45.389652, 37.974773, 38.521816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591286, 37.763348, 37.815357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228771, 37.601631, 37.864670>,  <45.011261, 37.504601, 37.894257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228771, 37.601631, 37.864670>,  <45.591286, 37.763348, 37.815357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228771, 37.601631, 37.864670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234950, 0.239417, -0.942060,
		0.351352, -0.882739, -0.311968,
		-0.906284, -0.404292, 0.123280,
		44.956886, 37.480343, 37.901653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428543, 37.514019, 37.229767>,  <45.591286, 37.763348, 37.815357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428543, 37.514019, 37.229767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063606, 37.523861, 37.393242>,  <44.844643, 37.529766, 37.491325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063606, 37.523861, 37.393242>,  <45.428543, 37.514019, 37.229767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063606, 37.523861, 37.393242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407065, 0.052596, -0.911884,
		-0.043936, -0.998313, -0.037968,
		-0.912342, 0.024609, 0.408689,
		44.789902, 37.531242, 37.515850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030445, 36.984745, 36.941280>,  <45.428543, 37.514019, 37.229767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030445, 36.984745, 36.941280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773487, 37.252655, 37.090260>,  <44.619312, 37.413403, 37.179649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773487, 37.252655, 37.090260>,  <45.030445, 36.984745, 36.941280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773487, 37.252655, 37.090260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466701, 0.043584, -0.883341,
		-0.607876, -0.741280, 0.284588,
		-0.642400, 0.669779, 0.372450,
		44.580769, 37.453590, 37.201996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389870, 36.899467, 36.733479>,  <45.030445, 36.984745, 36.941280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389870, 36.899467, 36.733479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365955, 37.287415, 36.827946>,  <44.351604, 37.520184, 36.884624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365955, 37.287415, 36.827946>,  <44.389870, 36.899467, 36.733479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365955, 37.287415, 36.827946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454194, 0.184245, -0.871643,
		-0.888894, -0.159379, 0.429494,
		-0.059789, 0.969872, 0.236163,
		44.348019, 37.578377, 36.898796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726452, 37.197739, 36.081970>,  <44.389870, 36.899467, 36.733479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726452, 37.197739, 36.081970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.071201, 37.018612, 35.986778>,  <45.278049, 36.911137, 35.929661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.071201, 37.018612, 35.986778>,  <44.726452, 37.197739, 36.081970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071201, 37.018612, 35.986778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406712, -0.890696, 0.203090,
		-0.302918, -0.078247, -0.949799,
		0.861874, -0.447814, -0.237984,
		45.329765, 36.884266, 35.915382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557800, 36.564926, 35.661057>,  <44.726452, 37.197739, 36.081970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557800, 36.564926, 35.661057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921421, 36.502583, 35.815628>,  <45.139595, 36.465176, 35.908371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921421, 36.502583, 35.815628>,  <44.557800, 36.564926, 35.661057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921421, 36.502583, 35.815628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259243, -0.937611, 0.231687,
		0.326211, -0.310796, -0.892744,
		0.909054, -0.155859, 0.386431,
		45.194138, 36.455826, 35.931557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695892, 35.844257, 35.479282>,  <44.557800, 36.564926, 35.661057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695892, 35.844257, 35.479282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919735, 35.947407, 35.794331>,  <45.054039, 36.009296, 35.983360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919735, 35.947407, 35.794331>,  <44.695892, 35.844257, 35.479282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919735, 35.947407, 35.794331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266274, -0.844025, 0.465533,
		0.784819, -0.470236, -0.403655,
		0.559605, 0.257876, 0.787618,
		45.087616, 36.024769, 36.030617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119389, 35.231922, 35.661915>,  <44.695892, 35.844257, 35.479282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119389, 35.231922, 35.661915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097630, 35.446899, 35.998531>,  <45.084576, 35.575886, 36.200500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097630, 35.446899, 35.998531>,  <45.119389, 35.231922, 35.661915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097630, 35.446899, 35.998531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213055, -0.829629, 0.516065,
		0.975525, -0.151225, 0.159632,
		-0.054393, 0.537445, 0.841543,
		45.081310, 35.608131, 36.250996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326900, 34.851871, 36.257568>,  <45.119389, 35.231922, 35.661915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326900, 34.851871, 36.257568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141277, 35.145283, 36.456200>,  <45.029903, 35.321331, 36.575378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141277, 35.145283, 36.456200>,  <45.326900, 34.851871, 36.257568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141277, 35.145283, 36.456200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309517, -0.659534, 0.684992,
		0.829972, 0.164173, 0.533098,
		-0.464054, 0.733527, 0.496581,
		45.002060, 35.365341, 36.605175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343498, 34.520763, 36.841396>,  <45.326900, 34.851871, 36.257568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343498, 34.520763, 36.841396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100262, 34.836132, 36.878510>,  <44.954319, 35.025352, 36.900776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100262, 34.836132, 36.878510>,  <45.343498, 34.520763, 36.841396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100262, 34.836132, 36.878510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405348, -0.408852, 0.817639,
		0.682579, 0.459594, 0.568207,
		-0.608094, 0.788424, 0.092778,
		44.917835, 35.072659, 36.906342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204849, 34.723564, 37.690861>,  <45.343498, 34.520763, 36.841396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204849, 34.723564, 37.690861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894093, 34.868710, 37.485039>,  <44.707638, 34.955795, 37.361546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894093, 34.868710, 37.485039>,  <45.204849, 34.723564, 37.690861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894093, 34.868710, 37.485039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629435, -0.427307, 0.649015,
		0.015628, 0.828096, 0.560369,
		-0.776896, 0.362859, -0.514555,
		44.661022, 34.977566, 37.330673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724304, 34.869305, 38.259102>,  <45.204849, 34.723564, 37.690861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724304, 34.869305, 38.259102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.508610, 34.870811, 37.922241>,  <44.379192, 34.871716, 37.720127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.508610, 34.870811, 37.922241>,  <44.724304, 34.869305, 38.259102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508610, 34.870811, 37.922241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803913, -0.300231, 0.513406,
		-0.250905, 0.953859, 0.164924,
		-0.539232, 0.003769, -0.842149,
		44.346840, 34.871941, 37.669598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075062, 35.230045, 38.425385>,  <44.724304, 34.869305, 38.259102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075062, 35.230045, 38.425385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.019920, 34.978580, 38.119240>,  <43.986835, 34.827702, 37.935555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.019920, 34.978580, 38.119240>,  <44.075062, 35.230045, 38.425385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019920, 34.978580, 38.119240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631631, -0.539415, 0.556843,
		-0.762915, 0.560188, -0.322724,
		-0.137855, -0.628666, -0.765359,
		43.978565, 34.789982, 37.889633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350204, 35.209938, 38.250687>,  <44.075062, 35.230045, 38.425385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350204, 35.209938, 38.250687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519722, 34.885452, 38.089527>,  <43.621433, 34.690762, 37.992832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519722, 34.885452, 38.089527>,  <43.350204, 35.209938, 38.250687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519722, 34.885452, 38.089527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641420, -0.582859, 0.498854,
		-0.639512, 0.047016, -0.767342,
		0.423798, -0.811212, -0.402903,
		43.646862, 34.642090, 37.968655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829876, 34.811928, 38.091076>,  <43.350204, 35.209938, 38.250687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829876, 34.811928, 38.091076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153679, 34.583046, 38.143658>,  <43.347961, 34.445717, 38.175205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153679, 34.583046, 38.143658>,  <42.829876, 34.811928, 38.091076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153679, 34.583046, 38.143658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481557, -0.519023, 0.706200,
		-0.335866, -0.634975, -0.695702,
		0.809504, -0.572209, 0.131454,
		43.396530, 34.411385, 38.183094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557640, 34.227200, 38.176010>,  <42.829876, 34.811928, 38.091076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557640, 34.227200, 38.176010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.936596, 34.151150, 38.279018>,  <43.163967, 34.105522, 38.340824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.936596, 34.151150, 38.279018>,  <42.557640, 34.227200, 38.176010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936596, 34.151150, 38.279018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319520, -0.609926, 0.725188,
		0.019192, -0.769314, -0.638582,
		0.947385, -0.190121, 0.257517,
		43.220810, 34.094112, 38.356274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567574, 33.525768, 38.341995>,  <42.557640, 34.227200, 38.176010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567574, 33.525768, 38.341995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902542, 33.629654, 38.534355>,  <43.103523, 33.691986, 38.649773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902542, 33.629654, 38.534355>,  <42.567574, 33.525768, 38.341995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902542, 33.629654, 38.534355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254642, -0.593155, 0.763757,
		0.483608, -0.762047, -0.430589,
		0.837425, 0.259712, 0.480904,
		43.153770, 33.707569, 38.678627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905830, 32.966908, 38.546997>,  <42.567574, 33.525768, 38.341995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905830, 32.966908, 38.546997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.031067, 33.246178, 38.804531>,  <43.106209, 33.413738, 38.959053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.031067, 33.246178, 38.804531>,  <42.905830, 32.966908, 38.546997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031067, 33.246178, 38.804531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146772, -0.634210, 0.759102,
		0.938313, -0.332166, -0.096094,
		0.313092, 0.698172, 0.643840,
		43.124996, 33.455627, 38.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203857, 32.559456, 39.165169>,  <42.905830, 32.966908, 38.546997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203857, 32.559456, 39.165169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179470, 32.927448, 39.320049>,  <43.164837, 33.148243, 39.412979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179470, 32.927448, 39.320049>,  <43.203857, 32.559456, 39.165169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179470, 32.927448, 39.320049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270629, -0.388627, 0.880755,
		0.960751, -0.051087, 0.272667,
		-0.060971, 0.919978, 0.387200,
		43.161179, 33.203442, 39.436211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555012, 32.520748, 39.847385>,  <43.203857, 32.559456, 39.165169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555012, 32.520748, 39.847385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295174, 32.824841, 39.850674>,  <43.139271, 33.007298, 39.852646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295174, 32.824841, 39.850674>,  <43.555012, 32.520748, 39.847385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295174, 32.824841, 39.850674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281119, -0.250223, 0.926478,
		0.706397, 0.599526, 0.376261,
		-0.649596, 0.760235, 0.008219,
		43.100296, 33.052910, 39.853138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698334, 32.823311, 40.415760>,  <43.555012, 32.520748, 39.847385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698334, 32.823311, 40.415760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322834, 32.931690, 40.330585>,  <43.097534, 32.996719, 40.279480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322834, 32.931690, 40.330585>,  <43.698334, 32.823311, 40.415760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322834, 32.931690, 40.330585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314571, -0.421436, 0.850551,
		0.140714, 0.865436, 0.480854,
		-0.938746, 0.270947, -0.212939,
		43.041210, 33.012974, 40.266705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411781, 33.206451, 41.005844>,  <43.698334, 32.823311, 40.415760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411781, 33.206451, 41.005844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097389, 33.070404, 40.799324>,  <42.908756, 32.988777, 40.675411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097389, 33.070404, 40.799324>,  <43.411781, 33.206451, 41.005844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097389, 33.070404, 40.799324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235299, -0.607686, 0.758519,
		-0.571731, 0.717662, 0.397598,
		-0.785976, -0.340115, -0.516298,
		42.861595, 32.968369, 40.644436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883354, 33.202888, 41.447441>,  <43.411781, 33.206451, 41.005844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883354, 33.202888, 41.447441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780556, 32.953400, 41.152164>,  <42.718876, 32.803707, 40.974998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780556, 32.953400, 41.152164>,  <42.883354, 33.202888, 41.447441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780556, 32.953400, 41.152164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370482, -0.641902, 0.671345,
		-0.892579, 0.446017, -0.066114,
		-0.256993, -0.623723, -0.738190,
		42.703457, 32.766281, 40.930706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233437, 33.015209, 41.610081>,  <42.883354, 33.202888, 41.447441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233437, 33.015209, 41.610081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372353, 32.723778, 41.373920>,  <42.455700, 32.548920, 41.232224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372353, 32.723778, 41.373920>,  <42.233437, 33.015209, 41.610081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372353, 32.723778, 41.373920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282879, -0.681647, 0.674786,
		-0.894076, -0.067332, -0.442825,
		0.347286, -0.728576, -0.590398,
		42.476540, 32.505203, 41.196800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.205589, 41.020180, 43.661068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069706, 40.701622, 43.861206>,  <38.988174, 40.510487, 43.981289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069706, 40.701622, 43.861206>,  <39.205589, 41.020180, 43.661068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069706, 40.701622, 43.861206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105413, -0.560873, -0.821163,
		0.934604, -0.226214, 0.274485,
		-0.339710, -0.796397, 0.500349,
		38.967793, 40.462704, 44.011311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678432, 40.327312, 43.574944>,  <39.205589, 41.020180, 43.661068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678432, 40.327312, 43.574944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288177, 40.271229, 43.642445>,  <39.054024, 40.237579, 43.682945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288177, 40.271229, 43.642445>,  <39.678432, 40.327312, 43.574944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288177, 40.271229, 43.642445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046792, -0.618491, -0.784397,
		0.214346, -0.773182, 0.596862,
		-0.975636, -0.140205, 0.168750,
		38.995487, 40.229168, 43.693069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540501, 39.634872, 43.450539>,  <39.678432, 40.327312, 43.574944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540501, 39.634872, 43.450539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173370, 39.791161, 43.422462>,  <38.953091, 39.884933, 43.405617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173370, 39.791161, 43.422462>,  <39.540501, 39.634872, 43.450539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173370, 39.791161, 43.422462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232970, -0.673304, -0.701703,
		-0.321431, -0.627691, 0.709004,
		-0.917828, 0.390725, -0.070188,
		38.898022, 39.908379, 43.401405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173512, 39.068928, 43.182247>,  <39.540501, 39.634872, 43.450539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173512, 39.068928, 43.182247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941425, 39.389671, 43.125164>,  <38.802174, 39.582119, 43.090916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941425, 39.389671, 43.125164>,  <39.173512, 39.068928, 43.182247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941425, 39.389671, 43.125164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510026, -0.494324, -0.703930,
		-0.634998, -0.335648, 0.695786,
		-0.580217, 0.801863, -0.142705,
		38.767361, 39.630230, 43.082352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462212, 38.912266, 43.222916>,  <39.173512, 39.068928, 43.182247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462212, 38.912266, 43.222916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481571, 39.251629, 43.012066>,  <38.493187, 39.455246, 42.885555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481571, 39.251629, 43.012066>,  <38.462212, 38.912266, 43.222916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481571, 39.251629, 43.012066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481873, -0.442434, -0.756340,
		-0.874903, 0.290615, 0.387411,
		0.048400, 0.848407, -0.527126,
		38.496090, 39.506149, 42.853928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796490, 39.025749, 42.887360>,  <38.462212, 38.912266, 43.222916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796490, 39.025749, 42.887360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036522, 39.266785, 42.676918>,  <38.180542, 39.411407, 42.550652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036522, 39.266785, 42.676918>,  <37.796490, 39.025749, 42.887360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036522, 39.266785, 42.676918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409985, -0.333056, -0.849109,
		-0.686886, 0.725232, 0.047190,
		0.600084, 0.602588, -0.526105,
		38.216549, 39.447559, 42.519085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391933, 39.379654, 42.462337>,  <37.796490, 39.025749, 42.887360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391933, 39.379654, 42.462337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751160, 39.437565, 42.296196>,  <37.966694, 39.472309, 42.196510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751160, 39.437565, 42.296196>,  <37.391933, 39.379654, 42.462337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751160, 39.437565, 42.296196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368189, -0.269223, -0.889919,
		-0.240661, 0.952134, -0.188475,
		0.898064, 0.144775, -0.415357,
		38.020580, 39.480999, 42.171589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239964, 39.707649, 41.852547>,  <37.391933, 39.379654, 42.462337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239964, 39.707649, 41.852547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618454, 39.601620, 41.778355>,  <37.845547, 39.538002, 41.733841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618454, 39.601620, 41.778355>,  <37.239964, 39.707649, 41.852547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618454, 39.601620, 41.778355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225335, -0.128614, -0.965755,
		0.232137, 0.955613, -0.181427,
		0.946222, -0.265069, -0.185477,
		37.902321, 39.522099, 41.722713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416100, 39.991631, 41.187126>,  <37.239964, 39.707649, 41.852547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416100, 39.991631, 41.187126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698387, 39.713379, 41.240879>,  <37.867760, 39.546429, 41.273132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698387, 39.713379, 41.240879>,  <37.416100, 39.991631, 41.187126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698387, 39.713379, 41.240879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000789, -0.190443, -0.981698,
		0.708493, 0.692696, -0.134948,
		0.705718, -0.695632, 0.134381,
		37.910103, 39.504688, 41.281193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917400, 40.148041, 40.718899>,  <37.416100, 39.991631, 41.187126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917400, 40.148041, 40.718899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986866, 39.758801, 40.779457>,  <38.028545, 39.525257, 40.815792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986866, 39.758801, 40.779457>,  <37.917400, 40.148041, 40.718899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986866, 39.758801, 40.779457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191601, -0.117403, -0.974426,
		0.965986, 0.198234, 0.166058,
		0.173669, -0.973098, 0.151391,
		38.038967, 39.466869, 40.824875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523983, 39.971375, 40.385338>,  <37.917400, 40.148041, 40.718899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523983, 39.971375, 40.385338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332195, 39.624386, 40.438416>,  <38.217121, 39.416195, 40.470264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332195, 39.624386, 40.438416>,  <38.523983, 39.971375, 40.385338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332195, 39.624386, 40.438416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171012, -0.240673, -0.955422,
		0.860735, -0.435403, 0.263743,
		-0.479469, -0.867468, 0.132696,
		38.188354, 39.364147, 40.478226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995392, 39.416645, 40.222134>,  <38.523983, 39.971375, 40.385338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995392, 39.416645, 40.222134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618877, 39.286968, 40.184429>,  <38.392971, 39.209164, 40.161808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618877, 39.286968, 40.184429>,  <38.995392, 39.416645, 40.222134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618877, 39.286968, 40.184429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190768, -0.280370, -0.940744,
		0.278553, -0.903490, 0.325753,
		-0.941284, -0.324190, -0.094259,
		38.336491, 39.189713, 40.156151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936749, 38.696407, 39.962414>,  <38.995392, 39.416645, 40.222134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936749, 38.696407, 39.962414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599949, 38.898239, 39.886059>,  <38.397869, 39.019341, 39.840248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599949, 38.898239, 39.886059>,  <38.936749, 38.696407, 39.962414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599949, 38.898239, 39.886059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154851, -0.112889, -0.981467,
		-0.516779, -0.855951, 0.016917,
		-0.841998, 0.504582, -0.190884,
		38.347351, 39.049614, 39.828793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585468, 38.527912, 40.020100>,  <38.936749, 38.696407, 39.962414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585468, 38.527912, 40.020100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884712, 38.661625, 39.790810>,  <40.064259, 38.741852, 39.653236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884712, 38.661625, 39.790810>,  <39.585468, 38.527912, 40.020100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884712, 38.661625, 39.790810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612982, -0.678973, 0.404040,
		-0.254144, -0.653644, -0.712854,
		0.748107, 0.334282, -0.573229,
		40.109146, 38.761909, 39.618839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881889, 37.955173, 39.856007>,  <39.585468, 38.527912, 40.020100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881889, 37.955173, 39.856007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177700, 38.211945, 39.774990>,  <40.355186, 38.366009, 39.726379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177700, 38.211945, 39.774990>,  <39.881889, 37.955173, 39.856007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177700, 38.211945, 39.774990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673031, -0.710207, 0.206482,
		-0.011299, -0.289016, -0.957257,
		0.739528, 0.641931, -0.202542,
		40.399559, 38.404526, 39.714226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978737, 37.686825, 39.082699>,  <39.881889, 37.955173, 39.856007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978737, 37.686825, 39.082699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295410, 37.793285, 39.302662>,  <40.485416, 37.857162, 39.434639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295410, 37.793285, 39.302662>,  <39.978737, 37.686825, 39.082699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295410, 37.793285, 39.302662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516420, -0.189372, 0.835134,
		0.326412, -0.945145, -0.012475,
		0.791685, 0.266155, 0.549906,
		40.532917, 37.873131, 39.467632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880936, 37.247494, 39.673256>,  <39.978737, 37.686825, 39.082699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880936, 37.247494, 39.673256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159363, 37.495041, 39.818855>,  <40.326420, 37.643570, 39.906216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159363, 37.495041, 39.818855>,  <39.880936, 37.247494, 39.673256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159363, 37.495041, 39.818855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347957, -0.152691, 0.924993,
		0.628024, -0.770515, 0.109054,
		0.696069, 0.618864, 0.364000,
		40.368183, 37.680698, 39.928055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293926, 36.923447, 40.135159>,  <39.880936, 37.247494, 39.673256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293926, 36.923447, 40.135159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313305, 37.310764, 40.233189>,  <40.324932, 37.543156, 40.292007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313305, 37.310764, 40.233189>,  <40.293926, 36.923447, 40.135159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313305, 37.310764, 40.233189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084896, -0.240480, 0.966934,
		0.995211, -0.067652, 0.070553,
		0.048449, 0.968293, 0.245072,
		40.327839, 37.601254, 40.306709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790379, 36.934929, 40.688614>,  <40.293926, 36.923447, 40.135159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790379, 36.934929, 40.688614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572277, 37.267578, 40.730736>,  <40.441414, 37.467167, 40.756008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572277, 37.267578, 40.730736>,  <40.790379, 36.934929, 40.688614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572277, 37.267578, 40.730736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170045, -0.232746, 0.957556,
		0.820840, 0.504208, 0.268321,
		-0.545258, 0.831627, 0.105309,
		40.408699, 37.517067, 40.762329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991032, 37.229843, 41.333939>,  <40.790379, 36.934929, 40.688614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991032, 37.229843, 41.333939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654812, 37.436623, 41.269142>,  <40.453079, 37.560692, 41.230263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654812, 37.436623, 41.269142>,  <40.991032, 37.229843, 41.333939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654812, 37.436623, 41.269142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294245, -0.184589, 0.937735,
		0.454861, 0.835876, 0.307266,
		-0.840548, 0.516950, -0.161990,
		40.402649, 37.591709, 41.220547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916634, 37.724251, 41.952709>,  <40.991032, 37.229843, 41.333939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916634, 37.724251, 41.952709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544701, 37.722824, 41.805527>,  <40.321541, 37.721970, 41.717216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544701, 37.722824, 41.805527>,  <40.916634, 37.724251, 41.952709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544701, 37.722824, 41.805527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366389, 0.101683, 0.924889,
		0.034120, 0.994811, -0.095854,
		-0.929836, -0.003563, -0.367957,
		40.265751, 37.721756, 41.695141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491600, 38.257446, 42.295662>,  <40.916634, 37.724251, 41.952709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491600, 38.257446, 42.295662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200264, 38.032230, 42.139454>,  <40.025459, 37.897102, 42.045731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200264, 38.032230, 42.139454>,  <40.491600, 38.257446, 42.295662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200264, 38.032230, 42.139454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474135, 0.002667, 0.880448,
		-0.494682, 0.826429, -0.268897,
		-0.728345, -0.563035, -0.390519,
		39.981762, 37.863319, 42.022297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875507, 38.603031, 42.409088>,  <40.491600, 38.257446, 42.295662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875507, 38.603031, 42.409088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783005, 38.215881, 42.369625>,  <39.727505, 37.983589, 42.345947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783005, 38.215881, 42.369625>,  <39.875507, 38.603031, 42.409088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783005, 38.215881, 42.369625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596185, 0.060848, 0.800538,
		-0.768821, 0.243943, -0.591106,
		-0.231253, -0.967879, -0.098654,
		39.713631, 37.925518, 42.340031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126133, 38.545685, 42.364452>,  <39.875507, 38.603031, 42.409088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126133, 38.545685, 42.364452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231289, 38.176865, 42.478088>,  <39.294384, 37.955570, 42.546272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231289, 38.176865, 42.478088>,  <39.126133, 38.545685, 42.364452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231289, 38.176865, 42.478088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557337, 0.095226, 0.824808,
		-0.787569, -0.375168, -0.488860,
		0.262889, -0.922053, 0.284092,
		39.310154, 37.900249, 42.563316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532299, 38.217644, 42.756203>,  <39.126133, 38.545685, 42.364452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532299, 38.217644, 42.756203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844952, 37.994354, 42.867516>,  <39.032543, 37.860382, 42.934303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844952, 37.994354, 42.867516>,  <38.532299, 38.217644, 42.756203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844952, 37.994354, 42.867516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350981, -0.024807, 0.936054,
		-0.515620, -0.829323, -0.215314,
		0.781632, -0.558219, 0.278285,
		39.079441, 37.826889, 42.951000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235416, 37.753822, 43.193996>,  <38.532299, 38.217644, 42.756203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235416, 37.753822, 43.193996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619339, 37.732281, 43.304173>,  <38.849693, 37.719357, 43.370277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619339, 37.732281, 43.304173>,  <38.235416, 37.753822, 43.193996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619339, 37.732281, 43.304173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279785, -0.106301, 0.954160,
		-0.022105, -0.992874, -0.117096,
		0.959808, -0.053854, 0.275441,
		38.907280, 37.716122, 43.386806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243122, 37.128014, 43.555077>,  <38.235416, 37.753822, 43.193996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243122, 37.128014, 43.555077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550797, 37.358906, 43.664738>,  <38.735401, 37.497440, 43.730534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550797, 37.358906, 43.664738>,  <38.243122, 37.128014, 43.555077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550797, 37.358906, 43.664738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202058, -0.187309, 0.961295,
		0.606241, -0.794808, -0.027441,
		0.769184, 0.577231, 0.274152,
		38.781551, 37.532074, 43.746983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483391, 36.809746, 44.143433>,  <38.243122, 37.128014, 43.555077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483391, 36.809746, 44.143433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640331, 37.176678, 44.170467>,  <38.734493, 37.396835, 44.186687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640331, 37.176678, 44.170467>,  <38.483391, 36.809746, 44.143433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640331, 37.176678, 44.170467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035726, -0.088617, 0.995425,
		0.919123, -0.388139, -0.067541,
		0.392348, 0.917330, 0.067583,
		38.758038, 37.451878, 44.190742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018120, 36.241493, 44.277615>,  <38.483391, 36.809746, 44.143433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018120, 36.241493, 44.277615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685654, 36.019199, 44.284775>,  <38.486176, 35.885822, 44.289070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685654, 36.019199, 44.284775>,  <39.018120, 36.241493, 44.277615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685654, 36.019199, 44.284775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002660, -0.036169, -0.999342,
		0.556019, -0.830571, 0.031541,
		-0.831166, -0.555737, 0.017901,
		38.436302, 35.852478, 44.290146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150845, 35.796638, 43.794735>,  <39.018120, 36.241493, 44.277615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150845, 35.796638, 43.794735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755871, 35.761501, 43.847279>,  <38.518887, 35.740421, 43.878803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755871, 35.761501, 43.847279>,  <39.150845, 35.796638, 43.794735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755871, 35.761501, 43.847279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135232, 0.039697, -0.990018,
		0.081753, -0.995343, -0.051077,
		-0.987436, -0.087844, 0.131357,
		38.459641, 35.735149, 43.886684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981251, 35.450489, 43.227791>,  <39.150845, 35.796638, 43.794735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981251, 35.450489, 43.227791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616013, 35.549850, 43.357124>,  <38.396870, 35.609467, 43.434723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616013, 35.549850, 43.357124>,  <38.981251, 35.450489, 43.227791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616013, 35.549850, 43.357124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358715, -0.112427, -0.926652,
		-0.193842, -0.962108, 0.191767,
		-0.913098, 0.248413, 0.323330,
		38.342083, 35.624374, 43.454124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541409, 35.046494, 42.883312>,  <38.981251, 35.450489, 43.227791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541409, 35.046494, 42.883312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316990, 35.355949, 43.001102>,  <38.182339, 35.541622, 43.071777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316990, 35.355949, 43.001102>,  <38.541409, 35.046494, 42.883312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316990, 35.355949, 43.001102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518473, -0.051093, -0.853566,
		-0.645304, -0.631566, 0.429775,
		-0.561042, 0.773637, 0.294480,
		38.148678, 35.588039, 43.089447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887203, 34.750359, 42.781689>,  <38.541409, 35.046494, 42.883312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887203, 34.750359, 42.781689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854069, 35.148960, 42.786007>,  <37.834187, 35.388123, 42.788597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854069, 35.148960, 42.786007>,  <37.887203, 34.750359, 42.781689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854069, 35.148960, 42.786007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657097, -0.046475, -0.752373,
		-0.749241, -0.069419, 0.658650,
		-0.082840, 0.996504, 0.010794,
		37.829216, 35.447910, 42.789246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227821, 34.928123, 42.748363>,  <37.887203, 34.750359, 42.781689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227821, 34.928123, 42.748363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410149, 35.255585, 42.608627>,  <37.519547, 35.452061, 42.524788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410149, 35.255585, 42.608627>,  <37.227821, 34.928123, 42.748363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410149, 35.255585, 42.608627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610039, 0.001545, -0.792370,
		-0.648135, 0.574289, 0.500114,
		0.455822, 0.818651, -0.349338,
		37.546894, 35.501179, 42.503826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720985, 35.431053, 42.776100>,  <37.227821, 34.928123, 42.748363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720985, 35.431053, 42.776100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987492, 35.551022, 42.503002>,  <37.147396, 35.623001, 42.339146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987492, 35.551022, 42.503002>,  <36.720985, 35.431053, 42.776100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987492, 35.551022, 42.503002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745659, 0.257034, -0.614757,
		-0.008888, 0.918686, 0.394889,
		0.666269, 0.299917, -0.682741,
		37.187374, 35.640995, 42.298180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470070, 36.070545, 42.519642>,  <36.720985, 35.431053, 42.776100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470070, 36.070545, 42.519642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722729, 35.914371, 42.251736>,  <36.874325, 35.820667, 42.090992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722729, 35.914371, 42.251736>,  <36.470070, 36.070545, 42.519642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722729, 35.914371, 42.251736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712883, 0.046991, -0.699706,
		0.304660, 0.919432, -0.248650,
		0.631648, -0.390431, -0.669764,
		36.912224, 35.797241, 42.050808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407684, 36.490387, 41.876423>,  <36.470070, 36.070545, 42.519642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407684, 36.490387, 41.876423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557381, 36.133633, 41.774841>,  <36.647198, 35.919582, 41.713890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557381, 36.133633, 41.774841>,  <36.407684, 36.490387, 41.876423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557381, 36.133633, 41.774841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621856, -0.038208, -0.782199,
		0.687926, 0.450652, -0.568921,
		0.374237, -0.891882, -0.253957,
		36.669651, 35.866070, 41.698654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565990, 36.558647, 41.179623>,  <36.407684, 36.490387, 41.876423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565990, 36.558647, 41.179623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546623, 36.163162, 41.236328>,  <36.535004, 35.925869, 41.270351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546623, 36.163162, 41.236328>,  <36.565990, 36.558647, 41.179623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546623, 36.163162, 41.236328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485170, -0.100784, -0.868592,
		0.873078, -0.110837, -0.474815,
		-0.048418, -0.988715, 0.141768,
		36.532097, 35.866547, 41.278858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681267, 36.223328, 40.587147>,  <36.565990, 36.558647, 41.179623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681267, 36.223328, 40.587147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517891, 35.897739, 40.752373>,  <36.419865, 35.702385, 40.851509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517891, 35.897739, 40.752373>,  <36.681267, 36.223328, 40.587147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517891, 35.897739, 40.752373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473788, -0.197750, -0.858149,
		0.780196, -0.546205, -0.304883,
		-0.408435, -0.813975, 0.413069,
		36.395359, 35.653545, 40.876293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726444, 35.713230, 40.111916>,  <36.681267, 36.223328, 40.587147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726444, 35.713230, 40.111916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419186, 35.665089, 40.363461>,  <36.234829, 35.636204, 40.514389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419186, 35.665089, 40.363461>,  <36.726444, 35.713230, 40.111916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419186, 35.665089, 40.363461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624108, -0.078570, -0.777377,
		0.142971, -0.989617, -0.014761,
		-0.768146, -0.120355, 0.628861,
		36.188744, 35.628983, 40.552120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.868828, 35.125916, 48.304604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493004, 35.135059, 48.167957>,  <38.267509, 35.140545, 48.085968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493004, 35.135059, 48.167957>,  <38.868828, 35.125916, 48.304604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493004, 35.135059, 48.167957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335382, -0.139317, -0.931724,
		-0.068886, -0.989984, 0.123232,
		-0.939560, 0.022853, -0.341620,
		38.211136, 35.141914, 48.065472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772873, 34.561447, 47.765644>,  <38.868828, 35.125916, 48.304604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772873, 34.561447, 47.765644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473858, 34.810123, 47.672096>,  <38.294449, 34.959328, 47.615967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473858, 34.810123, 47.672096>,  <38.772873, 34.561447, 47.765644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473858, 34.810123, 47.672096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172335, -0.158512, -0.972201,
		-0.641476, -0.767059, 0.011355,
		-0.747536, 0.621687, -0.233873,
		38.249596, 34.996628, 47.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472549, 34.329498, 47.052551>,  <38.772873, 34.561447, 47.765644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472549, 34.329498, 47.052551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331196, 34.702488, 47.082527>,  <38.246384, 34.926281, 47.100513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331196, 34.702488, 47.082527>,  <38.472549, 34.329498, 47.052551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331196, 34.702488, 47.082527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077358, 0.050707, -0.995713,
		-0.932276, -0.357662, 0.054215,
		-0.353380, 0.932474, 0.074941,
		38.225182, 34.982231, 47.105011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963764, 34.359077, 46.644527>,  <38.472549, 34.329498, 47.052551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963764, 34.359077, 46.644527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064655, 34.745007, 46.674164>,  <38.125191, 34.976566, 46.691948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064655, 34.745007, 46.674164>,  <37.963764, 34.359077, 46.644527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064655, 34.745007, 46.674164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023481, 0.082651, -0.996302,
		-0.967383, 0.249556, 0.043503,
		0.252229, 0.964827, 0.074095,
		38.140324, 35.034454, 46.696392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513264, 34.692104, 46.101162>,  <37.963764, 34.359077, 46.644527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513264, 34.692104, 46.101162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.822533, 34.929211, 46.191349>,  <38.008095, 35.071472, 46.245461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.822533, 34.929211, 46.191349>,  <37.513264, 34.692104, 46.101162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822533, 34.929211, 46.191349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130912, 0.198694, -0.971279,
		-0.620538, 0.780482, 0.076025,
		0.773172, 0.592763, 0.225471,
		38.054485, 35.107040, 46.258991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298954, 35.409554, 45.928722>,  <37.513264, 34.692104, 46.101162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298954, 35.409554, 45.928722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697556, 35.377167, 45.920399>,  <37.936714, 35.357735, 45.915405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697556, 35.377167, 45.920399>,  <37.298954, 35.409554, 45.928722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697556, 35.377167, 45.920399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002048, 0.225236, -0.974302,
		0.083571, 0.970934, 0.224282,
		0.996500, -0.080964, -0.020812,
		37.996506, 35.352879, 45.914154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460800, 36.034901, 45.610294>,  <37.298954, 35.409554, 45.928722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460800, 36.034901, 45.610294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781384, 35.799866, 45.565731>,  <37.973732, 35.658844, 45.538994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781384, 35.799866, 45.565731>,  <37.460800, 36.034901, 45.610294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781384, 35.799866, 45.565731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201182, 0.440307, -0.875017,
		0.563201, 0.678875, 0.471099,
		0.801455, -0.587587, -0.111404,
		38.021820, 35.623589, 45.532310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061352, 36.527012, 45.416618>,  <37.460800, 36.034901, 45.610294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061352, 36.527012, 45.416618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080029, 36.150127, 45.283916>,  <38.091236, 35.923996, 45.204296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080029, 36.150127, 45.283916>,  <38.061352, 36.527012, 45.416618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080029, 36.150127, 45.283916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016003, 0.332777, -0.942870,
		0.998781, 0.038715, 0.030617,
		0.046692, -0.942211, -0.331752,
		38.094036, 35.867466, 45.184391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676640, 36.552517, 44.878220>,  <38.061352, 36.527012, 45.416618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676640, 36.552517, 44.878220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484188, 36.210434, 44.801144>,  <38.368717, 36.005184, 44.754898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484188, 36.210434, 44.801144>,  <38.676640, 36.552517, 44.878220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484188, 36.210434, 44.801144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315188, 0.036347, -0.948333,
		0.818029, -0.517002, 0.252065,
		-0.481128, -0.855212, -0.192686,
		38.339851, 35.953869, 44.743340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377613, 36.839645, 44.635242>,  <38.676640, 36.552517, 44.878220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377613, 36.839645, 44.635242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183323, 37.189018, 44.649075>,  <39.066750, 37.398640, 44.657375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183323, 37.189018, 44.649075>,  <39.377613, 36.839645, 44.635242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183323, 37.189018, 44.649075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058971, -0.006726, 0.998237,
		0.872122, 0.486905, -0.048240,
		-0.485723, 0.873429, 0.034579,
		39.037605, 37.451046, 44.659447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798294, 37.225342, 45.046356>,  <39.377613, 36.839645, 44.635242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798294, 37.225342, 45.046356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460480, 37.438499, 45.067467>,  <39.257790, 37.566395, 45.080132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460480, 37.438499, 45.067467>,  <39.798294, 37.225342, 45.046356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460480, 37.438499, 45.067467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204590, 0.230017, 0.951438,
		0.494876, 0.814320, -0.303282,
		-0.844535, 0.532893, 0.052772,
		39.207119, 37.598366, 45.083298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930798, 37.880344, 45.447674>,  <39.798294, 37.225342, 45.046356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930798, 37.880344, 45.447674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.531628, 37.856804, 45.458134>,  <39.292126, 37.842682, 45.464409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.531628, 37.856804, 45.458134>,  <39.930798, 37.880344, 45.447674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531628, 37.856804, 45.458134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009475, 0.535826, 0.844275,
		-0.063694, 0.842275, -0.535272,
		-0.997924, -0.058847, 0.026149,
		39.232250, 37.839149, 45.465977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665443, 38.481026, 45.734341>,  <39.930798, 37.880344, 45.447674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665443, 38.481026, 45.734341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366379, 38.218613, 45.775574>,  <39.186939, 38.061165, 45.800312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366379, 38.218613, 45.775574>,  <39.665443, 38.481026, 45.734341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366379, 38.218613, 45.775574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150526, 0.318597, 0.935862,
		-0.646795, 0.684192, -0.336953,
		-0.747662, -0.656031, 0.103078,
		39.142078, 38.021805, 45.806496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067360, 38.857635, 45.975681>,  <39.665443, 38.481026, 45.734341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067360, 38.857635, 45.975681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004417, 38.477139, 46.081795>,  <38.966652, 38.248840, 46.145462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004417, 38.477139, 46.081795>,  <39.067360, 38.857635, 45.975681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004417, 38.477139, 46.081795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188101, 0.292587, 0.937556,
		-0.969462, 0.097630, -0.224970,
		-0.157357, -0.951242, 0.265287,
		38.957211, 38.191765, 46.161381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531319, 38.872425, 46.515560>,  <39.067360, 38.857635, 45.975681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531319, 38.872425, 46.515560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727062, 38.530106, 46.582653>,  <38.844509, 38.324715, 46.622910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727062, 38.530106, 46.582653>,  <38.531319, 38.872425, 46.515560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727062, 38.530106, 46.582653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024241, 0.205611, 0.978333,
		-0.871748, -0.474686, 0.121362,
		0.489355, -0.855802, 0.167734,
		38.873867, 38.273365, 46.632973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172932, 38.683289, 47.017944>,  <38.531319, 38.872425, 46.515560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172932, 38.683289, 47.017944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510258, 38.469624, 47.041588>,  <38.712654, 38.341423, 47.055775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510258, 38.469624, 47.041588>,  <38.172932, 38.683289, 47.017944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510258, 38.469624, 47.041588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002647, 0.114109, 0.993465,
		-0.537417, -0.837645, 0.097643,
		0.843313, -0.534164, 0.059107,
		38.763252, 38.309376, 47.059319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137768, 38.215988, 47.627831>,  <38.172932, 38.683289, 47.017944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137768, 38.215988, 47.627831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528133, 38.235363, 47.542740>,  <38.762352, 38.246986, 47.491688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528133, 38.235363, 47.542740>,  <38.137768, 38.215988, 47.627831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528133, 38.235363, 47.542740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177065, 0.393789, 0.901986,
		0.127457, -0.917924, 0.375726,
		0.975911, 0.048436, -0.212724,
		38.820908, 38.249893, 47.478924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471134, 38.029758, 48.331669>,  <38.137768, 38.215988, 47.627831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471134, 38.029758, 48.331669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759598, 38.171135, 48.093338>,  <38.932674, 38.255959, 47.950340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759598, 38.171135, 48.093338>,  <38.471134, 38.029758, 48.331669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759598, 38.171135, 48.093338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375780, 0.522975, 0.765040,
		0.582001, -0.775614, 0.244330,
		0.721155, 0.353440, -0.595832,
		38.975945, 38.277164, 47.914589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087425, 37.979633, 48.769001>,  <38.471134, 38.029758, 48.331669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087425, 37.979633, 48.769001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162685, 38.246677, 48.480862>,  <39.207840, 38.406902, 48.307980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162685, 38.246677, 48.480862>,  <39.087425, 37.979633, 48.769001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162685, 38.246677, 48.480862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390264, 0.622237, 0.678613,
		0.901274, -0.408806, -0.143470,
		0.188149, 0.667607, -0.720348,
		39.219131, 38.446960, 48.264759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770878, 38.180859, 48.790337>,  <39.087425, 37.979633, 48.769001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770878, 38.180859, 48.790337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570705, 38.472187, 48.603100>,  <39.450603, 38.646984, 48.490757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570705, 38.472187, 48.603100>,  <39.770878, 38.180859, 48.790337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570705, 38.472187, 48.603100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345867, 0.663827, 0.663106,
		0.793690, 0.169940, -0.584103,
		-0.500431, 0.728323, -0.468096,
		39.420574, 38.690685, 48.462669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314758, 38.752548, 48.777870>,  <39.770878, 38.180859, 48.790337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314758, 38.752548, 48.777870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935162, 38.870487, 48.733189>,  <39.707405, 38.941250, 48.706379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935162, 38.870487, 48.733189>,  <40.314758, 38.752548, 48.777870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935162, 38.870487, 48.733189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094421, 0.603781, 0.791539,
		0.300833, 0.740616, -0.600823,
		-0.948991, 0.294851, -0.111708,
		39.650463, 38.958942, 48.699677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377422, 39.453640, 48.983158>,  <40.314758, 38.752548, 48.777870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377422, 39.453640, 48.983158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985645, 39.373222, 48.989723>,  <39.750580, 39.324974, 48.993660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985645, 39.373222, 48.989723>,  <40.377422, 39.453640, 48.983158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985645, 39.373222, 48.989723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108612, 0.594191, 0.796957,
		-0.169970, 0.778794, -0.603813,
		-0.979446, -0.201040, 0.016408,
		39.691811, 39.312912, 48.994644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032524, 40.147476, 49.189850>,  <40.377422, 39.453640, 48.983158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032524, 40.147476, 49.189850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767265, 39.857121, 49.262863>,  <39.608109, 39.682907, 49.306671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767265, 39.857121, 49.262863>,  <40.032524, 40.147476, 49.189850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767265, 39.857121, 49.262863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181182, 0.392296, 0.901819,
		-0.726227, 0.564969, -0.391669,
		-0.663150, -0.725888, 0.182534,
		39.568321, 39.639355, 49.317623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.208981, 39.724712, 49.852859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584362, 39.590210, 49.821293>,  <33.809593, 39.509506, 49.802353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584362, 39.590210, 49.821293>,  <33.208981, 39.724712, 49.852859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584362, 39.590210, 49.821293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167059, -0.241929, -0.955804,
		0.302305, 0.910165, -0.283215,
		0.938458, -0.336258, -0.078915,
		33.865898, 39.489334, 49.797619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417271, 40.000595, 49.232147>,  <33.208981, 39.724712, 49.852859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417271, 40.000595, 49.232147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703857, 39.727951, 49.291603>,  <33.875809, 39.564365, 49.327278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703857, 39.727951, 49.291603>,  <33.417271, 40.000595, 49.232147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703857, 39.727951, 49.291603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028275, -0.184520, -0.982422,
		0.697052, 0.708071, -0.112929,
		0.716462, -0.681607, 0.148641,
		33.918797, 39.523468, 49.336197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763638, 40.033558, 48.667576>,  <33.417271, 40.000595, 49.232147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763638, 40.033558, 48.667576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.875175, 39.669640, 48.790554>,  <33.942097, 39.451290, 48.864342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.875175, 39.669640, 48.790554>,  <33.763638, 40.033558, 48.667576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875175, 39.669640, 48.790554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060066, -0.302997, -0.951097,
		0.958456, 0.283674, -0.029841,
		0.278844, -0.909792, 0.307448,
		33.958828, 39.396702, 48.882790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474220, 39.959419, 48.500198>,  <33.763638, 40.033558, 48.667576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474220, 39.959419, 48.500198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275204, 39.614525, 48.538136>,  <34.155792, 39.407589, 48.560898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275204, 39.614525, 48.538136>,  <34.474220, 39.959419, 48.500198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275204, 39.614525, 48.538136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259069, -0.252049, -0.932392,
		0.827849, -0.439336, 0.348784,
		-0.497544, -0.862239, 0.094840,
		34.125942, 39.355854, 48.566589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774254, 39.449112, 48.127502>,  <34.474220, 39.959419, 48.500198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774254, 39.449112, 48.127502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410103, 39.296673, 48.191975>,  <34.191612, 39.205208, 48.230659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410103, 39.296673, 48.191975>,  <34.774254, 39.449112, 48.127502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410103, 39.296673, 48.191975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016655, -0.355468, -0.934540,
		0.413448, -0.853467, 0.317262,
		-0.910376, -0.381100, 0.161182,
		34.136990, 39.182343, 48.240330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968010, 38.829861, 47.841755>,  <34.774254, 39.449112, 48.127502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968010, 38.829861, 47.841755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.573120, 38.891697, 47.826332>,  <34.336185, 38.928799, 47.817078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.573120, 38.891697, 47.826332>,  <34.968010, 38.829861, 47.841755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573120, 38.891697, 47.826332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017629, -0.346517, -0.937878,
		-0.158345, -0.925218, 0.344816,
		-0.987227, 0.154587, -0.038559,
		34.276951, 38.938072, 47.814766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824821, 38.519619, 47.287220>,  <34.968010, 38.829861, 47.841755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824821, 38.519619, 47.287220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470333, 38.683754, 47.373234>,  <34.257641, 38.782234, 47.424843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470333, 38.683754, 47.373234>,  <34.824821, 38.519619, 47.287220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470333, 38.683754, 47.373234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245350, -0.022001, -0.969185,
		-0.392961, -0.911669, 0.120174,
		-0.886220, 0.410336, 0.215033,
		34.204468, 38.806854, 47.437744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310616, 38.067127, 47.064926>,  <34.824821, 38.519619, 47.287220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310616, 38.067127, 47.064926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.167511, 38.440510, 47.054607>,  <34.081646, 38.664539, 47.048416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.167511, 38.440510, 47.054607>,  <34.310616, 38.067127, 47.064926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167511, 38.440510, 47.054607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232229, -0.115700, -0.965755,
		-0.904474, -0.339523, 0.258169,
		-0.357766, 0.933455, -0.025801,
		34.060181, 38.720547, 47.046867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742924, 38.009636, 46.715115>,  <34.310616, 38.067127, 47.064926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742924, 38.009636, 46.715115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792427, 38.406406, 46.703995>,  <33.822128, 38.644466, 46.697323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792427, 38.406406, 46.703995>,  <33.742924, 38.009636, 46.715115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792427, 38.406406, 46.703995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259822, 0.005356, -0.965641,
		-0.957693, 0.126730, 0.258386,
		0.123759, 0.991923, -0.027798,
		33.829556, 38.703983, 46.695656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080940, 38.287014, 46.353127>,  <33.742924, 38.009636, 46.715115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080940, 38.287014, 46.353127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390747, 38.536221, 46.309341>,  <33.576630, 38.685745, 46.283070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390747, 38.536221, 46.309341>,  <33.080940, 38.287014, 46.353127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390747, 38.536221, 46.309341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260250, 0.156129, -0.952834,
		-0.576538, 0.766471, 0.283064,
		0.774515, 0.623013, -0.109460,
		33.623100, 38.723125, 46.276505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839516, 38.959957, 46.047421>,  <33.080940, 38.287014, 46.353127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839516, 38.959957, 46.047421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224499, 38.890182, 45.964241>,  <33.455490, 38.848316, 45.914333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224499, 38.890182, 45.964241>,  <32.839516, 38.959957, 46.047421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224499, 38.890182, 45.964241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191851, 0.104736, -0.975819,
		0.191999, 0.979082, 0.067338,
		0.962460, -0.174438, -0.207947,
		33.513237, 38.837852, 45.901855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102573, 39.584850, 45.776615>,  <32.839516, 38.959957, 46.047421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102573, 39.584850, 45.776615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318913, 39.268417, 45.662300>,  <33.448715, 39.078560, 45.593712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318913, 39.268417, 45.662300>,  <33.102573, 39.584850, 45.776615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318913, 39.268417, 45.662300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072222, 0.294839, -0.952813,
		0.838012, 0.535970, 0.102330,
		0.540850, -0.791079, -0.285788,
		33.481167, 39.031094, 45.576565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554386, 39.870525, 45.152542>,  <33.102573, 39.584850, 45.776615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554386, 39.870525, 45.152542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572323, 39.470989, 45.159573>,  <33.583084, 39.231266, 45.163792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572323, 39.470989, 45.159573>,  <33.554386, 39.870525, 45.152542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572323, 39.470989, 45.159573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097703, -0.021895, -0.994975,
		0.994205, 0.042898, -0.098571,
		0.044841, -0.998840, 0.017577,
		33.585773, 39.171337, 45.164845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117901, 39.777168, 44.683739>,  <33.554386, 39.870525, 45.152542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117901, 39.777168, 44.683739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893925, 39.447872, 44.721127>,  <33.759537, 39.250294, 44.743561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893925, 39.447872, 44.721127>,  <34.117901, 39.777168, 44.683739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893925, 39.447872, 44.721127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228177, 0.044772, -0.972590,
		0.796491, -0.565924, -0.212914,
		-0.559944, -0.823241, 0.093470,
		33.725941, 39.200901, 44.749168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893185, 39.896072, 44.695831>,  <34.117901, 39.777168, 44.683739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893185, 39.896072, 44.695831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068233, 40.225998, 44.552631>,  <35.173264, 40.423954, 44.466713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068233, 40.225998, 44.552631>,  <34.893185, 39.896072, 44.695831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068233, 40.225998, 44.552631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268321, 0.260212, 0.927520,
		0.858190, -0.501962, -0.107442,
		0.437622, 0.824818, -0.357998,
		35.199520, 40.473442, 44.445232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424168, 39.913513, 45.074421>,  <34.893185, 39.896072, 44.695831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424168, 39.913513, 45.074421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361362, 40.280487, 44.928181>,  <35.323677, 40.500671, 44.840435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361362, 40.280487, 44.928181>,  <35.424168, 39.913513, 45.074421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361362, 40.280487, 44.928181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052708, 0.361880, 0.930734,
		0.986189, 0.165410, -0.008465,
		-0.157016, 0.917432, -0.365600,
		35.314259, 40.555717, 44.818501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903091, 40.371922, 45.339436>,  <35.424168, 39.913513, 45.074421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903091, 40.371922, 45.339436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.605461, 40.623806, 45.250160>,  <35.426884, 40.774937, 45.196594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.605461, 40.623806, 45.250160>,  <35.903091, 40.371922, 45.339436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605461, 40.623806, 45.250160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058072, 0.393764, 0.917376,
		0.665567, 0.669635, -0.329558,
		-0.744075, 0.629713, -0.223189,
		35.382240, 40.812721, 45.183205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183483, 40.907063, 45.712921>,  <35.903091, 40.371922, 45.339436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183483, 40.907063, 45.712921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807465, 41.020176, 45.636665>,  <35.581852, 41.088043, 45.590912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807465, 41.020176, 45.636665>,  <36.183483, 40.907063, 45.712921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807465, 41.020176, 45.636665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014773, 0.592242, 0.805625,
		0.340722, 0.754510, -0.560913,
		-0.940048, 0.282781, -0.190643,
		35.525452, 41.105011, 45.579472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171181, 41.494080, 46.023960>,  <36.183483, 40.907063, 45.712921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171181, 41.494080, 46.023960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785812, 41.416210, 45.950279>,  <35.554592, 41.369488, 45.906071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785812, 41.416210, 45.950279>,  <36.171181, 41.494080, 46.023960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785812, 41.416210, 45.950279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265037, 0.590022, 0.762646,
		-0.039789, 0.783565, -0.620034,
		-0.963417, -0.194677, -0.184197,
		35.496788, 41.357807, 45.895020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828053, 42.156929, 45.940670>,  <36.171181, 41.494080, 46.023960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828053, 42.156929, 45.940670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.542900, 41.894428, 46.039577>,  <35.371811, 41.736927, 46.098923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.542900, 41.894428, 46.039577>,  <35.828053, 42.156929, 45.940670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542900, 41.894428, 46.039577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248481, 0.566086, 0.786005,
		-0.655791, 0.498884, -0.566616,
		-0.712879, -0.656248, 0.247271,
		35.329037, 41.697556, 46.113758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274895, 42.532356, 46.135353>,  <35.828053, 42.156929, 45.940670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274895, 42.532356, 46.135353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.208164, 42.177193, 46.306831>,  <35.168125, 41.964092, 46.409718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.208164, 42.177193, 46.306831>,  <35.274895, 42.532356, 46.135353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208164, 42.177193, 46.306831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085596, 0.446193, 0.890834,
		-0.982264, 0.111916, -0.150437,
		-0.166823, -0.887912, 0.428700,
		35.158119, 41.910820, 46.435440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730526, 42.579865, 46.596027>,  <35.274895, 42.532356, 46.135353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730526, 42.579865, 46.596027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914036, 42.250782, 46.730301>,  <35.024143, 42.053333, 46.810863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914036, 42.250782, 46.730301>,  <34.730526, 42.579865, 46.596027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914036, 42.250782, 46.730301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110926, 0.321798, 0.940288,
		-0.881602, -0.468615, 0.056372,
		0.458774, -0.822707, 0.335679,
		35.051666, 42.003971, 46.831005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378010, 42.324818, 47.270325>,  <34.730526, 42.579865, 46.596027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378010, 42.324818, 47.270325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733849, 42.142429, 47.280918>,  <34.947353, 42.032997, 47.287273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733849, 42.142429, 47.280918>,  <34.378010, 42.324818, 47.270325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733849, 42.142429, 47.280918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091671, 0.235050, 0.967651,
		-0.447444, -0.858396, 0.250900,
		0.889601, -0.455970, 0.026482,
		35.000729, 42.005638, 47.288864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450836, 41.972855, 47.899162>,  <34.378010, 42.324818, 47.270325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450836, 41.972855, 47.899162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831509, 42.021408, 47.786327>,  <35.059914, 42.050541, 47.718628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831509, 42.021408, 47.786327>,  <34.450836, 41.972855, 47.899162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831509, 42.021408, 47.786327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262566, 0.154776, 0.952420,
		0.159291, -0.980462, 0.115419,
		0.951675, 0.121407, -0.282090,
		35.117012, 42.057823, 47.701702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969776, 41.533764, 48.357754>,  <34.450836, 41.972855, 47.899162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969776, 41.533764, 48.357754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204193, 41.804062, 48.178902>,  <35.344845, 41.966240, 48.071590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204193, 41.804062, 48.178902>,  <34.969776, 41.533764, 48.357754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204193, 41.804062, 48.178902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522640, 0.106445, 0.845882,
		0.619194, -0.729411, -0.290789,
		0.586043, 0.675743, -0.447130,
		35.380005, 42.006786, 48.044762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606842, 41.347527, 48.581413>,  <34.969776, 41.533764, 48.357754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606842, 41.347527, 48.581413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665207, 41.729778, 48.479057>,  <35.700226, 41.959129, 48.417645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665207, 41.729778, 48.479057>,  <35.606842, 41.347527, 48.581413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665207, 41.729778, 48.479057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477257, 0.158572, 0.864339,
		0.866566, -0.248240, -0.432944,
		0.145911, 0.955632, -0.255887,
		35.708981, 42.016468, 48.402290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343536, 41.555004, 48.883686>,  <35.606842, 41.347527, 48.581413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343536, 41.555004, 48.883686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.149757, 41.894863, 48.800346>,  <36.033489, 42.098778, 48.750343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.149757, 41.894863, 48.800346>,  <36.343536, 41.555004, 48.883686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149757, 41.894863, 48.800346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261573, 0.367951, 0.892296,
		0.834797, 0.377776, -0.400499,
		-0.484452, 0.849645, -0.208348,
		36.004421, 42.149757, 48.737843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790466, 42.021706, 48.905952>,  <36.343536, 41.555004, 48.883686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790466, 42.021706, 48.905952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431973, 42.179081, 48.987892>,  <36.216877, 42.273506, 49.037056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431973, 42.179081, 48.987892>,  <36.790466, 42.021706, 48.905952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431973, 42.179081, 48.987892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356648, 0.364574, 0.860168,
		0.263738, 0.843975, -0.467063,
		-0.896239, 0.393436, 0.204850,
		36.163101, 42.297112, 49.049347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982475, 42.720554, 48.874493>,  <36.790466, 42.021706, 48.905952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982475, 42.720554, 48.874493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371761, 42.776955, 48.947113>,  <37.605335, 42.810795, 48.990685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371761, 42.776955, 48.947113>,  <36.982475, 42.720554, 48.874493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371761, 42.776955, 48.947113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228771, -0.516752, -0.825004,
		-0.022512, 0.844444, -0.535171,
		0.973220, 0.141004, 0.181551,
		37.663727, 42.819256, 49.001579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343319, 42.784794, 48.208641>,  <36.982475, 42.720554, 48.874493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343319, 42.784794, 48.208641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653854, 42.708950, 48.449089>,  <37.840176, 42.663445, 48.593357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653854, 42.708950, 48.449089>,  <37.343319, 42.784794, 48.208641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653854, 42.708950, 48.449089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436785, -0.525739, -0.729943,
		0.454437, 0.829244, -0.325332,
		0.776341, -0.189613, 0.601117,
		37.886757, 42.652065, 48.629425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995583, 43.176849, 47.895943>,  <37.343319, 42.784794, 48.208641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995583, 43.176849, 47.895943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107311, 42.863476, 48.118011>,  <38.174347, 42.675453, 48.251251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107311, 42.863476, 48.118011>,  <37.995583, 43.176849, 47.895943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107311, 42.863476, 48.118011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378052, -0.441751, -0.813592,
		0.882643, 0.437133, 0.172790,
		0.279318, -0.783435, 0.555168,
		38.191105, 42.628445, 48.284561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710274, 43.066883, 47.791180>,  <37.995583, 43.176849, 47.895943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710274, 43.066883, 47.791180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576340, 42.718147, 47.934162>,  <38.495979, 42.508904, 48.019951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.576340, 42.718147, 47.934162>,  <38.710274, 43.066883, 47.791180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576340, 42.718147, 47.934162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481692, -0.484416, -0.730283,
		0.809851, -0.072339, 0.582159,
		-0.334835, -0.871842, 0.357460,
		38.475891, 42.456596, 48.041401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290314, 42.642544, 47.632217>,  <38.710274, 43.066883, 47.791180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290314, 42.642544, 47.632217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978985, 42.396027, 47.680225>,  <38.792187, 42.248116, 47.709030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978985, 42.396027, 47.680225>,  <39.290314, 42.642544, 47.632217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978985, 42.396027, 47.680225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317518, -0.551251, -0.771560,
		0.541665, -0.562413, 0.624733,
		-0.778320, -0.616291, 0.120017,
		38.745487, 42.211140, 47.716232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495464, 41.920551, 47.403000>,  <39.290314, 42.642544, 47.632217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495464, 41.920551, 47.403000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096455, 41.893742, 47.411587>,  <38.857048, 41.877655, 47.416740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096455, 41.893742, 47.411587>,  <39.495464, 41.920551, 47.403000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096455, 41.893742, 47.411587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013755, -0.484805, -0.874514,
		0.069022, -0.872050, 0.484524,
		-0.997520, -0.067025, 0.021468,
		38.797199, 41.873634, 47.418026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339130, 41.198853, 47.235714>,  <39.495464, 41.920551, 47.403000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339130, 41.198853, 47.235714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025799, 41.437309, 47.165276>,  <38.837799, 41.580383, 47.123013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025799, 41.437309, 47.165276>,  <39.339130, 41.198853, 47.235714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025799, 41.437309, 47.165276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154603, -0.461229, -0.873708,
		-0.602076, -0.657175, 0.453460,
		-0.783328, 0.596144, -0.176094,
		38.790802, 41.616154, 47.112446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746769, 40.757809, 47.209988>,  <39.339130, 41.198853, 47.235714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746769, 40.757809, 47.209988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684917, 41.086643, 46.990803>,  <38.647808, 41.283943, 46.859291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684917, 41.086643, 46.990803>,  <38.746769, 40.757809, 47.209988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684917, 41.086643, 46.990803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130856, -0.566784, -0.813408,
		-0.979268, -0.054073, 0.195217,
		-0.154629, 0.822090, -0.547958,
		38.638527, 41.333271, 46.826416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267780, 40.615410, 46.700661>,  <38.746769, 40.757809, 47.209988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267780, 40.615410, 46.700661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404568, 40.957451, 46.544785>,  <38.486641, 41.162674, 46.451260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404568, 40.957451, 46.544785>,  <38.267780, 40.615410, 46.700661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404568, 40.957451, 46.544785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024821, -0.422765, -0.905899,
		-0.939383, 0.300117, -0.165797,
		0.341969, 0.855102, -0.389690,
		38.507160, 41.213982, 46.427879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873619, 40.729145, 46.158451>,  <38.267780, 40.615410, 46.700661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873619, 40.729145, 46.158451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203945, 40.942970, 46.086597>,  <38.402142, 41.071266, 46.043484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.203945, 40.942970, 46.086597>,  <37.873619, 40.729145, 46.158451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203945, 40.942970, 46.086597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008554, -0.330373, -0.943812,
		-0.563870, 0.777881, -0.277401,
		0.825819, 0.534560, -0.179633,
		38.451691, 41.103340, 46.032707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717773, 41.082188, 45.539871>,  <37.873619, 40.729145, 46.158451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717773, 41.082188, 45.539871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115959, 41.099743, 45.573658>,  <38.354870, 41.110275, 45.593929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115959, 41.099743, 45.573658>,  <37.717773, 41.082188, 45.539871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115959, 41.099743, 45.573658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094085, -0.319185, -0.943011,
		-0.014427, 0.946676, -0.321865,
		0.995460, 0.043887, 0.084463,
		38.414597, 41.112907, 45.598995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009483, 41.374538, 44.944729>,  <37.717773, 41.082188, 45.539871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009483, 41.374538, 44.944729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334465, 41.180386, 45.073921>,  <38.529457, 41.063896, 45.151436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334465, 41.180386, 45.073921>,  <38.009483, 41.374538, 44.944729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334465, 41.180386, 45.073921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102314, -0.426683, -0.898595,
		0.573971, 0.763117, -0.297001,
		0.812459, -0.485380, 0.322981,
		38.578201, 41.034771, 45.170815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400089, 41.334633, 44.391418>,  <38.009483, 41.374538, 44.944729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400089, 41.334633, 44.391418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601543, 41.070267, 44.613968>,  <38.722416, 40.911648, 44.747498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601543, 41.070267, 44.613968>,  <38.400089, 41.334633, 44.391418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601543, 41.070267, 44.613968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234856, -0.515016, -0.824379,
		0.831383, 0.545851, -0.104160,
		0.503632, -0.660912, 0.556372,
		38.752632, 40.871994, 44.780880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083344, 41.347324, 44.283672>,  <38.400089, 41.334633, 44.391418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083344, 41.347324, 44.283672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978737, 40.971088, 44.370296>,  <38.915974, 40.745346, 44.422272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978737, 40.971088, 44.370296>,  <39.083344, 41.347324, 44.283672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978737, 40.971088, 44.370296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240112, -0.280710, -0.929273,
		0.934855, -0.191027, 0.299259,
		-0.261521, -0.940591, 0.216556,
		38.900280, 40.688911, 44.435265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.695953, 27.555088, 37.213730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508345, 27.678787, 37.544640>,  <29.395779, 27.753006, 37.743187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508345, 27.678787, 37.544640>,  <29.695953, 27.555088, 37.213730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508345, 27.678787, 37.544640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394118, 0.764970, -0.509403,
		-0.790373, -0.564965, -0.236907,
		-0.469022, 0.309249, 0.827275,
		29.367638, 27.771563, 37.792824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004192, 27.713774, 36.938736>,  <29.695953, 27.555088, 37.213730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004192, 27.713774, 36.938736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043127, 27.906433, 37.287113>,  <29.066488, 28.022028, 37.496140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043127, 27.906433, 37.287113>,  <29.004192, 27.713774, 36.938736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043127, 27.906433, 37.287113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242946, 0.860124, -0.448512,
		-0.965144, -0.167935, 0.200737,
		0.097338, 0.481647, 0.870943,
		29.072329, 28.050926, 37.548397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453598, 28.168104, 37.043709>,  <29.004192, 27.713774, 36.938736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453598, 28.168104, 37.043709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751541, 28.317955, 37.264561>,  <28.930307, 28.407866, 37.397072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751541, 28.317955, 37.264561>,  <28.453598, 28.168104, 37.043709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751541, 28.317955, 37.264561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171957, 0.907326, -0.383654,
		-0.644687, 0.190825, 0.740247,
		0.744856, 0.374627, 0.552128,
		28.974998, 28.430344, 37.430199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291550, 28.829357, 37.015915>,  <28.453598, 28.168104, 37.043709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291550, 28.829357, 37.015915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.663397, 28.854731, 37.161125>,  <28.886505, 28.869955, 37.248253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.663397, 28.854731, 37.161125>,  <28.291550, 28.829357, 37.015915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663397, 28.854731, 37.161125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091310, 0.914712, -0.393655,
		-0.357037, 0.399096, 0.844540,
		0.929617, 0.063434, 0.363027,
		28.942282, 28.873760, 37.270035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363779, 29.407307, 37.441475>,  <28.291550, 28.829357, 37.015915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363779, 29.407307, 37.441475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737480, 29.307947, 37.339127>,  <28.961700, 29.248331, 37.277718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737480, 29.307947, 37.339127>,  <28.363779, 29.407307, 37.441475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737480, 29.307947, 37.339127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160873, 0.933917, -0.319248,
		0.318266, 0.257094, 0.912474,
		0.934252, -0.248399, -0.255875,
		29.017756, 29.233427, 37.262363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560617, 29.995514, 37.626213>,  <28.363779, 29.407307, 37.441475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560617, 29.995514, 37.626213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844179, 29.831001, 37.397022>,  <29.014317, 29.732294, 37.259510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844179, 29.831001, 37.397022>,  <28.560617, 29.995514, 37.626213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844179, 29.831001, 37.397022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114447, 0.868691, -0.481952,
		0.695957, 0.276083, 0.662890,
		0.708905, -0.411284, -0.572974,
		29.056850, 29.707617, 37.225128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043941, 30.392309, 37.653549>,  <28.560617, 29.995514, 37.626213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043941, 30.392309, 37.653549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.148384, 30.216711, 37.309666>,  <29.211050, 30.111351, 37.103336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.148384, 30.216711, 37.309666>,  <29.043941, 30.392309, 37.653549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148384, 30.216711, 37.309666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159980, 0.897971, -0.409945,
		0.951961, -0.030497, 0.304698,
		0.261108, -0.438997, -0.859712,
		29.226717, 30.085012, 37.051754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742842, 30.628185, 37.418377>,  <29.043941, 30.392309, 37.653549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742842, 30.628185, 37.418377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552530, 30.483515, 37.097672>,  <29.438343, 30.396713, 36.905247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552530, 30.483515, 37.097672>,  <29.742842, 30.628185, 37.418377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552530, 30.483515, 37.097672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157334, 0.861848, -0.482145,
		0.865379, -0.355539, -0.353144,
		-0.475778, -0.361677, -0.801764,
		29.409796, 30.375011, 36.857143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177662, 30.832998, 36.769543>,  <29.742842, 30.628185, 37.418377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177662, 30.832998, 36.769543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801071, 30.768129, 36.651344>,  <29.575117, 30.729208, 36.580425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801071, 30.768129, 36.651344>,  <30.177662, 30.832998, 36.769543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801071, 30.768129, 36.651344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027625, 0.910829, -0.411858,
		0.335941, -0.379592, -0.862005,
		-0.941478, -0.162173, -0.295499,
		29.518627, 30.719477, 36.562695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112020, 31.130793, 36.151077>,  <30.177662, 30.832998, 36.769543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112020, 31.130793, 36.151077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743582, 31.112520, 36.305733>,  <29.522518, 31.101557, 36.398525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743582, 31.112520, 36.305733>,  <30.112020, 31.130793, 36.151077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743582, 31.112520, 36.305733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246403, 0.837291, -0.488087,
		-0.301434, -0.544846, -0.782484,
		-0.921099, -0.045680, 0.386639,
		29.467253, 31.098816, 36.421726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821466, 31.619808, 35.750683>,  <30.112020, 31.130793, 36.151077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821466, 31.619808, 35.750683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539965, 31.576197, 36.031494>,  <29.371063, 31.550030, 36.199982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539965, 31.576197, 36.031494>,  <29.821466, 31.619808, 35.750683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539965, 31.576197, 36.031494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320472, 0.930626, -0.176729,
		-0.634054, -0.349353, -0.689875,
		-0.703756, -0.109030, 0.702025,
		29.328838, 31.543488, 36.242104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166008, 31.797756, 35.506317>,  <29.821466, 31.619808, 35.750683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166008, 31.797756, 35.506317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118467, 31.841957, 35.901016>,  <29.089943, 31.868477, 36.137836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118467, 31.841957, 35.901016>,  <29.166008, 31.797756, 35.506317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118467, 31.841957, 35.901016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318862, 0.936901, -0.143327,
		-0.940320, -0.331670, -0.076116,
		-0.118850, 0.110502, 0.986744,
		29.082811, 31.875107, 36.197041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465816, 32.092346, 35.550701>,  <29.166008, 31.797756, 35.506317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465816, 32.092346, 35.550701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666357, 32.167290, 35.888588>,  <28.786682, 32.212254, 36.091320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666357, 32.167290, 35.888588>,  <28.465816, 32.092346, 35.550701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666357, 32.167290, 35.888588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433321, 0.899391, 0.057698,
		-0.748919, -0.394961, 0.532096,
		0.501351, 0.187357, 0.844716,
		28.816763, 32.223495, 36.142002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996067, 32.180889, 36.027836>,  <28.465816, 32.092346, 35.550701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996067, 32.180889, 36.027836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326345, 32.359432, 36.165817>,  <28.524513, 32.466557, 36.248604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326345, 32.359432, 36.165817>,  <27.996067, 32.180889, 36.027836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326345, 32.359432, 36.165817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474660, 0.880165, -0.002725,
		-0.304830, -0.161484, 0.938617,
		0.825698, 0.446354, 0.344950,
		28.574055, 32.493340, 36.269302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659008, 32.631428, 36.520798>,  <27.996067, 32.180889, 36.027836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659008, 32.631428, 36.520798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028852, 32.783691, 36.515244>,  <28.250759, 32.875050, 36.511909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028852, 32.783691, 36.515244>,  <27.659008, 32.631428, 36.520798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028852, 32.783691, 36.515244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374450, 0.914998, 0.150218,
		0.069892, -0.133692, 0.988555,
		0.924610, 0.380663, -0.013890,
		28.306236, 32.897892, 36.511078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746668, 32.968739, 37.069729>,  <27.659008, 32.631428, 36.520798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746668, 32.968739, 37.069729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991869, 33.133953, 36.800323>,  <28.138990, 33.233082, 36.638680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991869, 33.133953, 36.800323>,  <27.746668, 32.968739, 37.069729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991869, 33.133953, 36.800323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384107, 0.900743, 0.202792,
		0.690427, 0.134391, 0.710809,
		0.613003, 0.413040, -0.673518,
		28.175770, 33.257866, 36.598267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030481, 33.572269, 37.450859>,  <27.746668, 32.968739, 37.069729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030481, 33.572269, 37.450859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099504, 33.656734, 37.066021>,  <28.140919, 33.707413, 36.835117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099504, 33.656734, 37.066021>,  <28.030481, 33.572269, 37.450859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099504, 33.656734, 37.066021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309265, 0.938972, 0.150621,
		0.935188, 0.271551, 0.227340,
		0.172565, 0.211167, -0.962097,
		28.151272, 33.720085, 36.777393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245119, 34.272175, 37.514538>,  <28.030481, 33.572269, 37.450859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245119, 34.272175, 37.514538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156715, 34.245941, 37.125313>,  <28.103672, 34.230202, 36.891777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156715, 34.245941, 37.125313>,  <28.245119, 34.272175, 37.514538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156715, 34.245941, 37.125313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284265, 0.958746, -0.000056,
		0.932924, 0.276595, -0.230538,
		-0.221011, -0.065586, -0.973064,
		28.090412, 34.226265, 36.833393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416494, 34.908405, 37.184258>,  <28.245119, 34.272175, 37.514538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416494, 34.908405, 37.184258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160192, 34.738461, 36.928467>,  <28.006413, 34.636494, 36.774994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160192, 34.738461, 36.928467>,  <28.416494, 34.908405, 37.184258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160192, 34.738461, 36.928467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480992, 0.871347, -0.096960,
		0.598400, 0.245455, -0.762672,
		-0.640753, -0.424860, -0.639476,
		27.967966, 34.611004, 36.736626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055204, 35.169437, 37.086029>,  <28.416494, 34.908405, 37.184258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055204, 35.169437, 37.086029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377729, 35.312119, 37.274761>,  <29.571245, 35.397728, 37.388000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377729, 35.312119, 37.274761>,  <29.055204, 35.169437, 37.086029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377729, 35.312119, 37.274761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041380, -0.761720, 0.646584,
		0.590040, -0.540873, -0.599424,
		0.806313, 0.356706, 0.471827,
		29.619623, 35.419128, 37.416309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337692, 34.583294, 37.188393>,  <29.055204, 35.169437, 37.086029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337692, 34.583294, 37.188393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493025, 34.819511, 37.471363>,  <29.586224, 34.961243, 37.641148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493025, 34.819511, 37.471363>,  <29.337692, 34.583294, 37.188393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493025, 34.819511, 37.471363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130132, -0.724840, 0.676516,
		0.912286, -0.354770, -0.204627,
		0.388330, 0.590547, 0.707428,
		29.609524, 34.996677, 37.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821749, 34.261318, 37.577896>,  <29.337692, 34.583294, 37.188393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821749, 34.261318, 37.577896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704165, 34.559532, 37.817150>,  <29.633614, 34.738461, 37.960701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704165, 34.559532, 37.817150>,  <29.821749, 34.261318, 37.577896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704165, 34.559532, 37.817150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121488, -0.649848, 0.750292,
		0.948066, 0.147889, 0.281602,
		-0.293958, 0.745538, 0.598132,
		29.615976, 34.783192, 37.996590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073786, 34.154793, 38.285786>,  <29.821749, 34.261318, 37.577896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073786, 34.154793, 38.285786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771837, 34.408966, 38.350769>,  <29.590668, 34.561470, 38.389759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771837, 34.408966, 38.350769>,  <30.073786, 34.154793, 38.285786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771837, 34.408966, 38.350769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276117, -0.532572, 0.800079,
		0.594920, 0.559098, 0.577477,
		-0.754871, 0.635434, 0.162462,
		29.545376, 34.599598, 38.399509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085169, 34.170158, 39.020344>,  <30.073786, 34.154793, 38.285786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085169, 34.170158, 39.020344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736752, 34.322762, 38.896580>,  <29.527700, 34.414322, 38.822323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736752, 34.322762, 38.896580>,  <30.085169, 34.170158, 39.020344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736752, 34.322762, 38.896580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438318, -0.319360, 0.840171,
		0.221717, 0.867446, 0.445398,
		-0.871045, 0.381506, -0.309409,
		29.475437, 34.437214, 38.803757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795685, 34.519215, 39.626450>,  <30.085169, 34.170158, 39.020344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795685, 34.519215, 39.626450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.494564, 34.429131, 39.379040>,  <29.313892, 34.375080, 39.230595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.494564, 34.429131, 39.379040>,  <29.795685, 34.519215, 39.626450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494564, 34.429131, 39.379040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498378, -0.418839, 0.759074,
		-0.430011, 0.879691, 0.203064,
		-0.752802, -0.225207, -0.618524,
		29.268724, 34.361568, 39.193481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151157, 34.658031, 39.880135>,  <29.795685, 34.519215, 39.626450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151157, 34.658031, 39.880135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047861, 34.392990, 39.598919>,  <28.985884, 34.233967, 39.430187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047861, 34.392990, 39.598919>,  <29.151157, 34.658031, 39.880135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047861, 34.392990, 39.598919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588063, -0.469560, 0.658555,
		-0.766482, 0.583499, -0.268392,
		-0.258240, -0.662602, -0.703044,
		28.970388, 34.194210, 39.388004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419798, 34.725208, 39.852440>,  <29.151157, 34.658031, 39.880135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419798, 34.725208, 39.852440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526985, 34.371685, 39.699039>,  <28.591297, 34.159569, 39.606998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526985, 34.371685, 39.699039>,  <28.419798, 34.725208, 39.852440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526985, 34.371685, 39.699039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654586, -0.459088, 0.600629,
		-0.706902, 0.090084, -0.701551,
		0.267966, -0.883812, -0.383498,
		28.607374, 34.106541, 39.583988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855335, 34.410412, 39.731094>,  <28.419798, 34.725208, 39.852440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855335, 34.410412, 39.731094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116873, 34.108253, 39.748360>,  <28.273796, 33.926960, 39.758720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116873, 34.108253, 39.748360>,  <27.855335, 34.410412, 39.731094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116873, 34.108253, 39.748360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696744, -0.578874, 0.423618,
		-0.295013, -0.307054, -0.904812,
		0.653846, -0.755395, 0.043163,
		28.313026, 33.881634, 39.761307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372690, 33.942524, 39.597145>,  <27.855335, 34.410412, 39.731094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372690, 33.942524, 39.597145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687237, 33.762093, 39.765980>,  <27.875965, 33.653835, 39.867283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687237, 33.762093, 39.765980>,  <27.372690, 33.942524, 39.597145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687237, 33.762093, 39.765980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606608, -0.693072, 0.389458,
		0.116865, -0.562301, -0.818634,
		0.786365, -0.451076, 0.422092,
		27.923145, 33.626770, 39.892609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373478, 33.130970, 39.493027>,  <27.372690, 33.942524, 39.597145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373478, 33.130970, 39.493027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645550, 33.146420, 39.785839>,  <27.808792, 33.155689, 39.961525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645550, 33.146420, 39.785839>,  <27.373478, 33.130970, 39.493027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645550, 33.146420, 39.785839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262565, -0.919519, 0.292479,
		0.684410, -0.391143, -0.615297,
		0.680178, 0.038619, 0.732029,
		27.849604, 33.158005, 40.005447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847439, 32.627800, 39.439308>,  <27.373478, 33.130970, 39.493027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847439, 32.627800, 39.439308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818270, 32.703522, 39.830990>,  <27.800768, 32.748955, 40.065998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818270, 32.703522, 39.830990>,  <27.847439, 32.627800, 39.439308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818270, 32.703522, 39.830990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012837, -0.981918, 0.188871,
		0.997255, 0.001202, 0.074032,
		-0.072921, 0.189303, 0.979207,
		27.796394, 32.760311, 40.124752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213064, 32.156013, 39.677887>,  <27.847439, 32.627800, 39.439308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213064, 32.156013, 39.677887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038908, 32.267380, 40.020329>,  <27.934414, 32.334202, 40.225796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038908, 32.267380, 40.020329>,  <28.213064, 32.156013, 39.677887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038908, 32.267380, 40.020329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131413, -0.960443, 0.245518,
		0.890599, -0.005608, 0.454754,
		-0.435389, 0.278419, 0.856107,
		27.908291, 32.350906, 40.277161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582129, 31.780506, 40.194588>,  <28.213064, 32.156013, 39.677887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582129, 31.780506, 40.194588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238081, 31.887989, 40.368019>,  <28.031652, 31.952478, 40.472080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238081, 31.887989, 40.368019>,  <28.582129, 31.780506, 40.194588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238081, 31.887989, 40.368019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150601, -0.945884, 0.287441,
		0.487356, 0.181935, 0.854040,
		-0.860118, 0.268706, 0.433583,
		27.980045, 31.968601, 40.498093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503778, 31.438847, 40.821308>,  <28.582129, 31.780506, 40.194588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503778, 31.438847, 40.821308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120937, 31.548073, 40.782551>,  <27.891233, 31.613609, 40.759296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120937, 31.548073, 40.782551>,  <28.503778, 31.438847, 40.821308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120937, 31.548073, 40.782551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284378, -0.949364, 0.133555,
		-0.055522, 0.155381, 0.986293,
		-0.957103, 0.273065, -0.096897,
		27.833807, 31.629992, 40.753483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051819, 31.202812, 41.427284>,  <28.503778, 31.438847, 40.821308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051819, 31.202812, 41.427284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.816504, 31.245066, 41.106594>,  <27.675314, 31.270418, 40.914181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.816504, 31.245066, 41.106594>,  <28.051819, 31.202812, 41.427284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816504, 31.245066, 41.106594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322430, -0.939854, 0.112757,
		-0.741592, 0.324833, 0.586963,
		-0.588286, 0.105635, -0.801724,
		27.640018, 31.276756, 40.866077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603868, 30.769987, 41.599579>,  <28.051819, 31.202812, 41.427284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603868, 30.769987, 41.599579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482115, 30.821392, 41.222042>,  <27.409061, 30.852236, 40.995522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482115, 30.821392, 41.222042>,  <27.603868, 30.769987, 41.599579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482115, 30.821392, 41.222042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395507, -0.918460, 0.002494,
		-0.866558, 0.374054, 0.330394,
		-0.304386, 0.128512, -0.943840,
		27.390799, 30.859945, 40.938889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806925, 30.731459, 41.567200>,  <27.603868, 30.769987, 41.599579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806925, 30.731459, 41.567200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.969927, 30.634293, 41.215080>,  <27.067728, 30.575993, 41.003807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.969927, 30.634293, 41.215080>,  <26.806925, 30.731459, 41.567200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969927, 30.634293, 41.215080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344914, -0.933512, 0.097931,
		-0.845561, 0.263721, -0.464196,
		0.407506, -0.242915, -0.880302,
		27.092178, 30.561419, 40.950989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262251, 30.471956, 41.299469>,  <26.806925, 30.731459, 41.567200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262251, 30.471956, 41.299469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580410, 30.358135, 41.085415>,  <26.771305, 30.289843, 40.956982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580410, 30.358135, 41.085415>,  <26.262251, 30.471956, 41.299469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580410, 30.358135, 41.085415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422878, -0.893062, -0.153671,
		-0.434181, 0.348527, -0.830672,
		0.795400, -0.284552, -0.535135,
		26.819031, 30.272770, 40.924873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985714, 30.053741, 40.661610>,  <26.262251, 30.471956, 41.299469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985714, 30.053741, 40.661610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.374222, 29.958584, 40.664158>,  <26.607327, 29.901489, 40.665688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.374222, 29.958584, 40.664158>,  <25.985714, 30.053741, 40.661610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374222, 29.958584, 40.664158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228852, -0.941017, -0.249227,
		0.065284, 0.240609, -0.968424,
		0.971270, -0.237896, 0.006370,
		26.665604, 29.887215, 40.666069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185177, 29.640720, 39.998726>,  <25.985714, 30.053741, 40.661610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185177, 29.640720, 39.998726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462015, 29.550755, 40.273075>,  <26.628119, 29.496775, 40.437683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462015, 29.550755, 40.273075>,  <26.185177, 29.640720, 39.998726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462015, 29.550755, 40.273075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042138, -0.961182, -0.272679,
		0.720577, 0.159818, -0.674705,
		0.692093, -0.224917, 0.685871,
		26.669643, 29.483280, 40.478836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713444, 29.293619, 39.581768>,  <26.185177, 29.640720, 39.998726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713444, 29.293619, 39.581768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733393, 29.188505, 39.967194>,  <26.745363, 29.125437, 40.198448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733393, 29.188505, 39.967194>,  <26.713444, 29.293619, 39.581768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733393, 29.188505, 39.967194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086999, -0.959955, -0.266306,
		0.994959, 0.097112, -0.025015,
		0.049875, -0.262787, 0.963564,
		26.748356, 29.109669, 40.256264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310808, 28.892302, 39.608723>,  <26.713444, 29.293619, 39.581768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310808, 28.892302, 39.608723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080990, 28.815790, 39.927044>,  <26.943098, 28.769884, 40.118038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080990, 28.815790, 39.927044>,  <27.310808, 28.892302, 39.608723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080990, 28.815790, 39.927044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174873, -0.978545, -0.108948,
		0.799573, 0.076570, 0.595668,
		-0.574546, -0.191278, 0.795808,
		26.908627, 28.758408, 40.165787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.373390, 40.410732, 49.267925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.333870, 40.054840, 49.446190>,  <39.310158, 39.841305, 49.553150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.333870, 40.054840, 49.446190>,  <39.373390, 40.410732, 49.267925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333870, 40.054840, 49.446190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399605, 0.445634, 0.801078,
		-0.911347, -0.098940, -0.399571,
		-0.098804, -0.889731, 0.445664,
		39.304230, 39.787922, 49.579887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688831, 40.435528, 49.540318>,  <39.373390, 40.410732, 49.267925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688831, 40.435528, 49.540318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916008, 40.175594, 49.742371>,  <39.052315, 40.019634, 49.863602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916008, 40.175594, 49.742371>,  <38.688831, 40.435528, 49.540318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916008, 40.175594, 49.742371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301093, 0.407143, 0.862309,
		-0.766020, -0.641831, 0.035571,
		0.567939, -0.649836, 0.505131,
		39.086391, 39.980644, 49.893909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246304, 40.357498, 50.192348>,  <38.688831, 40.435528, 49.540318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246304, 40.357498, 50.192348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575367, 40.179977, 50.334488>,  <38.772804, 40.073467, 50.419773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575367, 40.179977, 50.334488>,  <38.246304, 40.357498, 50.192348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575367, 40.179977, 50.334488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167043, 0.408768, 0.897221,
		-0.543442, -0.797466, 0.262143,
		0.822659, -0.443798, 0.355353,
		38.822166, 40.046837, 50.441093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071754, 40.083115, 50.866142>,  <38.246304, 40.357498, 50.192348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071754, 40.083115, 50.866142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470524, 40.109715, 50.849514>,  <38.709785, 40.125675, 50.839539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470524, 40.109715, 50.849514>,  <38.071754, 40.083115, 50.866142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470524, 40.109715, 50.849514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013504, 0.376611, 0.926273,
		0.077249, -0.923982, 0.374553,
		0.996920, 0.066495, -0.041570,
		38.769600, 40.129662, 50.837044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325600, 39.767925, 51.446999>,  <38.071754, 40.083115, 50.866142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325600, 39.767925, 51.446999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643181, 39.998348, 51.369236>,  <38.833729, 40.136604, 51.322578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643181, 39.998348, 51.369236>,  <38.325600, 39.767925, 51.446999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643181, 39.998348, 51.369236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045864, 0.375591, 0.925650,
		0.606245, -0.726007, 0.324623,
		0.793954, 0.576060, -0.194403,
		38.881367, 40.171165, 51.310917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826488, 39.720528, 51.892647>,  <38.325600, 39.767925, 51.446999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826488, 39.720528, 51.892647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.945950, 40.071812, 51.743217>,  <39.017624, 40.282581, 51.653561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.945950, 40.071812, 51.743217>,  <38.826488, 39.720528, 51.892647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945950, 40.071812, 51.743217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011367, 0.388136, 0.921532,
		0.954295, -0.279462, 0.105934,
		0.298650, 0.878209, -0.373572,
		39.035545, 40.335274, 51.631145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468975, 39.998936, 52.245811>,  <38.826488, 39.720528, 51.892647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468975, 39.998936, 52.245811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.269688, 40.319046, 52.112339>,  <39.150116, 40.511112, 52.032257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.269688, 40.319046, 52.112339>,  <39.468975, 39.998936, 52.245811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269688, 40.319046, 52.112339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092092, 0.431506, 0.897397,
		0.862149, 0.416368, -0.288682,
		-0.498215, 0.800275, -0.333678,
		39.120224, 40.559128, 52.012234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905067, 40.611847, 52.368973>,  <39.468975, 39.998936, 52.245811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905067, 40.611847, 52.368973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532589, 40.744492, 52.308426>,  <39.309101, 40.824078, 52.272099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532589, 40.744492, 52.308426>,  <39.905067, 40.611847, 52.368973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532589, 40.744492, 52.308426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049790, 0.527070, 0.848362,
		0.361107, 0.782453, -0.507315,
		-0.931194, 0.331609, -0.151371,
		39.253231, 40.843975, 52.263016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976120, 41.300529, 52.528625>,  <39.905067, 40.611847, 52.368973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976120, 41.300529, 52.528625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.582241, 41.230831, 52.528591>,  <39.345913, 41.189011, 52.528568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.582241, 41.230831, 52.528591>,  <39.976120, 41.300529, 52.528625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582241, 41.230831, 52.528591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111240, 0.628242, 0.770024,
		-0.134119, 0.758254, -0.638015,
		-0.984702, -0.174248, -0.000089,
		39.286831, 41.178558, 52.528564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744045, 41.958672, 52.805119>,  <39.976120, 41.300529, 52.528625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744045, 41.958672, 52.805119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452568, 41.688618, 52.851059>,  <39.277679, 41.526585, 52.878624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452568, 41.688618, 52.851059>,  <39.744045, 41.958672, 52.805119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452568, 41.688618, 52.851059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204820, 0.374876, 0.904166,
		-0.653492, 0.635338, -0.411453,
		-0.728695, -0.675139, 0.114849,
		39.233959, 41.486076, 52.885513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125431, 42.320625, 53.068871>,  <39.744045, 41.958672, 52.805119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125431, 42.320625, 53.068871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111980, 41.934643, 53.172970>,  <39.103909, 41.703053, 53.235428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111980, 41.934643, 53.172970>,  <39.125431, 42.320625, 53.068871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111980, 41.934643, 53.172970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016703, 0.259816, 0.965514,
		-0.999295, 0.036818, 0.007380,
		-0.033630, -0.964956, 0.260248,
		39.101891, 41.645157, 53.251045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638073, 42.146030, 53.589981>,  <39.125431, 42.320625, 53.068871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638073, 42.146030, 53.589981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919922, 41.869862, 53.655487>,  <39.089031, 41.704159, 53.694790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919922, 41.869862, 53.655487>,  <38.638073, 42.146030, 53.589981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919922, 41.869862, 53.655487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207347, 0.421059, 0.883016,
		-0.678613, -0.588235, 0.439845,
		0.704622, -0.690426, 0.163767,
		39.131310, 41.662735, 53.704617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429905, 42.904236, 53.722610>,  <38.638073, 42.146030, 53.589981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429905, 42.904236, 53.722610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564564, 43.212276, 53.505867>,  <38.645359, 43.397102, 53.375820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564564, 43.212276, 53.505867>,  <38.429905, 42.904236, 53.722610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564564, 43.212276, 53.505867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254197, 0.628410, 0.735177,
		0.906671, -0.109756, 0.407310,
		0.336648, 0.770100, -0.541862,
		38.665558, 43.443306, 53.343307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687023, 43.392914, 54.204994>,  <38.429905, 42.904236, 53.722610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687023, 43.392914, 54.204994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608879, 43.586777, 53.863949>,  <38.561993, 43.703094, 53.659321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608879, 43.586777, 53.863949>,  <38.687023, 43.392914, 54.204994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608879, 43.586777, 53.863949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291053, 0.801545, 0.522315,
		0.936548, 0.350196, -0.015532,
		-0.195363, 0.484653, -0.852611,
		38.550270, 43.732174, 53.608166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876785, 43.581161, 54.151100>,  <38.687023, 43.392914, 54.204994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876785, 43.581161, 54.151100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576393, 43.844963, 54.164280>,  <37.396156, 44.003242, 54.172188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576393, 43.844963, 54.164280>,  <37.876785, 43.581161, 54.151100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576393, 43.844963, 54.164280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082402, 0.143109, -0.986271,
		-0.655160, -0.737957, -0.161816,
		-0.750983, 0.659500, 0.032950,
		37.351097, 44.042812, 54.174164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312454, 43.382973, 53.727917>,  <37.876785, 43.581161, 54.151100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312454, 43.382973, 53.727917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295704, 43.782227, 53.745659>,  <37.285652, 44.021778, 53.756306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295704, 43.782227, 53.745659>,  <37.312454, 43.382973, 53.727917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295704, 43.782227, 53.745659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002678, 0.044282, -0.999015,
		-0.999119, -0.041954, 0.000819,
		-0.041876, 0.998138, 0.044355,
		37.283142, 44.081669, 53.758965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884056, 43.630997, 53.195816>,  <37.312454, 43.382973, 53.727917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884056, 43.630997, 53.195816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077267, 43.967182, 53.294044>,  <37.193192, 44.168892, 53.352982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077267, 43.967182, 53.294044>,  <36.884056, 43.630997, 53.195816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077267, 43.967182, 53.294044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023558, 0.292835, -0.955873,
		-0.875291, 0.455924, 0.161245,
		0.483023, 0.840465, 0.245575,
		37.222172, 44.219322, 53.367718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451576, 44.208900, 52.952049>,  <36.884056, 43.630997, 53.195816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451576, 44.208900, 52.952049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830772, 44.333847, 52.976543>,  <37.058289, 44.408813, 52.991241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830772, 44.333847, 52.976543>,  <36.451576, 44.208900, 52.952049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830772, 44.333847, 52.976543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032967, 0.287700, -0.957153,
		-0.316600, 0.905349, 0.283034,
		0.947986, 0.312365, 0.061239,
		37.115170, 44.427555, 52.994915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505405, 44.832378, 52.634083>,  <36.451576, 44.208900, 52.952049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505405, 44.832378, 52.634083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884457, 44.704666, 52.637100>,  <37.111889, 44.628040, 52.638908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884457, 44.704666, 52.637100>,  <36.505405, 44.832378, 52.634083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884457, 44.704666, 52.637100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068653, 0.180592, -0.981159,
		0.311899, 0.930295, 0.193054,
		0.947632, -0.319276, 0.007541,
		37.168747, 44.608883, 52.639362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897350, 45.217342, 52.168533>,  <36.505405, 44.832378, 52.634083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897350, 45.217342, 52.168533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139061, 44.902191, 52.216042>,  <37.284088, 44.713100, 52.244549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139061, 44.902191, 52.216042>,  <36.897350, 45.217342, 52.168533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139061, 44.902191, 52.216042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303813, 0.090030, -0.948468,
		0.736580, 0.609221, 0.293769,
		0.604275, -0.787874, 0.118775,
		37.320343, 44.665829, 52.251675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384689, 45.295395, 51.616901>,  <36.897350, 45.217342, 52.168533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384689, 45.295395, 51.616901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.425415, 44.913872, 51.729954>,  <37.449852, 44.684956, 51.797783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.425415, 44.913872, 51.729954>,  <37.384689, 45.295395, 51.616901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425415, 44.913872, 51.729954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178820, -0.261930, -0.948376,
		0.978600, 0.147096, 0.143893,
		0.101813, -0.953811, 0.282628,
		37.455959, 44.627728, 51.814743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894684, 45.074242, 51.277161>,  <37.384689, 45.295395, 51.616901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894684, 45.074242, 51.277161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.724792, 44.725666, 51.375305>,  <37.622860, 44.516521, 51.434193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.724792, 44.725666, 51.375305>,  <37.894684, 45.074242, 51.277161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724792, 44.725666, 51.375305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242770, -0.370726, -0.896451,
		0.872165, -0.321179, 0.369016,
		-0.424725, -0.871439, 0.245362,
		37.597374, 44.464233, 51.448914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366951, 44.590389, 51.123222>,  <37.894684, 45.074242, 51.277161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366951, 44.590389, 51.123222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010750, 44.408436, 51.119591>,  <37.797028, 44.299263, 51.117413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010750, 44.408436, 51.119591>,  <38.366951, 44.590389, 51.123222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010750, 44.408436, 51.119591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206652, -0.386615, -0.898790,
		0.405336, -0.802252, 0.438285,
		-0.890504, -0.454885, -0.009078,
		37.743599, 44.271969, 51.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537399, 43.920586, 50.786106>,  <38.366951, 44.590389, 51.123222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537399, 43.920586, 50.786106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137688, 43.933594, 50.793949>,  <37.897861, 43.941399, 50.798656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137688, 43.933594, 50.793949>,  <38.537399, 43.920586, 50.786106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137688, 43.933594, 50.793949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036200, -0.659590, -0.750754,
		-0.011480, -0.750922, 0.660291,
		-0.999279, 0.032521, 0.019612,
		37.837906, 43.943352, 50.799831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297550, 43.211494, 50.856117>,  <38.537399, 43.920586, 50.786106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297550, 43.211494, 50.856117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035763, 43.444221, 50.662971>,  <37.878689, 43.583858, 50.547085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035763, 43.444221, 50.662971>,  <38.297550, 43.211494, 50.856117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035763, 43.444221, 50.662971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026483, -0.655887, -0.754395,
		-0.755627, -0.480938, 0.444664,
		-0.654467, 0.581817, -0.482869,
		37.839420, 43.618767, 50.518112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845596, 42.760349, 50.671665>,  <38.297550, 43.211494, 50.856117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845596, 42.760349, 50.671665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775192, 43.056206, 50.411831>,  <37.732948, 43.233719, 50.255932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775192, 43.056206, 50.411831>,  <37.845596, 42.760349, 50.671665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775192, 43.056206, 50.411831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028119, -0.655838, -0.754378,
		-0.983987, -0.151043, 0.094636,
		-0.176009, 0.739637, -0.649583,
		37.722389, 43.278095, 50.216957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305878, 42.616859, 50.190464>,  <37.845596, 42.760349, 50.671665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305878, 42.616859, 50.190464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521381, 42.894268, 49.999149>,  <37.650684, 43.060715, 49.884361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521381, 42.894268, 49.999149>,  <37.305878, 42.616859, 50.190464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521381, 42.894268, 49.999149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079813, -0.523161, -0.848488,
		-0.838670, 0.495305, -0.226506,
		0.538759, 0.693524, -0.478291,
		37.683010, 43.102325, 49.855663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189922, 42.423584, 49.575695>,  <37.305878, 42.616859, 50.190464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189922, 42.423584, 49.575695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469444, 42.700455, 49.503525>,  <37.637157, 42.866577, 49.460220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469444, 42.700455, 49.503525>,  <37.189922, 42.423584, 49.575695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469444, 42.700455, 49.503525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051417, -0.300193, -0.952492,
		-0.713458, 0.656333, -0.245367,
		0.698809, 0.692179, -0.180428,
		37.679089, 42.908108, 49.449398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802490, 43.021038, 49.515526>,  <37.189922, 42.423584, 49.575695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802490, 43.021038, 49.515526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432652, 42.871880, 49.546703>,  <36.210751, 42.782387, 49.565411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432652, 42.871880, 49.546703>,  <36.802490, 43.021038, 49.515526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432652, 42.871880, 49.546703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030846, 0.130658, 0.990947,
		-0.379701, 0.918629, -0.109303,
		-0.924595, -0.372892, 0.077947,
		36.155273, 42.760014, 49.570087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420307, 43.492588, 49.854279>,  <36.802490, 43.021038, 49.515526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420307, 43.492588, 49.854279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222050, 43.152027, 49.922916>,  <36.103096, 42.947689, 49.964100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222050, 43.152027, 49.922916>,  <36.420307, 43.492588, 49.854279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222050, 43.152027, 49.922916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001915, 0.198646, 0.980070,
		-0.868525, 0.485436, -0.100088,
		-0.495643, -0.851406, 0.171599,
		36.073357, 42.896606, 49.974396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873978, 43.587261, 50.344025>,  <36.420307, 43.492588, 49.854279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873978, 43.587261, 50.344025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916401, 43.191135, 50.379856>,  <35.941853, 42.953461, 50.401356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916401, 43.191135, 50.379856>,  <35.873978, 43.587261, 50.344025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916401, 43.191135, 50.379856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157715, 0.072189, 0.984842,
		-0.981773, -0.118575, -0.148532,
		0.106055, -0.990317, 0.089575,
		35.948219, 42.894039, 50.406727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345100, 43.416138, 50.780251>,  <35.873978, 43.587261, 50.344025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345100, 43.416138, 50.780251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570309, 43.086727, 50.807991>,  <35.705433, 42.889080, 50.824635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570309, 43.086727, 50.807991>,  <35.345100, 43.416138, 50.780251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570309, 43.086727, 50.807991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331987, -0.148529, 0.931517,
		-0.756830, -0.547487, -0.357025,
		0.563022, -0.823528, 0.069348,
		35.739216, 42.839668, 50.828796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900162, 42.810940, 50.975990>,  <35.345100, 43.416138, 50.780251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900162, 42.810940, 50.975990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274426, 42.721287, 51.085022>,  <35.498985, 42.667496, 51.150440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274426, 42.721287, 51.085022>,  <34.900162, 42.810940, 50.975990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274426, 42.721287, 51.085022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316915, -0.193886, 0.928425,
		-0.155237, -0.955078, -0.252441,
		0.935664, -0.224129, 0.272580,
		35.555126, 42.654045, 51.166794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783092, 42.318428, 51.447800>,  <34.900162, 42.810940, 50.975990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783092, 42.318428, 51.447800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165298, 42.418823, 51.509758>,  <35.394623, 42.479061, 51.546932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165298, 42.418823, 51.509758>,  <34.783092, 42.318428, 51.447800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165298, 42.418823, 51.509758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141726, -0.069846, 0.987439,
		0.258657, -0.965466, -0.031167,
		0.955516, 0.250991, 0.154898,
		35.451954, 42.494122, 51.556229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995544, 41.882645, 51.948536>,  <34.783092, 42.318428, 51.447800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995544, 41.882645, 51.948536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242954, 42.196758, 51.959534>,  <35.391399, 42.385227, 51.966133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242954, 42.196758, 51.959534>,  <34.995544, 41.882645, 51.948536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242954, 42.196758, 51.959534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128006, 0.066177, 0.989563,
		0.775268, -0.615590, 0.141453,
		0.618526, 0.785283, 0.027494,
		35.428513, 42.432343, 51.967781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181553, 41.201588, 51.958794>,  <34.995544, 41.882645, 51.948536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181553, 41.201588, 51.958794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987556, 40.869164, 52.067692>,  <34.871159, 40.669708, 52.133030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987556, 40.869164, 52.067692>,  <35.181553, 41.201588, 51.958794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987556, 40.869164, 52.067692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253465, -0.164367, -0.953278,
		0.836980, -0.531340, -0.130927,
		-0.484995, -0.831060, 0.272248,
		34.842056, 40.619846, 52.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379692, 40.718594, 51.540848>,  <35.181553, 41.201588, 51.958794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379692, 40.718594, 51.540848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050049, 40.541401, 51.682049>,  <34.852261, 40.435085, 51.766769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050049, 40.541401, 51.682049>,  <35.379692, 40.718594, 51.540848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050049, 40.541401, 51.682049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085387, -0.518921, -0.850547,
		0.559956, -0.731086, 0.389824,
		-0.824111, -0.442983, 0.352998,
		34.802814, 40.408504, 51.787949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483990, 39.993351, 51.379242>,  <35.379692, 40.718594, 51.540848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483990, 39.993351, 51.379242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093208, 40.061184, 51.431080>,  <34.858738, 40.101883, 51.462181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093208, 40.061184, 51.431080>,  <35.483990, 39.993351, 51.379242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093208, 40.061184, 51.431080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202820, -0.548566, -0.811135,
		-0.066462, -0.818729, 0.570320,
		-0.976958, 0.169582, 0.129596,
		34.800121, 40.112061, 51.469959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220444, 39.305626, 51.392174>,  <35.483990, 39.993351, 51.379242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220444, 39.305626, 51.392174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924259, 39.556023, 51.294308>,  <34.746548, 39.706261, 51.235588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924259, 39.556023, 51.294308>,  <35.220444, 39.305626, 51.392174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924259, 39.556023, 51.294308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107749, -0.469881, -0.876129,
		-0.663409, -0.622375, 0.415377,
		-0.740459, 0.625988, -0.244663,
		34.702122, 39.743820, 51.220909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713646, 38.849415, 51.095657>,  <35.220444, 39.305626, 51.392174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713646, 38.849415, 51.095657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616898, 39.223778, 50.993221>,  <34.558849, 39.448395, 50.931759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616898, 39.223778, 50.993221>,  <34.713646, 38.849415, 51.095657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616898, 39.223778, 50.993221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467253, -0.343657, -0.814601,
		-0.850396, -0.077366, 0.520423,
		-0.241870, 0.935903, -0.256095,
		34.544338, 39.504547, 50.916393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057793, 38.735695, 50.856583>,  <34.713646, 38.849415, 51.095657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057793, 38.735695, 50.856583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202553, 39.083061, 50.721004>,  <34.289410, 39.291481, 50.639656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202553, 39.083061, 50.721004>,  <34.057793, 38.735695, 50.856583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202553, 39.083061, 50.721004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429417, -0.167421, -0.887452,
		-0.827423, 0.466718, 0.312323,
		0.361901, 0.868415, -0.338944,
		34.311123, 39.343586, 50.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542492, 39.054920, 50.530357>,  <34.057793, 38.735695, 50.856583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542492, 39.054920, 50.530357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880585, 39.189499, 50.364277>,  <34.083439, 39.270245, 50.264629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880585, 39.189499, 50.364277>,  <33.542492, 39.054920, 50.530357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880585, 39.189499, 50.364277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305060, -0.334155, -0.891784,
		-0.438778, 0.880423, -0.179801,
		0.845229, 0.336445, -0.415201,
		34.134155, 39.290432, 50.239716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.322075, 38.677692, 53.997833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.687981, 38.798653, 53.890682>,  <37.907524, 38.871227, 53.826393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.687981, 38.798653, 53.890682>,  <37.322075, 38.677692, 53.997833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687981, 38.798653, 53.890682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078599, -0.517191, -0.852253,
		-0.396262, 0.800668, -0.449341,
		0.914767, 0.302398, -0.267875,
		37.962410, 38.889374, 53.810318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322559, 39.103806, 53.419590>,  <37.322075, 38.677692, 53.997833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322559, 39.103806, 53.419590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.683029, 38.930798, 53.430984>,  <37.899311, 38.826992, 53.437820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.683029, 38.930798, 53.430984>,  <37.322559, 39.103806, 53.419590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683029, 38.930798, 53.430984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197836, -0.468881, -0.860820,
		0.385680, 0.770113, -0.508111,
		0.901172, -0.432524, 0.028482,
		37.953381, 38.801041, 53.439529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513126, 39.055130, 52.733669>,  <37.322559, 39.103806, 53.419590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513126, 39.055130, 52.733669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.753170, 38.795296, 52.920395>,  <37.897194, 38.639397, 53.032429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.753170, 38.795296, 52.920395>,  <37.513126, 39.055130, 52.733669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753170, 38.795296, 52.920395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006808, -0.587701, -0.809050,
		0.799893, 0.482336, -0.357104,
		0.600104, -0.649584, 0.466814,
		37.933201, 38.600422, 53.060440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082104, 38.851536, 52.226082>,  <37.513126, 39.055130, 52.733669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082104, 38.851536, 52.226082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.073250, 38.561699, 52.501614>,  <38.067936, 38.387798, 52.666931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.073250, 38.561699, 52.501614>,  <38.082104, 38.851536, 52.226082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073250, 38.561699, 52.501614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030790, -0.688173, -0.724894,
		0.999281, -0.037253, -0.007078,
		-0.022134, -0.724590, 0.688825,
		38.066608, 38.344322, 52.708260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636753, 38.443932, 52.056221>,  <38.082104, 38.851536, 52.226082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636753, 38.443932, 52.056221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.395401, 38.208336, 52.271267>,  <38.250591, 38.066978, 52.400295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.395401, 38.208336, 52.271267>,  <38.636753, 38.443932, 52.056221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395401, 38.208336, 52.271267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047393, -0.699454, -0.713105,
		0.796048, -0.404791, 0.449948,
		-0.603376, -0.588990, 0.537614,
		38.214390, 38.031639, 52.432552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829979, 37.701962, 51.904182>,  <38.636753, 38.443932, 52.056221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829979, 37.701962, 51.904182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.453270, 37.677078, 52.036366>,  <38.227245, 37.662148, 52.115673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.453270, 37.677078, 52.036366>,  <38.829979, 37.701962, 51.904182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453270, 37.677078, 52.036366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154934, -0.791921, -0.590641,
		0.298439, -0.607446, 0.736168,
		-0.941770, -0.062212, 0.330454,
		38.170738, 37.658413, 52.135502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727501, 36.987408, 51.954391>,  <38.829979, 37.701962, 51.904182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727501, 36.987408, 51.954391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.343723, 37.100136, 51.956863>,  <38.113457, 37.167774, 51.958347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.343723, 37.100136, 51.956863>,  <38.727501, 36.987408, 51.954391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343723, 37.100136, 51.956863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213707, -0.712905, -0.667905,
		-0.183820, -0.642141, 0.744221,
		-0.959448, 0.281819, 0.006184,
		38.055889, 37.184681, 51.958717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342316, 36.413807, 51.777489>,  <38.727501, 36.987408, 51.954391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342316, 36.413807, 51.777489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049164, 36.679787, 51.719898>,  <37.873272, 36.839375, 51.685345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049164, 36.679787, 51.719898>,  <38.342316, 36.413807, 51.777489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049164, 36.679787, 51.719898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400184, -0.592455, -0.699178,
		-0.550221, -0.454793, 0.700300,
		-0.732877, 0.664951, -0.143980,
		37.829300, 36.879272, 51.676704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712105, 35.999062, 51.711338>,  <38.342316, 36.413807, 51.777489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712105, 35.999062, 51.711338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.626179, 36.350941, 51.541637>,  <37.574623, 36.562069, 51.439816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.626179, 36.350941, 51.541637>,  <37.712105, 35.999062, 51.711338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626179, 36.350941, 51.541637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361128, -0.475150, -0.802383,
		-0.907437, -0.019151, 0.419751,
		-0.214811, 0.879696, -0.424253,
		37.561737, 36.614849, 51.414360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079079, 35.929710, 51.494106>,  <37.712105, 35.999062, 51.711338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079079, 35.929710, 51.494106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.240845, 36.216625, 51.267147>,  <37.337906, 36.388775, 51.130970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.240845, 36.216625, 51.267147>,  <37.079079, 35.929710, 51.494106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240845, 36.216625, 51.267147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317380, -0.471773, -0.822618,
		-0.857740, 0.512760, 0.036862,
		0.404415, 0.717291, -0.567399,
		37.362171, 36.431812, 51.096928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760887, 35.618809, 51.026222>,  <37.079079, 35.929710, 51.494106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760887, 35.618809, 51.026222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.024456, 35.870014, 50.860611>,  <37.182598, 36.020737, 50.761242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.024456, 35.870014, 50.860611>,  <36.760887, 35.618809, 51.026222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024456, 35.870014, 50.860611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023067, -0.533292, -0.845617,
		-0.751856, 0.566747, -0.336913,
		0.658924, 0.628010, -0.414032,
		37.222134, 36.058418, 50.736401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466808, 35.865314, 50.454296>,  <36.760887, 35.618809, 51.026222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466808, 35.865314, 50.454296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858036, 35.924618, 50.395790>,  <37.092773, 35.960201, 50.360687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858036, 35.924618, 50.395790>,  <36.466808, 35.865314, 50.454296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858036, 35.924618, 50.395790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043247, -0.542416, -0.838996,
		-0.203726, 0.826925, -0.524110,
		0.978072, 0.148259, -0.146266,
		37.151459, 35.969097, 50.351910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874310, 36.226582, 50.814114>,  <36.466808, 35.865314, 50.454296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874310, 36.226582, 50.814114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531898, 36.403080, 50.706398>,  <35.326450, 36.508980, 50.641769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531898, 36.403080, 50.706398>,  <35.874310, 36.226582, 50.814114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531898, 36.403080, 50.706398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047318, 0.451863, 0.890831,
		0.514759, 0.775319, -0.365928,
		-0.856028, 0.441249, -0.269288,
		35.275089, 36.535454, 50.625610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893604, 36.918678, 51.070107>,  <35.874310, 36.226582, 50.814114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893604, 36.918678, 51.070107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.504280, 36.852875, 51.006111>,  <35.270683, 36.813393, 50.967712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.504280, 36.852875, 51.006111>,  <35.893604, 36.918678, 51.070107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504280, 36.852875, 51.006111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212749, 0.385550, 0.897824,
		-0.086014, 0.907903, -0.410261,
		-0.973314, -0.164509, -0.159993,
		35.212288, 36.803524, 50.958115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524265, 37.547436, 51.224785>,  <35.893604, 36.918678, 51.070107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524265, 37.547436, 51.224785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274242, 37.241768, 51.288471>,  <35.124229, 37.058369, 51.326683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274242, 37.241768, 51.288471>,  <35.524265, 37.547436, 51.224785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274242, 37.241768, 51.288471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220512, 0.368534, 0.903082,
		-0.748782, 0.529370, -0.398863,
		-0.625060, -0.764166, 0.159219,
		35.086723, 37.012520, 51.336235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860287, 37.840595, 51.498043>,  <35.524265, 37.547436, 51.224785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860287, 37.840595, 51.498043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871117, 37.454216, 51.600971>,  <34.877617, 37.222389, 51.662727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871117, 37.454216, 51.600971>,  <34.860287, 37.840595, 51.498043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871117, 37.454216, 51.600971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144084, 0.250958, 0.957214,
		-0.989195, -0.062994, -0.132382,
		0.027077, -0.965946, 0.257323,
		34.879238, 37.164433, 51.678169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349686, 37.742855, 52.032814>,  <34.860287, 37.840595, 51.498043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349686, 37.742855, 52.032814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589222, 37.427044, 52.086540>,  <34.732944, 37.237556, 52.118774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589222, 37.427044, 52.086540>,  <34.349686, 37.742855, 52.032814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589222, 37.427044, 52.086540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085971, 0.230116, 0.969358,
		-0.796244, -0.568940, 0.205679,
		0.598836, -0.789528, 0.134316,
		34.768871, 37.190186, 52.126835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079025, 37.457127, 52.697552>,  <34.349686, 37.742855, 52.032814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079025, 37.457127, 52.697552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.452484, 37.325554, 52.640827>,  <34.676559, 37.246609, 52.606792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.452484, 37.325554, 52.640827>,  <34.079025, 37.457127, 52.697552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452484, 37.325554, 52.640827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244912, 0.297311, 0.922835,
		-0.261388, -0.896332, 0.358142,
		0.933646, -0.328931, -0.141809,
		34.732578, 37.226875, 52.598286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233173, 37.109600, 53.314411>,  <34.079025, 37.457127, 52.697552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233173, 37.109600, 53.314411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.588104, 37.175629, 53.142181>,  <34.801064, 37.215248, 53.038841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.588104, 37.175629, 53.142181>,  <34.233173, 37.109600, 53.314411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588104, 37.175629, 53.142181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371320, 0.297892, 0.879421,
		0.273426, -0.940220, 0.203037,
		0.887333, 0.165065, -0.430574,
		34.854301, 37.225151, 53.013008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643673, 36.819969, 53.748871>,  <34.233173, 37.109600, 53.314411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643673, 36.819969, 53.748871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895710, 37.062546, 53.554874>,  <35.046932, 37.208092, 53.438477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895710, 37.062546, 53.554874>,  <34.643673, 36.819969, 53.748871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895710, 37.062546, 53.554874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424875, 0.253548, 0.869019,
		0.649976, -0.753622, -0.097903,
		0.630088, 0.606439, -0.484995,
		35.084736, 37.244476, 53.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282375, 36.574142, 53.921993>,  <34.643673, 36.819969, 53.748871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282375, 36.574142, 53.921993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336361, 36.949188, 53.793827>,  <35.368752, 37.174213, 53.716927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336361, 36.949188, 53.793827>,  <35.282375, 36.574142, 53.921993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336361, 36.949188, 53.793827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418448, 0.239192, 0.876178,
		0.898157, -0.252333, -0.360059,
		0.134965, 0.937612, -0.320420,
		35.376850, 37.230473, 53.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886707, 36.747650, 54.216400>,  <35.282375, 36.574142, 53.921993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886707, 36.747650, 54.216400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.716278, 37.093376, 54.109501>,  <35.614021, 37.300812, 54.045361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.716278, 37.093376, 54.109501>,  <35.886707, 36.747650, 54.216400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716278, 37.093376, 54.109501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410928, 0.448070, 0.793960,
		0.805975, 0.228468, -0.546082,
		-0.426078, 0.864312, -0.267249,
		35.588455, 37.352669, 54.029327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448318, 37.333977, 54.204544>,  <35.886707, 36.747650, 54.216400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448318, 37.333977, 54.204544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.084904, 37.493126, 54.255547>,  <35.866856, 37.588615, 54.286148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.084904, 37.493126, 54.255547>,  <36.448318, 37.333977, 54.204544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084904, 37.493126, 54.255547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373717, 0.637451, 0.673789,
		0.186802, 0.659814, -0.727839,
		-0.908538, 0.397871, 0.127506,
		35.812344, 37.612488, 54.293797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688934, 37.940342, 54.449997>,  <36.448318, 37.333977, 54.204544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688934, 37.940342, 54.449997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300648, 37.934109, 54.545891>,  <36.067677, 37.930370, 54.603428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300648, 37.934109, 54.545891>,  <36.688934, 37.940342, 54.449997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300648, 37.934109, 54.545891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238359, 0.062153, 0.969186,
		-0.030000, 0.997945, -0.056619,
		-0.970714, -0.015580, 0.239734,
		36.009434, 37.929436, 54.617809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641735, 38.463146, 55.036255>,  <36.688934, 37.940342, 54.449997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641735, 38.463146, 55.036255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317863, 38.230328, 55.066315>,  <36.123543, 38.090637, 55.084351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317863, 38.230328, 55.066315>,  <36.641735, 38.463146, 55.036255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317863, 38.230328, 55.066315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012016, 0.111579, 0.993683,
		-0.586753, 0.805465, -0.083350,
		-0.809677, -0.582045, 0.075148,
		36.074959, 38.055714, 55.088860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987686, 38.823864, 55.331902>,  <36.641735, 38.463146, 55.036255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987686, 38.823864, 55.331902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034828, 38.433949, 55.407688>,  <36.063114, 38.200001, 55.453159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034828, 38.433949, 55.407688>,  <35.987686, 38.823864, 55.331902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034828, 38.433949, 55.407688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070476, 0.198527, 0.977558,
		-0.990527, -0.101855, 0.092097,
		0.117853, -0.974788, 0.189468,
		36.070183, 38.141514, 55.464527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878559, 39.443188, 54.971409>,  <35.987686, 38.823864, 55.331902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878559, 39.443188, 54.971409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757553, 39.820969, 54.920040>,  <35.684952, 40.047638, 54.889217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757553, 39.820969, 54.920040>,  <35.878559, 39.443188, 54.971409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757553, 39.820969, 54.920040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392444, -0.246207, -0.886211,
		-0.868604, -0.217691, 0.445126,
		-0.302513, 0.944454, -0.128425,
		35.666798, 40.104305, 54.881512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220955, 39.437248, 54.678917>,  <35.878559, 39.443188, 54.971409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220955, 39.437248, 54.678917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345520, 39.809872, 54.603848>,  <35.420261, 40.033447, 54.558807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345520, 39.809872, 54.603848>,  <35.220955, 39.437248, 54.678917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345520, 39.809872, 54.603848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415320, -0.044206, -0.908600,
		-0.854709, 0.360897, 0.373128,
		0.311417, 0.931557, -0.187672,
		35.438946, 40.089340, 54.547546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758110, 39.735611, 54.272041>,  <35.220955, 39.437248, 54.678917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758110, 39.735611, 54.272041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034920, 40.020390, 54.224316>,  <35.201004, 40.191257, 54.195679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034920, 40.020390, 54.224316>,  <34.758110, 39.735611, 54.272041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034920, 40.020390, 54.224316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365576, 0.203113, -0.908350,
		-0.622460, 0.672220, 0.400829,
		0.692025, 0.711945, -0.119318,
		35.242527, 40.233974, 54.188519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342682, 40.281658, 54.076118>,  <34.758110, 39.735611, 54.272041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342682, 40.281658, 54.076118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713493, 40.352383, 53.943844>,  <34.935982, 40.394817, 53.864479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713493, 40.352383, 53.943844>,  <34.342682, 40.281658, 54.076118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713493, 40.352383, 53.943844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370553, 0.296727, -0.880139,
		-0.057497, 0.938451, 0.340594,
		0.927030, 0.176813, -0.330685,
		34.991604, 40.405426, 53.844639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341076, 40.909565, 53.661938>,  <34.342682, 40.281658, 54.076118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341076, 40.909565, 53.661938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.661549, 40.702923, 53.541122>,  <34.853832, 40.578938, 53.468636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.661549, 40.702923, 53.541122>,  <34.341076, 40.909565, 53.661938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661549, 40.702923, 53.541122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264857, 0.146475, -0.953098,
		0.536614, 0.843603, -0.019472,
		0.801184, -0.516604, -0.302035,
		34.901905, 40.547943, 53.450512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513248, 41.296745, 53.179760>,  <34.341076, 40.909565, 53.661938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513248, 41.296745, 53.179760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716530, 40.961426, 53.100788>,  <34.838497, 40.760235, 53.053406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716530, 40.961426, 53.100788>,  <34.513248, 41.296745, 53.179760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716530, 40.961426, 53.100788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366139, -0.002802, -0.930556,
		0.779534, 0.545198, -0.308359,
		0.508202, -0.838302, -0.197434,
		34.868992, 40.709934, 53.041557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829964, 41.420982, 52.527546>,  <34.513248, 41.296745, 53.179760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829964, 41.420982, 52.527546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830143, 41.022579, 52.563232>,  <34.830250, 40.783535, 52.584644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830143, 41.022579, 52.563232>,  <34.829964, 41.420982, 52.527546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830143, 41.022579, 52.563232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413023, -0.081436, -0.907072,
		0.910720, -0.036442, -0.411412,
		0.000448, -0.996012, 0.089217,
		34.830276, 40.723774, 52.589996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564594, 41.671196, 52.490784>,  <34.829964, 41.420982, 52.527546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564594, 41.671196, 52.490784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.582733, 42.070126, 52.467854>,  <35.593616, 42.309483, 52.454098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.582733, 42.070126, 52.467854>,  <35.564594, 41.671196, 52.490784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582733, 42.070126, 52.467854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172302, 0.048713, 0.983839,
		0.984000, -0.054488, -0.169632,
		0.045344, 0.997325, -0.057322,
		35.596336, 42.369324, 52.450657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154232, 41.871769, 52.949482>,  <35.564594, 41.671196, 52.490784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154232, 41.871769, 52.949482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.930363, 42.201263, 52.913216>,  <35.796040, 42.398960, 52.891457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.930363, 42.201263, 52.913216>,  <36.154232, 41.871769, 52.949482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930363, 42.201263, 52.913216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298710, 0.302573, 0.905109,
		0.773007, 0.479481, -0.415401,
		-0.559672, 0.823740, -0.090665,
		35.762463, 42.448387, 52.886017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426846, 42.350903, 53.453861>,  <36.154232, 41.871769, 52.949482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426846, 42.350903, 53.453861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064243, 42.489502, 53.357372>,  <35.846684, 42.572662, 53.299477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064243, 42.489502, 53.357372>,  <36.426846, 42.350903, 53.453861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064243, 42.489502, 53.357372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089468, 0.400722, 0.911821,
		0.412609, 0.848151, -0.332255,
		-0.906504, 0.346499, -0.241224,
		35.792294, 42.593452, 53.285004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514874, 43.022495, 53.499420>,  <36.426846, 42.350903, 53.453861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514874, 43.022495, 53.499420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118172, 42.971241, 53.498425>,  <35.880150, 42.940487, 53.497826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118172, 42.971241, 53.498425>,  <36.514874, 43.022495, 53.499420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118172, 42.971241, 53.498425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067247, 0.503749, 0.861229,
		-0.109101, 0.854294, -0.508211,
		-0.991753, -0.128137, -0.002489,
		35.820644, 42.932800, 53.497677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151020, 43.730827, 53.591663>,  <36.514874, 43.022495, 53.499420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151020, 43.730827, 53.591663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916359, 43.438061, 53.730309>,  <35.775562, 43.262402, 53.813496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916359, 43.438061, 53.730309>,  <36.151020, 43.730827, 53.591663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916359, 43.438061, 53.730309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029847, 0.408168, 0.912419,
		-0.809291, 0.545615, -0.217605,
		-0.586649, -0.731918, 0.346612,
		35.740364, 43.218487, 53.834293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648224, 44.113167, 53.865715>,  <36.151020, 43.730827, 53.591663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648224, 44.113167, 53.865715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592850, 43.756092, 54.037273>,  <35.559628, 43.541847, 54.140209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592850, 43.756092, 54.037273>,  <35.648224, 44.113167, 53.865715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592850, 43.756092, 54.037273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134047, 0.412190, 0.901183,
		-0.981258, 0.182246, 0.062601,
		-0.138434, -0.892684, 0.428895,
		35.551319, 43.488285, 54.165943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048901, 44.206249, 54.423019>,  <35.648224, 44.113167, 53.865715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048901, 44.206249, 54.423019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.233959, 43.861542, 54.506268>,  <35.344994, 43.654716, 54.556217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.233959, 43.861542, 54.506268>,  <35.048901, 44.206249, 54.423019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233959, 43.861542, 54.506268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096310, 0.282223, 0.954502,
		-0.881295, -0.421555, 0.213567,
		0.462649, -0.861767, 0.208122,
		35.372753, 43.603012, 54.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702412, 43.957779, 55.002468>,  <35.048901, 44.206249, 54.423019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702412, 43.957779, 55.002468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.058186, 43.775078, 54.995640>,  <35.271648, 43.665459, 54.991543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.058186, 43.775078, 54.995640>,  <34.702412, 43.957779, 55.002468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058186, 43.775078, 54.995640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186504, 0.328569, 0.925883,
		-0.417286, -0.826693, 0.377425,
		0.889431, -0.456749, -0.017074,
		35.325016, 43.638054, 54.990517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779724, 43.431435, 55.605698>,  <34.702412, 43.957779, 55.002468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779724, 43.431435, 55.605698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.133335, 43.576912, 55.488239>,  <35.345501, 43.664200, 55.417767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.133335, 43.576912, 55.488239>,  <34.779724, 43.431435, 55.605698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133335, 43.576912, 55.488239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159281, 0.356220, 0.920726,
		0.439467, -0.860716, 0.256977,
		0.884024, 0.363697, -0.293643,
		35.398544, 43.686020, 55.400146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.412243, 38.705139, 39.845360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810394, 38.675461, 39.869717>,  <35.049286, 38.657654, 39.884331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810394, 38.675461, 39.869717>,  <34.412243, 38.705139, 39.845360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810394, 38.675461, 39.869717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000956, 0.626719, 0.779245,
		-0.095976, -0.775705, 0.623755,
		0.995383, -0.074192, 0.060892,
		35.109009, 38.653202, 39.887985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530094, 38.538200, 40.555099>,  <34.412243, 38.705139, 39.845360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530094, 38.538200, 40.555099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876865, 38.689926, 40.425762>,  <35.084927, 38.780964, 40.348160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876865, 38.689926, 40.425762>,  <34.530094, 38.538200, 40.555099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876865, 38.689926, 40.425762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140958, 0.435666, 0.889003,
		0.478089, -0.816279, 0.324222,
		0.866927, 0.379321, -0.323348,
		35.136944, 38.803722, 40.328758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001247, 38.323814, 40.958725>,  <34.530094, 38.538200, 40.555099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001247, 38.323814, 40.958725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185169, 38.638416, 40.793808>,  <35.295525, 38.827179, 40.694859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185169, 38.638416, 40.793808>,  <35.001247, 38.323814, 40.958725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185169, 38.638416, 40.793808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164729, 0.380680, 0.909916,
		0.872605, -0.486304, 0.045480,
		0.459809, 0.786506, -0.412292,
		35.323112, 38.874367, 40.670120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594994, 38.337208, 41.386272>,  <35.001247, 38.323814, 40.958725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594994, 38.337208, 41.386272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535881, 38.688663, 41.204655>,  <35.500416, 38.899536, 41.095684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535881, 38.688663, 41.204655>,  <35.594994, 38.337208, 41.386272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535881, 38.688663, 41.204655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059875, 0.466192, 0.882655,
		0.987206, 0.103252, -0.121501,
		-0.147779, 0.878638, -0.454045,
		35.491547, 38.952255, 41.068439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144871, 38.885654, 41.760727>,  <35.594994, 38.337208, 41.386272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144871, 38.885654, 41.760727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886620, 39.120586, 41.565498>,  <35.731670, 39.261543, 41.448360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886620, 39.120586, 41.565498>,  <36.144871, 38.885654, 41.760727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886620, 39.120586, 41.565498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061434, 0.597109, 0.799804,
		0.761179, 0.546358, -0.349427,
		-0.645625, 0.587328, -0.488072,
		35.692932, 39.296783, 41.419075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402641, 39.560844, 41.993401>,  <36.144871, 38.885654, 41.760727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402641, 39.560844, 41.993401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026421, 39.610825, 41.867073>,  <35.800686, 39.640812, 41.791275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026421, 39.610825, 41.867073>,  <36.402641, 39.560844, 41.993401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026421, 39.610825, 41.867073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161546, 0.653361, 0.739609,
		0.298758, 0.746664, -0.594337,
		-0.940556, 0.124951, -0.315818,
		35.744255, 39.648312, 41.772327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330647, 40.355461, 41.862637>,  <36.402641, 39.560844, 41.993401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330647, 40.355461, 41.862637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991272, 40.159325, 41.942360>,  <35.787647, 40.041645, 41.990192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991272, 40.159325, 41.942360>,  <36.330647, 40.355461, 41.862637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991272, 40.159325, 41.942360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082957, 0.495088, 0.864873,
		-0.522755, 0.717257, -0.460728,
		-0.848437, -0.490337, 0.199308,
		35.736740, 40.012222, 42.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863686, 40.793362, 42.126812>,  <36.330647, 40.355461, 41.862637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863686, 40.793362, 42.126812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705814, 40.443569, 42.239597>,  <35.611092, 40.233692, 42.307266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705814, 40.443569, 42.239597>,  <35.863686, 40.793362, 42.126812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705814, 40.443569, 42.239597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140777, 0.360803, 0.921956,
		-0.907969, 0.324185, -0.265510,
		-0.394681, -0.874485, 0.281961,
		35.587410, 40.181225, 42.324184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296555, 41.060760, 42.441360>,  <35.863686, 40.793362, 42.126812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296555, 41.060760, 42.441360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394478, 40.694176, 42.567955>,  <35.453232, 40.474224, 42.643913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394478, 40.694176, 42.567955>,  <35.296555, 41.060760, 42.441360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394478, 40.694176, 42.567955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211340, 0.268135, 0.939915,
		-0.946259, -0.296982, -0.128044,
		0.244805, -0.916463, 0.316490,
		35.467918, 40.419235, 42.662903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717552, 40.919418, 42.897701>,  <35.296555, 41.060760, 42.441360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717552, 40.919418, 42.897701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003128, 40.665565, 43.016048>,  <35.174473, 40.513256, 43.087059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003128, 40.665565, 43.016048>,  <34.717552, 40.919418, 42.897701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003128, 40.665565, 43.016048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203865, 0.215846, 0.954908,
		-0.669875, -0.742062, 0.024722,
		0.713937, -0.634629, 0.295870,
		35.217308, 40.475178, 43.104809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393150, 40.550205, 43.629921>,  <34.717552, 40.919418, 42.897701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393150, 40.550205, 43.629921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784683, 40.469624, 43.615452>,  <35.019604, 40.421272, 43.606770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784683, 40.469624, 43.615452>,  <34.393150, 40.550205, 43.629921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784683, 40.469624, 43.615452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045418, 0.041460, 0.998107,
		-0.199576, -0.978619, 0.049732,
		0.978829, -0.201457, -0.036173,
		35.078331, 40.409187, 43.604599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507614, 39.970676, 44.109684>,  <34.393150, 40.550205, 43.629921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507614, 39.970676, 44.109684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842598, 40.182190, 44.054474>,  <35.043587, 40.309097, 44.021347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842598, 40.182190, 44.054474>,  <34.507614, 39.970676, 44.109684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842598, 40.182190, 44.054474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068559, 0.148921, 0.986470,
		0.542181, -0.835592, 0.088463,
		0.837460, 0.528781, -0.138029,
		35.093838, 40.340824, 44.013065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320625, 39.307228, 44.046268>,  <34.507614, 39.970676, 44.109684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320625, 39.307228, 44.046268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989071, 39.133465, 44.187263>,  <33.790138, 39.029209, 44.271858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989071, 39.133465, 44.187263>,  <34.320625, 39.307228, 44.046268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989071, 39.133465, 44.187263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177619, -0.393123, -0.902167,
		0.530476, -0.810399, 0.248695,
		-0.828883, -0.434405, 0.352484,
		33.740406, 39.003143, 44.293007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341312, 38.585083, 43.843681>,  <34.320625, 39.307228, 44.046268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341312, 38.585083, 43.843681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960114, 38.698914, 43.885265>,  <33.731392, 38.767212, 43.910217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960114, 38.698914, 43.885265>,  <34.341312, 38.585083, 43.843681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960114, 38.698914, 43.885265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214558, -0.391639, -0.894753,
		-0.213909, -0.875006, 0.434290,
		-0.953000, 0.284577, 0.103964,
		33.674213, 38.784286, 43.916454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980621, 38.000145, 43.695507>,  <34.341312, 38.585083, 43.843681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980621, 38.000145, 43.695507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726604, 38.299923, 43.620621>,  <33.574196, 38.479790, 43.575687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726604, 38.299923, 43.620621>,  <33.980621, 38.000145, 43.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726604, 38.299923, 43.620621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249320, -0.428243, -0.868589,
		-0.731138, -0.504911, 0.458805,
		-0.635040, 0.749448, -0.187221,
		33.536091, 38.524757, 43.564453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274494, 37.672951, 43.460388>,  <33.980621, 38.000145, 43.695507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274494, 37.672951, 43.460388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297222, 38.044086, 43.312939>,  <33.310860, 38.266769, 43.224468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297222, 38.044086, 43.312939>,  <33.274494, 37.672951, 43.460388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297222, 38.044086, 43.312939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284479, -0.338867, -0.896795,
		-0.956997, 0.155825, 0.244695,
		0.056824, 0.927841, -0.368623,
		33.314270, 38.322437, 43.202351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677315, 37.591419, 43.065460>,  <33.274494, 37.672951, 43.460388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677315, 37.591419, 43.065460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821781, 37.943020, 42.940937>,  <32.908463, 38.153980, 42.866222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821781, 37.943020, 42.940937>,  <32.677315, 37.591419, 43.065460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821781, 37.943020, 42.940937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240730, -0.234634, -0.941805,
		-0.900892, 0.415090, 0.126861,
		0.361167, 0.879004, -0.311305,
		32.930130, 38.206722, 42.847546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199112, 37.870708, 42.603844>,  <32.677315, 37.591419, 43.065460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199112, 37.870708, 42.603844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511723, 38.099350, 42.503864>,  <32.699291, 38.236534, 42.443874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511723, 38.099350, 42.503864>,  <32.199112, 37.870708, 42.603844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511723, 38.099350, 42.503864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222016, -0.119597, -0.967680,
		-0.583026, 0.811765, 0.033437,
		0.781530, 0.571606, -0.249953,
		32.746181, 38.270832, 42.428879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916775, 38.298668, 42.133965>,  <32.199112, 37.870708, 42.603844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916775, 38.298668, 42.133965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314098, 38.320229, 42.093102>,  <32.552490, 38.333164, 42.068584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314098, 38.320229, 42.093102>,  <31.916775, 38.298668, 42.133965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314098, 38.320229, 42.093102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085813, -0.247705, -0.965028,
		-0.077318, 0.967335, -0.241422,
		0.993307, 0.053897, -0.102162,
		32.612091, 38.336399, 42.062454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959068, 38.594845, 41.511593>,  <31.916775, 38.298668, 42.133965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959068, 38.594845, 41.511593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312546, 38.417542, 41.571739>,  <32.524632, 38.311161, 41.607826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312546, 38.417542, 41.571739>,  <31.959068, 38.594845, 41.511593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312546, 38.417542, 41.571739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004074, -0.313949, -0.949431,
		0.468050, 0.839618, -0.275628,
		0.883693, -0.443258, 0.150364,
		32.577652, 38.284565, 41.616848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305286, 38.772007, 40.911774>,  <31.959068, 38.594845, 41.511593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305286, 38.772007, 40.911774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458408, 38.441643, 41.077343>,  <32.550282, 38.243423, 41.176685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458408, 38.441643, 41.077343>,  <32.305286, 38.772007, 40.911774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458408, 38.441643, 41.077343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030260, -0.436597, -0.899148,
		0.923335, 0.356721, -0.142138,
		0.382802, -0.825914, 0.413919,
		32.573250, 38.193867, 41.201519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862949, 38.608971, 40.462551>,  <32.305286, 38.772007, 40.911774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862949, 38.608971, 40.462551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782867, 38.274559, 40.666893>,  <32.734818, 38.073914, 40.789497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782867, 38.274559, 40.666893>,  <32.862949, 38.608971, 40.462551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782867, 38.274559, 40.666893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049432, -0.512130, -0.857485,
		0.978506, -0.196925, 0.061204,
		-0.200205, -0.836028, 0.510856,
		32.722805, 38.023750, 40.820148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236019, 38.115765, 40.163296>,  <32.862949, 38.608971, 40.462551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236019, 38.115765, 40.163296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013092, 37.851257, 40.364143>,  <32.879337, 37.692554, 40.484653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013092, 37.851257, 40.364143>,  <33.236019, 38.115765, 40.163296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013092, 37.851257, 40.364143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024060, -0.617357, -0.786315,
		0.829952, -0.426145, 0.359973,
		-0.557317, -0.661264, 0.502124,
		32.845898, 37.652878, 40.514782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481777, 37.314056, 40.182068>,  <33.236019, 38.115765, 40.163296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481777, 37.314056, 40.182068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082153, 37.311115, 40.199135>,  <32.842377, 37.309353, 40.209377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082153, 37.311115, 40.199135>,  <33.481777, 37.314056, 40.182068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082153, 37.311115, 40.199135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026218, -0.681596, -0.731258,
		0.034458, -0.731691, 0.680765,
		-0.999062, -0.007349, 0.042670,
		32.782436, 37.308910, 40.211937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348469, 36.679794, 40.085308>,  <33.481777, 37.314056, 40.182068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348469, 36.679794, 40.085308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965565, 36.793385, 40.063354>,  <32.735825, 36.861538, 40.050182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965565, 36.793385, 40.063354>,  <33.348469, 36.679794, 40.085308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965565, 36.793385, 40.063354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055740, -0.367334, -0.928417,
		-0.283813, -0.885676, 0.367462,
		-0.957258, 0.283980, -0.054887,
		32.678387, 36.878578, 40.046890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914818, 36.049015, 39.802792>,  <33.348469, 36.679794, 40.085308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914818, 36.049015, 39.802792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768875, 36.407387, 39.701447>,  <32.681309, 36.622410, 39.640640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768875, 36.407387, 39.701447>,  <32.914818, 36.049015, 39.802792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768875, 36.407387, 39.701447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000379, -0.272263, -0.962223,
		-0.931065, -0.350973, 0.099676,
		-0.364852, 0.895930, -0.253362,
		32.659420, 36.676167, 39.625439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764931, 35.314507, 39.560753>,  <32.914818, 36.049015, 39.802792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764931, 35.314507, 39.560753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719013, 35.013767, 39.820461>,  <32.691463, 34.833324, 39.976284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719013, 35.013767, 39.820461>,  <32.764931, 35.314507, 39.560753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719013, 35.013767, 39.820461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985961, -0.166013, -0.017923,
		0.121263, 0.638095, 0.760349,
		-0.114791, -0.751847, 0.649268,
		32.684574, 34.788212, 40.015244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313625, 35.327454, 40.029533>,  <32.764931, 35.314507, 39.560753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313625, 35.327454, 40.029533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195507, 34.949871, 40.088524>,  <33.124638, 34.723320, 40.123920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195507, 34.949871, 40.088524>,  <33.313625, 35.327454, 40.029533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195507, 34.949871, 40.088524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948115, -0.308561, -0.076605,
		0.117818, 0.117207, 0.986094,
		-0.295292, -0.943956, 0.147479,
		33.106918, 34.666683, 40.132767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498810, 35.021965, 40.712643>,  <33.313625, 35.327454, 40.029533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498810, 35.021965, 40.712643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502010, 34.798992, 40.380569>,  <33.503929, 34.665207, 40.181324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502010, 34.798992, 40.380569>,  <33.498810, 35.021965, 40.712643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502010, 34.798992, 40.380569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995520, -0.073776, 0.059130,
		-0.094209, -0.826937, 0.554346,
		0.007999, -0.557433, -0.830183,
		33.504410, 34.631763, 40.131516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918159, 35.339237, 40.972054>,  <33.498810, 35.021965, 40.712643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918159, 35.339237, 40.972054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167358, 35.642414, 41.049412>,  <33.316879, 35.824318, 41.095825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167358, 35.642414, 41.049412>,  <32.918159, 35.339237, 40.972054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167358, 35.642414, 41.049412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337481, -0.483483, 0.807682,
		0.705678, -0.437916, -0.556999,
		0.622997, 0.757940, 0.193396,
		33.354256, 35.869797, 41.107430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289204, 35.087948, 41.504181>,  <32.918159, 35.339237, 40.972054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289204, 35.087948, 41.504181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450760, 35.447701, 41.437256>,  <33.547695, 35.663551, 41.397102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450760, 35.447701, 41.437256>,  <33.289204, 35.087948, 41.504181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450760, 35.447701, 41.437256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655055, -0.156664, 0.739162,
		0.638574, -0.408137, -0.652416,
		0.403889, 0.899378, -0.167311,
		33.571926, 35.717514, 41.387062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972206, 34.930935, 41.560455>,  <33.289204, 35.087948, 41.504181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972206, 34.930935, 41.560455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943783, 35.324734, 41.624603>,  <33.926727, 35.561012, 41.663094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943783, 35.324734, 41.624603>,  <33.972206, 34.930935, 41.560455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943783, 35.324734, 41.624603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563017, -0.093130, 0.821181,
		0.823384, 0.148645, -0.547670,
		-0.071060, 0.984496, 0.160371,
		33.922466, 35.620083, 41.672714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582512, 35.179401, 41.694672>,  <33.972206, 34.930935, 41.560455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582512, 35.179401, 41.694672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341244, 35.451775, 41.860809>,  <34.196484, 35.615200, 41.960491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341244, 35.451775, 41.860809>,  <34.582512, 35.179401, 41.694672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341244, 35.451775, 41.860809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347442, -0.244431, 0.905283,
		0.717964, 0.690347, -0.089153,
		-0.603168, 0.680936, 0.415348,
		34.160294, 35.656055, 41.985413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954151, 35.497707, 42.222031>,  <34.582512, 35.179401, 41.694672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954151, 35.497707, 42.222031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573719, 35.573616, 42.319550>,  <34.345459, 35.619160, 42.378059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573719, 35.573616, 42.319550>,  <34.954151, 35.497707, 42.222031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573719, 35.573616, 42.319550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241119, -0.037417, 0.969774,
		0.193157, 0.981115, -0.010171,
		-0.951079, 0.189771, 0.243793,
		34.288395, 35.630547, 42.392689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963371, 35.909538, 42.820660>,  <34.954151, 35.497707, 42.222031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963371, 35.909538, 42.820660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579067, 35.799877, 42.837532>,  <34.348484, 35.734081, 42.847656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579067, 35.799877, 42.837532>,  <34.963371, 35.909538, 42.820660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579067, 35.799877, 42.837532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045236, -0.004819, 0.998965,
		-0.273668, 0.961673, 0.017032,
		-0.960760, -0.274155, 0.042184,
		34.290840, 35.717632, 42.850185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570831, 36.364262, 43.333740>,  <34.963371, 35.909538, 42.820660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570831, 36.364262, 43.333740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373291, 36.018669, 43.294472>,  <34.254765, 35.811314, 43.270912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373291, 36.018669, 43.294472>,  <34.570831, 36.364262, 43.333740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373291, 36.018669, 43.294472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045915, -0.138652, 0.989276,
		-0.868331, 0.484051, 0.108143,
		-0.493855, -0.863985, -0.098170,
		34.225136, 35.759472, 43.265022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027161, 36.468464, 43.727020>,  <34.570831, 36.364262, 43.333740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027161, 36.468464, 43.727020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083363, 36.073639, 43.696106>,  <34.117085, 35.836746, 43.677559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083363, 36.073639, 43.696106>,  <34.027161, 36.468464, 43.727020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083363, 36.073639, 43.696106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021662, -0.074974, 0.996950,
		-0.989843, -0.141752, 0.010848,
		0.140506, -0.987059, -0.077284,
		34.125515, 35.777523, 43.672920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519928, 36.224281, 44.129475>,  <34.027161, 36.468464, 43.727020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519928, 36.224281, 44.129475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768974, 35.911560, 44.116058>,  <33.918404, 35.723927, 44.108009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768974, 35.911560, 44.116058>,  <33.519928, 36.224281, 44.129475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768974, 35.911560, 44.116058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089654, -0.113843, 0.989445,
		-0.777374, -0.613039, -0.140973,
		0.622617, -0.781808, -0.033538,
		33.955761, 35.677017, 44.105999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236259, 35.764294, 44.496372>,  <33.519928, 36.224281, 44.129475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236259, 35.764294, 44.496372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604370, 35.608078, 44.486801>,  <33.825237, 35.514347, 44.481060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604370, 35.608078, 44.486801>,  <33.236259, 35.764294, 44.496372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604370, 35.608078, 44.486801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074003, -0.233779, 0.969469,
		-0.384211, -0.890407, -0.244042,
		0.920275, -0.390541, -0.023927,
		33.880451, 35.490917, 44.479622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247688, 35.228207, 45.055229>,  <33.236259, 35.764294, 44.496372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247688, 35.228207, 45.055229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635895, 35.249283, 44.961151>,  <33.868820, 35.261929, 44.904705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635895, 35.249283, 44.961151>,  <33.247688, 35.228207, 45.055229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635895, 35.249283, 44.961151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241007, -0.224329, 0.944242,
		-0.003011, -0.973088, -0.230413,
		0.970519, 0.052688, -0.235196,
		33.927052, 35.265087, 44.890591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616730, 34.587284, 45.223564>,  <33.247688, 35.228207, 45.055229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616730, 34.587284, 45.223564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884171, 34.882725, 45.258064>,  <34.044636, 35.059990, 45.278767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884171, 34.882725, 45.258064>,  <33.616730, 34.587284, 45.223564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884171, 34.882725, 45.258064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051888, -0.162048, 0.985418,
		0.741810, -0.654375, -0.146670,
		0.668600, 0.738603, 0.086254,
		34.084751, 35.104305, 45.283939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030636, 34.389423, 45.929821>,  <33.616730, 34.587284, 45.223564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030636, 34.389423, 45.929821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108246, 34.770016, 45.834293>,  <34.154812, 34.998371, 45.776978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108246, 34.770016, 45.834293>,  <34.030636, 34.389423, 45.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108246, 34.770016, 45.834293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126382, 0.217169, 0.967918,
		0.972822, -0.217983, -0.078113,
		0.194026, 0.951483, -0.238816,
		34.166454, 35.055462, 45.762650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621891, 34.477566, 46.142239>,  <34.030636, 34.389423, 45.929821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621891, 34.477566, 46.142239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464874, 34.844170, 46.111446>,  <34.370663, 35.064133, 46.092972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464874, 34.844170, 46.111446>,  <34.621891, 34.477566, 46.142239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464874, 34.844170, 46.111446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145509, 0.144534, 0.978743,
		0.908151, 0.372994, -0.190096,
		-0.392541, 0.916507, -0.076985,
		34.347111, 35.119122, 46.088352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979019, 34.820763, 46.613617>,  <34.621891, 34.477566, 46.142239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979019, 34.820763, 46.613617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668930, 35.069569, 46.569561>,  <34.482876, 35.218853, 46.543125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668930, 35.069569, 46.569561>,  <34.979019, 34.820763, 46.613617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668930, 35.069569, 46.569561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177483, 0.381811, 0.907039,
		0.606248, 0.683604, -0.406384,
		-0.775218, 0.622017, -0.110144,
		34.436363, 35.256172, 46.536518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235348, 35.432343, 46.720688>,  <34.979019, 34.820763, 46.613617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235348, 35.432343, 46.720688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841404, 35.480202, 46.770870>,  <34.605038, 35.508915, 46.800980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841404, 35.480202, 46.770870>,  <35.235348, 35.432343, 46.720688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841404, 35.480202, 46.770870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161038, 0.363409, 0.917606,
		0.064195, 0.923915, -0.377173,
		-0.984858, 0.119645, 0.125456,
		34.545948, 35.516094, 46.808506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182907, 36.157764, 46.922928>,  <35.235348, 35.432343, 46.720688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182907, 36.157764, 46.922928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841702, 35.989929, 47.047066>,  <34.636978, 35.889229, 47.121548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841702, 35.989929, 47.047066>,  <35.182907, 36.157764, 46.922928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841702, 35.989929, 47.047066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149204, 0.373774, 0.915440,
		-0.500113, 0.827185, -0.256228,
		-0.853010, -0.419593, 0.310349,
		34.585800, 35.864052, 47.140171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864738, 36.641811, 47.402435>,  <35.182907, 36.157764, 46.922928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864738, 36.641811, 47.402435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680992, 36.298050, 47.492252>,  <34.570744, 36.091793, 47.546143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680992, 36.298050, 47.492252>,  <34.864738, 36.641811, 47.402435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680992, 36.298050, 47.492252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040190, 0.232419, 0.971785,
		-0.887340, 0.455425, -0.072225,
		-0.459361, -0.859401, 0.224538,
		34.543182, 36.040230, 47.559612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298824, 36.886494, 47.768677>,  <34.864738, 36.641811, 47.402435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298824, 36.886494, 47.768677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379776, 36.501385, 47.840351>,  <34.428345, 36.270317, 47.883358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379776, 36.501385, 47.840351>,  <34.298824, 36.886494, 47.768677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379776, 36.501385, 47.840351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012269, 0.185452, 0.982577,
		-0.979231, -0.196653, 0.049343,
		0.202377, -0.962775, 0.179188,
		34.440491, 36.212551, 47.894108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896130, 36.687637, 48.269176>,  <34.298824, 36.886494, 47.768677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896130, 36.687637, 48.269176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169250, 36.397442, 48.303696>,  <34.333122, 36.223324, 48.324406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169250, 36.397442, 48.303696>,  <33.896130, 36.687637, 48.269176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169250, 36.397442, 48.303696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117624, 0.225731, 0.967063,
		-0.721072, -0.650163, 0.239465,
		0.682803, -0.725489, 0.086293,
		34.374092, 36.179794, 48.329582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710617, 36.327400, 48.809155>,  <33.896130, 36.687637, 48.269176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710617, 36.327400, 48.809155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095726, 36.223450, 48.779388>,  <34.326790, 36.161079, 48.761528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095726, 36.223450, 48.779388>,  <33.710617, 36.327400, 48.809155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095726, 36.223450, 48.779388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088947, 0.044607, 0.995037,
		-0.255270, -0.964610, 0.066061,
		0.962770, -0.259879, -0.074412,
		34.384556, 36.145485, 48.757065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740669, 35.780506, 49.342323>,  <33.710617, 36.327400, 48.809155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740669, 35.780506, 49.342323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102970, 35.930904, 49.264107>,  <34.320351, 36.021145, 49.217175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102970, 35.930904, 49.264107>,  <33.740669, 35.780506, 49.342323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102970, 35.930904, 49.264107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186801, 0.059974, 0.980565,
		0.380420, -0.924677, -0.015915,
		0.905752, 0.376000, -0.195546,
		34.374695, 36.043705, 49.205444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321293, 35.440548, 49.798817>,  <33.740669, 35.780506, 49.342323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321293, 35.440548, 49.798817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480759, 35.787838, 49.680660>,  <34.576439, 35.996212, 49.609768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480759, 35.787838, 49.680660>,  <34.321293, 35.440548, 49.798817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480759, 35.787838, 49.680660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327010, 0.166344, 0.930266,
		0.856816, -0.467457, -0.217603,
		0.398663, 0.868224, -0.295390,
		34.600357, 36.048306, 49.592045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002621, 35.478596, 49.976788>,  <34.321293, 35.440548, 49.798817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002621, 35.478596, 49.976788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897530, 35.862946, 49.941711>,  <34.834476, 36.093555, 49.920666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897530, 35.862946, 49.941711>,  <35.002621, 35.478596, 49.976788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897530, 35.862946, 49.941711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446057, 0.201545, 0.872017,
		0.855575, 0.189985, -0.481557,
		-0.262725, 0.960877, -0.087693,
		34.818710, 36.151207, 49.915405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639271, 36.015434, 49.985245>,  <35.002621, 35.478596, 49.976788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639271, 36.015434, 49.985245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289196, 36.154362, 50.119949>,  <35.079151, 36.237720, 50.200771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289196, 36.154362, 50.119949>,  <35.639271, 36.015434, 49.985245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289196, 36.154362, 50.119949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428115, 0.231846, 0.873479,
		0.225302, 0.908633, -0.351603,
		-0.875190, 0.347323, 0.336764,
		35.026638, 36.258560, 50.220978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393173, 36.078480, 49.762245>,  <35.639271, 36.015434, 49.985245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393173, 36.078480, 49.762245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774700, 35.962612, 49.794060>,  <37.003616, 35.893093, 49.813148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774700, 35.962612, 49.794060>,  <36.393173, 36.078480, 49.762245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774700, 35.962612, 49.794060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071411, -0.475836, -0.876630,
		0.291777, 0.830465, -0.474546,
		0.953817, -0.289668, 0.079533,
		37.060844, 35.875713, 49.817921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808475, 36.358826, 49.248276>,  <36.393173, 36.078480, 49.762245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808475, 36.358826, 49.248276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993874, 36.020664, 49.354450>,  <37.105114, 35.817768, 49.418156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993874, 36.020664, 49.354450>,  <36.808475, 36.358826, 49.248276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993874, 36.020664, 49.354450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228457, -0.175418, -0.957620,
		0.856142, 0.504495, 0.111833,
		0.463497, -0.845407, 0.265438,
		37.132923, 35.767040, 49.434082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352188, 36.441261, 48.688480>,  <36.808475, 36.358826, 49.248276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352188, 36.441261, 48.688480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426159, 36.084003, 48.852478>,  <37.470543, 35.869648, 48.950874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426159, 36.084003, 48.852478>,  <37.352188, 36.441261, 48.688480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426159, 36.084003, 48.852478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327729, -0.337259, -0.882525,
		0.926496, 0.297569, 0.230342,
		0.184927, -0.893146, 0.409991,
		37.481636, 35.816059, 48.975475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031693, 36.268730, 48.642490>,  <37.352188, 36.441261, 48.688480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031693, 36.268730, 48.642490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828205, 35.925350, 48.668633>,  <37.706112, 35.719322, 48.684319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828205, 35.925350, 48.668633>,  <38.031693, 36.268730, 48.642490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828205, 35.925350, 48.668633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443834, -0.326552, -0.834491,
		0.737708, -0.395517, 0.547132,
		-0.508722, -0.858446, 0.065356,
		37.675587, 35.667816, 48.688240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606617, 35.805443, 48.599819>,  <38.031693, 36.268730, 48.642490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606617, 35.805443, 48.599819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264194, 35.625286, 48.498383>,  <38.058739, 35.517193, 48.437519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264194, 35.625286, 48.498383>,  <38.606617, 35.805443, 48.599819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264194, 35.625286, 48.498383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436410, -0.366924, -0.821531,
		0.276958, -0.813951, 0.510664,
		-0.856061, -0.450389, -0.253594,
		38.007378, 35.490170, 48.422306>
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
