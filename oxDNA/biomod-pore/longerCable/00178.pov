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
	<24.274971, 35.340679, 35.042374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136812, 34.967064, 35.078747>,  <24.053917, 34.742893, 35.100571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136812, 34.967064, 35.078747>,  <24.274971, 35.340679, 35.042374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136812, 34.967064, 35.078747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454352, -0.251223, -0.854665,
		0.821136, -0.253882, 0.511155,
		-0.345398, -0.934040, 0.090936,
		24.033194, 34.686852, 35.106026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759001, 34.808472, 34.935192>,  <24.274971, 35.340679, 35.042374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759001, 34.808472, 34.935192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419607, 34.606514, 34.871750>,  <24.215971, 34.485340, 34.833687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419607, 34.606514, 34.871750>,  <24.759001, 34.808472, 34.935192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419607, 34.606514, 34.871750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367942, -0.347387, -0.862520,
		0.380388, -0.790190, 0.480525,
		-0.848483, -0.504897, -0.158602,
		24.165062, 34.455044, 34.824169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877302, 34.143070, 34.685688>,  <24.759001, 34.808472, 34.935192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877302, 34.143070, 34.685688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503569, 34.226540, 34.570122>,  <24.279329, 34.276623, 34.500782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503569, 34.226540, 34.570122>,  <24.877302, 34.143070, 34.685688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503569, 34.226540, 34.570122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247556, -0.203181, -0.947330,
		-0.256392, -0.956645, 0.138179,
		-0.934334, 0.208681, -0.288917,
		24.223269, 34.289143, 34.483448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267914, 33.784874, 34.149727>,  <24.877302, 34.143070, 34.685688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267914, 33.784874, 34.149727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468927, 33.569626, 34.420399>,  <25.589535, 33.440479, 34.582802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468927, 33.569626, 34.420399>,  <25.267914, 33.784874, 34.149727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468927, 33.569626, 34.420399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308021, 0.842764, 0.441443,
		-0.807826, -0.013409, 0.589268,
		0.502533, -0.538116, 0.676677,
		25.619688, 33.408192, 34.623402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321724, 33.476906, 33.433411>,  <25.267914, 33.784874, 34.149727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321724, 33.476906, 33.433411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407267, 33.536545, 33.047241>,  <25.458591, 33.572327, 32.815540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407267, 33.536545, 33.047241>,  <25.321724, 33.476906, 33.433411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407267, 33.536545, 33.047241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434345, 0.870707, 0.230681,
		0.874992, -0.468658, 0.121446,
		0.213854, 0.149095, -0.965420,
		25.471424, 33.581272, 32.757614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946213, 33.721432, 33.453056>,  <25.321724, 33.476906, 33.433411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946213, 33.721432, 33.453056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802940, 33.848881, 33.102016>,  <25.716976, 33.925350, 32.891392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802940, 33.848881, 33.102016>,  <25.946213, 33.721432, 33.453056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802940, 33.848881, 33.102016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498922, 0.859824, 0.108538,
		0.789166, -0.398979, -0.466939,
		-0.358181, 0.318620, -0.877603,
		25.695486, 33.944466, 32.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133459, 34.525757, 33.620796>,  <25.946213, 33.721432, 33.453056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133459, 34.525757, 33.620796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102013, 34.743603, 33.954796>,  <26.083145, 34.874310, 34.155193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102013, 34.743603, 33.954796>,  <26.133459, 34.525757, 33.620796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102013, 34.743603, 33.954796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875041, -0.363595, 0.319535,
		0.477622, 0.755776, -0.447972,
		-0.078616, 0.544611, 0.834996,
		26.078428, 34.906986, 34.205296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746307, 34.947178, 33.624374>,  <26.133459, 34.525757, 33.620796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746307, 34.947178, 33.624374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598194, 34.890125, 33.991535>,  <26.509325, 34.855892, 34.211830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598194, 34.890125, 33.991535>,  <26.746307, 34.947178, 33.624374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598194, 34.890125, 33.991535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852430, -0.444832, 0.274752,
		0.369124, 0.884184, 0.286298,
		-0.370285, -0.142631, 0.917903,
		26.487108, 34.847336, 34.266907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297001, 35.193481, 33.986740>,  <26.746307, 34.947178, 33.624374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297001, 35.193481, 33.986740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099154, 35.005020, 34.278866>,  <26.980444, 34.891945, 34.454144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099154, 35.005020, 34.278866>,  <27.297001, 35.193481, 33.986740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099154, 35.005020, 34.278866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867865, -0.222798, 0.444041,
		-0.046498, 0.853449, 0.519098,
		-0.494620, -0.471154, 0.730319,
		26.950768, 34.863674, 34.497963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605389, 35.435936, 34.561474>,  <27.297001, 35.193481, 33.986740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605389, 35.435936, 34.561474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410110, 35.104130, 34.669968>,  <27.292944, 34.905045, 34.735065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410110, 35.104130, 34.669968>,  <27.605389, 35.435936, 34.561474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410110, 35.104130, 34.669968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832827, -0.349896, 0.428919,
		-0.260890, 0.435291, 0.861660,
		-0.488196, -0.829515, 0.271238,
		27.263651, 34.855274, 34.751339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609119, 35.378792, 35.187862>,  <27.605389, 35.435936, 34.561474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609119, 35.378792, 35.187862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565546, 34.999016, 35.070091>,  <27.539402, 34.771149, 34.999428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565546, 34.999016, 35.070091>,  <27.609119, 35.378792, 35.187862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565546, 34.999016, 35.070091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883762, -0.228099, 0.408578,
		-0.455081, -0.215699, 0.863930,
		-0.108931, -0.949444, -0.294430,
		27.532867, 34.714184, 34.981762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627254, 34.939598, 35.818798>,  <27.609119, 35.378792, 35.187862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627254, 34.939598, 35.818798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767687, 34.771866, 35.483917>,  <27.851946, 34.671227, 35.282990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767687, 34.771866, 35.483917>,  <27.627254, 34.939598, 35.818798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767687, 34.771866, 35.483917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869213, -0.186500, 0.457916,
		-0.348155, -0.888472, 0.299008,
		0.351081, -0.419327, -0.837202,
		27.873011, 34.646069, 35.232758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241440, 35.086231, 35.876213>,  <27.627254, 34.939598, 35.818798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241440, 35.086231, 35.876213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329113, 34.712605, 35.988976>,  <28.381718, 34.488426, 36.056633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329113, 34.712605, 35.988976>,  <28.241440, 35.086231, 35.876213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329113, 34.712605, 35.988976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500973, -0.355680, -0.788998,
		0.837248, 0.031708, -0.545903,
		0.219184, -0.934070, 0.281908,
		28.394869, 34.432384, 36.073547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626043, 34.774708, 35.294067>,  <28.241440, 35.086231, 35.876213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626043, 34.774708, 35.294067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434027, 34.521210, 35.536694>,  <28.318817, 34.369110, 35.682270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434027, 34.521210, 35.536694>,  <28.626043, 34.774708, 35.294067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434027, 34.521210, 35.536694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609292, -0.256591, -0.750283,
		0.631130, -0.729743, -0.262963,
		-0.480040, -0.633747, 0.606569,
		28.290014, 34.331085, 35.718666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264427, 34.209435, 34.826645>,  <28.626043, 34.774708, 35.294067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264427, 34.209435, 34.826645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093485, 34.177631, 35.186878>,  <27.990919, 34.158550, 35.403019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093485, 34.177631, 35.186878>,  <28.264427, 34.209435, 34.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093485, 34.177631, 35.186878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901295, -0.040705, -0.431290,
		0.070949, -0.996003, -0.054265,
		-0.427357, -0.079508, 0.900580,
		27.965279, 34.153778, 35.457054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990767, 33.551430, 34.786694>,  <28.264427, 34.209435, 34.826645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990767, 33.551430, 34.786694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831715, 33.852337, 34.996830>,  <27.736284, 34.032883, 35.122913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831715, 33.852337, 34.996830>,  <27.990767, 33.551430, 34.786694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831715, 33.852337, 34.996830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679942, 0.142859, -0.719215,
		-0.616093, -0.643182, 0.454694,
		-0.397629, 0.752269, 0.525340,
		27.712425, 34.078018, 35.154430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317726, 33.447083, 34.794308>,  <27.990767, 33.551430, 34.786694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317726, 33.447083, 34.794308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399107, 33.836079, 34.839680>,  <27.447935, 34.069477, 34.866901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399107, 33.836079, 34.839680>,  <27.317726, 33.447083, 34.794308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399107, 33.836079, 34.839680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954398, 0.222839, -0.198661,
		-0.218473, -0.067836, 0.973482,
		0.203453, 0.972492, 0.113427,
		27.460142, 34.127827, 34.873707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636736, 33.744026, 35.072819>,  <27.317726, 33.447083, 34.794308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636736, 33.744026, 35.072819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827497, 34.082882, 34.979076>,  <26.941954, 34.286194, 34.922829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827497, 34.082882, 34.979076>,  <26.636736, 33.744026, 35.072819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827497, 34.082882, 34.979076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878351, 0.469215, -0.091310,
		0.032612, 0.249394, 0.967853,
		0.476903, 0.847136, -0.234358,
		26.970568, 34.337021, 34.908768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318684, 34.241848, 35.426525>,  <26.636736, 33.744026, 35.072819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318684, 34.241848, 35.426525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511938, 34.431038, 35.131805>,  <26.627890, 34.544552, 34.954971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511938, 34.431038, 35.131805>,  <26.318684, 34.241848, 35.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511938, 34.431038, 35.131805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821602, 0.535732, -0.194837,
		0.302575, 0.699490, 0.647427,
		0.483134, 0.472975, -0.736802,
		26.656878, 34.572929, 34.910767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991276, 34.876041, 35.513882>,  <26.318684, 34.241848, 35.426525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991276, 34.876041, 35.513882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152391, 34.849358, 35.148739>,  <26.249060, 34.833347, 34.929653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152391, 34.849358, 35.148739>,  <25.991276, 34.876041, 35.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152391, 34.849358, 35.148739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745664, 0.554463, -0.369536,
		0.530799, 0.829530, 0.173586,
		0.402788, -0.066713, -0.912859,
		26.273228, 34.829346, 34.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186125, 35.544952, 35.233887>,  <25.991276, 34.876041, 35.513882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186125, 35.544952, 35.233887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077148, 35.315517, 34.924885>,  <26.011763, 35.177856, 34.739483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077148, 35.315517, 34.924885>,  <26.186125, 35.544952, 35.233887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077148, 35.315517, 34.924885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694419, 0.672958, -0.254774,
		0.666001, 0.467031, -0.581657,
		-0.272443, -0.573593, -0.772505,
		25.995417, 35.143440, 34.693130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094793, 36.022491, 34.615204>,  <26.186125, 35.544952, 35.233887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094793, 36.022491, 34.615204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900290, 35.673454, 34.596733>,  <25.783587, 35.464031, 34.585651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900290, 35.673454, 34.596733>,  <26.094793, 36.022491, 34.615204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900290, 35.673454, 34.596733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864280, 0.488068, -0.121697,
		0.128730, -0.019266, -0.991493,
		-0.486261, -0.872593, -0.046177,
		25.754412, 35.411678, 34.582878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878281, 36.149998, 33.969315>,  <26.094793, 36.022491, 34.615204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878281, 36.149998, 33.969315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668179, 35.946766, 34.242359>,  <25.542118, 35.824825, 34.406185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668179, 35.946766, 34.242359>,  <25.878281, 36.149998, 33.969315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668179, 35.946766, 34.242359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693819, 0.720146, 0.002140,
		-0.492671, -0.472488, -0.730774,
		-0.525253, -0.508080, 0.682616,
		25.510603, 35.794342, 34.447144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796021, 35.945305, 33.211300>,  <25.878281, 36.149998, 33.969315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796021, 35.945305, 33.211300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471298, 36.147079, 33.328953>,  <25.276464, 36.268143, 33.399544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471298, 36.147079, 33.328953>,  <25.796021, 35.945305, 33.211300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471298, 36.147079, 33.328953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580018, 0.754787, 0.306390,
		-0.067453, 0.419331, -0.905324,
		-0.811806, 0.504437, 0.294132,
		25.227757, 36.298412, 33.417194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002810, 36.611416, 32.928268>,  <25.796021, 35.945305, 33.211300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002810, 36.611416, 32.928268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747225, 36.614487, 33.235950>,  <25.593874, 36.616329, 33.420559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747225, 36.614487, 33.235950>,  <26.002810, 36.611416, 32.928268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747225, 36.614487, 33.235950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624372, 0.589257, 0.512773,
		-0.449320, 0.807909, -0.381306,
		-0.638961, 0.007678, 0.769201,
		25.555536, 36.616791, 33.466709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849915, 36.572807, 33.114487>,  <26.002810, 36.611416, 32.928268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849915, 36.572807, 33.114487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080599, 36.610420, 32.789879>,  <27.219009, 36.632988, 32.595116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080599, 36.610420, 32.789879>,  <26.849915, 36.572807, 33.114487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080599, 36.610420, 32.789879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781531, 0.352815, -0.514520,
		0.237932, 0.930956, 0.276965,
		0.576712, 0.094036, -0.811517,
		27.253613, 36.638630, 32.546425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676142, 37.255173, 32.881222>,  <26.849915, 36.572807, 33.114487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676142, 37.255173, 32.881222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855736, 37.101154, 32.558693>,  <26.963491, 37.008743, 32.365177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855736, 37.101154, 32.558693>,  <26.676142, 37.255173, 32.881222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855736, 37.101154, 32.558693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555188, 0.586849, -0.589385,
		0.700128, 0.712285, 0.049714,
		0.448984, -0.385044, -0.806321,
		26.990431, 36.985641, 32.316795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533562, 37.823463, 32.372276>,  <26.676142, 37.255173, 32.881222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533562, 37.823463, 32.372276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717846, 38.178253, 32.385014>,  <26.828417, 38.391129, 32.392654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717846, 38.178253, 32.385014>,  <26.533562, 37.823463, 32.372276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717846, 38.178253, 32.385014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838188, 0.446606, -0.313024,
		-0.291866, 0.117525, 0.949211,
		0.460712, 0.886978, 0.031841,
		26.856060, 38.444347, 32.394566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166086, 38.407780, 32.760731>,  <26.533562, 37.823463, 32.372276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166086, 38.407780, 32.760731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362518, 38.616993, 32.482082>,  <26.480377, 38.742519, 32.314896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362518, 38.616993, 32.482082>,  <26.166086, 38.407780, 32.760731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362518, 38.616993, 32.482082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847481, 0.471866, -0.243143,
		0.201538, 0.709773, 0.674985,
		0.491078, 0.523034, -0.696618,
		26.509842, 38.773903, 32.273098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850126, 39.035767, 32.726974>,  <26.166086, 38.407780, 32.760731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850126, 39.035767, 32.726974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027370, 38.974316, 32.373692>,  <26.133717, 38.937443, 32.161724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027370, 38.974316, 32.373692>,  <25.850126, 39.035767, 32.726974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027370, 38.974316, 32.373692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789468, 0.399895, -0.465643,
		0.424727, 0.903593, 0.055911,
		0.443110, -0.153631, -0.883205,
		26.160303, 38.928226, 32.108730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857761, 39.690590, 32.403332>,  <25.850126, 39.035767, 32.726974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857761, 39.690590, 32.403332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893320, 39.434525, 32.098099>,  <25.914656, 39.280888, 31.914959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893320, 39.434525, 32.098099>,  <25.857761, 39.690590, 32.403332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893320, 39.434525, 32.098099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686076, 0.516040, -0.512838,
		0.722078, 0.569120, -0.393325,
		0.088895, -0.640160, -0.763081,
		25.919989, 39.242477, 31.869175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734533, 40.013416, 31.890879>,  <25.857761, 39.690590, 32.403332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734533, 40.013416, 31.890879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668709, 39.661858, 31.711784>,  <25.629213, 39.450924, 31.604328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668709, 39.661858, 31.711784>,  <25.734533, 40.013416, 31.890879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668709, 39.661858, 31.711784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732901, 0.412742, -0.540833,
		0.660133, 0.239144, -0.712063,
		-0.164561, -0.878894, -0.447734,
		25.619341, 39.398190, 31.577465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927399, 40.063232, 31.227192>,  <25.734533, 40.013416, 31.890879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927399, 40.063232, 31.227192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635967, 39.793270, 31.273966>,  <25.461107, 39.631294, 31.302031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635967, 39.793270, 31.273966>,  <25.927399, 40.063232, 31.227192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635967, 39.793270, 31.273966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619021, 0.575694, -0.534218,
		0.293228, -0.461606, -0.837220,
		-0.728581, -0.674905, 0.116934,
		25.417393, 39.590797, 31.309046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671698, 39.810062, 30.546450>,  <25.927399, 40.063232, 31.227192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671698, 39.810062, 30.546450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364996, 39.728466, 30.789917>,  <25.180975, 39.679508, 30.935997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364996, 39.728466, 30.789917>,  <25.671698, 39.810062, 30.546450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364996, 39.728466, 30.789917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602292, 0.556677, -0.572150,
		-0.222116, -0.805293, -0.549697,
		-0.766752, -0.203995, 0.608669,
		25.134970, 39.667267, 30.972517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034374, 39.518623, 30.171486>,  <25.671698, 39.810062, 30.546450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034374, 39.518623, 30.171486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927845, 39.682945, 30.520269>,  <24.863928, 39.781536, 30.729540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927845, 39.682945, 30.520269>,  <25.034374, 39.518623, 30.171486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927845, 39.682945, 30.520269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752543, 0.476643, -0.454411,
		-0.602287, -0.777207, 0.182206,
		-0.266325, 0.410804, 0.871958,
		24.847948, 39.806187, 30.781857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.300573, 39.287704, 30.423704>,  <25.034374, 39.518623, 30.171486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.300573, 39.287704, 30.423704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384357, 39.649845, 30.571470>,  <24.434628, 39.867130, 30.660130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384357, 39.649845, 30.571470>,  <24.300573, 39.287704, 30.423704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384357, 39.649845, 30.571470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865155, 0.347648, -0.361453,
		-0.455668, -0.243889, 0.856087,
		0.209462, 0.905351, 0.369413,
		24.447197, 39.921452, 30.682295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999863, 39.430847, 31.186066>,  <24.300573, 39.287704, 30.423704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999863, 39.430847, 31.186066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260521, 39.641266, 31.404654>,  <24.416916, 39.767517, 31.535807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260521, 39.641266, 31.404654>,  <23.999863, 39.430847, 31.186066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.260521, 39.641266, 31.404654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634423, -0.772884, -0.012528,
		0.415768, 0.354857, -0.837385,
		0.651647, 0.526048, 0.546470,
		24.456015, 39.799080, 31.568594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332314, 39.136570, 31.754190>,  <23.999863, 39.430847, 31.186066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332314, 39.136570, 31.754190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560448, 39.270046, 31.453959>,  <24.697329, 39.350132, 31.273819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560448, 39.270046, 31.453959>,  <24.332314, 39.136570, 31.754190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560448, 39.270046, 31.453959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775437, -0.520139, 0.357985,
		-0.270950, -0.786198, -0.555409,
		0.570337, 0.333689, -0.750578,
		24.731548, 39.370152, 31.228785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641924, 38.555706, 31.391018>,  <24.332314, 39.136570, 31.754190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641924, 38.555706, 31.391018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880251, 38.869820, 31.323692>,  <25.023247, 39.058289, 31.283297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880251, 38.869820, 31.323692>,  <24.641924, 38.555706, 31.391018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880251, 38.869820, 31.323692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772888, -0.503700, 0.385915,
		0.218274, -0.360022, -0.907050,
		0.595819, 0.785284, -0.168312,
		25.058996, 39.105404, 31.273199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272007, 38.205757, 31.363148>,  <24.641924, 38.555706, 31.391018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272007, 38.205757, 31.363148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409079, 38.581081, 31.381664>,  <25.491322, 38.806274, 31.392775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409079, 38.581081, 31.381664>,  <25.272007, 38.205757, 31.363148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409079, 38.581081, 31.381664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842837, -0.328829, 0.426025,
		0.414966, -0.106972, -0.903526,
		0.342679, 0.938311, 0.046293,
		25.511883, 38.862576, 31.395552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946318, 38.273132, 30.976284>,  <25.272007, 38.205757, 31.363148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946318, 38.273132, 30.976284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962082, 38.565460, 31.248857>,  <25.971540, 38.740856, 31.412401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962082, 38.565460, 31.248857>,  <25.946318, 38.273132, 30.976284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962082, 38.565460, 31.248857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877184, -0.351901, 0.326671,
		0.478534, 0.584868, -0.654931,
		0.039411, 0.730818, 0.681433,
		25.973906, 38.784706, 31.453287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576036, 38.642342, 30.912615>,  <25.946318, 38.273132, 30.976284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576036, 38.642342, 30.912615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457895, 38.709515, 31.288820>,  <26.387011, 38.749817, 31.514544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457895, 38.709515, 31.288820>,  <26.576036, 38.642342, 30.912615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457895, 38.709515, 31.288820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898792, -0.284951, 0.333130,
		0.323943, 0.943717, -0.066773,
		-0.295353, 0.167930, 0.940514,
		26.369289, 38.759895, 31.570974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110518, 39.042736, 31.391710>,  <26.576036, 38.642342, 30.912615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110518, 39.042736, 31.391710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871378, 38.797607, 31.598408>,  <26.727894, 38.650528, 31.722425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871378, 38.797607, 31.598408>,  <27.110518, 39.042736, 31.391710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871378, 38.797607, 31.598408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798835, -0.401873, 0.447618,
		-0.066646, 0.680400, 0.729804,
		-0.597848, -0.612824, 0.516744,
		26.692024, 38.613762, 31.753431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445774, 38.590008, 30.886208>,  <27.110518, 39.042736, 31.391710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445774, 38.590008, 30.886208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777782, 38.367016, 30.892914>,  <27.976988, 38.233219, 30.896938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777782, 38.367016, 30.892914>,  <27.445774, 38.590008, 30.886208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777782, 38.367016, 30.892914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534380, -0.786298, 0.310119,
		-0.159701, -0.266365, -0.950550,
		0.830020, -0.557481, 0.016768,
		28.026789, 38.199772, 30.897943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084890, 38.139599, 31.390625>,  <27.445774, 38.590008, 30.886208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084890, 38.139599, 31.390625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044823, 37.894543, 31.077028>,  <27.020782, 37.747509, 30.888870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044823, 37.894543, 31.077028>,  <27.084890, 38.139599, 31.390625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044823, 37.894543, 31.077028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878074, 0.316137, -0.359227,
		0.467925, -0.724384, 0.506274,
		-0.100167, -0.612638, -0.783991,
		27.014772, 37.710751, 30.841831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656664, 37.626518, 31.430929>,  <27.084890, 38.139599, 31.390625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656664, 37.626518, 31.430929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532591, 37.705513, 31.058954>,  <27.458147, 37.752911, 30.835770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532591, 37.705513, 31.058954>,  <27.656664, 37.626518, 31.430929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532591, 37.705513, 31.058954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934761, 0.241597, -0.260485,
		0.173229, -0.950069, -0.259539,
		-0.310183, 0.197483, -0.929939,
		27.439535, 37.764759, 30.779972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282221, 37.727287, 31.871405>,  <27.656664, 37.626518, 31.430929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282221, 37.727287, 31.871405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329010, 37.939331, 31.535475>,  <28.357082, 38.066555, 31.333918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329010, 37.939331, 31.535475>,  <28.282221, 37.727287, 31.871405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329010, 37.939331, 31.535475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385916, 0.803436, 0.453388,
		0.915089, 0.271068, 0.298555,
		0.116971, 0.530107, -0.839824,
		28.364101, 38.098362, 31.283527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812292, 37.349567, 31.406096>,  <28.282221, 37.727287, 31.871405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812292, 37.349567, 31.406096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492517, 37.411690, 31.173964>,  <28.300653, 37.448963, 31.034685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492517, 37.411690, 31.173964>,  <28.812292, 37.349567, 31.406096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492517, 37.411690, 31.173964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592437, -0.043640, 0.804434,
		0.099610, 0.986901, 0.126898,
		-0.799435, 0.155309, -0.580330,
		28.252687, 37.458282, 30.999865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375038, 37.377636, 31.819660>,  <28.812292, 37.349567, 31.406096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375038, 37.377636, 31.819660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513689, 37.679375, 32.042660>,  <29.596880, 37.860420, 32.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513689, 37.679375, 32.042660>,  <29.375038, 37.377636, 31.819660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513689, 37.679375, 32.042660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529908, -0.647897, 0.547199,
		0.773982, 0.105750, -0.624314,
		0.346625, 0.754351, 0.557499,
		29.617676, 37.905682, 32.209911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161650, 37.329014, 32.036846>,  <29.375038, 37.377636, 31.819660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161650, 37.329014, 32.036846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009476, 37.548717, 32.334457>,  <29.918171, 37.680542, 32.513023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009476, 37.548717, 32.334457>,  <30.161650, 37.329014, 32.036846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009476, 37.548717, 32.334457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485528, -0.566106, 0.666172,
		0.787104, 0.614682, -0.051317,
		-0.380433, 0.549263, 0.744030,
		29.895346, 37.713497, 32.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643188, 37.501190, 32.668732>,  <30.161650, 37.329014, 32.036846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643188, 37.501190, 32.668732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275084, 37.488411, 32.824730>,  <30.054220, 37.480743, 32.918331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275084, 37.488411, 32.824730>,  <30.643188, 37.501190, 32.668732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275084, 37.488411, 32.824730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355642, -0.483994, 0.799543,
		0.163210, 0.874488, 0.456764,
		-0.920261, -0.031952, 0.389997,
		29.999004, 37.478825, 32.941730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948763, 37.822643, 33.215542>,  <30.643188, 37.501190, 32.668732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948763, 37.822643, 33.215542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969952, 37.882072, 33.610535>,  <30.982664, 37.917732, 33.847530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969952, 37.882072, 33.610535>,  <30.948763, 37.822643, 33.215542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969952, 37.882072, 33.610535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823825, -0.565369, 0.040873,
		0.564364, 0.811347, -0.152347,
		0.052970, 0.148575, 0.987481,
		30.985844, 37.926643, 33.906780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554983, 38.008587, 33.470734>,  <30.948763, 37.822643, 33.215542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554983, 38.008587, 33.470734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448057, 37.842190, 33.818409>,  <31.383902, 37.742352, 34.027016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448057, 37.842190, 33.818409>,  <31.554983, 38.008587, 33.470734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448057, 37.842190, 33.818409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913257, -0.397136, 0.090798,
		0.307415, 0.818066, 0.486070,
		-0.267314, -0.415994, 0.869190,
		31.367863, 37.717392, 34.079166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117107, 37.554451, 33.628586>,  <31.554983, 38.008587, 33.470734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117107, 37.554451, 33.628586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506836, 37.473362, 33.667782>,  <32.740673, 37.424709, 33.691299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506836, 37.473362, 33.667782>,  <32.117107, 37.554451, 33.628586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506836, 37.473362, 33.667782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217786, 0.958959, -0.181567,
		-0.057159, 0.198245, 0.978485,
		0.974322, -0.202722, 0.097988,
		32.799133, 37.412544, 33.697178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394718, 36.841946, 33.592148>,  <32.117107, 37.554451, 33.628586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394718, 36.841946, 33.592148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755383, 36.721695, 33.716492>,  <32.971779, 36.649544, 33.791100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755383, 36.721695, 33.716492>,  <32.394718, 36.841946, 33.592148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755383, 36.721695, 33.716492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146662, 0.463659, 0.873791,
		-0.406819, -0.833453, 0.373971,
		0.901659, -0.300627, 0.310861,
		33.025879, 36.631508, 33.809750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273323, 36.730358, 34.283012>,  <32.394718, 36.841946, 33.592148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273323, 36.730358, 34.283012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672359, 36.732468, 34.255371>,  <32.911781, 36.733734, 34.238785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672359, 36.732468, 34.255371>,  <32.273323, 36.730358, 34.283012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672359, 36.732468, 34.255371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057145, 0.501549, 0.863240,
		0.039215, -0.865113, 0.500042,
		0.997595, 0.005277, -0.069105,
		32.971638, 36.734051, 34.234638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627312, 36.488125, 34.922409>,  <32.273323, 36.730358, 34.283012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627312, 36.488125, 34.922409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876617, 36.742584, 34.740482>,  <33.026199, 36.895260, 34.631325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876617, 36.742584, 34.740482>,  <32.627312, 36.488125, 34.922409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876617, 36.742584, 34.740482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004844, 0.578448, 0.815705,
		0.781998, -0.510601, 0.357443,
		0.623262, 0.636148, -0.454818,
		33.063595, 36.933430, 34.604038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263191, 36.506447, 35.312435>,  <32.627312, 36.488125, 34.922409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263191, 36.506447, 35.312435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221069, 36.846565, 35.106167>,  <33.195797, 37.050636, 34.982407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221069, 36.846565, 35.106167>,  <33.263191, 36.506447, 35.312435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221069, 36.846565, 35.106167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144577, 0.526134, 0.838022,
		0.983874, 0.013693, -0.178336,
		-0.105303, 0.850291, -0.515670,
		33.189480, 37.101654, 34.951466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724491, 37.056400, 35.573627>,  <33.263191, 36.506447, 35.312435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724491, 37.056400, 35.573627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434414, 37.247696, 35.375481>,  <33.260368, 37.362473, 35.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434414, 37.247696, 35.375481>,  <33.724491, 37.056400, 35.573627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434414, 37.247696, 35.375481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089748, 0.647644, 0.756639,
		0.682670, 0.593168, -0.426748,
		-0.725195, 0.478234, -0.495363,
		33.216854, 37.391167, 35.226871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429214, 37.724297, 35.965416>,  <33.724491, 37.056400, 35.573627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429214, 37.724297, 35.965416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455326, 38.064457, 35.756584>,  <33.470993, 38.268551, 35.631287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455326, 38.064457, 35.756584>,  <33.429214, 37.724297, 35.965416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455326, 38.064457, 35.756584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111351, -0.513717, -0.850703,
		-0.991635, 0.113664, 0.061159,
		0.065276, 0.850397, -0.522076,
		33.474911, 38.319576, 35.599960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894043, 37.815365, 35.571419>,  <33.429214, 37.724297, 35.965416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894043, 37.815365, 35.571419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221977, 37.978989, 35.411148>,  <33.418739, 38.077164, 35.314987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221977, 37.978989, 35.411148>,  <32.894043, 37.815365, 35.571419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221977, 37.978989, 35.411148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099156, -0.587757, -0.802938,
		-0.563946, 0.698008, -0.441304,
		0.819837, 0.409056, -0.400675,
		33.467930, 38.101704, 35.290947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817265, 38.003613, 34.771236>,  <32.894043, 37.815365, 35.571419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817265, 38.003613, 34.771236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200657, 37.931198, 34.859367>,  <33.430691, 37.887749, 34.912247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200657, 37.931198, 34.859367>,  <32.817265, 38.003613, 34.771236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200657, 37.931198, 34.859367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020816, -0.726166, -0.687204,
		0.284403, 0.663257, -0.692246,
		0.958479, -0.181033, 0.220330,
		33.488201, 37.876888, 34.925465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373615, 38.079933, 34.184338>,  <32.817265, 38.003613, 34.771236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373615, 38.079933, 34.184338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427681, 37.782104, 34.445824>,  <33.460121, 37.603405, 34.602715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427681, 37.782104, 34.445824>,  <33.373615, 38.079933, 34.184338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427681, 37.782104, 34.445824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002960, -0.660067, -0.751201,
		0.990819, 0.099600, -0.091421,
		0.135164, -0.744575, 0.653712,
		33.468231, 37.558731, 34.641937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966492, 37.695755, 34.121387>,  <33.373615, 38.079933, 34.184338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966492, 37.695755, 34.121387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694275, 37.451572, 34.283474>,  <33.530945, 37.305061, 34.380726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694275, 37.451572, 34.283474>,  <33.966492, 37.695755, 34.121387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694275, 37.451572, 34.283474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049714, -0.590236, -0.805699,
		0.731020, -0.528168, 0.432029,
		-0.680543, -0.610460, 0.405217,
		33.490112, 37.268436, 34.405041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218700, 36.975334, 34.103836>,  <33.966492, 37.695755, 34.121387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218700, 36.975334, 34.103836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829998, 36.896236, 34.155365>,  <33.596779, 36.848778, 34.186283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829998, 36.896236, 34.155365>,  <34.218700, 36.975334, 34.103836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829998, 36.896236, 34.155365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030399, -0.646162, -0.762594,
		0.234038, -0.737136, 0.633921,
		-0.971752, -0.197747, 0.128818,
		33.538471, 36.836914, 34.194012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216251, 36.294498, 34.253395>,  <34.218700, 36.975334, 34.103836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216251, 36.294498, 34.253395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864464, 36.396854, 34.092865>,  <33.653393, 36.458267, 33.996548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864464, 36.396854, 34.092865>,  <34.216251, 36.294498, 34.253395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864464, 36.396854, 34.092865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175094, -0.610116, -0.772723,
		-0.442588, -0.749852, 0.491771,
		-0.879465, 0.255892, -0.401324,
		33.600624, 36.473621, 33.972469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770061, 35.728504, 34.181606>,  <34.216251, 36.294498, 34.253395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770061, 35.728504, 34.181606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683746, 35.999920, 33.900745>,  <33.631958, 36.162769, 33.732231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683746, 35.999920, 33.900745>,  <33.770061, 35.728504, 34.181606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683746, 35.999920, 33.900745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341093, -0.621407, -0.705343,
		-0.914926, -0.391705, -0.097352,
		-0.215792, 0.678543, -0.702149,
		33.619007, 36.203484, 33.690102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519897, 35.230541, 33.663315>,  <33.770061, 35.728504, 34.181606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519897, 35.230541, 33.663315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675873, 35.577293, 33.539078>,  <33.769459, 35.785343, 33.464535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675873, 35.577293, 33.539078>,  <33.519897, 35.230541, 33.663315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675873, 35.577293, 33.539078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458960, -0.475377, -0.750582,
		-0.798313, 0.150130, -0.583230,
		0.389939, 0.866878, -0.310596,
		33.792854, 35.837357, 33.445900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300175, 35.371670, 32.909748>,  <33.519897, 35.230541, 33.663315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300175, 35.371670, 32.909748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635780, 35.562073, 33.015171>,  <33.837143, 35.676315, 33.078426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635780, 35.562073, 33.015171>,  <33.300175, 35.371670, 32.909748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635780, 35.562073, 33.015171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476708, -0.409594, -0.777806,
		-0.262292, 0.778234, -0.570574,
		0.839019, 0.476010, 0.263557,
		33.887486, 35.704876, 33.094238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663269, 35.417027, 32.310177>,  <33.300175, 35.371670, 32.909748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663269, 35.417027, 32.310177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957661, 35.545403, 32.548615>,  <34.134296, 35.622429, 32.691677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957661, 35.545403, 32.548615>,  <33.663269, 35.417027, 32.310177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957661, 35.545403, 32.548615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654669, -0.113097, -0.747408,
		-0.172460, 0.940321, -0.293350,
		0.735980, 0.320945, 0.596094,
		34.178455, 35.641685, 32.727444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085690, 35.889244, 31.958334>,  <33.663269, 35.417027, 32.310177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085690, 35.889244, 31.958334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337166, 35.753750, 32.238338>,  <34.488052, 35.672455, 32.406342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337166, 35.753750, 32.238338>,  <34.085690, 35.889244, 31.958334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337166, 35.753750, 32.238338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594945, -0.370171, -0.713452,
		0.500793, 0.865005, -0.031193,
		0.628686, -0.338734, 0.700009,
		34.525772, 35.652130, 32.448341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721638, 36.134323, 31.922113>,  <34.085690, 35.889244, 31.958334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721638, 36.134323, 31.922113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823185, 35.811390, 32.135193>,  <34.884113, 35.617630, 32.263039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823185, 35.811390, 32.135193>,  <34.721638, 36.134323, 31.922113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823185, 35.811390, 32.135193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585844, -0.309883, -0.748839,
		0.769636, 0.502181, 0.394302,
		0.253866, -0.807333, 0.532697,
		34.899345, 35.569191, 32.295002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570953, 36.095009, 32.036526>,  <34.721638, 36.134323, 31.922113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570953, 36.095009, 32.036526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408646, 35.730083, 32.058590>,  <35.311260, 35.511127, 32.071827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408646, 35.730083, 32.058590>,  <35.570953, 36.095009, 32.036526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408646, 35.730083, 32.058590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703264, -0.350195, -0.618695,
		0.583759, -0.212254, 0.783692,
		-0.405766, -0.912311, 0.055160,
		35.286915, 35.456390, 32.075138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125690, 35.697506, 32.117844>,  <35.570953, 36.095009, 32.036526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125690, 35.697506, 32.117844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875771, 35.396297, 32.035290>,  <35.725819, 35.215572, 31.985758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875771, 35.396297, 32.035290>,  <36.125690, 35.697506, 32.117844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875771, 35.396297, 32.035290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696623, -0.418245, -0.582914,
		0.352626, -0.507972, 0.785887,
		-0.624797, -0.753018, -0.206381,
		35.688332, 35.170391, 31.973375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441132, 35.173500, 32.283756>,  <36.125690, 35.697506, 32.117844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441132, 35.173500, 32.283756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166161, 35.034851, 32.028477>,  <36.001179, 34.951660, 31.875309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166161, 35.034851, 32.028477>,  <36.441132, 35.173500, 32.283756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166161, 35.034851, 32.028477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716141, -0.469665, -0.516291,
		-0.120778, -0.811951, 0.571094,
		-0.687426, -0.346627, -0.638196,
		35.959934, 34.930862, 31.837017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736027, 34.521061, 32.047142>,  <36.441132, 35.173500, 32.283756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736027, 34.521061, 32.047142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450874, 34.590889, 31.775459>,  <36.279785, 34.632786, 31.612448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450874, 34.590889, 31.775459>,  <36.736027, 34.521061, 32.047142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450874, 34.590889, 31.775459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618371, -0.300362, -0.726223,
		-0.330792, -0.937713, 0.106167,
		-0.712877, 0.174578, -0.679212,
		36.237011, 34.643261, 31.571695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958660, 34.104752, 31.493641>,  <36.736027, 34.521061, 32.047142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958660, 34.104752, 31.493641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693878, 34.325775, 31.291061>,  <36.535007, 34.458389, 31.169514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693878, 34.325775, 31.291061>,  <36.958660, 34.104752, 31.493641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693878, 34.325775, 31.291061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562155, -0.080927, -0.823063,
		-0.495774, -0.829537, -0.257051,
		-0.661959, 0.552556, -0.506450,
		36.495289, 34.491543, 31.139126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899052, 33.758636, 30.850893>,  <36.958660, 34.104752, 31.493641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899052, 33.758636, 30.850893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773621, 34.134277, 30.794668>,  <36.698364, 34.359661, 30.760933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773621, 34.134277, 30.794668>,  <36.899052, 33.758636, 30.850893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773621, 34.134277, 30.794668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565996, 0.065992, -0.821762,
		-0.762442, -0.337243, -0.552222,
		-0.313576, 0.939102, -0.140563,
		36.679546, 34.416008, 30.752499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496769, 33.861187, 30.294455>,  <36.899052, 33.758636, 30.850893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496769, 33.861187, 30.294455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648613, 34.227776, 30.345016>,  <36.739719, 34.447727, 30.375353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648613, 34.227776, 30.345016>,  <36.496769, 33.861187, 30.294455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648613, 34.227776, 30.345016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187384, 0.057632, -0.980595,
		-0.905973, 0.395926, -0.149855,
		0.379607, 0.916472, 0.126403,
		36.762493, 34.502716, 30.382936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355560, 34.171265, 29.733700>,  <36.496769, 33.861187, 30.294455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355560, 34.171265, 29.733700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636539, 34.417072, 29.877327>,  <36.805126, 34.564556, 29.963503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636539, 34.417072, 29.877327>,  <36.355560, 34.171265, 29.733700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636539, 34.417072, 29.877327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312994, 0.186380, -0.931288,
		-0.639219, 0.766569, -0.061418,
		0.702449, 0.614520, 0.359069,
		36.847275, 34.601429, 29.985048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245453, 34.803371, 29.458046>,  <36.355560, 34.171265, 29.733700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245453, 34.803371, 29.458046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631950, 34.779385, 29.558270>,  <36.863850, 34.764992, 29.618402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631950, 34.779385, 29.558270>,  <36.245453, 34.803371, 29.458046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631950, 34.779385, 29.558270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257461, 0.260424, -0.930534,
		-0.009450, 0.963630, 0.267072,
		0.966243, -0.059967, 0.250558,
		36.921822, 34.761395, 29.633436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442089, 35.464878, 29.356066>,  <36.245453, 34.803371, 29.458046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442089, 35.464878, 29.356066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757648, 35.220398, 29.330540>,  <36.946983, 35.073711, 29.315224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757648, 35.220398, 29.330540>,  <36.442089, 35.464878, 29.356066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757648, 35.220398, 29.330540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238059, 0.399696, -0.885195,
		0.566535, 0.683140, 0.460822,
		0.788902, -0.611197, -0.063814,
		36.994320, 35.037037, 29.311396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104023, 35.851845, 29.096096>,  <36.442089, 35.464878, 29.356066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104023, 35.851845, 29.096096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174473, 35.463978, 29.028299>,  <37.216743, 35.231258, 28.987621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174473, 35.463978, 29.028299>,  <37.104023, 35.851845, 29.096096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174473, 35.463978, 29.028299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554243, 0.239983, -0.797009,
		0.813507, 0.046438, 0.579698,
		0.176129, -0.969666, -0.169490,
		37.227310, 35.173077, 28.977453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913124, 35.822929, 28.986919>,  <37.104023, 35.851845, 29.096096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913124, 35.822929, 28.986919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751247, 35.493172, 28.828632>,  <37.654121, 35.295319, 28.733660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751247, 35.493172, 28.828632>,  <37.913124, 35.822929, 28.986919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751247, 35.493172, 28.828632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605773, 0.082483, -0.791350,
		0.685026, -0.559972, 0.466016,
		-0.404696, -0.824395, -0.395719,
		37.629837, 35.245853, 28.709917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489792, 35.517323, 28.684196>,  <37.913124, 35.822929, 28.986919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489792, 35.517323, 28.684196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169117, 35.353493, 28.510046>,  <37.976711, 35.255196, 28.405556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169117, 35.353493, 28.510046>,  <38.489792, 35.517323, 28.684196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169117, 35.353493, 28.510046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546294, -0.206390, -0.811767,
		0.242625, -0.888622, 0.389209,
		-0.801683, -0.409577, -0.435373,
		37.928612, 35.230621, 28.379435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714859, 34.949951, 28.325081>,  <38.489792, 35.517323, 28.684196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714859, 34.949951, 28.325081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379738, 35.049950, 28.130932>,  <38.178665, 35.109947, 28.014442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379738, 35.049950, 28.130932>,  <38.714859, 34.949951, 28.325081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379738, 35.049950, 28.130932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466987, -0.132449, -0.874288,
		-0.282854, -0.959145, -0.005778,
		-0.837805, 0.249994, -0.485372,
		38.128395, 35.124947, 27.985321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669521, 34.447411, 27.764645>,  <38.714859, 34.949951, 28.325081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669521, 34.447411, 27.764645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404449, 34.728809, 27.661926>,  <38.245407, 34.897648, 27.600296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404449, 34.728809, 27.661926>,  <38.669521, 34.447411, 27.764645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404449, 34.728809, 27.661926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262279, -0.103165, -0.959462,
		-0.701471, -0.703170, -0.116147,
		-0.662682, 0.703498, -0.256794,
		38.205647, 34.939857, 27.584888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403000, 34.276104, 27.177256>,  <38.669521, 34.447411, 27.764645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403000, 34.276104, 27.177256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288376, 34.659309, 27.173267>,  <38.219601, 34.889233, 27.170874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288376, 34.659309, 27.173267>,  <38.403000, 34.276104, 27.177256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288376, 34.659309, 27.173267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052794, 0.005398, -0.998591,
		-0.956607, -0.286681, -0.052124,
		-0.286559, 0.958011, -0.009972,
		38.202408, 34.946712, 27.170277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917027, 34.258324, 26.702108>,  <38.403000, 34.276104, 27.177256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917027, 34.258324, 26.702108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063026, 34.630112, 26.723486>,  <38.150627, 34.853184, 26.736313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063026, 34.630112, 26.723486>,  <37.917027, 34.258324, 26.702108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063026, 34.630112, 26.723486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314681, -0.069139, -0.946676,
		-0.876215, 0.362352, -0.317723,
		0.364997, 0.929474, 0.053444,
		38.172527, 34.908955, 26.739519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886005, 34.533607, 26.013956>,  <37.917027, 34.258324, 26.702108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886005, 34.533607, 26.013956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119869, 34.817348, 26.171438>,  <38.260185, 34.987591, 26.265926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119869, 34.817348, 26.171438>,  <37.886005, 34.533607, 26.013956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119869, 34.817348, 26.171438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405834, 0.164482, -0.899024,
		-0.702478, 0.685399, -0.191712,
		0.584657, 0.709348, 0.393703,
		38.295265, 35.030151, 26.289549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834396, 35.090096, 25.554724>,  <37.886005, 34.533607, 26.013956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834396, 35.090096, 25.554724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176075, 35.140862, 25.756411>,  <38.381084, 35.171322, 25.877422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176075, 35.140862, 25.756411>,  <37.834396, 35.090096, 25.554724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176075, 35.140862, 25.756411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476818, 0.195496, -0.856987,
		-0.207334, 0.972458, 0.106479,
		0.854200, 0.126912, 0.504219,
		38.432335, 35.178936, 25.907677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124199, 35.622631, 25.216146>,  <37.834396, 35.090096, 25.554724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124199, 35.622631, 25.216146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413105, 35.439369, 25.423386>,  <38.586449, 35.329411, 25.547729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413105, 35.439369, 25.423386>,  <38.124199, 35.622631, 25.216146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413105, 35.439369, 25.423386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663269, 0.246582, -0.706592,
		0.195977, 0.853985, 0.481979,
		0.722266, -0.458157, 0.518097,
		38.629784, 35.301922, 25.578815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686714, 36.065754, 25.198332>,  <38.124199, 35.622631, 25.216146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686714, 36.065754, 25.198332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802361, 35.692753, 25.284906>,  <38.871746, 35.468952, 25.336851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802361, 35.692753, 25.284906>,  <38.686714, 36.065754, 25.198332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802361, 35.692753, 25.284906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729008, 0.067931, -0.681126,
		0.620452, 0.354706, 0.699445,
		0.289113, -0.932507, 0.216436,
		38.889095, 35.413002, 25.349836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401867, 36.135067, 25.226791>,  <38.686714, 36.065754, 25.198332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401867, 36.135067, 25.226791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350693, 35.741379, 25.177904>,  <39.319988, 35.505165, 25.148571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350693, 35.741379, 25.177904>,  <39.401867, 36.135067, 25.226791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350693, 35.741379, 25.177904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794965, -0.028083, -0.606005,
		0.593012, -0.174691, 0.786015,
		-0.127937, -0.984223, -0.122220,
		39.312313, 35.446114, 25.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073715, 35.852516, 25.355623>,  <39.401867, 36.135067, 25.226791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073715, 35.852516, 25.355623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854630, 35.582748, 25.157562>,  <39.723179, 35.420887, 25.038727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854630, 35.582748, 25.157562>,  <40.073715, 35.852516, 25.355623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854630, 35.582748, 25.157562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812663, -0.288087, -0.506541,
		0.198973, -0.679830, 0.705862,
		-0.547712, -0.674416, -0.495151,
		39.690315, 35.380424, 25.009016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643890, 35.349350, 25.084972>,  <40.073715, 35.852516, 25.355623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643890, 35.349350, 25.084972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314579, 35.327106, 24.859009>,  <40.116993, 35.313763, 24.723431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314579, 35.327106, 24.859009>,  <40.643890, 35.349350, 25.084972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314579, 35.327106, 24.859009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563276, -0.203168, -0.800901,
		-0.070236, -0.977564, 0.198586,
		-0.823278, -0.055607, -0.564908,
		40.067596, 35.310425, 24.689537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696419, 34.749210, 24.710220>,  <40.643890, 35.349350, 25.084972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696419, 34.749210, 24.710220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462051, 34.989517, 24.492678>,  <40.321430, 35.133701, 24.362152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462051, 34.989517, 24.492678>,  <40.696419, 34.749210, 24.710220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462051, 34.989517, 24.492678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653882, -0.045946, -0.755201,
		-0.478690, -0.798100, -0.365913,
		-0.585914, 0.600770, -0.543857,
		40.286278, 35.169746, 24.329521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582756, 34.369793, 24.092857>,  <40.696419, 34.749210, 24.710220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582756, 34.369793, 24.092857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484707, 34.743721, 23.990070>,  <40.425877, 34.968079, 23.928398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484707, 34.743721, 23.990070>,  <40.582756, 34.369793, 24.092857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484707, 34.743721, 23.990070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548837, -0.084693, -0.831628,
		-0.799184, -0.344882, -0.492303,
		-0.245119, 0.934818, -0.256969,
		40.411171, 35.024166, 23.912979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355804, 34.278305, 23.368912>,  <40.582756, 34.369793, 24.092857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355804, 34.278305, 23.368912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437645, 34.664856, 23.431208>,  <40.486748, 34.896786, 23.468586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437645, 34.664856, 23.431208>,  <40.355804, 34.278305, 23.368912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437645, 34.664856, 23.431208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608185, -0.000835, -0.793795,
		-0.766975, 0.257128, -0.587907,
		0.204597, 0.966377, 0.155741,
		40.499023, 34.954769, 23.477930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410713, 34.511395, 22.702656>,  <40.355804, 34.278305, 23.368912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410713, 34.511395, 22.702656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534214, 34.818745, 22.926899>,  <40.608315, 35.003155, 23.061443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534214, 34.818745, 22.926899>,  <40.410713, 34.511395, 22.702656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534214, 34.818745, 22.926899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504019, 0.367676, -0.781524,
		-0.806622, 0.523850, -0.273755,
		0.308748, 0.768372, 0.560606,
		40.626839, 35.049255, 23.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246902, 35.122883, 22.296511>,  <40.410713, 34.511395, 22.702656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246902, 35.122883, 22.296511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545433, 35.205128, 22.549723>,  <40.724552, 35.254475, 22.701649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545433, 35.205128, 22.549723>,  <40.246902, 35.122883, 22.296511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545433, 35.205128, 22.549723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559859, 0.320411, -0.764130,
		-0.359947, 0.924694, 0.124013,
		0.746322, 0.205617, 0.633029,
		40.769329, 35.266811, 22.739632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363651, 35.823627, 22.229998>,  <40.246902, 35.122883, 22.296511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363651, 35.823627, 22.229998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711533, 35.695736, 22.380409>,  <40.920261, 35.618999, 22.470655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711533, 35.695736, 22.380409>,  <40.363651, 35.823627, 22.229998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711533, 35.695736, 22.380409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489103, 0.455840, -0.743632,
		0.066353, 0.830652, 0.552824,
		0.869699, -0.319730, 0.376027,
		40.972443, 35.599815, 22.493217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684380, 36.491562, 22.293179>,  <40.363651, 35.823627, 22.229998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684380, 36.491562, 22.293179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958950, 36.200706, 22.289314>,  <41.123692, 36.026196, 22.286997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958950, 36.200706, 22.289314>,  <40.684380, 36.491562, 22.293179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958950, 36.200706, 22.289314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609694, 0.582700, -0.537340,
		0.396347, 0.362956, 0.843310,
		0.686428, -0.727134, -0.009659,
		41.164879, 35.982567, 22.286417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346527, 36.820225, 22.527267>,  <40.684380, 36.491562, 22.293179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346527, 36.820225, 22.527267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446072, 36.480942, 22.340244>,  <41.505798, 36.277370, 22.228031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446072, 36.480942, 22.340244>,  <41.346527, 36.820225, 22.527267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446072, 36.480942, 22.340244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676604, 0.497671, -0.542706,
		0.693018, -0.181292, 0.697753,
		0.248863, -0.848208, -0.467558,
		41.520729, 36.226479, 22.199976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183544, 36.662117, 22.592724>,  <41.346527, 36.820225, 22.527267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183544, 36.662117, 22.592724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075409, 36.410698, 22.301012>,  <42.010529, 36.259846, 22.125984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075409, 36.410698, 22.301012>,  <42.183544, 36.662117, 22.592724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075409, 36.410698, 22.301012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765172, 0.319462, -0.558978,
		0.584319, -0.709138, 0.394581,
		-0.270339, -0.628543, -0.729280,
		41.994308, 36.222134, 22.082228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787140, 36.455326, 22.404837>,  <42.183544, 36.662117, 22.592724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787140, 36.455326, 22.404837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518009, 36.421917, 22.110807>,  <42.356533, 36.401871, 21.934389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518009, 36.421917, 22.110807>,  <42.787140, 36.455326, 22.404837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518009, 36.421917, 22.110807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600818, 0.518053, -0.608801,
		0.431655, -0.851261, -0.298377,
		-0.672824, -0.083522, -0.735073,
		42.316162, 36.396858, 21.890285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254910, 36.420582, 21.807446>,  <42.787140, 36.455326, 22.404837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254910, 36.420582, 21.807446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882404, 36.475304, 21.672373>,  <42.658901, 36.508137, 21.591330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882404, 36.475304, 21.672373>,  <43.254910, 36.420582, 21.807446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882404, 36.475304, 21.672373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363563, 0.409448, -0.836764,
		0.023794, -0.902019, -0.431041,
		-0.931266, 0.136800, -0.337683,
		42.603024, 36.516342, 21.571068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231617, 36.169735, 21.070461>,  <43.254910, 36.420582, 21.807446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231617, 36.169735, 21.070461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924816, 36.425217, 21.095022>,  <42.740738, 36.578506, 21.109758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924816, 36.425217, 21.095022>,  <43.231617, 36.169735, 21.070461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924816, 36.425217, 21.095022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347136, 0.493526, -0.797451,
		-0.539639, -0.590329, -0.600251,
		-0.766998, 0.638705, 0.061402,
		42.694717, 36.616829, 21.113443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117939, 36.290760, 20.429663>,  <43.231617, 36.169735, 21.070461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117939, 36.290760, 20.429663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947372, 36.595215, 20.625151>,  <42.845032, 36.777885, 20.742443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947372, 36.595215, 20.625151>,  <43.117939, 36.290760, 20.429663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947372, 36.595215, 20.625151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312505, 0.631001, -0.710055,
		-0.848830, -0.150049, -0.506925,
		-0.426413, 0.761133, 0.488721,
		42.819447, 36.823555, 20.771767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771645, 36.637444, 19.867373>,  <43.117939, 36.290760, 20.429663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771645, 36.637444, 19.867373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811157, 36.911495, 20.156050>,  <42.834866, 37.075928, 20.329256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811157, 36.911495, 20.156050>,  <42.771645, 36.637444, 19.867373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811157, 36.911495, 20.156050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292661, 0.673165, -0.679115,
		-0.951100, 0.278295, -0.134014,
		0.098781, 0.685128, 0.721694,
		42.840790, 37.117035, 20.372559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416420, 37.265717, 19.609331>,  <42.771645, 36.637444, 19.867373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416420, 37.265717, 19.609331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679192, 37.381828, 19.887665>,  <42.836853, 37.451496, 20.054665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679192, 37.381828, 19.887665>,  <42.416420, 37.265717, 19.609331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679192, 37.381828, 19.887665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447313, 0.592877, -0.669632,
		-0.606925, 0.751155, 0.259630,
		0.656927, 0.290281, 0.695834,
		42.876270, 37.468914, 20.096415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503597, 37.928658, 19.524292>,  <42.416420, 37.265717, 19.609331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503597, 37.928658, 19.524292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830070, 37.791592, 19.710377>,  <43.025955, 37.709351, 19.822027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830070, 37.791592, 19.710377>,  <42.503597, 37.928658, 19.524292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830070, 37.791592, 19.710377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566247, 0.634525, -0.526064,
		-0.114921, 0.692789, 0.711925,
		0.816185, -0.342669, 0.465210,
		43.074924, 37.688789, 19.849939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249256, 38.106163, 20.235073>,  <42.503597, 37.928658, 19.524292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249256, 38.106163, 20.235073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243504, 38.503723, 20.191336>,  <42.240051, 38.742260, 20.165092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243504, 38.503723, 20.191336>,  <42.249256, 38.106163, 20.235073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243504, 38.503723, 20.191336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158013, -0.110242, -0.981264,
		-0.987332, 0.003164, 0.158635,
		-0.014383, 0.993900, -0.109345,
		42.239189, 38.801891, 20.158531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821140, 38.099636, 19.683670>,  <42.249256, 38.106163, 20.235073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821140, 38.099636, 19.683670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026878, 38.442200, 19.701609>,  <42.150322, 38.647739, 19.712372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026878, 38.442200, 19.701609>,  <41.821140, 38.099636, 19.683670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026878, 38.442200, 19.701609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255237, -0.102945, -0.961383,
		-0.818723, 0.505926, -0.271537,
		0.514342, 0.856412, 0.044847,
		42.181179, 38.699123, 19.715063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761692, 38.519642, 19.029394>,  <41.821140, 38.099636, 19.683670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761692, 38.519642, 19.029394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107250, 38.645245, 19.186918>,  <42.314587, 38.720608, 19.281433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107250, 38.645245, 19.186918>,  <41.761692, 38.519642, 19.029394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107250, 38.645245, 19.186918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370247, 0.134172, -0.919192,
		-0.341472, 0.939892, -0.000350,
		0.863895, 0.314008, 0.393809,
		42.366417, 38.739449, 19.305061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365765, 38.316174, 18.571901>,  <41.761692, 38.519642, 19.029394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365765, 38.316174, 18.571901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446815, 38.705898, 18.532581>,  <42.495445, 38.939732, 18.508989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446815, 38.705898, 18.532581>,  <42.365765, 38.316174, 18.571901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446815, 38.705898, 18.532581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025277, 0.095146, 0.995142,
		0.978930, -0.204126, -0.005349,
		0.202625, 0.974310, -0.098301,
		42.507603, 38.998192, 18.503092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983948, 38.572048, 18.950636>,  <42.365765, 38.316174, 18.571901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983948, 38.572048, 18.950636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671745, 38.816193, 18.896566>,  <42.484425, 38.962677, 18.864124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671745, 38.816193, 18.896566>,  <42.983948, 38.572048, 18.950636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671745, 38.816193, 18.896566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012901, 0.200454, 0.979618,
		0.625015, 0.766342, -0.148581,
		-0.780506, 0.610359, -0.135174,
		42.437592, 38.999302, 18.856014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123131, 39.217186, 19.276098>,  <42.983948, 38.572048, 18.950636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123131, 39.217186, 19.276098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723663, 39.223957, 19.256575>,  <42.483982, 39.228020, 19.244862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723663, 39.223957, 19.256575>,  <43.123131, 39.217186, 19.276098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723663, 39.223957, 19.256575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047178, 0.086059, 0.995172,
		0.021048, 0.996146, -0.085145,
		-0.998665, 0.016930, -0.048807,
		42.424065, 39.229034, 19.241932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781700, 39.881233, 19.481636>,  <43.123131, 39.217186, 19.276098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781700, 39.881233, 19.481636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580734, 39.551559, 19.586174>,  <42.460155, 39.353756, 19.648897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580734, 39.551559, 19.586174>,  <42.781700, 39.881233, 19.481636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580734, 39.551559, 19.586174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090916, 0.350948, 0.931971,
		-0.859831, 0.444480, -0.251255,
		-0.502420, -0.824180, 0.261346,
		42.430008, 39.304306, 19.664577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180233, 40.064804, 19.928183>,  <42.781700, 39.881233, 19.481636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180233, 40.064804, 19.928183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207485, 39.673431, 20.006184>,  <42.223835, 39.438606, 20.052984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207485, 39.673431, 20.006184>,  <42.180233, 40.064804, 19.928183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207485, 39.673431, 20.006184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256703, 0.171682, 0.951120,
		-0.964086, -0.114857, -0.239471,
		0.068130, -0.978434, 0.195001,
		42.227924, 39.379902, 20.064684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637562, 39.911530, 20.369352>,  <42.180233, 40.064804, 19.928183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637562, 39.911530, 20.369352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880272, 39.600407, 20.434881>,  <42.025898, 39.413734, 20.474199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880272, 39.600407, 20.434881>,  <41.637562, 39.911530, 20.369352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880272, 39.600407, 20.434881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240074, 0.017144, 0.970603,
		-0.757749, -0.628271, -0.176328,
		0.606779, -0.777805, 0.163822,
		42.062305, 39.367065, 20.484028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256554, 39.296989, 20.791567>,  <41.637562, 39.911530, 20.369352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256554, 39.296989, 20.791567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649540, 39.233616, 20.830898>,  <41.885330, 39.195591, 20.854496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649540, 39.233616, 20.830898>,  <41.256554, 39.296989, 20.791567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649540, 39.233616, 20.830898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080889, 0.113003, 0.990297,
		-0.168008, -0.980882, 0.098206,
		0.982461, -0.158434, 0.098328,
		41.944279, 39.186085, 20.860397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264435, 38.849251, 21.226852>,  <41.256554, 39.296989, 20.791567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264435, 38.849251, 21.226852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641117, 38.982948, 21.242146>,  <41.867126, 39.063168, 21.251322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641117, 38.982948, 21.242146>,  <41.264435, 38.849251, 21.226852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641117, 38.982948, 21.242146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012167, -0.147402, 0.989002,
		0.336207, -0.930887, -0.142876,
		0.941710, 0.334248, 0.038232,
		41.923630, 39.083221, 21.253614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660664, 38.347332, 21.653166>,  <41.264435, 38.849251, 21.226852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660664, 38.347332, 21.653166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871578, 38.687031, 21.664097>,  <41.998127, 38.890850, 21.670656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871578, 38.687031, 21.664097>,  <41.660664, 38.347332, 21.653166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871578, 38.687031, 21.664097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055471, 0.002310, 0.998458,
		0.847876, -0.527987, 0.048326,
		0.527285, 0.849249, 0.027330,
		42.029762, 38.941807, 21.672297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037651, 38.192295, 22.191200>,  <41.660664, 38.347332, 21.653166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037651, 38.192295, 22.191200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120785, 38.580883, 22.145512>,  <42.170666, 38.814037, 22.118099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120785, 38.580883, 22.145512>,  <42.037651, 38.192295, 22.191200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120785, 38.580883, 22.145512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140295, 0.085958, 0.986371,
		0.968050, -0.221030, -0.118427,
		0.207838, 0.971471, -0.114221,
		42.183136, 38.872326, 22.111246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683197, 38.307617, 22.599932>,  <42.037651, 38.192295, 22.191200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683197, 38.307617, 22.599932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491741, 38.657906, 22.574575>,  <42.376869, 38.868080, 22.559362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491741, 38.657906, 22.574575>,  <42.683197, 38.307617, 22.599932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491741, 38.657906, 22.574575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033458, 0.053952, 0.997983,
		0.877373, 0.479796, 0.003476,
		-0.478641, 0.875719, -0.063390,
		42.348148, 38.920620, 22.555559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001289, 38.695328, 23.173265>,  <42.683197, 38.307617, 22.599932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001289, 38.695328, 23.173265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644558, 38.849308, 23.078230>,  <42.430519, 38.941696, 23.021210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644558, 38.849308, 23.078230>,  <43.001289, 38.695328, 23.173265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644558, 38.849308, 23.078230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179791, 0.180313, 0.967038,
		0.415103, 0.905152, -0.091598,
		-0.891832, 0.384951, -0.237587,
		42.377007, 38.964794, 23.006954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041756, 39.374172, 23.532003>,  <43.001289, 38.695328, 23.173265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041756, 39.374172, 23.532003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657375, 39.288784, 23.461576>,  <42.426746, 39.237549, 23.419321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657375, 39.288784, 23.461576>,  <43.041756, 39.374172, 23.532003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657375, 39.288784, 23.461576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163030, -0.077344, 0.983585,
		-0.223586, 0.973883, 0.039522,
		-0.960953, -0.213472, -0.176065,
		42.369091, 39.224743, 23.408756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720810, 39.583000, 24.066946>,  <43.041756, 39.374172, 23.532003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720810, 39.583000, 24.066946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408451, 39.397045, 23.900055>,  <42.221035, 39.285473, 23.799921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408451, 39.397045, 23.900055>,  <42.720810, 39.583000, 24.066946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408451, 39.397045, 23.900055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458474, -0.027104, 0.888295,
		-0.424267, 0.884954, -0.191974,
		-0.780897, -0.464889, -0.417227,
		42.174183, 39.257580, 23.774887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164280, 39.913052, 24.339052>,  <42.720810, 39.583000, 24.066946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164280, 39.913052, 24.339052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045818, 39.551472, 24.215660>,  <41.974739, 39.334522, 24.141624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045818, 39.551472, 24.215660>,  <42.164280, 39.913052, 24.339052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045818, 39.551472, 24.215660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272638, -0.229527, 0.934337,
		-0.915401, 0.360815, -0.178475,
		-0.296158, -0.903952, -0.308482,
		41.956970, 39.280285, 24.123116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519871, 39.925140, 24.544580>,  <42.164280, 39.913052, 24.339052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519871, 39.925140, 24.544580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638401, 39.544483, 24.512178>,  <41.709518, 39.316090, 24.492737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638401, 39.544483, 24.512178>,  <41.519871, 39.925140, 24.544580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638401, 39.544483, 24.512178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486582, -0.223408, 0.844587,
		-0.821844, -0.210859, -0.529255,
		0.296329, -0.951644, -0.081006,
		41.727299, 39.258991, 24.487877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931370, 39.508636, 24.534054>,  <41.519871, 39.925140, 24.544580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931370, 39.508636, 24.534054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231888, 39.269379, 24.645601>,  <41.412201, 39.125824, 24.712530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231888, 39.269379, 24.645601>,  <40.931370, 39.508636, 24.534054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231888, 39.269379, 24.645601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447726, -0.151513, 0.881241,
		-0.484862, -0.786931, -0.381639,
		0.751299, -0.598149, 0.278867,
		41.457279, 39.089935, 24.729261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552269, 38.932617, 24.929508>,  <40.931370, 39.508636, 24.534054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552269, 38.932617, 24.929508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938457, 38.889454, 25.024355>,  <41.170170, 38.863556, 25.081263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938457, 38.889454, 25.024355>,  <40.552269, 38.932617, 24.929508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938457, 38.889454, 25.024355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260360, -0.431161, 0.863894,
		0.009010, -0.895798, -0.444369,
		0.965469, -0.107912, 0.237115,
		41.228100, 38.857079, 25.095490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564365, 38.208908, 25.095142>,  <40.552269, 38.932617, 24.929508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564365, 38.208908, 25.095142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862549, 38.408142, 25.272318>,  <41.041458, 38.527683, 25.378624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862549, 38.408142, 25.272318>,  <40.564365, 38.208908, 25.095142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862549, 38.408142, 25.272318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344838, -0.280493, 0.895773,
		0.570416, -0.820507, -0.037337,
		0.745461, 0.498089, 0.442940,
		41.086185, 38.557568, 25.405199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754810, 37.833477, 25.601496>,  <40.564365, 38.208908, 25.095142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754810, 37.833477, 25.601496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895443, 38.186028, 25.727716>,  <40.979824, 38.397556, 25.803450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895443, 38.186028, 25.727716>,  <40.754810, 37.833477, 25.601496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895443, 38.186028, 25.727716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438947, -0.142518, 0.887138,
		0.826870, -0.450414, 0.336769,
		0.351583, 0.881372, 0.315552,
		41.000919, 38.450439, 25.822382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134972, 37.690723, 26.260313>,  <40.754810, 37.833477, 25.601496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134972, 37.690723, 26.260313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050583, 38.081692, 26.255754>,  <40.999950, 38.316273, 26.253019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050583, 38.081692, 26.255754>,  <41.134972, 37.690723, 26.260313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050583, 38.081692, 26.255754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347557, -0.064112, 0.935464,
		0.913616, 0.201320, 0.353237,
		-0.210974, 0.977425, -0.011396,
		40.987289, 38.374920, 26.252335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307392, 37.936787, 26.974886>,  <41.134972, 37.690723, 26.260313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307392, 37.936787, 26.974886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080875, 38.221466, 26.808611>,  <40.944965, 38.392273, 26.708847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080875, 38.221466, 26.808611>,  <41.307392, 37.936787, 26.974886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080875, 38.221466, 26.808611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451414, 0.154157, 0.878897,
		0.689595, 0.685357, 0.233975,
		-0.566290, 0.711703, -0.415685,
		40.910988, 38.434978, 26.683905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246605, 38.339756, 27.590002>,  <41.307392, 37.936787, 26.974886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246605, 38.339756, 27.590002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986263, 38.495876, 27.329523>,  <40.830059, 38.589550, 27.173235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986263, 38.495876, 27.329523>,  <41.246605, 38.339756, 27.590002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986263, 38.495876, 27.329523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684828, 0.068443, 0.725484,
		0.327728, 0.918139, 0.222744,
		-0.650850, 0.390303, -0.651198,
		40.791008, 38.612968, 27.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936192, 38.966080, 27.855995>,  <41.246605, 38.339756, 27.590002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936192, 38.966080, 27.855995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675060, 38.793549, 27.606911>,  <40.518383, 38.690029, 27.457460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675060, 38.793549, 27.606911>,  <40.936192, 38.966080, 27.855995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675060, 38.793549, 27.606911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732735, 0.151068, 0.663534,
		-0.192128, 0.889458, -0.414671,
		-0.652829, -0.431327, -0.622713,
		40.479210, 38.664150, 27.420097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327389, 39.366795, 28.012711>,  <40.936192, 38.966080, 27.855995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327389, 39.366795, 28.012711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238289, 39.024059, 27.826717>,  <40.184830, 38.818417, 27.715120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238289, 39.024059, 27.826717>,  <40.327389, 39.366795, 28.012711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238289, 39.024059, 27.826717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799357, -0.112497, 0.590231,
		-0.558042, 0.503163, -0.659861,
		-0.222750, -0.856838, -0.464985,
		40.171463, 38.767010, 27.687222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646465, 39.509827, 27.871035>,  <40.327389, 39.366795, 28.012711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646465, 39.509827, 27.871035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738716, 39.120705, 27.879675>,  <39.794067, 38.887234, 27.884859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738716, 39.120705, 27.879675>,  <39.646465, 39.509827, 27.871035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738716, 39.120705, 27.879675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812144, -0.180219, 0.554927,
		-0.535941, -0.145526, -0.831619,
		0.230630, -0.972802, 0.021601,
		39.807903, 38.828865, 27.886156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042538, 39.171566, 27.664576>,  <39.646465, 39.509827, 27.871035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042538, 39.171566, 27.664576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238499, 38.874100, 27.846546>,  <39.356075, 38.695621, 27.955729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238499, 38.874100, 27.846546>,  <39.042538, 39.171566, 27.664576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238499, 38.874100, 27.846546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799048, -0.174376, 0.575426,
		-0.348597, -0.645409, -0.679652,
		0.489900, -0.743667, 0.454926,
		39.385468, 38.651001, 27.983025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641155, 38.672176, 27.693464>,  <39.042538, 39.171566, 27.664576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641155, 38.672176, 27.693464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895355, 38.566559, 27.983685>,  <39.047874, 38.503189, 28.157816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895355, 38.566559, 27.983685>,  <38.641155, 38.672176, 27.693464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895355, 38.566559, 27.983685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770886, -0.164255, 0.615431,
		-0.043321, -0.950423, -0.307926,
		0.635499, -0.264037, 0.725552,
		39.086006, 38.487347, 28.201349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270123, 38.167381, 28.001106>,  <38.641155, 38.672176, 27.693464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270123, 38.167381, 28.001106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532509, 38.254303, 28.290237>,  <38.689941, 38.306458, 28.463717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532509, 38.254303, 28.290237>,  <38.270123, 38.167381, 28.001106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532509, 38.254303, 28.290237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683293, -0.235867, 0.690997,
		0.320651, -0.947177, -0.006236,
		0.655968, 0.217308, 0.722830,
		38.729298, 38.319496, 28.507086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393890, 37.643147, 28.537519>,  <38.270123, 38.167381, 28.001106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393890, 37.643147, 28.537519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493187, 37.986389, 28.717310>,  <38.552765, 38.192337, 28.825184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493187, 37.986389, 28.717310>,  <38.393890, 37.643147, 28.537519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493187, 37.986389, 28.717310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580627, -0.239607, 0.778114,
		0.775403, -0.454134, 0.438762,
		0.248237, 0.858109, 0.449474,
		38.567657, 38.243820, 28.852152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618042, 37.517437, 29.190382>,  <38.393890, 37.643147, 28.537519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618042, 37.517437, 29.190382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510166, 37.902046, 29.211329>,  <38.445438, 38.132812, 29.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510166, 37.902046, 29.211329>,  <38.618042, 37.517437, 29.190382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510166, 37.902046, 29.211329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541278, -0.196349, 0.817597,
		0.796419, 0.192156, 0.573404,
		-0.269694, 0.961521, 0.052367,
		38.429256, 38.190502, 29.227039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484310, 37.558819, 29.804121>,  <38.618042, 37.517437, 29.190382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484310, 37.558819, 29.804121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331764, 37.914955, 29.704647>,  <38.240234, 38.128639, 29.644962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331764, 37.914955, 29.704647>,  <38.484310, 37.558819, 29.804121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331764, 37.914955, 29.704647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588754, -0.026536, 0.807876,
		0.712689, 0.454514, 0.534314,
		-0.381369, 0.890344, -0.248685,
		38.217354, 38.182060, 29.630041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376923, 37.907711, 30.366711>,  <38.484310, 37.558819, 29.804121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376923, 37.907711, 30.366711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117325, 38.073204, 30.111330>,  <37.961567, 38.172501, 29.958101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117325, 38.073204, 30.111330>,  <38.376923, 37.907711, 30.366711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117325, 38.073204, 30.111330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659952, 0.111350, 0.743010,
		0.378501, 0.903562, 0.200779,
		-0.648999, 0.413735, -0.638454,
		37.922626, 38.197323, 29.919794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171608, 38.418907, 30.685934>,  <38.376923, 37.907711, 30.366711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171608, 38.418907, 30.685934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888695, 38.340912, 30.414129>,  <37.718948, 38.294117, 30.251047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888695, 38.340912, 30.414129>,  <38.171608, 38.418907, 30.685934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888695, 38.340912, 30.414129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705410, 0.131634, 0.696469,
		-0.046354, 0.971933, -0.230647,
		-0.707282, -0.194985, -0.679510,
		37.676510, 38.282417, 30.210276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543041, 38.857750, 30.873705>,  <38.171608, 38.418907, 30.685934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543041, 38.857750, 30.873705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397682, 38.581497, 30.623594>,  <37.310467, 38.415745, 30.473528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397682, 38.581497, 30.623594>,  <37.543041, 38.857750, 30.873705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397682, 38.581497, 30.623594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813963, -0.091139, 0.573723,
		-0.453216, 0.717445, -0.529025,
		-0.363400, -0.690628, -0.625279,
		37.288662, 38.374310, 30.436010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915245, 39.002766, 30.774937>,  <37.543041, 38.857750, 30.873705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915245, 39.002766, 30.774937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893208, 38.622452, 30.652969>,  <36.879986, 38.394264, 30.579788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893208, 38.622452, 30.652969>,  <36.915245, 39.002766, 30.774937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893208, 38.622452, 30.652969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869687, -0.104331, 0.482451,
		-0.490519, 0.291765, -0.821136,
		-0.055093, -0.950783, -0.304920,
		36.876678, 38.337215, 30.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288376, 39.077457, 30.718998>,  <36.915245, 39.002766, 30.774937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288376, 39.077457, 30.718998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388245, 38.690331, 30.731564>,  <36.448166, 38.458054, 30.739103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388245, 38.690331, 30.731564>,  <36.288376, 39.077457, 30.718998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388245, 38.690331, 30.731564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784684, -0.183206, 0.592204,
		-0.567393, -0.172506, -0.805175,
		0.249671, -0.967821, 0.031413,
		36.463146, 38.399982, 30.740988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720699, 38.725506, 30.572378>,  <36.288376, 39.077457, 30.718998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720699, 38.725506, 30.572378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956989, 38.484970, 30.787575>,  <36.098763, 38.340649, 30.916693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956989, 38.484970, 30.787575>,  <35.720699, 38.725506, 30.572378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956989, 38.484970, 30.787575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788095, -0.286996, 0.544555,
		-0.173059, -0.745672, -0.643447,
		0.590726, -0.601337, 0.537993,
		36.134209, 38.304569, 30.948973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279766, 38.115444, 30.775209>,  <35.720699, 38.725506, 30.572378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279766, 38.115444, 30.775209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593410, 38.110142, 31.023403>,  <35.781597, 38.106960, 31.172319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593410, 38.110142, 31.023403>,  <35.279766, 38.115444, 30.775209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593410, 38.110142, 31.023403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613870, -0.163685, 0.772250,
		0.091328, -0.986424, -0.136484,
		0.784106, -0.013255, 0.620485,
		35.828644, 38.106163, 31.209549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032082, 37.680176, 31.231083>,  <35.279766, 38.115444, 30.775209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032082, 37.680176, 31.231083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325581, 37.867199, 31.428267>,  <35.501678, 37.979412, 31.546577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325581, 37.867199, 31.428267>,  <35.032082, 37.680176, 31.231083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325581, 37.867199, 31.428267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539340, -0.040422, 0.841118,
		0.413197, -0.883038, 0.222513,
		0.733745, 0.467557, 0.492960,
		35.545704, 38.007465, 31.576155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071186, 37.245960, 31.909983>,  <35.032082, 37.680176, 31.231083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071186, 37.245960, 31.909983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229584, 37.607224, 31.976307>,  <35.324623, 37.823982, 32.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229584, 37.607224, 31.976307>,  <35.071186, 37.245960, 31.909983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229584, 37.607224, 31.976307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308509, -0.039216, 0.950413,
		0.864875, -0.427514, 0.263103,
		0.395997, 0.903158, 0.165809,
		35.348381, 37.878170, 32.026051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535412, 37.158607, 32.527493>,  <35.071186, 37.245960, 31.909983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535412, 37.158607, 32.527493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473537, 37.552048, 32.490372>,  <35.436413, 37.788113, 32.468102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473537, 37.552048, 32.490372>,  <35.535412, 37.158607, 32.527493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473537, 37.552048, 32.490372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183726, 0.063653, 0.980914,
		0.970731, 0.168779, 0.170866,
		-0.154682, 0.983596, -0.092799,
		35.427132, 37.847126, 32.462532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884602, 37.501568, 33.054253>,  <35.535412, 37.158607, 32.527493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884602, 37.501568, 33.054253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595577, 37.765675, 32.972321>,  <35.422165, 37.924141, 32.923161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595577, 37.765675, 32.972321>,  <35.884602, 37.501568, 33.054253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595577, 37.765675, 32.972321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215594, 0.066295, 0.974230,
		0.656833, 0.748097, 0.094448,
		-0.722557, 0.660269, -0.204830,
		35.378811, 37.963757, 32.910873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117786, 38.174637, 33.404022>,  <35.884602, 37.501568, 33.054253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117786, 38.174637, 33.404022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728695, 38.107018, 33.340492>,  <35.495239, 38.066444, 33.302372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728695, 38.107018, 33.340492>,  <36.117786, 38.174637, 33.404022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728695, 38.107018, 33.340492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169619, 0.051349, 0.984171,
		-0.158220, 0.984269, -0.078623,
		-0.972726, -0.169052, -0.158827,
		35.436878, 38.056301, 33.292843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705494, 38.651649, 33.552223>,  <36.117786, 38.174637, 33.404022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705494, 38.651649, 33.552223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999065, 38.513412, 33.786118>,  <37.175209, 38.430470, 33.926456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999065, 38.513412, 33.786118>,  <36.705494, 38.651649, 33.552223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999065, 38.513412, 33.786118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662346, 0.173378, -0.728861,
		0.150509, 0.922228, 0.356149,
		0.733925, -0.345594, 0.584739,
		37.219242, 38.409733, 33.961540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231861, 39.062378, 33.359810>,  <36.705494, 38.651649, 33.552223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231861, 39.062378, 33.359810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424271, 38.762211, 33.541134>,  <37.539715, 38.582111, 33.649929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424271, 38.762211, 33.541134>,  <37.231861, 39.062378, 33.359810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424271, 38.762211, 33.541134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746597, 0.079583, -0.660499,
		0.459574, 0.656156, 0.598541,
		0.481024, -0.750417, 0.453310,
		37.568577, 38.537086, 33.677128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024975, 39.330456, 33.500237>,  <37.231861, 39.062378, 33.359810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024975, 39.330456, 33.500237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014091, 38.931004, 33.518116>,  <38.007561, 38.691334, 33.528843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014091, 38.931004, 33.518116>,  <38.024975, 39.330456, 33.500237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014091, 38.931004, 33.518116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688729, -0.051133, -0.723214,
		0.724509, 0.011106, 0.689176,
		-0.027208, -0.998630, 0.044695,
		38.005928, 38.631416, 33.531525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739342, 39.061104, 33.593742>,  <38.024975, 39.330456, 33.500237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739342, 39.061104, 33.593742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520401, 38.759617, 33.448238>,  <38.389038, 38.578724, 33.360935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520401, 38.759617, 33.448238>,  <38.739342, 39.061104, 33.593742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520401, 38.759617, 33.448238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731431, -0.219588, -0.645592,
		0.406716, -0.619430, 0.671482,
		-0.547348, -0.753716, -0.363761,
		38.356197, 38.533501, 33.339111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246006, 38.578609, 33.440208>,  <38.739342, 39.061104, 33.593742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246006, 38.578609, 33.440208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936749, 38.457977, 33.217030>,  <38.751194, 38.385597, 33.083122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936749, 38.457977, 33.217030>,  <39.246006, 38.578609, 33.440208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936749, 38.457977, 33.217030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632953, -0.310989, -0.708983,
		0.040304, -0.901295, 0.431327,
		-0.773141, -0.301584, -0.557943,
		38.704807, 38.367500, 33.049648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444721, 37.974361, 33.290455>,  <39.246006, 38.578609, 33.440208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444721, 37.974361, 33.290455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169220, 38.098484, 33.028362>,  <39.003918, 38.172958, 32.871109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169220, 38.098484, 33.028362>,  <39.444721, 37.974361, 33.290455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169220, 38.098484, 33.028362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605304, -0.251298, -0.755286,
		-0.399028, -0.916820, -0.014748,
		-0.688755, 0.310307, -0.655230,
		38.962593, 38.191578, 32.831795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413063, 37.521339, 32.631828>,  <39.444721, 37.974361, 33.290455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413063, 37.521339, 32.631828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245937, 37.858246, 32.495583>,  <39.145660, 38.060390, 32.413834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245937, 37.858246, 32.495583>,  <39.413063, 37.521339, 32.631828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245937, 37.858246, 32.495583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611011, -0.016963, -0.791440,
		-0.672380, -0.538798, -0.507545,
		-0.417817, 0.842264, -0.340617,
		39.120594, 38.110924, 32.393398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526154, 37.447948, 32.001331>,  <39.413063, 37.521339, 32.631828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526154, 37.447948, 32.001331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456375, 37.841671, 32.011936>,  <39.414509, 38.077904, 32.018299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456375, 37.841671, 32.011936>,  <39.526154, 37.447948, 32.001331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456375, 37.841671, 32.011936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612218, 0.129509, -0.780010,
		-0.771206, -0.119834, -0.625205,
		-0.174442, 0.984310, 0.026514,
		39.404041, 38.136963, 32.019890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504276, 37.583263, 31.311068>,  <39.526154, 37.447948, 32.001331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504276, 37.583263, 31.311068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571743, 37.937634, 31.483900>,  <39.612221, 38.150253, 31.587599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571743, 37.937634, 31.483900>,  <39.504276, 37.583263, 31.311068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571743, 37.937634, 31.483900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633424, 0.238443, -0.736152,
		-0.755200, 0.397851, -0.520949,
		0.168663, 0.885923, 0.432080,
		39.622341, 38.203411, 31.613523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657257, 38.009190, 30.673176>,  <39.504276, 37.583263, 31.311068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657257, 38.009190, 30.673176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749012, 38.206974, 31.008530>,  <39.804066, 38.325645, 31.209742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749012, 38.206974, 31.008530>,  <39.657257, 38.009190, 30.673176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749012, 38.206974, 31.008530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496383, 0.681492, -0.537748,
		-0.837249, 0.539511, -0.089119,
		0.229387, 0.494466, 0.838382,
		39.817829, 38.355312, 31.260044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544758, 38.674767, 30.532196>,  <39.657257, 38.009190, 30.673176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544758, 38.674767, 30.532196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813843, 38.674904, 30.828157>,  <39.975292, 38.674988, 31.005733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813843, 38.674904, 30.828157>,  <39.544758, 38.674767, 30.532196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813843, 38.674904, 30.828157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639250, 0.503283, -0.581434,
		-0.372581, 0.864122, 0.338345,
		0.672713, 0.000345, 0.739904,
		40.015656, 38.675007, 31.050129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872601, 39.298107, 30.598066>,  <39.544758, 38.674767, 30.532196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872601, 39.298107, 30.598066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145962, 39.072437, 30.783394>,  <40.309978, 38.937035, 30.894590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145962, 39.072437, 30.783394>,  <39.872601, 39.298107, 30.598066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145962, 39.072437, 30.783394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727916, 0.574988, -0.373533,
		-0.055665, 0.592531, 0.803622,
		0.683403, -0.564177, 0.463319,
		40.350983, 38.903183, 30.922390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308186, 39.757317, 30.670666>,  <39.872601, 39.298107, 30.598066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308186, 39.757317, 30.670666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500942, 39.420090, 30.766178>,  <40.616596, 39.217754, 30.823484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500942, 39.420090, 30.766178>,  <40.308186, 39.757317, 30.670666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500942, 39.420090, 30.766178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809692, 0.324286, -0.489119,
		0.334927, 0.429042, 0.838896,
		0.481895, -0.843067, 0.238780,
		40.645512, 39.167171, 30.837812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919834, 39.965866, 30.897581>,  <40.308186, 39.757317, 30.670666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919834, 39.965866, 30.897581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974056, 39.594177, 30.760078>,  <41.006592, 39.371162, 30.677576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974056, 39.594177, 30.760078>,  <40.919834, 39.965866, 30.897581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974056, 39.594177, 30.760078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811249, 0.303280, -0.499895,
		0.568769, -0.211108, 0.794943,
		0.135558, -0.929222, -0.343758,
		41.014725, 39.315411, 30.656952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591980, 39.938248, 30.853546>,  <40.919834, 39.965866, 30.897581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591980, 39.938248, 30.853546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470459, 39.629539, 30.630091>,  <41.397545, 39.444317, 30.496017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470459, 39.629539, 30.630091>,  <41.591980, 39.938248, 30.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470459, 39.629539, 30.630091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768805, 0.147727, -0.622186,
		0.562709, -0.618507, 0.548459,
		-0.303804, -0.771768, -0.558639,
		41.379318, 39.398010, 30.462500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187229, 39.431431, 30.733416>,  <41.591980, 39.938248, 30.853546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187229, 39.431431, 30.733416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930832, 39.343803, 30.439169>,  <41.776993, 39.291225, 30.262621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930832, 39.343803, 30.439169>,  <42.187229, 39.431431, 30.733416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930832, 39.343803, 30.439169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760741, -0.053989, -0.646806,
		0.101982, -0.974214, 0.201264,
		-0.640994, -0.219073, -0.735618,
		41.738533, 39.278080, 30.218483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450939, 38.909454, 30.402956>,  <42.187229, 39.431431, 30.733416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450939, 38.909454, 30.402956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211246, 39.050217, 30.115320>,  <42.067432, 39.134674, 29.942739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211246, 39.050217, 30.115320>,  <42.450939, 38.909454, 30.402956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211246, 39.050217, 30.115320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764664, -0.014424, -0.644267,
		-0.237090, -0.935926, -0.260443,
		-0.599230, 0.351901, -0.719089,
		42.031479, 39.155788, 29.899593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732388, 38.589176, 29.800600>,  <42.450939, 38.909454, 30.402956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732388, 38.589176, 29.800600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494041, 38.861954, 29.630943>,  <42.351032, 39.025620, 29.529150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494041, 38.861954, 29.630943>,  <42.732388, 38.589176, 29.800600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494041, 38.861954, 29.630943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644417, 0.090853, -0.759258,
		-0.479236, -0.725741, -0.493592,
		-0.595869, 0.681943, -0.424139,
		42.315281, 39.066536, 29.503702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697960, 38.398479, 29.072838>,  <42.732388, 38.589176, 29.800600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697960, 38.398479, 29.072838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543362, 38.767124, 29.058657>,  <42.450603, 38.988312, 29.050148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543362, 38.767124, 29.058657>,  <42.697960, 38.398479, 29.072838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543362, 38.767124, 29.058657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344338, 0.108529, -0.932552,
		-0.855602, -0.372633, -0.359291,
		-0.386493, 0.921611, -0.035454,
		42.427414, 39.043606, 29.048021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200638, 38.531876, 28.430714>,  <42.697960, 38.398479, 29.072838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200638, 38.531876, 28.430714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372139, 38.878704, 28.532194>,  <42.475040, 39.086800, 28.593082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372139, 38.878704, 28.532194>,  <42.200638, 38.531876, 28.430714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372139, 38.878704, 28.532194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374660, 0.084880, -0.923269,
		-0.822072, 0.490904, -0.288464,
		0.428751, 0.867069, 0.253700,
		42.500763, 39.138824, 28.608305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023220, 39.068027, 27.841688>,  <42.200638, 38.531876, 28.430714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023220, 39.068027, 27.841688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352089, 39.210949, 28.018942>,  <42.549412, 39.296703, 28.125294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352089, 39.210949, 28.018942>,  <42.023220, 39.068027, 27.841688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352089, 39.210949, 28.018942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397664, 0.196494, -0.896244,
		-0.407305, 0.913085, 0.019465,
		0.822171, 0.357304, 0.443134,
		42.598740, 39.318142, 28.151882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154236, 39.701870, 27.561584>,  <42.023220, 39.068027, 27.841688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154236, 39.701870, 27.561584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508259, 39.632847, 27.734509>,  <42.720673, 39.591434, 27.838263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508259, 39.632847, 27.734509>,  <42.154236, 39.701870, 27.561584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508259, 39.632847, 27.734509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460025, 0.182539, -0.868940,
		0.071030, 0.967938, 0.240939,
		0.885060, -0.172559, 0.432309,
		42.773777, 39.581078, 27.864201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617859, 40.071636, 27.142801>,  <42.154236, 39.701870, 27.561584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617859, 40.071636, 27.142801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858032, 39.829788, 27.352152>,  <43.002136, 39.684681, 27.477762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858032, 39.829788, 27.352152>,  <42.617859, 40.071636, 27.142801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858032, 39.829788, 27.352152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679777, 0.041200, -0.732260,
		0.421174, 0.795450, 0.435743,
		0.600429, -0.604617, 0.523376,
		43.038162, 39.648403, 27.509165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392979, 40.344933, 27.291969>,  <42.617859, 40.071636, 27.142801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392979, 40.344933, 27.291969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358978, 39.947041, 27.269026>,  <43.338577, 39.708305, 27.255260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358978, 39.947041, 27.269026>,  <43.392979, 40.344933, 27.291969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358978, 39.947041, 27.269026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424470, 0.015931, -0.905302,
		0.901444, -0.101295, 0.420878,
		-0.084997, -0.994729, -0.057357,
		43.333481, 39.648621, 27.251818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945740, 40.227448, 26.975931>,  <43.392979, 40.344933, 27.291969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945740, 40.227448, 26.975931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773674, 39.868790, 26.934019>,  <43.670433, 39.653595, 26.908873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773674, 39.868790, 26.934019>,  <43.945740, 40.227448, 26.975931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773674, 39.868790, 26.934019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580017, -0.185573, -0.793186,
		0.691765, -0.401975, 0.599898,
		-0.430166, -0.896649, -0.104780,
		43.644623, 39.599796, 26.902586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499676, 39.765976, 26.738749>,  <43.945740, 40.227448, 26.975931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499676, 39.765976, 26.738749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149502, 39.599499, 26.640453>,  <43.939396, 39.499611, 26.581476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149502, 39.599499, 26.640453>,  <44.499676, 39.765976, 26.738749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149502, 39.599499, 26.640453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414968, -0.386552, -0.823638,
		0.247805, -0.823018, 0.511111,
		-0.875439, -0.416197, -0.245737,
		43.886871, 39.474640, 26.566732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562374, 38.952301, 26.668234>,  <44.499676, 39.765976, 26.738749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562374, 38.952301, 26.668234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242718, 39.056343, 26.451450>,  <44.050922, 39.118767, 26.321381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242718, 39.056343, 26.451450>,  <44.562374, 38.952301, 26.668234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242718, 39.056343, 26.451450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399898, -0.443111, -0.802330,
		-0.448867, -0.857894, 0.250073,
		-0.799124, 0.260136, -0.541968,
		44.002975, 39.134377, 26.288862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256123, 38.295094, 26.445753>,  <44.562374, 38.952301, 26.668234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256123, 38.295094, 26.445753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108704, 38.583267, 26.210756>,  <44.020252, 38.756172, 26.069759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108704, 38.583267, 26.210756>,  <44.256123, 38.295094, 26.445753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108704, 38.583267, 26.210756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053928, -0.614342, -0.787195,
		-0.928045, -0.321797, 0.187560,
		-0.368543, 0.720438, -0.587491,
		43.998142, 38.799400, 26.034510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750950, 38.070698, 25.922756>,  <44.256123, 38.295094, 26.445753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750950, 38.070698, 25.922756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836502, 38.421768, 25.751204>,  <43.887833, 38.632412, 25.648272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836502, 38.421768, 25.751204>,  <43.750950, 38.070698, 25.922756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836502, 38.421768, 25.751204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030542, -0.444836, -0.895091,
		-0.976382, 0.178343, -0.121948,
		0.213880, 0.877676, -0.428883,
		43.900665, 38.685070, 25.622540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367050, 38.138866, 25.280933>,  <43.750950, 38.070698, 25.922756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367050, 38.138866, 25.280933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673763, 38.391712, 25.236263>,  <43.857792, 38.543419, 25.209461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673763, 38.391712, 25.236263>,  <43.367050, 38.138866, 25.280933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673763, 38.391712, 25.236263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222197, -0.424598, -0.877693,
		-0.602218, 0.648190, -0.466030,
		0.766787, 0.632113, -0.111674,
		43.903801, 38.581345, 25.202761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431313, 38.227463, 24.581644>,  <43.367050, 38.138866, 25.280933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431313, 38.227463, 24.581644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779099, 38.354897, 24.732662>,  <43.987770, 38.431358, 24.823273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779099, 38.354897, 24.732662>,  <43.431313, 38.227463, 24.581644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779099, 38.354897, 24.732662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477322, -0.344865, -0.808228,
		-0.127290, 0.882932, -0.451916,
		0.869460, 0.318588, 0.377545,
		44.039936, 38.450474, 24.845926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769337, 38.678856, 24.049555>,  <43.431313, 38.227463, 24.581644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769337, 38.678856, 24.049555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028023, 38.510616, 24.304068>,  <44.183235, 38.409672, 24.456776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028023, 38.510616, 24.304068>,  <43.769337, 38.678856, 24.049555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028023, 38.510616, 24.304068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411831, -0.509604, -0.755446,
		0.641990, 0.750601, -0.156355,
		0.646718, -0.420596, 0.636282,
		44.222038, 38.384438, 24.494953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340450, 38.662422, 23.657644>,  <43.769337, 38.678856, 24.049555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340450, 38.662422, 23.657644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438583, 38.424980, 23.964224>,  <44.497463, 38.282513, 24.148172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438583, 38.424980, 23.964224>,  <44.340450, 38.662422, 23.657644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438583, 38.424980, 23.964224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410624, -0.652557, -0.636834,
		0.878180, 0.470957, 0.083657,
		0.245330, -0.593607, 0.766449,
		44.512184, 38.246899, 24.194159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037956, 38.492252, 23.623411>,  <44.340450, 38.662422, 23.657644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037956, 38.492252, 23.623411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892349, 38.199326, 23.853611>,  <44.804985, 38.023567, 23.991732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892349, 38.199326, 23.853611>,  <45.037956, 38.492252, 23.623411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892349, 38.199326, 23.853611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507936, -0.674007, -0.536392,
		0.780701, 0.097063, 0.617320,
		-0.364014, -0.732321, 0.575499,
		44.783146, 37.979630, 24.026260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548626, 38.024471, 23.591053>,  <45.037956, 38.492252, 23.623411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548626, 38.024471, 23.591053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251556, 37.807949, 23.748753>,  <45.073315, 37.678036, 23.843372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251556, 37.807949, 23.748753>,  <45.548626, 38.024471, 23.591053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251556, 37.807949, 23.748753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355699, -0.817683, -0.452628,
		0.567379, -0.195920, 0.799810,
		-0.742670, -0.541304, 0.394248,
		45.028755, 37.645557, 23.867027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835415, 37.384537, 23.760590>,  <45.548626, 38.024471, 23.591053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835415, 37.384537, 23.760590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444626, 37.299374, 23.766232>,  <45.210152, 37.248276, 23.769617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444626, 37.299374, 23.766232>,  <45.835415, 37.384537, 23.760590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444626, 37.299374, 23.766232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188214, -0.891015, -0.413120,
		0.100523, -0.400951, 0.910568,
		-0.976970, -0.212910, 0.014103,
		45.151535, 37.235500, 23.770462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716213, 36.695850, 24.103960>,  <45.835415, 37.384537, 23.760590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716213, 36.695850, 24.103960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407997, 36.774036, 23.861286>,  <45.223068, 36.820950, 23.715681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407997, 36.774036, 23.861286>,  <45.716213, 36.695850, 24.103960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407997, 36.774036, 23.861286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199219, -0.830278, -0.520529,
		-0.605462, -0.521950, 0.600819,
		-0.770537, 0.195466, -0.606684,
		45.176838, 36.832676, 23.679281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469131, 36.054855, 23.973438>,  <45.716213, 36.695850, 24.103960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469131, 36.054855, 23.973438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328945, 36.276009, 23.671049>,  <45.244835, 36.408699, 23.489614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328945, 36.276009, 23.671049>,  <45.469131, 36.054855, 23.973438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328945, 36.276009, 23.671049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073488, -0.788446, -0.610698,
		-0.933688, -0.269584, 0.235693,
		-0.350466, 0.552881, -0.755974,
		45.223804, 36.441872, 23.444258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108101, 35.830322, 24.557775>,  <45.469131, 36.054855, 23.973438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108101, 35.830322, 24.557775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496132, 35.747208, 24.608006>,  <46.728951, 35.697338, 24.638144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496132, 35.747208, 24.608006>,  <46.108101, 35.830322, 24.557775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496132, 35.747208, 24.608006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115350, 0.060657, 0.991471,
		-0.213634, -0.976291, 0.034874,
		0.970080, -0.207789, 0.125573,
		46.787155, 35.684872, 24.645678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082680, 35.429623, 25.133665>,  <46.108101, 35.830322, 24.557775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082680, 35.429623, 25.133665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459793, 35.560993, 25.110704>,  <46.686062, 35.639816, 25.096928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459793, 35.560993, 25.110704>,  <46.082680, 35.429623, 25.133665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459793, 35.560993, 25.110704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023820, 0.105384, 0.994146,
		0.332554, -0.938632, 0.091531,
		0.942783, 0.328428, -0.057404,
		46.742630, 35.659523, 25.093483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473560, 35.025169, 25.693974>,  <46.082680, 35.429623, 25.133665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473560, 35.025169, 25.693974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672981, 35.357735, 25.595831>,  <46.792633, 35.557274, 25.536945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672981, 35.357735, 25.595831>,  <46.473560, 35.025169, 25.693974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672981, 35.357735, 25.595831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044558, 0.258086, 0.965094,
		0.865715, -0.492080, 0.091622,
		0.498550, 0.831414, -0.245355,
		46.822548, 35.607159, 25.522224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935909, 35.085476, 26.233095>,  <46.473560, 35.025169, 25.693974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935909, 35.085476, 26.233095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959614, 35.442116, 26.053520>,  <46.973839, 35.656097, 25.945776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959614, 35.442116, 26.053520>,  <46.935909, 35.085476, 26.233095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959614, 35.442116, 26.053520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029042, 0.447995, 0.893564,
		0.997820, -0.065994, 0.000657,
		0.059264, 0.891597, -0.448935,
		46.977394, 35.709595, 25.918840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615707, 35.397964, 26.423735>,  <46.935909, 35.085476, 26.233095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615707, 35.397964, 26.423735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354069, 35.678375, 26.310085>,  <47.197086, 35.846622, 26.241896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354069, 35.678375, 26.310085>,  <47.615707, 35.397964, 26.423735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354069, 35.678375, 26.310085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169789, 0.502107, 0.847974,
		0.737111, 0.506413, -0.447451,
		-0.654094, 0.701024, -0.284125,
		47.157841, 35.888683, 26.224848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.918102, 36.133305, 26.386040>,  <47.615707, 35.397964, 26.423735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.918102, 36.133305, 26.386040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523540, 36.189899, 26.419464>,  <47.286804, 36.223858, 26.439518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523540, 36.189899, 26.419464>,  <47.918102, 36.133305, 26.386040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523540, 36.189899, 26.419464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142813, 0.486648, 0.861846,
		0.081279, 0.862064, -0.500239,
		-0.986407, 0.141491, 0.083560,
		47.227619, 36.232346, 26.444532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853962, 36.740917, 26.651035>,  <47.918102, 36.133305, 26.386040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853962, 36.740917, 26.651035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487400, 36.607525, 26.739574>,  <47.267464, 36.527489, 26.792698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487400, 36.607525, 26.739574>,  <47.853962, 36.740917, 26.651035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487400, 36.607525, 26.739574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024718, 0.504806, 0.862879,
		-0.399488, 0.796218, -0.454364,
		-0.916405, -0.333479, 0.221345,
		47.212479, 36.507481, 26.805979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423206, 37.347679, 26.942186>,  <47.853962, 36.740917, 26.651035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423206, 37.347679, 26.942186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.197273, 37.033737, 27.044142>,  <47.061714, 36.845371, 27.105314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.197273, 37.033737, 27.044142>,  <47.423206, 37.347679, 26.942186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.197273, 37.033737, 27.044142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311113, 0.488621, 0.815143,
		-0.764313, 0.381120, -0.520167,
		-0.564832, -0.784855, 0.254888,
		47.027824, 36.798279, 27.120607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819496, 37.601307, 27.092386>,  <47.423206, 37.347679, 26.942186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819496, 37.601307, 27.092386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805637, 37.238758, 27.260811>,  <46.797321, 37.021229, 27.361866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805637, 37.238758, 27.260811>,  <46.819496, 37.601307, 27.092386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805637, 37.238758, 27.260811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248402, 0.415904, 0.874826,
		-0.968037, -0.074278, -0.239556,
		-0.034652, -0.906370, 0.421062,
		46.795242, 36.966846, 27.387129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175812, 37.605434, 27.410196>,  <46.819496, 37.601307, 27.092386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175812, 37.605434, 27.410196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416550, 37.332878, 27.576803>,  <46.560993, 37.169342, 27.676767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416550, 37.332878, 27.576803>,  <46.175812, 37.605434, 27.410196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416550, 37.332878, 27.576803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324640, 0.267774, 0.907141,
		-0.729653, -0.681176, -0.060050,
		0.601843, -0.681393, 0.416519,
		46.597103, 37.128460, 27.701759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768669, 37.098751, 27.760275>,  <46.175812, 37.605434, 27.410196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768669, 37.098751, 27.760275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115135, 37.079327, 27.959234>,  <46.323013, 37.067673, 28.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115135, 37.079327, 27.959234>,  <45.768669, 37.098751, 27.760275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115135, 37.079327, 27.959234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459578, 0.313627, 0.830919,
		-0.196347, -0.948304, 0.249335,
		0.866162, -0.048559, 0.497399,
		46.374985, 37.064758, 28.108454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702557, 36.680000, 28.463203>,  <45.768669, 37.098751, 27.760275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702557, 36.680000, 28.463203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014568, 36.927116, 28.502981>,  <46.201775, 37.075386, 28.526848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014568, 36.927116, 28.502981>,  <45.702557, 36.680000, 28.463203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014568, 36.927116, 28.502981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320442, 0.257875, 0.911492,
		0.537463, -0.742859, 0.399116,
		0.780032, 0.617787, 0.099445,
		46.248577, 37.112453, 28.532814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039715, 36.480843, 29.090696>,  <45.702557, 36.680000, 28.463203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039715, 36.480843, 29.090696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141808, 36.861225, 29.020792>,  <46.203064, 37.089455, 28.978849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141808, 36.861225, 29.020792>,  <46.039715, 36.480843, 29.090696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141808, 36.861225, 29.020792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266391, 0.242914, 0.932753,
		0.929459, -0.191511, 0.315325,
		0.255229, 0.950956, -0.174762,
		46.218376, 37.146511, 28.968363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280815, 36.688381, 29.787033>,  <46.039715, 36.480843, 29.090696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280815, 36.688381, 29.787033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197720, 37.017887, 29.576035>,  <46.147861, 37.215591, 29.449436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197720, 37.017887, 29.576035>,  <46.280815, 36.688381, 29.787033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197720, 37.017887, 29.576035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467917, 0.389873, 0.793128,
		0.859009, 0.411591, 0.304461,
		-0.207744, 0.823767, -0.527495,
		46.135395, 37.265018, 29.417786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432201, 37.225334, 30.231108>,  <46.280815, 36.688381, 29.787033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432201, 37.225334, 30.231108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177170, 37.366352, 29.957113>,  <46.024151, 37.450962, 29.792717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177170, 37.366352, 29.957113>,  <46.432201, 37.225334, 30.231108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177170, 37.366352, 29.957113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634536, 0.263902, 0.726443,
		0.436873, 0.897813, 0.055445,
		-0.637578, 0.352545, -0.684986,
		45.985897, 37.472115, 29.751617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289051, 37.905502, 30.416624>,  <46.432201, 37.225334, 30.231108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289051, 37.905502, 30.416624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980499, 37.775192, 30.197960>,  <45.795368, 37.697006, 30.066761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980499, 37.775192, 30.197960>,  <46.289051, 37.905502, 30.416624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980499, 37.775192, 30.197960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635913, 0.427165, 0.642763,
		0.024116, 0.843445, -0.536674,
		-0.771384, -0.325777, -0.546659,
		45.749084, 37.677460, 30.033962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882782, 38.514175, 30.490122>,  <46.289051, 37.905502, 30.416624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882782, 38.514175, 30.490122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667027, 38.197723, 30.374763>,  <45.537575, 38.007851, 30.305550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667027, 38.197723, 30.374763>,  <45.882782, 38.514175, 30.490122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667027, 38.197723, 30.374763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672880, 0.199042, 0.712471,
		-0.506257, 0.578352, -0.639698,
		-0.539385, -0.791133, -0.288395,
		45.505211, 37.960384, 30.288244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187599, 38.718586, 30.375727>,  <45.882782, 38.514175, 30.490122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187599, 38.718586, 30.375727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129066, 38.330936, 30.455120>,  <45.093948, 38.098347, 30.502756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129066, 38.330936, 30.455120>,  <45.187599, 38.718586, 30.375727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129066, 38.330936, 30.455120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725148, 0.241558, 0.644834,
		-0.672866, -0.049574, -0.738101,
		-0.146327, -0.969119, 0.198485,
		45.085167, 38.040199, 30.514666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469254, 38.675266, 30.359276>,  <45.187599, 38.718586, 30.375727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469254, 38.675266, 30.359276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585110, 38.342754, 30.549046>,  <44.654625, 38.143246, 30.662909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585110, 38.342754, 30.549046>,  <44.469254, 38.675266, 30.359276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585110, 38.342754, 30.549046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821091, 0.038914, 0.569470,
		-0.491851, -0.554489, -0.671286,
		0.289643, -0.831281, 0.474425,
		44.672001, 38.093369, 30.691374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911751, 38.324421, 30.281448>,  <44.469254, 38.675266, 30.359276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911751, 38.324421, 30.281448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105431, 38.131123, 30.573208>,  <44.221638, 38.015144, 30.748264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105431, 38.131123, 30.573208>,  <43.911751, 38.324421, 30.281448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105431, 38.131123, 30.573208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869799, -0.175471, 0.461149,
		-0.094857, -0.857722, -0.505287,
		0.484201, -0.483241, 0.729402,
		44.250690, 37.986149, 30.792028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520092, 37.641399, 30.429556>,  <43.911751, 38.324421, 30.281448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520092, 37.641399, 30.429556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732349, 37.728947, 30.757097>,  <43.859703, 37.781475, 30.953621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732349, 37.728947, 30.757097>,  <43.520092, 37.641399, 30.429556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732349, 37.728947, 30.757097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795904, -0.203556, 0.570177,
		0.291476, -0.954286, 0.066183,
		0.530640, 0.218868, 0.818851,
		43.891541, 37.794609, 31.002752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204712, 37.227268, 30.876045>,  <43.520092, 37.641399, 30.429556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204712, 37.227268, 30.876045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391586, 37.499996, 31.101208>,  <43.503712, 37.663631, 31.236305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391586, 37.499996, 31.101208>,  <43.204712, 37.227268, 30.876045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391586, 37.499996, 31.101208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748145, -0.034439, 0.662641,
		0.471186, -0.730711, 0.494008,
		0.467186, 0.681817, 0.562905,
		43.531742, 37.704540, 31.270079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348110, 36.941925, 31.542919>,  <43.204712, 37.227268, 30.876045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348110, 36.941925, 31.542919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374226, 37.338913, 31.584358>,  <43.389896, 37.577106, 31.609221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374226, 37.338913, 31.584358>,  <43.348110, 36.941925, 31.542919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374226, 37.338913, 31.584358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615765, -0.041621, 0.786830,
		0.785220, -0.115164, 0.608414,
		0.065291, 0.992474, 0.103596,
		43.393814, 37.636654, 31.615437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218517, 37.026127, 32.295570>,  <43.348110, 36.941925, 31.542919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218517, 37.026127, 32.295570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172672, 37.391586, 32.139568>,  <43.145164, 37.610863, 32.045967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172672, 37.391586, 32.139568>,  <43.218517, 37.026127, 32.295570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172672, 37.391586, 32.139568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804254, 0.145112, 0.576297,
		0.583129, 0.379717, 0.718175,
		-0.114613, 0.913651, -0.390008,
		43.138287, 37.665680, 32.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189442, 37.611370, 32.893360>,  <43.218517, 37.026127, 32.295570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189442, 37.611370, 32.893360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011951, 37.785583, 32.580078>,  <42.905457, 37.890110, 32.392109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011951, 37.785583, 32.580078>,  <43.189442, 37.611370, 32.893360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011951, 37.785583, 32.580078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738097, 0.318042, 0.595031,
		0.508250, 0.842116, 0.180343,
		-0.443728, 0.435535, -0.783208,
		42.878834, 37.916245, 32.345116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922653, 38.078358, 33.238724>,  <43.189442, 37.611370, 32.893360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922653, 38.078358, 33.238724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730755, 38.088154, 32.887897>,  <42.615616, 38.094032, 32.677402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730755, 38.088154, 32.887897>,  <42.922653, 38.078358, 33.238724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730755, 38.088154, 32.887897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751146, 0.505147, 0.424977,
		0.453452, 0.862686, -0.223952,
		-0.479750, 0.024486, -0.877063,
		42.586830, 38.095501, 32.624779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691383, 38.727814, 33.084648>,  <42.922653, 38.078358, 33.238724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691383, 38.727814, 33.084648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455246, 38.488010, 32.868473>,  <42.313564, 38.344128, 32.738766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455246, 38.488010, 32.868473>,  <42.691383, 38.727814, 33.084648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455246, 38.488010, 32.868473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806926, 0.454167, 0.377626,
		0.019059, 0.659027, -0.751878,
		-0.590344, -0.599513, -0.540442,
		42.278141, 38.308155, 32.706341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090984, 39.127243, 32.964825>,  <42.691383, 38.727814, 33.084648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090984, 39.127243, 32.964825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002079, 38.741638, 32.906475>,  <41.948734, 38.510277, 32.871464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002079, 38.741638, 32.906475>,  <42.090984, 39.127243, 32.964825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002079, 38.741638, 32.906475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883843, 0.136053, 0.447562,
		-0.411609, 0.228407, -0.882275,
		-0.222263, -0.964012, -0.145875,
		41.935402, 38.452435, 32.862713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354286, 39.082619, 32.739342>,  <42.090984, 39.127243, 32.964825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354286, 39.082619, 32.739342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402409, 38.704308, 32.860027>,  <41.431282, 38.477322, 32.932438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402409, 38.704308, 32.860027>,  <41.354286, 39.082619, 32.739342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402409, 38.704308, 32.860027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811095, 0.081595, 0.579195,
		-0.572408, -0.314400, -0.757299,
		0.120307, -0.945777, 0.301714,
		41.438499, 38.420574, 32.950542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638519, 38.689991, 32.821934>,  <41.354286, 39.082619, 32.739342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638519, 38.689991, 32.821934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872353, 38.464317, 33.055157>,  <41.012653, 38.328911, 33.195091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872353, 38.464317, 33.055157>,  <40.638519, 38.689991, 32.821934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872353, 38.464317, 33.055157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716994, -0.022899, 0.696703,
		-0.379721, -0.825328, -0.417907,
		0.584578, -0.564189, 0.583059,
		41.047726, 38.295059, 33.230076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302685, 38.179901, 33.043587>,  <40.638519, 38.689991, 32.821934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302685, 38.179901, 33.043587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590618, 38.166363, 33.320915>,  <40.763378, 38.158237, 33.487312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590618, 38.166363, 33.320915>,  <40.302685, 38.179901, 33.043587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590618, 38.166363, 33.320915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664058, -0.324455, 0.673614,
		0.202149, -0.945295, -0.256031,
		0.719835, -0.033849, 0.693319,
		40.806568, 38.156208, 33.528912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263020, 37.550503, 33.364651>,  <40.302685, 38.179901, 33.043587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263020, 37.550503, 33.364651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490505, 37.738148, 33.634911>,  <40.626995, 37.850735, 33.797066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490505, 37.738148, 33.634911>,  <40.263020, 37.550503, 33.364651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490505, 37.738148, 33.634911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626012, -0.285966, 0.725488,
		0.533550, -0.835556, 0.131040,
		0.568712, 0.469116, 0.675645,
		40.661118, 37.878883, 33.837605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393307, 37.031246, 33.931076>,  <40.263020, 37.550503, 33.364651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393307, 37.031246, 33.931076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419655, 37.406788, 34.066254>,  <40.435463, 37.632114, 34.147362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419655, 37.406788, 34.066254>,  <40.393307, 37.031246, 33.931076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419655, 37.406788, 34.066254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603392, -0.232267, 0.762870,
		0.794720, -0.254160, 0.551201,
		0.065866, 0.938858, 0.337945,
		40.439415, 37.688446, 34.167637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504875, 36.949829, 34.584152>,  <40.393307, 37.031246, 33.931076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504875, 36.949829, 34.584152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381878, 37.330379, 34.576878>,  <40.308079, 37.558708, 34.572514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381878, 37.330379, 34.576878>,  <40.504875, 36.949829, 34.584152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381878, 37.330379, 34.576878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601827, -0.179642, 0.778160,
		0.737056, 0.250224, 0.627803,
		-0.307493, 0.951376, -0.018185,
		40.289631, 37.615791, 34.571423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653416, 37.197544, 35.246983>,  <40.504875, 36.949829, 34.584152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653416, 37.197544, 35.246983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395214, 37.480701, 35.132286>,  <40.240295, 37.650597, 35.063469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395214, 37.480701, 35.132286>,  <40.653416, 37.197544, 35.246983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395214, 37.480701, 35.132286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496232, -0.103328, 0.862019,
		0.580589, 0.698721, 0.417978,
		-0.645499, 0.707893, -0.286737,
		40.201565, 37.693069, 35.046265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606827, 37.610657, 35.782974>,  <40.653416, 37.197544, 35.246983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606827, 37.610657, 35.782974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277416, 37.685143, 35.568638>,  <40.079769, 37.729836, 35.440037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277416, 37.685143, 35.568638>,  <40.606827, 37.610657, 35.782974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277416, 37.685143, 35.568638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559410, -0.109785, 0.821589,
		0.094166, 0.976355, 0.194583,
		-0.823525, 0.186217, -0.535845,
		40.030357, 37.741009, 35.407883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456612, 38.045734, 36.220673>,  <40.606827, 37.610657, 35.782974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456612, 38.045734, 36.220673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127361, 37.985474, 36.001671>,  <39.929810, 37.949318, 35.870270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127361, 37.985474, 36.001671>,  <40.456612, 38.045734, 36.220673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127361, 37.985474, 36.001671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540433, -0.088174, 0.836755,
		-0.174334, 0.984647, -0.008839,
		-0.823128, -0.150652, -0.547507,
		39.880424, 37.940277, 35.837418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903042, 38.489002, 36.459408>,  <40.456612, 38.045734, 36.220673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903042, 38.489002, 36.459408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729496, 38.165581, 36.300407>,  <39.625370, 37.971527, 36.205006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729496, 38.165581, 36.300407>,  <39.903042, 38.489002, 36.459408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729496, 38.165581, 36.300407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571046, -0.094477, 0.815463,
		-0.696899, 0.580791, -0.420730,
		-0.433864, -0.808551, -0.397500,
		39.599339, 37.923016, 36.181156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267429, 38.537613, 36.689930>,  <39.903042, 38.489002, 36.459408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267429, 38.537613, 36.689930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265202, 38.150906, 36.587688>,  <39.263863, 37.918880, 36.526344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265202, 38.150906, 36.587688>,  <39.267429, 38.537613, 36.689930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265202, 38.150906, 36.587688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500614, -0.218577, 0.837621,
		-0.865653, 0.132627, -0.482758,
		-0.005571, -0.966765, -0.255607,
		39.263531, 37.860878, 36.511005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501652, 38.266541, 36.760696>,  <39.267429, 38.537613, 36.689930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501652, 38.266541, 36.760696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745914, 37.949799, 36.757366>,  <38.892471, 37.759754, 36.755367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745914, 37.949799, 36.757366>,  <38.501652, 38.266541, 36.760696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745914, 37.949799, 36.757366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493202, -0.388530, 0.778329,
		-0.619556, -0.471185, -0.627802,
		0.610657, -0.791852, -0.008327,
		38.929111, 37.712242, 36.754868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055668, 37.689327, 36.758583>,  <38.501652, 38.266541, 36.760696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055668, 37.689327, 36.758583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406662, 37.553703, 36.894268>,  <38.617256, 37.472328, 36.975677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406662, 37.553703, 36.894268>,  <38.055668, 37.689327, 36.758583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406662, 37.553703, 36.894268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447206, -0.322879, 0.834119,
		-0.173288, -0.883624, -0.434949,
		0.877484, -0.339054, 0.339211,
		38.669907, 37.451988, 36.996033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890114, 37.079021, 37.070549>,  <38.055668, 37.689327, 36.758583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890114, 37.079021, 37.070549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260040, 37.136566, 37.211418>,  <38.481995, 37.171093, 37.295940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260040, 37.136566, 37.211418>,  <37.890114, 37.079021, 37.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260040, 37.136566, 37.211418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281454, -0.364073, 0.887826,
		0.255941, -0.920193, -0.296209,
		0.924813, 0.143862, 0.352173,
		38.537483, 37.179726, 37.317070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218731, 36.426014, 37.428555>,  <37.890114, 37.079021, 37.070549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218731, 36.426014, 37.428555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418186, 36.720371, 37.611778>,  <38.537857, 36.896988, 37.721714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418186, 36.720371, 37.611778>,  <38.218731, 36.426014, 37.428555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418186, 36.720371, 37.611778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298435, -0.350388, 0.887787,
		0.813818, -0.579383, 0.044901,
		0.498635, 0.735897, 0.458060,
		38.567776, 36.941139, 37.749195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613743, 35.976295, 37.990898>,  <38.218731, 36.426014, 37.428555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613743, 35.976295, 37.990898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557129, 36.365753, 38.062424>,  <38.523159, 36.599430, 38.105339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557129, 36.365753, 38.062424>,  <38.613743, 35.976295, 37.990898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557129, 36.365753, 38.062424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397944, -0.221359, 0.890304,
		0.906426, 0.054851, 0.418788,
		-0.141537, 0.973649, 0.178818,
		38.514668, 36.657848, 38.116070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664261, 36.157131, 38.665733>,  <38.613743, 35.976295, 37.990898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664261, 36.157131, 38.665733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538944, 36.528702, 38.586803>,  <38.463753, 36.751644, 38.539448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538944, 36.528702, 38.586803>,  <38.664261, 36.157131, 38.665733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538944, 36.528702, 38.586803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332471, 0.087342, 0.939060,
		0.889555, 0.359807, 0.281478,
		-0.313296, 0.928930, -0.197321,
		38.444954, 36.807381, 38.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909096, 36.641781, 39.216187>,  <38.664261, 36.157131, 38.665733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909096, 36.641781, 39.216187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592064, 36.836792, 39.069691>,  <38.401844, 36.953800, 38.981792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592064, 36.836792, 39.069691>,  <38.909096, 36.641781, 39.216187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592064, 36.836792, 39.069691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508520, -0.197043, 0.838201,
		0.336486, 0.850580, 0.404092,
		-0.792581, 0.487532, -0.366235,
		38.354290, 36.983051, 38.959820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739811, 37.075207, 39.723553>,  <38.909096, 36.641781, 39.216187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739811, 37.075207, 39.723553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418503, 36.990456, 39.500893>,  <38.225716, 36.939606, 39.367298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418503, 36.990456, 39.500893>,  <38.739811, 37.075207, 39.723553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418503, 36.990456, 39.500893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525797, -0.186782, 0.829849,
		-0.279798, 0.959281, 0.038633,
		-0.803275, -0.211877, -0.556648,
		38.177521, 36.926891, 39.333897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225975, 37.439583, 40.030994>,  <38.739811, 37.075207, 39.723553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225975, 37.439583, 40.030994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034992, 37.144810, 39.839592>,  <37.920403, 36.967945, 39.724751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034992, 37.144810, 39.839592>,  <38.225975, 37.439583, 40.030994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034992, 37.144810, 39.839592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460530, -0.253906, 0.850555,
		-0.748298, 0.626467, -0.218152,
		-0.477454, -0.736934, -0.478504,
		37.891754, 36.923729, 39.696041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502945, 37.369816, 40.263611>,  <38.225975, 37.439583, 40.030994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502945, 37.369816, 40.263611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606777, 37.012554, 40.116699>,  <37.669075, 36.798199, 40.028553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606777, 37.012554, 40.116699>,  <37.502945, 37.369816, 40.263611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606777, 37.012554, 40.116699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318517, -0.438217, 0.840543,
		-0.911683, -0.101202, -0.398236,
		0.259579, -0.893154, -0.367280,
		37.684650, 36.744610, 40.006516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937553, 36.960316, 40.302773>,  <37.502945, 37.369816, 40.263611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937553, 36.960316, 40.302773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256889, 36.719463, 40.306595>,  <37.448490, 36.574951, 40.308887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256889, 36.719463, 40.306595>,  <36.937553, 36.960316, 40.302773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256889, 36.719463, 40.306595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368688, -0.476157, 0.798338,
		-0.476157, -0.640866, -0.602134,
		-0.798338, 0.602134, -0.009554,
		37.496391, 36.538822, 40.309460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780888, 36.188278, 40.293858>,  <36.937553, 36.960316, 40.302773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780888, 36.188278, 40.293858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137436, 36.250992, 40.463978>,  <37.351364, 36.288620, 40.566051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137436, 36.250992, 40.463978>,  <36.780888, 36.188278, 40.293858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137436, 36.250992, 40.463978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311326, -0.470201, 0.825825,
		0.329453, -0.868522, -0.370312,
		0.891368, 0.156783, 0.425302,
		37.404846, 36.298027, 40.591568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988007, 35.543968, 40.647228>,  <36.780888, 36.188278, 40.293858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988007, 35.543968, 40.647228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144447, 35.874268, 40.809792>,  <37.238312, 36.072449, 40.907330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144447, 35.874268, 40.809792>,  <36.988007, 35.543968, 40.647228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144447, 35.874268, 40.809792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164063, -0.371960, 0.913635,
		0.905606, -0.424002, -0.009999,
		0.391103, 0.825753, 0.406412,
		37.261780, 36.121994, 40.931717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178318, 35.292019, 41.298866>,  <36.988007, 35.543968, 40.647228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178318, 35.292019, 41.298866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228344, 35.687828, 41.327698>,  <37.258358, 35.925316, 41.344997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228344, 35.687828, 41.327698>,  <37.178318, 35.292019, 41.298866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228344, 35.687828, 41.327698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257886, -0.037726, 0.965438,
		0.958047, -0.139328, 0.250467,
		0.125064, 0.989527, 0.072074,
		37.265862, 35.984688, 41.349319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683804, 35.453053, 41.881226>,  <37.178318, 35.292019, 41.298866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683804, 35.453053, 41.881226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490871, 35.794144, 41.801018>,  <37.375111, 35.998798, 41.752892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490871, 35.794144, 41.801018>,  <37.683804, 35.453053, 41.881226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490871, 35.794144, 41.801018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317967, 0.042865, 0.947132,
		0.816242, 0.520592, 0.250464,
		-0.482334, 0.852729, -0.200520,
		37.346172, 36.049961, 41.740864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837265, 35.866322, 42.347733>,  <37.683804, 35.453053, 41.881226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837265, 35.866322, 42.347733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499809, 36.040962, 42.222736>,  <37.297337, 36.145744, 42.147739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499809, 36.040962, 42.222736>,  <37.837265, 35.866322, 42.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499809, 36.040962, 42.222736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261200, 0.174758, 0.949334,
		0.469087, 0.882520, -0.033395,
		-0.843642, 0.436597, -0.312491,
		37.246716, 36.171940, 42.128990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693893, 36.424274, 42.864033>,  <37.837265, 35.866322, 42.347733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693893, 36.424274, 42.864033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354828, 36.380264, 42.656433>,  <37.151390, 36.353859, 42.531872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354828, 36.380264, 42.656433>,  <37.693893, 36.424274, 42.864033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354828, 36.380264, 42.656433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530412, 0.154436, 0.833555,
		-0.011561, 0.981857, -0.189270,
		-0.847662, -0.110028, -0.519003,
		37.100529, 36.347256, 42.500732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369328, 37.109165, 42.844460>,  <37.693893, 36.424274, 42.864033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369328, 37.109165, 42.844460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097809, 36.819229, 42.797398>,  <36.934898, 36.645267, 42.769161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097809, 36.819229, 42.797398>,  <37.369328, 37.109165, 42.844460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097809, 36.819229, 42.797398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442780, 0.276198, 0.853030,
		-0.585812, 0.631132, -0.508426,
		-0.678800, -0.724836, -0.117653,
		36.894169, 36.601780, 42.762100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786415, 37.412399, 43.136070>,  <37.369328, 37.109165, 42.844460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786415, 37.412399, 43.136070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717831, 37.018333, 43.138935>,  <36.676682, 36.781895, 43.140656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717831, 37.018333, 43.138935>,  <36.786415, 37.412399, 43.136070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717831, 37.018333, 43.138935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304686, 0.059941, 0.950565,
		-0.936892, 0.160802, -0.310444,
		-0.171461, -0.985165, 0.007164,
		36.666393, 36.722782, 43.141083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200848, 37.412949, 43.556858>,  <36.786415, 37.412399, 43.136070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200848, 37.412949, 43.556858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342987, 37.039867, 43.532207>,  <36.428268, 36.816017, 43.517418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342987, 37.039867, 43.532207>,  <36.200848, 37.412949, 43.556858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342987, 37.039867, 43.532207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182132, -0.133755, 0.974134,
		-0.916819, -0.334929, -0.217404,
		0.355345, -0.932701, -0.061628,
		36.449589, 36.760056, 43.513718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769920, 37.045033, 43.940018>,  <36.200848, 37.412949, 43.556858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769920, 37.045033, 43.940018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116798, 36.845978, 43.932755>,  <36.324924, 36.726547, 43.928398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116798, 36.845978, 43.932755>,  <35.769920, 37.045033, 43.940018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116798, 36.845978, 43.932755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057737, -0.136694, 0.988929,
		-0.494608, -0.856548, -0.147272,
		0.867196, -0.497635, -0.018156,
		36.376957, 36.696686, 43.927307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681484, 36.399639, 44.288559>,  <35.769920, 37.045033, 43.940018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681484, 36.399639, 44.288559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051453, 36.545532, 44.331448>,  <36.273434, 36.633068, 44.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051453, 36.545532, 44.331448>,  <35.681484, 36.399639, 44.288559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051453, 36.545532, 44.331448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120756, 0.014427, 0.992577,
		0.360480, -0.931000, 0.057387,
		0.924918, 0.364735, 0.107223,
		36.328926, 36.654953, 44.363613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987686, 36.125843, 44.839909>,  <35.681484, 36.399639, 44.288559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987686, 36.125843, 44.839909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222145, 36.448669, 44.811394>,  <36.362820, 36.642365, 44.794285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222145, 36.448669, 44.811394>,  <35.987686, 36.125843, 44.839909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222145, 36.448669, 44.811394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110141, 0.166542, 0.979863,
		0.802685, -0.566490, 0.186509,
		0.586144, 0.807064, -0.071287,
		36.397987, 36.690788, 44.790009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566593, 36.108047, 45.253014>,  <35.987686, 36.125843, 44.839909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566593, 36.108047, 45.253014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446564, 36.488583, 45.224995>,  <36.374546, 36.716904, 45.208183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446564, 36.488583, 45.224995>,  <36.566593, 36.108047, 45.253014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446564, 36.488583, 45.224995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210808, 0.005483, 0.977512,
		0.930331, 0.308094, 0.198905,
		-0.300075, 0.951340, -0.070050,
		36.356541, 36.773983, 45.203979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166203, 36.489719, 45.103428>,  <36.566593, 36.108047, 45.253014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166203, 36.489719, 45.103428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977158, 36.234280, 44.860504>,  <36.863731, 36.081017, 44.714748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977158, 36.234280, 44.860504>,  <37.166203, 36.489719, 45.103428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977158, 36.234280, 44.860504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158577, 0.616261, -0.771412,
		0.866885, -0.460885, -0.189986,
		-0.472613, -0.638598, -0.607313,
		36.835373, 36.042702, 44.678310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237823, 36.524261, 44.354958>,  <37.166203, 36.489719, 45.103428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237823, 36.524261, 44.354958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885292, 36.336971, 44.329567>,  <36.673775, 36.224598, 44.314331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885292, 36.336971, 44.329567>,  <37.237823, 36.524261, 44.354958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885292, 36.336971, 44.329567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064389, 0.252098, -0.965557,
		0.468100, -0.846884, -0.252329,
		-0.881326, -0.468225, -0.063477,
		36.620895, 36.196503, 44.310524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386868, 36.016907, 43.939270>,  <37.237823, 36.524261, 44.354958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386868, 36.016907, 43.939270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001362, 36.123501, 43.934544>,  <36.770058, 36.187458, 43.931709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001362, 36.123501, 43.934544>,  <37.386868, 36.016907, 43.939270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001362, 36.123501, 43.934544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044074, 0.115388, -0.992342,
		-0.263084, -0.956906, -0.122953,
		-0.963766, 0.266488, -0.011817,
		36.712231, 36.203445, 43.931000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059826, 35.593002, 43.519531>,  <37.386868, 36.016907, 43.939270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059826, 35.593002, 43.519531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860523, 35.939800, 43.522617>,  <36.740940, 36.147881, 43.524467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860523, 35.939800, 43.522617>,  <37.059826, 35.593002, 43.519531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860523, 35.939800, 43.522617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020408, -0.002833, -0.999788,
		-0.866788, -0.498311, 0.019105,
		-0.498259, 0.866994, 0.007714,
		36.711044, 36.199898, 43.524933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444492, 35.459854, 43.166435>,  <37.059826, 35.593002, 43.519531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444492, 35.459854, 43.166435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509155, 35.854404, 43.154266>,  <36.547955, 36.091137, 43.146965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509155, 35.854404, 43.154266>,  <36.444492, 35.459854, 43.166435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509155, 35.854404, 43.154266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007469, -0.029599, -0.999534,
		-0.986818, 0.161810, 0.002583,
		0.161658, 0.986378, -0.030418,
		36.557652, 36.150318, 43.145142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095631, 35.585365, 42.601398>,  <36.444492, 35.459854, 43.166435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095631, 35.585365, 42.601398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285103, 35.934052, 42.651581>,  <36.398785, 36.143265, 42.681690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285103, 35.934052, 42.651581>,  <36.095631, 35.585365, 42.601398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285103, 35.934052, 42.651581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259264, -0.001883, -0.965805,
		-0.841672, 0.490005, -0.226897,
		0.473676, 0.871718, 0.125456,
		36.427204, 36.195568, 42.689217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933750, 35.992458, 42.045799>,  <36.095631, 35.585365, 42.601398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933750, 35.992458, 42.045799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258678, 36.170666, 42.196342>,  <36.453636, 36.277592, 42.286671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258678, 36.170666, 42.196342>,  <35.933750, 35.992458, 42.045799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258678, 36.170666, 42.196342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350302, 0.143226, -0.925621,
		-0.466285, 0.883742, -0.039720,
		0.812322, 0.445518, 0.376361,
		36.502377, 36.304321, 42.309250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145729, 36.717422, 41.660160>,  <35.933750, 35.992458, 42.045799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145729, 36.717422, 41.660160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475761, 36.568176, 41.829876>,  <36.673782, 36.478630, 41.931705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475761, 36.568176, 41.829876>,  <36.145729, 36.717422, 41.660160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475761, 36.568176, 41.829876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499661, 0.131270, -0.856217,
		0.263772, 0.918451, 0.294740,
		0.825084, -0.373116, 0.424289,
		36.723286, 36.456242, 41.957161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746296, 37.140690, 41.367149>,  <36.145729, 36.717422, 41.660160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746296, 37.140690, 41.367149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926746, 36.803322, 41.483849>,  <37.035019, 36.600899, 41.553867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926746, 36.803322, 41.483849>,  <36.746296, 37.140690, 41.367149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926746, 36.803322, 41.483849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639179, 0.077199, -0.765173,
		0.622842, 0.531674, 0.573925,
		0.451129, -0.843423, 0.291753,
		37.062084, 36.550293, 41.571373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543434, 37.222404, 41.408333>,  <36.746296, 37.140690, 41.367149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543434, 37.222404, 41.408333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467583, 36.831474, 41.370632>,  <37.422073, 36.596916, 41.348011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467583, 36.831474, 41.370632>,  <37.543434, 37.222404, 41.408333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467583, 36.831474, 41.370632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665249, -0.057288, -0.744420,
		0.722140, -0.203859, 0.661026,
		-0.189626, -0.977323, -0.094247,
		37.410694, 36.538277, 41.342358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157169, 36.904945, 41.287647>,  <37.543434, 37.222404, 41.408333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157169, 36.904945, 41.287647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879719, 36.656681, 41.141411>,  <37.713249, 36.507721, 41.053669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879719, 36.656681, 41.141411>,  <38.157169, 36.904945, 41.287647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879719, 36.656681, 41.141411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541004, -0.113767, -0.833290,
		0.475598, -0.775781, 0.414692,
		-0.693629, -0.620661, -0.365593,
		37.671631, 36.470482, 41.031734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604954, 36.417328, 41.039478>,  <38.157169, 36.904945, 41.287647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604954, 36.417328, 41.039478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245823, 36.353218, 40.875420>,  <38.030346, 36.314751, 40.776985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245823, 36.353218, 40.875420>,  <38.604954, 36.417328, 41.039478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245823, 36.353218, 40.875420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418221, -0.018798, -0.908151,
		0.137843, -0.986894, 0.083907,
		-0.897826, -0.160274, -0.410149,
		37.976475, 36.305138, 40.752377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669922, 35.963779, 40.511765>,  <38.604954, 36.417328, 41.039478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669922, 35.963779, 40.511765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316078, 36.133339, 40.434025>,  <38.103771, 36.235073, 40.387383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316078, 36.133339, 40.434025>,  <38.669922, 35.963779, 40.511765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316078, 36.133339, 40.434025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336279, 0.291136, -0.895632,
		-0.323075, -0.857642, -0.400091,
		-0.884613, 0.423899, -0.194349,
		38.050694, 36.260509, 40.375721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247990, 35.710823, 39.970852>,  <38.669922, 35.963779, 40.511765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247990, 35.710823, 39.970852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893593, 35.895046, 39.992374>,  <37.680954, 36.005581, 40.005287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893593, 35.895046, 39.992374>,  <38.247990, 35.710823, 39.970852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893593, 35.895046, 39.992374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274525, 0.614520, -0.739595,
		-0.373695, -0.640506, -0.670897,
		-0.885995, 0.460561, 0.053808,
		37.627792, 36.033215, 40.008518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786518, 35.798283, 39.324650>,  <38.247990, 35.710823, 39.970852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786518, 35.798283, 39.324650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623684, 36.103603, 39.525311>,  <37.525982, 36.286797, 39.645706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623684, 36.103603, 39.525311>,  <37.786518, 35.798283, 39.324650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623684, 36.103603, 39.525311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071894, 0.574292, -0.815487,
		-0.910556, -0.295908, -0.288663,
		-0.407086, 0.763300, 0.501651,
		37.501556, 36.332592, 39.675804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269917, 36.033489, 38.940411>,  <37.786518, 35.798283, 39.324650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269917, 36.033489, 38.940411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443336, 36.298515, 39.184719>,  <37.547390, 36.457531, 39.331306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443336, 36.298515, 39.184719>,  <37.269917, 36.033489, 38.940411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443336, 36.298515, 39.184719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315020, 0.523585, -0.791594,
		-0.844274, 0.535600, 0.018279,
		0.433548, 0.662564, 0.610774,
		37.573402, 36.497284, 39.367950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088497, 36.608547, 38.640366>,  <37.269917, 36.033489, 38.940411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088497, 36.608547, 38.640366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402977, 36.720440, 38.860783>,  <37.591663, 36.787575, 38.993031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402977, 36.720440, 38.860783>,  <37.088497, 36.608547, 38.640366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402977, 36.720440, 38.860783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404316, 0.441515, -0.800995,
		-0.467359, 0.852533, 0.234015,
		0.786196, 0.279736, 0.551039,
		37.638836, 36.804359, 39.026093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326164, 37.321865, 38.338142>,  <37.088497, 36.608547, 38.640366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326164, 37.321865, 38.338142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634346, 37.183384, 38.552261>,  <37.819256, 37.100296, 38.680733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634346, 37.183384, 38.552261>,  <37.326164, 37.321865, 38.338142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634346, 37.183384, 38.552261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625531, 0.248677, -0.739507,
		0.122901, 0.904602, 0.408154,
		0.770458, -0.346200, 0.535294,
		37.865482, 37.079525, 38.712849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781891, 37.834835, 38.182354>,  <37.326164, 37.321865, 38.338142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781891, 37.834835, 38.182354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998894, 37.527924, 38.319153>,  <38.129097, 37.343777, 38.401234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998894, 37.527924, 38.319153>,  <37.781891, 37.834835, 38.182354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998894, 37.527924, 38.319153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728309, 0.226722, -0.646655,
		0.418626, 0.599899, 0.681816,
		0.542510, -0.767280, 0.342000,
		38.161648, 37.297741, 38.421753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396664, 38.114101, 38.177868>,  <37.781891, 37.834835, 38.182354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396664, 38.114101, 38.177868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447628, 37.717823, 38.197010>,  <38.478207, 37.480057, 38.208496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447628, 37.717823, 38.197010>,  <38.396664, 38.114101, 38.177868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447628, 37.717823, 38.197010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727662, 0.060580, -0.683256,
		0.674000, 0.121873, 0.728609,
		0.127410, -0.990695, 0.047851,
		38.485851, 37.420616, 38.211365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227303, 37.918530, 38.253231>,  <38.396664, 38.114101, 38.177868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227303, 37.918530, 38.253231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008282, 37.627163, 38.088505>,  <38.876869, 37.452343, 37.989670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008282, 37.627163, 38.088505>,  <39.227303, 37.918530, 38.253231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008282, 37.627163, 38.088505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509280, 0.100404, -0.854724,
		0.663946, -0.677734, 0.315994,
		-0.547549, -0.728420, -0.411819,
		38.844017, 37.408638, 37.964958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680241, 37.393723, 37.896584>,  <39.227303, 37.918530, 38.253231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680241, 37.393723, 37.896584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318882, 37.345844, 37.731876>,  <39.102066, 37.317120, 37.633053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318882, 37.345844, 37.731876>,  <39.680241, 37.393723, 37.896584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318882, 37.345844, 37.731876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414088, 0.005995, -0.910217,
		0.111414, -0.992793, 0.044147,
		-0.903393, -0.119692, -0.411771,
		39.047863, 37.309937, 37.608345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908295, 37.118050, 37.335365>,  <39.680241, 37.393723, 37.896584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908295, 37.118050, 37.335365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528027, 37.197372, 37.239952>,  <39.299866, 37.244965, 37.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528027, 37.197372, 37.239952>,  <39.908295, 37.118050, 37.335365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528027, 37.197372, 37.239952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221219, -0.105647, -0.969485,
		-0.217458, -0.974429, 0.056566,
		-0.950670, 0.198309, -0.238536,
		39.242825, 37.256866, 37.168392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617500, 37.172199, 37.087910>,  <39.908295, 37.118050, 37.335365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617500, 37.172199, 37.087910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773968, 36.857681, 36.896610>,  <40.867847, 36.668972, 36.781830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773968, 36.857681, 36.896610>,  <40.617500, 37.172199, 37.087910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773968, 36.857681, 36.896610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891533, 0.452705, -0.015090,
		0.228372, -0.420472, 0.878094,
		0.391173, -0.786296, -0.478250,
		40.891319, 36.621792, 36.753136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299088, 36.931190, 37.483006>,  <40.617500, 37.172199, 37.087910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299088, 36.931190, 37.483006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315628, 36.860439, 37.089661>,  <41.325550, 36.817989, 36.853653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315628, 36.860439, 37.089661>,  <41.299088, 36.931190, 37.483006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315628, 36.860439, 37.089661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985534, 0.169122, 0.011020,
		0.164359, -0.969594, 0.181313,
		0.041349, -0.176879, -0.983364,
		41.328033, 36.807377, 36.794651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969574, 36.605259, 38.082508>,  <41.299088, 36.931190, 37.483006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969574, 36.605259, 38.082508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138313, 36.345860, 38.335960>,  <41.239555, 36.190220, 38.488033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138313, 36.345860, 38.335960>,  <40.969574, 36.605259, 38.082508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138313, 36.345860, 38.335960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902971, 0.237469, -0.358121,
		0.081774, 0.723224, 0.685755,
		0.421848, -0.648502, 0.633632,
		41.264866, 36.151310, 38.526051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613647, 36.869404, 38.407475>,  <40.969574, 36.605259, 38.082508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613647, 36.869404, 38.407475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632954, 36.474556, 38.346462>,  <41.644539, 36.237648, 38.309853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632954, 36.474556, 38.346462>,  <41.613647, 36.869404, 38.407475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632954, 36.474556, 38.346462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861640, 0.118392, -0.493517,
		0.505219, -0.107610, 0.856256,
		0.048266, -0.987119, -0.152535,
		41.647434, 36.178421, 38.300701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254227, 36.652035, 38.502476>,  <41.613647, 36.869404, 38.407475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254227, 36.652035, 38.502476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100891, 36.415367, 38.218792>,  <42.008892, 36.273365, 38.048580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100891, 36.415367, 38.218792>,  <42.254227, 36.652035, 38.502476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100891, 36.415367, 38.218792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800825, 0.169632, -0.574373,
		0.460145, -0.788131, 0.408799,
		-0.383336, -0.591671, -0.709210,
		41.985889, 36.237865, 38.006027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665649, 36.162247, 38.364273>,  <42.254227, 36.652035, 38.502476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665649, 36.162247, 38.364273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460548, 36.212585, 38.024567>,  <42.337490, 36.242790, 37.820744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460548, 36.212585, 38.024567>,  <42.665649, 36.162247, 38.364273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460548, 36.212585, 38.024567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841501, 0.269757, -0.468089,
		0.170188, -0.954669, -0.244219,
		-0.512750, 0.125847, -0.849264,
		42.306725, 36.250340, 37.769787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172188, 35.919109, 37.789120>,  <42.665649, 36.162247, 38.364273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172188, 35.919109, 37.789120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891346, 36.172241, 37.658539>,  <42.722839, 36.324120, 37.580189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891346, 36.172241, 37.658539>,  <43.172188, 35.919109, 37.789120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891346, 36.172241, 37.658539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650275, 0.383008, -0.656085,
		-0.290155, -0.672927, -0.680426,
		-0.702106, 0.632830, -0.326456,
		42.680714, 36.362091, 37.560600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893936, 35.860348, 37.152981>,  <43.172188, 35.919109, 37.789120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893936, 35.860348, 37.152981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856819, 36.256989, 37.189018>,  <42.834549, 36.494972, 37.210640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856819, 36.256989, 37.189018>,  <42.893936, 35.860348, 37.152981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856819, 36.256989, 37.189018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495102, 0.124457, -0.859875,
		-0.863865, -0.035186, -0.502493,
		-0.092794, 0.991601, 0.090094,
		42.828979, 36.554470, 37.216045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392551, 36.543983, 37.075905>,  <42.893936, 35.860348, 37.152981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392551, 36.543983, 37.075905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304565, 36.223351, 36.853523>,  <43.251774, 36.030972, 36.720093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304565, 36.223351, 36.853523>,  <43.392551, 36.543983, 37.075905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304565, 36.223351, 36.853523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975499, -0.178371, -0.128786,
		0.004066, -0.570663, 0.821174,
		-0.219967, -0.801578, -0.555956,
		43.238575, 35.982876, 36.686737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013016, 36.273666, 36.933918>,  <43.392551, 36.543983, 37.075905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013016, 36.273666, 36.933918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793274, 36.057434, 36.679054>,  <43.661427, 35.927692, 36.526134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793274, 36.057434, 36.679054>,  <44.013016, 36.273666, 36.933918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793274, 36.057434, 36.679054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835290, -0.375597, -0.401518,
		-0.022261, -0.752791, 0.657883,
		-0.549359, -0.540585, -0.637160,
		43.628468, 35.895260, 36.487907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266457, 35.538616, 36.878521>,  <44.013016, 36.273666, 36.933918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266457, 35.538616, 36.878521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068855, 35.601826, 36.536530>,  <43.950294, 35.639751, 36.331333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068855, 35.601826, 36.536530>,  <44.266457, 35.538616, 36.878521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068855, 35.601826, 36.536530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682786, -0.538297, -0.494003,
		-0.538297, -0.827807, 0.158024,
		0.494003, -0.158024, 0.854979,
		43.920654, 35.649235, 36.280037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136585, 34.845524, 36.615849>,  <44.266457, 35.538616, 36.878521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136585, 34.845524, 36.615849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176697, 35.128506, 36.336006>,  <44.200764, 35.298294, 36.168102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176697, 35.128506, 36.336006>,  <44.136585, 34.845524, 36.615849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176697, 35.128506, 36.336006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648649, -0.579666, -0.493195,
		-0.754452, -0.404342, -0.517020,
		0.100280, 0.707457, -0.699606,
		44.206779, 35.340744, 36.126125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905178, 34.671295, 35.864311>,  <44.136585, 34.845524, 36.615849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905178, 34.671295, 35.864311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219166, 34.913761, 35.915508>,  <44.407558, 35.059242, 35.946228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219166, 34.913761, 35.915508>,  <43.905178, 34.671295, 35.864311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219166, 34.913761, 35.915508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564036, -0.613771, -0.552402,
		-0.256292, 0.505811, -0.823693,
		0.784970, 0.606169, 0.127991,
		44.454659, 35.095612, 35.953907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201809, 34.883999, 35.222153>,  <43.905178, 34.671295, 35.864311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201809, 34.883999, 35.222153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452721, 34.858204, 35.532600>,  <44.603268, 34.842728, 35.718868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452721, 34.858204, 35.532600>,  <44.201809, 34.883999, 35.222153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452721, 34.858204, 35.532600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613627, -0.572738, -0.543537,
		0.479567, 0.817198, -0.319693,
		0.627278, -0.064490, 0.776121,
		44.640903, 34.838856, 35.765438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849186, 35.068642, 35.058224>,  <44.201809, 34.883999, 35.222153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849186, 35.068642, 35.058224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837254, 34.791351, 35.346268>,  <44.830093, 34.624977, 35.519093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837254, 34.791351, 35.346268>,  <44.849186, 35.068642, 35.058224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837254, 34.791351, 35.346268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449032, -0.652933, -0.609958,
		0.893018, 0.305157, 0.330755,
		-0.029828, -0.693223, 0.720106,
		44.828304, 34.583385, 35.562298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627594, 34.805595, 35.113098>,  <44.849186, 35.068642, 35.058224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627594, 34.805595, 35.113098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317902, 34.565155, 35.192341>,  <45.132088, 34.420891, 35.239887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317902, 34.565155, 35.192341>,  <45.627594, 34.805595, 35.113098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317902, 34.565155, 35.192341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365717, -0.680367, -0.635100,
		0.516547, -0.419260, 0.746592,
		-0.774228, -0.601101, 0.198111,
		45.085632, 34.384827, 35.251774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181080, 34.451920, 35.536846>,  <45.627594, 34.805595, 35.113098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181080, 34.451920, 35.536846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.404861, 34.751415, 35.679054>,  <46.539131, 34.931114, 35.764378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.404861, 34.751415, 35.679054>,  <46.181080, 34.451920, 35.536846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.404861, 34.751415, 35.679054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700967, -0.198501, -0.685012,
		-0.442326, 0.632443, -0.635896,
		0.559457, 0.748741, 0.355520,
		46.572697, 34.976036, 35.785709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380524, 34.772057, 34.978970>,  <46.181080, 34.451920, 35.536846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.380524, 34.772057, 34.978970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640129, 34.852676, 35.272408>,  <46.795891, 34.901047, 35.448471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640129, 34.852676, 35.272408>,  <46.380524, 34.772057, 34.978970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640129, 34.852676, 35.272408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759429, -0.229053, -0.608935,
		0.045302, 0.952319, -0.301721,
		0.649011, 0.201550, 0.733596,
		46.834831, 34.913143, 35.492485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.785225, 35.433495, 34.849422>,  <46.380524, 34.772057, 34.978970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.785225, 35.433495, 34.849422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930214, 35.099129, 35.014282>,  <47.017208, 34.898510, 35.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930214, 35.099129, 35.014282>,  <46.785225, 35.433495, 34.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.930214, 35.099129, 35.014282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734051, -0.016428, -0.678895,
		0.574269, 0.548614, 0.607649,
		0.362469, -0.835914, 0.412145,
		47.038956, 34.848354, 35.137924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.437584, 35.571575, 34.937393>,  <46.785225, 35.433495, 34.849422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.437584, 35.571575, 34.937393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462971, 35.173954, 34.972790>,  <47.478203, 34.935383, 34.994026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462971, 35.173954, 34.972790>,  <47.437584, 35.571575, 34.937393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462971, 35.173954, 34.972790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796111, -0.003045, -0.605143,
		0.601814, 0.108854, 0.791184,
		0.063463, -0.994053, 0.088492,
		47.482010, 34.875736, 34.999336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.109669, 35.277874, 35.139275>,  <47.437584, 35.571575, 34.937393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.109669, 35.277874, 35.139275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.945084, 34.980049, 34.929008>,  <47.846333, 34.801353, 34.802849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.945084, 34.980049, 34.929008>,  <48.109669, 35.277874, 35.139275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.945084, 34.980049, 34.929008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814486, -0.041536, -0.578695,
		0.409041, -0.666258, 0.623527,
		-0.411459, -0.744564, -0.525668,
		47.821648, 34.756680, 34.771309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.682240, 33.588375, 27.683741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.347092, 33.489349, 27.489138>,  <41.146004, 33.429932, 27.372375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.347092, 33.489349, 27.489138>,  <41.682240, 33.588375, 27.683741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347092, 33.489349, 27.489138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494982, -0.031206, 0.868343,
		-0.230156, 0.968368, -0.096395,
		-0.837867, -0.247568, -0.486507,
		41.095730, 33.415077, 27.343185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171356, 34.005619, 27.983202>,  <41.682240, 33.588375, 27.683741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171356, 34.005619, 27.983202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.975765, 33.718315, 27.785212>,  <40.858410, 33.545933, 27.666418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.975765, 33.718315, 27.785212>,  <41.171356, 34.005619, 27.983202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975765, 33.718315, 27.785212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592897, -0.142544, 0.792562,
		-0.639821, 0.681018, -0.356152,
		-0.488981, -0.718259, -0.494976,
		40.829071, 33.502838, 27.636719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516148, 34.217079, 27.977736>,  <41.171356, 34.005619, 27.983202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516148, 34.217079, 27.977736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491661, 33.820175, 27.934505>,  <40.476967, 33.582035, 27.908567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491661, 33.820175, 27.934505>,  <40.516148, 34.217079, 27.977736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491661, 33.820175, 27.934505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669430, -0.039496, 0.741825,
		-0.740348, 0.117763, -0.661828,
		-0.061220, -0.992256, -0.108074,
		40.473293, 33.522499, 27.902082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881721, 34.215561, 28.131819>,  <40.516148, 34.217079, 27.977736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881721, 34.215561, 28.131819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966148, 33.827396, 28.084915>,  <40.016804, 33.594498, 28.056772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966148, 33.827396, 28.084915>,  <39.881721, 34.215561, 28.131819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966148, 33.827396, 28.084915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719724, -0.235462, 0.653112,
		-0.661399, -0.053456, -0.748127,
		0.211069, -0.970413, -0.117261,
		40.029469, 33.536274, 28.049738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305607, 33.787498, 28.114027>,  <39.881721, 34.215561, 28.131819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305607, 33.787498, 28.114027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566853, 33.539722, 28.288260>,  <39.723598, 33.391056, 28.392799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566853, 33.539722, 28.288260>,  <39.305607, 33.787498, 28.114027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566853, 33.539722, 28.288260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637629, -0.139555, 0.757597,
		-0.408501, -0.772537, -0.486121,
		0.653113, -0.619444, 0.435583,
		39.762787, 33.353889, 28.418934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982506, 33.053581, 28.321310>,  <39.305607, 33.787498, 28.114027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982506, 33.053581, 28.321310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317173, 33.124565, 28.528574>,  <39.517975, 33.167156, 28.652933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317173, 33.124565, 28.528574>,  <38.982506, 33.053581, 28.321310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317173, 33.124565, 28.528574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498733, -0.144176, 0.854680,
		0.226378, -0.973510, -0.032123,
		0.836671, 0.177460, 0.518160,
		39.568172, 33.177803, 28.684023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854996, 32.646740, 28.804367>,  <38.982506, 33.053581, 28.321310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854996, 32.646740, 28.804367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.176105, 32.834991, 28.950825>,  <39.368771, 32.947945, 29.038700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.176105, 32.834991, 28.950825>,  <38.854996, 32.646740, 28.804367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176105, 32.834991, 28.950825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397503, -0.035316, 0.916921,
		0.444463, -0.881623, 0.158727,
		0.802773, 0.470632, 0.366145,
		39.416939, 32.976181, 29.060669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059303, 32.329441, 29.372236>,  <38.854996, 32.646740, 28.804367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059303, 32.329441, 29.372236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206596, 32.697247, 29.427216>,  <39.294971, 32.917931, 29.460203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206596, 32.697247, 29.427216>,  <39.059303, 32.329441, 29.372236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206596, 32.697247, 29.427216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311964, -0.017065, 0.949941,
		0.875833, -0.392677, 0.280573,
		0.368232, 0.919518, 0.137447,
		39.317066, 32.973103, 29.468451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131367, 32.428143, 30.073862>,  <39.059303, 32.329441, 29.372236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131367, 32.428143, 30.073862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163700, 32.816708, 29.984573>,  <39.183102, 33.049847, 29.931000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163700, 32.816708, 29.984573>,  <39.131367, 32.428143, 30.073862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163700, 32.816708, 29.984573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223045, 0.235905, 0.945833,
		0.971451, -0.026669, 0.235738,
		0.080836, 0.971410, -0.223222,
		39.187950, 33.108131, 29.917606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567383, 32.739975, 30.593937>,  <39.131367, 32.428143, 30.073862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567383, 32.739975, 30.593937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351357, 33.031956, 30.426367>,  <39.221741, 33.207146, 30.325825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351357, 33.031956, 30.426367>,  <39.567383, 32.739975, 30.593937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351357, 33.031956, 30.426367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250533, 0.335757, 0.908020,
		0.803467, 0.595348, 0.001545,
		-0.540069, 0.729951, -0.418924,
		39.189335, 33.250942, 30.300690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866730, 33.274914, 30.820816>,  <39.567383, 32.739975, 30.593937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866730, 33.274914, 30.820816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494186, 33.396271, 30.740286>,  <39.270660, 33.469086, 30.691969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494186, 33.396271, 30.740286>,  <39.866730, 33.274914, 30.820816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494186, 33.396271, 30.740286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090726, 0.342111, 0.935269,
		0.352626, 0.889334, -0.291102,
		-0.931356, 0.303390, -0.201323,
		39.214779, 33.487289, 30.679890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891663, 33.925331, 30.963871>,  <39.866730, 33.274914, 30.820816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891663, 33.925331, 30.963871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501034, 33.839355, 30.968084>,  <39.266655, 33.787769, 30.970612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501034, 33.839355, 30.968084>,  <39.891663, 33.925331, 30.963871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501034, 33.839355, 30.968084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123172, 0.598428, 0.791652,
		-0.176460, 0.771806, -0.610882,
		-0.976571, -0.214938, 0.010533,
		39.208061, 33.774876, 30.971245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605614, 34.599747, 31.056820>,  <39.891663, 33.925331, 30.963871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605614, 34.599747, 31.056820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363338, 34.306095, 31.179585>,  <39.217972, 34.129906, 31.253242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363338, 34.306095, 31.179585>,  <39.605614, 34.599747, 31.056820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363338, 34.306095, 31.179585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234367, 0.533197, 0.812879,
		-0.760402, 0.420423, -0.495008,
		-0.605690, -0.734129, 0.306911,
		39.181633, 34.085857, 31.271658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039516, 34.993496, 31.389694>,  <39.605614, 34.599747, 31.056820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039516, 34.993496, 31.389694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978600, 34.616718, 31.509396>,  <38.942047, 34.390652, 31.581217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978600, 34.616718, 31.509396>,  <39.039516, 34.993496, 31.389694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978600, 34.616718, 31.509396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302918, 0.332701, 0.893057,
		-0.940769, 0.045360, -0.336000,
		-0.152297, -0.941941, 0.299254,
		38.932911, 34.334137, 31.599173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248913, 34.875973, 31.550568>,  <39.039516, 34.993496, 31.389694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248913, 34.875973, 31.550568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483486, 34.620377, 31.749681>,  <38.624229, 34.467018, 31.869150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483486, 34.620377, 31.749681>,  <38.248913, 34.875973, 31.550568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483486, 34.620377, 31.749681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441493, 0.263084, 0.857829,
		-0.679105, -0.722825, -0.127830,
		0.586430, -0.638992, 0.497784,
		38.659416, 34.428680, 31.899017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769119, 34.516193, 31.977106>,  <38.248913, 34.875973, 31.550568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769119, 34.516193, 31.977106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127399, 34.456776, 32.144749>,  <38.342369, 34.421124, 32.245335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127399, 34.456776, 32.144749>,  <37.769119, 34.516193, 31.977106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127399, 34.456776, 32.144749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395097, 0.166538, 0.903418,
		-0.203997, -0.974782, 0.090478,
		0.895703, -0.148547, 0.419106,
		38.396111, 34.412212, 32.270481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613590, 34.037498, 32.459797>,  <37.769119, 34.516193, 31.977106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613590, 34.037498, 32.459797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962902, 34.190147, 32.580956>,  <38.172489, 34.281734, 32.653652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962902, 34.190147, 32.580956>,  <37.613590, 34.037498, 32.459797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962902, 34.190147, 32.580956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404287, 0.220641, 0.887621,
		0.271902, -0.897599, 0.346965,
		0.873282, 0.381620, 0.302895,
		38.224888, 34.304634, 32.671825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678600, 33.858246, 33.110641>,  <37.613590, 34.037498, 32.459797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678600, 33.858246, 33.110641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932838, 34.166653, 33.094906>,  <38.085381, 34.351696, 33.085464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932838, 34.166653, 33.094906>,  <37.678600, 33.858246, 33.110641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932838, 34.166653, 33.094906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337333, 0.323191, 0.884168,
		0.694424, -0.548705, 0.465509,
		0.635596, 0.771019, -0.039335,
		38.123516, 34.397957, 33.083107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846275, 33.982124, 33.882824>,  <37.678600, 33.858246, 33.110641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846275, 33.982124, 33.882824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954594, 34.320000, 33.698143>,  <38.019585, 34.522724, 33.587334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954594, 34.320000, 33.698143>,  <37.846275, 33.982124, 33.882824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954594, 34.320000, 33.698143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262524, 0.526241, 0.808796,
		0.926148, -0.097810, 0.364255,
		0.270795, 0.844691, -0.461700,
		38.035831, 34.573406, 33.559631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209385, 34.311298, 34.352989>,  <37.846275, 33.982124, 33.882824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209385, 34.311298, 34.352989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110031, 34.614212, 34.111385>,  <38.050419, 34.795959, 33.966423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110031, 34.614212, 34.111385>,  <38.209385, 34.311298, 34.352989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110031, 34.614212, 34.111385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357486, 0.507866, 0.783757,
		0.900282, 0.410600, 0.144571,
		-0.248388, 0.757285, -0.604006,
		38.035515, 34.841396, 33.930183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498234, 34.951183, 34.613998>,  <38.209385, 34.311298, 34.352989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498234, 34.951183, 34.613998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186214, 35.068726, 34.393028>,  <37.999004, 35.139252, 34.260448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186214, 35.068726, 34.393028>,  <38.498234, 34.951183, 34.613998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186214, 35.068726, 34.393028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310206, 0.585111, 0.749278,
		0.543411, 0.755838, -0.365259,
		-0.780049, 0.293860, -0.552421,
		37.952198, 35.156883, 34.227303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409134, 35.097935, 35.376057>,  <38.498234, 34.951183, 34.613998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409134, 35.097935, 35.376057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707283, 35.201107, 35.621948>,  <38.886173, 35.263012, 35.769485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707283, 35.201107, 35.621948>,  <38.409134, 35.097935, 35.376057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707283, 35.201107, 35.621948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569945, 0.231775, -0.788316,
		-0.345813, 0.937950, 0.025750,
		0.745370, 0.257934, 0.614731,
		38.930893, 35.278488, 35.806366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649097, 35.688931, 35.154640>,  <38.409134, 35.097935, 35.376057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649097, 35.688931, 35.154640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.959545, 35.569756, 35.376949>,  <39.145813, 35.498249, 35.510334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.959545, 35.569756, 35.376949>,  <38.649097, 35.688931, 35.154640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959545, 35.569756, 35.376949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630499, 0.351546, -0.692016,
		0.010798, 0.887496, 0.460689,
		0.776115, -0.297936, 0.555769,
		39.192379, 35.480373, 35.543678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133163, 36.231667, 35.183304>,  <38.649097, 35.688931, 35.154640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133163, 36.231667, 35.183304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351688, 35.907127, 35.266499>,  <39.482803, 35.712406, 35.316414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351688, 35.907127, 35.266499>,  <39.133163, 36.231667, 35.183304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351688, 35.907127, 35.266499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704621, 0.310954, -0.637822,
		0.452821, 0.495002, 0.741570,
		0.546317, -0.811345, 0.207982,
		39.515583, 35.663723, 35.328892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812695, 36.409599, 35.058121>,  <39.133163, 36.231667, 35.183304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812695, 36.409599, 35.058121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851791, 36.014294, 35.105064>,  <39.875248, 35.777111, 35.133232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851791, 36.014294, 35.105064>,  <39.812695, 36.409599, 35.058121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851791, 36.014294, 35.105064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744072, -0.005748, -0.668075,
		0.660911, 0.152626, 0.734780,
		0.097742, -0.988267, 0.117364,
		39.881115, 35.717812, 35.140274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515099, 36.143581, 35.096775>,  <39.812695, 36.409599, 35.058121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515099, 36.143581, 35.096775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.340294, 35.792622, 35.017582>,  <40.235413, 35.582047, 34.970066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.340294, 35.792622, 35.017582>,  <40.515099, 36.143581, 35.096775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340294, 35.792622, 35.017582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737590, -0.223600, -0.637153,
		0.514766, -0.424473, 0.744874,
		-0.437008, -0.877397, -0.197986,
		40.209190, 35.529404, 34.958187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030190, 35.622837, 35.236290>,  <40.515099, 36.143581, 35.096775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030190, 35.622837, 35.236290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758419, 35.485817, 34.976742>,  <40.595356, 35.403603, 34.821011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758419, 35.485817, 34.976742>,  <41.030190, 35.622837, 35.236290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758419, 35.485817, 34.976742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730584, -0.233838, -0.641534,
		0.068029, -0.909932, 0.409140,
		-0.679425, -0.342554, -0.648874,
		40.554592, 35.383049, 34.782078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283710, 34.976547, 35.110683>,  <41.030190, 35.622837, 35.236290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283710, 34.976547, 35.110683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.043579, 35.090057, 34.811600>,  <40.899498, 35.158165, 34.632149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.043579, 35.090057, 34.811600>,  <41.283710, 34.976547, 35.110683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043579, 35.090057, 34.811600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662575, -0.347105, -0.663711,
		-0.447882, -0.893861, 0.020352,
		-0.600330, 0.283780, -0.747712,
		40.863480, 35.175190, 34.587288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349617, 34.422066, 34.588753>,  <41.283710, 34.976547, 35.110683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349617, 34.422066, 34.588753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.185661, 34.723782, 34.383602>,  <41.087288, 34.904812, 34.260513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.185661, 34.723782, 34.383602>,  <41.349617, 34.422066, 34.588753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185661, 34.723782, 34.383602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604636, -0.196300, -0.771933,
		-0.682937, -0.626511, -0.375608,
		-0.409893, 0.754288, -0.512872,
		41.062695, 34.950069, 34.229740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287354, 34.174927, 33.919769>,  <41.349617, 34.422066, 34.588753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287354, 34.174927, 33.919769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.226505, 34.564335, 33.851517>,  <41.189995, 34.797981, 33.810566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.226505, 34.564335, 33.851517>,  <41.287354, 34.174927, 33.919769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226505, 34.564335, 33.851517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353624, -0.107597, -0.929179,
		-0.922935, -0.201688, -0.327892,
		-0.152124, 0.973522, -0.170627,
		41.180866, 34.856392, 33.800327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808498, 34.278194, 33.311325>,  <41.287354, 34.174927, 33.919769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808498, 34.278194, 33.311325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027298, 34.608059, 33.368912>,  <41.158577, 34.805977, 33.403465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027298, 34.608059, 33.368912>,  <40.808498, 34.278194, 33.311325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027298, 34.608059, 33.368912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191009, 0.044492, -0.980579,
		-0.815049, 0.563877, -0.133181,
		0.547001, 0.824659, 0.143969,
		41.191399, 34.855457, 33.412102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768356, 34.684891, 32.653473>,  <40.808498, 34.278194, 33.311325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768356, 34.684891, 32.653473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.097775, 34.821026, 32.834999>,  <41.295425, 34.902706, 32.943913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.097775, 34.821026, 32.834999>,  <40.768356, 34.684891, 32.653473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097775, 34.821026, 32.834999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448230, 0.099883, -0.888321,
		-0.347659, 0.934983, -0.070292,
		0.823543, 0.340339, 0.453812,
		41.344837, 34.923126, 32.971142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899757, 35.262722, 32.285580>,  <40.768356, 34.684891, 32.653473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899757, 35.262722, 32.285580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.243111, 35.174225, 32.470722>,  <41.449123, 35.121128, 32.581810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.243111, 35.174225, 32.470722>,  <40.899757, 35.262722, 32.285580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243111, 35.174225, 32.470722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459723, -0.068699, -0.885401,
		0.227686, 0.972796, 0.042740,
		0.858378, -0.221242, 0.462859,
		41.500626, 35.107853, 32.609581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389465, 35.727425, 32.111137>,  <40.899757, 35.262722, 32.285580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389465, 35.727425, 32.111137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.616482, 35.422710, 32.236088>,  <41.752693, 35.239883, 32.311058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.616482, 35.422710, 32.236088>,  <41.389465, 35.727425, 32.111137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616482, 35.422710, 32.236088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500584, 0.018034, -0.865500,
		0.653691, 0.647579, 0.391572,
		0.567542, -0.761785, 0.312379,
		41.786743, 35.194176, 32.329800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080700, 35.867546, 31.886763>,  <41.389465, 35.727425, 32.111137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080700, 35.867546, 31.886763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.029419, 35.472992, 31.927963>,  <41.998650, 35.236259, 31.952684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.029419, 35.472992, 31.927963>,  <42.080700, 35.867546, 31.886763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029419, 35.472992, 31.927963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589554, -0.159312, -0.791862,
		0.797491, -0.040790, 0.601951,
		-0.128198, -0.986385, 0.103001,
		41.990959, 35.177078, 31.958864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710632, 35.771015, 31.714018>,  <42.080700, 35.867546, 31.886763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710632, 35.771015, 31.714018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.464760, 35.460533, 31.657923>,  <42.317238, 35.274242, 31.624266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.464760, 35.460533, 31.657923>,  <42.710632, 35.771015, 31.714018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464760, 35.460533, 31.657923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383873, -0.139063, -0.912855,
		0.689063, -0.614949, 0.383445,
		-0.614682, -0.776208, -0.140238,
		42.280354, 35.227673, 31.615850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059608, 35.372829, 31.273796>,  <42.710632, 35.771015, 31.714018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059608, 35.372829, 31.273796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.695751, 35.220226, 31.208065>,  <42.477436, 35.128662, 31.168627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.695751, 35.220226, 31.208065>,  <43.059608, 35.372829, 31.273796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695751, 35.220226, 31.208065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241014, -0.162523, -0.956817,
		0.338331, -0.909964, 0.239787,
		-0.909639, -0.381513, -0.164327,
		42.422859, 35.105774, 31.158766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207893, 34.701729, 31.020346>,  <43.059608, 35.372829, 31.273796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207893, 34.701729, 31.020346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.832985, 34.802071, 30.923521>,  <42.608040, 34.862278, 30.865427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.832985, 34.802071, 30.923521>,  <43.207893, 34.701729, 31.020346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832985, 34.802071, 30.923521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119156, -0.422015, -0.898724,
		-0.327603, -0.871192, 0.365652,
		-0.937271, 0.250855, -0.242061,
		42.551804, 34.877327, 30.850903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979912, 34.098804, 30.600777>,  <43.207893, 34.701729, 31.020346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979912, 34.098804, 30.600777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.704975, 34.374115, 30.507973>,  <42.540012, 34.539303, 30.452290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.704975, 34.374115, 30.507973>,  <42.979912, 34.098804, 30.600777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704975, 34.374115, 30.507973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109912, -0.217186, -0.969923,
		-0.717966, -0.692173, 0.073631,
		-0.687345, 0.688279, -0.232010,
		42.498772, 34.580597, 30.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520855, 33.756947, 30.129253>,  <42.979912, 34.098804, 30.600777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520855, 33.756947, 30.129253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.521099, 34.151402, 30.062889>,  <42.521244, 34.388077, 30.023071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.521099, 34.151402, 30.062889>,  <42.520855, 33.756947, 30.129253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521099, 34.151402, 30.062889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294872, -0.158710, -0.942264,
		-0.955537, -0.048352, -0.290881,
		0.000606, 0.986141, -0.165910,
		42.521282, 34.447243, 30.013117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.103325, 33.791832, 29.508827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.317593, 34.128700, 29.533489>,  <42.446156, 34.330822, 29.548286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.317593, 34.128700, 29.533489>,  <42.103325, 33.791832, 29.508827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317593, 34.128700, 29.533489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188055, -0.047794, -0.980995,
		-0.823219, 0.537087, -0.183977,
		0.535673, 0.842172, 0.061657,
		42.478294, 34.381351, 29.551987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784470, 34.293900, 28.991053>,  <42.103325, 33.791832, 29.508827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784470, 34.293900, 28.991053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.170109, 34.370941, 29.064182>,  <42.401493, 34.417168, 29.108059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.170109, 34.370941, 29.064182>,  <41.784470, 34.293900, 28.991053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170109, 34.370941, 29.064182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184887, 0.007356, -0.982732,
		-0.190626, 0.981248, -0.028519,
		0.964095, 0.192607, 0.182823,
		42.459335, 34.428722, 29.119030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967392, 34.740242, 28.455088>,  <41.784470, 34.293900, 28.991053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967392, 34.740242, 28.455088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.327202, 34.627316, 28.588449>,  <42.543087, 34.559559, 28.668467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.327202, 34.627316, 28.588449>,  <41.967392, 34.740242, 28.455088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327202, 34.627316, 28.588449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294564, -0.171661, -0.940087,
		0.322636, 0.943837, -0.071252,
		0.899521, -0.282318, 0.333405,
		42.597057, 34.542622, 28.688471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368954, 35.047760, 28.008326>,  <41.967392, 34.740242, 28.455088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368954, 35.047760, 28.008326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.626560, 34.794941, 28.180725>,  <42.781124, 34.643250, 28.284164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.626560, 34.794941, 28.180725>,  <42.368954, 35.047760, 28.008326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626560, 34.794941, 28.180725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471880, -0.115240, -0.874099,
		0.602139, 0.766315, 0.224033,
		0.644017, -0.632046, 0.430999,
		42.819767, 34.605328, 28.310024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025394, 35.269424, 27.763330>,  <42.368954, 35.047760, 28.008326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025394, 35.269424, 27.763330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.094818, 34.894974, 27.885666>,  <43.136471, 34.670303, 27.959066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.094818, 34.894974, 27.885666>,  <43.025394, 35.269424, 27.763330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094818, 34.894974, 27.885666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614129, -0.139893, -0.776708,
		0.769885, 0.322628, 0.550625,
		0.173559, -0.936131, 0.305837,
		43.146885, 34.614136, 27.977417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770718, 35.242847, 27.800894>,  <43.025394, 35.269424, 27.763330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770718, 35.242847, 27.800894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.626080, 34.870316, 27.783607>,  <43.539299, 34.646797, 27.773235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.626080, 34.870316, 27.783607>,  <43.770718, 35.242847, 27.800894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626080, 34.870316, 27.783607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455907, -0.136194, -0.879545,
		0.813265, -0.337740, 0.473848,
		-0.361593, -0.931334, -0.043217,
		43.517601, 34.590916, 27.770643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335800, 34.731930, 27.545645>,  <43.770718, 35.242847, 27.800894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335800, 34.731930, 27.545645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.992413, 34.540073, 27.473005>,  <43.786381, 34.424961, 27.429420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.992413, 34.540073, 27.473005>,  <44.335800, 34.731930, 27.545645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992413, 34.540073, 27.473005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309117, -0.201352, -0.929465,
		0.409242, -0.854051, 0.321119,
		-0.858468, -0.479639, -0.181600,
		43.734871, 34.396183, 27.418526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489407, 34.120281, 27.300058>,  <44.335800, 34.731930, 27.545645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489407, 34.120281, 27.300058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.116806, 34.114273, 27.154686>,  <43.893246, 34.110668, 27.067463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.116806, 34.114273, 27.154686>,  <44.489407, 34.120281, 27.300058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116806, 34.114273, 27.154686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347116, -0.335332, -0.875822,
		-0.108713, -0.941980, 0.317576,
		-0.931500, -0.015022, -0.363431,
		43.837357, 34.109768, 27.045656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261215, 33.419121, 27.165382>,  <44.489407, 34.120281, 27.300058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261215, 33.419121, 27.165382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032673, 33.654560, 26.936611>,  <43.895546, 33.795826, 26.799349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032673, 33.654560, 26.936611>,  <44.261215, 33.419121, 27.165382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032673, 33.654560, 26.936611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260984, -0.530392, -0.806581,
		-0.778099, -0.610109, 0.149427,
		-0.571357, 0.588601, -0.571926,
		43.861267, 33.831139, 26.765034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039738, 32.977768, 26.643702>,  <44.261215, 33.419121, 27.165382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039738, 32.977768, 26.643702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.982574, 33.340454, 26.484983>,  <43.948277, 33.558067, 26.389753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.982574, 33.340454, 26.484983>,  <44.039738, 32.977768, 26.643702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982574, 33.340454, 26.484983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338850, -0.331859, -0.880370,
		-0.929924, -0.260262, -0.259816,
		-0.142905, 0.906716, -0.396794,
		43.939701, 33.612469, 26.365946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552986, 32.904583, 26.033136>,  <44.039738, 32.977768, 26.643702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552986, 32.904583, 26.033136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.781498, 33.226418, 25.968279>,  <43.918606, 33.419518, 25.929365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.781498, 33.226418, 25.968279>,  <43.552986, 32.904583, 26.033136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781498, 33.226418, 25.968279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331096, -0.406678, -0.851462,
		-0.751011, 0.432736, -0.498720,
		0.571277, 0.804582, -0.162143,
		43.952881, 33.467793, 25.919636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754040, 32.820824, 25.341387>,  <43.552986, 32.904583, 26.033136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754040, 32.820824, 25.341387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.027096, 33.073387, 25.488529>,  <44.190929, 33.224926, 25.576815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.027096, 33.073387, 25.488529>,  <43.754040, 32.820824, 25.341387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027096, 33.073387, 25.488529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619914, -0.233834, -0.749019,
		-0.386923, 0.739350, -0.551046,
		0.682640, 0.631413, 0.367858,
		44.231888, 33.262810, 25.598886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147934, 32.851002, 24.710962>,  <43.754040, 32.820824, 25.341387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147934, 32.851002, 24.710962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.328186, 33.098385, 24.968472>,  <44.436337, 33.246815, 25.122976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.328186, 33.098385, 24.968472>,  <44.147934, 32.851002, 24.710962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328186, 33.098385, 24.968472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727876, 0.162969, -0.666061,
		-0.516845, 0.768734, -0.376721,
		0.450630, 0.618457, 0.643773,
		44.463375, 33.283920, 25.161604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313046, 33.470005, 24.295757>,  <44.147934, 32.851002, 24.710962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313046, 33.470005, 24.295757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.565361, 33.428925, 24.603407>,  <44.716751, 33.404278, 24.787996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.565361, 33.428925, 24.603407>,  <44.313046, 33.470005, 24.295757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565361, 33.428925, 24.603407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775247, 0.125662, -0.619033,
		-0.033075, 0.986743, 0.158885,
		0.630792, -0.102701, 0.769125,
		44.754601, 33.398113, 24.834145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744122, 34.104740, 24.489538>,  <44.313046, 33.470005, 24.295757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744122, 34.104740, 24.489538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.925652, 33.760509, 24.582014>,  <45.034569, 33.553970, 24.637499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.925652, 33.760509, 24.582014>,  <44.744122, 34.104740, 24.489538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925652, 33.760509, 24.582014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704694, 0.187809, -0.684204,
		0.545393, 0.473424, 0.691677,
		0.453821, -0.860580, 0.231189,
		45.061798, 33.502335, 24.651371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440121, 34.240986, 24.321676>,  <44.744122, 34.104740, 24.489538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440121, 34.240986, 24.321676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458057, 33.847496, 24.391273>,  <45.468819, 33.611401, 24.433031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458057, 33.847496, 24.391273>,  <45.440121, 34.240986, 24.321676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458057, 33.847496, 24.391273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871956, -0.046452, -0.487376,
		0.487526, 0.173569, 0.855682,
		0.044845, -0.983725, 0.173991,
		45.471512, 33.552380, 24.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098717, 34.071373, 24.638496>,  <45.440121, 34.240986, 24.321676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098717, 34.071373, 24.638496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.969772, 33.727085, 24.480894>,  <45.892406, 33.520512, 24.386332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.969772, 33.727085, 24.480894>,  <46.098717, 34.071373, 24.638496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969772, 33.727085, 24.480894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865911, -0.099949, -0.490110,
		0.382468, -0.499168, 0.777528,
		-0.322360, -0.860722, -0.394008,
		45.873066, 33.468868, 24.362692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.653366, 33.598953, 24.753929>,  <46.098717, 34.071373, 24.638496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.653366, 33.598953, 24.753929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.413029, 33.457184, 24.467329>,  <46.268826, 33.372120, 24.295368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.413029, 33.457184, 24.467329>,  <46.653366, 33.598953, 24.753929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413029, 33.457184, 24.467329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769500, -0.013720, -0.638499,
		0.216472, -0.934983, 0.280976,
		-0.600840, -0.354428, -0.716500,
		46.232777, 33.350857, 24.252378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.973984, 32.975952, 24.575434>,  <46.653366, 33.598953, 24.753929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.973984, 32.975952, 24.575434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.744537, 33.099869, 24.272120>,  <46.606869, 33.174217, 24.090132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.744537, 33.099869, 24.272120>,  <46.973984, 32.975952, 24.575434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744537, 33.099869, 24.272120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751397, -0.169588, -0.637686,
		-0.326147, -0.935558, -0.135499,
		-0.573613, 0.309793, -0.758285,
		46.572453, 33.192806, 24.044634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112179, 32.588497, 24.031830>,  <46.973984, 32.975952, 24.575434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112179, 32.588497, 24.031830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.913055, 32.858315, 23.813774>,  <46.793583, 33.020206, 23.682941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.913055, 32.858315, 23.813774>,  <47.112179, 32.588497, 24.031830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913055, 32.858315, 23.813774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803758, 0.122676, -0.582171,
		-0.325827, -0.727967, -0.603242,
		-0.497805, 0.674547, -0.545138,
		46.763714, 33.060680, 23.650232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021008, 32.332832, 23.285297>,  <47.112179, 32.588497, 24.031830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021008, 32.332832, 23.285297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.007816, 32.732357, 23.299620>,  <46.999901, 32.972073, 23.308212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.007816, 32.732357, 23.299620>,  <47.021008, 32.332832, 23.285297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007816, 32.732357, 23.299620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756385, 0.048357, -0.652337,
		-0.653295, 0.005571, -0.757083,
		-0.032977, 0.998815, 0.035805,
		46.997925, 33.032001, 23.310362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051510, 32.565693, 22.612228>,  <47.021008, 32.332832, 23.285297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051510, 32.565693, 22.612228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.167145, 32.908997, 22.781853>,  <47.236526, 33.114979, 22.883627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.167145, 32.908997, 22.781853>,  <47.051510, 32.565693, 22.612228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167145, 32.908997, 22.781853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610272, 0.176072, -0.772378,
		-0.737563, 0.482074, -0.472870,
		0.289084, 0.858256, 0.424060,
		47.253868, 33.166473, 22.909071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025959, 33.093838, 22.074884>,  <47.051510, 32.565693, 22.612228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025959, 33.093838, 22.074884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.278927, 33.184841, 22.371067>,  <47.430710, 33.239445, 22.548777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.278927, 33.184841, 22.371067>,  <47.025959, 33.093838, 22.074884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278927, 33.184841, 22.371067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699974, 0.241575, -0.672070,
		-0.331781, 0.943334, -0.006475,
		0.632423, 0.227513, 0.740459,
		47.468655, 33.253094, 22.593204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244606, 33.154392, 22.078415>,  <47.025959, 33.093838, 22.074884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244606, 33.154392, 22.078415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.266037, 33.284061, 21.700624>,  <46.278896, 33.361862, 21.473949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.266037, 33.284061, 21.700624>,  <46.244606, 33.154392, 22.078415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266037, 33.284061, 21.700624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997964, 0.050157, -0.039399,
		0.034600, 0.944666, 0.326203,
		0.053580, 0.324176, -0.944478,
		46.282112, 33.381313, 21.417280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012203, 33.885834, 22.030575>,  <46.244606, 33.154392, 22.078415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012203, 33.885834, 22.030575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.932236, 33.656178, 21.712986>,  <45.884254, 33.518383, 21.522432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.932236, 33.656178, 21.712986>,  <46.012203, 33.885834, 22.030575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932236, 33.656178, 21.712986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979765, 0.109212, 0.167727,
		-0.009587, 0.811440, -0.584357,
		-0.199919, -0.574141, -0.793974,
		45.872261, 33.483936, 21.474794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504757, 34.224174, 21.457195>,  <46.012203, 33.885834, 22.030575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504757, 34.224174, 21.457195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.472832, 33.826046, 21.479010>,  <45.453678, 33.587170, 21.492098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.472832, 33.826046, 21.479010>,  <45.504757, 34.224174, 21.457195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472832, 33.826046, 21.479010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996518, 0.078344, -0.028524,
		0.024117, -0.056625, -0.998104,
		-0.079811, -0.995317, 0.054539,
		45.448887, 33.527451, 21.495371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989876, 34.117424, 20.918682>,  <45.504757, 34.224174, 21.457195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989876, 34.117424, 20.918682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.015759, 33.798286, 21.158434>,  <45.031288, 33.606804, 21.302284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.015759, 33.798286, 21.158434>,  <44.989876, 34.117424, 20.918682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015759, 33.798286, 21.158434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964398, 0.104344, 0.243001,
		-0.256419, -0.593762, -0.762690,
		0.064702, -0.797846, 0.599378,
		45.035168, 33.558933, 21.338247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245644, 33.910400, 20.929482>,  <44.989876, 34.117424, 20.918682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245644, 33.910400, 20.929482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.397892, 33.683605, 21.221687>,  <44.489243, 33.547527, 21.397011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.397892, 33.683605, 21.221687>,  <44.245644, 33.910400, 20.929482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397892, 33.683605, 21.221687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855648, 0.083659, 0.510753,
		-0.350706, -0.819465, -0.453302,
		0.380621, -0.566991, 0.730513,
		44.512077, 33.513508, 21.440842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806408, 33.432556, 21.068176>,  <44.245644, 33.910400, 20.929482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806408, 33.432556, 21.068176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.014267, 33.454731, 21.409208>,  <44.138985, 33.468037, 21.613827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.014267, 33.454731, 21.409208>,  <43.806408, 33.432556, 21.068176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014267, 33.454731, 21.409208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853022, 0.089864, 0.514079,
		-0.048118, -0.994410, 0.093985,
		0.519651, 0.055435, 0.852578,
		44.170162, 33.471363, 21.664982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444382, 32.911076, 21.498964>,  <43.806408, 33.432556, 21.068176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444382, 32.911076, 21.498964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.650333, 33.158386, 21.736496>,  <43.773903, 33.306774, 21.879015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.650333, 33.158386, 21.736496>,  <43.444382, 32.911076, 21.498964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650333, 33.158386, 21.736496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811434, 0.128029, 0.570248,
		0.276546, -0.775460, 0.567613,
		0.514876, 0.618280, 0.593829,
		43.804794, 33.343868, 21.914644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132553, 32.725948, 22.133389>,  <43.444382, 32.911076, 21.498964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132553, 32.725948, 22.133389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.322830, 33.069798, 22.207970>,  <43.436996, 33.276108, 22.252718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.322830, 33.069798, 22.207970>,  <43.132553, 32.725948, 22.133389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322830, 33.069798, 22.207970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642745, 0.194983, 0.740851,
		0.600500, -0.472256, 0.645271,
		0.475688, 0.859625, 0.186453,
		43.465538, 33.327686, 22.263906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131474, 32.856812, 22.846720>,  <43.132553, 32.725948, 22.133389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131474, 32.856812, 22.846720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.215496, 33.226273, 22.718506>,  <43.265907, 33.447948, 22.641577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.215496, 33.226273, 22.718506>,  <43.131474, 32.856812, 22.846720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215496, 33.226273, 22.718506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359694, 0.377865, 0.853134,
		0.909119, -0.063909, 0.411604,
		0.210054, 0.923653, -0.320536,
		43.278511, 33.503368, 22.622345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563580, 33.179573, 23.392017>,  <43.131474, 32.856812, 22.846720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563580, 33.179573, 23.392017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379669, 33.468639, 23.185574>,  <43.269321, 33.642078, 23.061708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379669, 33.468639, 23.185574>,  <43.563580, 33.179573, 23.392017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379669, 33.468639, 23.185574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476970, 0.289273, 0.829952,
		0.749071, 0.627759, 0.211687,
		-0.459774, 0.722662, -0.516108,
		43.241737, 33.685436, 23.030741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791435, 33.746777, 23.822674>,  <43.563580, 33.179573, 23.392017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791435, 33.746777, 23.822674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466236, 33.849052, 23.613422>,  <43.271118, 33.910416, 23.487871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466236, 33.849052, 23.613422>,  <43.791435, 33.746777, 23.822674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466236, 33.849052, 23.613422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483764, 0.203400, 0.851235,
		0.324054, 0.945120, -0.041671,
		-0.812995, 0.255688, -0.523128,
		43.222336, 33.925758, 23.456484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571941, 34.380028, 24.051043>,  <43.791435, 33.746777, 23.822674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571941, 34.380028, 24.051043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251938, 34.213402, 23.878321>,  <43.059937, 34.113426, 23.774687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251938, 34.213402, 23.878321>,  <43.571941, 34.380028, 24.051043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251938, 34.213402, 23.878321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546236, 0.207954, 0.811407,
		-0.248207, 0.885003, -0.393907,
		-0.800012, -0.416563, -0.431805,
		43.011932, 34.088432, 23.748779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018036, 34.771000, 24.391005>,  <43.571941, 34.380028, 24.051043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018036, 34.771000, 24.391005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831192, 34.452187, 24.237881>,  <42.719086, 34.260899, 24.146008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831192, 34.452187, 24.237881>,  <43.018036, 34.771000, 24.391005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831192, 34.452187, 24.237881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533186, -0.091463, 0.841039,
		-0.705349, 0.596969, -0.382243,
		-0.467114, -0.797033, -0.382809,
		42.691059, 34.213078, 24.123037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308327, 34.868851, 24.407347>,  <43.018036, 34.771000, 24.391005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308327, 34.868851, 24.407347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.333679, 34.469837, 24.395311>,  <42.348888, 34.230427, 24.388090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.333679, 34.469837, 24.395311>,  <42.308327, 34.868851, 24.407347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333679, 34.469837, 24.395311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573989, -0.061097, 0.816581,
		-0.816407, -0.034484, -0.576447,
		0.063378, -0.997536, -0.030087,
		42.352692, 34.170578, 24.386286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617325, 34.643761, 24.605965>,  <42.308327, 34.868851, 24.407347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617325, 34.643761, 24.605965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857899, 34.326134, 24.641144>,  <42.002243, 34.135559, 24.662252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857899, 34.326134, 24.641144>,  <41.617325, 34.643761, 24.605965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857899, 34.326134, 24.641144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556692, -0.337572, 0.759038,
		-0.573039, -0.505470, -0.645078,
		0.601431, -0.794069, 0.087949,
		42.038330, 34.087914, 24.667528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175705, 34.073391, 24.696611>,  <41.617325, 34.643761, 24.605965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175705, 34.073391, 24.696611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.528629, 33.956375, 24.844091>,  <41.740383, 33.886166, 24.932579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.528629, 33.956375, 24.844091>,  <41.175705, 34.073391, 24.696611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528629, 33.956375, 24.844091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454466, -0.325829, 0.829033,
		-0.122394, -0.899030, -0.420434,
		0.882315, -0.292542, 0.368699,
		41.793324, 33.868610, 24.954700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055962, 33.437950, 24.958498>,  <41.175705, 34.073391, 24.696611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055962, 33.437950, 24.958498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394703, 33.551731, 25.138241>,  <41.597946, 33.619999, 25.246086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394703, 33.551731, 25.138241>,  <41.055962, 33.437950, 24.958498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394703, 33.551731, 25.138241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339750, -0.360678, 0.868609,
		0.409154, -0.888255, -0.208798,
		0.846855, 0.284456, 0.449357,
		41.648758, 33.637066, 25.273048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182339, 32.877895, 25.333275>,  <41.055962, 33.437950, 24.958498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182339, 32.877895, 25.333275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366127, 33.198288, 25.486803>,  <41.476398, 33.390522, 25.578920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366127, 33.198288, 25.486803>,  <41.182339, 32.877895, 25.333275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366127, 33.198288, 25.486803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179250, -0.339620, 0.923324,
		0.869918, -0.493038, -0.012469,
		0.459469, 0.800981, 0.383818,
		41.503967, 33.438583, 25.601948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545132, 32.607731, 25.806192>,  <41.182339, 32.877895, 25.333275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545132, 32.607731, 25.806192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524220, 32.992550, 25.913330>,  <41.511673, 33.223442, 25.977613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524220, 32.992550, 25.913330>,  <41.545132, 32.607731, 25.806192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524220, 32.992550, 25.913330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195706, -0.272880, 0.941932,
		0.979268, -0.003175, 0.202543,
		-0.052279, 0.962043, 0.267844,
		41.508537, 33.281162, 25.993683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821075, 32.672096, 26.489763>,  <41.545132, 32.607731, 25.806192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821075, 32.672096, 26.489763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.563133, 32.972008, 26.430445>,  <41.408367, 33.151955, 26.394854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.563133, 32.972008, 26.430445>,  <41.821075, 32.672096, 26.489763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563133, 32.972008, 26.430445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249373, -0.022996, 0.968134,
		0.722476, 0.661290, 0.201803,
		-0.644858, 0.749778, -0.148294,
		41.369675, 33.196941, 26.385956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903172, 33.032814, 27.081242>,  <41.821075, 32.672096, 26.489763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903172, 33.032814, 27.081242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540749, 33.151199, 26.960270>,  <41.323296, 33.222229, 26.887688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540749, 33.151199, 26.960270>,  <41.903172, 33.032814, 27.081242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540749, 33.151199, 26.960270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341437, -0.089162, 0.935666,
		0.249958, 0.951029, 0.181839,
		-0.906058, 0.295964, -0.302430,
		41.268932, 33.239990, 26.869541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.515720, 34.244625, 32.843208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295689, 34.532372, 32.673538>,  <42.163670, 34.705021, 32.571735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295689, 34.532372, 32.673538>,  <42.515720, 34.244625, 32.843208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295689, 34.532372, 32.673538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352567, 0.260391, 0.898829,
		0.757037, 0.643979, 0.110388,
		-0.550083, 0.719366, -0.424171,
		42.130665, 34.748180, 32.546288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554497, 34.818638, 33.309547>,  <42.515720, 34.244625, 32.843208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554497, 34.818638, 33.309547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227634, 34.890537, 33.090481>,  <42.031517, 34.933678, 32.959042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227634, 34.890537, 33.090481>,  <42.554497, 34.818638, 33.309547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227634, 34.890537, 33.090481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449662, 0.395654, 0.800788,
		0.360631, 0.900637, -0.242484,
		-0.817159, 0.179753, -0.547667,
		41.982487, 34.944462, 32.926182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387455, 35.536980, 33.449211>,  <42.554497, 34.818638, 33.309547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387455, 35.536980, 33.449211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062508, 35.346317, 33.314835>,  <41.867538, 35.231918, 33.234211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062508, 35.346317, 33.314835>,  <42.387455, 35.536980, 33.449211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062508, 35.346317, 33.314835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542691, 0.407146, 0.734656,
		-0.213401, 0.779123, -0.589430,
		-0.812371, -0.476655, -0.335938,
		41.818798, 35.203320, 33.214054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827477, 35.995686, 33.660015>,  <42.387455, 35.536980, 33.449211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827477, 35.995686, 33.660015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.631474, 35.665546, 33.547802>,  <41.513870, 35.467464, 33.480476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.631474, 35.665546, 33.547802>,  <41.827477, 35.995686, 33.660015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631474, 35.665546, 33.547802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665284, 0.146125, 0.732151,
		-0.563285, 0.545391, -0.620691,
		-0.490008, -0.825346, -0.280530,
		41.484470, 35.417942, 33.463642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157867, 36.146614, 33.669048>,  <41.827477, 35.995686, 33.660015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157867, 36.146614, 33.669048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.149994, 35.747223, 33.689655>,  <41.145271, 35.507587, 33.702019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.149994, 35.747223, 33.689655>,  <41.157867, 36.146614, 33.669048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149994, 35.747223, 33.689655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840558, 0.044429, 0.539897,
		-0.541364, -0.032681, -0.840153,
		-0.019683, -0.998478, 0.051522,
		41.144089, 35.447678, 33.705112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484173, 35.948204, 33.526310>,  <41.157867, 36.146614, 33.669048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484173, 35.948204, 33.526310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647079, 35.665493, 33.757690>,  <40.744823, 35.495869, 33.896519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647079, 35.665493, 33.757690>,  <40.484173, 35.948204, 33.526310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647079, 35.665493, 33.757690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839948, -0.041139, 0.541105,
		-0.358643, -0.706242, -0.610408,
		0.407263, -0.706774, 0.578452,
		40.769257, 35.453461, 33.931225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935104, 35.439144, 33.675266>,  <40.484173, 35.948204, 33.526310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935104, 35.439144, 33.675266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218521, 35.347485, 33.942238>,  <40.388573, 35.292488, 34.102421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218521, 35.347485, 33.942238>,  <39.935104, 35.439144, 33.675266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218521, 35.347485, 33.942238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704709, -0.180464, 0.686162,
		-0.036788, -0.956516, -0.289352,
		0.708542, -0.229151, 0.667426,
		40.431084, 35.278740, 34.142467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688683, 34.872795, 33.963844>,  <39.935104, 35.439144, 33.675266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688683, 34.872795, 33.963844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958717, 35.018471, 34.220474>,  <40.120739, 35.105877, 34.374451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958717, 35.018471, 34.220474>,  <39.688683, 34.872795, 33.963844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958717, 35.018471, 34.220474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672496, -0.053760, 0.738146,
		0.303317, -0.929771, 0.208624,
		0.675091, 0.364191, 0.641574,
		40.161243, 35.127728, 34.412945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567448, 34.504177, 34.571877>,  <39.688683, 34.872795, 33.963844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567448, 34.504177, 34.571877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769302, 34.834694, 34.671947>,  <39.890415, 35.033005, 34.731991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769302, 34.834694, 34.671947>,  <39.567448, 34.504177, 34.571877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769302, 34.834694, 34.671947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462981, 0.014422, 0.886251,
		0.728694, -0.563058, 0.389835,
		0.504633, 0.826292, 0.250176,
		39.920692, 35.082581, 34.747002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865211, 34.426884, 35.244484>,  <39.567448, 34.504177, 34.571877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865211, 34.426884, 35.244484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.884525, 34.824085, 35.201382>,  <39.896114, 35.062405, 35.175522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.884525, 34.824085, 35.201382>,  <39.865211, 34.426884, 35.244484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884525, 34.824085, 35.201382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373217, 0.118001, 0.920209,
		0.926487, -0.004221, 0.376304,
		0.048288, 0.993004, -0.107751,
		39.899014, 35.121986, 35.169056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223053, 34.640987, 35.862320>,  <39.865211, 34.426884, 35.244484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223053, 34.640987, 35.862320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002274, 34.936062, 35.706795>,  <39.869808, 35.113106, 35.613480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002274, 34.936062, 35.706795>,  <40.223053, 34.640987, 35.862320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002274, 34.936062, 35.706795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483371, 0.096909, 0.870035,
		0.679493, 0.668152, 0.303088,
		-0.551944, 0.737686, -0.388815,
		39.836689, 35.157368, 35.590149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157986, 35.097363, 36.349350>,  <40.223053, 34.640987, 35.862320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157986, 35.097363, 36.349350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857162, 35.185375, 36.100838>,  <39.676666, 35.238182, 35.951729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857162, 35.185375, 36.100838>,  <40.157986, 35.097363, 36.349350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857162, 35.185375, 36.100838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622611, 0.072103, 0.779203,
		0.216243, 0.972825, 0.082766,
		-0.752061, 0.220028, -0.621283,
		39.631546, 35.251385, 35.914452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820347, 35.627708, 36.675880>,  <40.157986, 35.097363, 36.349350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820347, 35.627708, 36.675880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546494, 35.467735, 36.432133>,  <39.382183, 35.371750, 36.285885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546494, 35.467735, 36.432133>,  <39.820347, 35.627708, 36.675880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546494, 35.467735, 36.432133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700476, 0.129844, 0.701765,
		-0.201535, 0.907301, -0.369038,
		-0.684630, -0.399932, -0.609374,
		39.341106, 35.347755, 36.249321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243168, 36.066200, 36.651012>,  <39.820347, 35.627708, 36.675880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243168, 36.066200, 36.651012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111874, 35.695354, 36.578663>,  <39.033096, 35.472847, 36.535252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111874, 35.695354, 36.578663>,  <39.243168, 36.066200, 36.651012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111874, 35.695354, 36.578663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627818, 0.071050, 0.775110,
		-0.705766, 0.367977, -0.605382,
		-0.328235, -0.927117, -0.180878,
		39.013405, 35.417221, 36.524399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724056, 36.689804, 36.732662>,  <39.243168, 36.066200, 36.651012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724056, 36.689804, 36.732662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480446, 37.007065, 36.732586>,  <39.334282, 37.197422, 36.732540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480446, 37.007065, 36.732586>,  <39.724056, 36.689804, 36.732662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480446, 37.007065, 36.732586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267342, 0.205057, -0.941531,
		-0.746738, -0.573465, -0.336927,
		-0.609024, 0.793152, -0.000187,
		39.297737, 37.245010, 36.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403343, 36.635895, 36.144775>,  <39.724056, 36.689804, 36.732662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403343, 36.635895, 36.144775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360744, 37.018936, 36.251846>,  <39.335186, 37.248760, 36.316090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360744, 37.018936, 36.251846>,  <39.403343, 36.635895, 36.144775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360744, 37.018936, 36.251846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213778, 0.284959, -0.934397,
		-0.971060, -0.042285, -0.235062,
		-0.106494, 0.957607, 0.267673,
		39.328796, 37.306217, 36.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160851, 36.892258, 35.535561>,  <39.403343, 36.635895, 36.144775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160851, 36.892258, 35.535561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280750, 37.215988, 35.737606>,  <39.352688, 37.410225, 35.858833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280750, 37.215988, 35.737606>,  <39.160851, 36.892258, 35.535561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280750, 37.215988, 35.737606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308377, 0.418843, -0.854093,
		-0.902805, 0.411777, -0.124031,
		0.299746, 0.809327, 0.505116,
		39.370674, 37.458786, 35.889141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840034, 37.434254, 35.238899>,  <39.160851, 36.892258, 35.535561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840034, 37.434254, 35.238899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156570, 37.591164, 35.426472>,  <39.346493, 37.685310, 35.539017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156570, 37.591164, 35.426472>,  <38.840034, 37.434254, 35.238899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156570, 37.591164, 35.426472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342055, 0.351659, -0.871398,
		-0.506734, 0.849973, 0.144102,
		0.791340, 0.392277, 0.468936,
		39.393970, 37.708847, 35.567154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952389, 38.034977, 34.728306>,  <38.840034, 37.434254, 35.238899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952389, 38.034977, 34.728306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286148, 37.949245, 34.931419>,  <39.486404, 37.897808, 35.053288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286148, 37.949245, 34.931419>,  <38.952389, 38.034977, 34.728306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286148, 37.949245, 34.931419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549208, 0.400861, -0.733267,
		-0.046392, 0.890716, 0.452188,
		0.834397, -0.214327, 0.507785,
		39.536469, 37.884949, 35.083755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368980, 38.538502, 34.607380>,  <38.952389, 38.034977, 34.728306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368980, 38.538502, 34.607380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632214, 38.270683, 34.745152>,  <39.790154, 38.109993, 34.827816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632214, 38.270683, 34.745152>,  <39.368980, 38.538502, 34.607380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632214, 38.270683, 34.745152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656224, 0.285722, -0.698379,
		0.369186, 0.685616, 0.627401,
		0.658082, -0.669548, 0.344433,
		39.829639, 38.069820, 34.848480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944130, 38.836628, 34.607468>,  <39.368980, 38.538502, 34.607380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944130, 38.836628, 34.607468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072525, 38.457912, 34.616863>,  <40.149563, 38.230682, 34.622501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072525, 38.457912, 34.616863>,  <39.944130, 38.836628, 34.607468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072525, 38.457912, 34.616863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739674, 0.235126, -0.630554,
		0.591480, 0.219777, 0.775790,
		0.320989, -0.946791, 0.023491,
		40.168823, 38.173874, 34.623909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593914, 38.774033, 34.861286>,  <39.944130, 38.836628, 34.607468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593914, 38.774033, 34.861286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550480, 38.442726, 34.641399>,  <40.524418, 38.243942, 34.509468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550480, 38.442726, 34.641399>,  <40.593914, 38.774033, 34.861286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550480, 38.442726, 34.641399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752685, 0.292722, -0.589728,
		0.649365, -0.477798, 0.591638,
		-0.108585, -0.828265, -0.549715,
		40.517906, 38.194248, 34.476486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258732, 38.591820, 34.684387>,  <40.593914, 38.774033, 34.861286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258732, 38.591820, 34.684387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050800, 38.370060, 34.424412>,  <40.926041, 38.237003, 34.268425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050800, 38.370060, 34.424412>,  <41.258732, 38.591820, 34.684387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050800, 38.370060, 34.424412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752589, 0.062793, -0.655490,
		0.404212, -0.829882, 0.384590,
		-0.519829, -0.554395, -0.649941,
		40.894852, 38.203743, 34.229431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770733, 38.266678, 34.346798>,  <41.258732, 38.591820, 34.684387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770733, 38.266678, 34.346798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.463844, 38.194843, 34.100506>,  <41.279713, 38.151745, 33.952732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.463844, 38.194843, 34.100506>,  <41.770733, 38.266678, 34.346798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463844, 38.194843, 34.100506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639123, -0.133532, -0.757424,
		0.053801, -0.974638, 0.217224,
		-0.767220, -0.179583, -0.615730,
		41.233677, 38.140968, 33.915787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995049, 37.774452, 33.877319>,  <41.770733, 38.266678, 34.346798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995049, 37.774452, 33.877319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.687595, 37.943523, 33.685261>,  <41.503124, 38.044968, 33.570026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.687595, 37.943523, 33.685261>,  <41.995049, 37.774452, 33.877319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687595, 37.943523, 33.685261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518810, -0.027177, -0.854457,
		-0.374213, -0.905870, -0.198402,
		-0.768636, 0.422682, -0.480145,
		41.457005, 38.070328, 33.541218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674175, 37.259720, 33.443104>,  <41.995049, 37.774452, 33.877319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674175, 37.259720, 33.443104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630074, 37.635494, 33.313301>,  <41.603611, 37.860958, 33.235420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630074, 37.635494, 33.313301>,  <41.674175, 37.259720, 33.443104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630074, 37.635494, 33.313301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505878, -0.227996, -0.831929,
		-0.855530, -0.255882, -0.450103,
		-0.110254, 0.939437, -0.324502,
		41.596996, 37.917324, 33.215950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506298, 37.210388, 32.705856>,  <41.674175, 37.259720, 33.443104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506298, 37.210388, 32.705856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.648819, 37.578739, 32.769138>,  <41.734333, 37.799751, 32.807106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.648819, 37.578739, 32.769138>,  <41.506298, 37.210388, 32.705856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648819, 37.578739, 32.769138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511954, -0.050771, -0.857511,
		-0.781632, 0.386528, -0.489538,
		0.356306, 0.920879, 0.158201,
		41.755711, 37.855003, 32.816597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528622, 37.446381, 32.048412>,  <41.506298, 37.210388, 32.705856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528622, 37.446381, 32.048412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753899, 37.709599, 32.248325>,  <41.889065, 37.867531, 32.368275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753899, 37.709599, 32.248325>,  <41.528622, 37.446381, 32.048412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753899, 37.709599, 32.248325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709705, -0.075419, -0.700450,
		-0.423237, 0.749189, -0.509496,
		0.563195, 0.658049, 0.499783,
		41.922855, 37.907013, 32.398262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141270, 38.102436, 31.604204>,  <41.528622, 37.446381, 32.048412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141270, 38.102436, 31.604204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911057, 38.357422, 31.399305>,  <40.772926, 38.510414, 31.276365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911057, 38.357422, 31.399305>,  <41.141270, 38.102436, 31.604204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911057, 38.357422, 31.399305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764030, -0.195809, 0.614750,
		0.291578, 0.745184, 0.599736,
		-0.575536, 0.637463, -0.512249,
		40.738396, 38.548660, 31.245630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842480, 38.589840, 32.047691>,  <41.141270, 38.102436, 31.604204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842480, 38.589840, 32.047691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.595684, 38.579094, 31.733088>,  <40.447605, 38.572647, 31.544325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.595684, 38.579094, 31.733088>,  <40.842480, 38.589840, 32.047691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595684, 38.579094, 31.733088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737302, -0.329702, 0.589646,
		-0.275154, 0.943703, 0.183617,
		-0.616990, -0.026862, -0.786513,
		40.410587, 38.571033, 31.497133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286503, 39.046074, 32.228161>,  <40.842480, 38.589840, 32.047691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286503, 39.046074, 32.228161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144157, 38.815533, 31.933903>,  <40.058750, 38.677208, 31.757347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144157, 38.815533, 31.933903>,  <40.286503, 39.046074, 32.228161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144157, 38.815533, 31.933903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896454, -0.011893, 0.442977,
		-0.264061, 0.817113, -0.512443,
		-0.355868, -0.576354, -0.735645,
		40.037395, 38.642628, 31.713209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707565, 39.400368, 32.073692>,  <40.286503, 39.046074, 32.228161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707565, 39.400368, 32.073692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673782, 39.030788, 31.924467>,  <39.653511, 38.809040, 31.834930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673782, 39.030788, 31.924467>,  <39.707565, 39.400368, 32.073692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673782, 39.030788, 31.924467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884875, -0.102586, 0.454393,
		-0.458109, 0.368495, -0.808918,
		-0.084458, -0.923952, -0.373068,
		39.648445, 38.753601, 31.812548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067047, 39.361900, 31.856907>,  <39.707565, 39.400368, 32.073692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067047, 39.361900, 31.856907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175137, 38.981365, 31.916149>,  <39.239990, 38.753044, 31.951694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175137, 38.981365, 31.916149>,  <39.067047, 39.361900, 31.856907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175137, 38.981365, 31.916149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752189, -0.112581, 0.649259,
		-0.600991, -0.286848, -0.746008,
		0.270225, -0.951338, 0.148104,
		39.256203, 38.695965, 31.960581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475105, 39.058357, 31.932619>,  <39.067047, 39.361900, 31.856907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475105, 39.058357, 31.932619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693100, 38.759342, 32.084503>,  <38.823895, 38.579933, 32.175632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693100, 38.759342, 32.084503>,  <38.475105, 39.058357, 31.932619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693100, 38.759342, 32.084503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731657, -0.202836, 0.650796,
		-0.409474, -0.632492, -0.657483,
		0.544984, -0.747537, 0.379711,
		38.856594, 38.535080, 32.198418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041142, 38.565845, 31.912834>,  <38.475105, 39.058357, 31.932619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041142, 38.565845, 31.912834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.314880, 38.455830, 32.182953>,  <38.479122, 38.389820, 32.345024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.314880, 38.455830, 32.182953>,  <38.041142, 38.565845, 31.912834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314880, 38.455830, 32.182953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725660, -0.166316, 0.667650,
		-0.071313, -0.946940, -0.313399,
		0.684348, -0.275033, 0.675296,
		38.520184, 38.373318, 32.385540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703468, 38.028545, 32.300808>,  <38.041142, 38.565845, 31.912834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703468, 38.028545, 32.300808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018032, 38.124283, 32.528587>,  <38.206768, 38.181725, 32.665257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018032, 38.124283, 32.528587>,  <37.703468, 38.028545, 32.300808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018032, 38.124283, 32.528587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532063, -0.205860, 0.821298,
		0.313804, -0.948859, -0.034541,
		0.786407, 0.239349, 0.569452,
		38.253956, 38.196087, 32.699425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678764, 37.561214, 32.816391>,  <37.703468, 38.028545, 32.300808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678764, 37.561214, 32.816391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897423, 37.850761, 32.984768>,  <38.028618, 38.024490, 33.085793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897423, 37.850761, 32.984768>,  <37.678764, 37.561214, 32.816391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897423, 37.850761, 32.984768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649033, 0.048647, 0.759204,
		0.529086, -0.688221, 0.496406,
		0.546649, 0.723868, 0.420940,
		38.061417, 38.067921, 33.111050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806911, 37.303085, 33.540253>,  <37.678764, 37.561214, 32.816391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806911, 37.303085, 33.540253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.894199, 37.693321, 33.550041>,  <37.946571, 37.927464, 33.555916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.894199, 37.693321, 33.550041>,  <37.806911, 37.303085, 33.540253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894199, 37.693321, 33.550041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537158, 0.099137, 0.837635,
		0.814765, -0.195934, 0.545682,
		0.218219, 0.975593, 0.024474,
		37.959663, 37.986000, 33.557384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206394, 37.514977, 34.164272>,  <37.806911, 37.303085, 33.540253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206394, 37.514977, 34.164272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002247, 37.824669, 34.014553>,  <37.879761, 38.010483, 33.924721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002247, 37.824669, 34.014553>,  <38.206394, 37.514977, 34.164272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002247, 37.824669, 34.014553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512390, 0.075783, 0.855403,
		0.690641, 0.628355, 0.358029,
		-0.510364, 0.774226, -0.374302,
		37.849136, 38.056938, 33.902264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081894, 37.850170, 34.711536>,  <38.206394, 37.514977, 34.164272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081894, 37.850170, 34.711536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831055, 38.050621, 34.473000>,  <37.680550, 38.170891, 34.329880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831055, 38.050621, 34.473000>,  <38.081894, 37.850170, 34.711536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831055, 38.050621, 34.473000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608947, 0.162000, 0.776492,
		0.485730, 0.850074, 0.203571,
		-0.627097, 0.501130, -0.596338,
		37.642925, 38.200958, 34.294098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.642040, 39.800884, 28.759745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318436, 39.635536, 28.592594>,  <43.124271, 39.536327, 28.492304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318436, 39.635536, 28.592594>,  <43.642040, 39.800884, 28.759745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318436, 39.635536, 28.592594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440215, -0.044987, 0.896765,
		-0.389499, 0.909449, -0.145579,
		-0.809013, -0.413375, -0.417875,
		43.075733, 39.511524, 28.467232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005695, 40.240101, 29.094593>,  <43.642040, 39.800884, 28.759745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005695, 40.240101, 29.094593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843792, 39.919559, 28.918406>,  <42.746651, 39.727234, 28.812693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843792, 39.919559, 28.918406>,  <43.005695, 40.240101, 29.094593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843792, 39.919559, 28.918406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551022, -0.170671, 0.816851,
		-0.729759, 0.573331, -0.372482,
		-0.404754, -0.801351, -0.440467,
		42.722366, 39.679153, 28.786266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269840, 40.341442, 29.106920>,  <43.005695, 40.240101, 29.094593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269840, 40.341442, 29.106920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334141, 39.947914, 29.075272>,  <42.372723, 39.711800, 29.056282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334141, 39.947914, 29.075272>,  <42.269840, 40.341442, 29.106920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334141, 39.947914, 29.075272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669763, -0.167615, 0.723411,
		-0.724966, -0.063298, -0.685870,
		0.160753, -0.983818, -0.079121,
		42.382366, 39.652767, 29.051535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604473, 40.088100, 29.032290>,  <42.269840, 40.341442, 29.106920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604473, 40.088100, 29.032290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817364, 39.774517, 29.160130>,  <41.945099, 39.586369, 29.236834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817364, 39.774517, 29.160130>,  <41.604473, 40.088100, 29.032290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817364, 39.774517, 29.160130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696318, -0.190641, 0.691952,
		-0.481533, -0.590818, -0.647349,
		0.532228, -0.783958, 0.319597,
		41.977032, 39.539330, 29.256008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184143, 39.576965, 28.985052>,  <41.604473, 40.088100, 29.032290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184143, 39.576965, 28.985052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446499, 39.457951, 29.262548>,  <41.603912, 39.386543, 29.429047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446499, 39.457951, 29.262548>,  <41.184143, 39.576965, 28.985052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446499, 39.457951, 29.262548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752170, -0.180183, 0.633856,
		-0.063593, -0.937554, -0.341977,
		0.655893, -0.297534, 0.693742,
		41.643269, 39.368690, 29.470671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874508, 39.008827, 29.310062>,  <41.184143, 39.576965, 28.985052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874508, 39.008827, 29.310062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151829, 39.089970, 29.586666>,  <41.318222, 39.138657, 29.752628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151829, 39.089970, 29.586666>,  <40.874508, 39.008827, 29.310062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151829, 39.089970, 29.586666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657569, -0.214532, 0.722205,
		0.294855, -0.955419, -0.015343,
		0.693299, 0.202856, 0.691509,
		41.359818, 39.150826, 29.794119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750980, 38.469990, 29.770212>,  <40.874508, 39.008827, 29.310062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750980, 38.469990, 29.770212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968876, 38.743919, 29.963821>,  <41.099613, 38.908276, 30.079987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968876, 38.743919, 29.963821>,  <40.750980, 38.469990, 29.770212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968876, 38.743919, 29.963821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498568, -0.199624, 0.843552,
		0.674306, -0.700833, 0.232688,
		0.544739, 0.684823, 0.484021,
		41.132298, 38.949368, 30.109028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177723, 38.083839, 30.269373>,  <40.750980, 38.469990, 29.770212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177723, 38.083839, 30.269373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126892, 38.466694, 30.373476>,  <41.096394, 38.696407, 30.435938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126892, 38.466694, 30.373476>,  <41.177723, 38.083839, 30.269373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126892, 38.466694, 30.373476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532227, -0.287212, 0.796394,
		0.837010, -0.037310, 0.545915,
		-0.127080, 0.957140, 0.260257,
		41.088768, 38.753838, 30.451553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327606, 38.077442, 30.921930>,  <41.177723, 38.083839, 30.269373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327606, 38.077442, 30.921930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121342, 38.419991, 30.911158>,  <40.997581, 38.625519, 30.904694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121342, 38.419991, 30.911158>,  <41.327606, 38.077442, 30.921930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121342, 38.419991, 30.911158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481208, -0.263466, 0.836077,
		0.708892, 0.444097, 0.547951,
		-0.515665, 0.856367, -0.026934,
		40.966640, 38.676899, 30.903078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846516, 38.009331, 31.509308>,  <41.327606, 38.077442, 30.921930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846516, 38.009331, 31.509308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084164, 38.079144, 31.823395>,  <42.226753, 38.121033, 32.011845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084164, 38.079144, 31.823395>,  <41.846516, 38.009331, 31.509308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084164, 38.079144, 31.823395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804321, -0.117241, -0.582513,
		-0.009609, 0.977646, -0.210036,
		0.594117, 0.174534, 0.785215,
		42.262398, 38.131504, 32.058960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443481, 38.397530, 31.278708>,  <41.846516, 38.009331, 31.509308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443481, 38.397530, 31.278708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577530, 38.242695, 31.622303>,  <42.657959, 38.149796, 31.828461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577530, 38.242695, 31.622303>,  <42.443481, 38.397530, 31.278708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577530, 38.242695, 31.622303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925411, -0.035990, -0.377252,
		0.176944, 0.921340, 0.346155,
		0.335119, -0.387088, 0.858987,
		42.678066, 38.126568, 31.879999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995201, 38.804790, 31.422564>,  <42.443481, 38.397530, 31.278708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995201, 38.804790, 31.422564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040382, 38.454521, 31.610367>,  <43.067490, 38.244358, 31.723049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040382, 38.454521, 31.610367>,  <42.995201, 38.804790, 31.422564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040382, 38.454521, 31.610367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936923, -0.063446, -0.343728,
		0.330782, 0.478715, 0.813274,
		0.112949, -0.875675, 0.469506,
		43.074268, 38.191818, 31.751219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535450, 38.836941, 31.908613>,  <42.995201, 38.804790, 31.422564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535450, 38.836941, 31.908613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512398, 38.448494, 31.815998>,  <43.498566, 38.215427, 31.760429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512398, 38.448494, 31.815998>,  <43.535450, 38.836941, 31.908613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512398, 38.448494, 31.815998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997619, -0.047220, -0.050273,
		0.037888, -0.233885, 0.971526,
		-0.057633, -0.971117, -0.231539,
		43.495110, 38.157158, 31.746536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147800, 38.463608, 32.159359>,  <43.535450, 38.836941, 31.908613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147800, 38.463608, 32.159359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984367, 38.239635, 31.871044>,  <43.886307, 38.105251, 31.698055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984367, 38.239635, 31.871044>,  <44.147800, 38.463608, 32.159359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984367, 38.239635, 31.871044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912266, -0.225631, -0.341849,
		0.028781, -0.797223, 0.602998,
		-0.408585, -0.559934, -0.720786,
		43.861794, 38.071655, 31.654808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741302, 38.142822, 31.976601>,  <44.147800, 38.463608, 32.159359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741302, 38.142822, 31.976601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469368, 38.026554, 31.707283>,  <44.306206, 37.956795, 31.545692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469368, 38.026554, 31.707283>,  <44.741302, 38.142822, 31.976601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469368, 38.026554, 31.707283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733357, -0.266692, -0.625351,
		0.002207, -0.918905, 0.394472,
		-0.679841, -0.290669, -0.673297,
		44.265415, 37.939354, 31.505295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874775, 37.471962, 31.807713>,  <44.741302, 38.142822, 31.976601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874775, 37.471962, 31.807713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680748, 37.633389, 31.497398>,  <44.564331, 37.730244, 31.311209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680748, 37.633389, 31.497398>,  <44.874775, 37.471962, 31.807713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680748, 37.633389, 31.497398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742478, -0.278619, -0.609178,
		-0.461992, -0.871497, -0.164488,
		-0.485067, 0.403564, -0.775787,
		44.535229, 37.754459, 31.264662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871693, 36.918941, 31.313698>,  <44.874775, 37.471962, 31.807713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871693, 36.918941, 31.313698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800121, 37.255302, 31.109396>,  <44.757179, 37.457119, 30.986814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800121, 37.255302, 31.109396>,  <44.871693, 36.918941, 31.313698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800121, 37.255302, 31.109396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598938, -0.318759, -0.734619,
		-0.780550, -0.437353, -0.446614,
		-0.178926, 0.840901, -0.510755,
		44.746445, 37.507572, 30.956169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678604, 36.825188, 30.520760>,  <44.871693, 36.918941, 31.313698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678604, 36.825188, 30.520760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831608, 37.194344, 30.538502>,  <44.923409, 37.415836, 30.549147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831608, 37.194344, 30.538502>,  <44.678604, 36.825188, 30.520760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831608, 37.194344, 30.538502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576010, -0.200654, -0.792433,
		-0.722426, 0.328661, -0.608344,
		0.382508, 0.922887, 0.044355,
		44.946362, 37.471210, 30.551807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634079, 37.006176, 29.892950>,  <44.678604, 36.825188, 30.520760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634079, 37.006176, 29.892950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904995, 37.283947, 29.990150>,  <45.067543, 37.450611, 30.048471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904995, 37.283947, 29.990150>,  <44.634079, 37.006176, 29.892950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904995, 37.283947, 29.990150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545267, -0.252048, -0.799472,
		-0.493928, 0.673974, -0.549358,
		0.677288, 0.694428, 0.243003,
		45.108181, 37.492275, 30.063051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777431, 37.407318, 29.263220>,  <44.634079, 37.006176, 29.892950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777431, 37.407318, 29.263220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078709, 37.485439, 29.514477>,  <45.259476, 37.532314, 29.665230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078709, 37.485439, 29.514477>,  <44.777431, 37.407318, 29.263220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078709, 37.485439, 29.514477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638503, 0.012549, -0.769517,
		-0.158173, 0.980662, -0.115251,
		0.753190, 0.195305, 0.628141,
		45.304665, 37.544029, 29.702919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057987, 37.895329, 28.861000>,  <44.777431, 37.407318, 29.263220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057987, 37.895329, 28.861000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321274, 37.773247, 29.136274>,  <45.479244, 37.699997, 29.301439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321274, 37.773247, 29.136274>,  <45.057987, 37.895329, 28.861000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321274, 37.773247, 29.136274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660038, -0.205702, -0.722521,
		0.362078, 0.929805, 0.066050,
		0.658217, -0.305204, 0.688186,
		45.518738, 37.681686, 29.342730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633755, 38.278496, 28.740141>,  <45.057987, 37.895329, 28.861000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633755, 38.278496, 28.740141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770977, 37.955891, 28.932745>,  <45.853310, 37.762329, 29.048307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770977, 37.955891, 28.932745>,  <45.633755, 38.278496, 28.740141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770977, 37.955891, 28.932745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618056, -0.192201, -0.762277,
		0.707331, 0.559106, 0.432532,
		0.343060, -0.806511, 0.481508,
		45.873894, 37.713936, 29.077198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406307, 38.359283, 28.746914>,  <45.633755, 38.278496, 28.740141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406307, 38.359283, 28.746914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292164, 37.975956, 28.752583>,  <46.223679, 37.745960, 28.755983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292164, 37.975956, 28.752583>,  <46.406307, 38.359283, 28.746914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292164, 37.975956, 28.752583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767763, -0.237418, -0.595124,
		0.573682, -0.158942, 0.803509,
		-0.285358, -0.958316, 0.014173,
		46.206558, 37.688461, 28.756834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.022575, 34.565605, 24.300310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237610, 34.821705, 24.519793>,  <39.366631, 34.975365, 24.651482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237610, 34.821705, 24.519793>,  <39.022575, 34.565605, 24.300310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237610, 34.821705, 24.519793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621311, -0.139167, 0.771106,
		0.570062, -0.755455, 0.322980,
		0.537588, 0.640249, 0.548706,
		39.398888, 35.013779, 24.684404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996696, 34.234638, 24.908052>,  <39.022575, 34.565605, 24.300310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996696, 34.234638, 24.908052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106827, 34.610004, 24.991545>,  <39.172905, 34.835224, 25.041641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106827, 34.610004, 24.991545>,  <38.996696, 34.234638, 24.908052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106827, 34.610004, 24.991545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642429, 0.018072, 0.766132,
		0.715179, -0.345029, 0.607843,
		0.275323, 0.938418, 0.208732,
		39.189423, 34.891529, 25.054165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464630, 34.227924, 25.565420>,  <38.996696, 34.234638, 24.908052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464630, 34.227924, 25.565420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289951, 34.582764, 25.505615>,  <39.185143, 34.795666, 25.469732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289951, 34.582764, 25.505615>,  <39.464630, 34.227924, 25.565420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289951, 34.582764, 25.505615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416945, -0.052314, 0.907425,
		0.797150, 0.458613, 0.392716,
		-0.436701, 0.887095, -0.149514,
		39.158939, 34.848892, 25.460760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444443, 34.466576, 26.185265>,  <39.464630, 34.227924, 25.565420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444443, 34.466576, 26.185265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.219261, 34.743904, 26.005316>,  <39.084152, 34.910301, 25.897346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.219261, 34.743904, 26.005316>,  <39.444443, 34.466576, 26.185265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219261, 34.743904, 26.005316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552246, 0.089417, 0.828872,
		0.614901, 0.715059, 0.332546,
		-0.562957, 0.693322, -0.449871,
		39.050373, 34.951900, 25.870354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557526, 35.126495, 26.541170>,  <39.444443, 34.466576, 26.185265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557526, 35.126495, 26.541170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211674, 35.135735, 26.340420>,  <39.004162, 35.141277, 26.219969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211674, 35.135735, 26.340420>,  <39.557526, 35.126495, 26.541170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211674, 35.135735, 26.340420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481100, 0.249771, 0.840332,
		0.144760, 0.968029, -0.204849,
		-0.864631, 0.023094, -0.501876,
		38.952286, 35.142662, 26.189857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197891, 35.786098, 26.805557>,  <39.557526, 35.126495, 26.541170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197891, 35.786098, 26.805557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910667, 35.553303, 26.652885>,  <38.738335, 35.413624, 26.561283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910667, 35.553303, 26.652885>,  <39.197891, 35.786098, 26.805557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910667, 35.553303, 26.652885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586746, 0.211261, 0.781727,
		-0.374323, 0.785276, -0.493178,
		-0.718060, -0.581989, -0.381678,
		38.695248, 35.378708, 26.538382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612667, 36.166702, 26.882915>,  <39.197891, 35.786098, 26.805557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612667, 36.166702, 26.882915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479382, 35.791065, 26.849274>,  <38.399410, 35.565681, 26.829088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479382, 35.791065, 26.849274>,  <38.612667, 36.166702, 26.882915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479382, 35.791065, 26.849274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515214, 0.106648, 0.850401,
		-0.789636, 0.326697, -0.519370,
		-0.333213, -0.939093, -0.084106,
		38.379417, 35.509338, 26.824041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015541, 36.208645, 27.228577>,  <38.612667, 36.166702, 26.882915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015541, 36.208645, 27.228577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.055275, 35.812927, 27.185797>,  <38.079117, 35.575497, 27.160130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.055275, 35.812927, 27.185797>,  <38.015541, 36.208645, 27.228577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055275, 35.812927, 27.185797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639360, -0.145815, 0.754955,
		-0.762464, -0.006617, -0.646997,
		0.099337, -0.989290, -0.106948,
		38.085075, 35.516140, 27.153711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357441, 35.933216, 27.323177>,  <38.015541, 36.208645, 27.228577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357441, 35.933216, 27.323177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607674, 35.627541, 27.385994>,  <37.757812, 35.444134, 27.423683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607674, 35.627541, 27.385994>,  <37.357441, 35.933216, 27.323177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607674, 35.627541, 27.385994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477381, -0.215752, 0.851797,
		-0.617052, -0.607838, -0.499780,
		0.625583, -0.764189, 0.157040,
		37.795349, 35.398285, 27.433105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942493, 35.379723, 27.546776>,  <37.357441, 35.933216, 27.323177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942493, 35.379723, 27.546776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312729, 35.291542, 27.669855>,  <37.534870, 35.238632, 27.743702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312729, 35.291542, 27.669855>,  <36.942493, 35.379723, 27.546776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312729, 35.291542, 27.669855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365452, -0.308711, 0.878147,
		-0.098600, -0.925256, -0.366305,
		0.925593, -0.220453, 0.307698,
		37.590408, 35.225407, 27.762165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957539, 34.600998, 27.770214>,  <36.942493, 35.379723, 27.546776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957539, 34.600998, 27.770214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257645, 34.789547, 27.955648>,  <37.437710, 34.902676, 28.066908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257645, 34.789547, 27.955648>,  <36.957539, 34.600998, 27.770214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257645, 34.789547, 27.955648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395878, -0.241293, 0.886035,
		0.529513, -0.848284, 0.005573,
		0.750265, 0.471373, 0.463585,
		37.482723, 34.930958, 28.094725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083504, 34.145657, 28.258209>,  <36.957539, 34.600998, 27.770214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083504, 34.145657, 28.258209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292633, 34.447910, 28.416031>,  <37.418110, 34.629265, 28.510723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292633, 34.447910, 28.416031>,  <37.083504, 34.145657, 28.258209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292633, 34.447910, 28.416031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201841, -0.339952, 0.918527,
		0.828202, -0.559862, -0.025215,
		0.522820, 0.755637, 0.394552,
		37.449478, 34.674603, 28.534397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504486, 33.883064, 28.863501>,  <37.083504, 34.145657, 28.258209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504486, 33.883064, 28.863501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437527, 34.275558, 28.901783>,  <37.397350, 34.511055, 28.924751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437527, 34.275558, 28.901783>,  <37.504486, 33.883064, 28.863501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437527, 34.275558, 28.901783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214073, -0.130935, 0.968003,
		0.962367, 0.141554, 0.231974,
		-0.167398, 0.981233, 0.095705,
		37.387306, 34.569927, 28.930494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915939, 34.142467, 29.361120>,  <37.504486, 33.883064, 28.863501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915939, 34.142467, 29.361120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622437, 34.413242, 29.337969>,  <37.446335, 34.575706, 29.324078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622437, 34.413242, 29.337969>,  <37.915939, 34.142467, 29.361120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622437, 34.413242, 29.337969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191280, -0.124085, 0.973661,
		0.651927, 0.725504, 0.220534,
		-0.733760, 0.676939, -0.057879,
		37.402309, 34.616325, 29.320604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538979, 34.239594, 29.854317>,  <37.915939, 34.142467, 29.361120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538979, 34.239594, 29.854317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774967, 33.957928, 30.012352>,  <38.916561, 33.788929, 30.107174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774967, 33.957928, 30.012352>,  <38.538979, 34.239594, 29.854317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774967, 33.957928, 30.012352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452679, -0.116724, -0.884001,
		0.668594, 0.700382, 0.249895,
		0.589969, -0.704160, 0.395089,
		38.951958, 33.746681, 30.130878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302380, 34.352081, 29.718714>,  <38.538979, 34.239594, 29.854317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302380, 34.352081, 29.718714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267708, 33.958042, 29.778130>,  <39.246902, 33.721619, 29.813778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267708, 33.958042, 29.778130>,  <39.302380, 34.352081, 29.718714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267708, 33.958042, 29.778130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600917, -0.170623, -0.780888,
		0.794597, 0.021568, 0.606753,
		-0.086684, -0.985100, 0.148537,
		39.241703, 33.662514, 29.822691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907879, 34.065037, 29.692730>,  <39.302380, 34.352081, 29.718714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907879, 34.065037, 29.692730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.727577, 33.713509, 29.630123>,  <39.619396, 33.502594, 29.592560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.727577, 33.713509, 29.630123>,  <39.907879, 34.065037, 29.692730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727577, 33.713509, 29.630123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624757, -0.185358, -0.758499,
		0.637571, -0.439683, 0.632599,
		-0.450757, -0.878818, -0.156516,
		39.592350, 33.449863, 29.583168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421944, 33.664368, 29.677954>,  <39.907879, 34.065037, 29.692730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421944, 33.664368, 29.677954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126427, 33.474331, 29.486759>,  <39.949116, 33.360310, 29.372042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126427, 33.474331, 29.486759>,  <40.421944, 33.664368, 29.677954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126427, 33.474331, 29.486759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592979, -0.121219, -0.796041,
		0.320253, -0.871546, 0.371276,
		-0.738792, -0.475094, -0.477988,
		39.904789, 33.331802, 29.343363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666367, 33.089096, 29.396214>,  <40.421944, 33.664368, 29.677954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666367, 33.089096, 29.396214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330688, 33.127266, 29.182055>,  <40.129284, 33.150169, 29.053558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330688, 33.127266, 29.182055>,  <40.666367, 33.089096, 29.396214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330688, 33.127266, 29.182055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502903, -0.238533, -0.830777,
		-0.206990, -0.966435, 0.152184,
		-0.839192, 0.095429, -0.535397,
		40.078930, 33.155895, 29.021435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641922, 32.530151, 28.921778>,  <40.666367, 33.089096, 29.396214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641922, 32.530151, 28.921778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.378353, 32.777748, 28.750814>,  <40.220211, 32.926308, 28.648237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.378353, 32.777748, 28.750814>,  <40.641922, 32.530151, 28.921778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378353, 32.777748, 28.750814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354368, -0.245758, -0.902234,
		-0.663513, -0.745958, -0.057416,
		-0.658919, 0.618991, -0.427408,
		40.180679, 32.963444, 28.622593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416882, 32.261616, 28.346432>,  <40.641922, 32.530151, 28.921778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416882, 32.261616, 28.346432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.349396, 32.647541, 28.265757>,  <40.308907, 32.879097, 28.217352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.349396, 32.647541, 28.265757>,  <40.416882, 32.261616, 28.346432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349396, 32.647541, 28.265757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400226, -0.119937, -0.908534,
		-0.900753, -0.234001, -0.365907,
		-0.168712, 0.964810, -0.201687,
		40.298782, 32.936985, 28.205250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511536, 32.236504, 27.678501>,  <40.416882, 32.261616, 28.346432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511536, 32.236504, 27.678501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.460468, 32.630142, 27.727921>,  <40.429829, 32.866325, 27.757572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.460468, 32.630142, 27.727921>,  <40.511536, 32.236504, 27.678501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460468, 32.630142, 27.727921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416804, 0.166268, -0.893661,
		-0.899986, -0.062597, -0.431401,
		-0.127668, 0.984092, 0.123548,
		40.422169, 32.925369, 27.764984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189507, 32.552521, 27.057327>,  <40.511536, 32.236504, 27.678501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189507, 32.552521, 27.057327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415829, 32.822239, 27.247141>,  <40.551624, 32.984070, 27.361029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415829, 32.822239, 27.247141>,  <40.189507, 32.552521, 27.057327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415829, 32.822239, 27.247141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384770, 0.293086, -0.875245,
		-0.729255, 0.677807, -0.093619,
		0.565808, 0.674299, 0.474534,
		40.585571, 33.024529, 27.389502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125736, 33.024826, 26.496815>,  <40.189507, 32.552521, 27.057327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125736, 33.024826, 26.496815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418350, 33.127159, 26.749609>,  <40.593918, 33.188560, 26.901285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418350, 33.127159, 26.749609>,  <40.125736, 33.024826, 26.496815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418350, 33.127159, 26.749609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491982, 0.443661, -0.749078,
		-0.472027, 0.858903, 0.198688,
		0.731535, 0.255834, 0.631985,
		40.637810, 33.203911, 26.939205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235687, 33.774258, 26.350267>,  <40.125736, 33.024826, 26.496815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235687, 33.774258, 26.350267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554440, 33.613190, 26.530416>,  <40.745693, 33.516548, 26.638506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554440, 33.613190, 26.530416>,  <40.235687, 33.774258, 26.350267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554440, 33.613190, 26.530416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600311, 0.444074, -0.665150,
		0.067836, 0.800411, 0.595601,
		0.796885, -0.402667, 0.450372,
		40.793507, 33.492390, 26.665527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699730, 34.304451, 26.277786>,  <40.235687, 33.774258, 26.350267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699730, 34.304451, 26.277786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892559, 33.959827, 26.341450>,  <41.008255, 33.753056, 26.379648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892559, 33.959827, 26.341450>,  <40.699730, 34.304451, 26.277786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892559, 33.959827, 26.341450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731442, 0.295760, -0.614426,
		0.482288, 0.412613, 0.772754,
		0.482069, -0.861555, 0.159161,
		41.037178, 33.701363, 26.389198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452965, 34.482090, 26.416895>,  <40.699730, 34.304451, 26.277786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452965, 34.482090, 26.416895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.487843, 34.103168, 26.293596>,  <41.508770, 33.875816, 26.219618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.487843, 34.103168, 26.293596>,  <41.452965, 34.482090, 26.416895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487843, 34.103168, 26.293596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673101, 0.284131, -0.682791,
		0.734392, -0.147944, 0.662405,
		0.087195, -0.947303, -0.308245,
		41.514000, 33.818977, 26.201122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062416, 34.427902, 26.182016>,  <41.452965, 34.482090, 26.416895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062416, 34.427902, 26.182016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.903328, 34.110592, 25.997612>,  <41.807877, 33.920204, 25.886969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.903328, 34.110592, 25.997612>,  <42.062416, 34.427902, 26.182016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903328, 34.110592, 25.997612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660594, 0.101120, -0.743902,
		0.636737, -0.600407, 0.483816,
		-0.397721, -0.793276, -0.461012,
		41.784012, 33.872608, 25.859308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650513, 34.301395, 26.562973>,  <42.062416, 34.427902, 26.182016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650513, 34.301395, 26.562973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.016827, 34.230076, 26.706947>,  <43.236614, 34.187283, 26.793331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.016827, 34.230076, 26.706947>,  <42.650513, 34.301395, 26.562973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016827, 34.230076, 26.706947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335992, 0.151029, 0.929677,
		-0.220123, -0.972316, 0.078401,
		0.915781, -0.178301, 0.359935,
		43.291561, 34.176586, 26.814928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645668, 33.849068, 27.114977>,  <42.650513, 34.301395, 26.562973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645668, 33.849068, 27.114977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.000122, 34.003361, 27.217718>,  <43.212795, 34.095936, 27.279362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.000122, 34.003361, 27.217718>,  <42.645668, 33.849068, 27.114977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000122, 34.003361, 27.217718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228142, -0.119325, 0.966288,
		0.403377, -0.914862, -0.017737,
		0.886137, 0.385731, 0.256851,
		43.265965, 34.119080, 27.294773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875973, 33.439011, 27.609335>,  <42.645668, 33.849068, 27.114977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875973, 33.439011, 27.609335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.098671, 33.761349, 27.689983>,  <43.232292, 33.954750, 27.738373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.098671, 33.761349, 27.689983>,  <42.875973, 33.439011, 27.609335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098671, 33.761349, 27.689983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256959, -0.063738, 0.964318,
		0.789938, -0.588691, 0.171582,
		0.556749, 0.805841, 0.201619,
		43.265697, 34.003101, 27.750469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291683, 33.365803, 28.359098>,  <42.875973, 33.439011, 27.609335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291683, 33.365803, 28.359098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.261070, 33.744598, 28.234297>,  <43.242702, 33.971878, 28.159416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.261070, 33.744598, 28.234297>,  <43.291683, 33.365803, 28.359098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261070, 33.744598, 28.234297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298082, 0.276880, 0.913501,
		0.951467, 0.162915, 0.261092,
		-0.076532, 0.946993, -0.312004,
		43.238110, 34.028698, 28.140696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693974, 33.836765, 28.836863>,  <43.291683, 33.365803, 28.359098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693974, 33.836765, 28.836863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.435360, 34.089195, 28.665403>,  <43.280193, 34.240654, 28.562527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.435360, 34.089195, 28.665403>,  <43.693974, 33.836765, 28.836863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435360, 34.089195, 28.665403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227793, 0.376552, 0.897953,
		0.728082, 0.678201, -0.099700,
		-0.646535, 0.631072, -0.428650,
		43.241398, 34.278519, 28.536808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836708, 34.412807, 29.168781>,  <43.693974, 33.836765, 28.836863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836708, 34.412807, 29.168781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.462238, 34.436333, 29.030153>,  <43.237556, 34.450447, 28.946976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.462238, 34.436333, 29.030153>,  <43.836708, 34.412807, 29.168781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462238, 34.436333, 29.030153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301774, 0.371190, 0.878152,
		0.180287, 0.926693, -0.329753,
		-0.936178, 0.058808, -0.346572,
		43.181385, 34.453976, 28.926182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578209, 35.010414, 29.421532>,  <43.836708, 34.412807, 29.168781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578209, 35.010414, 29.421532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.228909, 34.846874, 29.315495>,  <43.019329, 34.748753, 29.251871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.228909, 34.846874, 29.315495>,  <43.578209, 35.010414, 29.421532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228909, 34.846874, 29.315495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441470, 0.433570, 0.785571,
		-0.206241, 0.803033, -0.559109,
		-0.873252, -0.408847, -0.265095,
		42.966934, 34.724220, 29.235966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112030, 35.541794, 29.691160>,  <43.578209, 35.010414, 29.421532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112030, 35.541794, 29.691160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.923214, 35.193256, 29.637598>,  <42.809925, 34.984135, 29.605461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.923214, 35.193256, 29.637598>,  <43.112030, 35.541794, 29.691160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923214, 35.193256, 29.637598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544720, 0.168862, 0.821441,
		-0.693149, 0.460696, -0.554350,
		-0.472044, -0.871346, -0.133904,
		42.781601, 34.931854, 29.597427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407001, 35.748043, 29.813915>,  <43.112030, 35.541794, 29.691160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407001, 35.748043, 29.813915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.417328, 35.349934, 29.851353>,  <42.423523, 35.111069, 29.873816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.417328, 35.349934, 29.851353>,  <42.407001, 35.748043, 29.813915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417328, 35.349934, 29.851353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522129, 0.066413, 0.850277,
		-0.852476, -0.070821, -0.517948,
		0.025819, -0.995276, 0.093593,
		42.425076, 35.051350, 29.879431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821014, 35.548569, 29.987968>,  <42.407001, 35.748043, 29.813915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821014, 35.548569, 29.987968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.034420, 35.237225, 30.120342>,  <42.162464, 35.050419, 30.199766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.034420, 35.237225, 30.120342>,  <41.821014, 35.548569, 29.987968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034420, 35.237225, 30.120342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444680, 0.074697, 0.892569,
		-0.719463, -0.623354, -0.306271,
		0.533509, -0.778364, 0.330934,
		42.194473, 35.003716, 30.219622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314762, 35.156593, 30.412029>,  <41.821014, 35.548569, 29.987968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314762, 35.156593, 30.412029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679138, 35.073284, 30.554472>,  <41.897762, 35.023300, 30.639936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679138, 35.073284, 30.554472>,  <41.314762, 35.156593, 30.412029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679138, 35.073284, 30.554472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367546, -0.017736, 0.929836,
		-0.187343, -0.977910, -0.092706,
		0.910940, -0.208272, 0.356105,
		41.952419, 35.010803, 30.661303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240807, 34.653309, 30.956005>,  <41.314762, 35.156593, 30.412029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240807, 34.653309, 30.956005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.608349, 34.794014, 31.027527>,  <41.828873, 34.878437, 31.070440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.608349, 34.794014, 31.027527>,  <41.240807, 34.653309, 30.956005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608349, 34.794014, 31.027527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132591, -0.151550, 0.979516,
		0.371659, -0.923739, -0.092611,
		0.918852, 0.351766, 0.178804,
		41.884007, 34.899544, 31.081167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538002, 34.156891, 31.442635>,  <41.240807, 34.653309, 30.956005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538002, 34.156891, 31.442635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766960, 34.483303, 31.474781>,  <41.904335, 34.679150, 31.494068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766960, 34.483303, 31.474781>,  <41.538002, 34.156891, 31.442635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766960, 34.483303, 31.474781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040566, -0.069709, 0.996742,
		0.818971, -0.573795, -0.006799,
		0.572400, 0.816027, 0.080366,
		41.938679, 34.728111, 31.498890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901855, 33.892292, 32.087566>,  <41.538002, 34.156891, 31.442635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901855, 33.892292, 32.087566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.936935, 34.288116, 32.041809>,  <41.957985, 34.525612, 32.014355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.936935, 34.288116, 32.041809>,  <41.901855, 33.892292, 32.087566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936935, 34.288116, 32.041809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256530, 0.133396, 0.957287,
		0.962549, -0.054609, 0.265550,
		0.087700, 0.989557, -0.114391,
		41.963245, 34.584984, 32.007492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<47.349934, 37.719128, 28.722704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.992100, 37.555271, 28.651253>,  <46.777397, 37.456959, 28.608383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.992100, 37.555271, 28.651253>,  <47.349934, 37.719128, 28.722704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.992100, 37.555271, 28.651253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398263, -0.549462, -0.734492,
		0.202729, -0.728208, 0.654686,
		-0.894588, -0.409640, -0.178626,
		46.723724, 37.432381, 28.597664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561623, 37.085800, 28.615072>,  <47.349934, 37.719128, 28.722704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561623, 37.085800, 28.615072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.188053, 37.092892, 28.472256>,  <46.963913, 37.097145, 28.386566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.188053, 37.092892, 28.472256>,  <47.561623, 37.085800, 28.615072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.188053, 37.092892, 28.472256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306548, -0.474104, -0.825381,
		-0.183905, -0.880290, 0.437342,
		-0.933920, 0.017726, -0.357042,
		46.907879, 37.098209, 28.365143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.425697, 36.357014, 28.333117>,  <47.561623, 37.085800, 28.615072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.425697, 36.357014, 28.333117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.148178, 36.577888, 28.148188>,  <46.981667, 36.710415, 28.037231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.148178, 36.577888, 28.148188>,  <47.425697, 36.357014, 28.333117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148178, 36.577888, 28.148188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000229, -0.642126, -0.766599,
		-0.720173, -0.531757, 0.445630,
		-0.693794, 0.552186, -0.462320,
		46.940041, 36.743546, 28.009491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942268, 35.855740, 28.032005>,  <47.425697, 36.357014, 28.333117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942268, 35.855740, 28.032005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.908924, 36.202888, 27.836109>,  <46.888920, 36.411179, 27.718571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.908924, 36.202888, 27.836109>,  <46.942268, 35.855740, 28.032005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908924, 36.202888, 27.836109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075096, -0.484585, -0.871515,
		-0.993686, -0.109424, -0.024781,
		-0.083356, 0.867873, -0.489743,
		46.883919, 36.463249, 27.689186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356487, 35.756554, 27.563957>,  <46.942268, 35.855740, 28.032005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356487, 35.756554, 27.563957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.579166, 36.061401, 27.431738>,  <46.712772, 36.244308, 27.352407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.579166, 36.061401, 27.431738>,  <46.356487, 35.756554, 27.563957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579166, 36.061401, 27.431738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092909, -0.452531, -0.886895,
		-0.825502, 0.463023, -0.322731,
		0.556699, 0.762119, -0.330546,
		46.746178, 36.290035, 27.332575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953968, 36.118366, 27.040001>,  <46.356487, 35.756554, 27.563957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953968, 36.118366, 27.040001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.336372, 36.208687, 26.965101>,  <46.565815, 36.262878, 26.920160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.336372, 36.208687, 26.965101>,  <45.953968, 36.118366, 27.040001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336372, 36.208687, 26.965101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173535, -0.079314, -0.981629,
		-0.236505, 0.970939, -0.036641,
		0.956008, 0.225802, -0.187251,
		46.623177, 36.276428, 26.908926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954147, 36.557594, 26.513412>,  <45.953968, 36.118366, 27.040001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954147, 36.557594, 26.513412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.330166, 36.421844, 26.499950>,  <46.555779, 36.340393, 26.491873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.330166, 36.421844, 26.499950>,  <45.954147, 36.557594, 26.513412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330166, 36.421844, 26.499950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087551, -0.144778, -0.985583,
		0.329611, 0.929442, -0.165811,
		0.940049, -0.339376, -0.033654,
		46.612179, 36.320030, 26.489855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326805, 36.778305, 25.909239>,  <45.954147, 36.557594, 26.513412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326805, 36.778305, 25.909239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.533592, 36.451767, 26.012262>,  <46.657665, 36.255844, 26.074076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.533592, 36.451767, 26.012262>,  <46.326805, 36.778305, 25.909239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533592, 36.451767, 26.012262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128614, -0.223395, -0.966205,
		0.846290, 0.532619, -0.010494,
		0.516964, -0.816341, 0.257559,
		46.688683, 36.206863, 26.089531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908314, 36.832569, 25.385258>,  <46.326805, 36.778305, 25.909239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908314, 36.832569, 25.385258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.937283, 36.473099, 25.558298>,  <46.954662, 36.257416, 25.662123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.937283, 36.473099, 25.558298>,  <46.908314, 36.832569, 25.385258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937283, 36.473099, 25.558298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342547, -0.384945, -0.857017,
		0.936705, 0.210251, 0.279960,
		0.072420, -0.898672, 0.432601,
		46.959007, 36.203499, 25.688078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.627033, 36.610413, 25.217323>,  <46.908314, 36.832569, 25.385258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.627033, 36.610413, 25.217323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.399876, 36.299545, 25.325775>,  <47.263580, 36.113026, 25.390846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.399876, 36.299545, 25.325775>,  <47.627033, 36.610413, 25.217323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399876, 36.299545, 25.325775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345955, -0.524257, -0.778119,
		0.746869, -0.348091, 0.566587,
		-0.567893, -0.777166, 0.271128,
		47.229507, 36.066395, 25.407114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.005589, 36.030964, 25.124344>,  <47.627033, 36.610413, 25.217323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.005589, 36.030964, 25.124344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.624012, 35.913822, 25.098310>,  <47.395065, 35.843536, 25.082689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.624012, 35.913822, 25.098310>,  <48.005589, 36.030964, 25.124344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624012, 35.913822, 25.098310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186922, -0.410530, -0.892483,
		0.234647, -0.863540, 0.446362,
		-0.953939, -0.292854, -0.065085,
		47.337830, 35.825966, 25.078785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.978695, 35.369263, 24.814020>,  <48.005589, 36.030964, 25.124344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.978695, 35.369263, 24.814020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.606400, 35.505112, 24.759781>,  <47.383022, 35.586620, 24.727238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.606400, 35.505112, 24.759781>,  <47.978695, 35.369263, 24.814020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.606400, 35.505112, 24.759781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012858, -0.340175, -0.940274,
		-0.365471, -0.876889, 0.312245,
		-0.930734, 0.339628, -0.135599,
		47.327179, 35.606998, 24.719101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.725971, 34.802197, 24.542765>,  <47.978695, 35.369263, 24.814020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.725971, 34.802197, 24.542765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.491501, 35.105602, 24.428890>,  <47.350819, 35.287647, 24.360565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.491501, 35.105602, 24.428890>,  <47.725971, 34.802197, 24.542765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.491501, 35.105602, 24.428890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057812, -0.389651, -0.919146,
		-0.808116, -0.522326, 0.272257,
		-0.586180, 0.758516, -0.284687,
		47.315647, 35.333157, 24.343485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142662, 34.581417, 24.040215>,  <47.725971, 34.802197, 24.542765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142662, 34.581417, 24.040215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.224815, 34.968719, 23.983232>,  <47.274109, 35.201103, 23.949043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.224815, 34.968719, 23.983232>,  <47.142662, 34.581417, 24.040215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.224815, 34.968719, 23.983232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039097, -0.153561, -0.987365,
		-0.977900, 0.197219, -0.069395,
		0.205384, 0.968258, -0.142456,
		47.286430, 35.259197, 23.940496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573765, 34.316284, 23.467295>,  <47.142662, 34.581417, 24.040215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573765, 34.316284, 23.467295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.463570, 33.962597, 23.316420>,  <47.397453, 33.750385, 23.225895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.463570, 33.962597, 23.316420>,  <47.573765, 34.316284, 23.467295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.463570, 33.962597, 23.316420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724347, -0.067024, 0.686170,
		-0.632002, 0.462249, -0.622013,
		-0.275491, -0.884214, -0.377187,
		47.380920, 33.697334, 23.203264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796543, 34.269199, 23.322573>,  <47.573765, 34.316284, 23.467295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796543, 34.269199, 23.322573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.878048, 33.877651, 23.315741>,  <46.926952, 33.642723, 23.311642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.878048, 33.877651, 23.315741>,  <46.796543, 34.269199, 23.322573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878048, 33.877651, 23.315741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884388, -0.191521, 0.425648,
		-0.419927, -0.071625, -0.904727,
		0.203761, -0.978872, -0.017081,
		46.939175, 33.583988, 23.310616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195957, 34.022243, 22.999014>,  <46.796543, 34.269199, 23.322573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195957, 34.022243, 22.999014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.360531, 33.715199, 23.195583>,  <46.459274, 33.530972, 23.313524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.360531, 33.715199, 23.195583>,  <46.195957, 34.022243, 22.999014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360531, 33.715199, 23.195583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891901, -0.228047, 0.390522,
		-0.187699, -0.598978, -0.778456,
		0.411439, -0.767606, 0.491425,
		46.483963, 33.484917, 23.343010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749500, 33.406410, 23.042719>,  <46.195957, 34.022243, 22.999014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749500, 33.406410, 23.042719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.003651, 33.318451, 23.338812>,  <46.156139, 33.265675, 23.516468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.003651, 33.318451, 23.338812>,  <45.749500, 33.406410, 23.042719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003651, 33.318451, 23.338812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772205, -0.180116, 0.609309,
		-0.000657, -0.958751, -0.284246,
		0.635373, -0.219897, 0.740234,
		46.194263, 33.252480, 23.560883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499405, 32.755894, 23.383379>,  <45.749500, 33.406410, 23.042719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499405, 32.755894, 23.383379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.715073, 32.967899, 23.645184>,  <45.844475, 33.095100, 23.802265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.715073, 32.967899, 23.645184>,  <45.499405, 32.755894, 23.383379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715073, 32.967899, 23.645184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721195, -0.110784, 0.683816,
		0.434940, -0.840722, 0.322511,
		0.539170, 0.530012, 0.654509,
		45.876823, 33.126904, 23.841536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550201, 32.271778, 23.919807>,  <45.499405, 32.755894, 23.383379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550201, 32.271778, 23.919807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.640060, 32.634624, 24.062170>,  <45.693974, 32.852333, 24.147587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.640060, 32.634624, 24.062170>,  <45.550201, 32.271778, 23.919807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640060, 32.634624, 24.062170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672253, -0.120133, 0.730509,
		0.705415, -0.403362, 0.582828,
		0.224643, 0.907120, 0.355905,
		45.707455, 32.906761, 24.168941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294674, 32.279961, 24.648640>,  <45.550201, 32.271778, 23.919807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294674, 32.279961, 24.648640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.396339, 32.664494, 24.606237>,  <45.457340, 32.895214, 24.580795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.396339, 32.664494, 24.606237>,  <45.294674, 32.279961, 24.648640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396339, 32.664494, 24.606237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699147, 0.258360, 0.666666,
		0.668276, -0.095329, 0.737780,
		0.254165, 0.961334, -0.106007,
		45.472588, 32.952892, 24.574436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478050, 32.549194, 25.294662>,  <45.294674, 32.279961, 24.648640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478050, 32.549194, 25.294662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.406105, 32.892464, 25.102333>,  <45.362938, 33.098427, 24.986935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.406105, 32.892464, 25.102333>,  <45.478050, 32.549194, 25.294662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406105, 32.892464, 25.102333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607826, 0.287364, 0.740250,
		0.773433, 0.425398, 0.469934,
		-0.179859, 0.858172, -0.480825,
		45.352146, 33.149914, 24.958086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644695, 33.119846, 25.756565>,  <45.478050, 32.549194, 25.294662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644695, 33.119846, 25.756565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.382839, 33.233990, 25.476561>,  <45.225727, 33.302475, 25.308558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.382839, 33.233990, 25.476561>,  <45.644695, 33.119846, 25.756565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382839, 33.233990, 25.476561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647111, 0.267132, 0.714065,
		0.390758, 0.920442, 0.009782,
		-0.654642, 0.285357, -0.700011,
		45.186447, 33.319595, 25.266558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216042, 33.499390, 26.189262>,  <45.644695, 33.119846, 25.756565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216042, 33.499390, 26.189262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.002438, 33.502617, 25.851088>,  <44.874275, 33.504551, 25.648182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.002438, 33.502617, 25.851088>,  <45.216042, 33.499390, 26.189262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002438, 33.502617, 25.851088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720261, 0.519343, 0.459899,
		0.442780, 0.854528, -0.271527,
		-0.534012, 0.008064, -0.845438,
		44.842236, 33.505035, 25.597456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034077, 34.189167, 26.085724>,  <45.216042, 33.499390, 26.189262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034077, 34.189167, 26.085724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.770508, 33.930527, 25.931978>,  <44.612366, 33.775345, 25.839731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.770508, 33.930527, 25.931978>,  <45.034077, 34.189167, 26.085724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770508, 33.930527, 25.931978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733158, 0.437768, 0.520421,
		-0.168242, 0.624715, -0.762513,
		-0.658919, -0.646599, -0.384364,
		44.572830, 33.736546, 25.816669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453613, 34.630138, 25.797691>,  <45.034077, 34.189167, 26.085724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453613, 34.630138, 25.797691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.291424, 34.265423, 25.823725>,  <44.194111, 34.046593, 25.839346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.291424, 34.265423, 25.823725>,  <44.453613, 34.630138, 25.797691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291424, 34.265423, 25.823725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715791, 0.360987, 0.597773,
		-0.568535, 0.195796, -0.799019,
		-0.405477, -0.911785, 0.065085,
		44.169781, 33.991886, 25.843250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697269, 34.670788, 25.727171>,  <44.453613, 34.630138, 25.797691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697269, 34.670788, 25.727171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.792324, 34.348545, 25.944252>,  <43.849358, 34.155201, 26.074501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.792324, 34.348545, 25.944252>,  <43.697269, 34.670788, 25.727171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792324, 34.348545, 25.944252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689622, 0.253543, 0.678334,
		-0.684070, -0.535455, -0.495314,
		0.237635, -0.805608, 0.542703,
		43.863613, 34.106861, 26.107063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091801, 34.604458, 26.079947>,  <43.697269, 34.670788, 25.727171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091801, 34.604458, 26.079947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.331543, 34.353951, 26.279371>,  <43.475388, 34.203648, 26.399027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.331543, 34.353951, 26.279371>,  <43.091801, 34.604458, 26.079947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331543, 34.353951, 26.279371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593419, 0.070391, 0.801810,
		-0.537240, -0.776425, -0.329449,
		0.599355, -0.626266, 0.498562,
		43.511349, 34.166069, 26.428940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709221, 33.984238, 25.861473>,  <43.091801, 34.604458, 26.079947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709221, 33.984238, 25.861473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.375206, 33.868286, 25.674419>,  <42.174797, 33.798714, 25.562187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.375206, 33.868286, 25.674419>,  <42.709221, 33.984238, 25.861473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375206, 33.868286, 25.674419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424128, 0.202261, -0.882726,
		0.350470, -0.935446, -0.045948,
		-0.835037, -0.289882, -0.467635,
		42.124695, 33.781322, 25.534128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989059, 33.516529, 25.346106>,  <42.709221, 33.984238, 25.861473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989059, 33.516529, 25.346106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.621994, 33.628357, 25.233152>,  <42.401756, 33.695454, 25.165380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.621994, 33.628357, 25.233152>,  <42.989059, 33.516529, 25.346106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621994, 33.628357, 25.233152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322167, 0.107455, -0.940565,
		-0.232612, -0.954093, -0.188676,
		-0.917660, 0.279572, -0.282382,
		42.346695, 33.712227, 25.148438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843536, 33.058929, 24.823372>,  <42.989059, 33.516529, 25.346106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843536, 33.058929, 24.823372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.591434, 33.365952, 24.776642>,  <42.440174, 33.550163, 24.748604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.591434, 33.365952, 24.776642>,  <42.843536, 33.058929, 24.823372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591434, 33.365952, 24.776642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374516, 0.168753, -0.911735,
		-0.680089, -0.618375, -0.393817,
		-0.630252, 0.767551, -0.116824,
		42.402359, 33.596218, 24.741594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493843, 32.888210, 24.294884>,  <42.843536, 33.058929, 24.823372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493843, 32.888210, 24.294884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442417, 33.284203, 24.318222>,  <42.411560, 33.521797, 24.332224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442417, 33.284203, 24.318222>,  <42.493843, 32.888210, 24.294884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442417, 33.284203, 24.318222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255185, 0.089878, -0.962706,
		-0.958306, -0.108885, -0.264184,
		-0.128569, 0.989983, 0.058345,
		42.403847, 33.581196, 24.335726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226414, 33.115410, 23.687332>,  <42.493843, 32.888210, 24.294884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226414, 33.115410, 23.687332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.358192, 33.468266, 23.821972>,  <42.437260, 33.679977, 23.902756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.358192, 33.468266, 23.821972>,  <42.226414, 33.115410, 23.687332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358192, 33.468266, 23.821972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189766, 0.287361, -0.938836,
		-0.924907, 0.373172, -0.072729,
		0.329448, 0.882137, 0.336598,
		42.457027, 33.732906, 23.922951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947361, 33.673733, 23.265255>,  <42.226414, 33.115410, 23.687332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947361, 33.673733, 23.265255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.286037, 33.818752, 23.421036>,  <42.489243, 33.905766, 23.514505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.286037, 33.818752, 23.421036>,  <41.947361, 33.673733, 23.265255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286037, 33.818752, 23.421036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344639, 0.183979, -0.920530,
		-0.405391, 0.913624, 0.030823,
		0.846689, 0.362552, 0.389454,
		42.540043, 33.927517, 23.537872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183201, 34.293713, 22.788750>,  <41.947361, 33.673733, 23.265255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183201, 34.293713, 22.788750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.504761, 34.167130, 22.990183>,  <42.697697, 34.091179, 23.111042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.504761, 34.167130, 22.990183>,  <42.183201, 34.293713, 22.788750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504761, 34.167130, 22.990183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539670, 0.032231, -0.841259,
		0.249989, 0.948060, 0.196691,
		0.803904, -0.316454, 0.503582,
		42.745934, 34.072193, 23.141258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022823, 35.078358, 23.021893>,  <42.183201, 34.293713, 22.788750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022823, 35.078358, 23.021893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706959, 35.264801, 22.862305>,  <41.517441, 35.376667, 22.766552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706959, 35.264801, 22.862305>,  <42.022823, 35.078358, 23.021893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706959, 35.264801, 22.862305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507460, -0.130683, 0.851708,
		0.344852, 0.875021, 0.339728,
		-0.789659, 0.466112, -0.398972,
		41.470062, 35.404636, 22.742613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749805, 35.327953, 23.597424>,  <42.022823, 35.078358, 23.021893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749805, 35.327953, 23.597424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462128, 35.355099, 23.320829>,  <41.289520, 35.371387, 23.154873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462128, 35.355099, 23.320829>,  <41.749805, 35.327953, 23.597424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462128, 35.355099, 23.320829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694091, -0.024941, 0.719455,
		0.031580, 0.997383, 0.065043,
		-0.719194, 0.067867, -0.691487,
		41.246368, 35.375458, 23.113384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287003, 35.943798, 23.781868>,  <41.749805, 35.327953, 23.597424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287003, 35.943798, 23.781868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075226, 35.675739, 23.573792>,  <40.948158, 35.514904, 23.448946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075226, 35.675739, 23.573792>,  <41.287003, 35.943798, 23.781868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075226, 35.675739, 23.573792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728521, 0.044968, 0.683546,
		-0.434684, 0.740866, -0.512023,
		-0.529441, -0.670146, -0.520189,
		40.916393, 35.474697, 23.417734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631924, 36.243988, 23.624971>,  <41.287003, 35.943798, 23.781868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631924, 36.243988, 23.624971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599369, 35.847588, 23.582455>,  <40.579834, 35.609749, 23.556944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599369, 35.847588, 23.582455>,  <40.631924, 36.243988, 23.624971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599369, 35.847588, 23.582455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719543, -0.015373, 0.694278,
		-0.689663, 0.132989, -0.711814,
		-0.081388, -0.990998, -0.106294,
		40.574951, 35.550289, 23.550566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031067, 36.170185, 23.512547>,  <40.631924, 36.243988, 23.624971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031067, 36.170185, 23.512547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.151115, 35.818478, 23.660501>,  <40.223145, 35.607452, 23.749273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.151115, 35.818478, 23.660501>,  <40.031067, 36.170185, 23.512547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151115, 35.818478, 23.660501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786306, -0.008506, 0.617778,
		-0.540047, -0.476251, -0.693927,
		0.300120, -0.879269, 0.369885,
		40.241150, 35.554699, 23.771467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442307, 35.720501, 23.505327>,  <40.031067, 36.170185, 23.512547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442307, 35.720501, 23.505327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700768, 35.578186, 23.775408>,  <39.855846, 35.492798, 23.937456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700768, 35.578186, 23.775408>,  <39.442307, 35.720501, 23.505327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700768, 35.578186, 23.775408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754171, -0.161936, 0.636398,
		-0.117080, -0.920432, -0.372958,
		0.646157, -0.355783, 0.675204,
		39.894615, 35.471447, 23.977968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094891, 35.168839, 23.828444>,  <39.442307, 35.720501, 23.505327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094891, 35.168839, 23.828444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.377941, 35.219921, 24.106424>,  <39.547771, 35.250572, 24.273212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.377941, 35.219921, 24.106424>,  <39.094891, 35.168839, 23.828444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377941, 35.219921, 24.106424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690696, -0.082396, 0.718436,
		0.149013, -0.988383, 0.029904,
		0.707626, 0.127711, 0.694951,
		39.590229, 35.258232, 24.314909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.687416, 37.121254, 22.469156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.848106, 36.928135, 22.780416>,  <44.944519, 36.812263, 22.967173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.848106, 36.928135, 22.780416>,  <44.687416, 37.121254, 22.469156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848106, 36.928135, 22.780416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447615, 0.637785, 0.626794,
		-0.798911, -0.600111, 0.040105,
		0.401725, -0.482801, 0.778152,
		44.968624, 36.783295, 23.013863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122437, 37.151836, 22.968763>,  <44.687416, 37.121254, 22.469156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122437, 37.151836, 22.968763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.439571, 37.044418, 23.187593>,  <44.629852, 36.979969, 23.318892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.439571, 37.044418, 23.187593>,  <44.122437, 37.151836, 22.968763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439571, 37.044418, 23.187593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285684, 0.629169, 0.722863,
		-0.538325, -0.729404, 0.422110,
		0.792838, -0.268545, 0.547076,
		44.677422, 36.963856, 23.351717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904995, 36.937885, 23.725344>,  <44.122437, 37.151836, 22.968763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904995, 36.937885, 23.725344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.285912, 37.057831, 23.748075>,  <44.514462, 37.129799, 23.761715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.285912, 37.057831, 23.748075>,  <43.904995, 36.937885, 23.725344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285912, 37.057831, 23.748075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229895, 0.582294, 0.779796,
		0.200741, -0.755655, 0.623449,
		0.952287, 0.299865, 0.056831,
		44.571598, 37.147789, 23.765125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019333, 36.865299, 24.353111>,  <43.904995, 36.937885, 23.725344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019333, 36.865299, 24.353111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.316143, 37.095699, 24.215925>,  <44.494228, 37.233940, 24.133614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.316143, 37.095699, 24.215925>,  <44.019333, 36.865299, 24.353111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316143, 37.095699, 24.215925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195016, 0.674949, 0.711627,
		0.641371, -0.461168, 0.613162,
		0.742032, 0.575993, -0.342957,
		44.538750, 37.268497, 24.113035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293201, 37.138412, 24.914789>,  <44.019333, 36.865299, 24.353111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293201, 37.138412, 24.914789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.453098, 37.383781, 24.642344>,  <44.549038, 37.531002, 24.478876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.453098, 37.383781, 24.642344>,  <44.293201, 37.138412, 24.914789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453098, 37.383781, 24.642344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013885, 0.738930, 0.673639,
		0.916523, -0.278739, 0.286864,
		0.399742, 0.613422, -0.681117,
		44.573021, 37.567806, 24.438009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932762, 37.487991, 25.186682>,  <44.293201, 37.138412, 24.914789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932762, 37.487991, 25.186682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.807999, 37.722195, 24.887375>,  <44.733143, 37.862717, 24.707790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.807999, 37.722195, 24.887375>,  <44.932762, 37.487991, 25.186682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807999, 37.722195, 24.887375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066204, 0.772246, 0.631865,
		0.947804, 0.246619, -0.202104,
		-0.311904, 0.585504, -0.748265,
		44.714428, 37.897846, 24.662895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190983, 38.121220, 25.294830>,  <44.932762, 37.487991, 25.186682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190983, 38.121220, 25.294830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.889019, 38.192696, 25.042423>,  <44.707840, 38.235580, 24.890980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.889019, 38.192696, 25.042423>,  <45.190983, 38.121220, 25.294830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889019, 38.192696, 25.042423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258276, 0.803413, 0.536490,
		0.602829, 0.567978, -0.560355,
		-0.754911, 0.178686, -0.631016,
		44.662544, 38.246300, 24.853119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222923, 38.831070, 25.192389>,  <45.190983, 38.121220, 25.294830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222923, 38.831070, 25.192389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.851219, 38.707317, 25.111629>,  <44.628197, 38.633064, 25.063173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.851219, 38.707317, 25.111629>,  <45.222923, 38.831070, 25.192389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851219, 38.707317, 25.111629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369432, 0.780196, 0.504791,
		0.001347, 0.543669, -0.839299,
		-0.929257, -0.309384, -0.201900,
		44.572441, 38.614502, 25.051060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835674, 39.465908, 25.138243>,  <45.222923, 38.831070, 25.192389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835674, 39.465908, 25.138243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.546947, 39.190746, 25.168627>,  <44.373711, 39.025650, 25.186857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.546947, 39.190746, 25.168627>,  <44.835674, 39.465908, 25.138243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546947, 39.190746, 25.168627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484886, 0.580976, 0.653723,
		-0.493827, 0.435038, -0.752912,
		-0.721818, -0.687902, 0.075958,
		44.330402, 38.984375, 25.191414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162277, 39.830502, 25.096289>,  <44.835674, 39.465908, 25.138243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162277, 39.830502, 25.096289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115940, 39.476070, 25.275824>,  <44.088139, 39.263412, 25.383545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115940, 39.476070, 25.275824>,  <44.162277, 39.830502, 25.096289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115940, 39.476070, 25.275824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534952, 0.436396, 0.723453,
		-0.836903, -0.156301, -0.524560,
		-0.115839, -0.886074, 0.448835,
		44.081188, 39.210247, 25.410475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545204, 39.807041, 25.323360>,  <44.162277, 39.830502, 25.096289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545204, 39.807041, 25.323360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.698608, 39.509270, 25.541990>,  <43.790653, 39.330608, 25.673168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.698608, 39.509270, 25.541990>,  <43.545204, 39.807041, 25.323360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698608, 39.509270, 25.541990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551991, 0.289716, 0.781902,
		-0.740421, -0.601575, -0.299807,
		0.383514, -0.744427, 0.546576,
		43.813663, 39.285942, 25.705963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909023, 39.452335, 25.676386>,  <43.545204, 39.807041, 25.323360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909023, 39.452335, 25.676386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.254253, 39.368938, 25.860397>,  <43.461391, 39.318901, 25.970804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.254253, 39.368938, 25.860397>,  <42.909023, 39.452335, 25.676386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254253, 39.368938, 25.860397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430509, 0.172612, 0.885928,
		-0.264115, -0.962672, 0.059220,
		0.863079, -0.208492, 0.460028,
		43.513176, 39.306393, 25.998405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451427, 38.928757, 25.474661>,  <42.909023, 39.452335, 25.676386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451427, 38.928757, 25.474661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065029, 38.910831, 25.372795>,  <41.833191, 38.900078, 25.311676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065029, 38.910831, 25.372795>,  <42.451427, 38.928757, 25.474661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065029, 38.910831, 25.372795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256633, -0.045663, -0.965430,
		0.031637, -0.997951, 0.055611,
		-0.965991, -0.044815, -0.254662,
		41.775230, 38.897388, 25.296396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437981, 38.316414, 24.990635>,  <42.451427, 38.928757, 25.474661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437981, 38.316414, 24.990635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.130924, 38.562469, 24.918711>,  <41.946690, 38.710102, 24.875557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.130924, 38.562469, 24.918711>,  <42.437981, 38.316414, 24.990635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130924, 38.562469, 24.918711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267726, 0.052886, -0.962043,
		-0.582283, -0.786641, -0.205286,
		-0.767639, 0.615142, -0.179810,
		41.900631, 38.747013, 24.864767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161690, 38.063320, 24.234596>,  <42.437981, 38.316414, 24.990635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161690, 38.063320, 24.234596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.991180, 38.417358, 24.309322>,  <41.888874, 38.629780, 24.354158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.991180, 38.417358, 24.309322>,  <42.161690, 38.063320, 24.234596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991180, 38.417358, 24.309322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078768, 0.242054, -0.967060,
		-0.901160, -0.397515, -0.172897,
		-0.426271, 0.885095, 0.186818,
		41.863300, 38.682888, 24.365368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558296, 38.100746, 23.779835>,  <42.161690, 38.063320, 24.234596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558296, 38.100746, 23.779835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692383, 38.464573, 23.878069>,  <41.772835, 38.682869, 23.937010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692383, 38.464573, 23.878069>,  <41.558296, 38.100746, 23.779835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692383, 38.464573, 23.878069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101574, 0.224256, -0.969222,
		-0.936649, 0.349847, -0.017214,
		0.335219, 0.909570, 0.245584,
		41.792950, 38.737442, 23.951744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145004, 38.637882, 23.467449>,  <41.558296, 38.100746, 23.779835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145004, 38.637882, 23.467449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485905, 38.831982, 23.545624>,  <41.690445, 38.948441, 23.592529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485905, 38.831982, 23.545624>,  <41.145004, 38.637882, 23.467449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485905, 38.831982, 23.545624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058483, 0.282873, -0.957373,
		-0.519852, 0.827353, 0.212700,
		0.852252, 0.485253, 0.195438,
		41.741581, 38.977558, 23.604256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115948, 39.152447, 23.127026>,  <41.145004, 38.637882, 23.467449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115948, 39.152447, 23.127026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508614, 39.150970, 23.203257>,  <41.744213, 39.150085, 23.248995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508614, 39.150970, 23.203257>,  <41.115948, 39.152447, 23.127026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508614, 39.150970, 23.203257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178313, 0.371125, -0.911302,
		-0.067360, 0.928576, 0.364979,
		0.981665, -0.003695, 0.190576,
		41.803112, 39.149860, 23.260429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367065, 39.655090, 22.674162>,  <41.115948, 39.152447, 23.127026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367065, 39.655090, 22.674162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.702091, 39.469025, 22.788782>,  <41.903107, 39.357384, 22.857553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.702091, 39.469025, 22.788782>,  <41.367065, 39.655090, 22.674162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702091, 39.469025, 22.788782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397318, 0.158596, -0.903873,
		0.375005, 0.870901, 0.317653,
		0.837562, -0.465166, 0.286550,
		41.953362, 39.329475, 22.874746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752171, 39.956776, 22.240137>,  <41.367065, 39.655090, 22.674162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752171, 39.956776, 22.240137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.983082, 39.657089, 22.370018>,  <42.121628, 39.477276, 22.447947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.983082, 39.657089, 22.370018>,  <41.752171, 39.956776, 22.240137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983082, 39.657089, 22.370018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445557, -0.044214, -0.894161,
		0.684275, 0.660849, 0.308295,
		0.577275, -0.749215, 0.324701,
		42.156265, 39.432323, 22.467428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459023, 40.152409, 22.242790>,  <41.752171, 39.956776, 22.240137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459023, 40.152409, 22.242790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.389076, 39.764828, 22.172867>,  <42.347107, 39.532280, 22.130913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.389076, 39.764828, 22.172867>,  <42.459023, 40.152409, 22.242790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389076, 39.764828, 22.172867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274431, 0.122539, -0.953767,
		0.945573, -0.214758, 0.244482,
		-0.174870, -0.968950, -0.174806,
		42.336617, 39.474144, 22.120424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750111, 40.016384, 21.656494>,  <42.459023, 40.152409, 22.242790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750111, 40.016384, 21.656494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.533836, 39.680000, 21.664978>,  <42.404072, 39.478168, 21.670069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.533836, 39.680000, 21.664978>,  <42.750111, 40.016384, 21.656494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533836, 39.680000, 21.664978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202760, -0.154745, -0.966924,
		0.816426, -0.518499, 0.254181,
		-0.540682, -0.840959, 0.021208,
		42.371632, 39.427711, 21.671341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184299, 39.538719, 21.221737>,  <42.750111, 40.016384, 21.656494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184299, 39.538719, 21.221737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.810017, 39.400097, 21.248129>,  <42.585445, 39.316925, 21.263964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.810017, 39.400097, 21.248129>,  <43.184299, 39.538719, 21.221737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810017, 39.400097, 21.248129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098738, -0.436822, -0.894112,
		0.338682, -0.830111, 0.442956,
		-0.935706, -0.346556, 0.065980,
		42.529305, 39.296131, 21.267923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202099, 38.914261, 20.886393>,  <43.184299, 39.538719, 21.221737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202099, 38.914261, 20.886393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.805420, 38.964333, 20.898180>,  <42.567413, 38.994373, 20.905252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.805420, 38.964333, 20.898180>,  <43.202099, 38.914261, 20.886393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805420, 38.964333, 20.898180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070053, -0.333693, -0.940075,
		-0.107842, -0.934334, 0.339692,
		-0.991697, 0.125176, 0.029467,
		42.507912, 39.001884, 20.907021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823399, 38.279099, 20.664993>,  <43.202099, 38.914261, 20.886393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823399, 38.279099, 20.664993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.600250, 38.604431, 20.598944>,  <42.466362, 38.799633, 20.559315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.600250, 38.604431, 20.598944>,  <42.823399, 38.279099, 20.664993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600250, 38.604431, 20.598944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088186, -0.255927, -0.962666,
		-0.825228, -0.522483, 0.214499,
		-0.557872, 0.813335, -0.165122,
		42.432888, 38.848431, 20.549408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888962, 37.888237, 21.387875>,  <42.823399, 38.279099, 20.664993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888962, 37.888237, 21.387875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.829979, 37.676594, 21.053616>,  <42.794590, 37.549610, 20.853060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.829979, 37.676594, 21.053616>,  <42.888962, 37.888237, 21.387875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829979, 37.676594, 21.053616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685267, -0.554585, 0.472064,
		-0.713208, 0.642249, -0.280801,
		-0.147455, -0.529104, -0.835647,
		42.785744, 37.517864, 20.802921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194721, 37.819454, 21.357929>,  <42.888962, 37.888237, 21.387875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194721, 37.819454, 21.357929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384529, 37.524216, 21.166077>,  <42.498413, 37.347073, 21.050966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384529, 37.524216, 21.166077>,  <42.194721, 37.819454, 21.357929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384529, 37.524216, 21.166077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502306, -0.674507, 0.541045,
		-0.722859, -0.015813, -0.690815,
		0.474515, -0.738100, -0.479630,
		42.526882, 37.302788, 21.022188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642048, 37.378044, 21.142405>,  <42.194721, 37.819454, 21.357929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642048, 37.378044, 21.142405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.972099, 37.153114, 21.120665>,  <42.170132, 37.018154, 21.107620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.972099, 37.153114, 21.120665>,  <41.642048, 37.378044, 21.142405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972099, 37.153114, 21.120665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453649, -0.716835, 0.529481,
		-0.336701, -0.412233, -0.846579,
		0.825127, -0.562327, -0.054350,
		42.219639, 36.984417, 21.104359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468960, 36.795204, 21.048609>,  <41.642048, 37.378044, 21.142405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468960, 36.795204, 21.048609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823170, 36.710308, 21.213919>,  <42.035694, 36.659370, 21.313105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823170, 36.710308, 21.213919>,  <41.468960, 36.795204, 21.048609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823170, 36.710308, 21.213919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413440, -0.765773, 0.492605,
		0.211924, -0.607079, -0.765861,
		0.885525, -0.212243, 0.413277,
		42.088829, 36.646637, 21.337902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470531, 36.154419, 20.847260>,  <41.468960, 36.795204, 21.048609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470531, 36.154419, 20.847260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.713997, 36.193768, 21.162182>,  <41.860077, 36.217377, 21.351135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.713997, 36.193768, 21.162182>,  <41.470531, 36.154419, 20.847260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713997, 36.193768, 21.162182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446395, -0.777884, 0.442299,
		0.655944, -0.620661, -0.429555,
		0.608662, 0.098372, 0.787308,
		41.896595, 36.223278, 21.398375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641273, 35.517071, 21.076590>,  <41.470531, 36.154419, 20.847260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641273, 35.517071, 21.076590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.737560, 35.736645, 21.396770>,  <41.795334, 35.868389, 21.588879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.737560, 35.736645, 21.396770>,  <41.641273, 35.517071, 21.076590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737560, 35.736645, 21.396770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345169, -0.722375, 0.599194,
		0.907146, -0.420527, 0.015589,
		0.240716, 0.548937, 0.800452,
		41.809776, 35.901325, 21.636906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723499, 35.036999, 21.579903>,  <41.641273, 35.517071, 21.076590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723499, 35.036999, 21.579903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693905, 35.389011, 21.767548>,  <41.676147, 35.600220, 21.880135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693905, 35.389011, 21.767548>,  <41.723499, 35.036999, 21.579903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693905, 35.389011, 21.767548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492061, -0.441368, 0.750380,
		0.867411, -0.175313, 0.465686,
		-0.073988, 0.880034, 0.469113,
		41.671707, 35.653023, 21.908281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982906, 34.957912, 22.317986>,  <41.723499, 35.036999, 21.579903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982906, 34.957912, 22.317986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.760582, 35.290142, 22.303980>,  <41.627186, 35.489479, 22.295576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.760582, 35.290142, 22.303980>,  <41.982906, 34.957912, 22.317986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760582, 35.290142, 22.303980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469860, -0.279124, 0.837449,
		0.685787, 0.481917, 0.545392,
		-0.555813, 0.830570, -0.035013,
		41.593838, 35.539314, 22.293476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686523, 34.668873, 22.431229>,  <41.982906, 34.957912, 22.317986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686523, 34.668873, 22.431229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865383, 34.381386, 22.644209>,  <42.972698, 34.208893, 22.771997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865383, 34.381386, 22.644209>,  <42.686523, 34.668873, 22.431229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865383, 34.381386, 22.644209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726552, -0.055355, -0.684878,
		0.521705, 0.693099, 0.497431,
		0.447153, -0.718714, 0.532451,
		42.999531, 34.165771, 22.803944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376091, 34.713127, 22.254572>,  <42.686523, 34.668873, 22.431229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376091, 34.713127, 22.254572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.354321, 34.335724, 22.385317>,  <43.341259, 34.109283, 22.463764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.354321, 34.335724, 22.385317>,  <43.376091, 34.713127, 22.254572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354321, 34.335724, 22.385317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656201, -0.280529, -0.700502,
		0.752621, 0.176361, 0.634397,
		-0.054425, -0.943504, 0.326860,
		43.337994, 34.052673, 22.483376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951576, 34.509014, 22.618864>,  <43.376091, 34.713127, 22.254572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951576, 34.509014, 22.618864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.813492, 34.156307, 22.490290>,  <43.730640, 33.944683, 22.413145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.813492, 34.156307, 22.490290>,  <43.951576, 34.509014, 22.618864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813492, 34.156307, 22.490290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829621, -0.126566, -0.543792,
		0.438814, -0.454392, 0.775223,
		-0.345212, -0.881765, -0.321434,
		43.709927, 33.891777, 22.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443062, 34.160175, 22.684793>,  <43.951576, 34.509014, 22.618864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443062, 34.160175, 22.684793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.241070, 33.898167, 22.459957>,  <44.119877, 33.740963, 22.325056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.241070, 33.898167, 22.459957>,  <44.443062, 34.160175, 22.684793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241070, 33.898167, 22.459957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852965, -0.279041, -0.441121,
		0.132098, -0.702199, 0.699619,
		-0.504977, -0.655021, -0.562091,
		44.089577, 33.701660, 22.291330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826828, 33.577042, 22.782740>,  <44.443062, 34.160175, 22.684793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826828, 33.577042, 22.782740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.626625, 33.536766, 22.438797>,  <44.506504, 33.512600, 22.232431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.626625, 33.536766, 22.438797>,  <44.826828, 33.577042, 22.782740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626625, 33.536766, 22.438797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813208, -0.395364, -0.427060,
		-0.296954, -0.912988, 0.279769,
		-0.500511, -0.100694, -0.859854,
		44.476471, 33.506557, 22.180841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031246, 32.870068, 22.469860>,  <44.826828, 33.577042, 22.782740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031246, 32.870068, 22.469860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.872105, 33.051651, 22.150953>,  <44.776619, 33.160603, 21.959608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.872105, 33.051651, 22.150953>,  <45.031246, 32.870068, 22.469860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872105, 33.051651, 22.150953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668856, -0.451295, -0.590733,
		-0.627971, -0.768280, -0.124085,
		-0.397850, 0.453958, -0.797269,
		44.752750, 33.187840, 21.911772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955124, 32.308758, 21.915964>,  <45.031246, 32.870068, 22.469860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955124, 32.308758, 21.915964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.011864, 32.683460, 21.787983>,  <45.045910, 32.908279, 21.711195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.011864, 32.683460, 21.787983>,  <44.955124, 32.308758, 21.915964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011864, 32.683460, 21.787983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848292, -0.281620, -0.448431,
		-0.510175, -0.207803, -0.834589,
		0.141852, 0.936754, -0.319953,
		45.054420, 32.964485, 21.691998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318436, 32.226433, 21.303123>,  <44.955124, 32.308758, 21.915964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318436, 32.226433, 21.303123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.355865, 32.615658, 21.387396>,  <45.378323, 32.849194, 21.437960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.355865, 32.615658, 21.387396>,  <45.318436, 32.226433, 21.303123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355865, 32.615658, 21.387396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889434, 0.013382, -0.456868,
		-0.447382, 0.230137, -0.864226,
		0.093577, 0.973066, 0.210679,
		45.383938, 32.907578, 21.450600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896156, 32.370148, 20.857546>,  <45.318436, 32.226433, 21.303123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896156, 32.370148, 20.857546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.880440, 32.707607, 21.071728>,  <45.871010, 32.910084, 21.200237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.880440, 32.707607, 21.071728>,  <45.896156, 32.370148, 20.857546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880440, 32.707607, 21.071728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952245, 0.194001, -0.235782,
		-0.302796, 0.500619, -0.810984,
		-0.039295, 0.843649, 0.535455,
		45.868652, 32.960701, 21.232365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.803677, 34.947449, 33.796967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.074615, 35.221657, 33.903744>,  <37.237179, 35.386181, 33.967812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.074615, 35.221657, 33.903744>,  <36.803677, 34.947449, 33.796967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074615, 35.221657, 33.903744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686667, -0.458936, -0.563795,
		-0.263982, 0.565189, -0.781585,
		0.677349, 0.685520, 0.266946,
		37.277821, 35.427315, 33.983826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118225, 35.367489, 33.277046>,  <36.803677, 34.947449, 33.796967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118225, 35.367489, 33.277046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372105, 35.315708, 33.581779>,  <37.524433, 35.284641, 33.764622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372105, 35.315708, 33.581779>,  <37.118225, 35.367489, 33.277046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372105, 35.315708, 33.581779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680303, -0.374004, -0.630325,
		0.366527, 0.918348, -0.149313,
		0.634701, -0.129453, 0.761838,
		37.562515, 35.276871, 33.810329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640755, 35.757732, 33.137436>,  <37.118225, 35.367489, 33.277046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640755, 35.757732, 33.137436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766232, 35.473522, 33.389389>,  <37.841518, 35.302998, 33.540562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766232, 35.473522, 33.389389>,  <37.640755, 35.757732, 33.137436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766232, 35.473522, 33.389389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546681, -0.407237, -0.731641,
		0.776360, 0.573856, 0.260682,
		0.313697, -0.710526, 0.629878,
		37.860340, 35.260365, 33.578354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403042, 35.657841, 32.958950>,  <37.640755, 35.757732, 33.137436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403042, 35.657841, 32.958950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.331924, 35.315140, 33.152596>,  <38.289253, 35.109520, 33.268784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.331924, 35.315140, 33.152596>,  <38.403042, 35.657841, 32.958950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331924, 35.315140, 33.152596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635064, -0.475690, -0.608616,
		0.751721, 0.199238, 0.628664,
		-0.177789, -0.856752, 0.484115,
		38.278587, 35.058113, 33.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050961, 35.294456, 33.093166>,  <38.403042, 35.657841, 32.958950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050961, 35.294456, 33.093166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768406, 35.011391, 33.087009>,  <38.598873, 34.841553, 33.083313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768406, 35.011391, 33.087009>,  <39.050961, 35.294456, 33.093166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768406, 35.011391, 33.087009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549185, -0.534212, -0.642661,
		0.446562, -0.462420, 0.765996,
		-0.706384, -0.707662, -0.015395,
		38.556492, 34.799091, 33.082390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427395, 34.754433, 33.101501>,  <39.050961, 35.294456, 33.093166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427395, 34.754433, 33.101501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068089, 34.626926, 32.980507>,  <38.852505, 34.550423, 32.907909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068089, 34.626926, 32.980507>,  <39.427395, 34.754433, 33.101501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068089, 34.626926, 32.980507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430773, -0.502666, -0.749507,
		0.086864, -0.803565, 0.588845,
		-0.898270, -0.318764, -0.302490,
		38.798607, 34.531296, 32.889759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441708, 34.000610, 32.848763>,  <39.427395, 34.754433, 33.101501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441708, 34.000610, 32.848763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127434, 34.181759, 32.680187>,  <38.938869, 34.290447, 32.579041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127434, 34.181759, 32.680187>,  <39.441708, 34.000610, 32.848763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127434, 34.181759, 32.680187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226496, -0.423362, -0.877191,
		-0.575674, -0.784649, 0.230056,
		-0.785684, 0.452869, -0.421438,
		38.891727, 34.317619, 32.553757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281261, 33.438450, 32.424534>,  <39.441708, 34.000610, 32.848763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281261, 33.438450, 32.424534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095707, 33.758450, 32.272320>,  <38.984375, 33.950451, 32.180992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095707, 33.758450, 32.272320>,  <39.281261, 33.438450, 32.424534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095707, 33.758450, 32.272320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028724, -0.415746, -0.909027,
		-0.885427, -0.432618, 0.169881,
		-0.463889, 0.799998, -0.380539,
		38.956539, 33.998447, 32.158157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712646, 33.156944, 32.108902>,  <39.281261, 33.438450, 32.424534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712646, 33.156944, 32.108902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792149, 33.518017, 31.956236>,  <38.839851, 33.734661, 31.864637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792149, 33.518017, 31.956236>,  <38.712646, 33.156944, 32.108902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792149, 33.518017, 31.956236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121501, -0.363731, -0.923546,
		-0.972489, 0.229932, 0.037384,
		0.198755, 0.902680, -0.381661,
		38.851776, 33.788822, 31.841738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217556, 33.257881, 31.630840>,  <38.712646, 33.156944, 32.108902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217556, 33.257881, 31.630840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513073, 33.504433, 31.521835>,  <38.690384, 33.652363, 31.456432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513073, 33.504433, 31.521835>,  <38.217556, 33.257881, 31.630840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513073, 33.504433, 31.521835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126467, -0.270381, -0.954411,
		-0.661965, 0.739572, -0.121802,
		0.738788, 0.616383, -0.272514,
		38.734711, 33.689346, 31.440081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934418, 33.614902, 31.006931>,  <38.217556, 33.257881, 31.630840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934418, 33.614902, 31.006931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332676, 33.647198, 30.988279>,  <38.571632, 33.666573, 30.977087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332676, 33.647198, 30.988279>,  <37.934418, 33.614902, 31.006931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332676, 33.647198, 30.988279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031349, -0.181132, -0.982959,
		-0.087807, 0.980139, -0.177813,
		0.995644, 0.080736, -0.046631,
		38.631371, 33.671417, 30.974291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081146, 34.131931, 30.413267>,  <37.934418, 33.614902, 31.006931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081146, 34.131931, 30.413267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411572, 33.918770, 30.486616>,  <38.609829, 33.790871, 30.530624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411572, 33.918770, 30.486616>,  <38.081146, 34.131931, 30.413267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411572, 33.918770, 30.486616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132166, -0.133114, -0.982249,
		0.547856, 0.835638, -0.039529,
		0.826067, -0.532906, 0.183370,
		38.659393, 33.758900, 30.541628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118752, 34.810894, 30.015572>,  <38.081146, 34.131931, 30.413267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118752, 34.810894, 30.015572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739037, 34.798084, 29.890467>,  <37.511208, 34.790398, 29.815403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739037, 34.798084, 29.890467>,  <38.118752, 34.810894, 30.015572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739037, 34.798084, 29.890467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309910, 0.262834, 0.913714,
		0.052942, 0.964309, -0.259432,
		-0.949291, -0.032027, -0.312764,
		37.454250, 34.788475, 29.796637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799789, 35.398434, 30.330784>,  <38.118752, 34.810894, 30.015572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799789, 35.398434, 30.330784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502316, 35.147781, 30.237612>,  <37.323830, 34.997391, 30.181709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502316, 35.147781, 30.237612>,  <37.799789, 35.398434, 30.330784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502316, 35.147781, 30.237612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479346, 0.256957, 0.839167,
		-0.465997, 0.735733, -0.491470,
		-0.743690, -0.626634, -0.232930,
		37.279209, 34.959793, 30.167732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232944, 35.693871, 30.612844>,  <37.799789, 35.398434, 30.330784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232944, 35.693871, 30.612844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.086006, 35.330547, 30.532818>,  <36.997845, 35.112553, 30.484802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.086006, 35.330547, 30.532818>,  <37.232944, 35.693871, 30.612844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086006, 35.330547, 30.532818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680359, 0.115754, 0.723680,
		-0.634169, 0.401958, -0.660500,
		-0.367344, -0.908312, -0.200068,
		36.975803, 35.058052, 30.472797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457111, 35.654491, 30.525345>,  <37.232944, 35.693871, 30.612844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457111, 35.654491, 30.525345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516354, 35.269932, 30.618101>,  <36.551899, 35.039196, 30.673754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516354, 35.269932, 30.618101>,  <36.457111, 35.654491, 30.525345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516354, 35.269932, 30.618101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766012, 0.036789, 0.641773,
		-0.625532, -0.272681, -0.730996,
		0.148106, -0.961401, 0.231890,
		36.560787, 34.981510, 30.687668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748859, 35.336929, 30.546070>,  <36.457111, 35.654491, 30.525345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748859, 35.336929, 30.546070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982170, 35.081829, 30.747290>,  <36.122158, 34.928768, 30.868021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982170, 35.081829, 30.747290>,  <35.748859, 35.336929, 30.546070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982170, 35.081829, 30.747290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688908, -0.060293, 0.722337,
		-0.430343, -0.767876, -0.474522,
		0.583276, -0.637755, 0.503049,
		36.157154, 34.890503, 30.898205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324760, 34.876911, 30.641291>,  <35.748859, 35.336929, 30.546070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324760, 34.876911, 30.641291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607059, 34.822052, 30.919315>,  <35.776440, 34.789135, 31.086130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607059, 34.822052, 30.919315>,  <35.324760, 34.876911, 30.641291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607059, 34.822052, 30.919315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708086, -0.104578, 0.698339,
		-0.023086, -0.985015, -0.170917,
		0.705749, -0.137146, 0.695061,
		35.818783, 34.780907, 31.127834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076157, 34.351421, 31.036064>,  <35.324760, 34.876911, 30.641291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076157, 34.351421, 31.036064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328812, 34.555538, 31.269522>,  <35.480404, 34.678009, 31.409597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328812, 34.555538, 31.269522>,  <35.076157, 34.351421, 31.036064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328812, 34.555538, 31.269522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658845, -0.043469, 0.751022,
		0.408611, -0.858902, 0.308746,
		0.631634, 0.510291, 0.583645,
		35.518303, 34.708626, 31.444614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759186, 34.367043, 31.610874>,  <35.076157, 34.351421, 31.036064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759186, 34.367043, 31.610874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060040, 34.595222, 31.742867>,  <35.240551, 34.732132, 31.822062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060040, 34.595222, 31.742867>,  <34.759186, 34.367043, 31.610874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060040, 34.595222, 31.742867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549456, 0.266350, 0.791931,
		0.363868, -0.776944, 0.513768,
		0.752129, 0.570452, 0.329981,
		35.285679, 34.766357, 31.841862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786541, 34.273468, 32.283405>,  <34.759186, 34.367043, 31.610874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786541, 34.273468, 32.283405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946228, 34.634621, 32.219608>,  <35.042042, 34.851311, 32.181332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946228, 34.634621, 32.219608>,  <34.786541, 34.273468, 32.283405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946228, 34.634621, 32.219608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381835, 0.321876, 0.866371,
		0.833564, -0.284969, 0.473248,
		0.399216, 0.902878, -0.159493,
		35.065994, 34.905483, 32.171761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188786, 34.475128, 32.928947>,  <34.786541, 34.273468, 32.283405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188786, 34.475128, 32.928947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093994, 34.805466, 32.724270>,  <35.037121, 35.003666, 32.601463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093994, 34.805466, 32.724270>,  <35.188786, 34.475128, 32.928947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093994, 34.805466, 32.724270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440715, 0.378003, 0.814177,
		0.865802, 0.418453, 0.274382,
		-0.236977, 0.825840, -0.511694,
		35.022900, 35.053219, 32.570763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209541, 35.058022, 33.370621>,  <35.188786, 34.475128, 32.928947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209541, 35.058022, 33.370621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020348, 35.269024, 33.088337>,  <34.906830, 35.395626, 32.918968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020348, 35.269024, 33.088337>,  <35.209541, 35.058022, 33.370621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020348, 35.269024, 33.088337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523301, 0.476197, 0.706677,
		0.708831, 0.703546, 0.050808,
		-0.472985, 0.527502, -0.705710,
		34.878452, 35.427273, 32.876625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103386, 35.767258, 33.594719>,  <35.209541, 35.058022, 33.370621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103386, 35.767258, 33.594719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811497, 35.717831, 33.325726>,  <34.636364, 35.688175, 33.164330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811497, 35.717831, 33.325726>,  <35.103386, 35.767258, 33.594719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811497, 35.717831, 33.325726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579274, 0.634239, 0.512037,
		0.363244, 0.763198, -0.534399,
		-0.729723, -0.123569, -0.672484,
		34.592579, 35.680759, 33.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914612, 36.452095, 33.411297>,  <35.103386, 35.767258, 33.594719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914612, 36.452095, 33.411297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611515, 36.214962, 33.302208>,  <34.429657, 36.072681, 33.236755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611515, 36.214962, 33.302208>,  <34.914612, 36.452095, 33.411297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611515, 36.214962, 33.302208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628296, 0.549919, 0.550303,
		-0.176264, 0.588336, -0.789171,
		-0.757743, -0.592832, -0.272719,
		34.384193, 36.037113, 33.220390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435966, 36.915874, 33.168179>,  <34.914612, 36.452095, 33.411297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435966, 36.915874, 33.168179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231285, 36.581367, 33.246983>,  <34.108475, 36.380665, 33.294266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231285, 36.581367, 33.246983>,  <34.435966, 36.915874, 33.168179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231285, 36.581367, 33.246983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630260, 0.521210, 0.575423,
		-0.583893, 0.170278, -0.793772,
		-0.511704, -0.836268, 0.197012,
		34.077774, 36.330486, 33.306087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614082, 37.004612, 33.094322>,  <34.435966, 36.915874, 33.168179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614082, 37.004612, 33.094322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757816, 36.726738, 33.343575>,  <33.844055, 36.560013, 33.493126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757816, 36.726738, 33.343575>,  <33.614082, 37.004612, 33.094322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757816, 36.726738, 33.343575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482856, 0.432990, 0.761163,
		-0.798578, -0.574394, -0.179845,
		0.359336, -0.694688, 0.623126,
		33.865616, 36.518333, 33.530514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145222, 37.566029, 32.955368>,  <33.614082, 37.004612, 33.094322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145222, 37.566029, 32.955368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403713, 37.809792, 33.139107>,  <34.558807, 37.956051, 33.249352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403713, 37.809792, 33.139107>,  <34.145222, 37.566029, 32.955368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403713, 37.809792, 33.139107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305605, 0.344891, -0.887500,
		-0.699278, 0.713910, 0.036641,
		0.646232, 0.609412, 0.459349,
		34.597584, 37.992615, 33.276913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194897, 38.296631, 32.734028>,  <34.145222, 37.566029, 32.955368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194897, 38.296631, 32.734028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555420, 38.292507, 32.907249>,  <34.771732, 38.290031, 33.011181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555420, 38.292507, 32.907249>,  <34.194897, 38.296631, 32.734028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555420, 38.292507, 32.907249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412834, 0.323207, -0.851531,
		-0.131187, 0.946272, 0.295566,
		0.901309, -0.010310, 0.433054,
		34.825813, 38.289413, 33.037167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576324, 38.903404, 32.565376>,  <34.194897, 38.296631, 32.734028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576324, 38.903404, 32.565376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838699, 38.618233, 32.664562>,  <34.996124, 38.447132, 32.724072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838699, 38.618233, 32.664562>,  <34.576324, 38.903404, 32.565376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838699, 38.618233, 32.664562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456085, 0.112588, -0.882785,
		0.601443, 0.692142, 0.399005,
		0.655936, -0.712926, 0.247960,
		35.035480, 38.404354, 32.738949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168461, 39.158974, 32.286690>,  <34.576324, 38.903404, 32.565376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168461, 39.158974, 32.286690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261189, 38.776463, 32.358013>,  <35.316826, 38.546955, 32.400806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261189, 38.776463, 32.358013>,  <35.168461, 39.158974, 32.286690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261189, 38.776463, 32.358013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474191, -0.048954, -0.879060,
		0.849354, 0.288333, 0.442110,
		0.231819, -0.956278, 0.178304,
		35.330734, 38.489578, 32.411503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853905, 39.067642, 32.163883>,  <35.168461, 39.158974, 32.286690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853905, 39.067642, 32.163883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717728, 38.693119, 32.129436>,  <35.636021, 38.468403, 32.108768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717728, 38.693119, 32.129436>,  <35.853905, 39.067642, 32.163883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717728, 38.693119, 32.129436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641086, -0.164144, -0.749710,
		0.687827, -0.310445, 0.656139,
		-0.340445, -0.936312, -0.086119,
		35.615593, 38.412224, 32.103600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486122, 38.669411, 32.137997>,  <35.853905, 39.067642, 32.163883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486122, 38.669411, 32.137997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200287, 38.448753, 31.965923>,  <36.028786, 38.316360, 31.862679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200287, 38.448753, 31.965923>,  <36.486122, 38.669411, 32.137997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200287, 38.448753, 31.965923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578198, -0.119605, -0.807082,
		0.393766, -0.825463, 0.404425,
		-0.714587, -0.551640, -0.430185,
		35.985912, 38.283260, 31.836868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757137, 37.999283, 32.076519>,  <36.486122, 38.669411, 32.137997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757137, 37.999283, 32.076519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475933, 38.040020, 31.794977>,  <36.307209, 38.064461, 31.626053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475933, 38.040020, 31.794977>,  <36.757137, 37.999283, 32.076519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475933, 38.040020, 31.794977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694519, -0.114661, -0.710279,
		-0.153038, -0.988171, 0.009879,
		-0.703009, 0.101839, -0.703851,
		36.265030, 38.070572, 31.583822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935852, 37.524715, 31.661377>,  <36.757137, 37.999283, 32.076519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935852, 37.524715, 31.661377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681404, 37.746449, 31.446692>,  <36.528736, 37.879490, 31.317881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681404, 37.746449, 31.446692>,  <36.935852, 37.524715, 31.661377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681404, 37.746449, 31.446692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557419, -0.150809, -0.816419,
		-0.533513, -0.818515, -0.213065,
		-0.636120, 0.554337, -0.536714,
		36.490566, 37.912750, 31.285677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853298, 37.203068, 30.919495>,  <36.935852, 37.524715, 31.661377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853298, 37.203068, 30.919495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725052, 37.569710, 30.823961>,  <36.648102, 37.789696, 30.766642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725052, 37.569710, 30.823961>,  <36.853298, 37.203068, 30.919495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725052, 37.569710, 30.823961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667701, 0.039862, -0.743362,
		-0.671849, -0.397803, -0.624798,
		-0.320617, 0.916604, -0.238833,
		36.628868, 37.844692, 30.752312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904152, 37.098297, 30.181692>,  <36.853298, 37.203068, 30.919495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904152, 37.098297, 30.181692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893089, 37.485817, 30.280209>,  <36.886452, 37.718330, 30.339319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893089, 37.485817, 30.280209>,  <36.904152, 37.098297, 30.181692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893089, 37.485817, 30.280209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634802, 0.207351, -0.744333,
		-0.772179, 0.135760, -0.620732,
		-0.027659, 0.968801, 0.246293,
		36.884792, 37.776459, 30.354097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741653, 37.482681, 29.566811>,  <36.904152, 37.098297, 30.181692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741653, 37.482681, 29.566811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914093, 37.728252, 29.831308>,  <37.017555, 37.875595, 29.990007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914093, 37.728252, 29.831308>,  <36.741653, 37.482681, 29.566811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914093, 37.728252, 29.831308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588846, 0.363853, -0.721714,
		-0.683678, 0.700500, -0.204655,
		0.431096, 0.613931, 0.661245,
		37.043423, 37.912430, 30.029682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753674, 38.142841, 29.269901>,  <36.741653, 37.482681, 29.566811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753674, 38.142841, 29.269901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049438, 38.162460, 29.538488>,  <37.226898, 38.174232, 29.699640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049438, 38.162460, 29.538488>,  <36.753674, 38.142841, 29.269901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049438, 38.162460, 29.538488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612673, 0.364450, -0.701290,
		-0.279114, 0.929930, 0.239426,
		0.739410, 0.049050, 0.671466,
		37.271263, 38.177174, 29.739929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178814, 38.689144, 29.010212>,  <36.753674, 38.142841, 29.269901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178814, 38.689144, 29.010212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399410, 38.490154, 29.278055>,  <37.531769, 38.370758, 29.438761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399410, 38.490154, 29.278055>,  <37.178814, 38.689144, 29.010212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399410, 38.490154, 29.278055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826350, 0.216077, -0.520054,
		0.114028, 0.840135, 0.530255,
		0.551491, -0.497477, 0.669607,
		37.564857, 38.340912, 29.478937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495495, 39.220249, 29.467239>,  <37.178814, 38.689144, 29.010212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495495, 39.220249, 29.467239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729248, 38.895935, 29.480577>,  <37.869499, 38.701347, 29.488581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729248, 38.895935, 29.480577>,  <37.495495, 39.220249, 29.467239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729248, 38.895935, 29.480577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729356, 0.506792, -0.459566,
		0.355712, 0.292887, 0.887517,
		0.584387, -0.810789, 0.033347,
		37.904564, 38.652699, 29.490582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160728, 39.445660, 29.325176>,  <37.495495, 39.220249, 29.467239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160728, 39.445660, 29.325176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212624, 39.050507, 29.291126>,  <38.243763, 38.813416, 29.270697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212624, 39.050507, 29.291126>,  <38.160728, 39.445660, 29.325176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212624, 39.050507, 29.291126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822658, 0.155172, -0.546951,
		0.553535, 0.000934, 0.832825,
		0.129742, -0.987887, -0.085125,
		38.251545, 38.754139, 29.265589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939003, 39.272736, 29.481247>,  <38.160728, 39.445660, 29.325176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939003, 39.272736, 29.481247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.790924, 38.955688, 29.287458>,  <38.702076, 38.765461, 29.171186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.790924, 38.955688, 29.287458>,  <38.939003, 39.272736, 29.481247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790924, 38.955688, 29.287458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786724, 0.009826, -0.617227,
		0.493987, -0.609637, 0.619935,
		-0.370193, -0.792619, -0.484470,
		38.679867, 38.717903, 29.142117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511707, 38.859932, 29.378426>,  <38.939003, 39.272736, 29.481247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511707, 38.859932, 29.378426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.274010, 38.670544, 29.118366>,  <39.131390, 38.556911, 28.962332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.274010, 38.670544, 29.118366>,  <39.511707, 38.859932, 29.378426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274010, 38.670544, 29.118366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779400, -0.139496, -0.610800,
		0.198505, -0.869691, 0.451922,
		-0.594248, -0.473475, -0.650147,
		39.095734, 38.528500, 28.923323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906967, 38.183388, 29.152031>,  <39.511707, 38.859932, 29.378426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906967, 38.183388, 29.152031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.648296, 38.294651, 28.867939>,  <39.493092, 38.361408, 28.697483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.648296, 38.294651, 28.867939>,  <39.906967, 38.183388, 29.152031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648296, 38.294651, 28.867939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691280, -0.179825, -0.699853,
		-0.322391, -0.943551, -0.075998,
		-0.646681, 0.278162, -0.710232,
		39.454292, 38.378101, 28.654869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081665, 37.729591, 28.611658>,  <39.906967, 38.183388, 29.152031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081665, 37.729591, 28.611658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857864, 38.005344, 28.427608>,  <39.723583, 38.170795, 28.317179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857864, 38.005344, 28.427608>,  <40.081665, 37.729591, 28.611658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857864, 38.005344, 28.427608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641741, 0.008995, -0.766868,
		-0.524526, -0.724343, -0.447437,
		-0.559501, 0.689381, -0.460123,
		39.690014, 38.212158, 28.289572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148262, 37.535950, 27.857437>,  <40.081665, 37.729591, 28.611658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148262, 37.535950, 27.857437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020771, 37.915054, 27.852346>,  <39.944279, 38.142517, 27.849291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020771, 37.915054, 27.852346>,  <40.148262, 37.535950, 27.857437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020771, 37.915054, 27.852346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484114, 0.151229, -0.861838,
		-0.814892, -0.280850, -0.507025,
		-0.318724, 0.947762, -0.012728,
		39.925156, 38.199383, 27.848528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953671, 37.543743, 27.214911>,  <40.148262, 37.535950, 27.857437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953671, 37.543743, 27.214911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999489, 37.918732, 27.346382>,  <40.026981, 38.143723, 27.425264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999489, 37.918732, 27.346382>,  <39.953671, 37.543743, 27.214911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999489, 37.918732, 27.346382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440914, 0.248508, -0.862461,
		-0.890210, 0.243709, -0.384878,
		0.114544, 0.937470, 0.328680,
		40.033852, 38.199974, 27.444986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632053, 38.069496, 26.635771>,  <39.953671, 37.543743, 27.214911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632053, 38.069496, 26.635771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899090, 38.252285, 26.870888>,  <40.059311, 38.361958, 27.011959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899090, 38.252285, 26.870888>,  <39.632053, 38.069496, 26.635771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899090, 38.252285, 26.870888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512013, 0.291379, -0.808048,
		-0.540524, 0.840403, -0.039453,
		0.667590, 0.456969, 0.587795,
		40.099365, 38.389378, 27.047226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774132, 38.700096, 26.292999>,  <39.632053, 38.069496, 26.635771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774132, 38.700096, 26.292999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.076008, 38.653828, 26.551321>,  <40.257133, 38.626068, 26.706314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.076008, 38.653828, 26.551321>,  <39.774132, 38.700096, 26.292999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076008, 38.653828, 26.551321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644423, 0.315404, -0.696591,
		-0.123116, 0.941882, 0.312571,
		0.754693, -0.115667, 0.645802,
		40.302414, 38.619129, 26.745062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139256, 39.365242, 26.190594>,  <39.774132, 38.700096, 26.292999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139256, 39.365242, 26.190594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387360, 39.093445, 26.347342>,  <40.536224, 38.930367, 26.441391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387360, 39.093445, 26.347342>,  <40.139256, 39.365242, 26.190594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387360, 39.093445, 26.347342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673755, 0.205709, -0.709745,
		0.401657, 0.704252, 0.585406,
		0.620263, -0.679494, 0.391869,
		40.573437, 38.889595, 26.464903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751732, 39.643539, 26.321377>,  <40.139256, 39.365242, 26.190594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751732, 39.643539, 26.321377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.864754, 39.260338, 26.301809>,  <40.932568, 39.030418, 26.290068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.864754, 39.260338, 26.301809>,  <40.751732, 39.643539, 26.321377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864754, 39.260338, 26.301809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609318, 0.218635, -0.762187,
		0.740873, 0.185552, 0.645505,
		0.282556, -0.958003, -0.048920,
		40.949520, 38.972939, 26.287132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463867, 39.634987, 26.158907>,  <40.751732, 39.643539, 26.321377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463867, 39.634987, 26.158907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.319126, 39.275692, 26.059118>,  <41.232281, 39.060116, 25.999245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.319126, 39.275692, 26.059118>,  <41.463867, 39.634987, 26.158907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319126, 39.275692, 26.059118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561949, 0.003354, -0.827165,
		0.743826, -0.439501, 0.503549,
		-0.361851, -0.898236, -0.249471,
		41.210571, 39.006222, 25.984278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044872, 39.311138, 26.006756>,  <41.463867, 39.634987, 26.158907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044872, 39.311138, 26.006756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.755009, 39.095520, 25.835037>,  <41.581089, 38.966148, 25.732006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.755009, 39.095520, 25.835037>,  <42.044872, 39.311138, 26.006756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755009, 39.095520, 25.835037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507524, 0.003916, -0.861629,
		0.466141, -0.842265, 0.270743,
		-0.724660, -0.539049, -0.429295,
		41.537609, 38.933804, 25.706249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657578, 39.005203, 26.354509>,  <42.044872, 39.311138, 26.006756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657578, 39.005203, 26.354509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036148, 39.120522, 26.412695>,  <43.263290, 39.189713, 26.447607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036148, 39.120522, 26.412695>,  <42.657578, 39.005203, 26.354509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036148, 39.120522, 26.412695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148443, -0.011629, 0.988853,
		0.286776, -0.957470, 0.031790,
		0.946427, 0.288298, 0.145464,
		43.320076, 39.207012, 26.456335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107037, 38.479721, 26.639729>,  <42.657578, 39.005203, 26.354509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107037, 38.479721, 26.639729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.270473, 38.830948, 26.739368>,  <43.368538, 39.041683, 26.799152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.270473, 38.830948, 26.739368>,  <43.107037, 38.479721, 26.639729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270473, 38.830948, 26.739368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217152, -0.171560, 0.960943,
		0.886507, -0.446728, 0.120576,
		0.408594, 0.878066, 0.249098,
		43.393051, 39.094368, 26.814098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304794, 38.373081, 27.344746>,  <43.107037, 38.479721, 26.639729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304794, 38.373081, 27.344746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.315807, 38.769238, 27.290537>,  <43.322414, 39.006931, 27.258011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.315807, 38.769238, 27.290537>,  <43.304794, 38.373081, 27.344746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315807, 38.769238, 27.290537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034376, 0.136433, 0.990053,
		0.999030, -0.022599, 0.037802,
		0.027532, 0.990392, -0.135524,
		43.324066, 39.066357, 27.249880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732624, 38.673416, 27.923716>,  <43.304794, 38.373081, 27.344746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732624, 38.673416, 27.923716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.503654, 38.983471, 27.816761>,  <43.366272, 39.169502, 27.752588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.503654, 38.983471, 27.816761>,  <43.732624, 38.673416, 27.923716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503654, 38.983471, 27.816761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232790, 0.159048, 0.959434,
		0.786216, 0.611451, 0.089400,
		-0.572428, 0.775134, -0.267385,
		43.331924, 39.216011, 27.736546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893665, 39.248165, 28.391348>,  <43.732624, 38.673416, 27.923716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893665, 39.248165, 28.391348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.533092, 39.327457, 28.237402>,  <43.316750, 39.375034, 28.145035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.533092, 39.327457, 28.237402>,  <43.893665, 39.248165, 28.391348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533092, 39.327457, 28.237402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400306, -0.043161, 0.915364,
		0.164843, 0.979204, 0.118261,
		-0.901433, 0.198232, -0.384867,
		43.262661, 39.386929, 28.121943>
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
