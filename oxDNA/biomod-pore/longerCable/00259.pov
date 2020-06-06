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
	<24.067919, 34.531094, 34.295692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156540, 34.599396, 34.679726>,  <24.209713, 34.640377, 34.910145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156540, 34.599396, 34.679726>,  <24.067919, 34.531094, 34.295692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156540, 34.599396, 34.679726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186444, 0.958969, -0.213580,
		-0.957159, 0.226321, 0.180625,
		0.221551, 0.170754, 0.960082,
		24.223005, 34.650623, 34.967751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.858641, 35.364201, 34.506695>,  <24.067919, 34.531094, 34.295692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.858641, 35.364201, 34.506695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.146284, 35.216824, 34.742367>,  <24.318871, 35.128399, 34.883770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.146284, 35.216824, 34.742367>,  <23.858641, 35.364201, 34.506695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.146284, 35.216824, 34.742367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498844, 0.863975, -0.068570,
		-0.483775, 0.343219, 0.805085,
		0.719108, -0.368439, 0.589183,
		24.362017, 35.106293, 34.919121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.025066, 35.747673, 35.178356>,  <23.858641, 35.364201, 34.506695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.025066, 35.747673, 35.178356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367857, 35.558796, 35.095776>,  <24.573532, 35.445469, 35.046227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367857, 35.558796, 35.095776>,  <24.025066, 35.747673, 35.178356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367857, 35.558796, 35.095776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507572, 0.842698, 0.179526,
		0.089205, -0.258639, 0.961846,
		0.856979, -0.472192, -0.206451,
		24.624950, 35.417137, 35.033840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405191, 36.105888, 35.697475>,  <24.025066, 35.747673, 35.178356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405191, 36.105888, 35.697475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638319, 35.932636, 35.422455>,  <24.778194, 35.828686, 35.257442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638319, 35.932636, 35.422455>,  <24.405191, 36.105888, 35.697475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.638319, 35.932636, 35.422455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664944, 0.740550, 0.097137,
		0.467091, -0.513794, 0.719613,
		0.582817, -0.433131, -0.687548,
		24.813164, 35.802696, 35.216190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058144, 35.991127, 36.055660>,  <24.405191, 36.105888, 35.697475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058144, 35.991127, 36.055660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063187, 36.027298, 35.657330>,  <25.066214, 36.049000, 35.418331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063187, 36.027298, 35.657330>,  <25.058144, 35.991127, 36.055660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063187, 36.027298, 35.657330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667565, 0.740692, 0.075715,
		0.744445, -0.665731, -0.051030,
		0.012608, 0.090432, -0.995823,
		25.066969, 36.054428, 35.358582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682858, 35.850113, 35.891659>,  <25.058144, 35.991127, 36.055660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682858, 35.850113, 35.891659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507708, 36.106777, 35.639774>,  <25.402618, 36.260777, 35.488644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507708, 36.106777, 35.639774>,  <25.682858, 35.850113, 35.891659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507708, 36.106777, 35.639774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606826, 0.727748, 0.319602,
		0.663346, -0.242178, -0.708041,
		-0.437875, 0.641664, -0.629708,
		25.376345, 36.299278, 35.450863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229683, 36.076569, 35.443863>,  <25.682858, 35.850113, 35.891659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229683, 36.076569, 35.443863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947552, 36.358150, 35.410500>,  <25.778273, 36.527100, 35.390480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947552, 36.358150, 35.410500>,  <26.229683, 36.076569, 35.443863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947552, 36.358150, 35.410500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674582, 0.702699, 0.226170,
		0.217827, 0.103255, -0.970510,
		-0.705330, 0.703955, -0.083413,
		25.735952, 36.569336, 35.385475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350981, 36.525043, 34.871864>,  <26.229683, 36.076569, 35.443863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350981, 36.525043, 34.871864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182713, 36.697483, 35.191158>,  <26.081751, 36.800949, 35.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182713, 36.697483, 35.191158>,  <26.350981, 36.525043, 34.871864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182713, 36.697483, 35.191158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816579, 0.563285, 0.126127,
		-0.395263, 0.704884, -0.588987,
		-0.420673, 0.431102, 0.798239,
		26.056511, 36.826813, 35.430630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527054, 37.151310, 34.841469>,  <26.350981, 36.525043, 34.871864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527054, 37.151310, 34.841469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460499, 37.097252, 35.232170>,  <26.420567, 37.064816, 35.466591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460499, 37.097252, 35.232170>,  <26.527054, 37.151310, 34.841469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460499, 37.097252, 35.232170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852574, 0.477957, 0.211365,
		-0.495413, 0.867924, 0.035698,
		-0.166387, -0.135148, 0.976755,
		26.410583, 37.056709, 35.525196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820526, 37.778061, 35.111771>,  <26.527054, 37.151310, 34.841469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820526, 37.778061, 35.111771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826584, 37.527908, 35.423840>,  <26.830219, 37.377815, 35.611080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826584, 37.527908, 35.423840>,  <26.820526, 37.778061, 35.111771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826584, 37.527908, 35.423840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871685, 0.390497, 0.296103,
		-0.489833, 0.675577, 0.551054,
		0.015145, -0.625386, 0.780169,
		26.831127, 37.340294, 35.657890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759953, 38.182720, 35.751904>,  <26.820526, 37.778061, 35.111771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759953, 38.182720, 35.751904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937981, 37.836021, 35.841942>,  <27.044798, 37.628002, 35.895966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937981, 37.836021, 35.841942>,  <26.759953, 38.182720, 35.751904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937981, 37.836021, 35.841942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732635, 0.496977, 0.465038,
		-0.514934, -0.042065, 0.856197,
		0.445072, -0.866743, 0.225093,
		27.071503, 37.576000, 35.909470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026375, 38.102322, 36.469810>,  <26.759953, 38.182720, 35.751904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026375, 38.102322, 36.469810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261292, 37.848125, 36.269314>,  <27.402241, 37.695606, 36.149017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261292, 37.848125, 36.269314>,  <27.026375, 38.102322, 36.469810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261292, 37.848125, 36.269314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808680, 0.486388, 0.330851,
		0.033543, -0.599647, 0.799561,
		0.587291, -0.635492, -0.501238,
		27.437479, 37.657478, 36.118942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545052, 37.758522, 36.819637>,  <27.026375, 38.102322, 36.469810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545052, 37.758522, 36.819637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715593, 37.787838, 36.459003>,  <27.817919, 37.805428, 36.242622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715593, 37.787838, 36.459003>,  <27.545052, 37.758522, 36.819637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715593, 37.787838, 36.459003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766332, 0.500275, 0.403063,
		0.480578, -0.862759, 0.157133,
		0.426356, 0.073287, -0.901582,
		27.843500, 37.809826, 36.188530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162762, 38.096165, 36.583267>,  <27.545052, 37.758522, 36.819637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162762, 38.096165, 36.583267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521851, 38.144714, 36.752670>,  <28.737305, 38.173843, 36.854313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521851, 38.144714, 36.752670>,  <28.162762, 38.096165, 36.583267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521851, 38.144714, 36.752670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221344, -0.955427, -0.195361,
		0.380918, 0.269121, -0.884576,
		0.897724, 0.121379, 0.423507,
		28.791168, 38.181129, 36.879723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198278, 37.438725, 36.512569>,  <28.162762, 38.096165, 36.583267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198278, 37.438725, 36.512569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518433, 37.237812, 36.643471>,  <28.710526, 37.117264, 36.722012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518433, 37.237812, 36.643471>,  <28.198278, 37.438725, 36.512569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518433, 37.237812, 36.643471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144980, -0.367508, -0.918650,
		0.581691, 0.782720, -0.221327,
		0.800385, -0.502282, 0.327255,
		28.758549, 37.087128, 36.741646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093170, 36.732075, 36.098953>,  <28.198278, 37.438725, 36.512569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093170, 36.732075, 36.098953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843370, 37.024361, 36.209267>,  <27.693491, 37.199734, 36.275455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843370, 37.024361, 36.209267>,  <28.093170, 36.732075, 36.098953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843370, 37.024361, 36.209267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777064, -0.545785, -0.313513,
		-0.078568, -0.410093, 0.908653,
		-0.624499, 0.730713, 0.275788,
		27.656021, 37.243576, 36.292004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413506, 36.357529, 36.277248>,  <28.093170, 36.732075, 36.098953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413506, 36.357529, 36.277248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301022, 36.729897, 36.184032>,  <27.233530, 36.953320, 36.128105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301022, 36.729897, 36.184032>,  <27.413506, 36.357529, 36.277248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301022, 36.729897, 36.184032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896892, -0.341327, -0.281211,
		-0.341327, 0.129928, 0.930921,
		0.281211, -0.930921, 0.233035,
		27.216658, 37.009174, 36.114120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794806, 36.435043, 36.609402>,  <27.413506, 36.357529, 36.277248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794806, 36.435043, 36.609402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806253, 36.721172, 36.330120>,  <26.813122, 36.892849, 36.162552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806253, 36.721172, 36.330120>,  <26.794806, 36.435043, 36.609402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806253, 36.721172, 36.330120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945102, -0.208102, -0.251944,
		-0.325519, 0.667085, 0.670101,
		0.028618, 0.715327, -0.698204,
		26.814838, 36.935772, 36.120659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325346, 36.889450, 36.783737>,  <26.794806, 36.435043, 36.609402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325346, 36.889450, 36.783737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348709, 36.914490, 36.385204>,  <26.362728, 36.929512, 36.146084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348709, 36.914490, 36.385204>,  <26.325346, 36.889450, 36.783737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348709, 36.914490, 36.385204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995804, -0.066769, -0.062573,
		-0.070441, 0.995803, 0.058436,
		0.058409, 0.062599, -0.996328,
		26.366232, 36.933270, 36.086308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655966, 37.141708, 36.618366>,  <26.325346, 36.889450, 36.783737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655966, 37.141708, 36.618366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811367, 37.088486, 36.253651>,  <25.904608, 37.056553, 36.034821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811367, 37.088486, 36.253651>,  <25.655966, 37.141708, 36.618366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811367, 37.088486, 36.253651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921165, -0.031631, -0.387884,
		0.022768, 0.990604, -0.134852,
		0.388505, -0.133053, -0.911790,
		25.927917, 37.048569, 35.980114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128578, 37.356941, 36.163631>,  <25.655966, 37.141708, 36.618366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128578, 37.356941, 36.163631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400316, 37.210220, 35.909405>,  <25.563360, 37.122189, 35.756870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400316, 37.210220, 35.909405>,  <25.128578, 37.356941, 36.163631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400316, 37.210220, 35.909405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697396, -0.053242, -0.714706,
		0.228314, 0.928775, -0.291974,
		0.679346, -0.366799, -0.635568,
		25.604120, 37.100182, 35.718735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900539, 37.503136, 35.468349>,  <25.128578, 37.356941, 36.163631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900539, 37.503136, 35.468349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164284, 37.203869, 35.438725>,  <25.322531, 37.024307, 35.420948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164284, 37.203869, 35.438725>,  <24.900539, 37.503136, 35.468349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164284, 37.203869, 35.438725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638255, -0.504974, -0.581061,
		0.397330, 0.430402, -0.810483,
		0.659363, -0.748168, -0.074065,
		25.362093, 36.979420, 35.416504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971025, 37.353142, 34.784420>,  <24.900539, 37.503136, 35.468349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971025, 37.353142, 34.784420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109777, 37.025627, 34.967400>,  <25.193027, 36.829117, 35.077187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109777, 37.025627, 34.967400>,  <24.971025, 37.353142, 34.784420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109777, 37.025627, 34.967400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423613, -0.571920, -0.702467,
		0.836796, 0.049891, -0.545238,
		0.346879, -0.818791, 0.457445,
		25.213840, 36.779991, 35.104633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988400, 36.787815, 34.231827>,  <24.971025, 37.353142, 34.784420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988400, 36.787815, 34.231827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118698, 36.590260, 34.554310>,  <25.196878, 36.471725, 34.747799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118698, 36.590260, 34.554310>,  <24.988400, 36.787815, 34.231827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118698, 36.590260, 34.554310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336334, -0.857468, -0.389395,
		0.883610, -0.144309, -0.445430,
		0.325749, -0.493887, 0.806203,
		25.216423, 36.442093, 34.796169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293789, 36.104317, 34.106331>,  <24.988400, 36.787815, 34.231827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293789, 36.104317, 34.106331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234751, 36.073994, 34.500786>,  <25.199327, 36.055801, 34.737457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234751, 36.073994, 34.500786>,  <25.293789, 36.104317, 34.106331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234751, 36.073994, 34.500786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064770, -0.994177, -0.086119,
		0.986925, -0.076583, 0.141825,
		-0.147595, -0.075807, 0.986138,
		25.190472, 36.051250, 34.796627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681171, 35.511604, 34.325668>,  <25.293789, 36.104317, 34.106331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681171, 35.511604, 34.325668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397654, 35.592365, 34.596031>,  <25.227543, 35.640820, 34.758247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397654, 35.592365, 34.596031>,  <25.681171, 35.511604, 34.325668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397654, 35.592365, 34.596031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217290, -0.974065, 0.063101,
		0.671115, -0.102142, 0.734283,
		-0.708794, 0.201900, 0.675904,
		25.185015, 35.652935, 34.798801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793884, 35.012226, 34.866932>,  <25.681171, 35.511604, 34.325668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793884, 35.012226, 34.866932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419447, 35.150162, 34.894695>,  <25.194784, 35.232922, 34.911354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419447, 35.150162, 34.894695>,  <25.793884, 35.012226, 34.866932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419447, 35.150162, 34.894695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323642, -0.921641, 0.214085,
		0.137793, 0.177941, 0.974346,
		-0.936092, 0.344839, 0.069407,
		25.138618, 35.253613, 34.915516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573627, 34.869263, 35.507832>,  <25.793884, 35.012226, 34.866932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573627, 34.869263, 35.507832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233618, 34.922779, 35.304043>,  <25.029612, 34.954887, 35.181770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233618, 34.922779, 35.304043>,  <25.573627, 34.869263, 35.507832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233618, 34.922779, 35.304043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354390, -0.860825, 0.365223,
		-0.389704, 0.490999, 0.779134,
		-0.850023, 0.133789, -0.509473,
		24.978611, 34.962917, 35.151199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909744, 34.781025, 35.887775>,  <25.573627, 34.869263, 35.507832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909744, 34.781025, 35.887775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876793, 34.669552, 35.505039>,  <24.857021, 34.602669, 35.275398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876793, 34.669552, 35.505039>,  <24.909744, 34.781025, 35.887775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876793, 34.669552, 35.505039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284585, -0.913552, 0.290575,
		-0.955105, 0.296241, -0.004050,
		-0.082380, -0.278683, -0.956843,
		24.852079, 34.585949, 35.217987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327168, 34.386967, 35.835999>,  <24.909744, 34.781025, 35.887775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327168, 34.386967, 35.835999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543621, 34.257881, 35.525379>,  <24.673494, 34.180431, 35.339008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543621, 34.257881, 35.525379>,  <24.327168, 34.386967, 35.835999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543621, 34.257881, 35.525379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175848, -0.946444, 0.270780,
		-0.822344, -0.009974, -0.568903,
		0.541135, -0.322714, -0.776549,
		24.705961, 34.161068, 35.292416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.901506, 33.922874, 35.408989>,  <24.327168, 34.386967, 35.835999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.901506, 33.922874, 35.408989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.286366, 33.827679, 35.355873>,  <24.517281, 33.770561, 35.324005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.286366, 33.827679, 35.355873>,  <23.901506, 33.922874, 35.408989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286366, 33.827679, 35.355873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177995, -0.917727, 0.355098,
		-0.206372, -0.318021, -0.925350,
		0.962148, -0.237990, -0.132787,
		24.575010, 33.756283, 35.316036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.051472, 33.338825, 35.022888>,  <23.901506, 33.922874, 35.408989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.051472, 33.338825, 35.022888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339027, 33.363953, 35.299801>,  <24.511560, 33.379028, 35.465950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339027, 33.363953, 35.299801>,  <24.051472, 33.338825, 35.022888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339027, 33.363953, 35.299801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193424, -0.938501, 0.286012,
		0.667674, -0.339514, -0.662527,
		0.718887, 0.062814, 0.692283,
		24.554693, 33.382797, 35.507484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.561314, 32.797272, 34.924007>,  <24.051472, 33.338825, 35.022888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.561314, 32.797272, 34.924007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628056, 32.898865, 35.305092>,  <24.668100, 32.959820, 35.533741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628056, 32.898865, 35.305092>,  <24.561314, 32.797272, 34.924007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628056, 32.898865, 35.305092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031086, -0.967128, 0.252385,
		0.985492, -0.012496, -0.169264,
		0.166854, 0.253985, 0.952708,
		24.678112, 32.975060, 35.590904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054047, 32.424015, 35.082054>,  <24.561314, 32.797272, 34.924007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054047, 32.424015, 35.082054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902845, 32.509377, 35.442402>,  <24.812124, 32.560593, 35.658611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902845, 32.509377, 35.442402>,  <25.054047, 32.424015, 35.082054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902845, 32.509377, 35.442402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025292, -0.975087, 0.220376,
		0.925459, 0.060518, 0.373983,
		-0.378003, 0.213408, 0.900873,
		24.789444, 32.573399, 35.712662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334669, 32.095634, 35.567631>,  <25.054047, 32.424015, 35.082054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334669, 32.095634, 35.567631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966806, 32.164295, 35.708920>,  <24.746088, 32.205494, 35.793694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966806, 32.164295, 35.708920>,  <25.334669, 32.095634, 35.567631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966806, 32.164295, 35.708920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103263, -0.973464, 0.204215,
		0.378905, 0.151333, 0.912978,
		-0.919656, 0.171655, 0.353223,
		24.690910, 32.215794, 35.814888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233364, 31.587452, 35.881531>,  <25.334669, 32.095634, 35.567631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233364, 31.587452, 35.881531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866489, 31.745853, 35.899189>,  <24.646364, 31.840895, 35.909782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866489, 31.745853, 35.899189>,  <25.233364, 31.587452, 35.881531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866489, 31.745853, 35.899189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384044, -0.908101, 0.166918,
		0.106187, 0.136142, 0.984982,
		-0.917188, 0.396001, 0.044144,
		24.591333, 31.864655, 35.912434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776804, 32.083248, 36.121044>,  <25.233364, 31.587452, 35.881531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776804, 32.083248, 36.121044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414904, 32.170734, 36.267246>,  <25.197763, 32.223225, 36.354965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414904, 32.170734, 36.267246>,  <25.776804, 32.083248, 36.121044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414904, 32.170734, 36.267246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108178, -0.947952, 0.299473,
		0.411978, 0.231408, 0.881320,
		-0.904750, 0.218715, 0.365502,
		25.143478, 32.236347, 36.376896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761581, 31.987837, 36.766392>,  <25.776804, 32.083248, 36.121044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761581, 31.987837, 36.766392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375139, 31.966301, 36.665401>,  <25.143274, 31.953379, 36.604809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375139, 31.966301, 36.665401>,  <25.761581, 31.987837, 36.766392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375139, 31.966301, 36.665401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061881, -0.901197, 0.428969,
		-0.250625, 0.430052, 0.867319,
		-0.966104, -0.053839, -0.252475,
		25.085308, 31.950150, 36.589661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410585, 31.737932, 37.386066>,  <25.761581, 31.987837, 36.766392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410585, 31.737932, 37.386066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166656, 31.663313, 37.077957>,  <25.020298, 31.618542, 36.893093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166656, 31.663313, 37.077957>,  <25.410585, 31.737932, 37.386066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166656, 31.663313, 37.077957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014397, -0.969136, 0.246107,
		-0.792405, 0.161172, 0.588317,
		-0.609825, -0.186546, -0.770269,
		24.983709, 31.607349, 36.846878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039570, 31.172350, 37.665016>,  <25.410585, 31.737932, 37.386066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039570, 31.172350, 37.665016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048241, 31.179836, 37.265179>,  <25.053444, 31.184328, 37.025276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048241, 31.179836, 37.265179>,  <25.039570, 31.172350, 37.665016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048241, 31.179836, 37.265179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036395, -0.999147, -0.019497,
		-0.999102, 0.036803, -0.020976,
		0.021676, 0.018716, -0.999590,
		25.054743, 31.185452, 36.965302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146435, 30.561470, 37.250813>,  <25.039570, 31.172350, 37.665016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146435, 30.561470, 37.250813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855431, 30.416603, 37.017723>,  <24.680828, 30.329683, 36.877869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855431, 30.416603, 37.017723>,  <25.146435, 30.561470, 37.250813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855431, 30.416603, 37.017723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025247, 0.862884, -0.504771,
		0.685630, -0.352515, -0.636903,
		-0.727512, -0.362166, -0.582719,
		24.637177, 30.307953, 36.842907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374508, 30.609800, 36.486271>,  <25.146435, 30.561470, 37.250813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374508, 30.609800, 36.486271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981443, 30.636612, 36.555420>,  <24.745605, 30.652699, 36.596909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981443, 30.636612, 36.555420>,  <25.374508, 30.609800, 36.486271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981443, 30.636612, 36.555420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022650, 0.881984, -0.470734,
		-0.184023, -0.466488, -0.865173,
		-0.982661, 0.067029, 0.172872,
		24.686646, 30.656721, 36.607281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988699, 30.813866, 35.891640>,  <25.374508, 30.609800, 36.486271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988699, 30.813866, 35.891640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836224, 30.975609, 36.224190>,  <24.744738, 31.072655, 36.423721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836224, 30.975609, 36.224190>,  <24.988699, 30.813866, 35.891640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836224, 30.975609, 36.224190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045106, 0.890072, -0.453583,
		-0.923396, -0.210401, -0.321047,
		-0.381189, 0.404356, 0.831379,
		24.721867, 31.096916, 36.473602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464916, 31.368933, 35.726242>,  <24.988699, 30.813866, 35.891640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464916, 31.368933, 35.726242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614571, 31.426685, 36.092667>,  <24.704363, 31.461336, 36.312523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614571, 31.426685, 36.092667>,  <24.464916, 31.368933, 35.726242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614571, 31.426685, 36.092667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016085, 0.986647, -0.162076,
		-0.927235, 0.075373, 0.366817,
		0.374135, 0.144382, 0.916066,
		24.726810, 31.469999, 36.367485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.843626, 31.780468, 36.170612>,  <24.464916, 31.368933, 35.726242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.843626, 31.780468, 36.170612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223173, 31.839733, 36.282108>,  <24.450901, 31.875292, 36.349007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223173, 31.839733, 36.282108>,  <23.843626, 31.780468, 36.170612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223173, 31.839733, 36.282108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127666, 0.987688, -0.090408,
		-0.288707, 0.050199, 0.956101,
		0.948868, 0.148163, 0.278743,
		24.507833, 31.884182, 36.365730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.812510, 32.419941, 36.552303>,  <23.843626, 31.780468, 36.170612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.812510, 32.419941, 36.552303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188070, 32.351391, 36.432911>,  <24.413406, 32.310261, 36.361275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188070, 32.351391, 36.432911>,  <23.812510, 32.419941, 36.552303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188070, 32.351391, 36.432911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113433, 0.972846, -0.201753,
		0.324953, 0.155569, 0.932847,
		0.938903, -0.171375, -0.298482,
		24.469742, 32.299976, 36.343365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.295340, 32.855640, 36.914326>,  <23.812510, 32.419941, 36.552303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.295340, 32.855640, 36.914326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442616, 32.758236, 36.555408>,  <24.530981, 32.699791, 36.340057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442616, 32.758236, 36.555408>,  <24.295340, 32.855640, 36.914326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442616, 32.758236, 36.555408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223664, 0.959949, -0.168740,
		0.902448, -0.138564, 0.407906,
		0.368188, -0.243513, -0.897295,
		24.553072, 32.685181, 36.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826654, 33.369621, 36.806282>,  <24.295340, 32.855640, 36.914326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826654, 33.369621, 36.806282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797382, 33.236263, 36.430305>,  <24.779819, 33.156246, 36.204720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797382, 33.236263, 36.430305>,  <24.826654, 33.369621, 36.806282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797382, 33.236263, 36.430305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325882, 0.882741, -0.338482,
		0.942574, -0.331081, 0.044048,
		-0.073182, -0.333399, -0.939941,
		24.775429, 33.136242, 36.148323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501163, 33.310020, 36.421631>,  <24.826654, 33.369621, 36.806282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501163, 33.310020, 36.421631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197514, 33.361599, 36.166412>,  <25.015324, 33.392548, 36.013283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197514, 33.361599, 36.166412>,  <25.501163, 33.310020, 36.421631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197514, 33.361599, 36.166412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404505, 0.861404, -0.307178,
		0.510004, -0.491279, -0.706074,
		-0.759125, 0.128948, -0.638045,
		24.969776, 33.400284, 35.974998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781919, 33.448257, 35.821171>,  <25.501163, 33.310020, 36.421631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781919, 33.448257, 35.821171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411659, 33.599350, 35.812305>,  <25.189503, 33.690006, 35.806988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411659, 33.599350, 35.812305>,  <25.781919, 33.448257, 35.821171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411659, 33.599350, 35.812305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359498, 0.859673, -0.362936,
		-0.118042, -0.343919, -0.931551,
		-0.925650, 0.377732, -0.022161,
		25.133965, 33.712669, 35.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084734, 33.458138, 35.112576>,  <25.781919, 33.448257, 35.821171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084734, 33.458138, 35.112576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269970, 33.316429, 34.787601>,  <26.381111, 33.231407, 34.592617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269970, 33.316429, 34.787601>,  <26.084734, 33.458138, 35.112576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269970, 33.316429, 34.787601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668004, 0.741953, 0.057231,
		0.582511, -0.569210, 0.580241,
		0.463088, -0.354266, -0.812431,
		26.408895, 33.210148, 34.543873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824455, 33.042652, 35.219776>,  <26.084734, 33.458138, 35.112576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824455, 33.042652, 35.219776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773317, 33.268246, 34.893444>,  <26.742634, 33.403603, 34.697647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773317, 33.268246, 34.893444>,  <26.824455, 33.042652, 35.219776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773317, 33.268246, 34.893444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750371, 0.592888, 0.292280,
		0.648536, -0.574807, -0.498997,
		-0.127845, 0.563986, -0.815828,
		26.734964, 33.437443, 34.648697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478765, 33.161190, 34.963329>,  <26.824455, 33.042652, 35.219776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478765, 33.161190, 34.963329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271957, 33.483513, 34.847839>,  <27.147873, 33.676907, 34.778545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271957, 33.483513, 34.847839>,  <27.478765, 33.161190, 34.963329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271957, 33.483513, 34.847839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726010, 0.591501, 0.350765,
		0.453429, -0.028262, -0.890844,
		-0.517022, 0.805808, -0.288722,
		27.116850, 33.725254, 34.761223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476633, 33.006611, 34.267673>,  <27.478765, 33.161190, 34.963329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476633, 33.006611, 34.267673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783850, 32.829720, 34.452950>,  <27.968180, 32.723583, 34.564114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783850, 32.829720, 34.452950>,  <27.476633, 33.006611, 34.267673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783850, 32.829720, 34.452950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418079, 0.201635, 0.885750,
		-0.485103, -0.873942, -0.030025,
		0.768040, -0.442232, 0.463190,
		28.014261, 32.697048, 34.591908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174164, 32.502197, 34.839718>,  <27.476633, 33.006611, 34.267673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174164, 32.502197, 34.839718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551790, 32.587105, 34.940659>,  <27.778366, 32.638050, 35.001225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551790, 32.587105, 34.940659>,  <27.174164, 32.502197, 34.839718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551790, 32.587105, 34.940659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296584, 0.212049, 0.931167,
		0.144140, -0.953929, 0.263142,
		0.944066, 0.212262, 0.252356,
		27.835011, 32.650784, 35.016365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227482, 32.177380, 35.428497>,  <27.174164, 32.502197, 34.839718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227482, 32.177380, 35.428497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489683, 32.478611, 35.405930>,  <27.647005, 32.659351, 35.392387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489683, 32.478611, 35.405930>,  <27.227482, 32.177380, 35.428497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489683, 32.478611, 35.405930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306082, 0.333240, 0.891776,
		0.690381, -0.567294, 0.448945,
		0.655505, 0.753080, -0.056424,
		27.686335, 32.704536, 35.389004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654716, 32.025078, 35.986607>,  <27.227482, 32.177380, 35.428497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654716, 32.025078, 35.986607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679295, 32.415531, 35.903282>,  <27.694040, 32.649803, 35.853287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679295, 32.415531, 35.903282>,  <27.654716, 32.025078, 35.986607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679295, 32.415531, 35.903282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589940, 0.203866, 0.781287,
		0.805106, 0.074888, 0.588384,
		0.061443, 0.976130, -0.208313,
		27.697727, 32.708370, 35.840790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725636, 32.417522, 36.603050>,  <27.654716, 32.025078, 35.986607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725636, 32.417522, 36.603050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580025, 32.667107, 36.326454>,  <27.492659, 32.816856, 36.160496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580025, 32.667107, 36.326454>,  <27.725636, 32.417522, 36.603050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580025, 32.667107, 36.326454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655610, 0.355680, 0.666084,
		0.661560, 0.695818, 0.279600,
		-0.364025, 0.623963, -0.691488,
		27.470818, 32.854294, 36.119007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181019, 32.646999, 37.154049>,  <27.725636, 32.417522, 36.603050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181019, 32.646999, 37.154049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446722, 32.681564, 37.451046>,  <27.606144, 32.702305, 37.629246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446722, 32.681564, 37.451046>,  <27.181019, 32.646999, 37.154049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446722, 32.681564, 37.451046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746930, -0.115636, -0.654770,
		0.029279, 0.989526, -0.141356,
		0.664258, 0.086412, 0.742492,
		27.646000, 32.707489, 37.673794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470745, 32.762379, 37.012154>,  <27.181019, 32.646999, 37.154049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470745, 32.762379, 37.012154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428572, 33.153511, 36.939796>,  <26.403267, 33.388191, 36.896381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428572, 33.153511, 36.939796>,  <26.470745, 32.762379, 37.012154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428572, 33.153511, 36.939796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783729, -0.030259, -0.620365,
		-0.612089, -0.207177, -0.763168,
		-0.105433, 0.977835, -0.180892,
		26.396942, 33.446861, 36.885529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303247, 32.797073, 36.257629>,  <26.470745, 32.762379, 37.012154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303247, 32.797073, 36.257629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490713, 33.113346, 36.415195>,  <26.603193, 33.303112, 36.509735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490713, 33.113346, 36.415195>,  <26.303247, 32.797073, 36.257629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490713, 33.113346, 36.415195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728992, -0.094322, -0.677993,
		-0.498922, 0.604916, -0.620607,
		0.468666, 0.790683, 0.393919,
		26.631313, 33.350552, 36.533371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522148, 33.398369, 35.770290>,  <26.303247, 32.797073, 36.257629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522148, 33.398369, 35.770290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800426, 33.374477, 36.056629>,  <26.967392, 33.360142, 36.228432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800426, 33.374477, 36.056629>,  <26.522148, 33.398369, 35.770290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800426, 33.374477, 36.056629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714522, 0.160131, -0.681041,
		-0.073951, 0.985287, 0.154081,
		0.695694, -0.059730, 0.715851,
		27.009134, 33.356560, 36.271385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044889, 33.767429, 35.563961>,  <26.522148, 33.398369, 35.770290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044889, 33.767429, 35.563961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246172, 33.514271, 35.799324>,  <27.366941, 33.362373, 35.940540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246172, 33.514271, 35.799324>,  <27.044889, 33.767429, 35.563961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246172, 33.514271, 35.799324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761893, 0.003611, -0.647693,
		0.407801, 0.774225, 0.484020,
		0.503207, -0.632901, 0.588404,
		27.397135, 33.324402, 35.975845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757471, 33.961487, 35.563007>,  <27.044889, 33.767429, 35.563961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757471, 33.961487, 35.563007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764107, 33.577095, 35.673458>,  <27.768087, 33.346458, 35.739727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764107, 33.577095, 35.673458>,  <27.757471, 33.961487, 35.563007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764107, 33.577095, 35.673458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678462, -0.192039, -0.709091,
		0.734448, 0.199104, 0.648802,
		0.016588, -0.960978, 0.276127,
		27.769083, 33.288803, 35.756298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540417, 33.680920, 35.361885>,  <27.757471, 33.961487, 35.563007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540417, 33.680920, 35.361885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310602, 33.355709, 35.399620>,  <28.172712, 33.160583, 35.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310602, 33.355709, 35.399620>,  <28.540417, 33.680920, 35.361885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310602, 33.355709, 35.399620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593729, -0.493332, -0.635696,
		0.563376, -0.309220, 0.766153,
		-0.574537, -0.813023, 0.094339,
		28.138241, 33.111801, 35.427921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983154, 33.059872, 35.398544>,  <28.540417, 33.680920, 35.361885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983154, 33.059872, 35.398544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629494, 32.938602, 35.256355>,  <28.417297, 32.865841, 35.171043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629494, 32.938602, 35.256355>,  <28.983154, 33.059872, 35.398544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629494, 32.938602, 35.256355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466638, -0.535801, -0.703681,
		0.022878, -0.788037, 0.615203,
		-0.884153, -0.303176, -0.355469,
		28.364248, 32.847649, 35.149715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959162, 32.356258, 35.391808>,  <28.983154, 33.059872, 35.398544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959162, 32.356258, 35.391808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708290, 32.488373, 35.109657>,  <28.557768, 32.567642, 34.940369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708290, 32.488373, 35.109657>,  <28.959162, 32.356258, 35.391808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708290, 32.488373, 35.109657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422064, -0.617021, -0.664189,
		-0.654608, -0.714279, 0.247577,
		-0.627176, 0.330290, -0.705378,
		28.520136, 32.587460, 34.898045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619635, 31.767174, 34.992020>,  <28.959162, 32.356258, 35.391808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619635, 31.767174, 34.992020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651180, 32.100105, 34.772560>,  <28.670109, 32.299862, 34.640884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651180, 32.100105, 34.772560>,  <28.619635, 31.767174, 34.992020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651180, 32.100105, 34.772560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579251, -0.486177, -0.654294,
		-0.811325, -0.266202, -0.520470,
		0.078866, 0.832327, -0.548645,
		28.674839, 32.349804, 34.607967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419846, 31.719744, 34.184776>,  <28.619635, 31.767174, 34.992020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419846, 31.719744, 34.184776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669380, 32.029686, 34.225616>,  <28.819101, 32.215652, 34.250122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669380, 32.029686, 34.225616>,  <28.419846, 31.719744, 34.184776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669380, 32.029686, 34.225616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662207, -0.454659, -0.595623,
		-0.415102, 0.439183, -0.796749,
		0.623836, 0.774857, 0.102100,
		28.856531, 32.262142, 34.256245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680063, 31.878117, 33.548386>,  <28.419846, 31.719744, 34.184776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680063, 31.878117, 33.548386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958258, 32.034428, 33.789581>,  <29.125174, 32.128216, 33.934299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958258, 32.034428, 33.789581>,  <28.680063, 31.878117, 33.548386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958258, 32.034428, 33.789581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717342, -0.426038, -0.551283,
		0.041466, 0.815956, -0.576625,
		0.695487, 0.390777, 0.602985,
		29.166904, 32.151661, 33.970478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255510, 31.986641, 33.106243>,  <28.680063, 31.878117, 33.548386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255510, 31.986641, 33.106243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395979, 31.991913, 33.480732>,  <29.480259, 31.995075, 33.705425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395979, 31.991913, 33.480732>,  <29.255510, 31.986641, 33.106243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395979, 31.991913, 33.480732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845782, -0.433405, -0.311147,
		0.401661, 0.901103, -0.163345,
		0.351170, 0.013179, 0.936219,
		29.501329, 31.995867, 33.761597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803881, 32.276775, 33.011333>,  <29.255510, 31.986641, 33.106243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803881, 32.276775, 33.011333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839430, 32.065437, 33.349079>,  <29.860760, 31.938635, 33.551727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839430, 32.065437, 33.349079>,  <29.803881, 32.276775, 33.011333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839430, 32.065437, 33.349079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708758, -0.562073, -0.426306,
		0.699831, 0.636339, 0.324514,
		0.088875, -0.528344, 0.844366,
		29.866093, 31.906935, 33.602390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460945, 32.206913, 33.103401>,  <29.803881, 32.276775, 33.011333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460945, 32.206913, 33.103401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336706, 31.910606, 33.341660>,  <30.262163, 31.732822, 33.484615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336706, 31.910606, 33.341660>,  <30.460945, 32.206913, 33.103401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336706, 31.910606, 33.341660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686544, -0.608219, -0.398406,
		0.657409, 0.285193, 0.697480,
		-0.310598, -0.740766, 0.595647,
		30.243526, 31.688377, 33.520355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049936, 31.787088, 33.235214>,  <30.460945, 32.206913, 33.103401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049936, 31.787088, 33.235214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731731, 31.554113, 33.302059>,  <30.540808, 31.414328, 33.342167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731731, 31.554113, 33.302059>,  <31.049936, 31.787088, 33.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731731, 31.554113, 33.302059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443882, -0.747886, -0.493594,
		0.412467, -0.318483, 0.853487,
		-0.795512, -0.582439, 0.167110,
		30.493078, 31.379381, 33.352192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367252, 31.052656, 33.296616>,  <31.049936, 31.787088, 33.235214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367252, 31.052656, 33.296616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972538, 31.036270, 33.233913>,  <30.735708, 31.026438, 33.196293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972538, 31.036270, 33.233913>,  <31.367252, 31.052656, 33.296616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972538, 31.036270, 33.233913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135078, -0.742279, -0.656335,
		-0.089471, -0.668838, 0.738005,
		-0.986787, -0.040965, -0.156758,
		30.676502, 31.023981, 33.186886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205320, 30.330456, 33.355038>,  <31.367252, 31.052656, 33.296616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205320, 30.330456, 33.355038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915550, 30.526640, 33.161274>,  <30.741688, 30.644350, 33.045013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915550, 30.526640, 33.161274>,  <31.205320, 30.330456, 33.355038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915550, 30.526640, 33.161274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143933, -0.579602, -0.802088,
		-0.674161, -0.650775, 0.349284,
		-0.724424, 0.490463, -0.484413,
		30.698223, 30.673779, 33.015949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114960, 29.841413, 32.912773>,  <31.205320, 30.330456, 33.355038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114960, 29.841413, 32.912773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882648, 30.136635, 32.775383>,  <30.743261, 30.313766, 32.692947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882648, 30.136635, 32.775383>,  <31.114960, 29.841413, 32.912773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882648, 30.136635, 32.775383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002779, -0.423725, -0.905787,
		-0.814058, -0.525106, 0.248141,
		-0.580777, 0.738052, -0.343477,
		30.708416, 30.358051, 32.672340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514061, 29.557774, 32.548786>,  <31.114960, 29.841413, 32.912773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514061, 29.557774, 32.548786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549295, 29.924652, 32.393356>,  <30.570436, 30.144779, 32.300098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549295, 29.924652, 32.393356>,  <30.514061, 29.557774, 32.548786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549295, 29.924652, 32.393356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046956, -0.393482, -0.918133,
		-0.995005, 0.062630, -0.077728,
		0.088088, 0.917196, -0.388576,
		30.575722, 30.199812, 32.276783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020781, 29.643356, 32.054459>,  <30.514061, 29.557774, 32.548786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020781, 29.643356, 32.054459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313276, 29.899330, 31.959993>,  <30.488773, 30.052916, 31.903315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313276, 29.899330, 31.959993>,  <30.020781, 29.643356, 32.054459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313276, 29.899330, 31.959993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005923, -0.340249, -0.940317,
		-0.682097, 0.688993, -0.245013,
		0.731237, 0.639937, -0.236164,
		30.532648, 30.091311, 31.889145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859369, 29.850840, 31.316156>,  <30.020781, 29.643356, 32.054459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859369, 29.850840, 31.316156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245710, 29.928553, 31.384720>,  <30.477516, 29.975180, 31.425858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245710, 29.928553, 31.384720>,  <29.859369, 29.850840, 31.316156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245710, 29.928553, 31.384720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196072, -0.115644, -0.973747,
		-0.169359, 0.974105, -0.149788,
		0.965854, 0.194282, 0.171409,
		30.535467, 29.986837, 31.436142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957834, 30.293858, 30.830853>,  <29.859369, 29.850840, 31.316156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957834, 30.293858, 30.830853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294077, 30.109217, 30.944206>,  <30.495823, 29.998432, 31.012218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294077, 30.109217, 30.944206>,  <29.957834, 30.293858, 30.830853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294077, 30.109217, 30.944206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197175, -0.226510, -0.953842,
		0.504485, 0.857681, -0.099389,
		0.840605, -0.461603, 0.283384,
		30.546259, 29.970736, 31.029221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483829, 30.508904, 30.386766>,  <29.957834, 30.293858, 30.830853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483829, 30.508904, 30.386766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622604, 30.162466, 30.530722>,  <30.705870, 29.954603, 30.617094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622604, 30.162466, 30.530722>,  <30.483829, 30.508904, 30.386766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622604, 30.162466, 30.530722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200563, -0.306332, -0.930556,
		0.916192, 0.395026, 0.067427,
		0.346939, -0.866092, 0.359887,
		30.726686, 29.902639, 30.638687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199089, 30.475399, 30.156054>,  <30.483829, 30.508904, 30.386766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199089, 30.475399, 30.156054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049244, 30.112942, 30.234612>,  <30.959337, 29.895468, 30.281746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049244, 30.112942, 30.234612>,  <31.199089, 30.475399, 30.156054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049244, 30.112942, 30.234612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202680, -0.286728, -0.936327,
		0.904758, -0.310954, 0.291069,
		-0.374612, -0.906143, 0.196395,
		30.936861, 29.841099, 30.293530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610575, 30.138168, 29.657412>,  <31.199089, 30.475399, 30.156054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610575, 30.138168, 29.657412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315367, 29.894226, 29.772930>,  <31.138243, 29.747862, 29.842241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315367, 29.894226, 29.772930>,  <31.610575, 30.138168, 29.657412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315367, 29.894226, 29.772930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123167, -0.542549, -0.830945,
		0.663443, -0.577684, 0.475526,
		-0.738020, -0.609854, 0.288799,
		31.093960, 29.711269, 29.859570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867519, 29.461027, 29.631830>,  <31.610575, 30.138168, 29.657412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867519, 29.461027, 29.631830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473261, 29.462290, 29.564308>,  <31.236706, 29.463047, 29.523796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473261, 29.462290, 29.564308>,  <31.867519, 29.461027, 29.631830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473261, 29.462290, 29.564308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152710, -0.409731, -0.899333,
		-0.072002, -0.912201, 0.403367,
		-0.985645, 0.003156, -0.168804,
		31.177567, 29.463236, 29.513666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836847, 29.188324, 28.954439>,  <31.867519, 29.461027, 29.631830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836847, 29.188324, 28.954439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447096, 29.265921, 28.999966>,  <31.213245, 29.312479, 29.027281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447096, 29.265921, 28.999966>,  <31.836847, 29.188324, 28.954439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447096, 29.265921, 28.999966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165625, -0.276493, -0.946636,
		-0.152169, -0.941233, 0.301539,
		-0.974378, 0.193991, 0.113817,
		31.154783, 29.324120, 29.034111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484373, 28.576246, 28.670881>,  <31.836847, 29.188324, 28.954439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484373, 28.576246, 28.670881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232430, 28.886921, 28.668621>,  <31.081263, 29.073326, 28.667265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232430, 28.886921, 28.668621>,  <31.484373, 28.576246, 28.670881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232430, 28.886921, 28.668621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295528, -0.246375, -0.923018,
		-0.718290, -0.579701, 0.384715,
		-0.629859, 0.776689, -0.005651,
		31.043472, 29.119928, 28.666925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801838, 28.323250, 28.526159>,  <31.484373, 28.576246, 28.670881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801838, 28.323250, 28.526159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780834, 28.712442, 28.436222>,  <30.768232, 28.945957, 28.382259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780834, 28.712442, 28.436222>,  <30.801838, 28.323250, 28.526159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780834, 28.712442, 28.436222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446176, -0.224288, -0.866385,
		-0.893404, 0.054828, 0.445896,
		-0.052507, 0.972979, -0.224843,
		30.765081, 29.004335, 28.368769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110104, 28.593451, 28.507690>,  <30.801838, 28.323250, 28.526159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110104, 28.593451, 28.507690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333660, 28.816772, 28.262436>,  <30.467794, 28.950766, 28.115284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333660, 28.816772, 28.262436>,  <30.110104, 28.593451, 28.507690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333660, 28.816772, 28.262436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541865, -0.313816, -0.779681,
		-0.627712, 0.767993, 0.127137,
		0.558892, 0.558306, -0.613135,
		30.501328, 28.984264, 28.078495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535366, 28.715530, 28.038557>,  <30.110104, 28.593451, 28.507690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535366, 28.715530, 28.038557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854383, 28.876225, 27.858541>,  <30.045794, 28.972641, 27.750532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854383, 28.876225, 27.858541>,  <29.535366, 28.715530, 28.038557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854383, 28.876225, 27.858541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456010, -0.086922, -0.885720,
		-0.394944, 0.911620, 0.113872,
		0.797542, 0.401737, -0.450037,
		30.093647, 28.996746, 27.723530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312586, 29.269194, 27.702011>,  <29.535366, 28.715530, 28.038557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312586, 29.269194, 27.702011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654440, 29.173918, 27.517464>,  <29.859552, 29.116753, 27.406734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654440, 29.173918, 27.517464>,  <29.312586, 29.269194, 27.702011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654440, 29.173918, 27.517464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513513, -0.256281, -0.818917,
		0.076816, 0.936796, -0.341339,
		0.854637, -0.238188, -0.461370,
		29.910831, 29.102461, 27.379053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375834, 29.765720, 27.132551>,  <29.312586, 29.269194, 27.702011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375834, 29.765720, 27.132551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607744, 29.449663, 27.053020>,  <29.746891, 29.260029, 27.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607744, 29.449663, 27.053020>,  <29.375834, 29.765720, 27.132551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607744, 29.449663, 27.053020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546237, -0.195875, -0.814407,
		0.604553, 0.580781, -0.545169,
		0.579777, -0.790143, -0.198828,
		29.781677, 29.212620, 26.993372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321964, 29.710665, 26.439688>,  <29.375834, 29.765720, 27.132551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321964, 29.710665, 26.439688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498253, 29.355642, 26.493366>,  <29.604025, 29.142628, 26.525574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498253, 29.355642, 26.493366>,  <29.321964, 29.710665, 26.439688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498253, 29.355642, 26.493366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130491, -0.211256, -0.968681,
		0.888109, 0.409406, -0.208923,
		0.440720, -0.887557, 0.134194,
		29.630468, 29.089375, 26.533625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869333, 29.578238, 25.889982>,  <29.321964, 29.710665, 26.439688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869333, 29.578238, 25.889982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762970, 29.217470, 26.026119>,  <29.699152, 29.001009, 26.107801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762970, 29.217470, 26.026119>,  <29.869333, 29.578238, 25.889982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762970, 29.217470, 26.026119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107183, -0.323203, -0.940240,
		0.958022, -0.286495, -0.010728,
		-0.265907, -0.901920, 0.340343,
		29.683197, 28.946894, 26.128222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223049, 29.117624, 25.389771>,  <29.869333, 29.578238, 25.889982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223049, 29.117624, 25.389771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934229, 28.909544, 25.572214>,  <29.760937, 28.784697, 25.681681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934229, 28.909544, 25.572214>,  <30.223049, 29.117624, 25.389771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934229, 28.909544, 25.572214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090389, -0.582686, -0.807655,
		0.685912, -0.624393, 0.373707,
		-0.722049, -0.520201, 0.456110,
		29.717615, 28.753483, 25.709047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374386, 28.442497, 25.253555>,  <30.223049, 29.117624, 25.389771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374386, 28.442497, 25.253555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982231, 28.468676, 25.327921>,  <29.746939, 28.484383, 25.372540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982231, 28.468676, 25.327921>,  <30.374386, 28.442497, 25.253555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982231, 28.468676, 25.327921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191567, -0.538225, -0.820741,
		0.046350, -0.840256, 0.540205,
		-0.980385, 0.065444, 0.185912,
		29.688116, 28.488310, 25.383694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155777, 27.719112, 25.292480>,  <30.374386, 28.442497, 25.253555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155777, 27.719112, 25.292480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842884, 27.959011, 25.225054>,  <29.655148, 28.102949, 25.184597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842884, 27.959011, 25.225054>,  <30.155777, 27.719112, 25.292480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842884, 27.959011, 25.225054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288348, -0.588402, -0.755406,
		-0.552243, -0.542295, 0.633202,
		-0.782230, 0.599750, -0.168571,
		29.608213, 28.138935, 25.174484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727789, 27.251352, 25.163969>,  <30.155777, 27.719112, 25.292480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727789, 27.251352, 25.163969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567932, 27.576332, 24.994162>,  <29.472017, 27.771320, 24.892277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567932, 27.576332, 24.994162>,  <29.727789, 27.251352, 25.163969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567932, 27.576332, 24.994162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108189, -0.501676, -0.858264,
		-0.910265, -0.297070, 0.288388,
		-0.399642, 0.812448, -0.424518,
		29.448040, 27.820066, 24.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439331, 26.982603, 24.653522>,  <29.727789, 27.251352, 25.163969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439331, 26.982603, 24.653522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434908, 27.370913, 24.557629>,  <29.432255, 27.603899, 24.500093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434908, 27.370913, 24.557629>,  <29.439331, 26.982603, 24.653522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434908, 27.370913, 24.557629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023970, -0.239936, -0.970493,
		-0.999652, -0.004983, 0.025922,
		-0.011056, 0.970776, -0.239733,
		29.431591, 27.662146, 24.485708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985294, 27.027239, 24.130585>,  <29.439331, 26.982603, 24.653522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985294, 27.027239, 24.130585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187263, 27.368816, 24.080252>,  <29.308445, 27.573763, 24.050053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187263, 27.368816, 24.080252>,  <28.985294, 27.027239, 24.130585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187263, 27.368816, 24.080252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051017, -0.116000, -0.991938,
		-0.861655, 0.507273, -0.015005,
		0.504924, 0.853943, -0.125832,
		29.338741, 27.625000, 24.042501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614405, 27.477415, 23.603195>,  <28.985294, 27.027239, 24.130585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614405, 27.477415, 23.603195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005695, 27.560156, 23.609924>,  <29.240471, 27.609800, 23.613962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005695, 27.560156, 23.609924>,  <28.614405, 27.477415, 23.603195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005695, 27.560156, 23.609924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028749, -0.054788, -0.998084,
		-0.205535, 0.976837, -0.059542,
		0.978227, 0.206853, 0.016822,
		29.299164, 27.622211, 23.614971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639482, 27.919872, 23.093702>,  <28.614405, 27.477415, 23.603195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639482, 27.919872, 23.093702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024765, 27.843506, 23.169367>,  <29.255936, 27.797686, 23.214766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024765, 27.843506, 23.169367>,  <28.639482, 27.919872, 23.093702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024765, 27.843506, 23.169367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192824, 0.000619, -0.981233,
		0.187215, 0.981606, 0.037410,
		0.963208, -0.190915, 0.189162,
		29.313726, 27.786232, 23.226116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957701, 28.323280, 22.690073>,  <28.639482, 27.919872, 23.093702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957701, 28.323280, 22.690073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243855, 28.056852, 22.774521>,  <29.415546, 27.896996, 22.825190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243855, 28.056852, 22.774521>,  <28.957701, 28.323280, 22.690073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243855, 28.056852, 22.774521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312620, 0.034893, -0.949237,
		0.624893, 0.745072, 0.233188,
		0.715387, -0.666071, 0.211120,
		29.458471, 27.857031, 22.837856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618074, 28.650707, 22.630474>,  <28.957701, 28.323280, 22.690073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618074, 28.650707, 22.630474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621769, 28.256971, 22.560062>,  <29.623985, 28.020729, 22.517817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621769, 28.256971, 22.560062>,  <29.618074, 28.650707, 22.630474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621769, 28.256971, 22.560062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167075, 0.175079, -0.970275,
		0.985901, -0.020447, 0.166077,
		0.009237, -0.984342, -0.176027,
		29.624540, 27.961668, 22.507254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137018, 28.610500, 22.080086>,  <29.618074, 28.650707, 22.630474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137018, 28.610500, 22.080086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935404, 28.265032, 22.081631>,  <29.814434, 28.057751, 22.082558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935404, 28.265032, 22.081631>,  <30.137018, 28.610500, 22.080086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935404, 28.265032, 22.081631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071000, -0.045890, -0.996420,
		0.860759, -0.501958, 0.084451,
		-0.504036, -0.863674, 0.003861,
		29.784193, 28.005930, 22.082788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487152, 28.191841, 21.561054>,  <30.137018, 28.610500, 22.080086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487152, 28.191841, 21.561054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113136, 28.052082, 21.585112>,  <29.888727, 27.968225, 21.599546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113136, 28.052082, 21.585112>,  <30.487152, 28.191841, 21.561054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113136, 28.052082, 21.585112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062260, -0.005179, -0.998047,
		0.349029, -0.936960, -0.016911,
		-0.935041, -0.349400, 0.060143,
		29.832624, 27.947262, 21.603155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498621, 27.804285, 20.989996>,  <30.487152, 28.191841, 21.561054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498621, 27.804285, 20.989996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113482, 27.832161, 21.094355>,  <29.882399, 27.848886, 21.156969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113482, 27.832161, 21.094355>,  <30.498621, 27.804285, 20.989996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113482, 27.832161, 21.094355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260060, 0.020946, -0.965365,
		-0.072742, -0.997349, -0.002044,
		-0.962849, 0.069691, 0.260895,
		29.824627, 27.853067, 21.172623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093309, 27.370024, 20.469057>,  <30.498621, 27.804285, 20.989996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093309, 27.370024, 20.469057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846214, 27.634850, 20.638794>,  <29.697956, 27.793745, 20.740637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846214, 27.634850, 20.638794>,  <30.093309, 27.370024, 20.469057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846214, 27.634850, 20.638794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326542, 0.274932, -0.904313,
		-0.715381, -0.697195, 0.046356,
		-0.617738, 0.662066, 0.424344,
		29.660892, 27.833469, 20.766098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416189, 27.186829, 20.289789>,  <30.093309, 27.370024, 20.469057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416189, 27.186829, 20.289789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434389, 27.578815, 20.367342>,  <29.445309, 27.814009, 20.413874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434389, 27.578815, 20.367342>,  <29.416189, 27.186829, 20.289789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434389, 27.578815, 20.367342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298826, 0.198550, -0.933424,
		-0.953222, -0.015467, 0.301874,
		0.045500, 0.979968, 0.193884,
		29.448040, 27.872807, 20.425507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844200, 27.549223, 19.985699>,  <29.416189, 27.186829, 20.289789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844200, 27.549223, 19.985699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106762, 27.847805, 20.029404>,  <29.264299, 28.026955, 20.055626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106762, 27.847805, 20.029404>,  <28.844200, 27.549223, 19.985699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106762, 27.847805, 20.029404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197899, 0.310135, -0.929867,
		-0.727989, 0.588747, 0.351297,
		0.656406, 0.746454, 0.109263,
		29.303684, 28.071741, 20.062183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297434, 28.040333, 19.893116>,  <28.844200, 27.549223, 19.985699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297434, 28.040333, 19.893116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051336, 28.355013, 19.872801>,  <27.903677, 28.543821, 19.860613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051336, 28.355013, 19.872801>,  <28.297434, 28.040333, 19.893116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051336, 28.355013, 19.872801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529742, -0.460278, -0.712403,
		-0.583824, -0.411396, 0.699931,
		-0.615242, 0.786700, -0.050787,
		27.866764, 28.591022, 19.857565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601845, 27.775295, 19.850050>,  <28.297434, 28.040333, 19.893116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601845, 27.775295, 19.850050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589525, 28.142715, 19.692408>,  <27.582132, 28.363167, 19.597822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589525, 28.142715, 19.692408>,  <27.601845, 27.775295, 19.850050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589525, 28.142715, 19.692408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442740, -0.366041, -0.818533,
		-0.896121, 0.149276, 0.417952,
		-0.030800, 0.918548, -0.394107,
		27.580286, 28.418280, 19.574175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961079, 27.794964, 19.545645>,  <27.601845, 27.775295, 19.850050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961079, 27.794964, 19.545645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163168, 28.100878, 19.385719>,  <27.284422, 28.284426, 19.289764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163168, 28.100878, 19.385719>,  <26.961079, 27.794964, 19.545645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163168, 28.100878, 19.385719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180695, -0.359274, -0.915572,
		-0.843858, 0.534814, -0.043321,
		0.505225, 0.764785, -0.399815,
		27.314735, 28.330313, 19.265776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631363, 28.020704, 18.940578>,  <26.961079, 27.794964, 19.545645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631363, 28.020704, 18.940578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002245, 28.148344, 18.862123>,  <27.224773, 28.224928, 18.815050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002245, 28.148344, 18.862123>,  <26.631363, 28.020704, 18.940578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002245, 28.148344, 18.862123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080022, -0.342793, -0.935997,
		-0.365912, 0.883554, -0.292303,
		0.927203, 0.319102, -0.196136,
		27.280405, 28.244074, 18.803282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303484, 27.988697, 18.219650>,  <26.631363, 28.020704, 18.940578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303484, 27.988697, 18.219650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507088, 28.189722, 17.940125>,  <26.629250, 28.310337, 17.772409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507088, 28.189722, 17.940125>,  <26.303484, 27.988697, 18.219650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507088, 28.189722, 17.940125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487913, 0.500373, 0.715239,
		0.709119, -0.705025, 0.009489,
		0.509009, 0.502560, -0.698815,
		26.659790, 28.340490, 17.730480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975183, 27.843233, 18.199440>,  <26.303484, 27.988697, 18.219650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975183, 27.843233, 18.199440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994188, 28.225237, 18.082340>,  <27.005590, 28.454439, 18.012079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994188, 28.225237, 18.082340>,  <26.975183, 27.843233, 18.199440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994188, 28.225237, 18.082340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497313, 0.231558, 0.836098,
		0.866269, -0.185313, -0.463936,
		0.047512, 0.955008, -0.292750,
		27.008442, 28.511740, 17.994514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676649, 28.074455, 18.039352>,  <26.975183, 27.843233, 18.199440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676649, 28.074455, 18.039352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434233, 28.363419, 18.172522>,  <27.288782, 28.536797, 18.252422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434233, 28.363419, 18.172522>,  <27.676649, 28.074455, 18.039352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434233, 28.363419, 18.172522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615049, 0.160178, 0.772047,
		0.504407, 0.672658, -0.541391,
		-0.606043, 0.722408, 0.332923,
		27.252420, 28.580141, 18.272398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053576, 28.681322, 18.225569>,  <27.676649, 28.074455, 18.039352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053576, 28.681322, 18.225569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711863, 28.705324, 18.432102>,  <27.506834, 28.719727, 18.556023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711863, 28.705324, 18.432102>,  <28.053576, 28.681322, 18.225569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711863, 28.705324, 18.432102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515673, 0.222900, 0.827283,
		-0.065448, 0.972993, -0.221364,
		-0.854282, 0.060007, 0.516335,
		27.455578, 28.723326, 18.587002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919487, 29.366917, 18.586092>,  <28.053576, 28.681322, 18.225569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919487, 29.366917, 18.586092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730890, 29.092073, 18.807209>,  <27.617733, 28.927168, 18.939878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730890, 29.092073, 18.807209>,  <27.919487, 29.366917, 18.586092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730890, 29.092073, 18.807209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281326, 0.476895, 0.832722,
		-0.835794, 0.548136, -0.031550,
		-0.471491, -0.687108, 0.552791,
		27.589443, 28.885941, 18.973047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502403, 29.647469, 19.101187>,  <27.919487, 29.366917, 18.586092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502403, 29.647469, 19.101187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524872, 29.275244, 19.245907>,  <27.538353, 29.051908, 19.332739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524872, 29.275244, 19.245907>,  <27.502403, 29.647469, 19.101187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524872, 29.275244, 19.245907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187849, 0.365750, 0.911559,
		-0.980590, 0.016761, 0.195349,
		0.056170, -0.930562, 0.361799,
		27.541723, 28.996075, 19.354446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072479, 29.700171, 19.681795>,  <27.502403, 29.647469, 19.101187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072479, 29.700171, 19.681795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286236, 29.363850, 19.716393>,  <27.414490, 29.162058, 19.737150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286236, 29.363850, 19.716393>,  <27.072479, 29.700171, 19.681795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286236, 29.363850, 19.716393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333033, 0.303503, 0.892734,
		-0.776862, -0.448264, 0.442204,
		0.534391, -0.840800, 0.086493,
		27.446554, 29.111610, 19.742340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897274, 29.444994, 20.408682>,  <27.072479, 29.700171, 19.681795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897274, 29.444994, 20.408682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233974, 29.268923, 20.283653>,  <27.435995, 29.163280, 20.208637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233974, 29.268923, 20.283653>,  <26.897274, 29.444994, 20.408682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233974, 29.268923, 20.283653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470257, 0.313448, 0.824990,
		-0.265167, -0.841424, 0.470842,
		0.841751, -0.440177, -0.312570,
		27.486500, 29.136869, 20.189882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023943, 28.891062, 20.940832>,  <26.897274, 29.444994, 20.408682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023943, 28.891062, 20.940832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341768, 29.030642, 20.742077>,  <27.532463, 29.114389, 20.622824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341768, 29.030642, 20.742077>,  <27.023943, 28.891062, 20.940832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341768, 29.030642, 20.742077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348925, 0.407317, 0.844005,
		0.496910, -0.843993, 0.201881,
		0.794564, 0.348953, -0.496890,
		27.580137, 29.135326, 20.593010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595953, 28.804790, 21.316771>,  <27.023943, 28.891062, 20.940832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595953, 28.804790, 21.316771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769911, 29.067982, 21.070868>,  <27.874287, 29.225897, 20.923325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769911, 29.067982, 21.070868>,  <27.595953, 28.804790, 21.316771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769911, 29.067982, 21.070868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499004, 0.392192, 0.772774,
		0.749574, -0.642843, -0.157772,
		0.434896, 0.657980, -0.614758,
		27.900379, 29.265375, 20.886440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197050, 28.828876, 21.632751>,  <27.595953, 28.804790, 21.316771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197050, 28.828876, 21.632751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171097, 29.150299, 21.396080>,  <28.155525, 29.343153, 21.254076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171097, 29.150299, 21.396080>,  <28.197050, 28.828876, 21.632751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171097, 29.150299, 21.396080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321815, 0.578100, 0.749824,
		0.944577, -0.141759, -0.296107,
		-0.064885, 0.803558, -0.591680,
		28.151632, 29.391367, 21.218576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745001, 29.170374, 21.867516>,  <28.197050, 28.828876, 21.632751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745001, 29.170374, 21.867516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514826, 29.428736, 21.666847>,  <28.376720, 29.583754, 21.546446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514826, 29.428736, 21.666847>,  <28.745001, 29.170374, 21.867516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514826, 29.428736, 21.666847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243868, 0.721016, 0.648587,
		0.780639, 0.250881, -0.572417,
		-0.575440, 0.645906, -0.501671,
		28.342194, 29.622507, 21.516346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204018, 29.720982, 21.671387>,  <28.745001, 29.170374, 21.867516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204018, 29.720982, 21.671387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826534, 29.850431, 21.698769>,  <28.600044, 29.928101, 21.715197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826534, 29.850431, 21.698769>,  <29.204018, 29.720982, 21.671387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826534, 29.850431, 21.698769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272838, 0.644540, 0.714232,
		0.187022, 0.692702, -0.696553,
		-0.943707, 0.323623, 0.068453,
		28.543423, 29.947519, 21.719305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265047, 30.413050, 21.672918>,  <29.204018, 29.720982, 21.671387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265047, 30.413050, 21.672918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906000, 30.327589, 21.827131>,  <28.690571, 30.276312, 21.919659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906000, 30.327589, 21.827131>,  <29.265047, 30.413050, 21.672918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906000, 30.327589, 21.827131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096863, 0.757673, 0.645406,
		-0.429998, 0.616672, -0.659406,
		-0.897618, -0.213651, 0.385531,
		28.636715, 30.263494, 21.942791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045906, 31.087996, 21.836779>,  <29.265047, 30.413050, 21.672918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045906, 31.087996, 21.836779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814877, 30.828892, 22.035501>,  <28.676260, 30.673429, 22.154736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814877, 30.828892, 22.035501>,  <29.045906, 31.087996, 21.836779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814877, 30.828892, 22.035501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147044, 0.681178, 0.717199,
		-0.802987, 0.341181, -0.488678,
		-0.577572, -0.647760, 0.496808,
		28.641605, 30.634563, 22.184544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510139, 31.496553, 22.027180>,  <29.045906, 31.087996, 21.836779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510139, 31.496553, 22.027180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519712, 31.180214, 22.271797>,  <28.525455, 30.990410, 22.418568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519712, 31.180214, 22.271797>,  <28.510139, 31.496553, 22.027180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519712, 31.180214, 22.271797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075592, 0.611398, 0.787705,
		-0.996852, 0.027378, 0.074412,
		0.023930, -0.790850, 0.611543,
		28.526892, 30.942959, 22.455259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090084, 31.613728, 22.550114>,  <28.510139, 31.496553, 22.027180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090084, 31.613728, 22.550114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301247, 31.314528, 22.711016>,  <28.427944, 31.135008, 22.807556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301247, 31.314528, 22.711016>,  <28.090084, 31.613728, 22.550114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301247, 31.314528, 22.711016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090949, 0.520696, 0.848884,
		-0.844418, -0.411547, 0.342909,
		0.527907, -0.748000, 0.402256,
		28.459620, 31.090128, 22.831692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780567, 31.506378, 23.180685>,  <28.090084, 31.613728, 22.550114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780567, 31.506378, 23.180685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137617, 31.332245, 23.227520>,  <28.351847, 31.227764, 23.255621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137617, 31.332245, 23.227520>,  <27.780567, 31.506378, 23.180685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137617, 31.332245, 23.227520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136661, 0.508821, 0.849956,
		-0.429592, -0.742688, 0.513679,
		0.892622, -0.435334, 0.117088,
		28.405403, 31.201645, 23.262646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800995, 31.338978, 23.830322>,  <27.780567, 31.506378, 23.180685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800995, 31.338978, 23.830322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190905, 31.335773, 23.741104>,  <28.424850, 31.333851, 23.687574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190905, 31.335773, 23.741104>,  <27.800995, 31.338978, 23.830322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190905, 31.335773, 23.741104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217529, 0.257686, 0.941424,
		0.049935, -0.966196, 0.252928,
		0.974775, -0.008009, -0.223043,
		28.483337, 31.333370, 23.674191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124138, 31.033056, 24.306812>,  <27.800995, 31.338978, 23.830322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124138, 31.033056, 24.306812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459848, 31.208807, 24.178711>,  <28.661276, 31.314257, 24.101851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459848, 31.208807, 24.178711>,  <28.124138, 31.033056, 24.306812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459848, 31.208807, 24.178711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373349, -0.037533, 0.926931,
		0.395251, -0.897519, -0.195541,
		0.839278, 0.439375, -0.320253,
		28.711632, 31.340620, 24.082636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616972, 30.503290, 24.323193>,  <28.124138, 31.033056, 24.306812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616972, 30.503290, 24.323193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771116, 30.872221, 24.334545>,  <28.863604, 31.093580, 24.341356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771116, 30.872221, 24.334545>,  <28.616972, 30.503290, 24.323193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771116, 30.872221, 24.334545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366217, -0.181095, 0.912737,
		0.846984, -0.341340, -0.407560,
		0.385361, 0.922329, 0.028380,
		28.886724, 31.148920, 24.343060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257067, 30.419863, 24.678797>,  <28.616972, 30.503290, 24.323193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257067, 30.419863, 24.678797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180311, 30.812037, 24.696360>,  <29.134258, 31.047340, 24.706898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180311, 30.812037, 24.696360>,  <29.257067, 30.419863, 24.678797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180311, 30.812037, 24.696360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279712, 0.011750, 0.960012,
		0.940713, 0.196497, -0.276493,
		-0.191888, 0.980434, 0.043909,
		29.122746, 31.106167, 24.709532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786520, 30.767569, 25.040091>,  <29.257067, 30.419863, 24.678797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786520, 30.767569, 25.040091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504362, 31.047953, 25.082186>,  <29.335068, 31.216183, 25.107443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504362, 31.047953, 25.082186>,  <29.786520, 30.767569, 25.040091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504362, 31.047953, 25.082186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275526, 0.134366, 0.951857,
		0.653072, 0.700431, -0.287913,
		-0.705395, 0.700958, 0.105237,
		29.292744, 31.258240, 25.113756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008858, 31.223246, 25.518921>,  <29.786520, 30.767569, 25.040091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008858, 31.223246, 25.518921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631275, 31.355001, 25.527426>,  <29.404726, 31.434055, 25.532528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631275, 31.355001, 25.527426>,  <30.008858, 31.223246, 25.518921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631275, 31.355001, 25.527426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130206, 0.312401, 0.940984,
		0.303308, 0.891015, -0.337781,
		-0.943955, 0.329389, 0.021262,
		29.348089, 31.453817, 25.533804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109911, 31.874226, 25.912636>,  <30.008858, 31.223246, 25.518921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109911, 31.874226, 25.912636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716488, 31.809450, 25.944611>,  <29.480434, 31.770586, 25.963795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716488, 31.809450, 25.944611>,  <30.109911, 31.874226, 25.912636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716488, 31.809450, 25.944611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041856, 0.226169, 0.973189,
		-0.175675, 0.960533, -0.215672,
		-0.983558, -0.161937, 0.079936,
		29.421421, 31.760868, 25.968592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782877, 32.442677, 26.210321>,  <30.109911, 31.874226, 25.912636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782877, 32.442677, 26.210321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533751, 32.134930, 26.267130>,  <29.384274, 31.950281, 26.301216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533751, 32.134930, 26.267130>,  <29.782877, 32.442677, 26.210321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533751, 32.134930, 26.267130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085122, 0.247089, 0.965247,
		-0.777722, 0.589084, -0.219382,
		-0.622818, -0.769368, 0.142023,
		29.346905, 31.904119, 26.309736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239510, 32.683552, 26.610792>,  <29.782877, 32.442677, 26.210321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239510, 32.683552, 26.610792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229197, 32.294914, 26.704893>,  <29.223009, 32.061733, 26.761353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229197, 32.294914, 26.704893>,  <29.239510, 32.683552, 26.610792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229197, 32.294914, 26.704893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218995, 0.235102, 0.946979,
		-0.975385, -0.027104, -0.218835,
		-0.025781, -0.971593, 0.235250,
		29.221462, 32.003437, 26.775469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575371, 32.778286, 26.836208>,  <29.239510, 32.683552, 26.610792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575371, 32.778286, 26.836208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669468, 32.419460, 26.985840>,  <28.725927, 32.204166, 27.075619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669468, 32.419460, 26.985840>,  <28.575371, 32.778286, 26.836208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669468, 32.419460, 26.985840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223802, 0.324542, 0.919013,
		-0.945818, -0.299912, -0.124418,
		0.235244, -0.897065, 0.374078,
		28.740042, 32.150341, 27.098063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067703, 32.548904, 27.266745>,  <28.575371, 32.778286, 26.836208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067703, 32.548904, 27.266745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412531, 32.377842, 27.375519>,  <28.619427, 32.275204, 27.440783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412531, 32.377842, 27.375519>,  <28.067703, 32.548904, 27.266745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412531, 32.377842, 27.375519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186654, 0.230939, 0.954897,
		-0.471164, -0.873945, 0.119263,
		0.862070, -0.427653, 0.271936,
		28.671152, 32.249546, 27.457100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935198, 32.251266, 27.912815>,  <28.067703, 32.548904, 27.266745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935198, 32.251266, 27.912815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334784, 32.267529, 27.904688>,  <28.574535, 32.277287, 27.899811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334784, 32.267529, 27.904688>,  <27.935198, 32.251266, 27.912815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334784, 32.267529, 27.904688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006474, 0.315222, 0.948996,
		0.044985, -0.948147, 0.314633,
		0.998967, 0.040654, -0.020319,
		28.634474, 32.279724, 27.898592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165564, 32.002548, 28.660273>,  <27.935198, 32.251266, 27.912815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165564, 32.002548, 28.660273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470406, 32.206043, 28.500082>,  <28.653311, 32.328140, 28.403967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470406, 32.206043, 28.500082>,  <28.165564, 32.002548, 28.660273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470406, 32.206043, 28.500082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065341, 0.554955, 0.829310,
		0.644146, -0.658190, 0.389694,
		0.762107, 0.508734, -0.400479,
		28.699038, 32.358662, 28.379938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775160, 31.961061, 29.089087>,  <28.165564, 32.002548, 28.660273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775160, 31.961061, 29.089087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785976, 32.293381, 28.866718>,  <28.792467, 32.492771, 28.733297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785976, 32.293381, 28.866718>,  <28.775160, 31.961061, 29.089087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785976, 32.293381, 28.866718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121252, 0.549291, 0.826787,
		0.992253, -0.089764, -0.085882,
		0.027041, 0.830796, -0.555920,
		28.794088, 32.542618, 28.699942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377169, 32.410248, 29.279459>,  <28.775160, 31.961061, 29.089087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377169, 32.410248, 29.279459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152534, 32.656528, 29.058359>,  <29.017754, 32.804298, 28.925699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152534, 32.656528, 29.058359>,  <29.377169, 32.410248, 29.279459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152534, 32.656528, 29.058359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175248, 0.741395, 0.647783,
		0.808647, 0.266917, -0.524257,
		-0.561586, 0.615702, -0.552750,
		28.984058, 32.841240, 28.892534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728205, 33.030548, 29.403294>,  <29.377169, 32.410248, 29.279459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728205, 33.030548, 29.403294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370419, 33.135067, 29.258154>,  <29.155746, 33.197777, 29.171070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370419, 33.135067, 29.258154>,  <29.728205, 33.030548, 29.403294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370419, 33.135067, 29.258154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096899, 0.678934, 0.727777,
		0.436514, 0.686130, -0.581963,
		-0.894464, 0.261293, -0.362849,
		29.102079, 33.213455, 29.149300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720118, 33.723831, 29.345341>,  <29.728205, 33.030548, 29.403294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720118, 33.723831, 29.345341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339024, 33.603607, 29.363033>,  <29.110367, 33.531471, 29.373650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339024, 33.603607, 29.363033>,  <29.720118, 33.723831, 29.345341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339024, 33.603607, 29.363033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151887, 0.597352, 0.787465,
		-0.263102, 0.743528, -0.614770,
		-0.952737, -0.300560, 0.044232,
		29.053202, 33.513439, 29.376303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412918, 34.264782, 29.633942>,  <29.720118, 33.723831, 29.345341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412918, 34.264782, 29.633942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106838, 34.010361, 29.673752>,  <28.923191, 33.857708, 29.697638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106838, 34.010361, 29.673752>,  <29.412918, 34.264782, 29.633942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106838, 34.010361, 29.673752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197750, 0.379334, 0.903881,
		-0.612672, 0.671967, -0.416046,
		-0.765198, -0.636055, 0.099526,
		28.877279, 33.819546, 29.703609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763397, 34.768559, 29.750662>,  <29.412918, 34.264782, 29.633942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763397, 34.768559, 29.750662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705709, 34.398983, 29.892387>,  <28.671097, 34.177238, 29.977423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705709, 34.398983, 29.892387>,  <28.763397, 34.768559, 29.750662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705709, 34.398983, 29.892387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098775, 0.369709, 0.923882,
		-0.984603, 0.098247, -0.144582,
		-0.144221, -0.923939, 0.354313,
		28.662443, 34.121803, 29.998682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214567, 34.818802, 30.134867>,  <28.763397, 34.768559, 29.750662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214567, 34.818802, 30.134867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430933, 34.513386, 30.275957>,  <28.560753, 34.330135, 30.360611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430933, 34.513386, 30.275957>,  <28.214567, 34.818802, 30.134867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430933, 34.513386, 30.275957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134978, 0.335133, 0.932452,
		-0.830176, -0.551987, 0.078217,
		0.540915, -0.763542, 0.352726,
		28.593208, 34.284325, 30.381775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820852, 34.533794, 30.847031>,  <28.214567, 34.818802, 30.134867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820852, 34.533794, 30.847031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195204, 34.393204, 30.856796>,  <28.419815, 34.308849, 30.862656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195204, 34.393204, 30.856796>,  <27.820852, 34.533794, 30.847031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195204, 34.393204, 30.856796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036353, 0.165255, 0.985581,
		-0.350448, -0.921494, 0.167436,
		0.935876, -0.351481, 0.024414,
		28.475967, 34.287758, 30.864120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866943, 34.121521, 31.434944>,  <27.820852, 34.533794, 30.847031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866943, 34.121521, 31.434944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253044, 34.186642, 31.353176>,  <28.484705, 34.225716, 31.304115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253044, 34.186642, 31.353176>,  <27.866943, 34.121521, 31.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253044, 34.186642, 31.353176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217109, -0.064199, 0.974034,
		0.145455, -0.984567, -0.097315,
		0.965250, 0.162806, -0.204420,
		28.542620, 34.235481, 31.291849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174921, 33.588451, 31.754072>,  <27.866943, 34.121521, 31.434944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174921, 33.588451, 31.754072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450430, 33.871651, 31.691685>,  <28.615736, 34.041573, 31.654253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450430, 33.871651, 31.691685>,  <28.174921, 33.588451, 31.754072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450430, 33.871651, 31.691685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303751, -0.086482, 0.948818,
		0.658277, -0.700895, -0.274622,
		0.688772, 0.708002, -0.155969,
		28.657063, 34.084053, 31.644894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763447, 33.411961, 32.219601>,  <28.174921, 33.588451, 31.754072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763447, 33.411961, 32.219601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838936, 33.793884, 32.127758>,  <28.884230, 34.023041, 32.072651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838936, 33.793884, 32.127758>,  <28.763447, 33.411961, 32.219601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838936, 33.793884, 32.127758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075133, 0.219086, 0.972808,
		0.979152, -0.200842, -0.030392,
		0.188723, 0.954811, -0.229608,
		28.895554, 34.080326, 32.058876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360048, 33.563747, 32.572685>,  <28.763447, 33.411961, 32.219601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360048, 33.563747, 32.572685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200941, 33.928982, 32.536797>,  <29.105476, 34.148125, 32.515263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200941, 33.928982, 32.536797>,  <29.360048, 33.563747, 32.572685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200941, 33.928982, 32.536797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091311, 0.136702, 0.986395,
		0.912931, 0.384164, -0.137751,
		-0.397769, 0.913088, -0.089721,
		29.081610, 34.202908, 32.509880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796825, 34.005104, 32.833324>,  <29.360048, 33.563747, 32.572685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796825, 34.005104, 32.833324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473970, 34.240898, 32.846199>,  <29.280258, 34.382374, 32.853924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473970, 34.240898, 32.846199>,  <29.796825, 34.005104, 32.833324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473970, 34.240898, 32.846199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197949, 0.218867, 0.955465,
		0.556191, 0.777561, -0.293344,
		-0.807136, 0.589488, 0.032186,
		29.231831, 34.417744, 32.855854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059832, 34.569378, 33.123222>,  <29.796825, 34.005104, 32.833324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059832, 34.569378, 33.123222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665901, 34.562328, 33.192276>,  <29.429543, 34.558098, 33.233707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665901, 34.562328, 33.192276>,  <30.059832, 34.569378, 33.123222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665901, 34.562328, 33.192276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164817, 0.216322, 0.962310,
		-0.054302, 0.976163, -0.210135,
		-0.984828, -0.017621, 0.172635,
		29.370453, 34.557041, 33.244068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795704, 34.536716, 32.352283>,  <30.059832, 34.569378, 33.123222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795704, 34.536716, 32.352283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169735, 34.564754, 32.491261>,  <30.394154, 34.581577, 32.574646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169735, 34.564754, 32.491261>,  <29.795704, 34.536716, 32.352283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169735, 34.564754, 32.491261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321389, 0.245655, -0.914528,
		-0.149458, 0.966819, 0.207178,
		0.935078, 0.070099, 0.347441,
		30.450258, 34.585785, 32.595493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053143, 35.215275, 32.058891>,  <29.795704, 34.536716, 32.352283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053143, 35.215275, 32.058891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349716, 34.960251, 32.142605>,  <30.527660, 34.807236, 32.192833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349716, 34.960251, 32.142605>,  <30.053143, 35.215275, 32.058891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349716, 34.960251, 32.142605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466995, 0.266286, -0.843212,
		0.481865, 0.722920, 0.495169,
		0.741432, -0.637556, 0.209286,
		30.572145, 34.768986, 32.205391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641310, 35.418858, 31.768621>,  <30.053143, 35.215275, 32.058891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641310, 35.418858, 31.768621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792147, 35.055603, 31.841389>,  <30.882648, 34.837650, 31.885048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792147, 35.055603, 31.841389>,  <30.641310, 35.418858, 31.768621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792147, 35.055603, 31.841389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521976, 0.046130, -0.851712,
		0.765077, 0.416129, 0.491419,
		0.377091, -0.908135, 0.181917,
		30.905273, 34.783161, 31.895964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403671, 35.442528, 31.533028>,  <30.641310, 35.418858, 31.768621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403671, 35.442528, 31.533028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306946, 35.054462, 31.540131>,  <31.248911, 34.821625, 31.544392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306946, 35.054462, 31.540131>,  <31.403671, 35.442528, 31.533028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306946, 35.054462, 31.540131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398594, -0.116002, -0.909762,
		0.884675, -0.212914, 0.414751,
		-0.241813, -0.970161, 0.017757,
		31.234402, 34.763412, 31.545458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989777, 35.051685, 31.302805>,  <31.403671, 35.442528, 31.533028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989777, 35.051685, 31.302805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682178, 34.805115, 31.235081>,  <31.497620, 34.657173, 31.194447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682178, 34.805115, 31.235081>,  <31.989777, 35.051685, 31.302805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682178, 34.805115, 31.235081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372339, -0.216620, -0.902463,
		0.519623, -0.757033, 0.396099,
		-0.768997, -0.616423, -0.169312,
		31.451479, 34.620190, 31.184288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210419, 34.513638, 30.824244>,  <31.989777, 35.051685, 31.302805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210419, 34.513638, 30.824244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824234, 34.435162, 30.755669>,  <31.592524, 34.388077, 30.714523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824234, 34.435162, 30.755669>,  <32.210419, 34.513638, 30.824244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824234, 34.435162, 30.755669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232679, -0.353216, -0.906145,
		0.117222, -0.914740, 0.386666,
		-0.965464, -0.196189, -0.171436,
		31.534595, 34.376305, 30.704237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253033, 33.923016, 30.458162>,  <32.210419, 34.513638, 30.824244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253033, 33.923016, 30.458162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911602, 34.105888, 30.358257>,  <31.706743, 34.215614, 30.298315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911602, 34.105888, 30.358257>,  <32.253033, 33.923016, 30.458162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911602, 34.105888, 30.358257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114659, -0.302802, -0.946131,
		-0.508186, -0.836237, 0.206046,
		-0.853581, 0.457186, -0.249762,
		31.655527, 34.243046, 30.283329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920410, 33.383965, 30.181595>,  <32.253033, 33.923016, 30.458162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920410, 33.383965, 30.181595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748619, 33.724491, 30.061060>,  <31.645544, 33.928806, 29.988739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748619, 33.724491, 30.061060>,  <31.920410, 33.383965, 30.181595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748619, 33.724491, 30.061060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016322, -0.340941, -0.939943,
		-0.902930, -0.398766, 0.160321,
		-0.429478, 0.851319, -0.301337,
		31.619776, 33.979885, 29.970659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404018, 33.119709, 29.792547>,  <31.920410, 33.383965, 30.181595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404018, 33.119709, 29.792547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495441, 33.487946, 29.665882>,  <31.550295, 33.708885, 29.589882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495441, 33.487946, 29.665882>,  <31.404018, 33.119709, 29.792547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495441, 33.487946, 29.665882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035303, -0.332898, -0.942302,
		-0.972890, 0.204190, -0.108586,
		0.228557, 0.920590, -0.316665,
		31.564009, 33.764122, 29.570883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022669, 33.081226, 29.175959>,  <31.404018, 33.119709, 29.792547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022669, 33.081226, 29.175959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231375, 33.421650, 29.152401>,  <31.356598, 33.625904, 29.138268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231375, 33.421650, 29.152401>,  <31.022669, 33.081226, 29.175959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231375, 33.421650, 29.152401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025410, -0.084507, -0.996099,
		-0.852711, 0.518233, -0.065718,
		0.521765, 0.851054, -0.058892,
		31.387903, 33.676968, 29.134733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756853, 33.434231, 28.524246>,  <31.022669, 33.081226, 29.175959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756853, 33.434231, 28.524246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111998, 33.607647, 28.585878>,  <31.325085, 33.711697, 28.622858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111998, 33.607647, 28.585878>,  <30.756853, 33.434231, 28.524246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111998, 33.607647, 28.585878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150506, 0.042791, -0.987682,
		-0.434796, 0.900116, -0.027259,
		0.887863, 0.433543, 0.154079,
		31.378357, 33.737709, 28.632101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755743, 34.065891, 28.213890>,  <30.756853, 33.434231, 28.524246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755743, 34.065891, 28.213890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139191, 33.957100, 28.247530>,  <31.369259, 33.891823, 28.267714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139191, 33.957100, 28.247530>,  <30.755743, 34.065891, 28.213890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139191, 33.957100, 28.247530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123940, 0.132766, -0.983368,
		0.256294, 0.953099, 0.160982,
		0.958620, -0.271983, 0.084100,
		31.426777, 33.875504, 28.272760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095516, 34.501068, 27.817076>,  <30.755743, 34.065891, 28.213890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095516, 34.501068, 27.817076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331087, 34.178139, 27.831991>,  <31.472429, 33.984379, 27.840940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331087, 34.178139, 27.831991>,  <31.095516, 34.501068, 27.817076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331087, 34.178139, 27.831991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101870, 0.028385, -0.994393,
		0.801740, 0.589424, 0.098959,
		0.588928, -0.807325, 0.037287,
		31.507765, 33.935940, 27.843178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645405, 34.700264, 27.371758>,  <31.095516, 34.501068, 27.817076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645405, 34.700264, 27.371758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655691, 34.301971, 27.407221>,  <31.661863, 34.062996, 27.428499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655691, 34.301971, 27.407221>,  <31.645405, 34.700264, 27.371758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655691, 34.301971, 27.407221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190837, -0.082164, -0.978177,
		0.981285, 0.042076, 0.187909,
		0.025718, -0.995730, 0.088656,
		31.663406, 34.003254, 27.433817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233208, 34.463474, 26.981102>,  <31.645405, 34.700264, 27.371758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233208, 34.463474, 26.981102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997013, 34.141533, 27.004856>,  <31.855295, 33.948368, 27.019110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997013, 34.141533, 27.004856>,  <32.233208, 34.463474, 26.981102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997013, 34.141533, 27.004856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123662, -0.162951, -0.978854,
		0.797515, -0.570659, 0.195751,
		-0.590489, -0.804858, 0.059387,
		31.819866, 33.900074, 27.022673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335377, 34.214657, 26.387653>,  <32.233208, 34.463474, 26.981102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335377, 34.214657, 26.387653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048759, 33.952744, 26.483841>,  <31.876789, 33.795597, 26.541553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048759, 33.952744, 26.483841>,  <32.335377, 34.214657, 26.387653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048759, 33.952744, 26.483841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066311, -0.279233, -0.957931,
		0.694384, -0.702345, 0.156663,
		-0.716543, -0.654783, 0.240468,
		31.833796, 33.756310, 26.555981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532166, 33.630600, 26.109888>,  <32.335377, 34.214657, 26.387653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532166, 33.630600, 26.109888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136013, 33.607811, 26.160316>,  <31.898321, 33.594135, 26.190573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136013, 33.607811, 26.160316>,  <32.532166, 33.630600, 26.109888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136013, 33.607811, 26.160316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099286, -0.341868, -0.934488,
		0.096342, -0.938019, 0.332924,
		-0.990384, -0.056975, 0.126069,
		31.838898, 33.590717, 26.198137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284931, 32.931511, 26.085028>,  <32.532166, 33.630600, 26.109888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284931, 32.931511, 26.085028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953310, 33.137619, 25.998159>,  <31.754337, 33.261284, 25.946037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953310, 33.137619, 25.998159>,  <32.284931, 32.931511, 26.085028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953310, 33.137619, 25.998159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108668, -0.529450, -0.841352,
		-0.548514, -0.673923, 0.494935,
		-0.829050, 0.515277, -0.217177,
		31.704594, 33.292198, 25.933008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798532, 32.436424, 25.992582>,  <32.284931, 32.931511, 26.085028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798532, 32.436424, 25.992582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631624, 32.752892, 25.813725>,  <31.531479, 32.942772, 25.706409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631624, 32.752892, 25.813725>,  <31.798532, 32.436424, 25.992582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631624, 32.752892, 25.813725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278871, -0.579762, -0.765576,
		-0.864936, -0.194757, 0.462552,
		-0.417272, 0.791167, -0.447145,
		31.506443, 32.990242, 25.679581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080040, 32.251743, 25.850492>,  <31.798532, 32.436424, 25.992582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080040, 32.251743, 25.850492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199081, 32.544586, 25.605394>,  <31.270506, 32.720291, 25.458336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199081, 32.544586, 25.605394>,  <31.080040, 32.251743, 25.850492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199081, 32.544586, 25.605394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309124, -0.533352, -0.787387,
		-0.903258, 0.423742, 0.067585,
		0.297602, 0.732106, -0.612743,
		31.288363, 32.764217, 25.421572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500259, 32.315117, 25.263124>,  <31.080040, 32.251743, 25.850492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500259, 32.315117, 25.263124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809559, 32.502121, 25.091766>,  <30.995138, 32.614323, 24.988951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809559, 32.502121, 25.091766>,  <30.500259, 32.315117, 25.263124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809559, 32.502121, 25.091766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341334, -0.262482, -0.902549,
		-0.534395, 0.844120, -0.043387,
		0.773248, 0.467508, -0.428396,
		31.041533, 32.642372, 24.963247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210272, 32.599705, 24.652912>,  <30.500259, 32.315117, 25.263124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210272, 32.599705, 24.652912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606915, 32.589523, 24.602209>,  <30.844900, 32.583416, 24.571787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606915, 32.589523, 24.602209>,  <30.210272, 32.599705, 24.652912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606915, 32.589523, 24.602209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128062, -0.328010, -0.935954,
		-0.017754, 0.944331, -0.328517,
		0.991607, -0.025454, -0.126756,
		30.904396, 32.581886, 24.564182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347404, 32.811165, 24.073109>,  <30.210272, 32.599705, 24.652912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347404, 32.811165, 24.073109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710659, 32.645905, 24.100222>,  <30.928612, 32.546749, 24.116489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710659, 32.645905, 24.100222>,  <30.347404, 32.811165, 24.073109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710659, 32.645905, 24.100222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060431, -0.289558, -0.955251,
		0.414288, 0.863403, -0.287925,
		0.908137, -0.413149, 0.067784,
		30.983101, 32.521961, 24.120558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835991, 33.146641, 23.441721>,  <30.347404, 32.811165, 24.073109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835991, 33.146641, 23.441721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979929, 32.794460, 23.565210>,  <31.066292, 32.583153, 23.639303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979929, 32.794460, 23.565210>,  <30.835991, 33.146641, 23.441721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979929, 32.794460, 23.565210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045979, -0.347221, -0.936655,
		0.931879, 0.322854, -0.165428,
		0.359843, -0.880456, 0.308724,
		31.087881, 32.530323, 23.657827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488220, 32.973743, 23.000399>,  <30.835991, 33.146641, 23.441721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488220, 32.973743, 23.000399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345451, 32.633511, 23.154861>,  <31.259790, 32.429371, 23.247540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345451, 32.633511, 23.154861>,  <31.488220, 32.973743, 23.000399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345451, 32.633511, 23.154861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209197, -0.475667, -0.854387,
		0.910408, -0.224168, 0.347716,
		-0.356924, -0.850582, 0.386156,
		31.238375, 32.378338, 23.270708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884457, 32.508011, 22.569193>,  <31.488220, 32.973743, 23.000399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884457, 32.508011, 22.569193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669460, 32.243443, 22.778431>,  <31.540462, 32.084702, 22.903975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669460, 32.243443, 22.778431>,  <31.884457, 32.508011, 22.569193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669460, 32.243443, 22.778431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010788, -0.625661, -0.780021,
		0.843201, -0.413610, 0.343421,
		-0.537490, -0.661419, 0.523096,
		31.508213, 32.045017, 22.935360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225945, 31.871071, 22.642801>,  <31.884457, 32.508011, 22.569193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225945, 31.871071, 22.642801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837889, 31.786089, 22.689619>,  <31.605057, 31.735100, 22.717710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837889, 31.786089, 22.689619>,  <32.225945, 31.871071, 22.642801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837889, 31.786089, 22.689619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055808, -0.665086, -0.744679,
		0.236058, -0.715907, 0.657080,
		-0.970136, -0.212457, 0.117046,
		31.546848, 31.722351, 22.724733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124443, 31.146067, 22.863775>,  <32.225945, 31.871071, 22.642801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124443, 31.146067, 22.863775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787663, 31.267017, 22.685028>,  <31.585594, 31.339588, 22.577780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787663, 31.267017, 22.685028>,  <32.124443, 31.146067, 22.863775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787663, 31.267017, 22.685028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059733, -0.875356, -0.479774,
		-0.536240, -0.377253, 0.755067,
		-0.841949, 0.302377, -0.446866,
		31.535078, 31.357731, 22.550968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703268, 30.481768, 22.727217>,  <32.124443, 31.146067, 22.863775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703268, 30.481768, 22.727217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558947, 30.769194, 22.489399>,  <31.472353, 30.941648, 22.346708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558947, 30.769194, 22.489399>,  <31.703268, 30.481768, 22.727217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558947, 30.769194, 22.489399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127849, -0.669576, -0.731657,
		-0.923837, -0.187974, 0.333454,
		-0.360806, 0.718564, -0.594546,
		31.450705, 30.984762, 22.311035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319447, 30.081236, 22.348816>,  <31.703268, 30.481768, 22.727217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319447, 30.081236, 22.348816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361950, 30.424711, 22.148272>,  <31.387451, 30.630796, 22.027945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361950, 30.424711, 22.148272>,  <31.319447, 30.081236, 22.348816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361950, 30.424711, 22.148272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062628, -0.508996, -0.858487,
		-0.992364, 0.059822, -0.107864,
		0.106259, 0.858688, -0.501363,
		31.393827, 30.682318, 21.997862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794327, 30.044687, 21.780317>,  <31.319447, 30.081236, 22.348816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794327, 30.044687, 21.780317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074924, 30.302956, 21.659639>,  <31.243282, 30.457916, 21.587233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074924, 30.302956, 21.659639>,  <30.794327, 30.044687, 21.780317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074924, 30.302956, 21.659639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153399, -0.550196, -0.820824,
		-0.695972, 0.529522, -0.485004,
		0.701492, 0.645670, -0.301693,
		31.285372, 30.496656, 21.569132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542524, 30.179483, 21.160606>,  <30.794327, 30.044687, 21.780317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542524, 30.179483, 21.160606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926825, 30.287350, 21.134567>,  <31.157404, 30.352070, 21.118944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926825, 30.287350, 21.134567>,  <30.542524, 30.179483, 21.160606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926825, 30.287350, 21.134567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111600, -0.590546, -0.799250,
		-0.253977, 0.760615, -0.597462,
		0.960750, 0.269668, -0.065100,
		31.215050, 30.368250, 21.115038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613411, 30.365015, 20.351990>,  <30.542524, 30.179483, 21.160606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613411, 30.365015, 20.351990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981606, 30.352339, 20.507786>,  <31.202522, 30.344732, 20.601263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981606, 30.352339, 20.507786>,  <30.613411, 30.365015, 20.351990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981606, 30.352339, 20.507786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339176, -0.430221, -0.836582,
		0.194081, 0.902167, -0.385263,
		0.920485, -0.031693, 0.389491,
		31.257751, 30.342831, 20.624634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149199, 30.639774, 19.864201>,  <30.613411, 30.365015, 20.351990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149199, 30.639774, 19.864201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332945, 30.397379, 20.123974>,  <31.443192, 30.251942, 20.279837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332945, 30.397379, 20.123974>,  <31.149199, 30.639774, 19.864201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332945, 30.397379, 20.123974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346583, -0.550903, -0.759201,
		0.817842, 0.573832, -0.043039,
		0.459364, -0.605990, 0.649431,
		31.470755, 30.215582, 20.318804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756943, 30.496412, 19.600573>,  <31.149199, 30.639774, 19.864201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756943, 30.496412, 19.600573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700981, 30.198057, 19.861057>,  <31.667404, 30.019045, 20.017347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700981, 30.198057, 19.861057>,  <31.756943, 30.496412, 19.600573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700981, 30.198057, 19.861057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251222, -0.662899, -0.705303,
		0.957765, 0.064924, 0.280126,
		-0.139904, -0.745888, 0.651212,
		31.659010, 29.974291, 20.056421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402737, 30.180531, 19.591057>,  <31.756943, 30.496412, 19.600573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402737, 30.180531, 19.591057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145382, 29.910608, 19.735662>,  <31.990969, 29.748655, 19.822426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145382, 29.910608, 19.735662>,  <32.402737, 30.180531, 19.591057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145382, 29.910608, 19.735662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283377, -0.648620, -0.706392,
		0.711161, -0.352040, 0.608538,
		-0.643388, -0.674804, 0.361513,
		31.952366, 29.708168, 19.844116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807457, 29.523745, 19.713612>,  <32.402737, 30.180531, 19.591057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807457, 29.523745, 19.713612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420097, 29.432974, 19.672213>,  <32.187683, 29.378511, 19.647373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420097, 29.432974, 19.672213>,  <32.807457, 29.523745, 19.713612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420097, 29.432974, 19.672213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241016, -0.744654, -0.622416,
		0.064171, -0.627690, 0.775814,
		-0.968397, -0.226925, -0.103498,
		32.129578, 29.364897, 19.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711643, 28.777121, 19.749025>,  <32.807457, 29.523745, 19.713612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711643, 28.777121, 19.749025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375797, 28.894619, 19.566267>,  <32.174290, 28.965118, 19.456612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375797, 28.894619, 19.566267>,  <32.711643, 28.777121, 19.749025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375797, 28.894619, 19.566267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038267, -0.807078, -0.589204,
		-0.541828, -0.512190, 0.666396,
		-0.839618, 0.293746, -0.456897,
		32.123913, 28.982742, 19.429197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101879, 28.125494, 19.851057>,  <32.711643, 28.777121, 19.749025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101879, 28.125494, 19.851057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374245, 27.894735, 20.031521>,  <33.537663, 27.756281, 20.139799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374245, 27.894735, 20.031521>,  <33.101879, 28.125494, 19.851057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374245, 27.894735, 20.031521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326900, 0.311841, 0.892128,
		-0.655356, -0.754947, 0.023750,
		0.680915, -0.576898, 0.451159,
		33.578518, 27.721666, 20.166868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804585, 27.807507, 20.497484>,  <33.101879, 28.125494, 19.851057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804585, 27.807507, 20.497484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202408, 27.797392, 20.537928>,  <33.441101, 27.791323, 20.562193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202408, 27.797392, 20.537928>,  <32.804585, 27.807507, 20.497484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202408, 27.797392, 20.537928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094559, 0.189054, 0.977403,
		-0.043829, -0.981641, 0.185634,
		0.994554, -0.025285, 0.101109,
		33.500774, 27.789806, 20.568260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979649, 27.252127, 20.978373>,  <32.804585, 27.807507, 20.497484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979649, 27.252127, 20.978373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259457, 27.537937, 20.982773>,  <33.427341, 27.709423, 20.985413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259457, 27.537937, 20.982773>,  <32.979649, 27.252127, 20.978373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259457, 27.537937, 20.982773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118134, 0.100442, 0.987905,
		0.704779, -0.692361, 0.154671,
		0.699522, 0.714527, 0.011002,
		33.469315, 27.752295, 20.986073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272758, 27.202826, 21.629000>,  <32.979649, 27.252127, 20.978373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272758, 27.202826, 21.629000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421608, 27.557985, 21.520807>,  <33.510918, 27.771082, 21.455893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421608, 27.557985, 21.520807>,  <33.272758, 27.202826, 21.629000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421608, 27.557985, 21.520807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170212, 0.351746, 0.920491,
		0.912445, -0.296493, 0.282023,
		0.372119, 0.887900, -0.270482,
		33.533245, 27.824356, 21.439663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745232, 27.349785, 22.162014>,  <33.272758, 27.202826, 21.629000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745232, 27.349785, 22.162014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688416, 27.708710, 21.994848>,  <33.654327, 27.924065, 21.894548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688416, 27.708710, 21.994848>,  <33.745232, 27.349785, 22.162014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688416, 27.708710, 21.994848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216988, 0.383700, 0.897603,
		0.965785, 0.218178, 0.140206,
		-0.142040, 0.897314, -0.417914,
		33.645805, 27.977903, 21.869474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145439, 27.743017, 22.534388>,  <33.745232, 27.349785, 22.162014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145439, 27.743017, 22.534388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863125, 27.968847, 22.363218>,  <33.693737, 28.104345, 22.260517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863125, 27.968847, 22.363218>,  <34.145439, 27.743017, 22.534388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863125, 27.968847, 22.363218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238344, 0.379597, 0.893923,
		0.667127, 0.732911, -0.133351,
		-0.705785, 0.564577, -0.427925,
		33.651390, 28.138220, 22.234840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263287, 28.438183, 22.783672>,  <34.145439, 27.743017, 22.534388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263287, 28.438183, 22.783672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889687, 28.437744, 22.640762>,  <33.665527, 28.437481, 22.555017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889687, 28.437744, 22.640762>,  <34.263287, 28.438183, 22.783672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889687, 28.437744, 22.640762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300151, 0.544815, 0.782998,
		0.193790, 0.838555, -0.509186,
		-0.933999, -0.001096, -0.357273,
		33.609486, 28.437416, 22.533581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137802, 29.145510, 22.571754>,  <34.263287, 28.438183, 22.783672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137802, 29.145510, 22.571754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775509, 28.982790, 22.619341>,  <33.558132, 28.885159, 22.647892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775509, 28.982790, 22.619341>,  <34.137802, 29.145510, 22.571754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775509, 28.982790, 22.619341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217542, 0.687089, 0.693242,
		-0.363751, 0.602015, -0.710818,
		-0.905737, -0.406801, 0.118966,
		33.503788, 28.860750, 22.655031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612354, 29.687599, 22.551207>,  <34.137802, 29.145510, 22.571754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612354, 29.687599, 22.551207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439915, 29.383625, 22.745792>,  <33.336449, 29.201241, 22.862543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439915, 29.383625, 22.745792>,  <33.612354, 29.687599, 22.551207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439915, 29.383625, 22.745792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178180, 0.600219, 0.779737,
		-0.884536, 0.249468, -0.394161,
		-0.431102, -0.759936, 0.486465,
		33.310585, 29.155643, 22.891731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114571, 30.000492, 22.896477>,  <33.612354, 29.687599, 22.551207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114571, 30.000492, 22.896477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180878, 29.654169, 23.085325>,  <33.220661, 29.446375, 23.198635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180878, 29.654169, 23.085325>,  <33.114571, 30.000492, 22.896477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180878, 29.654169, 23.085325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185242, 0.442885, 0.877234,
		-0.968610, -0.232875, -0.086967,
		0.165770, -0.865807, 0.472121,
		33.230610, 29.394426, 23.226961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579769, 29.862528, 23.362333>,  <33.114571, 30.000492, 22.896477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579769, 29.862528, 23.362333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842911, 29.612457, 23.530327>,  <33.000797, 29.462416, 23.631123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842911, 29.612457, 23.530327>,  <32.579769, 29.862528, 23.362333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842911, 29.612457, 23.530327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315020, 0.278107, 0.907424,
		-0.684100, -0.729254, -0.013989,
		0.657853, -0.625176, 0.419983,
		33.040268, 29.424904, 23.656322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303543, 29.749336, 24.028252>,  <32.579769, 29.862528, 23.362333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303543, 29.749336, 24.028252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672127, 29.597540, 24.061464>,  <32.893276, 29.506462, 24.081392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672127, 29.597540, 24.061464>,  <32.303543, 29.749336, 24.028252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672127, 29.597540, 24.061464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012266, 0.185207, 0.982623,
		-0.388274, -0.906468, 0.166006,
		0.921462, -0.379491, 0.083030,
		32.948566, 29.483692, 24.086372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303558, 29.221725, 24.507122>,  <32.303543, 29.749336, 24.028252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303558, 29.221725, 24.507122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678829, 29.359863, 24.497578>,  <32.903992, 29.442745, 24.491852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678829, 29.359863, 24.497578>,  <32.303558, 29.221725, 24.507122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678829, 29.359863, 24.497578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024668, 0.135447, 0.990477,
		0.345288, -0.928650, 0.135592,
		0.938173, 0.345345, -0.023860,
		32.960281, 29.463467, 24.490419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660583, 29.115849, 25.182974>,  <32.303558, 29.221725, 24.507122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660583, 29.115849, 25.182974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900742, 29.399694, 25.035475>,  <33.044834, 29.570002, 24.946976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900742, 29.399694, 25.035475>,  <32.660583, 29.115849, 25.182974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900742, 29.399694, 25.035475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072258, 0.411081, 0.908731,
		0.796435, -0.572238, 0.195534,
		0.600391, 0.709616, -0.368748,
		33.080860, 29.612579, 24.924850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297794, 28.941961, 25.649815>,  <32.660583, 29.115849, 25.182974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297794, 28.941961, 25.649815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264408, 29.294472, 25.463745>,  <33.244377, 29.505978, 25.352104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264408, 29.294472, 25.463745>,  <33.297794, 28.941961, 25.649815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264408, 29.294472, 25.463745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136039, 0.472508, 0.870764,
		0.987181, 0.009397, -0.159326,
		-0.083466, 0.881276, -0.465173,
		33.239368, 29.558855, 25.324194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981117, 29.349945, 25.672029>,  <33.297794, 28.941961, 25.649815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981117, 29.349945, 25.672029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705383, 29.630873, 25.600964>,  <33.539944, 29.799429, 25.558325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705383, 29.630873, 25.600964>,  <33.981117, 29.349945, 25.672029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705383, 29.630873, 25.600964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352966, 0.539771, 0.764240,
		0.632636, 0.464111, -0.619979,
		-0.689338, 0.702317, -0.177663,
		33.498581, 29.841568, 25.547665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297821, 29.893740, 25.877651>,  <33.981117, 29.349945, 25.672029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297821, 29.893740, 25.877651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918789, 30.021374, 25.870930>,  <33.691372, 30.097954, 25.866898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918789, 30.021374, 25.870930>,  <34.297821, 29.893740, 25.877651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918789, 30.021374, 25.870930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160974, 0.522147, 0.837526,
		0.276015, 0.790916, -0.546139,
		-0.947578, 0.319084, -0.016803,
		33.634514, 30.117100, 25.865889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272457, 30.635290, 25.944672>,  <34.297821, 29.893740, 25.877651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272457, 30.635290, 25.944672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936996, 30.471039, 26.087805>,  <33.735718, 30.372488, 26.173685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936996, 30.471039, 26.087805>,  <34.272457, 30.635290, 25.944672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936996, 30.471039, 26.087805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002784, 0.660198, 0.751086,
		-0.544658, 0.628905, -0.554821,
		-0.838653, -0.410630, 0.357832,
		33.685402, 30.347849, 26.195154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827488, 31.138723, 26.073332>,  <34.272457, 30.635290, 25.944672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827488, 31.138723, 26.073332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612190, 30.866503, 26.272184>,  <33.483013, 30.703171, 26.391497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612190, 30.866503, 26.272184>,  <33.827488, 31.138723, 26.073332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612190, 30.866503, 26.272184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148700, 0.657298, 0.738815,
		-0.829566, 0.323740, -0.454985,
		-0.538245, -0.680553, 0.497132,
		33.450718, 30.662336, 26.421324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291275, 31.517172, 26.142439>,  <33.827488, 31.138723, 26.073332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291275, 31.517172, 26.142439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261120, 31.224657, 26.413593>,  <33.243027, 31.049149, 26.576286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261120, 31.224657, 26.413593>,  <33.291275, 31.517172, 26.142439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261120, 31.224657, 26.413593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161697, 0.679791, 0.715359,
		-0.983956, -0.055680, -0.169498,
		-0.075392, -0.731289, 0.677888,
		33.238503, 31.005270, 26.616961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821423, 31.673843, 26.575712>,  <33.291275, 31.517172, 26.142439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821423, 31.673843, 26.575712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037674, 31.427809, 26.805283>,  <33.167423, 31.280188, 26.943026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037674, 31.427809, 26.805283>,  <32.821423, 31.673843, 26.575712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037674, 31.427809, 26.805283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166088, 0.590754, 0.789572,
		-0.824705, -0.522186, 0.217219,
		0.540626, -0.615087, 0.573927,
		33.199863, 31.243282, 26.977461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362175, 31.622143, 27.267136>,  <32.821423, 31.673843, 26.575712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362175, 31.622143, 27.267136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725483, 31.466518, 27.328693>,  <32.943466, 31.373144, 27.365627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725483, 31.466518, 27.328693>,  <32.362175, 31.622143, 27.267136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725483, 31.466518, 27.328693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107685, 0.572812, 0.812583,
		-0.404298, -0.721469, 0.562161,
		0.908266, -0.389062, 0.153895,
		32.997963, 31.349800, 27.374863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336670, 31.485180, 28.034266>,  <32.362175, 31.622143, 27.267136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336670, 31.485180, 28.034266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709167, 31.495590, 27.888884>,  <32.932667, 31.501837, 27.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709167, 31.495590, 27.888884>,  <32.336670, 31.485180, 28.034266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709167, 31.495590, 27.888884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297404, 0.522031, 0.799396,
		0.210541, -0.852529, 0.478400,
		0.931248, 0.026028, -0.363454,
		32.988541, 31.503399, 27.779848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775314, 31.386042, 28.605644>,  <32.336670, 31.485180, 28.034266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775314, 31.386042, 28.605644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016155, 31.585430, 28.356165>,  <33.160660, 31.705063, 28.206476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016155, 31.585430, 28.356165>,  <32.775314, 31.386042, 28.605644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016155, 31.585430, 28.356165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253400, 0.621476, 0.741320,
		0.757144, -0.604393, 0.247875,
		0.602097, 0.498475, -0.623700,
		33.196785, 31.734972, 28.169054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340488, 31.414803, 28.897556>,  <32.775314, 31.386042, 28.605644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340488, 31.414803, 28.897556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388496, 31.711218, 28.633297>,  <33.417301, 31.889067, 28.474741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388496, 31.711218, 28.633297>,  <33.340488, 31.414803, 28.897556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388496, 31.711218, 28.633297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438758, 0.557350, 0.704877,
		0.890554, -0.374466, -0.258242,
		0.120021, 0.741037, -0.660650,
		33.424503, 31.933529, 28.435102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037407, 31.598557, 29.129185>,  <33.340488, 31.414803, 28.897556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037407, 31.598557, 29.129185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881939, 31.894167, 28.909084>,  <33.788658, 32.071533, 28.777023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881939, 31.894167, 28.909084>,  <34.037407, 31.598557, 29.129185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881939, 31.894167, 28.909084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394908, 0.673186, 0.625195,
		0.832458, 0.025693, -0.553492,
		-0.388666, 0.739027, -0.550252,
		33.765339, 32.115875, 28.744009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637974, 31.960075, 28.851034>,  <34.037407, 31.598557, 29.129185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637974, 31.960075, 28.851034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313591, 32.193905, 28.841019>,  <34.118961, 32.334202, 28.835009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313591, 32.193905, 28.841019>,  <34.637974, 31.960075, 28.851034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313591, 32.193905, 28.841019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388906, 0.570496, 0.723385,
		0.437159, 0.576893, -0.689990,
		-0.810953, 0.584575, -0.025040,
		34.070305, 32.369278, 28.833508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895378, 32.632423, 28.766472>,  <34.637974, 31.960075, 28.851034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895378, 32.632423, 28.766472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530224, 32.662647, 28.926935>,  <34.311131, 32.680782, 29.023214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530224, 32.662647, 28.926935>,  <34.895378, 32.632423, 28.766472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530224, 32.662647, 28.926935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370969, 0.563658, 0.738018,
		-0.170353, 0.822545, -0.542586,
		-0.912887, 0.075560, 0.401159,
		34.256359, 32.685314, 29.047283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813248, 33.287796, 28.899944>,  <34.895378, 32.632423, 28.766472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813248, 33.287796, 28.899944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533875, 33.153164, 29.152580>,  <34.366249, 33.072384, 29.304161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533875, 33.153164, 29.152580>,  <34.813248, 33.287796, 28.899944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533875, 33.153164, 29.152580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374734, 0.579871, 0.723411,
		-0.609725, 0.741933, -0.278874,
		-0.698434, -0.336579, 0.631589,
		34.324345, 33.052189, 29.342056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647259, 33.916809, 29.405991>,  <34.813248, 33.287796, 28.899944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647259, 33.916809, 29.405991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475842, 33.585415, 29.550190>,  <34.372993, 33.386578, 29.636709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475842, 33.585415, 29.550190>,  <34.647259, 33.916809, 29.405991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475842, 33.585415, 29.550190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244573, 0.277731, 0.929005,
		-0.869791, 0.486285, 0.083607,
		-0.428541, -0.828488, 0.360500,
		34.347279, 33.336868, 29.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465385, 34.124104, 30.109419>,  <34.647259, 33.916809, 29.405991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465385, 34.124104, 30.109419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440643, 33.724880, 30.112461>,  <34.425800, 33.485348, 30.114286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440643, 33.724880, 30.112461>,  <34.465385, 34.124104, 30.109419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440643, 33.724880, 30.112461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287651, -0.010528, 0.957677,
		-0.955736, 0.061421, 0.287743,
		-0.061851, -0.998056, 0.007606,
		34.422089, 33.425465, 30.114742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013588, 33.857944, 30.692921>,  <34.465385, 34.124104, 30.109419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013588, 33.857944, 30.692921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295700, 33.584499, 30.617823>,  <34.464966, 33.420433, 30.572763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295700, 33.584499, 30.617823>,  <34.013588, 33.857944, 30.692921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295700, 33.584499, 30.617823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343466, 0.097825, 0.934056,
		-0.620169, -0.723257, 0.303793,
		0.705281, -0.683615, -0.187746,
		34.507286, 33.379414, 30.561499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033192, 33.399570, 31.298616>,  <34.013588, 33.857944, 30.692921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033192, 33.399570, 31.298616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378719, 33.323101, 31.112165>,  <34.586037, 33.277218, 31.000296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378719, 33.323101, 31.112165>,  <34.033192, 33.399570, 31.298616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378719, 33.323101, 31.112165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466009, -0.048413, 0.883455,
		-0.191464, -0.980361, 0.047270,
		0.863816, -0.191178, -0.466126,
		34.637863, 33.265747, 30.972328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339878, 32.799248, 31.596340>,  <34.033192, 33.399570, 31.298616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339878, 32.799248, 31.596340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648983, 33.001701, 31.443148>,  <34.834446, 33.123173, 31.351233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648983, 33.001701, 31.443148>,  <34.339878, 32.799248, 31.596340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648983, 33.001701, 31.443148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552153, -0.238511, 0.798899,
		0.313003, -0.828820, -0.463774,
		0.772759, 0.506132, -0.382981,
		34.880810, 33.153542, 31.328253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829536, 32.411362, 31.894985>,  <34.339878, 32.799248, 31.596340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829536, 32.411362, 31.894985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988705, 32.749088, 31.751432>,  <35.084206, 32.951725, 31.665300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988705, 32.749088, 31.751432>,  <34.829536, 32.411362, 31.894985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988705, 32.749088, 31.751432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520706, 0.114217, 0.846061,
		0.755331, -0.523536, -0.394190,
		0.397920, 0.844313, -0.358880,
		35.108082, 33.002380, 31.643768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564564, 32.297543, 31.924173>,  <34.829536, 32.411362, 31.894985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564564, 32.297543, 31.924173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532223, 32.695206, 31.895561>,  <35.512817, 32.933804, 31.878395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532223, 32.695206, 31.895561>,  <35.564564, 32.297543, 31.924173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532223, 32.695206, 31.895561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758984, 0.107926, 0.642102,
		0.646070, -0.002374, -0.763275,
		-0.080853, 0.994156, -0.071529,
		35.507965, 32.993454, 31.874102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171047, 32.513824, 31.937170>,  <35.564564, 32.297543, 31.924173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171047, 32.513824, 31.937170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961094, 32.836216, 32.046638>,  <35.835121, 33.029652, 32.112320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961094, 32.836216, 32.046638>,  <36.171047, 32.513824, 31.937170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961094, 32.836216, 32.046638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645158, 0.166987, 0.745578,
		0.555222, 0.567900, -0.607633,
		-0.524881, 0.805980, 0.273670,
		35.803631, 33.078011, 32.128738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721836, 32.974262, 32.171638>,  <36.171047, 32.513824, 31.937170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721836, 32.974262, 32.171638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377357, 33.116058, 32.317337>,  <36.170670, 33.201138, 32.404758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377357, 33.116058, 32.317337>,  <36.721836, 32.974262, 32.171638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377357, 33.116058, 32.317337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443048, 0.172343, 0.879776,
		0.249097, 0.919039, -0.305478,
		-0.861196, 0.354491, 0.364248,
		36.118999, 33.222404, 32.426613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939125, 33.562641, 32.535824>,  <36.721836, 32.974262, 32.171638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939125, 33.562641, 32.535824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582722, 33.464600, 32.688683>,  <36.368881, 33.405773, 32.780396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582722, 33.464600, 32.688683>,  <36.939125, 33.562641, 32.535824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582722, 33.464600, 32.688683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352899, 0.155618, 0.922630,
		-0.285612, 0.956925, -0.052158,
		-0.891004, -0.245107, 0.382144,
		36.315422, 33.391068, 32.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852955, 34.002441, 33.003906>,  <36.939125, 33.562641, 32.535824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852955, 34.002441, 33.003906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615574, 33.697845, 33.108166>,  <36.473145, 33.515087, 33.170723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615574, 33.697845, 33.108166>,  <36.852955, 34.002441, 33.003906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615574, 33.697845, 33.108166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413980, -0.011074, 0.910218,
		-0.690238, 0.648079, 0.321815,
		-0.593457, -0.761493, 0.260648,
		36.437538, 33.469398, 33.186359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558868, 34.109512, 33.755959>,  <36.852955, 34.002441, 33.003906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558868, 34.109512, 33.755959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507507, 33.718655, 33.688179>,  <36.476692, 33.484142, 33.647511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507507, 33.718655, 33.688179>,  <36.558868, 34.109512, 33.755959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507507, 33.718655, 33.688179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376212, -0.206081, 0.903324,
		-0.917593, 0.052241, 0.394073,
		-0.128401, -0.977139, -0.169445,
		36.468987, 33.425514, 33.637344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258186, 33.783783, 34.325481>,  <36.558868, 34.109512, 33.755959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258186, 33.783783, 34.325481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456501, 33.480778, 34.155602>,  <36.575489, 33.298973, 34.053673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456501, 33.480778, 34.155602>,  <36.258186, 33.783783, 34.325481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456501, 33.480778, 34.155602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378628, -0.251569, 0.890704,
		-0.781562, -0.602402, 0.162092,
		0.495785, -0.757512, -0.424703,
		36.605236, 33.253525, 34.028191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010166, 32.978573, 34.636993>,  <36.258186, 33.783783, 34.325481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010166, 32.978573, 34.636993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389629, 33.054031, 34.535435>,  <36.617306, 33.099304, 34.474499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389629, 33.054031, 34.535435>,  <36.010166, 32.978573, 34.636993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389629, 33.054031, 34.535435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308290, -0.371890, 0.875589,
		0.070755, -0.908907, -0.410953,
		0.948657, 0.188645, -0.253894,
		36.674225, 33.110626, 34.459267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403366, 32.544388, 35.158875>,  <36.010166, 32.978573, 34.636993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403366, 32.544388, 35.158875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713627, 32.725937, 34.983437>,  <36.899784, 32.834866, 34.878174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713627, 32.725937, 34.983437>,  <36.403366, 32.544388, 35.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713627, 32.725937, 34.983437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601166, -0.319576, 0.732442,
		0.192271, -0.831787, -0.520732,
		0.775649, 0.453874, -0.438597,
		36.946323, 32.862099, 34.851856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941811, 32.048149, 35.270058>,  <36.403366, 32.544388, 35.158875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941811, 32.048149, 35.270058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032192, 32.436520, 35.238441>,  <37.086422, 32.669540, 35.219471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032192, 32.436520, 35.238441>,  <36.941811, 32.048149, 35.270058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032192, 32.436520, 35.238441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700147, -0.105450, 0.706168,
		0.677302, -0.214905, -0.703618,
		0.225956, 0.970925, -0.079043,
		37.099979, 32.727798, 35.214729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647491, 32.113308, 35.037052>,  <36.941811, 32.048149, 35.270058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647491, 32.113308, 35.037052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553017, 32.450748, 35.229946>,  <37.496334, 32.653214, 35.345680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553017, 32.450748, 35.229946>,  <37.647491, 32.113308, 35.037052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553017, 32.450748, 35.229946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753480, -0.154375, 0.639090,
		0.613584, 0.514295, -0.599179,
		-0.236182, 0.843605, 0.482233,
		37.482162, 32.703831, 35.374615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367096, 32.494415, 35.283916>,  <37.647491, 32.113308, 35.037052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367096, 32.494415, 35.283916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050423, 32.597881, 35.505302>,  <37.860416, 32.659962, 35.638134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050423, 32.597881, 35.505302>,  <38.367096, 32.494415, 35.283916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050423, 32.597881, 35.505302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534843, -0.144375, 0.832526,
		0.295254, 0.955116, -0.024048,
		-0.791687, 0.258669, 0.553464,
		37.812916, 32.675484, 35.671341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591434, 32.921089, 35.753731>,  <38.367096, 32.494415, 35.283916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591434, 32.921089, 35.753731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257412, 32.779621, 35.922302>,  <38.056999, 32.694740, 36.023445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257412, 32.779621, 35.922302>,  <38.591434, 32.921089, 35.753731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257412, 32.779621, 35.922302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495413, -0.150240, 0.855566,
		-0.239269, 0.923227, 0.300670,
		-0.835055, -0.353666, 0.421431,
		38.006897, 32.673523, 36.048733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463512, 33.238335, 36.424515>,  <38.591434, 32.921089, 35.753731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463512, 33.238335, 36.424515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304188, 32.872318, 36.399059>,  <38.208591, 32.652710, 36.383785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304188, 32.872318, 36.399059>,  <38.463512, 33.238335, 36.424515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304188, 32.872318, 36.399059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478997, -0.266672, 0.836330,
		-0.782246, 0.302638, 0.544520,
		-0.398314, -0.915039, -0.063641,
		38.184692, 32.597805, 36.379967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373482, 33.049603, 37.117332>,  <38.463512, 33.238335, 36.424515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373482, 33.049603, 37.117332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320377, 32.690609, 36.949093>,  <38.288513, 32.475212, 36.848148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320377, 32.690609, 36.949093>,  <38.373482, 33.049603, 37.117332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320377, 32.690609, 36.949093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408034, -0.436219, 0.802011,
		-0.903262, -0.065141, 0.424116,
		-0.132764, -0.897480, -0.420600,
		38.280548, 32.421364, 36.822914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999302, 32.587868, 37.688866>,  <38.373482, 33.049603, 37.117332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999302, 32.587868, 37.688866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188076, 32.344761, 37.433399>,  <38.301342, 32.198898, 37.280117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188076, 32.344761, 37.433399>,  <37.999302, 32.587868, 37.688866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188076, 32.344761, 37.433399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489633, -0.421746, 0.763144,
		-0.733170, -0.672868, 0.098546,
		0.471934, -0.607766, -0.638670,
		38.329655, 32.162430, 37.241798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385990, 32.317505, 38.102863>,  <37.999302, 32.587868, 37.688866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385990, 32.317505, 38.102863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485462, 32.099548, 37.782551>,  <38.545147, 31.968773, 37.590363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485462, 32.099548, 37.782551>,  <38.385990, 32.317505, 38.102863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485462, 32.099548, 37.782551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691742, -0.478783, 0.540611,
		-0.677976, -0.688371, 0.257863,
		0.248681, -0.544896, -0.800779,
		38.560066, 31.936079, 37.542316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309071, 31.499756, 38.078472>,  <38.385990, 32.317505, 38.102863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309071, 31.499756, 38.078472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611313, 31.636114, 37.854740>,  <38.792660, 31.717928, 37.720501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611313, 31.636114, 37.854740>,  <38.309071, 31.499756, 38.078472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611313, 31.636114, 37.854740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645983, -0.529212, 0.550128,
		-0.108469, -0.776998, -0.620088,
		0.755606, 0.340894, -0.559330,
		38.837994, 31.738382, 37.686939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767151, 30.941164, 37.782425>,  <38.309071, 31.499756, 38.078472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767151, 30.941164, 37.782425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024769, 31.247145, 37.785374>,  <39.179340, 31.430733, 37.787144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024769, 31.247145, 37.785374>,  <38.767151, 30.941164, 37.782425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024769, 31.247145, 37.785374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688369, -0.583722, 0.430600,
		0.333691, -0.272252, -0.902513,
		0.644048, 0.764949, 0.007373,
		39.217983, 31.476629, 37.787586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382820, 30.758207, 37.532997>,  <38.767151, 30.941164, 37.782425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382820, 30.758207, 37.532997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471725, 31.075401, 37.759899>,  <39.525066, 31.265718, 37.896038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471725, 31.075401, 37.759899>,  <39.382820, 30.758207, 37.532997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471725, 31.075401, 37.759899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769688, -0.499838, 0.397167,
		0.598481, 0.348332, -0.721447,
		0.222260, 0.792986, 0.567250,
		39.538403, 31.313297, 37.930073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186329, 30.681688, 37.784576>,  <39.382820, 30.758207, 37.532997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186329, 30.681688, 37.784576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090027, 30.997036, 38.011028>,  <40.032246, 31.186245, 38.146900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090027, 30.997036, 38.011028>,  <40.186329, 30.681688, 37.784576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090027, 30.997036, 38.011028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621181, -0.323023, 0.713996,
		0.745767, 0.523573, -0.411950,
		-0.240759, 0.788370, 0.566134,
		40.017799, 31.233547, 38.180870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809540, 31.187727, 38.059334>,  <40.186329, 30.681688, 37.784576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809540, 31.187727, 38.059334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489403, 31.176903, 38.298904>,  <40.297321, 31.170408, 38.442646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489403, 31.176903, 38.298904>,  <40.809540, 31.187727, 38.059334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489403, 31.176903, 38.298904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535959, -0.480000, 0.694513,
		0.268690, 0.876851, 0.398670,
		-0.800346, -0.027062, 0.598927,
		40.249298, 31.168783, 38.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035473, 31.295059, 38.757877>,  <40.809540, 31.187727, 38.059334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035473, 31.295059, 38.757877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679249, 31.120850, 38.810379>,  <40.465515, 31.016323, 38.841881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679249, 31.120850, 38.810379>,  <41.035473, 31.295059, 38.757877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679249, 31.120850, 38.810379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402187, -0.619116, 0.674493,
		-0.212498, 0.653463, 0.726520,
		-0.890556, -0.435525, 0.131253,
		40.412083, 30.990192, 38.849754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065247, 31.186464, 39.542923>,  <41.035473, 31.295059, 38.757877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065247, 31.186464, 39.542923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775520, 30.958769, 39.387318>,  <40.601685, 30.822151, 39.293953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775520, 30.958769, 39.387318>,  <41.065247, 31.186464, 39.542923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775520, 30.958769, 39.387318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341316, -0.786280, 0.515040,
		-0.599053, 0.240277, 0.763808,
		-0.724320, -0.569236, -0.389013,
		40.558224, 30.787998, 39.270615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666508, 30.773024, 40.119705>,  <41.065247, 31.186464, 39.542923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666508, 30.773024, 40.119705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708340, 30.600315, 39.761345>,  <40.733437, 30.496691, 39.546329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708340, 30.600315, 39.761345>,  <40.666508, 30.773024, 40.119705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708340, 30.600315, 39.761345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274071, -0.853445, 0.443302,
		-0.956007, -0.291900, 0.029085,
		0.104577, -0.431771, -0.895900,
		40.739712, 30.470783, 39.492577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672379, 30.156372, 40.414158>,  <40.666508, 30.773024, 40.119705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672379, 30.156372, 40.414158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813622, 30.117188, 40.041981>,  <40.898369, 30.093676, 39.818676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813622, 30.117188, 40.041981>,  <40.672379, 30.156372, 40.414158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813622, 30.117188, 40.041981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502595, -0.818956, 0.276964,
		-0.789120, -0.565433, -0.239947,
		0.353111, -0.097962, -0.930439,
		40.919556, 30.087799, 39.762848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375996, 29.531441, 40.156612>,  <40.672379, 30.156372, 40.414158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375996, 29.531441, 40.156612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728233, 29.644533, 40.004501>,  <40.939575, 29.712389, 39.913235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728233, 29.644533, 40.004501>,  <40.375996, 29.531441, 40.156612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728233, 29.644533, 40.004501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367796, -0.913806, 0.172291,
		-0.298792, -0.291585, -0.908681,
		0.880596, 0.282730, -0.380282,
		40.992413, 29.729353, 39.890415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466705, 29.197372, 39.437939>,  <40.375996, 29.531441, 40.156612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466705, 29.197372, 39.437939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785236, 29.271393, 39.668282>,  <40.976357, 29.315805, 39.806488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785236, 29.271393, 39.668282>,  <40.466705, 29.197372, 39.437939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785236, 29.271393, 39.668282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229179, -0.973376, -0.004130,
		0.559763, 0.135263, -0.817539,
		0.796331, 0.185051, 0.575859,
		41.024136, 29.326908, 39.841038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218716, 29.077494, 39.101822>,  <40.466705, 29.197372, 39.437939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218716, 29.077494, 39.101822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177746, 28.990808, 39.490162>,  <41.153164, 28.938797, 39.723164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177746, 28.990808, 39.490162>,  <41.218716, 29.077494, 39.101822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177746, 28.990808, 39.490162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110894, -0.972384, -0.205356,
		0.988541, 0.086628, 0.123626,
		-0.102422, -0.216712, 0.970848,
		41.147018, 28.925795, 39.781418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008965, 29.692772, 38.962273>,  <41.218716, 29.077494, 39.101822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008965, 29.692772, 38.962273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715405, 29.717093, 39.232887>,  <40.539268, 29.731684, 39.395256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715405, 29.717093, 39.232887>,  <41.008965, 29.692772, 38.962273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715405, 29.717093, 39.232887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153598, 0.955334, -0.252477,
		-0.661666, -0.289207, -0.691778,
		-0.733898, 0.060800, 0.676534,
		40.495235, 29.735332, 39.435848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274864, 29.875273, 38.616077>,  <41.008965, 29.692772, 38.962273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274864, 29.875273, 38.616077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327797, 30.039906, 38.976765>,  <40.359554, 30.138685, 39.193176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327797, 30.039906, 38.976765>,  <40.274864, 29.875273, 38.616077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327797, 30.039906, 38.976765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424697, 0.845524, -0.323607,
		-0.895612, -0.340133, 0.286685,
		0.132330, 0.411581, 0.901715,
		40.367496, 30.163380, 39.247280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569740, 30.034082, 38.836617>,  <40.274864, 29.875273, 38.616077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569740, 30.034082, 38.836617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862904, 30.264879, 38.980797>,  <40.038803, 30.403357, 39.067303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862904, 30.264879, 38.980797>,  <39.569740, 30.034082, 38.836617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862904, 30.264879, 38.980797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388558, 0.789917, -0.474399,
		-0.558446, 0.207639, 0.803134,
		0.732912, 0.576991, 0.360446,
		40.082779, 30.437977, 39.088932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296387, 30.548277, 39.329742>,  <39.569740, 30.034082, 38.836617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296387, 30.548277, 39.329742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635727, 30.666540, 39.154064>,  <39.839329, 30.737497, 39.048656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635727, 30.666540, 39.154064>,  <39.296387, 30.548277, 39.329742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635727, 30.666540, 39.154064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487871, 0.758762, -0.431581,
		0.205647, 0.580403, 0.787935,
		0.848346, 0.295658, -0.439199,
		39.890232, 30.755238, 39.022305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071877, 31.209953, 39.124626>,  <39.296387, 30.548277, 39.329742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071877, 31.209953, 39.124626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422592, 31.172760, 38.935909>,  <39.633022, 31.150444, 38.822678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422592, 31.172760, 38.935909>,  <39.071877, 31.209953, 39.124626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422592, 31.172760, 38.935909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284280, 0.691088, -0.664517,
		0.387837, 0.716765, 0.579508,
		0.876794, -0.092982, -0.471792,
		39.685631, 31.144865, 38.794373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366226, 31.895555, 38.937408>,  <39.071877, 31.209953, 39.124626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366226, 31.895555, 38.937408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522717, 31.624098, 38.688766>,  <39.616611, 31.461224, 38.539581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522717, 31.624098, 38.688766>,  <39.366226, 31.895555, 38.937408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522717, 31.624098, 38.688766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348903, 0.515639, -0.782549,
		0.851593, 0.523031, -0.035050,
		0.391224, -0.678642, -0.621601,
		39.640083, 31.420506, 38.502285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886181, 32.351727, 38.600491>,  <39.366226, 31.895555, 38.937408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886181, 32.351727, 38.600491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783623, 32.034168, 38.379948>,  <39.722088, 31.843634, 38.247623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783623, 32.034168, 38.379948>,  <39.886181, 32.351727, 38.600491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783623, 32.034168, 38.379948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431313, 0.604458, -0.669776,
		0.865002, 0.066078, -0.497398,
		-0.256399, -0.793892, -0.551358,
		39.706703, 31.796001, 38.214539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002129, 32.522186, 37.858540>,  <39.886181, 32.351727, 38.600491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002129, 32.522186, 37.858540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768955, 32.197502, 37.844009>,  <39.629051, 32.002693, 37.835293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768955, 32.197502, 37.844009>,  <40.002129, 32.522186, 37.858540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768955, 32.197502, 37.844009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552333, 0.428652, -0.714972,
		0.595920, -0.396716, -0.698209,
		-0.582930, -0.811710, -0.036323,
		39.594078, 31.953989, 37.833111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814232, 32.546860, 37.245453>,  <40.002129, 32.522186, 37.858540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814232, 32.546860, 37.245453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530422, 32.316483, 37.407864>,  <39.360134, 32.178257, 37.505310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530422, 32.316483, 37.407864>,  <39.814232, 32.546860, 37.245453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530422, 32.316483, 37.407864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627737, 0.254789, -0.735546,
		0.320187, -0.776766, -0.542324,
		-0.709526, -0.575949, 0.406025,
		39.317566, 32.143700, 37.529671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506187, 32.019672, 36.783306>,  <39.814232, 32.546860, 37.245453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506187, 32.019672, 36.783306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243256, 32.158348, 37.050953>,  <39.085495, 32.241554, 37.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243256, 32.158348, 37.050953>,  <39.506187, 32.019672, 36.783306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243256, 32.158348, 37.050953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567221, 0.356970, -0.742181,
		-0.496164, -0.867397, -0.037997,
		-0.657329, 0.346691, 0.669121,
		39.046059, 32.262356, 37.251690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122269, 31.976992, 36.221367>,  <39.506187, 32.019672, 36.783306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122269, 31.976992, 36.221367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881721, 31.985643, 36.540836>,  <38.737392, 31.990835, 36.732517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881721, 31.985643, 36.540836>,  <39.122269, 31.976992, 36.221367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881721, 31.985643, 36.540836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788138, 0.147991, -0.597443,
		-0.131119, -0.988752, -0.071950,
		-0.601371, 0.021629, 0.798677,
		38.701309, 31.992132, 36.780441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521244, 31.412346, 36.138702>,  <39.122269, 31.976992, 36.221367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521244, 31.412346, 36.138702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460857, 31.732565, 36.370682>,  <38.424625, 31.924696, 36.509869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460857, 31.732565, 36.370682>,  <38.521244, 31.412346, 36.138702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460857, 31.732565, 36.370682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740406, 0.297147, -0.602912,
		-0.654988, -0.520413, 0.547869,
		-0.150965, 0.800546, 0.579945,
		38.415569, 31.972729, 36.544666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797344, 31.412035, 36.184223>,  <38.521244, 31.412346, 36.138702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797344, 31.412035, 36.184223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955414, 31.773602, 36.249672>,  <38.050255, 31.990541, 36.288940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955414, 31.773602, 36.249672>,  <37.797344, 31.412035, 36.184223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955414, 31.773602, 36.249672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662952, 0.403930, -0.630345,
		-0.635874, 0.140617, 0.758875,
		0.395170, 0.903918, 0.163626,
		38.073963, 32.044777, 36.298759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245872, 31.790081, 36.440929>,  <37.797344, 31.412035, 36.184223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245872, 31.790081, 36.440929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511345, 32.085445, 36.488728>,  <37.670628, 32.262665, 36.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511345, 32.085445, 36.488728>,  <37.245872, 31.790081, 36.440929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511345, 32.085445, 36.488728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361288, 0.456311, -0.813174,
		-0.654983, 0.496514, 0.569623,
		0.663678, 0.738413, 0.119492,
		37.710449, 32.306969, 36.524574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833736, 32.450905, 36.514843>,  <37.245872, 31.790081, 36.440929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833736, 32.450905, 36.514843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204990, 32.512058, 36.379086>,  <37.427742, 32.548752, 36.297630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204990, 32.512058, 36.379086>,  <36.833736, 32.450905, 36.514843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204990, 32.512058, 36.379086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365172, 0.550822, -0.750496,
		0.072206, 0.820501, 0.567067,
		0.928136, 0.152886, -0.339397,
		37.483433, 32.557922, 36.277267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801872, 33.126896, 36.291172>,  <36.833736, 32.450905, 36.514843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801872, 33.126896, 36.291172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114403, 32.960468, 36.105091>,  <37.301922, 32.860611, 35.993443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114403, 32.960468, 36.105091>,  <36.801872, 33.126896, 36.291172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114403, 32.960468, 36.105091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266226, 0.451973, -0.851378,
		0.564493, 0.789053, 0.242369,
		0.781326, -0.416072, -0.465202,
		37.348801, 32.835648, 35.965530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215939, 33.691311, 36.038013>,  <36.801872, 33.126896, 36.291172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215939, 33.691311, 36.038013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239578, 33.344296, 35.840473>,  <37.253761, 33.136086, 35.721951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239578, 33.344296, 35.840473>,  <37.215939, 33.691311, 36.038013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239578, 33.344296, 35.840473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378296, 0.438353, -0.815315,
		0.923796, 0.235010, -0.302278,
		0.059103, -0.867535, -0.493852,
		37.257309, 33.084034, 35.692318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148975, 34.008907, 35.328224>,  <37.215939, 33.691311, 36.038013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148975, 34.008907, 35.328224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140511, 33.610680, 35.291569>,  <37.135429, 33.371742, 35.269573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140511, 33.610680, 35.291569>,  <37.148975, 34.008907, 35.328224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140511, 33.610680, 35.291569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499414, 0.089935, -0.861683,
		0.866105, 0.027529, -0.499104,
		-0.021166, -0.995567, -0.091641,
		37.134159, 33.312008, 35.264076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428699, 34.337547, 34.740639>,  <37.148975, 34.008907, 35.328224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428699, 34.337547, 34.740639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712067, 34.595909, 34.626827>,  <37.882088, 34.750927, 34.558540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712067, 34.595909, 34.626827>,  <37.428699, 34.337547, 34.740639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712067, 34.595909, 34.626827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083549, 0.477037, 0.874903,
		0.700831, -0.596025, 0.391906,
		0.708417, 0.645902, -0.284525,
		37.924591, 34.789680, 34.541470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969547, 34.285343, 35.253803>,  <37.428699, 34.337547, 34.740639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969547, 34.285343, 35.253803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930401, 34.646141, 35.085602>,  <37.906914, 34.862621, 34.984680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930401, 34.646141, 35.085602>,  <37.969547, 34.285343, 35.253803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930401, 34.646141, 35.085602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285444, 0.379336, 0.880128,
		0.953386, 0.206163, 0.220346,
		-0.097865, 0.901998, -0.420501,
		37.901043, 34.916740, 34.959450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633232, 34.114979, 35.403210>,  <37.969547, 34.285343, 35.253803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633232, 34.114979, 35.403210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925694, 33.936340, 35.609501>,  <39.101170, 33.829159, 35.733276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925694, 33.936340, 35.609501>,  <38.633232, 34.114979, 35.403210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925694, 33.936340, 35.609501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588385, 0.795405, -0.145375,
		-0.345285, 0.409735, 0.844331,
		0.731150, -0.446597, 0.515724,
		39.145039, 33.802361, 35.764217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889015, 34.595123, 35.914238>,  <38.633232, 34.114979, 35.403210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889015, 34.595123, 35.914238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180126, 34.336029, 35.824108>,  <39.354794, 34.180573, 35.770031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180126, 34.336029, 35.824108>,  <38.889015, 34.595123, 35.914238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180126, 34.336029, 35.824108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659845, 0.750904, -0.027359,
		0.186921, -0.128770, 0.973899,
		0.727781, -0.647736, -0.225328,
		39.398460, 34.141708, 35.756512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488266, 34.540413, 36.403015>,  <38.889015, 34.595123, 35.914238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488266, 34.540413, 36.403015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616650, 34.439671, 36.037819>,  <39.693680, 34.379227, 35.818703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616650, 34.439671, 36.037819>,  <39.488266, 34.540413, 36.403015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616650, 34.439671, 36.037819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637770, 0.770137, 0.011764,
		0.700166, -0.586054, 0.407810,
		0.320964, -0.251852, -0.912991,
		39.712940, 34.364117, 35.763920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261333, 34.463524, 36.461414>,  <39.488266, 34.540413, 36.403015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261333, 34.463524, 36.461414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149967, 34.532986, 36.083561>,  <40.083149, 34.574661, 35.856850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149967, 34.532986, 36.083561>,  <40.261333, 34.463524, 36.461414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149967, 34.532986, 36.083561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640068, 0.766838, -0.047679,
		0.716100, -0.617903, -0.324649,
		-0.278414, 0.173655, -0.944632,
		40.066444, 34.585083, 35.800171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728989, 34.439728, 35.907856>,  <40.261333, 34.463524, 36.461414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728989, 34.439728, 35.907856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470535, 34.719746, 35.786236>,  <40.315464, 34.887756, 35.713264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470535, 34.719746, 35.786236>,  <40.728989, 34.439728, 35.907856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470535, 34.719746, 35.786236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713269, 0.695616, 0.085829,
		0.271589, -0.161415, -0.948781,
		-0.646132, 0.700046, -0.304054,
		40.276695, 34.929760, 35.695019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034409, 34.857063, 35.340336>,  <40.728989, 34.439728, 35.907856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034409, 34.857063, 35.340336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766884, 35.091038, 35.523876>,  <40.606369, 35.231422, 35.633999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766884, 35.091038, 35.523876>,  <41.034409, 34.857063, 35.340336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766884, 35.091038, 35.523876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727188, 0.643052, 0.240169,
		-0.154578, 0.494295, -0.855440,
		-0.668808, 0.584941, 0.458847,
		40.566242, 35.266521, 35.661530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019436, 35.620522, 35.080849>,  <41.034409, 34.857063, 35.340336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019436, 35.620522, 35.080849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903027, 35.578178, 35.461185>,  <40.833179, 35.552773, 35.689388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903027, 35.578178, 35.461185>,  <41.019436, 35.620522, 35.080849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903027, 35.578178, 35.461185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737653, 0.608064, 0.293473,
		-0.609239, 0.786798, -0.098873,
		-0.291025, -0.105861, 0.950841,
		40.815720, 35.546421, 35.746437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873955, 36.349365, 35.425350>,  <41.019436, 35.620522, 35.080849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873955, 36.349365, 35.425350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019627, 36.052025, 35.649776>,  <41.107029, 35.873619, 35.784431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019627, 36.052025, 35.649776>,  <40.873955, 36.349365, 35.425350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019627, 36.052025, 35.649776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805622, 0.553701, 0.210686,
		-0.467280, 0.375284, 0.800507,
		0.364175, -0.743355, 0.561070,
		41.128880, 35.829018, 35.818096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019859, 36.544876, 36.080116>,  <40.873955, 36.349365, 35.425350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019859, 36.544876, 36.080116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251766, 36.222534, 36.031994>,  <41.390911, 36.029129, 36.003120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251766, 36.222534, 36.031994>,  <41.019859, 36.544876, 36.080116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251766, 36.222534, 36.031994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814218, 0.567511, 0.122393,
		-0.030357, -0.168913, 0.985163,
		0.579765, -0.805853, -0.120304,
		41.425697, 35.980778, 35.995903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596008, 36.396282, 36.596600>,  <41.019859, 36.544876, 36.080116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596008, 36.396282, 36.596600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699116, 36.259933, 36.234966>,  <41.760983, 36.178123, 36.017986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699116, 36.259933, 36.234966>,  <41.596008, 36.396282, 36.596600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699116, 36.259933, 36.234966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786682, 0.617301, -0.008448,
		0.560968, -0.709045, 0.427282,
		0.257772, -0.340874, -0.904079,
		41.776447, 36.157673, 35.963741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282681, 36.265114, 36.519100>,  <41.596008, 36.396282, 36.596600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282681, 36.265114, 36.519100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152122, 36.351353, 36.150974>,  <42.073788, 36.403095, 35.930099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152122, 36.351353, 36.150974>,  <42.282681, 36.265114, 36.519100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152122, 36.351353, 36.150974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589349, 0.807635, -0.019816,
		0.739007, -0.548855, -0.390675,
		-0.326399, 0.215600, -0.920315,
		42.054203, 36.416031, 35.874878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850056, 36.196812, 36.038010>,  <42.282681, 36.265114, 36.519100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850056, 36.196812, 36.038010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589890, 36.470631, 35.906345>,  <42.433788, 36.634922, 35.827347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589890, 36.470631, 35.906345>,  <42.850056, 36.196812, 36.038010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589890, 36.470631, 35.906345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675594, 0.719432, 0.161214,
		0.347169, -0.117524, -0.930409,
		-0.650420, 0.684547, -0.329163,
		42.394764, 36.675995, 35.807598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592896, 36.120502, 35.844051>,  <42.850056, 36.196812, 36.038010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592896, 36.120502, 35.844051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986473, 36.100037, 35.775665>,  <44.222622, 36.087757, 35.734634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986473, 36.100037, 35.775665>,  <43.592896, 36.120502, 35.844051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986473, 36.100037, 35.775665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126864, 0.874330, 0.468458,
		0.125514, -0.482628, 0.866785,
		0.983947, -0.051166, -0.170969,
		44.281658, 36.084686, 35.724373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021435, 36.240707, 36.530819>,  <43.592896, 36.120502, 35.844051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021435, 36.240707, 36.530819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234016, 36.316360, 36.200539>,  <44.361565, 36.361752, 36.002369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234016, 36.316360, 36.200539>,  <44.021435, 36.240707, 36.530819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234016, 36.316360, 36.200539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287413, 0.876674, 0.385795,
		0.796839, -0.442350, 0.411552,
		0.531452, 0.189131, -0.825705,
		44.393452, 36.373100, 35.952827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722534, 36.371891, 36.645409>,  <44.021435, 36.240707, 36.530819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722534, 36.371891, 36.645409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633926, 36.564854, 36.306419>,  <44.580761, 36.680630, 36.103027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633926, 36.564854, 36.306419>,  <44.722534, 36.371891, 36.645409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633926, 36.564854, 36.306419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200562, 0.873025, 0.444526,
		0.954307, -0.071498, -0.290147,
		-0.221523, 0.482407, -0.847473,
		44.567471, 36.709576, 36.052177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245846, 36.884712, 36.464077>,  <44.722534, 36.371891, 36.645409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245846, 36.884712, 36.464077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913879, 37.047035, 36.310947>,  <44.714699, 37.144428, 36.219070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913879, 37.047035, 36.310947>,  <45.245846, 36.884712, 36.464077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913879, 37.047035, 36.310947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171761, 0.838741, 0.516733,
		0.530788, 0.363090, -0.765787,
		-0.829917, 0.405807, -0.382829,
		44.664906, 37.168777, 36.196098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342892, 37.527287, 36.064941>,  <45.245846, 36.884712, 36.464077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342892, 37.527287, 36.064941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010841, 37.489815, 36.284801>,  <44.811611, 37.467331, 36.416718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010841, 37.489815, 36.284801>,  <45.342892, 37.527287, 36.064941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010841, 37.489815, 36.284801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226000, 0.844645, 0.485281,
		-0.509726, 0.527065, -0.679987,
		-0.830122, -0.093683, 0.549654,
		44.761806, 37.461708, 36.449699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944687, 37.019371, 35.811455>,  <45.342892, 37.527287, 36.064941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944687, 37.019371, 35.811455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113277, 37.198074, 36.127117>,  <46.214432, 37.305298, 36.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113277, 37.198074, 36.127117>,  <45.944687, 37.019371, 35.811455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113277, 37.198074, 36.127117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382468, 0.701463, -0.601388,
		-0.822238, 0.555297, 0.124779,
		0.421477, 0.446761, 0.789153,
		46.239719, 37.332104, 36.363865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978794, 36.162460, 35.724220>,  <45.944687, 37.019371, 35.811455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978794, 36.162460, 35.724220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264862, 36.181019, 36.003185>,  <46.436501, 36.192154, 36.170563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264862, 36.181019, 36.003185>,  <45.978794, 36.162460, 35.724220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264862, 36.181019, 36.003185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479363, -0.758716, -0.441091,
		0.508671, 0.649767, -0.564851,
		0.715168, 0.046399, 0.697411,
		46.479412, 36.194939, 36.212410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222378, 35.459785, 35.552151>,  <45.978794, 36.162460, 35.724220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222378, 35.459785, 35.552151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520420, 35.675476, 35.709145>,  <46.699245, 35.804890, 35.803341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520420, 35.675476, 35.709145>,  <46.222378, 35.459785, 35.552151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520420, 35.675476, 35.709145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661522, -0.672412, -0.332040,
		0.084867, 0.507043, -0.857732,
		0.745108, 0.539230, 0.392486,
		46.743954, 35.837246, 35.826889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665516, 35.643105, 34.947636>,  <46.222378, 35.459785, 35.552151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665516, 35.643105, 34.947636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886677, 35.637295, 35.280884>,  <47.019375, 35.633808, 35.480831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886677, 35.637295, 35.280884>,  <46.665516, 35.643105, 34.947636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886677, 35.637295, 35.280884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520079, -0.775161, -0.358668,
		0.651013, 0.631597, -0.421032,
		0.552901, -0.014527, 0.833120,
		47.052547, 35.632938, 35.530819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.402630, 35.663822, 34.742294>,  <46.665516, 35.643105, 34.947636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.402630, 35.663822, 34.742294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313599, 35.455696, 35.072079>,  <47.260181, 35.330822, 35.269951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313599, 35.455696, 35.072079>,  <47.402630, 35.663822, 34.742294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.313599, 35.455696, 35.072079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303486, -0.840634, -0.448587,
		0.926475, 0.150368, 0.345011,
		-0.222575, -0.520311, 0.824461,
		47.246826, 35.299603, 35.319416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.018673, 35.179337, 35.031174>,  <47.402630, 35.663822, 34.742294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.018673, 35.179337, 35.031174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647430, 35.045807, 35.097126>,  <47.424686, 34.965691, 35.136696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647430, 35.045807, 35.097126>,  <48.018673, 35.179337, 35.031174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.647430, 35.045807, 35.097126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249978, -0.886886, -0.388514,
		0.275924, -0.319366, 0.906571,
		-0.928104, -0.333823, 0.164879,
		47.368999, 34.945660, 35.146591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.779392, 27.058323, 27.902136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381275, 27.083586, 27.872711>,  <33.142406, 27.098743, 27.855057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381275, 27.083586, 27.872711>,  <33.779392, 27.058323, 27.902136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381275, 27.083586, 27.872711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064157, 0.139843, 0.988093,
		0.072692, 0.988157, -0.135132,
		-0.995289, 0.063157, -0.073563,
		33.082687, 27.102533, 27.850643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535553, 27.598736, 28.153555>,  <33.779392, 27.058323, 27.902136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535553, 27.598736, 28.153555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.191490, 27.396477, 28.180243>,  <32.985054, 27.275122, 28.196255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.191490, 27.396477, 28.180243>,  <33.535553, 27.598736, 28.153555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191490, 27.396477, 28.180243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139380, 0.358876, 0.922920,
		-0.490614, 0.784557, -0.379167,
		-0.860157, -0.505646, 0.066718,
		32.933441, 27.244783, 28.200258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034794, 28.141548, 28.509817>,  <33.535553, 27.598736, 28.153555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034794, 28.141548, 28.509817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.906048, 27.767353, 28.568146>,  <32.828800, 27.542835, 28.603144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.906048, 27.767353, 28.568146>,  <33.034794, 28.141548, 28.509817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906048, 27.767353, 28.568146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264746, 0.236801, 0.934792,
		-0.909018, 0.262269, -0.323884,
		-0.321863, -0.935489, 0.145822,
		32.809490, 27.486706, 28.611893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378204, 28.226105, 28.746387>,  <33.034794, 28.141548, 28.509817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378204, 28.226105, 28.746387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.505363, 27.867483, 28.869761>,  <32.581657, 27.652309, 28.943785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.505363, 27.867483, 28.869761>,  <32.378204, 28.226105, 28.746387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505363, 27.867483, 28.869761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394473, 0.170747, 0.902904,
		-0.862167, -0.408701, -0.299386,
		0.317899, -0.896554, 0.308434,
		32.600735, 27.598516, 28.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931915, 28.083757, 29.264999>,  <32.378204, 28.226105, 28.746387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931915, 28.083757, 29.264999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.192554, 27.790026, 29.341085>,  <32.348938, 27.613787, 29.386738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.192554, 27.790026, 29.341085>,  <31.931915, 28.083757, 29.264999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192554, 27.790026, 29.341085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231979, 0.045843, 0.971640,
		-0.722224, -0.677243, -0.140478,
		0.651597, -0.734330, 0.190215,
		32.388035, 27.569727, 29.398149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648672, 27.621529, 29.803238>,  <31.931915, 28.083757, 29.264999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648672, 27.621529, 29.803238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.040710, 27.544569, 29.822811>,  <32.275932, 27.498394, 29.834555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.040710, 27.544569, 29.822811>,  <31.648672, 27.621529, 29.803238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040710, 27.544569, 29.822811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011349, 0.300385, 0.953750,
		-0.198200, -0.934212, 0.296590,
		0.980096, -0.192399, 0.048934,
		32.334740, 27.486849, 29.837492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706896, 27.165201, 30.350286>,  <31.648672, 27.621529, 29.803238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706896, 27.165201, 30.350286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.048634, 27.361456, 30.281738>,  <32.253677, 27.479208, 30.240608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.048634, 27.361456, 30.281738>,  <31.706896, 27.165201, 30.350286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048634, 27.361456, 30.281738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003214, 0.324756, 0.945792,
		0.519695, -0.808585, 0.275877,
		0.854346, 0.490637, -0.171373,
		32.304939, 27.508646, 30.230326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265533, 26.943226, 30.839190>,  <31.706896, 27.165201, 30.350286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265533, 26.943226, 30.839190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341774, 27.314323, 30.710836>,  <32.387520, 27.536982, 30.633825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341774, 27.314323, 30.710836>,  <32.265533, 26.943226, 30.839190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341774, 27.314323, 30.710836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098250, 0.307206, 0.946557,
		0.976738, -0.211942, -0.032596,
		0.190602, 0.927742, -0.320884,
		32.398956, 27.592646, 30.614571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823380, 27.212763, 31.340364>,  <32.265533, 26.943226, 30.839190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823380, 27.212763, 31.340364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678432, 27.537226, 31.156752>,  <32.591465, 27.731903, 31.046585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678432, 27.537226, 31.156752>,  <32.823380, 27.212763, 31.340364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678432, 27.537226, 31.156752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211903, 0.551308, 0.806943,
		0.907626, 0.195141, -0.371664,
		-0.362369, 0.811159, -0.459031,
		32.569721, 27.780573, 31.019043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383308, 27.727909, 31.466814>,  <32.823380, 27.212763, 31.340364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383308, 27.727909, 31.466814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077816, 27.952166, 31.338816>,  <32.894520, 28.086720, 31.262016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077816, 27.952166, 31.338816>,  <33.383308, 27.727909, 31.466814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077816, 27.952166, 31.338816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276388, 0.731964, 0.622767,
		0.583372, 0.387184, -0.713978,
		-0.763732, 0.560640, -0.319995,
		32.848698, 28.120358, 31.242817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629940, 28.330097, 31.107681>,  <33.383308, 27.727909, 31.466814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629940, 28.330097, 31.107681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.287296, 28.424532, 31.291197>,  <33.081711, 28.481192, 31.401306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.287296, 28.424532, 31.291197>,  <33.629940, 28.330097, 31.107681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287296, 28.424532, 31.291197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463374, 0.743111, 0.482774,
		-0.226957, 0.626140, -0.745949,
		-0.856607, 0.236084, 0.458791,
		33.030315, 28.495358, 31.428835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845467, 28.917419, 31.514694>,  <33.629940, 28.330097, 31.107681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845467, 28.917419, 31.514694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463470, 28.852854, 31.614252>,  <33.234272, 28.814114, 31.673986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463470, 28.852854, 31.614252>,  <33.845467, 28.917419, 31.514694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463470, 28.852854, 31.614252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136568, 0.505592, 0.851896,
		-0.263347, 0.847539, -0.460789,
		-0.954986, -0.161415, 0.248892,
		33.176975, 28.804430, 31.688919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425358, 29.554153, 31.606651>,  <33.845467, 28.917419, 31.514694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425358, 29.554153, 31.606651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223526, 29.293430, 31.833118>,  <33.102428, 29.136995, 31.969000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223526, 29.293430, 31.833118>,  <33.425358, 29.554153, 31.606651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223526, 29.293430, 31.833118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107763, 0.603094, 0.790358,
		-0.856615, 0.459808, -0.234065,
		-0.504576, -0.651809, 0.566170,
		33.072155, 29.097887, 32.002968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951237, 29.967085, 31.948044>,  <33.425358, 29.554153, 31.606651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951237, 29.967085, 31.948044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.992214, 29.620836, 32.144085>,  <33.016800, 29.413086, 32.261711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.992214, 29.620836, 32.144085>,  <32.951237, 29.967085, 31.948044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992214, 29.620836, 32.144085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072249, 0.484920, 0.871569,
		-0.992112, -0.124695, -0.012865,
		0.102441, -0.865624, 0.490104,
		33.022945, 29.361149, 32.291115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428097, 29.871241, 32.405361>,  <32.951237, 29.967085, 31.948044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428097, 29.871241, 32.405361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710430, 29.641830, 32.571671>,  <32.879829, 29.504185, 32.671455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710430, 29.641830, 32.571671>,  <32.428097, 29.871241, 32.405361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710430, 29.641830, 32.571671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103254, 0.497374, 0.861370,
		-0.700811, -0.650915, 0.291845,
		0.705834, -0.573524, 0.415775,
		32.922180, 29.469774, 32.696404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228085, 29.742807, 33.110477>,  <32.428097, 29.871241, 32.405361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228085, 29.742807, 33.110477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.624825, 29.695391, 33.129131>,  <32.862869, 29.666941, 33.140324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.624825, 29.695391, 33.129131>,  <32.228085, 29.742807, 33.110477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624825, 29.695391, 33.129131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021239, 0.514837, 0.857025,
		-0.125601, -0.849053, 0.513161,
		0.991853, -0.118542, 0.046631,
		32.922382, 29.659828, 33.143120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374294, 29.622896, 33.820740>,  <32.228085, 29.742807, 33.110477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374294, 29.622896, 33.820740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742092, 29.672298, 33.671459>,  <32.962769, 29.701941, 33.581890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742092, 29.672298, 33.671459>,  <32.374294, 29.622896, 33.820740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742092, 29.672298, 33.671459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256363, 0.531309, 0.807458,
		0.298010, -0.838127, 0.456872,
		0.919493, 0.123506, -0.373200,
		33.017941, 29.709351, 33.559498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858307, 29.250690, 34.226028>,  <32.374294, 29.622896, 33.820740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858307, 29.250690, 34.226028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048431, 29.566402, 34.070534>,  <33.162506, 29.755829, 33.977238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048431, 29.566402, 34.070534>,  <32.858307, 29.250690, 34.226028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048431, 29.566402, 34.070534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243783, 0.306393, 0.920159,
		0.845370, -0.532129, -0.046781,
		0.475310, 0.789280, -0.388740,
		33.191025, 29.803186, 33.953911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481438, 29.347918, 34.584332>,  <32.858307, 29.250690, 34.226028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481438, 29.347918, 34.584332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420155, 29.698677, 34.402088>,  <33.383385, 29.909132, 34.292744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420155, 29.698677, 34.402088>,  <33.481438, 29.347918, 34.584332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420155, 29.698677, 34.402088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450137, 0.472368, 0.757790,
		0.879717, -0.088982, -0.467097,
		-0.153212, 0.876898, -0.455604,
		33.374191, 29.961746, 34.265408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056671, 29.482903, 34.676849>,  <33.481438, 29.347918, 34.584332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056671, 29.482903, 34.676849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851624, 29.820530, 34.613892>,  <33.728596, 30.023106, 34.576115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851624, 29.820530, 34.613892>,  <34.056671, 29.482903, 34.676849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851624, 29.820530, 34.613892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531182, 0.455782, 0.714219,
		0.674587, 0.282516, -0.681995,
		-0.512619, 0.844066, -0.157397,
		33.697838, 30.073750, 34.566673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528526, 30.021236, 34.646801>,  <34.056671, 29.482903, 34.676849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528526, 30.021236, 34.646801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188835, 30.221262, 34.714626>,  <33.985020, 30.341278, 34.755322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188835, 30.221262, 34.714626>,  <34.528526, 30.021236, 34.646801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188835, 30.221262, 34.714626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468770, 0.566187, 0.678002,
		0.243042, 0.655262, -0.715236,
		-0.849226, 0.500064, 0.169560,
		33.934067, 30.371281, 34.765495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617649, 30.806589, 34.568592>,  <34.528526, 30.021236, 34.646801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617649, 30.806589, 34.568592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.285809, 30.797941, 34.791767>,  <34.086704, 30.792751, 34.925671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.285809, 30.797941, 34.791767>,  <34.617649, 30.806589, 34.568592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285809, 30.797941, 34.791767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329753, 0.787402, 0.520828,
		-0.450579, 0.616061, -0.646102,
		-0.829603, -0.021621, 0.557934,
		34.036926, 30.791454, 34.959148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107513, 30.712851, 34.084042>,  <34.617649, 30.806589, 34.568592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107513, 30.712851, 34.084042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425358, 30.950497, 34.034061>,  <35.616066, 31.093084, 34.004074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425358, 30.950497, 34.034061>,  <35.107513, 30.712851, 34.084042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425358, 30.950497, 34.034061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165743, -0.410284, -0.896770,
		-0.584052, 0.691876, -0.424488,
		0.794615, 0.594117, -0.124953,
		35.663742, 31.128731, 33.996574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132404, 30.976120, 33.394016>,  <35.107513, 30.712851, 34.084042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132404, 30.976120, 33.394016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512054, 31.052902, 33.493870>,  <35.739845, 31.098970, 33.553783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512054, 31.052902, 33.493870>,  <35.132404, 30.976120, 33.394016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512054, 31.052902, 33.493870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303862, -0.350157, -0.886035,
		-0.082666, 0.916812, -0.390669,
		0.949123, 0.191954, 0.249638,
		35.796791, 31.110489, 33.568760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483585, 31.502333, 32.977562>,  <35.132404, 30.976120, 33.394016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483585, 31.502333, 32.977562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770126, 31.260086, 33.116161>,  <35.942051, 31.114738, 33.199322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770126, 31.260086, 33.116161>,  <35.483585, 31.502333, 32.977562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770126, 31.260086, 33.116161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266875, -0.221027, -0.938043,
		0.644681, 0.764445, 0.003290,
		0.716355, -0.605616, 0.346503,
		35.985031, 31.078402, 33.220112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992012, 31.761900, 32.614639>,  <35.483585, 31.502333, 32.977562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992012, 31.761900, 32.614639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.094700, 31.397669, 32.744221>,  <36.156311, 31.179131, 32.821968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.094700, 31.397669, 32.744221>,  <35.992012, 31.761900, 32.614639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094700, 31.397669, 32.744221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336771, -0.229900, -0.913089,
		0.905915, 0.343503, 0.247637,
		0.256717, -0.910578, 0.323952,
		36.171715, 31.124496, 32.841408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446255, 31.557024, 32.080341>,  <35.992012, 31.761900, 32.614639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446255, 31.557024, 32.080341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406521, 31.230145, 32.307434>,  <36.382683, 31.034016, 32.443687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406521, 31.230145, 32.307434>,  <36.446255, 31.557024, 32.080341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406521, 31.230145, 32.307434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353551, -0.562306, -0.747538,
		0.930126, 0.126468, 0.344776,
		-0.099331, -0.817201, 0.567729,
		36.376720, 30.984983, 32.477753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077782, 31.066589, 31.861897>,  <36.446255, 31.557024, 32.080341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077782, 31.066589, 31.861897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768570, 30.868954, 32.021042>,  <36.583042, 30.750372, 32.116531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768570, 30.868954, 32.021042>,  <37.077782, 31.066589, 31.861897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768570, 30.868954, 32.021042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103073, -0.716682, -0.689742,
		0.625936, -0.492184, 0.604946,
		-0.773033, -0.494087, 0.397866,
		36.536659, 30.720728, 32.140400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293129, 30.288820, 32.012112>,  <37.077782, 31.066589, 31.861897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293129, 30.288820, 32.012112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896954, 30.313931, 31.962988>,  <36.659248, 30.328997, 31.933514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896954, 30.313931, 31.962988>,  <37.293129, 30.288820, 32.012112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896954, 30.313931, 31.962988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040056, -0.721106, -0.691665,
		-0.131978, -0.689974, 0.711700,
		-0.990443, 0.062777, -0.122807,
		36.599819, 30.332764, 31.926146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996647, 29.644051, 31.974991>,  <37.293129, 30.288820, 32.012112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996647, 29.644051, 31.974991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708775, 29.862951, 31.804075>,  <36.536053, 29.994291, 31.701527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708775, 29.862951, 31.804075>,  <36.996647, 29.644051, 31.974991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708775, 29.862951, 31.804075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077530, -0.674914, -0.733812,
		-0.689971, -0.494977, 0.528146,
		-0.719673, 0.547257, -0.427295,
		36.492870, 30.027126, 31.675888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644688, 29.133053, 31.619482>,  <36.996647, 29.644051, 31.974991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644688, 29.133053, 31.619482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462547, 29.458815, 31.475594>,  <36.353264, 29.654272, 31.389261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462547, 29.458815, 31.475594>,  <36.644688, 29.133053, 31.619482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462547, 29.458815, 31.475594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335650, -0.531257, -0.777885,
		-0.824618, -0.233470, 0.515263,
		-0.455350, 0.814406, -0.359720,
		36.325943, 29.703136, 31.367678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008602, 28.861109, 31.456871>,  <36.644688, 29.133053, 31.619482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008602, 28.861109, 31.456871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074093, 29.189514, 31.238100>,  <36.113388, 29.386557, 31.106838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074093, 29.189514, 31.238100>,  <36.008602, 28.861109, 31.456871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074093, 29.189514, 31.238100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299960, -0.486726, -0.820440,
		-0.939796, 0.298386, 0.166581,
		0.163729, 0.821014, -0.546927,
		36.123211, 29.435818, 31.074022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438728, 28.837254, 31.025967>,  <36.008602, 28.861109, 31.456871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438728, 28.837254, 31.025967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709930, 29.074871, 30.852800>,  <35.872654, 29.217442, 30.748899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709930, 29.074871, 30.852800>,  <35.438728, 28.837254, 31.025967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709930, 29.074871, 30.852800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321703, -0.289746, -0.901418,
		-0.660916, 0.750441, -0.005346,
		0.678010, 0.594042, -0.432917,
		35.913334, 29.253084, 30.722925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163441, 29.055040, 30.432318>,  <35.438728, 28.837254, 31.025967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163441, 29.055040, 30.432318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544353, 29.157633, 30.366135>,  <35.772900, 29.219189, 30.326426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544353, 29.157633, 30.366135>,  <35.163441, 29.055040, 30.432318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544353, 29.157633, 30.366135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124538, -0.168396, -0.977821,
		-0.278656, 0.951766, -0.128419,
		0.952282, 0.256482, -0.165456,
		35.830040, 29.234577, 30.316498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237789, 29.619493, 30.019102>,  <35.163441, 29.055040, 30.432318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237789, 29.619493, 30.019102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553802, 29.380697, 29.963308>,  <35.743408, 29.237419, 29.929832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553802, 29.380697, 29.963308>,  <35.237789, 29.619493, 30.019102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553802, 29.380697, 29.963308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269172, -0.133354, -0.953815,
		0.550817, 0.791088, -0.266047,
		0.790030, -0.596990, -0.139485,
		35.790810, 29.201601, 29.921463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571880, 29.907387, 29.421963>,  <35.237789, 29.619493, 30.019102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571880, 29.907387, 29.421963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739483, 29.545122, 29.447912>,  <35.840046, 29.327763, 29.463482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739483, 29.545122, 29.447912>,  <35.571880, 29.907387, 29.421963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739483, 29.545122, 29.447912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222024, -0.171478, -0.959844,
		0.880418, 0.387780, -0.272929,
		0.419009, -0.905661, 0.064876,
		35.865185, 29.273424, 29.467375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921032, 29.878923, 28.811340>,  <35.571880, 29.907387, 29.421963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921032, 29.878923, 28.811340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885429, 29.504248, 28.946806>,  <35.864067, 29.279442, 29.028086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885429, 29.504248, 28.946806>,  <35.921032, 29.878923, 28.811340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885429, 29.504248, 28.946806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028556, -0.337474, -0.940902,
		0.995621, -0.093419, 0.003290,
		-0.089008, -0.936688, 0.338664,
		35.858727, 29.223242, 29.048405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259945, 29.521772, 28.319939>,  <35.921032, 29.878923, 28.811340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259945, 29.521772, 28.319939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048012, 29.240126, 28.509043>,  <35.920853, 29.071138, 28.622505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048012, 29.240126, 28.509043>,  <36.259945, 29.521772, 28.319939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048012, 29.240126, 28.509043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148890, -0.471550, -0.869179,
		0.834932, -0.530906, 0.145006,
		-0.529830, -0.704116, 0.472759,
		35.889061, 29.028891, 28.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483383, 28.920160, 28.004021>,  <36.259945, 29.521772, 28.319939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483383, 28.920160, 28.004021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134506, 28.817787, 28.170771>,  <35.925182, 28.756363, 28.270821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134506, 28.817787, 28.170771>,  <36.483383, 28.920160, 28.004021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134506, 28.817787, 28.170771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234444, -0.529257, -0.815428,
		0.429328, -0.808942, 0.401610,
		-0.872189, -0.255931, 0.416876,
		35.872849, 28.741009, 28.295834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365173, 28.227459, 27.810892>,  <36.483383, 28.920160, 28.004021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365173, 28.227459, 27.810892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006084, 28.385736, 27.888369>,  <35.790630, 28.480703, 27.934855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006084, 28.385736, 27.888369>,  <36.365173, 28.227459, 27.810892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006084, 28.385736, 27.888369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391809, -0.516083, -0.761671,
		-0.201426, -0.759662, 0.618337,
		-0.897726, 0.395691, 0.193690,
		35.736767, 28.504444, 27.946476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.860546, 27.581308, 27.953857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666706, 27.906021, 27.823519>,  <35.550404, 28.100849, 27.745316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666706, 27.906021, 27.823519>,  <35.860546, 27.581308, 27.953857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666706, 27.906021, 27.823519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283936, -0.498317, -0.819183,
		-0.827373, -0.304453, 0.471977,
		-0.484597, 0.811781, -0.325849,
		35.521328, 28.149555, 27.725763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248737, 27.342030, 27.596684>,  <35.860546, 27.581308, 27.953857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248737, 27.342030, 27.596684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260277, 27.722511, 27.473797>,  <35.267200, 27.950800, 27.400064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260277, 27.722511, 27.473797>,  <35.248737, 27.342030, 27.596684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260277, 27.722511, 27.473797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474756, -0.257427, -0.841629,
		-0.879645, 0.170132, 0.444162,
		0.028848, 0.951203, -0.307215,
		35.268932, 28.007872, 27.381632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531975, 27.453312, 27.294291>,  <35.248737, 27.342030, 27.596684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531975, 27.453312, 27.294291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756191, 27.739367, 27.127258>,  <34.890720, 27.910999, 27.027039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756191, 27.739367, 27.127258>,  <34.531975, 27.453312, 27.294291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756191, 27.739367, 27.127258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386604, -0.219946, -0.895635,
		-0.732347, 0.663477, 0.153186,
		0.560540, 0.715138, -0.417580,
		34.924355, 27.953907, 27.001984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995937, 27.937378, 26.924292>,  <34.531975, 27.453312, 27.294291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995937, 27.937378, 26.924292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366379, 27.996059, 26.785261>,  <34.588642, 28.031267, 26.701843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366379, 27.996059, 26.785261>,  <33.995937, 27.937378, 26.924292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366379, 27.996059, 26.785261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348670, -0.019025, -0.937052,
		-0.144080, 0.988998, 0.033532,
		0.926105, 0.146702, -0.347575,
		34.644211, 28.040070, 26.680988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998234, 28.442617, 26.399998>,  <33.995937, 27.937378, 26.924292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998234, 28.442617, 26.399998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327103, 28.234684, 26.307219>,  <34.524426, 28.109924, 26.251551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327103, 28.234684, 26.307219>,  <33.998234, 28.442617, 26.399998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327103, 28.234684, 26.307219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321965, -0.088643, -0.942593,
		0.469431, 0.849656, -0.240249,
		0.822176, -0.519834, -0.231947,
		34.573757, 28.078733, 26.237635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149807, 28.543856, 25.686924>,  <33.998234, 28.442617, 26.399998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149807, 28.543856, 25.686924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375767, 28.225649, 25.774599>,  <34.511341, 28.034725, 25.827204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375767, 28.225649, 25.774599>,  <34.149807, 28.543856, 25.686924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375767, 28.225649, 25.774599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142745, -0.355839, -0.923582,
		0.812721, 0.490440, -0.314568,
		0.564897, -0.795517, 0.219190,
		34.545235, 27.986994, 25.840357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594852, 28.499956, 25.157045>,  <34.149807, 28.543856, 25.686924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594852, 28.499956, 25.157045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634617, 28.135395, 25.316778>,  <34.658478, 27.916658, 25.412617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634617, 28.135395, 25.316778>,  <34.594852, 28.499956, 25.157045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634617, 28.135395, 25.316778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001638, -0.401168, -0.916003,
		0.995045, 0.091719, -0.038390,
		0.099416, -0.911401, 0.399330,
		34.664440, 27.861975, 25.436577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141495, 28.072939, 24.838364>,  <34.594852, 28.499956, 25.157045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141495, 28.072939, 24.838364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877720, 27.812126, 24.988028>,  <34.719456, 27.655638, 25.077826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877720, 27.812126, 24.988028>,  <35.141495, 28.072939, 24.838364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877720, 27.812126, 24.988028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002347, -0.499496, -0.866313,
		0.751754, -0.570402, 0.330918,
		-0.659439, -0.652031, 0.374160,
		34.679890, 27.616516, 25.100275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409218, 27.410091, 24.582056>,  <35.141495, 28.072939, 24.838364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409218, 27.410091, 24.582056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050564, 27.306555, 24.725748>,  <34.835373, 27.244432, 24.811964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050564, 27.306555, 24.725748>,  <35.409218, 27.410091, 24.582056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050564, 27.306555, 24.725748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116340, -0.645093, -0.755196,
		0.427213, -0.718928, 0.548299,
		-0.896635, -0.258840, 0.359231,
		34.781574, 27.228903, 24.833517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429672, 26.643526, 24.698019>,  <35.409218, 27.410091, 24.582056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429672, 26.643526, 24.698019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061501, 26.781677, 24.624790>,  <34.840595, 26.864569, 24.580853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061501, 26.781677, 24.624790>,  <35.429672, 26.643526, 24.698019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061501, 26.781677, 24.624790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141722, -0.731316, -0.667152,
		-0.364304, -0.588124, 0.722076,
		-0.920433, 0.345380, -0.183071,
		34.785370, 26.885292, 24.569868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132942, 26.099890, 24.537828>,  <35.429672, 26.643526, 24.698019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132942, 26.099890, 24.537828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873344, 26.376255, 24.410425>,  <34.717587, 26.542074, 24.333982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873344, 26.376255, 24.410425>,  <35.132942, 26.099890, 24.537828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873344, 26.376255, 24.410425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269486, -0.600274, -0.753026,
		-0.711469, -0.402873, 0.575765,
		-0.648990, 0.690916, -0.318508,
		34.678646, 26.583530, 24.314873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599823, 25.750082, 24.180229>,  <35.132942, 26.099890, 24.537828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599823, 25.750082, 24.180229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527905, 26.116501, 24.036821>,  <34.484753, 26.336351, 23.950777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527905, 26.116501, 24.036821>,  <34.599823, 25.750082, 24.180229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527905, 26.116501, 24.036821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366008, -0.400587, -0.839981,
		-0.913079, -0.019802, 0.407302,
		-0.179793, 0.916045, -0.358520,
		34.473969, 26.391314, 23.929266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816612, 25.829723, 24.032608>,  <34.599823, 25.750082, 24.180229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816612, 25.829723, 24.032608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025494, 26.094494, 23.817513>,  <34.150822, 26.253355, 23.688456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025494, 26.094494, 23.817513>,  <33.816612, 25.829723, 24.032608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025494, 26.094494, 23.817513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370527, -0.391820, -0.842132,
		-0.768124, 0.639009, 0.040652,
		0.522202, 0.661925, -0.537736,
		34.182156, 26.293072, 23.656191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322639, 25.985168, 23.539955>,  <33.816612, 25.829723, 24.032608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322639, 25.985168, 23.539955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676781, 26.100693, 23.394226>,  <33.889267, 26.170008, 23.306789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676781, 26.100693, 23.394226>,  <33.322639, 25.985168, 23.539955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676781, 26.100693, 23.394226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262688, -0.335795, -0.904565,
		-0.383588, 0.896565, -0.221431,
		0.885356, 0.288813, -0.364323,
		33.942387, 26.187336, 23.284929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148560, 26.246531, 22.964838>,  <33.322639, 25.985168, 23.539955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148560, 26.246531, 22.964838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540878, 26.214216, 22.893841>,  <33.776272, 26.194828, 22.851242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540878, 26.214216, 22.893841>,  <33.148560, 26.246531, 22.964838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540878, 26.214216, 22.893841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192880, -0.267538, -0.944045,
		0.028779, 0.960155, -0.277983,
		0.980800, -0.080786, -0.177495,
		33.835117, 26.189981, 22.840591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369392, 26.678350, 22.230562>,  <33.148560, 26.246531, 22.964838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369392, 26.678350, 22.230562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641117, 26.398270, 22.318422>,  <33.804153, 26.230221, 22.371140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641117, 26.398270, 22.318422>,  <33.369392, 26.678350, 22.230562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641117, 26.398270, 22.318422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045639, -0.258425, -0.964953,
		0.732427, 0.665531, -0.143595,
		0.679314, -0.700204, 0.219652,
		33.844910, 26.188208, 22.384317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791744, 26.687744, 21.672396>,  <33.369392, 26.678350, 22.230562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791744, 26.687744, 21.672396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848553, 26.331150, 21.844481>,  <33.882637, 26.117193, 21.947731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848553, 26.331150, 21.844481>,  <33.791744, 26.687744, 21.672396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848553, 26.331150, 21.844481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001567, -0.434412, -0.900713,
		0.989862, 0.128597, -0.060300,
		0.142024, -0.891487, 0.430210,
		33.891159, 26.063704, 21.973543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297291, 26.399775, 21.351952>,  <33.791744, 26.687744, 21.672396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297291, 26.399775, 21.351952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.104919, 26.088280, 21.513088>,  <33.989498, 25.901382, 21.609770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.104919, 26.088280, 21.513088>,  <34.297291, 26.399775, 21.351952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104919, 26.088280, 21.513088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019732, -0.449734, -0.892945,
		0.876540, -0.437388, 0.200921,
		-0.480924, -0.778737, 0.402840,
		33.960644, 25.854658, 21.633940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663696, 25.760147, 21.025797>,  <34.297291, 26.399775, 21.351952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663696, 25.760147, 21.025797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318333, 25.621769, 21.172684>,  <34.111115, 25.538742, 21.260817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318333, 25.621769, 21.172684>,  <34.663696, 25.760147, 21.025797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318333, 25.621769, 21.172684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080162, -0.624555, -0.776856,
		0.498099, -0.700179, 0.511513,
		-0.863407, -0.345948, 0.367218,
		34.059311, 25.517984, 21.282848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665436, 24.989254, 20.994972>,  <34.663696, 25.760147, 21.025797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665436, 24.989254, 20.994972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286388, 25.117012, 20.995743>,  <34.058960, 25.193666, 20.996206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286388, 25.117012, 20.995743>,  <34.665436, 24.989254, 20.994972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286388, 25.117012, 20.995743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219578, -0.647060, -0.730136,
		-0.231954, -0.692315, 0.683299,
		-0.947619, 0.319396, 0.001929,
		34.002102, 25.212831, 20.996321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338993, 24.293684, 20.794121>,  <34.665436, 24.989254, 20.994972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338993, 24.293684, 20.794121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051773, 24.567997, 20.746626>,  <33.879440, 24.732586, 20.718128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051773, 24.567997, 20.746626>,  <34.338993, 24.293684, 20.794121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051773, 24.567997, 20.746626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404108, -0.549710, -0.731106,
		-0.566654, -0.476989, 0.671852,
		-0.718053, 0.685785, -0.118741,
		33.836357, 24.773733, 20.711004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727158, 23.913637, 20.714777>,  <34.338993, 24.293684, 20.794121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727158, 23.913637, 20.714777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632137, 24.265041, 20.548985>,  <33.575127, 24.475883, 20.449509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632137, 24.265041, 20.548985>,  <33.727158, 23.913637, 20.714777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632137, 24.265041, 20.548985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655789, -0.459818, -0.598756,
		-0.716597, 0.129578, 0.685345,
		-0.237549, 0.878509, -0.414480,
		33.560871, 24.528593, 20.424641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998814, 24.417217, 20.864048>,  <33.727158, 23.913637, 20.714777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998814, 24.417217, 20.864048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116146, 24.406927, 20.481781>,  <33.186546, 24.400753, 20.252420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116146, 24.406927, 20.481781>,  <32.998814, 24.417217, 20.864048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116146, 24.406927, 20.481781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793993, -0.563332, -0.228542,
		-0.532478, 0.825830, -0.185667,
		0.293329, -0.025725, -0.955665,
		33.204144, 24.399210, 20.195082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385742, 24.647322, 20.451668>,  <32.998814, 24.417217, 20.864048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385742, 24.647322, 20.451668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.651642, 24.459417, 20.219313>,  <32.811184, 24.346674, 20.079901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.651642, 24.459417, 20.219313>,  <32.385742, 24.647322, 20.451668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651642, 24.459417, 20.219313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741794, -0.507247, -0.438682,
		-0.088577, 0.722513, -0.685659,
		0.664752, -0.469761, -0.580887,
		32.851067, 24.318489, 20.045046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816341, 24.984053, 20.086239>,  <32.385742, 24.647322, 20.451668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816341, 24.984053, 20.086239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477789, 24.851486, 20.252996>,  <31.274656, 24.771946, 20.353050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477789, 24.851486, 20.252996>,  <31.816341, 24.984053, 20.086239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477789, 24.851486, 20.252996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092651, 0.679224, 0.728059,
		-0.524455, 0.654842, -0.544177,
		-0.846382, -0.331415, 0.416894,
		31.223875, 24.752062, 20.378065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532837, 25.659166, 20.380804>,  <31.816341, 24.984053, 20.086239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532837, 25.659166, 20.380804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.336992, 25.363968, 20.566555>,  <31.219486, 25.186850, 20.678005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.336992, 25.363968, 20.566555>,  <31.532837, 25.659166, 20.380804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336992, 25.363968, 20.566555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160794, 0.599863, 0.783779,
		-0.856987, 0.309078, -0.412365,
		-0.489611, -0.737995, 0.464376,
		31.190109, 25.142570, 20.705868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054211, 25.999622, 20.774822>,  <31.532837, 25.659166, 20.380804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054211, 25.999622, 20.774822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046303, 25.648617, 20.966478>,  <31.041557, 25.438013, 21.081472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046303, 25.648617, 20.966478>,  <31.054211, 25.999622, 20.774822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046303, 25.648617, 20.966478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057827, 0.477429, 0.876765,
		-0.998131, 0.045040, 0.041306,
		-0.019769, -0.877515, 0.479141,
		31.040373, 25.385363, 21.110220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618567, 26.125341, 21.392365>,  <31.054211, 25.999622, 20.774822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618567, 26.125341, 21.392365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.850410, 25.809486, 21.472883>,  <30.989517, 25.619972, 21.521194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.850410, 25.809486, 21.472883>,  <30.618567, 26.125341, 21.392365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850410, 25.809486, 21.472883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005425, 0.243280, 0.969941,
		-0.814875, -0.563280, 0.136724,
		0.579611, -0.789639, 0.201298,
		31.024294, 25.572596, 21.533274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352299, 25.866272, 21.926334>,  <30.618567, 26.125341, 21.392365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352299, 25.866272, 21.926334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724243, 25.719189, 21.931288>,  <30.947409, 25.630939, 21.934259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724243, 25.719189, 21.931288>,  <30.352299, 25.866272, 21.926334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724243, 25.719189, 21.931288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092303, 0.265739, 0.959616,
		-0.356149, -0.891165, 0.281040,
		0.929859, -0.367707, 0.012385,
		31.003201, 25.608877, 21.935003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451235, 25.472330, 22.512363>,  <30.352299, 25.866272, 21.926334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451235, 25.472330, 22.512363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823736, 25.577734, 22.411699>,  <31.047237, 25.640976, 22.351301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823736, 25.577734, 22.411699>,  <30.451235, 25.472330, 22.512363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823736, 25.577734, 22.411699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203701, 0.196168, 0.959179,
		0.302122, -0.944500, 0.129005,
		0.931251, 0.263511, -0.251662,
		31.103111, 25.656786, 22.336201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823450, 25.197111, 22.997633>,  <30.451235, 25.472330, 22.512363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823450, 25.197111, 22.997633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085732, 25.466627, 22.861361>,  <31.243099, 25.628336, 22.779596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085732, 25.466627, 22.861361>,  <30.823450, 25.197111, 22.997633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085732, 25.466627, 22.861361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226483, 0.254914, 0.940066,
		0.720250, -0.693562, 0.014547,
		0.655702, 0.673788, -0.340682,
		31.282442, 25.668764, 22.759155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446117, 25.038748, 23.246618>,  <30.823450, 25.197111, 22.997633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446117, 25.038748, 23.246618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459103, 25.429754, 23.163277>,  <31.466894, 25.664358, 23.113272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459103, 25.429754, 23.163277>,  <31.446117, 25.038748, 23.246618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459103, 25.429754, 23.163277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366265, 0.182328, 0.912473,
		0.929944, -0.105933, -0.352111,
		0.032462, 0.977515, -0.208354,
		31.468842, 25.723009, 23.100771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030670, 25.259827, 23.552832>,  <31.446117, 25.038748, 23.246618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030670, 25.259827, 23.552832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863504, 25.615135, 23.476597>,  <31.763206, 25.828321, 23.430857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863504, 25.615135, 23.476597>,  <32.030670, 25.259827, 23.552832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863504, 25.615135, 23.476597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411630, 0.372153, 0.831903,
		0.809883, 0.269210, -0.521167,
		-0.417911, 0.888272, -0.190586,
		31.738131, 25.881617, 23.419420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508682, 25.739523, 23.717239>,  <32.030670, 25.259827, 23.552832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508682, 25.739523, 23.717239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.167725, 25.948214, 23.731291>,  <31.963152, 26.073427, 23.739721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.167725, 25.948214, 23.731291>,  <32.508682, 25.739523, 23.717239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167725, 25.948214, 23.731291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319787, 0.466957, 0.824431,
		0.413724, 0.713970, -0.564871,
		-0.852390, 0.521725, 0.035127,
		31.912008, 26.104731, 23.741829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752514, 26.431852, 23.659136>,  <32.508682, 25.739523, 23.717239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752514, 26.431852, 23.659136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388912, 26.420872, 23.825489>,  <32.170750, 26.414284, 23.925301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388912, 26.420872, 23.825489>,  <32.752514, 26.431852, 23.659136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388912, 26.420872, 23.825489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383453, 0.335928, 0.860300,
		-0.163323, 0.941487, -0.294834,
		-0.909005, -0.027452, 0.415881,
		32.116211, 26.412636, 23.950253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731113, 27.005198, 24.087061>,  <32.752514, 26.431852, 23.659136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731113, 27.005198, 24.087061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.423023, 26.803236, 24.242918>,  <32.238171, 26.682058, 24.336432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.423023, 26.803236, 24.242918>,  <32.731113, 27.005198, 24.087061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423023, 26.803236, 24.242918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248362, 0.325260, 0.912427,
		-0.587424, 0.799548, -0.125125,
		-0.770227, -0.504905, 0.389643,
		32.191956, 26.651764, 24.359812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482136, 27.438482, 24.620661>,  <32.731113, 27.005198, 24.087061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482136, 27.438482, 24.620661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330570, 27.080927, 24.716480>,  <32.239632, 26.866394, 24.773972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330570, 27.080927, 24.716480>,  <32.482136, 27.438482, 24.620661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330570, 27.080927, 24.716480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184232, 0.180805, 0.966110,
		-0.906907, 0.410207, 0.096173,
		-0.378916, -0.893890, 0.239547,
		32.216896, 26.812759, 24.788343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091045, 27.607216, 25.111773>,  <32.482136, 27.438482, 24.620661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091045, 27.607216, 25.111773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152836, 27.213688, 25.148071>,  <32.189911, 26.977571, 25.169849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152836, 27.213688, 25.148071>,  <32.091045, 27.607216, 25.111773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152836, 27.213688, 25.148071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022826, 0.095377, 0.995179,
		-0.987733, -0.151659, 0.037190,
		0.154475, -0.983820, 0.090746,
		32.199177, 26.918541, 25.175295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610529, 27.392817, 25.658375>,  <32.091045, 27.607216, 25.111773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610529, 27.392817, 25.658375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893560, 27.110167, 25.657024>,  <32.063381, 26.940577, 25.656214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893560, 27.110167, 25.657024>,  <31.610529, 27.392817, 25.658375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893560, 27.110167, 25.657024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009788, -0.014580, 0.999846,
		-0.706567, -0.707437, -0.017233,
		0.707579, -0.706626, -0.003378,
		32.105835, 26.898178, 25.656012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336107, 26.872866, 26.139452>,  <31.610529, 27.392817, 25.658375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336107, 26.872866, 26.139452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729635, 26.813023, 26.100029>,  <31.965752, 26.777117, 26.076376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729635, 26.813023, 26.100029>,  <31.336107, 26.872866, 26.139452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729635, 26.813023, 26.100029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100085, 0.002705, 0.994975,
		-0.148592, -0.988741, 0.017635,
		0.983821, -0.149610, -0.098556,
		32.024780, 26.768141, 26.070461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577658, 26.338478, 26.638245>,  <31.336107, 26.872866, 26.139452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577658, 26.338478, 26.638245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911741, 26.532166, 26.533972>,  <32.112190, 26.648378, 26.471409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911741, 26.532166, 26.533972>,  <31.577658, 26.338478, 26.638245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911741, 26.532166, 26.533972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287245, 0.020098, 0.957646,
		0.468949, -0.874716, -0.122303,
		0.835210, 0.484219, -0.260683,
		32.162304, 26.677431, 26.455767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066387, 25.979118, 26.947969>,  <31.577658, 26.338478, 26.638245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066387, 25.979118, 26.947969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250633, 26.323793, 26.862814>,  <32.361183, 26.530600, 26.811720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250633, 26.323793, 26.862814>,  <32.066387, 25.979118, 26.947969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250633, 26.323793, 26.862814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204749, 0.130228, 0.970113,
		0.863660, -0.490441, -0.116445,
		0.460619, 0.861689, -0.212890,
		32.388821, 26.582300, 26.798946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746178, 25.880568, 27.182119>,  <32.066387, 25.979118, 26.947969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746178, 25.880568, 27.182119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689556, 26.275066, 27.147989>,  <32.655582, 26.511766, 27.127512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689556, 26.275066, 27.147989>,  <32.746178, 25.880568, 27.182119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689556, 26.275066, 27.147989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332729, 0.128580, 0.934215,
		0.932338, 0.103853, -0.346354,
		-0.141555, 0.986246, -0.085325,
		32.647091, 26.570940, 27.122393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403702, 26.206835, 27.435497>,  <32.746178, 25.880568, 27.182119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403702, 26.206835, 27.435497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115734, 26.483679, 27.456266>,  <32.942951, 26.649786, 27.468729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115734, 26.483679, 27.456266>,  <33.403702, 26.206835, 27.435497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115734, 26.483679, 27.456266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226724, 0.163805, 0.960086,
		0.655980, 0.702958, -0.274845,
		-0.719921, 0.692111, 0.051925,
		32.899757, 26.691313, 27.471844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.080452, 29.315874, 30.182261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681118, 29.302519, 30.201067>,  <36.441517, 29.294506, 30.212351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681118, 29.302519, 30.201067>,  <37.080452, 29.315874, 30.182261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681118, 29.302519, 30.201067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004804, 0.764340, 0.644796,
		-0.057467, 0.643949, -0.762908,
		-0.998336, -0.033390, 0.047018,
		36.381618, 29.292501, 30.215172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858173, 29.954615, 30.140247>,  <37.080452, 29.315874, 30.182261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858173, 29.954615, 30.140247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.554958, 29.758574, 30.312378>,  <36.373032, 29.640949, 30.415657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.554958, 29.758574, 30.312378>,  <36.858173, 29.954615, 30.140247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554958, 29.758574, 30.312378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025289, 0.637216, 0.770271,
		-0.651723, 0.594775, -0.470638,
		-0.758036, -0.490101, 0.430329,
		36.327549, 29.611544, 30.441477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402275, 30.473909, 30.403957>,  <36.858173, 29.954615, 30.140247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402275, 30.473909, 30.403957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305729, 30.148359, 30.615372>,  <36.247799, 29.953030, 30.742220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305729, 30.148359, 30.615372>,  <36.402275, 30.473909, 30.403957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305729, 30.148359, 30.615372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044279, 0.553308, 0.831799,
		-0.969423, 0.177366, -0.169588,
		-0.241368, -0.813874, 0.528536,
		36.233318, 29.904198, 30.773933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896801, 30.776184, 30.818672>,  <36.402275, 30.473909, 30.403957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896801, 30.776184, 30.818672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996578, 30.426971, 30.986288>,  <36.056442, 30.217443, 31.086857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996578, 30.426971, 30.986288>,  <35.896801, 30.776184, 30.818672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996578, 30.426971, 30.986288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035618, 0.440695, 0.896950,
		-0.967735, -0.208809, 0.141022,
		0.249439, -0.873033, 0.419039,
		36.071411, 30.165062, 31.112000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397358, 30.629971, 31.331268>,  <35.896801, 30.776184, 30.818672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397358, 30.629971, 31.331268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.737022, 30.443352, 31.430265>,  <35.940823, 30.331381, 31.489664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.737022, 30.443352, 31.430265>,  <35.397358, 30.629971, 31.331268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737022, 30.443352, 31.430265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023553, 0.434705, 0.900265,
		-0.527604, -0.770302, 0.358147,
		0.849164, -0.466548, 0.247495,
		35.991772, 30.303387, 31.504515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291122, 30.443663, 32.036198>,  <35.397358, 30.629971, 31.331268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291122, 30.443663, 32.036198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.685707, 30.395557, 31.991611>,  <35.922459, 30.366695, 31.964861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.685707, 30.395557, 31.991611>,  <35.291122, 30.443663, 32.036198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685707, 30.395557, 31.991611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150703, 0.397085, 0.905325,
		-0.064617, -0.909869, 0.409834,
		0.986465, -0.120263, -0.111462,
		35.981647, 30.359478, 31.958174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588894, 29.996639, 32.642464>,  <35.291122, 30.443663, 32.036198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588894, 29.996639, 32.642464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892448, 30.211460, 32.495132>,  <36.074581, 30.340353, 32.406734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892448, 30.211460, 32.495132>,  <35.588894, 29.996639, 32.642464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892448, 30.211460, 32.495132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274659, 0.248875, 0.928775,
		0.590469, -0.806000, 0.041362,
		0.758887, 0.537053, -0.368328,
		36.120113, 30.372576, 32.384636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205822, 29.784353, 33.041443>,  <35.588894, 29.996639, 32.642464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205822, 29.784353, 33.041443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.239292, 30.150057, 32.882885>,  <36.259373, 30.369478, 32.787750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.239292, 30.150057, 32.882885>,  <36.205822, 29.784353, 33.041443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239292, 30.150057, 32.882885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206537, 0.373245, 0.904451,
		0.974855, -0.157549, -0.157598,
		0.083673, 0.914257, -0.396400,
		36.264393, 30.424334, 32.763966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643986, 30.081120, 33.448891>,  <36.205822, 29.784353, 33.041443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643986, 30.081120, 33.448891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526096, 30.404858, 33.245678>,  <36.455360, 30.599100, 33.123753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526096, 30.404858, 33.245678>,  <36.643986, 30.081120, 33.448891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526096, 30.404858, 33.245678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050637, 0.517670, 0.854081,
		0.954239, 0.277445, -0.111588,
		-0.294726, 0.809347, -0.508030,
		36.437679, 30.647661, 33.093269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059391, 30.591167, 33.734112>,  <36.643986, 30.081120, 33.448891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059391, 30.591167, 33.734112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741631, 30.765837, 33.565239>,  <36.550972, 30.870638, 33.463917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741631, 30.765837, 33.565239>,  <37.059391, 30.591167, 33.734112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741631, 30.765837, 33.565239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100755, 0.590707, 0.800571,
		0.598976, 0.678513, -0.425262,
		-0.794403, 0.436675, -0.422183,
		36.503311, 30.896839, 33.438583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062225, 31.348108, 33.876415>,  <37.059391, 30.591167, 33.734112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062225, 31.348108, 33.876415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.680923, 31.252773, 33.802124>,  <36.452141, 31.195572, 33.757549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.680923, 31.252773, 33.802124>,  <37.062225, 31.348108, 33.876415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680923, 31.252773, 33.802124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277714, 0.448861, 0.849352,
		-0.119065, 0.861231, -0.494069,
		-0.953257, -0.238338, -0.185732,
		36.394947, 31.181273, 33.746403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705128, 31.917948, 34.026852>,  <37.062225, 31.348108, 33.876415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705128, 31.917948, 34.026852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414688, 31.648365, 34.081348>,  <36.240425, 31.486616, 34.114048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414688, 31.648365, 34.081348>,  <36.705128, 31.917948, 34.026852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414688, 31.648365, 34.081348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326524, 0.512351, 0.794279,
		-0.605113, 0.532239, -0.592081,
		-0.726099, -0.673957, 0.136242,
		36.196857, 31.446178, 34.122223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070148, 32.311787, 34.200329>,  <36.705128, 31.917948, 34.026852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070148, 32.311787, 34.200329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.017818, 31.942125, 34.343895>,  <35.986420, 31.720327, 34.430035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.017818, 31.942125, 34.343895>,  <36.070148, 32.311787, 34.200329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017818, 31.942125, 34.343895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294883, 0.381911, 0.875893,
		-0.946536, 0.008748, -0.322480,
		-0.130821, -0.924157, 0.358913,
		35.978573, 31.664879, 34.451569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234634, 32.268482, 33.384407>,  <36.070148, 32.311787, 34.200329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234634, 32.268482, 33.384407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.258427, 32.654156, 33.487797>,  <36.272701, 32.885559, 33.549831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.258427, 32.654156, 33.487797>,  <36.234634, 32.268482, 33.384407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258427, 32.654156, 33.487797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599257, 0.241573, -0.763239,
		-0.798344, -0.109491, 0.592164,
		0.059483, 0.964186, 0.258472,
		36.276272, 32.943413, 33.565338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596291, 32.516102, 33.403503>,  <36.234634, 32.268482, 33.384407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596291, 32.516102, 33.403503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.844528, 32.825596, 33.352577>,  <35.993469, 33.011292, 33.322021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.844528, 32.825596, 33.352577>,  <35.596291, 32.516102, 33.403503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844528, 32.825596, 33.352577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571557, 0.335190, -0.748980,
		-0.536834, 0.537577, 0.650246,
		0.620590, 0.773731, -0.127314,
		36.030704, 33.057716, 33.314384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170872, 33.091198, 33.401546>,  <35.596291, 32.516102, 33.403503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170872, 33.091198, 33.401546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.513504, 33.171165, 33.211258>,  <35.719082, 33.219147, 33.097084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.513504, 33.171165, 33.211258>,  <35.170872, 33.091198, 33.401546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513504, 33.171165, 33.211258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509647, 0.183311, -0.840629,
		-0.080849, 0.962513, 0.258906,
		0.856576, 0.199915, -0.475722,
		35.770477, 33.231140, 33.068542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989735, 33.608379, 32.907131>,  <35.170872, 33.091198, 33.401546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989735, 33.608379, 32.907131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342804, 33.481800, 32.768135>,  <35.554646, 33.405853, 32.684738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342804, 33.481800, 32.768135>,  <34.989735, 33.608379, 32.907131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342804, 33.481800, 32.768135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258155, 0.291392, -0.921112,
		0.392744, 0.902745, 0.175509,
		0.882671, -0.316453, -0.347491,
		35.607605, 33.386864, 32.663887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218761, 34.153221, 32.438080>,  <34.989735, 33.608379, 32.907131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218761, 34.153221, 32.438080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364487, 33.792313, 32.345829>,  <35.451920, 33.575768, 32.290478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364487, 33.792313, 32.345829>,  <35.218761, 34.153221, 32.438080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364487, 33.792313, 32.345829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308683, 0.116656, -0.943984,
		0.878631, 0.415096, -0.236016,
		0.364311, -0.902268, -0.230630,
		35.473782, 33.521633, 32.276638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408092, 34.298458, 31.803471>,  <35.218761, 34.153221, 32.438080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408092, 34.298458, 31.803471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.411377, 33.900238, 31.841019>,  <35.413349, 33.661304, 31.863548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.411377, 33.900238, 31.841019>,  <35.408092, 34.298458, 31.803471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411377, 33.900238, 31.841019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344450, -0.090946, -0.934389,
		0.938769, -0.024661, -0.343664,
		0.008212, -0.995550, 0.093872,
		35.413841, 33.601574, 31.869181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680672, 34.114758, 31.194468>,  <35.408092, 34.298458, 31.803471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680672, 34.114758, 31.194468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.506893, 33.784382, 31.338179>,  <35.402626, 33.586155, 31.424404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.506893, 33.784382, 31.338179>,  <35.680672, 34.114758, 31.194468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506893, 33.784382, 31.338179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460471, -0.139146, -0.876701,
		0.774093, -0.546319, -0.319868,
		-0.434450, -0.825938, 0.359276,
		35.376556, 33.536602, 31.445961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955563, 33.541523, 30.756525>,  <35.680672, 34.114758, 31.194468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955563, 33.541523, 30.756525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.604885, 33.443081, 30.921858>,  <35.394478, 33.384014, 31.021057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.604885, 33.443081, 30.921858>,  <35.955563, 33.541523, 30.756525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604885, 33.443081, 30.921858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334906, -0.304540, -0.891680,
		0.345325, -0.920156, 0.184565,
		-0.876692, -0.246108, 0.413331,
		35.341877, 33.369247, 31.045856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772503, 32.912258, 30.470001>,  <35.955563, 33.541523, 30.756525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772503, 32.912258, 30.470001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435619, 33.078854, 30.606951>,  <35.233490, 33.178810, 30.689119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435619, 33.078854, 30.606951>,  <35.772503, 32.912258, 30.470001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435619, 33.078854, 30.606951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467433, -0.247602, -0.848646,
		-0.268682, -0.874773, 0.403215,
		-0.842210, 0.416492, 0.342371,
		35.182957, 33.203800, 30.709663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375618, 32.535938, 30.097570>,  <35.772503, 32.912258, 30.470001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375618, 32.535938, 30.097570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.122925, 32.809666, 30.243237>,  <34.971310, 32.973904, 30.330637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.122925, 32.809666, 30.243237>,  <35.375618, 32.535938, 30.097570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122925, 32.809666, 30.243237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592644, -0.123542, -0.795934,
		-0.499684, -0.718640, 0.483604,
		-0.631735, 0.684321, 0.364165,
		34.933403, 33.014961, 30.352486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620388, 32.165276, 30.360502>,  <35.375618, 32.535938, 30.097570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620388, 32.165276, 30.360502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.582508, 32.547993, 30.250538>,  <34.559780, 32.777622, 30.184559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.582508, 32.547993, 30.250538>,  <34.620388, 32.165276, 30.360502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582508, 32.547993, 30.250538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736908, -0.253044, -0.626846,
		-0.669328, 0.143225, 0.729032,
		-0.094697, 0.956795, -0.274913,
		34.554100, 32.835030, 30.168064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928528, 32.293320, 30.325975>,  <34.620388, 32.165276, 30.360502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928528, 32.293320, 30.325975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.067886, 32.595753, 30.104359>,  <34.151501, 32.777214, 29.971390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.067886, 32.595753, 30.104359>,  <33.928528, 32.293320, 30.325975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067886, 32.595753, 30.104359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727833, -0.154253, -0.668181,
		-0.590663, 0.636038, 0.496561,
		0.348393, 0.756083, -0.554041,
		34.172405, 32.822578, 29.938147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307682, 32.593307, 30.049900>,  <33.928528, 32.293320, 30.325975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307682, 32.593307, 30.049900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.613953, 32.717228, 29.824417>,  <33.797714, 32.791580, 29.689127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.613953, 32.717228, 29.824417>,  <33.307682, 32.593307, 30.049900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613953, 32.717228, 29.824417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524966, -0.205441, -0.825957,
		-0.371687, 0.928343, 0.005332,
		0.765675, 0.309797, -0.563708,
		33.843655, 32.810165, 29.655304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995602, 32.842854, 29.469654>,  <33.307682, 32.593307, 30.049900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995602, 32.842854, 29.469654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.371239, 32.799770, 29.339113>,  <33.596622, 32.773922, 29.260788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.371239, 32.799770, 29.339113>,  <32.995602, 32.842854, 29.469654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371239, 32.799770, 29.339113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342889, -0.357523, -0.868680,
		-0.023118, 0.927673, -0.372677,
		0.939091, -0.107705, -0.326355,
		33.652966, 32.767460, 29.241207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977173, 33.150879, 28.856565>,  <32.995602, 32.842854, 29.469654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977173, 33.150879, 28.856565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.297352, 32.912209, 28.833689>,  <33.489460, 32.769005, 28.819962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.297352, 32.912209, 28.833689>,  <32.977173, 33.150879, 28.856565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297352, 32.912209, 28.833689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300915, -0.317484, -0.899252,
		0.518403, 0.737010, -0.433676,
		0.800443, -0.596675, -0.057193,
		33.537483, 32.733208, 28.816530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713512, 33.592667, 28.384319>,  <32.977173, 33.150879, 28.856565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713512, 33.592667, 28.384319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.323341, 33.675682, 28.354738>,  <32.089237, 33.725491, 28.336988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.323341, 33.675682, 28.354738>,  <32.713512, 33.592667, 28.384319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323341, 33.675682, 28.354738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008919, 0.298202, 0.954461,
		0.220137, 0.931668, -0.289023,
		-0.975428, 0.207535, -0.073955,
		32.030712, 33.737942, 28.332552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573593, 34.151070, 28.863878>,  <32.713512, 33.592667, 28.384319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573593, 34.151070, 28.863878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.197395, 34.026447, 28.809603>,  <31.971678, 33.951675, 28.777037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.197395, 34.026447, 28.809603>,  <32.573593, 34.151070, 28.863878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197395, 34.026447, 28.809603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199032, 0.181381, 0.963061,
		-0.275436, 0.932756, -0.232597,
		-0.940490, -0.311556, -0.135689,
		31.915249, 33.932980, 28.768896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201157, 34.707874, 28.986191>,  <32.573593, 34.151070, 28.863878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201157, 34.707874, 28.986191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.928610, 34.416965, 29.019224>,  <31.765083, 34.242420, 29.039043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.928610, 34.416965, 29.019224>,  <32.201157, 34.707874, 28.986191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928610, 34.416965, 29.019224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346101, 0.419541, 0.839166,
		-0.644948, 0.543195, -0.537569,
		-0.681363, -0.727272, 0.082582,
		31.724201, 34.198784, 29.043999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655346, 34.976521, 29.091599>,  <32.201157, 34.707874, 28.986191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655346, 34.976521, 29.091599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.633364, 34.609413, 29.248917>,  <31.620174, 34.389149, 29.343307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.633364, 34.609413, 29.248917>,  <31.655346, 34.976521, 29.091599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633364, 34.609413, 29.248917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464417, 0.372185, 0.803614,
		-0.883910, -0.138488, -0.446681,
		-0.054957, -0.917768, 0.393294,
		31.616877, 34.334084, 29.366905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968451, 35.001019, 29.534941>,  <31.655346, 34.976521, 29.091599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968451, 35.001019, 29.534941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.160942, 34.671505, 29.654812>,  <31.276436, 34.473797, 29.726734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.160942, 34.671505, 29.654812>,  <30.968451, 35.001019, 29.534941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160942, 34.671505, 29.654812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368715, 0.119935, 0.921773,
		-0.795280, -0.554078, -0.246024,
		0.481227, -0.823780, 0.299679,
		31.305309, 34.424370, 29.744715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484386, 34.733337, 30.019794>,  <30.968451, 35.001019, 29.534941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484386, 34.733337, 30.019794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.839878, 34.570419, 30.103952>,  <31.053173, 34.472668, 30.154448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.839878, 34.570419, 30.103952>,  <30.484386, 34.733337, 30.019794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839878, 34.570419, 30.103952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263772, -0.078965, 0.961347,
		-0.374942, -0.909875, -0.177612,
		0.888731, -0.407299, 0.210392,
		31.106497, 34.448231, 30.167070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257280, 34.295166, 30.452980>,  <30.484386, 34.733337, 30.019794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257280, 34.295166, 30.452980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650387, 34.309181, 30.525578>,  <30.886251, 34.317593, 30.569136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650387, 34.309181, 30.525578>,  <30.257280, 34.295166, 30.452980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650387, 34.309181, 30.525578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170483, -0.207636, 0.963236,
		0.071438, -0.977578, -0.198084,
		0.982768, 0.035042, 0.181493,
		30.945217, 34.319695, 30.580025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429344, 33.777714, 30.905415>,  <30.257280, 34.295166, 30.452980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429344, 33.777714, 30.905415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.729155, 34.031982, 30.979305>,  <30.909040, 34.184544, 31.023640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.729155, 34.031982, 30.979305>,  <30.429344, 33.777714, 30.905415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729155, 34.031982, 30.979305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040792, -0.234171, 0.971339,
		0.660715, -0.735581, -0.149587,
		0.749528, 0.635676, 0.184726,
		30.954014, 34.222687, 31.034723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814898, 33.512089, 31.484713>,  <30.429344, 33.777714, 30.905415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814898, 33.512089, 31.484713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.947880, 33.888981, 31.501047>,  <31.027668, 34.115116, 31.510847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.947880, 33.888981, 31.501047>,  <30.814898, 33.512089, 31.484713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947880, 33.888981, 31.501047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123935, 0.000723, 0.992290,
		0.934941, -0.334952, 0.117016,
		0.332455, 0.942235, 0.040836,
		31.047617, 34.171650, 31.513298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269442, 33.532089, 31.998796>,  <30.814898, 33.512089, 31.484713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269442, 33.532089, 31.998796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.147806, 33.911289, 31.961199>,  <31.074825, 34.138809, 31.938641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.147806, 33.911289, 31.961199>,  <31.269442, 33.532089, 31.998796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147806, 33.911289, 31.961199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152488, 0.048956, 0.987092,
		0.940361, 0.314494, 0.129671,
		-0.304086, 0.947996, -0.093993,
		31.056580, 34.195686, 31.933001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554342, 33.933739, 32.516800>,  <31.269442, 33.532089, 31.998796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554342, 33.933739, 32.516800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.242062, 34.156460, 32.403328>,  <31.054693, 34.290092, 32.335243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.242062, 34.156460, 32.403328>,  <31.554342, 33.933739, 32.516800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242062, 34.156460, 32.403328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251077, 0.136219, 0.958334,
		0.572245, 0.819400, 0.033453,
		-0.780703, 0.556801, -0.283683,
		31.007851, 34.323502, 32.318222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936214, 34.582676, 32.788078>,  <31.554342, 33.933739, 32.516800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936214, 34.582676, 32.788078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.275032, 34.748085, 32.921658>,  <32.478321, 34.847332, 33.001804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.275032, 34.748085, 32.921658>,  <31.936214, 34.582676, 32.788078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275032, 34.748085, 32.921658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401805, 0.909452, -0.107001,
		-0.347955, -0.043546, 0.936499,
		0.847042, 0.413521, 0.333946,
		32.529144, 34.872143, 33.021843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.999146, 33.311188, 24.383410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705975, 33.105671, 24.561773>,  <31.530071, 32.982361, 24.668793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705975, 33.105671, 24.561773>,  <31.999146, 33.311188, 24.383410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705975, 33.105671, 24.561773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000036, 0.655427, 0.755258,
		-0.680307, 0.553565, -0.480362,
		-0.732927, -0.513790, 0.445911,
		31.486095, 32.951534, 24.695547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384375, 33.696842, 24.558517>,  <31.999146, 33.311188, 24.383410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384375, 33.696842, 24.558517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373558, 33.407959, 24.834978>,  <31.367067, 33.234631, 25.000854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373558, 33.407959, 24.834978>,  <31.384375, 33.696842, 24.558517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373558, 33.407959, 24.834978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179539, 0.683669, 0.707363,
		-0.983379, -0.104961, -0.148151,
		-0.027041, -0.722205, 0.691150,
		31.365446, 33.191299, 25.042324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022390, 34.024731, 25.038401>,  <31.384375, 33.696842, 24.558517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022390, 34.024731, 25.038401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162815, 33.704643, 25.232883>,  <31.247070, 33.512589, 25.349573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162815, 33.704643, 25.232883>,  <31.022390, 34.024731, 25.038401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162815, 33.704643, 25.232883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112362, 0.479504, 0.870316,
		-0.929586, -0.360168, 0.078422,
		0.351063, -0.800222, 0.486209,
		31.268135, 33.464577, 25.378746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554672, 33.810875, 25.657362>,  <31.022390, 34.024731, 25.038401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554672, 33.810875, 25.657362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909834, 33.652122, 25.750414>,  <31.122931, 33.556873, 25.806246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909834, 33.652122, 25.750414>,  <30.554672, 33.810875, 25.657362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909834, 33.652122, 25.750414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021184, 0.469873, 0.882480,
		-0.459543, -0.788485, 0.408794,
		0.887903, -0.396877, 0.232630,
		31.176205, 33.533058, 25.820202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567541, 33.532909, 26.232256>,  <30.554672, 33.810875, 25.657362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567541, 33.532909, 26.232256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967365, 33.531319, 26.243988>,  <31.207260, 33.530365, 26.251028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967365, 33.531319, 26.243988>,  <30.567541, 33.532909, 26.232256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967365, 33.531319, 26.243988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028047, 0.189357, 0.981508,
		-0.009459, -0.981900, 0.189163,
		0.999562, -0.003979, 0.029331,
		31.267233, 33.530125, 26.252787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785696, 33.058830, 26.791336>,  <30.567541, 33.532909, 26.232256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785696, 33.058830, 26.791336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115070, 33.276836, 26.728205>,  <31.312695, 33.407639, 26.690327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115070, 33.276836, 26.728205>,  <30.785696, 33.058830, 26.791336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115070, 33.276836, 26.728205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172911, 0.023894, 0.984648,
		0.540420, -0.838085, -0.074564,
		0.823437, 0.545017, -0.157826,
		31.362101, 33.440342, 26.680857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186800, 32.827023, 27.288366>,  <30.785696, 33.058830, 26.791336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186800, 32.827023, 27.288366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393696, 33.153938, 27.186779>,  <31.517834, 33.350086, 27.125826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393696, 33.153938, 27.186779>,  <31.186800, 32.827023, 27.288366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393696, 33.153938, 27.186779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371559, 0.052882, 0.926902,
		0.770977, -0.573797, -0.276318,
		0.517241, 0.817288, -0.253970,
		31.548868, 33.399124, 27.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879261, 32.694061, 27.459414>,  <31.186800, 32.827023, 27.288366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879261, 32.694061, 27.459414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814226, 33.088665, 27.467062>,  <31.775206, 33.325428, 27.471651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814226, 33.088665, 27.467062>,  <31.879261, 32.694061, 27.459414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814226, 33.088665, 27.467062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223236, 0.017899, 0.974600,
		0.961110, 0.162725, -0.223134,
		-0.162586, 0.986509, 0.019123,
		31.765451, 33.384617, 27.472799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412117, 33.059132, 27.913561>,  <31.879261, 32.694061, 27.459414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412117, 33.059132, 27.913561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112072, 33.323368, 27.901228>,  <31.932045, 33.481911, 27.893829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112072, 33.323368, 27.901228>,  <32.412117, 33.059132, 27.913561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112072, 33.323368, 27.901228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136580, 0.200370, 0.970153,
		0.647049, 0.723517, -0.240524,
		-0.750116, 0.660587, -0.030831,
		31.887037, 33.521545, 27.891979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214512, 33.129921, 28.163647>,  <32.412117, 33.059132, 27.913561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214512, 33.129921, 28.163647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393383, 32.814754, 28.332987>,  <33.500706, 32.625656, 28.434591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393383, 32.814754, 28.332987>,  <33.214512, 33.129921, 28.163647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393383, 32.814754, 28.332987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398409, -0.599222, -0.694408,
		0.800815, 0.141856, -0.581870,
		0.447175, -0.787915, 0.423350,
		33.527534, 32.578381, 28.459991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528305, 32.826988, 27.573978>,  <33.214512, 33.129921, 28.163647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528305, 32.826988, 27.573978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546341, 32.533039, 27.844660>,  <33.557163, 32.356670, 28.007069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546341, 32.533039, 27.844660>,  <33.528305, 32.826988, 27.573978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546341, 32.533039, 27.844660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179975, -0.672286, -0.718082,
		0.982637, -0.089413, -0.162571,
		0.045088, -0.734873, 0.676705,
		33.559868, 32.312576, 28.047672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995235, 32.290150, 27.355783>,  <33.528305, 32.826988, 27.573978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995235, 32.290150, 27.355783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747166, 32.104462, 27.608730>,  <33.598324, 31.993048, 27.760498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747166, 32.104462, 27.608730>,  <33.995235, 32.290150, 27.355783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747166, 32.104462, 27.608730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076731, -0.766346, -0.637829,
		0.780705, -0.444085, 0.439645,
		-0.620171, -0.464222, 0.632366,
		33.561115, 31.965195, 27.798439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240822, 31.594555, 27.515598>,  <33.995235, 32.290150, 27.355783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240822, 31.594555, 27.515598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849812, 31.565701, 27.594837>,  <33.615204, 31.548388, 27.642380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849812, 31.565701, 27.594837>,  <34.240822, 31.594555, 27.515598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849812, 31.565701, 27.594837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045464, -0.845393, -0.532207,
		0.205861, -0.529251, 0.823112,
		-0.977524, -0.072138, 0.198095,
		33.556553, 31.544060, 27.654266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201958, 30.945126, 27.662497>,  <34.240822, 31.594555, 27.515598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201958, 30.945126, 27.662497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828632, 31.062763, 27.580095>,  <33.604637, 31.133347, 27.530655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828632, 31.062763, 27.580095>,  <34.201958, 30.945126, 27.662497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828632, 31.062763, 27.580095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143587, -0.831536, -0.536592,
		-0.329107, -0.471229, 0.818311,
		-0.933312, 0.294095, -0.206002,
		33.548637, 31.150991, 27.518295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825817, 30.382145, 27.732237>,  <34.201958, 30.945126, 27.662497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825817, 30.382145, 27.732237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621319, 30.633060, 27.497244>,  <33.498619, 30.783609, 27.356247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621319, 30.633060, 27.497244>,  <33.825817, 30.382145, 27.732237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621319, 30.633060, 27.497244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234696, -0.759488, -0.606709,
		-0.826770, -0.172295, 0.535505,
		-0.511242, 0.627290, -0.587485,
		33.467945, 30.821247, 27.320999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122349, 30.053152, 27.554594>,  <33.825817, 30.382145, 27.732237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122349, 30.053152, 27.554594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171951, 30.326382, 27.266695>,  <33.201714, 30.490320, 27.093956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171951, 30.326382, 27.266695>,  <33.122349, 30.053152, 27.554594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171951, 30.326382, 27.266695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076589, -0.716591, -0.693276,
		-0.989322, 0.141093, -0.036544,
		0.124003, 0.683074, -0.719745,
		33.209152, 30.531303, 27.050772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720055, 29.860203, 27.037022>,  <33.122349, 30.053152, 27.554594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720055, 29.860203, 27.037022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948242, 30.123636, 26.840723>,  <33.085155, 30.281696, 26.722944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948242, 30.123636, 26.840723>,  <32.720055, 29.860203, 27.037022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948242, 30.123636, 26.840723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145333, -0.507137, -0.849524,
		-0.808356, 0.555951, -0.193594,
		0.570472, 0.658582, -0.490745,
		33.119385, 30.321211, 26.693499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391624, 29.974319, 26.413826>,  <32.720055, 29.860203, 27.037022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391624, 29.974319, 26.413826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763790, 30.089970, 26.323725>,  <32.987087, 30.159361, 26.269663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763790, 30.089970, 26.323725>,  <32.391624, 29.974319, 26.413826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763790, 30.089970, 26.323725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128449, -0.318384, -0.939219,
		-0.343271, 0.902794, -0.259090,
		0.930412, 0.289127, -0.225255,
		33.042915, 30.176708, 26.256147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370464, 30.390772, 25.769258>,  <32.391624, 29.974319, 26.413826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370464, 30.390772, 25.769258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762192, 30.314732, 25.796953>,  <32.997231, 30.269108, 25.813570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762192, 30.314732, 25.796953>,  <32.370464, 30.390772, 25.769258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762192, 30.314732, 25.796953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030236, -0.200863, -0.979153,
		0.200044, 0.960997, -0.190961,
		0.979320, -0.190100, 0.069238,
		33.055988, 30.257702, 25.817724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628792, 30.779037, 25.207352>,  <32.370464, 30.390772, 25.769258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628792, 30.779037, 25.207352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886299, 30.495747, 25.323267>,  <33.040802, 30.325773, 25.392817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886299, 30.495747, 25.323267>,  <32.628792, 30.779037, 25.207352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886299, 30.495747, 25.323267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036004, -0.350248, -0.935965,
		0.764372, 0.612979, -0.199980,
		0.643769, -0.708226, 0.289789,
		33.079430, 30.283279, 25.410204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287319, 30.816929, 24.885679>,  <32.628792, 30.779037, 25.207352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287319, 30.816929, 24.885679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243099, 30.433344, 24.990120>,  <33.216568, 30.203194, 25.052784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243099, 30.433344, 24.990120>,  <33.287319, 30.816929, 24.885679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243099, 30.433344, 24.990120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229704, -0.280252, -0.932038,
		0.966962, -0.043057, 0.251257,
		-0.110546, -0.958960, 0.261103,
		33.209934, 30.145657, 25.068451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679443, 30.614071, 24.385107>,  <33.287319, 30.816929, 24.885679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679443, 30.614071, 24.385107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513268, 30.293453, 24.557125>,  <33.413563, 30.101084, 24.660336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513268, 30.293453, 24.557125>,  <33.679443, 30.614071, 24.385107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513268, 30.293453, 24.557125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188602, -0.538405, -0.821310,
		0.889855, -0.260095, 0.374846,
		-0.415437, -0.801543, 0.430047,
		33.388638, 30.052990, 24.686140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124908, 30.063406, 24.335934>,  <33.679443, 30.614071, 24.385107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124908, 30.063406, 24.335934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772182, 29.885139, 24.397612>,  <33.560547, 29.778179, 24.434618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772182, 29.885139, 24.397612>,  <34.124908, 30.063406, 24.335934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772182, 29.885139, 24.397612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120037, -0.528322, -0.840516,
		0.456055, -0.722674, 0.519381,
		-0.881819, -0.445667, 0.154197,
		33.507637, 29.751440, 24.443871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.638668, 28.182867, 26.247219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.973366, 28.322535, 26.078487>,  <29.174185, 28.406336, 25.977247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.973366, 28.322535, 26.078487>,  <28.638668, 28.182867, 26.247219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973366, 28.322535, 26.078487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373182, 0.200145, 0.905913,
		0.400745, -0.915435, 0.037165,
		0.836743, 0.349171, -0.421831,
		29.224388, 28.427286, 25.951939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209204, 27.881252, 26.632641>,  <28.638668, 28.182867, 26.247219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209204, 27.881252, 26.632641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.367476, 28.201601, 26.452845>,  <29.462439, 28.393810, 26.344967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.367476, 28.201601, 26.452845>,  <29.209204, 27.881252, 26.632641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367476, 28.201601, 26.452845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447346, 0.259371, 0.855925,
		0.802073, -0.539748, -0.255639,
		0.395679, 0.800873, -0.449489,
		29.486179, 28.441862, 26.317999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913908, 27.875175, 26.889889>,  <29.209204, 27.881252, 26.632641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913908, 27.875175, 26.889889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854465, 28.242582, 26.743330>,  <29.818800, 28.463026, 26.655396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854465, 28.242582, 26.743330>,  <29.913908, 27.875175, 26.889889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854465, 28.242582, 26.743330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466023, 0.391835, 0.793277,
		0.872204, -0.052863, -0.486278,
		-0.148605, 0.918515, -0.366396,
		29.809883, 28.518137, 26.633411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599783, 28.162136, 26.875593>,  <29.913908, 27.875175, 26.889889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599783, 28.162136, 26.875593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.336567, 28.462872, 26.892202>,  <30.178638, 28.643312, 26.902168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.336567, 28.462872, 26.892202>,  <30.599783, 28.162136, 26.875593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336567, 28.462872, 26.892202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562931, 0.454576, 0.690268,
		0.500095, 0.477597, -0.722362,
		-0.658038, 0.751839, 0.041523,
		30.139156, 28.688423, 26.904659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985739, 28.761055, 26.810551>,  <30.599783, 28.162136, 26.875593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985739, 28.761055, 26.810551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.648754, 28.877291, 26.992018>,  <30.446564, 28.947031, 27.100897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.648754, 28.877291, 26.992018>,  <30.985739, 28.761055, 26.810551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648754, 28.877291, 26.992018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538737, 0.447855, 0.713575,
		0.004179, 0.845568, -0.533852,
		-0.842464, 0.290588, 0.453667,
		30.396015, 28.964468, 27.128119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261545, 29.426744, 27.224634>,  <30.985739, 28.761055, 26.810551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261545, 29.426744, 27.224634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.917242, 29.306543, 27.388973>,  <30.710661, 29.234423, 27.487577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.917242, 29.306543, 27.388973>,  <31.261545, 29.426744, 27.224634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917242, 29.306543, 27.388973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236402, 0.478811, 0.845490,
		-0.450790, 0.824887, -0.341101,
		-0.860757, -0.300502, 0.410848,
		30.659016, 29.216393, 27.512228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891340, 30.059507, 27.475451>,  <31.261545, 29.426744, 27.224634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891340, 30.059507, 27.475451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.778599, 29.724962, 27.663517>,  <30.710955, 29.524235, 27.776356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.778599, 29.724962, 27.663517>,  <30.891340, 30.059507, 27.475451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778599, 29.724962, 27.663517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130324, 0.452118, 0.882386,
		-0.950565, 0.309978, -0.018433,
		-0.281854, -0.836363, 0.470165,
		30.694042, 29.474052, 27.804567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771910, 30.313959, 28.141756>,  <30.891340, 30.059507, 27.475451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771910, 30.313959, 28.141756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.735291, 29.920816, 28.205776>,  <30.713320, 29.684931, 28.244188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.735291, 29.920816, 28.205776>,  <30.771910, 30.313959, 28.141756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735291, 29.920816, 28.205776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162064, 0.143877, 0.976235,
		-0.982525, 0.115309, 0.146114,
		-0.091546, -0.982855, 0.160050,
		30.707827, 29.625959, 28.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262411, 30.206627, 28.656790>,  <30.771910, 30.313959, 28.141756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262411, 30.206627, 28.656790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.509521, 29.892139, 28.662630>,  <30.657787, 29.703447, 28.666134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.509521, 29.892139, 28.662630>,  <30.262411, 30.206627, 28.656790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509521, 29.892139, 28.662630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020908, 0.002138, 0.999779,
		-0.786075, -0.617947, -0.015118,
		0.617778, -0.786217, 0.014600,
		30.694855, 29.656275, 28.667009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023964, 29.858995, 29.286207>,  <30.262411, 30.206627, 28.656790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023964, 29.858995, 29.286207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371923, 29.690451, 29.183659>,  <30.580700, 29.589323, 29.122129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371923, 29.690451, 29.183659>,  <30.023964, 29.858995, 29.286207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371923, 29.690451, 29.183659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209135, -0.155641, 0.965421,
		-0.446694, -0.893437, -0.047270,
		0.869901, -0.421362, -0.256373,
		30.632895, 29.564043, 29.106747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944454, 29.221651, 29.614004>,  <30.023964, 29.858995, 29.286207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944454, 29.221651, 29.614004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.334663, 29.277468, 29.546028>,  <30.568789, 29.310957, 29.505241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.334663, 29.277468, 29.546028>,  <29.944454, 29.221651, 29.614004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334663, 29.277468, 29.546028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161015, 0.073030, 0.984246,
		0.149755, -0.987520, 0.048774,
		0.975524, 0.139543, -0.169942,
		30.627321, 29.319330, 29.495045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125151, 28.827772, 30.127813>,  <29.944454, 29.221651, 29.614004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125151, 28.827772, 30.127813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410938, 29.095039, 30.044786>,  <30.582411, 29.255400, 29.994970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410938, 29.095039, 30.044786>,  <30.125151, 28.827772, 30.127813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410938, 29.095039, 30.044786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082027, 0.214630, 0.973245,
		0.694840, -0.712381, 0.098539,
		0.714471, 0.668167, -0.207568,
		30.625280, 29.295490, 29.982515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599575, 28.645760, 30.564325>,  <30.125151, 28.827772, 30.127813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599575, 28.645760, 30.564325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.681614, 29.025278, 30.468222>,  <30.730837, 29.252989, 30.410561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.681614, 29.025278, 30.468222>,  <30.599575, 28.645760, 30.564325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681614, 29.025278, 30.468222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188322, 0.202634, 0.960976,
		0.960453, -0.242339, -0.137119,
		0.205097, 0.948795, -0.240258,
		30.743143, 29.309917, 30.396145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087261, 28.754929, 31.083370>,  <30.599575, 28.645760, 30.564325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087261, 28.754929, 31.083370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.996780, 29.119329, 30.945440>,  <30.942492, 29.337971, 30.862682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.996780, 29.119329, 30.945440>,  <31.087261, 28.754929, 31.083370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996780, 29.119329, 30.945440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159004, 0.383784, 0.909630,
		0.961015, 0.150932, -0.231667,
		-0.226203, 0.911005, -0.344823,
		30.928919, 29.392632, 30.841993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879833, 28.875118, 30.915848>,  <31.087261, 28.754929, 31.083370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879833, 28.875118, 30.915848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.185318, 28.636606, 31.014797>,  <32.368610, 28.493500, 31.074167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.185318, 28.636606, 31.014797>,  <31.879833, 28.875118, 30.915848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185318, 28.636606, 31.014797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053448, -0.440281, -0.896268,
		0.643340, 0.671270, -0.368119,
		0.763713, -0.596280, 0.247372,
		32.414433, 28.457722, 31.089008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268562, 28.802870, 30.316500>,  <31.879833, 28.875118, 30.915848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268562, 28.802870, 30.316500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.365196, 28.481604, 30.534328>,  <32.423176, 28.288843, 30.665026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.365196, 28.481604, 30.534328>,  <32.268562, 28.802870, 30.316500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365196, 28.481604, 30.534328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168997, -0.587443, -0.791423,
		0.955550, 0.099169, -0.277652,
		0.241589, -0.803167, 0.544572,
		32.437672, 28.240654, 30.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921947, 28.655285, 30.143805>,  <32.268562, 28.802870, 30.316500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921947, 28.655285, 30.143805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763485, 28.319225, 30.291969>,  <32.668407, 28.117590, 30.380867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.763485, 28.319225, 30.291969>,  <32.921947, 28.655285, 30.143805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763485, 28.319225, 30.291969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324310, -0.505450, -0.799590,
		0.859000, -0.196637, 0.472708,
		-0.396160, -0.840151, 0.370410,
		32.644638, 28.067181, 30.403091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423935, 28.122486, 29.942692>,  <32.921947, 28.655285, 30.143805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423935, 28.122486, 29.942692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088005, 27.927727, 30.038713>,  <32.886448, 27.810871, 30.096327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088005, 27.927727, 30.038713>,  <33.423935, 28.122486, 29.942692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088005, 27.927727, 30.038713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102365, -0.576309, -0.810796,
		0.533120, -0.656352, 0.533839,
		-0.839824, -0.486898, 0.240054,
		32.836060, 27.781658, 30.110729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602455, 27.367247, 29.926432>,  <33.423935, 28.122486, 29.942692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602455, 27.367247, 29.926432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.209797, 27.424839, 29.876394>,  <32.974201, 27.459394, 29.846373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.209797, 27.424839, 29.876394>,  <33.602455, 27.367247, 29.926432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209797, 27.424839, 29.876394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024190, -0.556573, -0.830446,
		-0.189192, -0.818227, 0.542873,
		-0.981642, 0.143982, -0.125093,
		32.915306, 27.468033, 29.838867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370552, 26.760185, 29.684851>,  <33.602455, 27.367247, 29.926432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370552, 26.760185, 29.684851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.067829, 27.005865, 29.595411>,  <32.886196, 27.153273, 29.541748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.067829, 27.005865, 29.595411>,  <33.370552, 26.760185, 29.684851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067829, 27.005865, 29.595411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047242, -0.392592, -0.918499,
		-0.651927, -0.684564, 0.326133,
		-0.756809, 0.614201, -0.223601,
		32.840786, 27.190125, 29.528332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920841, 26.364079, 29.324249>,  <33.370552, 26.760185, 29.684851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920841, 26.364079, 29.324249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.835495, 26.741695, 29.223644>,  <32.784286, 26.968266, 29.163282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.835495, 26.741695, 29.223644>,  <32.920841, 26.364079, 29.324249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835495, 26.741695, 29.223644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051918, -0.268032, -0.962010,
		-0.975591, -0.192205, 0.106203,
		-0.213369, 0.944042, -0.251511,
		32.771484, 27.024908, 29.148191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362675, 26.298439, 28.923111>,  <32.920841, 26.364079, 29.324249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362675, 26.298439, 28.923111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.507591, 26.656021, 28.817591>,  <32.594540, 26.870571, 28.754278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.507591, 26.656021, 28.817591>,  <32.362675, 26.298439, 28.923111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507591, 26.656021, 28.817591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140503, -0.227416, -0.963609,
		-0.921415, 0.386169, 0.043213,
		0.362288, 0.893955, -0.263802,
		32.616280, 26.924208, 28.738449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910387, 26.505291, 28.389690>,  <32.362675, 26.298439, 28.923111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910387, 26.505291, 28.389690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.235622, 26.734640, 28.349436>,  <32.430763, 26.872250, 28.325283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.235622, 26.734640, 28.349436>,  <31.910387, 26.505291, 28.389690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235622, 26.734640, 28.349436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084363, -0.054987, -0.994917,
		-0.575993, 0.817447, 0.003662,
		0.813090, 0.573374, -0.100635,
		32.479549, 26.906652, 28.319246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788263, 27.123987, 27.938246>,  <31.910387, 26.505291, 28.389690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788263, 27.123987, 27.938246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.185471, 27.099424, 27.897959>,  <32.423794, 27.084686, 27.873787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.185471, 27.099424, 27.897959>,  <31.788263, 27.123987, 27.938246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185471, 27.099424, 27.897959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104210, -0.056593, -0.992944,
		0.055275, 0.996507, -0.062597,
		0.993018, -0.061408, -0.100718,
		32.483376, 27.081001, 27.867743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001511, 27.650024, 27.451530>,  <31.788263, 27.123987, 27.938246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001511, 27.650024, 27.451530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.266430, 27.350695, 27.466372>,  <32.425381, 27.171097, 27.475277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.266430, 27.350695, 27.466372>,  <32.001511, 27.650024, 27.451530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266430, 27.350695, 27.466372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101944, -0.139064, -0.985022,
		0.742274, 0.648594, -0.168389,
		0.662297, -0.748322, 0.037104,
		32.465118, 27.126198, 27.477503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494289, 27.853580, 26.946257>,  <32.001511, 27.650024, 27.451530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494289, 27.853580, 26.946257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519173, 27.458227, 27.001720>,  <32.534103, 27.221016, 27.035000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519173, 27.458227, 27.001720>,  <32.494289, 27.853580, 26.946257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519173, 27.458227, 27.001720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212199, -0.148852, -0.965823,
		0.975244, 0.030663, -0.218995,
		0.062213, -0.988384, 0.138661,
		32.537838, 27.161713, 27.043318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921520, 27.666571, 26.409033>,  <32.494289, 27.853580, 26.946257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921520, 27.666571, 26.409033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781746, 27.311951, 26.530310>,  <32.697880, 27.099178, 26.603075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781746, 27.311951, 26.530310>,  <32.921520, 27.666571, 26.409033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781746, 27.311951, 26.530310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148000, -0.267300, -0.952180,
		0.925196, -0.377602, -0.037804,
		-0.349440, -0.886548, 0.303190,
		32.676914, 27.045986, 26.621267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337139, 27.090935, 26.116951>,  <32.921520, 27.666571, 26.409033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337139, 27.090935, 26.116951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974312, 26.955378, 26.216848>,  <32.756615, 26.874043, 26.276787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974312, 26.955378, 26.216848>,  <33.337139, 27.090935, 26.116951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974312, 26.955378, 26.216848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189163, -0.201872, -0.960971,
		0.376084, -0.918912, 0.119006,
		-0.907071, -0.338894, 0.249745,
		32.702190, 26.853710, 26.291773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975273, 26.829334, 25.818003>,  <33.337139, 27.090935, 26.116951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975273, 26.829334, 25.818003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223866, 27.028162, 25.575783>,  <34.373020, 27.147459, 25.430450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223866, 27.028162, 25.575783>,  <33.975273, 26.829334, 25.818003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223866, 27.028162, 25.575783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534942, 0.295463, 0.791542,
		0.572367, -0.815859, -0.082279,
		0.621477, 0.497067, -0.605550,
		34.410309, 27.177282, 25.394117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683304, 26.607452, 25.895090>,  <33.975273, 26.829334, 25.818003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683304, 26.607452, 25.895090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.678131, 26.990326, 25.779415>,  <34.675030, 27.220051, 25.710011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.678131, 26.990326, 25.779415>,  <34.683304, 26.607452, 25.895090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678131, 26.990326, 25.779415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347007, 0.275533, 0.896475,
		0.937774, -0.088759, -0.335712,
		-0.012930, 0.957185, -0.289188,
		34.674252, 27.277481, 25.692659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289547, 26.899967, 26.114006>,  <34.683304, 26.607452, 25.895090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289547, 26.899967, 26.114006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063217, 27.219910, 26.033934>,  <34.927418, 27.411875, 25.985891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063217, 27.219910, 26.033934>,  <35.289547, 26.899967, 26.114006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063217, 27.219910, 26.033934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360158, 0.458159, 0.812636,
		0.741704, 0.387716, -0.547313,
		-0.565828, 0.799854, -0.200179,
		34.893467, 27.459866, 25.973881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678730, 27.520990, 26.225864>,  <35.289547, 26.899967, 26.114006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678730, 27.520990, 26.225864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321697, 27.699226, 26.198296>,  <35.107479, 27.806168, 26.181755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321697, 27.699226, 26.198296>,  <35.678730, 27.520990, 26.225864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321697, 27.699226, 26.198296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238145, 0.595685, 0.767102,
		0.382869, 0.668287, -0.637812,
		-0.892579, 0.445592, -0.068920,
		35.053925, 27.832905, 26.177620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870632, 28.312561, 26.190914>,  <35.678730, 27.520990, 26.225864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870632, 28.312561, 26.190914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505733, 28.224985, 26.329405>,  <35.286797, 28.172440, 26.412500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505733, 28.224985, 26.329405>,  <35.870632, 28.312561, 26.190914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505733, 28.224985, 26.329405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248097, 0.377263, 0.892256,
		-0.325971, 0.899854, -0.289837,
		-0.912245, -0.218942, 0.346228,
		35.232059, 28.159302, 26.433273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703751, 28.860493, 26.553131>,  <35.870632, 28.312561, 26.190914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703751, 28.860493, 26.553131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444324, 28.591164, 26.695116>,  <35.288670, 28.429565, 26.780308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444324, 28.591164, 26.695116>,  <35.703751, 28.860493, 26.553131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444324, 28.591164, 26.695116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158330, 0.336803, 0.928168,
		-0.744509, 0.658179, -0.111831,
		-0.648565, -0.673323, 0.354963,
		35.249756, 28.389166, 26.801605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191078, 29.245539, 27.009638>,  <35.703751, 28.860493, 26.553131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191078, 29.245539, 27.009638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.225540, 28.863977, 27.124628>,  <35.246220, 28.635040, 27.193623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.225540, 28.863977, 27.124628>,  <35.191078, 29.245539, 27.009638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225540, 28.863977, 27.124628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037274, 0.291432, 0.955865,
		-0.995584, -0.071639, 0.060665,
		0.086157, -0.953905, 0.287475,
		35.251389, 28.577806, 27.210871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769176, 29.149412, 27.515818>,  <35.191078, 29.245539, 27.009638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769176, 29.149412, 27.515818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025635, 28.849867, 27.582907>,  <35.179512, 28.670139, 27.623159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025635, 28.849867, 27.582907>,  <34.769176, 29.149412, 27.515818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025635, 28.849867, 27.582907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090073, 0.290478, 0.952633,
		-0.762112, -0.595673, 0.253692,
		0.641149, -0.748864, 0.167723,
		35.217979, 28.625208, 27.633223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575794, 29.028280, 28.179859>,  <34.769176, 29.149412, 27.515818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575794, 29.028280, 28.179859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930607, 28.852354, 28.123655>,  <35.143494, 28.746798, 28.089933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930607, 28.852354, 28.123655>,  <34.575794, 29.028280, 28.179859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930607, 28.852354, 28.123655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271486, 0.250675, 0.929224,
		-0.373466, -0.862394, 0.341760,
		0.887028, -0.439816, -0.140509,
		35.196716, 28.720409, 28.081503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708908, 28.622511, 28.832281>,  <34.575794, 29.028280, 28.179859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708908, 28.622511, 28.832281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073032, 28.651659, 28.669294>,  <35.291508, 28.669147, 28.571503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073032, 28.651659, 28.669294>,  <34.708908, 28.622511, 28.832281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073032, 28.651659, 28.669294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372172, 0.286798, 0.882743,
		0.181186, -0.955216, 0.233954,
		0.910307, 0.072870, -0.407469,
		35.346123, 28.673521, 28.547054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100094, 28.201767, 29.206322>,  <34.708908, 28.622511, 28.832281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100094, 28.201767, 29.206322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338242, 28.488115, 29.060406>,  <35.481129, 28.659924, 28.972857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338242, 28.488115, 29.060406>,  <35.100094, 28.201767, 29.206322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338242, 28.488115, 29.060406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469841, 0.058099, 0.880837,
		0.651758, -0.695813, -0.301754,
		0.595367, 0.715869, -0.364788,
		35.516853, 28.702875, 28.950970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814522, 27.998487, 29.524538>,  <35.100094, 28.201767, 29.206322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814522, 27.998487, 29.524538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827419, 28.371037, 29.379484>,  <35.835155, 28.594566, 29.292452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827419, 28.371037, 29.379484>,  <35.814522, 27.998487, 29.524538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827419, 28.371037, 29.379484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397363, 0.320974, 0.859697,
		0.917095, -0.171814, -0.359745,
		0.032239, 0.931373, -0.362636,
		35.837090, 28.650448, 29.270693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464016, 28.200344, 29.719456>,  <35.814522, 27.998487, 29.524538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464016, 28.200344, 29.719456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298481, 28.541582, 29.592358>,  <36.199158, 28.746325, 29.516098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298481, 28.541582, 29.592358>,  <36.464016, 28.200344, 29.719456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298481, 28.541582, 29.592358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381336, 0.479390, 0.790423,
		0.826631, 0.205942, -0.523708,
		-0.413841, 0.853096, -0.317745,
		36.174328, 28.797510, 29.497034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967457, 28.691139, 29.711552>,  <36.464016, 28.200344, 29.719456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967457, 28.691139, 29.711552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611763, 28.865980, 29.765530>,  <36.398346, 28.970884, 29.797916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611763, 28.865980, 29.765530>,  <36.967457, 28.691139, 29.711552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611763, 28.865980, 29.765530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359161, 0.484389, 0.797728,
		0.283320, 0.757833, -0.587724,
		-0.889232, 0.437100, 0.134947,
		36.344994, 28.997110, 29.806013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.252472, 29.195724, 24.304281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863605, 29.258656, 24.234829>,  <33.630287, 29.296415, 24.193157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863605, 29.258656, 24.234829>,  <34.252472, 29.195724, 24.304281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863605, 29.258656, 24.234829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036492, -0.630337, -0.775464,
		-0.231449, -0.760213, 0.607048,
		-0.972162, 0.157328, -0.173633,
		33.571957, 29.305855, 24.182739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926296, 28.602076, 24.120737>,  <34.252472, 29.195724, 24.304281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926296, 28.602076, 24.120737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651161, 28.857447, 23.982582>,  <33.486080, 29.010670, 23.899689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651161, 28.857447, 23.982582>,  <33.926296, 28.602076, 24.120737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651161, 28.857447, 23.982582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155051, -0.594076, -0.789325,
		-0.709115, -0.489371, 0.507614,
		-0.687834, 0.638428, -0.345390,
		33.444809, 29.048975, 23.878965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396347, 28.223602, 23.774343>,  <33.926296, 28.602076, 24.120737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396347, 28.223602, 23.774343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365829, 28.592525, 23.622805>,  <33.347519, 28.813879, 23.531881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365829, 28.592525, 23.622805>,  <33.396347, 28.223602, 23.774343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365829, 28.592525, 23.622805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161118, -0.386365, -0.908165,
		-0.983982, -0.008249, 0.178078,
		-0.076295, 0.922309, -0.378847,
		33.342941, 28.869219, 23.509151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832043, 28.112499, 23.438925>,  <33.396347, 28.223602, 23.774343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832043, 28.112499, 23.438925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980671, 28.448685, 23.281164>,  <33.069847, 28.650396, 23.186508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980671, 28.448685, 23.281164>,  <32.832043, 28.112499, 23.438925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980671, 28.448685, 23.281164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070164, -0.398178, -0.914621,
		-0.925748, 0.367522, -0.088982,
		0.371574, 0.840465, -0.394399,
		33.092144, 28.700825, 23.162844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423630, 28.218424, 22.857576>,  <32.832043, 28.112499, 23.438925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423630, 28.218424, 22.857576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 28.428875, 22.807425>,  <32.961941, 28.555145, 22.777334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 28.428875, 22.807425>,  <32.423630, 28.218424, 22.857576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760075, 28.428875, 22.807425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084239, -0.356421, -0.930520,
		-0.534259, 0.772111, -0.344110,
		0.841113, 0.526126, -0.125379,
		33.012409, 28.586714, 22.769812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362282, 28.495626, 22.129204>,  <32.423630, 28.218424, 22.857576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362282, 28.495626, 22.129204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.744488, 28.483444, 22.246555>,  <32.973812, 28.476135, 22.316967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.744488, 28.483444, 22.246555>,  <32.362282, 28.495626, 22.129204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744488, 28.483444, 22.246555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268952, -0.318390, -0.909006,
		0.121091, 0.947470, -0.296035,
		0.955511, -0.030454, 0.293378,
		33.031139, 28.474308, 22.334568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807705, 28.903511, 21.653543>,  <32.362282, 28.495626, 22.129204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807705, 28.903511, 21.653543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.071346, 28.660650, 21.831059>,  <33.229530, 28.514935, 21.937569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.071346, 28.660650, 21.831059>,  <32.807705, 28.903511, 21.653543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071346, 28.660650, 21.831059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477505, -0.118037, -0.870664,
		0.581009, 0.785770, 0.212120,
		0.659104, -0.607152, 0.443789,
		33.269077, 28.478504, 21.964195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341019, 29.151535, 21.387241>,  <32.807705, 28.903511, 21.653543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341019, 29.151535, 21.387241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437412, 28.790443, 21.529795>,  <33.495247, 28.573788, 21.615326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437412, 28.790443, 21.529795>,  <33.341019, 29.151535, 21.387241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437412, 28.790443, 21.529795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399116, -0.242540, -0.884240,
		0.884666, 0.355325, 0.301845,
		0.240983, -0.902728, 0.356383,
		33.509708, 28.519625, 21.636709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886253, 28.989269, 21.000257>,  <33.341019, 29.151535, 21.387241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886253, 28.989269, 21.000257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789417, 28.629969, 21.146975>,  <33.731316, 28.414389, 21.235004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789417, 28.629969, 21.146975>,  <33.886253, 28.989269, 21.000257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789417, 28.629969, 21.146975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286295, -0.427339, -0.857564,
		0.927054, -0.102594, 0.360618,
		-0.242087, -0.898252, 0.366794,
		33.716789, 28.360493, 21.257013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556854, 28.462212, 20.926460>,  <33.886253, 28.989269, 21.000257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556854, 28.462212, 20.926460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226173, 28.241135, 20.968590>,  <34.027763, 28.108488, 20.993868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226173, 28.241135, 20.968590>,  <34.556854, 28.462212, 20.926460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226173, 28.241135, 20.968590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204941, -0.470136, -0.858470,
		0.523988, -0.688114, 0.501932,
		-0.826702, -0.552695, 0.105323,
		33.978165, 28.075327, 21.000187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722244, 27.664434, 20.894812>,  <34.556854, 28.462212, 20.926460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722244, 27.664434, 20.894812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344433, 27.712475, 20.772541>,  <34.117744, 27.741299, 20.699179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344433, 27.712475, 20.772541>,  <34.722244, 27.664434, 20.894812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344433, 27.712475, 20.772541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176635, -0.598896, -0.781104,
		-0.276881, -0.791770, 0.544461,
		-0.944530, 0.120102, -0.305677,
		34.061073, 27.748505, 20.680838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509277, 26.995253, 20.702217>,  <34.722244, 27.664434, 20.894812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509277, 26.995253, 20.702217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221741, 27.225918, 20.546926>,  <34.049217, 27.364317, 20.453753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221741, 27.225918, 20.546926>,  <34.509277, 26.995253, 20.702217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221741, 27.225918, 20.546926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061280, -0.608854, -0.790912,
		-0.692466, -0.544750, 0.473009,
		-0.718843, 0.576666, -0.388228,
		34.006088, 27.398918, 20.430458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187302, 26.595322, 20.268579>,  <34.509277, 26.995253, 20.702217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187302, 26.595322, 20.268579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104519, 26.951284, 20.105982>,  <34.054852, 27.164862, 20.008423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104519, 26.951284, 20.105982>,  <34.187302, 26.595322, 20.268579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104519, 26.951284, 20.105982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097536, -0.432186, -0.896495,
		-0.973477, -0.145884, 0.176240,
		-0.206952, 0.889906, -0.406494,
		34.042435, 27.218256, 19.984034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591793, 26.568140, 19.978092>,  <34.187302, 26.595322, 20.268579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591793, 26.568140, 19.978092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778759, 26.869068, 19.792389>,  <33.890938, 27.049625, 19.680967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778759, 26.869068, 19.792389>,  <33.591793, 26.568140, 19.978092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778759, 26.869068, 19.792389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394494, -0.292470, -0.871112,
		-0.791139, 0.590315, 0.160083,
		0.467411, 0.752322, -0.464260,
		33.918983, 27.094765, 19.653111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331249, 25.806450, 20.043272>,  <33.591793, 26.568140, 19.978092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331249, 25.806450, 20.043272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.366287, 25.425455, 20.159958>,  <33.387310, 25.196857, 20.229969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.366287, 25.425455, 20.159958>,  <33.331249, 25.806450, 20.043272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366287, 25.425455, 20.159958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083871, 0.298850, 0.950607,
		-0.992619, -0.058802, 0.106064,
		0.087594, -0.952487, 0.291712,
		33.392567, 25.139709, 20.247471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929413, 25.697233, 20.646160>,  <33.331249, 25.806450, 20.043272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929413, 25.697233, 20.646160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.186344, 25.391411, 20.667583>,  <33.340504, 25.207918, 20.680437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.186344, 25.391411, 20.667583>,  <32.929413, 25.697233, 20.646160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186344, 25.391411, 20.667583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303465, 0.317875, 0.898256,
		-0.703790, -0.560725, 0.436196,
		0.642331, -0.764554, 0.053556,
		33.379044, 25.162045, 20.683651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750065, 25.293766, 21.154848>,  <32.929413, 25.697233, 20.646160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750065, 25.293766, 21.154848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144581, 25.235950, 21.122972>,  <33.381290, 25.201262, 21.103848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144581, 25.235950, 21.122972>,  <32.750065, 25.293766, 21.154848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144581, 25.235950, 21.122972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095403, 0.105277, 0.989856,
		-0.134681, -0.983883, 0.117622,
		0.986285, -0.144537, -0.079687,
		33.440468, 25.192589, 21.099066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955017, 25.135223, 21.851809>,  <32.750065, 25.293766, 21.154848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955017, 25.135223, 21.851809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293968, 25.220169, 21.657141>,  <33.497341, 25.271137, 21.540340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293968, 25.220169, 21.657141>,  <32.955017, 25.135223, 21.851809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293968, 25.220169, 21.657141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402987, 0.339598, 0.849867,
		0.345727, -0.916289, 0.202204,
		0.847393, 0.212337, -0.486661,
		33.548183, 25.283878, 21.511141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451248, 24.865362, 22.283188>,  <32.955017, 25.135223, 21.851809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451248, 24.865362, 22.283188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625740, 25.161386, 22.078438>,  <33.730434, 25.339001, 21.955587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625740, 25.161386, 22.078438>,  <33.451248, 24.865362, 22.283188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625740, 25.161386, 22.078438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397599, 0.351783, 0.847445,
		0.807228, -0.573203, -0.140788,
		0.436231, 0.740059, -0.511874,
		33.756611, 25.383404, 21.924875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121101, 24.984413, 22.582396>,  <33.451248, 24.865362, 22.283188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121101, 24.984413, 22.582396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066467, 25.324589, 22.379183>,  <34.033688, 25.528694, 22.257256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066467, 25.324589, 22.379183>,  <34.121101, 24.984413, 22.582396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066467, 25.324589, 22.379183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269957, 0.525381, 0.806906,
		0.953136, -0.026939, -0.301340,
		-0.136581, 0.850440, -0.508032,
		34.025494, 25.579721, 22.226772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707603, 25.284939, 22.692932>,  <34.121101, 24.984413, 22.582396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707603, 25.284939, 22.692932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466347, 25.581461, 22.575167>,  <34.321590, 25.759375, 22.504507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466347, 25.581461, 22.575167>,  <34.707603, 25.284939, 22.692932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466347, 25.581461, 22.575167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391154, 0.596572, 0.700786,
		0.695135, 0.307516, -0.649785,
		-0.603146, 0.741307, -0.294412,
		34.285404, 25.803854, 22.486843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084709, 25.881685, 22.702988>,  <34.707603, 25.284939, 22.692932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084709, 25.881685, 22.702988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703350, 25.998917, 22.731655>,  <34.474533, 26.069256, 22.748856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703350, 25.998917, 22.731655>,  <35.084709, 25.881685, 22.702988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703350, 25.998917, 22.731655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231644, 0.558821, 0.796279,
		0.193322, 0.775773, -0.600669,
		-0.953398, 0.293079, 0.071670,
		34.417332, 26.086840, 22.753157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131771, 26.609589, 22.826866>,  <35.084709, 25.881685, 22.702988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131771, 26.609589, 22.826866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779163, 26.473610, 22.957932>,  <34.567600, 26.392023, 23.036572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779163, 26.473610, 22.957932>,  <35.131771, 26.609589, 22.826866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779163, 26.473610, 22.957932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159417, 0.438934, 0.884264,
		-0.444424, 0.831730, -0.332736,
		-0.881518, -0.339945, 0.327665,
		34.514709, 26.371626, 23.056231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865917, 27.230377, 23.035471>,  <35.131771, 26.609589, 22.826866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865917, 27.230377, 23.035471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664204, 26.941851, 23.225376>,  <34.543175, 26.768734, 23.339319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664204, 26.941851, 23.225376>,  <34.865917, 27.230377, 23.035471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664204, 26.941851, 23.225376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013979, 0.556536, 0.830706,
		-0.863427, 0.412271, -0.290733,
		-0.504280, -0.721318, 0.474765,
		34.512920, 26.725454, 23.367805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476215, 27.603724, 23.527834>,  <34.865917, 27.230377, 23.035471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476215, 27.603724, 23.527834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460140, 27.222837, 23.648941>,  <34.450497, 26.994305, 23.721605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460140, 27.222837, 23.648941>,  <34.476215, 27.603724, 23.527834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460140, 27.222837, 23.648941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230252, 0.303681, 0.924533,
		-0.972301, -0.032561, -0.231453,
		-0.040184, -0.952217, 0.302767,
		34.448086, 26.937172, 23.739771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835754, 27.516163, 23.905317>,  <34.476215, 27.603724, 23.527834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835754, 27.516163, 23.905317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059547, 27.209011, 24.030117>,  <34.193821, 27.024721, 24.104998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059547, 27.209011, 24.030117>,  <33.835754, 27.516163, 23.905317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059547, 27.209011, 24.030117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301484, 0.162108, 0.939590,
		-0.772069, -0.619745, -0.140806,
		0.559480, -0.767878, 0.312001,
		34.227390, 26.978647, 24.123718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497147, 27.164007, 24.479689>,  <33.835754, 27.516163, 23.905317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497147, 27.164007, 24.479689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888107, 27.095375, 24.529083>,  <34.122684, 27.054195, 24.558720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888107, 27.095375, 24.529083>,  <33.497147, 27.164007, 24.479689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888107, 27.095375, 24.529083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098351, 0.147985, 0.984087,
		-0.187126, -0.973992, 0.127765,
		0.977400, -0.171583, 0.123485,
		34.181328, 27.043900, 24.566128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607712, 26.811728, 25.133369>,  <33.497147, 27.164007, 24.479689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607712, 26.811728, 25.133369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981544, 26.938736, 25.069199>,  <34.205845, 27.014940, 25.030697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981544, 26.938736, 25.069199>,  <33.607712, 26.811728, 25.133369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981544, 26.938736, 25.069199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057687, 0.309722, 0.949075,
		0.351044, -0.896242, 0.271143,
		0.934580, 0.317525, -0.160428,
		34.261921, 27.033993, 25.021070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325108, 26.468735, 25.786915>,  <33.607712, 26.811728, 25.133369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325108, 26.468735, 25.786915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952061, 26.565012, 25.894459>,  <32.728233, 26.622778, 25.958984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952061, 26.565012, 25.894459>,  <33.325108, 26.468735, 25.786915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952061, 26.565012, 25.894459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307836, -0.141886, -0.940801,
		-0.188302, -0.960173, 0.206421,
		-0.932620, 0.240698, 0.268858,
		32.672276, 26.637220, 25.975117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925655, 25.910709, 25.641899>,  <33.325108, 26.468735, 25.786915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925655, 25.910709, 25.641899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684689, 26.229980, 25.641335>,  <32.540108, 26.421543, 25.640995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684689, 26.229980, 25.641335>,  <32.925655, 25.910709, 25.641899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684689, 26.229980, 25.641335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289102, -0.219844, -0.931713,
		-0.743984, -0.560873, 0.363193,
		-0.602419, 0.798179, -0.001411,
		32.503963, 26.469435, 25.640911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445343, 25.639343, 25.238970>,  <32.925655, 25.910709, 25.641899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445343, 25.639343, 25.238970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339405, 26.025061, 25.239229>,  <32.275845, 26.256491, 25.239384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339405, 26.025061, 25.239229>,  <32.445343, 25.639343, 25.238970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339405, 26.025061, 25.239229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374852, -0.102335, -0.921419,
		-0.888451, -0.244272, 0.388569,
		-0.264841, 0.964292, 0.000647,
		32.259953, 26.314348, 25.239424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672573, 25.698393, 25.153131>,  <32.445343, 25.639343, 25.238970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672573, 25.698393, 25.153131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.854387, 26.028711, 25.019588>,  <31.963476, 26.226902, 24.939463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.854387, 26.028711, 25.019588>,  <31.672573, 25.698393, 25.153131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854387, 26.028711, 25.019588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439158, -0.118327, -0.890583,
		-0.774944, 0.551417, 0.308871,
		0.454535, 0.825796, -0.333856,
		31.990747, 26.276449, 24.919432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253824, 25.893463, 24.726812>,  <31.672573, 25.698393, 25.153131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253824, 25.893463, 24.726812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549522, 26.140223, 24.618773>,  <31.726942, 26.288279, 24.553947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549522, 26.140223, 24.618773>,  <31.253824, 25.893463, 24.726812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549522, 26.140223, 24.618773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349732, 0.008924, -0.936807,
		-0.575503, 0.786993, 0.222346,
		0.739245, 0.616897, -0.270101,
		31.771296, 26.325291, 24.537743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892296, 26.464291, 24.381624>,  <31.253824, 25.893463, 24.726812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892296, 26.464291, 24.381624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264751, 26.426350, 24.240780>,  <31.488226, 26.403585, 24.156273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264751, 26.426350, 24.240780>,  <30.892296, 26.464291, 24.381624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264751, 26.426350, 24.240780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353422, 0.003145, -0.935459,
		0.089840, 0.995486, -0.030595,
		0.931140, -0.094855, -0.352109,
		31.544094, 26.397894, 24.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921041, 26.954914, 23.769581>,  <30.892296, 26.464291, 24.381624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921041, 26.954914, 23.769581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.204124, 26.672546, 23.758041>,  <31.373974, 26.503126, 23.751118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.204124, 26.672546, 23.758041>,  <30.921041, 26.954914, 23.769581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204124, 26.672546, 23.758041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199028, -0.160020, -0.966841,
		0.677894, 0.689981, -0.253745,
		0.707706, -0.705918, -0.028849,
		31.416437, 26.460772, 23.749386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535696, 27.459412, 23.404343>,  <30.921041, 26.954914, 23.769581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535696, 27.459412, 23.404343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162083, 27.591824, 23.350674>,  <29.937916, 27.671270, 23.318472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162083, 27.591824, 23.350674>,  <30.535696, 27.459412, 23.404343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162083, 27.591824, 23.350674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059393, 0.226463, 0.972207,
		0.352216, 0.916042, -0.191863,
		-0.934032, 0.331032, -0.134170,
		29.881872, 27.691133, 23.310423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481779, 28.185665, 23.567764>,  <30.535696, 27.459412, 23.404343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481779, 28.185665, 23.567764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.121277, 28.017641, 23.610268>,  <29.904976, 27.916826, 23.635769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.121277, 28.017641, 23.610268>,  <30.481779, 28.185665, 23.567764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121277, 28.017641, 23.610268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081167, 0.404563, 0.910901,
		-0.425622, 0.812328, -0.398709,
		-0.901253, -0.420062, 0.106257,
		29.850901, 27.891623, 23.642145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162928, 28.632563, 24.085815>,  <30.481779, 28.185665, 23.567764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162928, 28.632563, 24.085815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898975, 28.332832, 24.063646>,  <29.740604, 28.152994, 24.050344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898975, 28.332832, 24.063646>,  <30.162928, 28.632563, 24.085815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898975, 28.332832, 24.063646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317791, 0.211496, 0.924272,
		-0.680858, 0.627520, -0.377691,
		-0.659879, -0.749325, -0.055422,
		29.701012, 28.108034, 24.047020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542427, 28.929607, 24.238123>,  <30.162928, 28.632563, 24.085815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542427, 28.929607, 24.238123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516701, 28.539139, 24.321028>,  <29.501265, 28.304857, 24.370770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516701, 28.539139, 24.321028>,  <29.542427, 28.929607, 24.238123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516701, 28.539139, 24.321028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514142, 0.210418, 0.831494,
		-0.855290, -0.053084, -0.515423,
		-0.064315, -0.976169, 0.207261,
		29.497406, 28.246288, 24.383205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860050, 28.910261, 24.416838>,  <29.542427, 28.929607, 24.238123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860050, 28.910261, 24.416838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.058184, 28.596764, 24.566713>,  <29.177063, 28.408665, 24.656639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.058184, 28.596764, 24.566713>,  <28.860050, 28.910261, 24.416838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058184, 28.596764, 24.566713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246754, 0.286618, 0.925723,
		-0.832922, -0.550997, -0.051421,
		0.495332, -0.783743, 0.374691,
		29.206783, 28.361641, 24.679121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520277, 28.817509, 25.079115>,  <28.860050, 28.910261, 24.416838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520277, 28.817509, 25.079115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.851501, 28.594986, 25.106928>,  <29.050236, 28.461472, 25.123615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.851501, 28.594986, 25.106928>,  <28.520277, 28.817509, 25.079115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851501, 28.594986, 25.106928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185696, 0.389179, 0.902251,
		-0.528991, -0.734207, 0.425568,
		0.828061, -0.556309, 0.069533,
		29.099920, 28.428093, 25.127789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387966, 28.498409, 25.655277>,  <28.520277, 28.817509, 25.079115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387966, 28.498409, 25.655277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.780439, 28.481026, 25.580032>,  <29.015924, 28.470594, 25.534885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.780439, 28.481026, 25.580032>,  <28.387966, 28.498409, 25.655277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780439, 28.481026, 25.580032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190398, 0.379298, 0.905473,
		0.031999, -0.924253, 0.380437,
		0.981185, -0.043460, -0.188114,
		29.074795, 28.467987, 25.523598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.981558, 29.447201, 19.020399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331482, 29.296907, 19.142729>,  <31.541437, 29.206732, 19.216127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331482, 29.296907, 19.142729>,  <30.981558, 29.447201, 19.020399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331482, 29.296907, 19.142729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106016, 0.467489, 0.877619,
		-0.472722, -0.800173, 0.369131,
		0.874811, -0.375736, 0.305824,
		31.593925, 29.184187, 19.234476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829067, 29.054853, 19.667166>,  <30.981558, 29.447201, 19.020399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829067, 29.054853, 19.667166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204594, 29.179638, 19.608782>,  <31.429909, 29.254509, 19.573751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204594, 29.179638, 19.608782>,  <30.829067, 29.054853, 19.667166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204594, 29.179638, 19.608782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006666, 0.407247, 0.913294,
		0.344352, -0.858389, 0.380251,
		0.938817, 0.311959, -0.145959,
		31.486238, 29.273228, 19.564993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148958, 28.803230, 20.244734>,  <30.829067, 29.054853, 19.667166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148958, 28.803230, 20.244734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.373150, 29.101034, 20.099644>,  <31.507664, 29.279716, 20.012590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.373150, 29.101034, 20.099644>,  <31.148958, 28.803230, 20.244734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373150, 29.101034, 20.099644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039576, 0.413404, 0.909687,
		0.827224, -0.524214, 0.202239,
		0.560477, 0.744511, -0.362724,
		31.541292, 29.324387, 19.990826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625355, 28.931925, 20.836517>,  <31.148958, 28.803230, 20.244734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625355, 28.931925, 20.836517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639545, 29.263401, 20.613083>,  <31.648060, 29.462286, 20.479023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639545, 29.263401, 20.613083>,  <31.625355, 28.931925, 20.836517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639545, 29.263401, 20.613083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122369, 0.551128, 0.825399,
		0.991850, -0.097637, -0.081853,
		0.035478, 0.828689, -0.558584,
		31.650188, 29.512007, 20.445507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042961, 29.312439, 21.080511>,  <31.625355, 28.931925, 20.836517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042961, 29.312439, 21.080511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.866224, 29.593933, 20.857969>,  <31.760183, 29.762831, 20.724443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.866224, 29.593933, 20.857969>,  <32.042961, 29.312439, 21.080511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866224, 29.593933, 20.857969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027114, 0.630368, 0.775823,
		0.896684, 0.327704, -0.297602,
		-0.441839, 0.703737, -0.556356,
		31.733673, 29.805054, 20.691063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375809, 30.046337, 21.153986>,  <32.042961, 29.312439, 21.080511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375809, 30.046337, 21.153986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015572, 30.134382, 21.004063>,  <31.799429, 30.187210, 20.914108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015572, 30.134382, 21.004063>,  <32.375809, 30.046337, 21.153986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015572, 30.134382, 21.004063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143176, 0.663952, 0.733940,
		0.410404, 0.714646, -0.566437,
		-0.900594, 0.220112, -0.374809,
		31.745394, 30.200417, 20.891621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439278, 30.751932, 21.080029>,  <32.375809, 30.046337, 21.153986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439278, 30.751932, 21.080029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.051907, 30.652254, 21.077066>,  <31.819485, 30.592447, 21.075289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.051907, 30.652254, 21.077066>,  <32.439278, 30.751932, 21.080029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051907, 30.652254, 21.077066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171625, 0.644840, 0.744800,
		-0.180828, 0.722553, -0.667247,
		-0.968425, -0.249197, -0.007403,
		31.761379, 30.577496, 21.074846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057457, 31.409525, 21.018747>,  <32.439278, 30.751932, 21.080029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057457, 31.409525, 21.018747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850811, 31.127968, 21.213743>,  <31.726824, 30.959034, 21.330740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850811, 31.127968, 21.213743>,  <32.057457, 31.409525, 21.018747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850811, 31.127968, 21.213743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241643, 0.666067, 0.705665,
		-0.821412, 0.246759, -0.514191,
		-0.516614, -0.703893, 0.487488,
		31.695827, 30.916800, 21.359989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492901, 31.705564, 21.253624>,  <32.057457, 31.409525, 21.018747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492901, 31.705564, 21.253624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429720, 31.386194, 21.486027>,  <31.391811, 31.194572, 21.625469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429720, 31.386194, 21.486027>,  <31.492901, 31.705564, 21.253624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429720, 31.386194, 21.486027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389041, 0.591120, 0.706558,
		-0.907578, -0.114431, -0.403990,
		-0.157954, -0.798425, 0.581006,
		31.382334, 31.146667, 21.660328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796104, 31.728806, 21.464640>,  <31.492901, 31.705564, 21.253624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796104, 31.728806, 21.464640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.998537, 31.509577, 21.731024>,  <31.119997, 31.378040, 21.890854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.998537, 31.509577, 21.731024>,  <30.796104, 31.728806, 21.464640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998537, 31.509577, 21.731024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295121, 0.615489, 0.730805,
		-0.810424, -0.566385, 0.149739,
		0.506080, -0.548071, 0.665959,
		31.150362, 31.345156, 21.930811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355654, 31.636419, 22.059753>,  <30.796104, 31.728806, 21.464640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355654, 31.636419, 22.059753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.710720, 31.554871, 22.224913>,  <30.923759, 31.505941, 22.324009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.710720, 31.554871, 22.224913>,  <30.355654, 31.636419, 22.059753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710720, 31.554871, 22.224913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276380, 0.481324, 0.831830,
		-0.368325, -0.852504, 0.370909,
		0.887666, -0.203872, 0.412899,
		30.977020, 31.493710, 22.348782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232325, 31.575287, 22.702822>,  <30.355654, 31.636419, 22.059753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232325, 31.575287, 22.702822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627941, 31.634054, 22.697027>,  <30.865311, 31.669315, 22.693550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627941, 31.634054, 22.697027>,  <30.232325, 31.575287, 22.702822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627941, 31.634054, 22.697027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075532, 0.587882, 0.805413,
		0.126847, -0.795493, 0.592538,
		0.989043, 0.146919, -0.014486,
		30.924654, 31.678129, 22.692682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718061, 31.344067, 23.150633>,  <30.232325, 31.575287, 22.702822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718061, 31.344067, 23.150633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392263, 31.276403, 23.372618>,  <29.196785, 31.235806, 23.505810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392263, 31.276403, 23.372618>,  <29.718061, 31.344067, 23.150633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392263, 31.276403, 23.372618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292399, -0.706499, -0.644486,
		0.501102, -0.687201, 0.525977,
		-0.814494, -0.169158, 0.554964,
		29.147915, 31.225657, 23.539106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570286, 30.640081, 23.248590>,  <29.718061, 31.344067, 23.150633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570286, 30.640081, 23.248590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216784, 30.827251, 23.250473>,  <29.004683, 30.939554, 23.251602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216784, 30.827251, 23.250473>,  <29.570286, 30.640081, 23.248590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216784, 30.827251, 23.250473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330431, -0.616891, -0.714326,
		-0.331348, -0.632844, 0.699798,
		-0.883756, 0.467925, 0.004705,
		28.951656, 30.967628, 23.251884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123146, 30.110920, 23.403524>,  <29.570286, 30.640081, 23.248590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123146, 30.110920, 23.403524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942686, 30.416317, 23.218683>,  <28.834410, 30.599556, 23.107779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942686, 30.416317, 23.218683>,  <29.123146, 30.110920, 23.403524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942686, 30.416317, 23.218683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219757, -0.596891, -0.771640,
		-0.864968, -0.246576, 0.437071,
		-0.451151, 0.763494, -0.462104,
		28.807341, 30.645365, 23.080051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427532, 29.913437, 23.250933>,  <29.123146, 30.110920, 23.403524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427532, 29.913437, 23.250933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468075, 30.224321, 23.002523>,  <28.492401, 30.410852, 22.853477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468075, 30.224321, 23.002523>,  <28.427532, 29.913437, 23.250933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468075, 30.224321, 23.002523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431941, -0.527949, -0.731229,
		-0.896188, 0.342360, 0.282199,
		0.101357, 0.777212, -0.621021,
		28.498482, 30.457485, 22.816217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807405, 29.898476, 22.887886>,  <28.427532, 29.913437, 23.250933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807405, 29.898476, 22.887886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057175, 30.113289, 22.661013>,  <28.207035, 30.242176, 22.524889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057175, 30.113289, 22.661013>,  <27.807405, 29.898476, 22.887886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057175, 30.113289, 22.661013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284455, -0.519931, -0.805455,
		-0.727449, 0.664281, -0.171895,
		0.624422, 0.537031, -0.567182,
		28.244501, 30.274399, 22.490858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423391, 29.995628, 22.339401>,  <27.807405, 29.898476, 22.887886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423391, 29.995628, 22.339401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804829, 30.054531, 22.234350>,  <28.033691, 30.089872, 22.171320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804829, 30.054531, 22.234350>,  <27.423391, 29.995628, 22.339401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804829, 30.054531, 22.234350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190684, -0.379666, -0.905259,
		-0.233016, 0.913329, -0.333968,
		0.953595, 0.147257, -0.262625,
		28.090908, 30.098709, 22.155563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315310, 30.367033, 21.677254>,  <27.423391, 29.995628, 22.339401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315310, 30.367033, 21.677254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680895, 30.209185, 21.715086>,  <27.900246, 30.114475, 21.737785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680895, 30.209185, 21.715086>,  <27.315310, 30.367033, 21.677254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680895, 30.209185, 21.715086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093126, -0.430825, -0.897617,
		0.394964, 0.811582, -0.430508,
		0.913964, -0.394619, 0.094581,
		27.955084, 30.090799, 21.743460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506695, 30.451862, 21.010298>,  <27.315310, 30.367033, 21.677254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506695, 30.451862, 21.010298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775196, 30.202463, 21.170633>,  <27.936296, 30.052824, 21.266834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775196, 30.202463, 21.170633>,  <27.506695, 30.451862, 21.010298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775196, 30.202463, 21.170633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049137, -0.502158, -0.863379,
		0.739599, 0.599240, -0.306437,
		0.671251, -0.623497, 0.400841,
		27.976572, 30.015413, 21.290886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207346, 30.474953, 20.575136>,  <27.506695, 30.451862, 21.010298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207346, 30.474953, 20.575136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183899, 30.123772, 20.765194>,  <28.169830, 29.913063, 20.879229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183899, 30.123772, 20.765194>,  <28.207346, 30.474953, 20.575136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183899, 30.123772, 20.765194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128065, -0.478645, -0.868618,
		0.990032, 0.009934, 0.140492,
		-0.058617, -0.877952, 0.475146,
		28.166313, 29.860386, 20.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528187, 30.071598, 20.091930>,  <28.207346, 30.474953, 20.575136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528187, 30.071598, 20.091930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323614, 29.819685, 20.325787>,  <28.200871, 29.668537, 20.466101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323614, 29.819685, 20.325787>,  <28.528187, 30.071598, 20.091930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323614, 29.819685, 20.325787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208363, -0.569165, -0.795384,
		0.833679, -0.528604, 0.159866,
		-0.511434, -0.629785, 0.584642,
		28.170183, 29.630749, 20.501179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762835, 29.394344, 20.038206>,  <28.528187, 30.071598, 20.091930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762835, 29.394344, 20.038206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398811, 29.325516, 20.189035>,  <28.180397, 29.284218, 20.279533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398811, 29.325516, 20.189035>,  <28.762835, 29.394344, 20.038206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398811, 29.325516, 20.189035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177077, -0.661133, -0.729072,
		0.374749, -0.730270, 0.571200,
		-0.910059, -0.172072, 0.377073,
		28.125793, 29.273893, 20.302156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658447, 28.661259, 19.844498>,  <28.762835, 29.394344, 20.038206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658447, 28.661259, 19.844498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304953, 28.820427, 19.943022>,  <28.092855, 28.915928, 20.002136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304953, 28.820427, 19.943022>,  <28.658447, 28.661259, 19.844498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304953, 28.820427, 19.943022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444702, -0.550112, -0.706836,
		-0.145766, -0.734192, 0.663109,
		-0.883738, 0.397918, 0.246309,
		28.039831, 28.939802, 20.016914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400293, 28.796253, 19.714655>,  <28.658447, 28.661259, 19.844498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400293, 28.796253, 19.714655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155355, 28.883421, 20.018641>,  <29.008392, 28.935720, 20.201033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155355, 28.883421, 20.018641>,  <29.400293, 28.796253, 19.714655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155355, 28.883421, 20.018641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437358, -0.707401, 0.555250,
		0.658597, 0.672381, 0.337866,
		-0.612346, 0.217917, 0.759963,
		28.971651, 28.948795, 20.246630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718267, 28.823282, 20.324059>,  <29.400293, 28.796253, 19.714655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718267, 28.823282, 20.324059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339684, 28.748125, 20.429060>,  <29.112534, 28.703032, 20.492062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339684, 28.748125, 20.429060>,  <29.718267, 28.823282, 20.324059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339684, 28.748125, 20.429060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313961, -0.724948, 0.613090,
		0.075107, 0.662681, 0.745126,
		-0.946460, -0.187893, 0.262505,
		29.055746, 28.691757, 20.507811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532623, 28.947742, 21.077183>,  <29.718267, 28.823282, 20.324059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532623, 28.947742, 21.077183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337069, 28.657555, 20.883408>,  <29.219736, 28.483442, 20.767141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337069, 28.657555, 20.883408>,  <29.532623, 28.947742, 21.077183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337069, 28.657555, 20.883408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393251, -0.678982, 0.619949,
		-0.778681, 0.112579, 0.617238,
		-0.488886, -0.725472, -0.484439,
		29.190403, 28.439913, 20.738075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828411, 28.595837, 21.365824>,  <29.532623, 28.947742, 21.077183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828411, 28.595837, 21.365824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067593, 28.334822, 21.179642>,  <29.211102, 28.178213, 21.067932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067593, 28.334822, 21.179642>,  <28.828411, 28.595837, 21.365824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067593, 28.334822, 21.179642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216779, -0.427409, 0.877684,
		-0.771660, -0.625715, -0.114114,
		0.597953, -0.652536, -0.465456,
		29.246979, 28.139061, 21.040005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594324, 27.888655, 21.463947>,  <28.828411, 28.595837, 21.365824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594324, 27.888655, 21.463947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986814, 27.900713, 21.387753>,  <29.222309, 27.907948, 21.342035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986814, 27.900713, 21.387753>,  <28.594324, 27.888655, 21.463947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986814, 27.900713, 21.387753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186598, -0.398002, 0.898207,
		-0.048735, -0.916889, -0.396155,
		0.981227, 0.030148, -0.190486,
		29.281183, 27.909758, 21.330606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758970, 27.298498, 21.844467>,  <28.594324, 27.888655, 21.463947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758970, 27.298498, 21.844467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099293, 27.486700, 21.750866>,  <29.303486, 27.599621, 21.694706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099293, 27.486700, 21.750866>,  <28.758970, 27.298498, 21.844467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099293, 27.486700, 21.750866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402161, -0.296387, 0.866268,
		0.338227, -0.831132, -0.441386,
		0.850805, 0.470504, -0.234003,
		29.354534, 27.627851, 21.680664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177811, 26.831511, 22.036106>,  <28.758970, 27.298498, 21.844467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177811, 26.831511, 22.036106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391258, 27.169748, 22.042004>,  <29.519327, 27.372692, 22.045542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391258, 27.169748, 22.042004>,  <29.177811, 26.831511, 22.036106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391258, 27.169748, 22.042004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379044, -0.254708, 0.889635,
		0.756026, -0.469139, -0.456435,
		0.533620, 0.845596, 0.014742,
		29.551344, 27.423428, 22.046427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769617, 26.695839, 22.389784>,  <29.177811, 26.831511, 22.036106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769617, 26.695839, 22.389784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700022, 27.087559, 22.431168>,  <29.658264, 27.322590, 22.455997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700022, 27.087559, 22.431168>,  <29.769617, 26.695839, 22.389784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700022, 27.087559, 22.431168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328301, -0.041368, 0.943667,
		0.928411, 0.198151, -0.314307,
		-0.173987, 0.979298, 0.103459,
		29.647825, 27.381348, 22.462206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370905, 26.886440, 22.887671>,  <29.769617, 26.695839, 22.389784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370905, 26.886440, 22.887671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074171, 27.154587, 22.880894>,  <29.896130, 27.315475, 22.876827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074171, 27.154587, 22.880894>,  <30.370905, 26.886440, 22.887671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074171, 27.154587, 22.880894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163543, 0.205364, 0.964924,
		0.650333, 0.713045, -0.261981,
		-0.741836, 0.670368, -0.016941,
		29.851620, 27.355698, 22.875811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159161, 27.014606, 23.005276>,  <30.370905, 26.886440, 22.887671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159161, 27.014606, 23.005276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.333048, 26.680878, 23.140877>,  <31.437380, 26.480640, 23.222237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.333048, 26.680878, 23.140877>,  <31.159161, 27.014606, 23.005276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333048, 26.680878, 23.140877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107159, -0.421682, -0.900389,
		0.894167, 0.355090, -0.272719,
		0.434720, -0.834323, 0.339003,
		31.463465, 26.430580, 23.242579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710575, 26.896334, 22.590412>,  <31.159161, 27.014606, 23.005276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710575, 26.896334, 22.590412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.625414, 26.543556, 22.758625>,  <31.574316, 26.331890, 22.859552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.625414, 26.543556, 22.758625>,  <31.710575, 26.896334, 22.590412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625414, 26.543556, 22.758625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179249, -0.458353, -0.870507,
		0.960490, -0.109956, 0.255673,
		-0.212905, -0.881943, 0.420534,
		31.561543, 26.278973, 22.884785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178337, 26.510643, 22.305172>,  <31.710575, 26.896334, 22.590412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178337, 26.510643, 22.305172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889387, 26.266338, 22.434874>,  <31.716017, 26.119755, 22.512693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889387, 26.266338, 22.434874>,  <32.178337, 26.510643, 22.305172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889387, 26.266338, 22.434874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040391, -0.505379, -0.861951,
		0.690319, -0.609557, 0.389744,
		-0.722377, -0.610763, 0.324252,
		31.672674, 26.083109, 22.532148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337593, 25.875847, 21.936695>,  <32.178337, 26.510643, 22.305172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337593, 25.875847, 21.936695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962736, 25.821615, 22.065311>,  <31.737823, 25.789076, 22.142481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962736, 25.821615, 22.065311>,  <32.337593, 25.875847, 21.936695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962736, 25.821615, 22.065311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186151, -0.585146, -0.789272,
		0.295160, -0.799513, 0.523125,
		-0.937138, -0.135581, 0.321542,
		31.681595, 25.780941, 22.161774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235252, 25.140533, 21.888353>,  <32.337593, 25.875847, 21.936695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235252, 25.140533, 21.888353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.866241, 25.294380, 21.901133>,  <31.644836, 25.386688, 21.908800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.866241, 25.294380, 21.901133>,  <32.235252, 25.140533, 21.888353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866241, 25.294380, 21.901133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283823, -0.620006, -0.731462,
		-0.261523, -0.683859, 0.681133,
		-0.922524, 0.384616, 0.031949,
		31.589485, 25.409765, 21.910717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787468, 24.566118, 21.779139>,  <32.235252, 25.140533, 21.888353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787468, 24.566118, 21.779139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.553673, 24.881113, 21.700922>,  <31.413395, 25.070110, 21.653992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.553673, 24.881113, 21.700922>,  <31.787468, 24.566118, 21.779139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553673, 24.881113, 21.700922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487620, -0.533522, -0.691072,
		-0.648536, -0.308575, 0.695832,
		-0.584489, 0.787487, -0.195541,
		31.378326, 25.117359, 21.642260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236603, 24.247849, 21.655329>,  <31.787468, 24.566118, 21.779139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236603, 24.247849, 21.655329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177425, 24.600615, 21.476292>,  <31.141918, 24.812273, 21.368870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177425, 24.600615, 21.476292>,  <31.236603, 24.247849, 21.655329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177425, 24.600615, 21.476292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352208, -0.469884, -0.809418,
		-0.924155, 0.037899, 0.380133,
		-0.147943, 0.881914, -0.447594,
		31.133043, 24.865189, 21.342014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549654, 24.224894, 21.419115>,  <31.236603, 24.247849, 21.655329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549654, 24.224894, 21.419115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759188, 24.486790, 21.201157>,  <30.884909, 24.643929, 21.070381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759188, 24.486790, 21.201157>,  <30.549654, 24.224894, 21.419115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759188, 24.486790, 21.201157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349846, -0.417877, -0.838443,
		-0.776662, 0.629835, 0.010160,
		0.523835, 0.654742, -0.544895,
		30.916338, 24.683212, 21.037687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150324, 24.320982, 20.961927>,  <30.549654, 24.224894, 21.419115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150324, 24.320982, 20.961927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487024, 24.437204, 20.779922>,  <30.689045, 24.506937, 20.670719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487024, 24.437204, 20.779922>,  <30.150324, 24.320982, 20.961927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487024, 24.437204, 20.779922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167767, -0.660308, -0.732016,
		-0.513138, 0.692510, -0.507069,
		0.841750, 0.290556, -0.455010,
		30.739550, 24.524372, 20.643419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.923782, 30.772375, 35.626797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261761, 30.790266, 35.413609>,  <33.464550, 30.801001, 35.285694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261761, 30.790266, 35.413609>,  <32.923782, 30.772375, 35.626797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261761, 30.790266, 35.413609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447104, -0.487820, -0.749753,
		-0.293530, 0.871797, -0.392185,
		0.844949, 0.044728, -0.532974,
		33.515244, 30.803684, 35.253716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773346, 30.954082, 34.924328>,  <32.923782, 30.772375, 35.626797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773346, 30.954082, 34.924328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127777, 30.771566, 34.891685>,  <33.340435, 30.662058, 34.872101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127777, 30.771566, 34.891685>,  <32.773346, 30.954082, 34.924328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127777, 30.771566, 34.891685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335433, -0.509686, -0.792278,
		0.319913, 0.729397, -0.604678,
		0.886082, -0.456289, -0.081609,
		33.393600, 30.634680, 34.867203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000481, 31.178528, 34.315426>,  <32.773346, 30.954082, 34.924328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000481, 31.178528, 34.315426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226864, 30.853025, 34.368332>,  <33.362694, 30.657724, 34.400074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226864, 30.853025, 34.368332>,  <33.000481, 31.178528, 34.315426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226864, 30.853025, 34.368332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252592, -0.323869, -0.911760,
		0.784787, 0.482607, -0.388844,
		0.565957, -0.813756, 0.132265,
		33.396652, 30.608898, 34.408012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395229, 31.147854, 33.694248>,  <33.000481, 31.178528, 34.315426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395229, 31.147854, 33.694248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390549, 30.786015, 33.864689>,  <33.387741, 30.568911, 33.966953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390549, 30.786015, 33.864689>,  <33.395229, 31.147854, 33.694248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390549, 30.786015, 33.864689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085291, -0.423675, -0.901790,
		0.996287, -0.046893, -0.072197,
		-0.011700, -0.904600, 0.426102,
		33.387039, 30.514635, 33.992519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763523, 30.767765, 33.205635>,  <33.395229, 31.147854, 33.694248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763523, 30.767765, 33.205635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599941, 30.491989, 33.444778>,  <33.501793, 30.326525, 33.588264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599941, 30.491989, 33.444778>,  <33.763523, 30.767765, 33.205635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599941, 30.491989, 33.444778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151199, -0.594900, -0.789451,
		0.899944, -0.413242, 0.139042,
		-0.408950, -0.689439, 0.597859,
		33.477257, 30.285158, 33.624138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094780, 30.142187, 32.988483>,  <33.763523, 30.767765, 33.205635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094780, 30.142187, 32.988483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756310, 30.025780, 33.167053>,  <33.553226, 29.955936, 33.274197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756310, 30.025780, 33.167053>,  <34.094780, 30.142187, 32.988483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756310, 30.025780, 33.167053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180751, -0.631331, -0.754155,
		0.501316, -0.718839, 0.481614,
		-0.846174, -0.291018, 0.446427,
		33.502457, 29.938475, 33.300980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165829, 29.453455, 33.116879>,  <34.094780, 30.142187, 32.988483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165829, 29.453455, 33.116879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771481, 29.519024, 33.130657>,  <33.534870, 29.558365, 33.138924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771481, 29.519024, 33.130657>,  <34.165829, 29.453455, 33.116879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771481, 29.519024, 33.130657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145414, -0.735518, -0.661716,
		-0.083133, -0.657376, 0.748963,
		-0.985872, 0.163920, 0.034445,
		33.475719, 29.568199, 33.140991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852757, 28.774277, 33.233330>,  <34.165829, 29.453455, 33.116879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852757, 28.774277, 33.233330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548626, 28.973972, 33.067120>,  <33.366146, 29.093790, 32.967392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548626, 28.973972, 33.067120>,  <33.852757, 28.774277, 33.233330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548626, 28.973972, 33.067120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255623, -0.818087, -0.515160,
		-0.597126, -0.285471, 0.749631,
		-0.760327, 0.499238, -0.415529,
		33.320530, 29.123743, 32.942459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279900, 28.295219, 33.077415>,  <33.852757, 28.774277, 33.233330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279900, 28.295219, 33.077415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187847, 28.600674, 32.836121>,  <33.132618, 28.783947, 32.691341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187847, 28.600674, 32.836121>,  <33.279900, 28.295219, 33.077415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187847, 28.600674, 32.836121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308488, -0.645153, -0.699008,
		-0.922971, 0.025231, 0.384041,
		-0.230129, 0.763636, -0.603241,
		33.118809, 28.829765, 32.655148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525394, 28.167641, 32.762333>,  <33.279900, 28.295219, 33.077415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525394, 28.167641, 32.762333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711231, 28.436621, 32.531868>,  <32.822735, 28.598009, 32.393589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711231, 28.436621, 32.531868>,  <32.525394, 28.167641, 32.762333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711231, 28.436621, 32.531868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466692, -0.367016, -0.804672,
		-0.752564, 0.642735, 0.143315,
		0.464592, 0.672451, -0.576163,
		32.850609, 28.638355, 32.359020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026558, 28.423119, 32.293941>,  <32.525394, 28.167641, 32.762333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026558, 28.423119, 32.293941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366852, 28.517771, 32.106216>,  <32.571030, 28.574562, 31.993580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366852, 28.517771, 32.106216>,  <32.026558, 28.423119, 32.293941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366852, 28.517771, 32.106216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388254, -0.318938, -0.864603,
		-0.354274, 0.917761, -0.179459,
		0.850734, 0.236631, -0.469315,
		32.622070, 28.588760, 31.965422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837826, 28.823462, 31.670725>,  <32.026558, 28.423119, 32.293941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837826, 28.823462, 31.670725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210056, 28.694984, 31.600458>,  <32.433395, 28.617897, 31.558298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210056, 28.694984, 31.600458>,  <31.837826, 28.823462, 31.670725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210056, 28.694984, 31.600458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314226, -0.454553, -0.833453,
		0.187849, 0.830793, -0.523924,
		0.930578, -0.321194, -0.175669,
		32.489231, 28.598627, 31.547758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692898, 29.580837, 31.439985>,  <31.837826, 28.823462, 31.670725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692898, 29.580837, 31.439985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326847, 29.687059, 31.318645>,  <31.107216, 29.750793, 31.245842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326847, 29.687059, 31.318645>,  <31.692898, 29.580837, 31.439985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326847, 29.687059, 31.318645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098695, 0.581970, 0.807199,
		0.390897, 0.768629, -0.506368,
		-0.915128, 0.265555, -0.303350,
		31.052309, 29.766726, 31.227640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779551, 30.286451, 31.539652>,  <31.692898, 29.580837, 31.439985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779551, 30.286451, 31.539652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.390041, 30.204905, 31.499243>,  <31.156336, 30.155975, 31.474998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.390041, 30.204905, 31.499243>,  <31.779551, 30.286451, 31.539652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390041, 30.204905, 31.499243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196388, 0.528922, 0.825635,
		-0.114889, 0.823820, -0.555087,
		-0.973772, -0.203869, -0.101020,
		31.097910, 30.143744, 31.468937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504860, 30.867033, 31.722324>,  <31.779551, 30.286451, 31.539652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504860, 30.867033, 31.722324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177706, 30.637123, 31.732855>,  <30.981413, 30.499176, 31.739174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177706, 30.637123, 31.732855>,  <31.504860, 30.867033, 31.722324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177706, 30.637123, 31.732855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302475, 0.468436, 0.830107,
		-0.489459, 0.670970, -0.556983,
		-0.817887, -0.574776, 0.026328,
		30.932339, 30.464691, 31.740753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915440, 31.353029, 31.790218>,  <31.504860, 30.867033, 31.722324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915440, 31.353029, 31.790218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.821423, 30.993345, 31.937826>,  <30.765013, 30.777534, 32.026390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.821423, 30.993345, 31.937826>,  <30.915440, 31.353029, 31.790218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821423, 30.993345, 31.937826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278400, 0.426029, 0.860809,
		-0.931262, 0.099592, -0.350475,
		-0.235042, -0.899211, 0.369018,
		30.750910, 30.723581, 32.048531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283882, 31.455784, 32.012978>,  <30.915440, 31.353029, 31.790218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283882, 31.455784, 32.012978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401987, 31.123501, 32.201763>,  <30.472849, 30.924131, 32.315033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401987, 31.123501, 32.201763>,  <30.283882, 31.455784, 32.012978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401987, 31.123501, 32.201763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321970, 0.378576, 0.867765,
		-0.899531, -0.408174, -0.155685,
		0.295260, -0.830707, 0.471961,
		30.490564, 30.874289, 32.343353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677006, 31.211302, 32.421738>,  <30.283882, 31.455784, 32.012978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677006, 31.211302, 32.421738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.002506, 31.053265, 32.592247>,  <30.197807, 30.958443, 32.694553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.002506, 31.053265, 32.592247>,  <29.677006, 31.211302, 32.421738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002506, 31.053265, 32.592247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325916, 0.297075, 0.897511,
		-0.481236, -0.869280, 0.112978,
		0.813751, -0.395093, 0.426275,
		30.246632, 30.934736, 32.720131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375938, 30.878542, 33.008095>,  <29.677006, 31.211302, 32.421738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375938, 30.878542, 33.008095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764706, 30.938074, 33.081009>,  <29.997965, 30.973793, 33.124756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764706, 30.938074, 33.081009>,  <29.375938, 30.878542, 33.008095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764706, 30.938074, 33.081009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231720, 0.470230, 0.851581,
		0.041026, -0.869904, 0.491511,
		0.971918, 0.148830, 0.182282,
		30.056280, 30.982723, 33.135693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507254, 30.642817, 33.636150>,  <29.375938, 30.878542, 33.008095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507254, 30.642817, 33.636150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.794291, 30.911482, 33.562473>,  <29.966513, 31.072681, 33.518265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.794291, 30.911482, 33.562473>,  <29.507254, 30.642817, 33.636150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794291, 30.911482, 33.562473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215363, 0.465508, 0.858441,
		0.662330, -0.576341, 0.478697,
		0.717592, 0.671665, -0.184198,
		30.009567, 31.112982, 33.507214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814365, 30.786543, 34.326763>,  <29.507254, 30.642817, 33.636150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814365, 30.786543, 34.326763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.938610, 31.061054, 34.063690>,  <30.013157, 31.225761, 33.905846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.938610, 31.061054, 34.063690>,  <29.814365, 30.786543, 34.326763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938610, 31.061054, 34.063690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149667, 0.718585, 0.679143,
		0.938680, -0.112516, 0.325914,
		0.310611, 0.686276, -0.657682,
		30.031794, 31.266937, 33.866386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265051, 31.271954, 34.721104>,  <29.814365, 30.786543, 34.326763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265051, 31.271954, 34.721104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104027, 31.439468, 34.395512>,  <30.007412, 31.539978, 34.200157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104027, 31.439468, 34.395512>,  <30.265051, 31.271954, 34.721104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104027, 31.439468, 34.395512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361193, 0.744396, 0.561618,
		0.841121, 0.520090, -0.148402,
		-0.402561, 0.418786, -0.813979,
		29.983259, 31.565104, 34.151318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051304, 31.887087, 34.911667>,  <30.265051, 31.271954, 34.721104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051304, 31.887087, 34.911667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877367, 31.933905, 34.554520>,  <29.773005, 31.961996, 34.340233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877367, 31.933905, 34.554520>,  <30.051304, 31.887087, 34.911667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877367, 31.933905, 34.554520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487778, 0.802845, 0.342802,
		0.756957, 0.584586, -0.292019,
		-0.434843, 0.117046, -0.892867,
		29.746914, 31.969019, 34.286659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072123, 32.586735, 34.796021>,  <30.051304, 31.887087, 34.911667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072123, 32.586735, 34.796021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789503, 32.448219, 34.549160>,  <29.619932, 32.365108, 34.401043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789503, 32.448219, 34.549160>,  <30.072123, 32.586735, 34.796021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789503, 32.448219, 34.549160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561803, 0.804773, 0.191618,
		0.430313, 0.482105, -0.763155,
		-0.706547, -0.346287, -0.617152,
		29.577539, 32.344334, 34.364014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755909, 33.082424, 34.528374>,  <30.072123, 32.586735, 34.796021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755909, 33.082424, 34.528374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.473101, 32.805603, 34.470158>,  <29.303415, 32.639511, 34.435226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.473101, 32.805603, 34.470158>,  <29.755909, 33.082424, 34.528374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473101, 32.805603, 34.470158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703290, 0.666474, 0.247377,
		-0.074197, 0.277260, -0.957926,
		-0.707021, -0.692054, -0.145544,
		29.260994, 32.597988, 34.426495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226456, 33.431667, 34.231178>,  <29.755909, 33.082424, 34.528374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226456, 33.431667, 34.231178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055025, 33.097122, 34.367897>,  <28.952168, 32.896397, 34.449928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055025, 33.097122, 34.367897>,  <29.226456, 33.431667, 34.231178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055025, 33.097122, 34.367897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724424, 0.544165, 0.423194,
		-0.539938, -0.066238, -0.839094,
		-0.428574, -0.836359, 0.341800,
		28.926453, 32.846214, 34.470436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474659, 33.580982, 34.303185>,  <29.226456, 33.431667, 34.231178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474659, 33.580982, 34.303185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.568357, 33.290520, 34.561745>,  <28.624577, 33.116241, 34.716881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.568357, 33.290520, 34.561745>,  <28.474659, 33.580982, 34.303185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568357, 33.290520, 34.561745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534384, 0.459262, 0.709586,
		-0.812134, -0.511643, -0.280464,
		0.234248, -0.726154, 0.646396,
		28.638632, 33.072674, 34.755665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612352, 34.153477, 33.926746>,  <28.474659, 33.580982, 34.303185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612352, 34.153477, 33.926746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.778046, 34.495617, 33.802303>,  <28.877462, 34.700901, 33.727638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.778046, 34.495617, 33.802303>,  <28.612352, 34.153477, 33.926746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778046, 34.495617, 33.802303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492214, -0.076996, -0.867063,
		-0.765595, 0.512299, 0.389120,
		0.414234, 0.855349, -0.311108,
		28.902315, 34.752220, 33.708969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175055, 34.557423, 33.434437>,  <28.612352, 34.153477, 33.926746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175055, 34.557423, 33.434437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.541435, 34.673916, 33.324013>,  <28.761265, 34.743813, 33.257759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.541435, 34.673916, 33.324013>,  <28.175055, 34.557423, 33.434437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541435, 34.673916, 33.324013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273741, -0.049547, -0.960527,
		-0.293419, 0.955367, 0.034341,
		0.915954, 0.291237, -0.276061,
		28.816221, 34.761288, 33.241196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242247, 35.239761, 33.016232>,  <28.175055, 34.557423, 33.434437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242247, 35.239761, 33.016232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.534798, 34.977013, 32.942905>,  <28.710327, 34.819363, 32.898911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.534798, 34.977013, 32.942905>,  <28.242247, 35.239761, 33.016232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534798, 34.977013, 32.942905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209100, 0.039863, -0.977082,
		0.649128, 0.752945, -0.108198,
		0.731376, -0.656875, -0.183317,
		28.754210, 34.779949, 32.887909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514418, 35.412506, 32.369274>,  <28.242247, 35.239761, 33.016232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514418, 35.412506, 32.369274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673529, 35.047359, 32.406036>,  <28.768995, 34.828270, 32.428093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673529, 35.047359, 32.406036>,  <28.514418, 35.412506, 32.369274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673529, 35.047359, 32.406036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180037, -0.020560, -0.983445,
		0.899643, 0.407741, 0.156171,
		0.397780, -0.912866, 0.091905,
		28.792862, 34.773499, 32.433609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197548, 35.357849, 31.899231>,  <28.514418, 35.412506, 32.369274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197548, 35.357849, 31.899231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.117844, 34.968388, 31.943590>,  <29.070021, 34.734711, 31.970205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.117844, 34.968388, 31.943590>,  <29.197548, 35.357849, 31.899231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117844, 34.968388, 31.943590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182991, -0.148147, -0.971888,
		0.962710, -0.173365, 0.207689,
		-0.199260, -0.973651, 0.110898,
		29.058065, 34.676292, 31.976860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450525, 35.078804, 31.274517>,  <29.197548, 35.357849, 31.899231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450525, 35.078804, 31.274517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.217430, 34.789536, 31.422813>,  <29.077574, 34.615974, 31.511791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.217430, 34.789536, 31.422813>,  <29.450525, 35.078804, 31.274517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217430, 34.789536, 31.422813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181102, -0.329169, -0.926742,
		0.792225, -0.607187, 0.060851,
		-0.582736, -0.723168, 0.370739,
		29.042610, 34.572586, 31.534035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785135, 34.468987, 30.997742>,  <29.450525, 35.078804, 31.274517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785135, 34.468987, 30.997742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404087, 34.401428, 31.098927>,  <29.175459, 34.360893, 31.159637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404087, 34.401428, 31.098927>,  <29.785135, 34.468987, 30.997742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404087, 34.401428, 31.098927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133990, -0.513604, -0.847501,
		0.273062, -0.841240, 0.466639,
		-0.952620, -0.168895, 0.252963,
		29.118301, 34.350761, 31.174816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609303, 33.696354, 30.941893>,  <29.785135, 34.468987, 30.997742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609303, 33.696354, 30.941893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268126, 33.901859, 30.904932>,  <29.063419, 34.025162, 30.882755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268126, 33.901859, 30.904932>,  <29.609303, 33.696354, 30.941893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268126, 33.901859, 30.904932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257656, -0.568306, -0.781435,
		-0.453982, -0.642713, 0.617107,
		-0.852944, 0.513759, -0.092402,
		29.012243, 34.055988, 30.877211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071016, 33.138248, 30.776369>,  <29.609303, 33.696354, 30.941893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071016, 33.138248, 30.776369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.923094, 33.497398, 30.680811>,  <28.834339, 33.712887, 30.623476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.923094, 33.497398, 30.680811>,  <29.071016, 33.138248, 30.776369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923094, 33.497398, 30.680811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267092, -0.349004, -0.898253,
		-0.889890, -0.268373, 0.368878,
		-0.369807, 0.897871, -0.238895,
		28.812151, 33.766758, 30.609142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436981, 32.934299, 30.536224>,  <29.071016, 33.138248, 30.776369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436981, 32.934299, 30.536224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559992, 33.284283, 30.386625>,  <28.633799, 33.494274, 30.296865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559992, 33.284283, 30.386625>,  <28.436981, 32.934299, 30.536224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559992, 33.284283, 30.386625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210790, -0.320635, -0.923450,
		-0.927897, 0.362822, 0.085828,
		0.307529, 0.874959, -0.373996,
		28.652250, 33.546772, 30.274426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997086, 32.924625, 29.979467>,  <28.436981, 32.934299, 30.536224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997086, 32.924625, 29.979467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.259520, 33.206757, 29.872091>,  <28.416981, 33.376038, 29.807665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.259520, 33.206757, 29.872091>,  <27.997086, 32.924625, 29.979467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259520, 33.206757, 29.872091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086900, -0.282727, -0.955256,
		-0.749666, 0.650058, -0.124200,
		0.656086, 0.705330, -0.268441,
		28.456345, 33.418354, 29.791559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821751, 33.057652, 29.307301>,  <27.997086, 32.924625, 29.979467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821751, 33.057652, 29.307301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.191027, 33.207226, 29.342836>,  <28.412592, 33.296970, 29.364159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.191027, 33.207226, 29.342836>,  <27.821751, 33.057652, 29.307301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191027, 33.207226, 29.342836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200107, -0.270292, -0.941754,
		-0.328140, 0.887196, -0.324357,
		0.923191, 0.373933, 0.088840,
		28.467983, 33.319405, 29.369488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906683, 33.552971, 28.710291>,  <27.821751, 33.057652, 29.307301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906683, 33.552971, 28.710291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.264948, 33.436096, 28.844406>,  <28.479906, 33.365971, 28.924875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.264948, 33.436096, 28.844406>,  <27.906683, 33.552971, 28.710291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264948, 33.436096, 28.844406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190328, -0.429548, -0.882759,
		0.401953, 0.854468, -0.329117,
		0.895661, -0.292188, 0.335288,
		28.533646, 33.348438, 28.944992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344053, 33.685482, 28.172325>,  <27.906683, 33.552971, 28.710291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344053, 33.685482, 28.172325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.531063, 33.422379, 28.408552>,  <28.643269, 33.264515, 28.550289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.531063, 33.422379, 28.408552>,  <28.344053, 33.685482, 28.172325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531063, 33.422379, 28.408552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334647, -0.486661, -0.806953,
		0.818187, 0.574904, -0.007410,
		0.467527, -0.657758, 0.590570,
		28.671322, 33.225052, 28.585724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022173, 33.557636, 27.912479>,  <28.344053, 33.685482, 28.172325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022173, 33.557636, 27.912479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926088, 33.238327, 28.133410>,  <28.868437, 33.046741, 28.265966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926088, 33.238327, 28.133410>,  <29.022173, 33.557636, 27.912479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926088, 33.238327, 28.133410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330265, -0.602247, -0.726790,
		0.912811, 0.007830, 0.408307,
		-0.240211, -0.798272, 0.552323,
		28.854025, 32.998844, 28.299107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635771, 33.143169, 27.837955>,  <29.022173, 33.557636, 27.912479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635771, 33.143169, 27.837955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.354584, 32.909374, 28.000044>,  <29.185871, 32.769096, 28.097298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.354584, 32.909374, 28.000044>,  <29.635771, 33.143169, 27.837955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354584, 32.909374, 28.000044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149496, -0.678461, -0.719265,
		0.695331, -0.445042, 0.564316,
		-0.702969, -0.584490, 0.405223,
		29.143694, 32.734028, 28.121611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897732, 32.515812, 27.877003>,  <29.635771, 33.143169, 27.837955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897732, 32.515812, 27.877003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.508238, 32.425179, 27.868036>,  <29.274542, 32.370796, 27.862656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.508238, 32.425179, 27.868036>,  <29.897732, 32.515812, 27.877003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508238, 32.425179, 27.868036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174445, -0.679118, -0.712999,
		0.146332, -0.698181, 0.700807,
		-0.973733, -0.226587, -0.022417,
		29.216118, 32.357204, 27.861311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790956, 31.709044, 27.847099>,  <29.897732, 32.515812, 27.877003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790956, 31.709044, 27.847099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.449064, 31.876354, 27.724148>,  <29.243929, 31.976740, 27.650377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.449064, 31.876354, 27.724148>,  <29.790956, 31.709044, 27.847099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449064, 31.876354, 27.724148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072621, -0.682705, -0.727076,
		-0.513965, -0.599133, 0.613905,
		-0.854732, 0.418274, -0.307377,
		29.192644, 32.001835, 27.631935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282141, 31.158630, 27.707010>,  <29.790956, 31.709044, 27.847099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282141, 31.158630, 27.707010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.138269, 31.459175, 27.485710>,  <29.051947, 31.639502, 27.352930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.138269, 31.459175, 27.485710>,  <29.282141, 31.158630, 27.707010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138269, 31.459175, 27.485710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048666, -0.577019, -0.815280,
		-0.931806, -0.320164, 0.170976,
		-0.359680, 0.751361, -0.553251,
		29.030365, 31.684584, 27.319735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797949, 30.840305, 27.084980>,  <29.282141, 31.158630, 27.707010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797949, 30.840305, 27.084980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956291, 31.197596, 26.999712>,  <29.051296, 31.411970, 26.948551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956291, 31.197596, 26.999712>,  <28.797949, 30.840305, 27.084980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956291, 31.197596, 26.999712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019821, -0.240389, -0.970474,
		-0.918098, 0.379945, -0.112864,
		0.395858, 0.893227, -0.213170,
		29.075048, 31.465565, 26.935760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576958, 30.879313, 26.367428>,  <28.797949, 30.840305, 27.084980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576958, 30.879313, 26.367428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.800808, 31.210545, 26.380690>,  <28.935118, 31.409285, 26.388647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.800808, 31.210545, 26.380690>,  <28.576958, 30.879313, 26.367428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800808, 31.210545, 26.380690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051463, 0.005207, -0.998661,
		-0.827146, 0.560583, -0.039702,
		0.559625, 0.828082, 0.033156,
		28.968695, 31.458969, 26.390636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236691, 31.246059, 25.865986>,  <28.576958, 30.879313, 26.367428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236691, 31.246059, 25.865986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600424, 31.409641, 25.896627>,  <28.818665, 31.507790, 25.915012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600424, 31.409641, 25.896627>,  <28.236691, 31.246059, 25.865986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600424, 31.409641, 25.896627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032987, 0.254397, -0.966537,
		-0.414755, 0.876379, 0.244822,
		0.909335, 0.408952, 0.076604,
		28.873224, 31.532328, 25.919609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157904, 31.765249, 25.402973>,  <28.236691, 31.246059, 25.865986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157904, 31.765249, 25.402973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.545115, 31.682373, 25.459538>,  <28.777441, 31.632647, 25.493477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.545115, 31.682373, 25.459538>,  <28.157904, 31.765249, 25.402973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545115, 31.682373, 25.459538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142229, -0.011017, -0.989773,
		0.206630, 0.978239, 0.018803,
		0.968026, -0.207191, 0.141410,
		28.835522, 31.620216, 25.501961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557806, 32.293884, 25.148922>,  <28.157904, 31.765249, 25.402973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557806, 32.293884, 25.148922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.770329, 31.955015, 25.147867>,  <28.897842, 31.751694, 25.147234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.770329, 31.955015, 25.147867>,  <28.557806, 32.293884, 25.148922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770329, 31.955015, 25.147867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080529, 0.053599, -0.995310,
		0.843343, 0.528604, 0.096700,
		0.531308, -0.847175, -0.002635,
		28.929720, 31.700863, 25.147078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038074, 32.429600, 24.672117>,  <28.557806, 32.293884, 25.148922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038074, 32.429600, 24.672117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.039322, 32.029797, 24.684586>,  <29.040071, 31.789915, 24.692066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.039322, 32.029797, 24.684586>,  <29.038074, 32.429600, 24.672117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039322, 32.029797, 24.684586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041017, -0.031017, -0.998677,
		0.999153, 0.004395, 0.040900,
		0.003120, -0.999509, 0.031171,
		29.040258, 31.729944, 24.693937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574541, 32.245205, 24.196165>,  <29.038074, 32.429600, 24.672117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574541, 32.245205, 24.196165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.344461, 31.920891, 24.239574>,  <29.206413, 31.726303, 24.265621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.344461, 31.920891, 24.239574>,  <29.574541, 32.245205, 24.196165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344461, 31.920891, 24.239574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023464, -0.148968, -0.988564,
		0.817677, -0.566075, 0.104711,
		-0.575200, -0.810782, 0.108525,
		29.171902, 31.677656, 24.272131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908850, 31.830097, 23.721184>,  <29.574541, 32.245205, 24.196165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908850, 31.830097, 23.721184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.549532, 31.684006, 23.818899>,  <29.333942, 31.596352, 23.877529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.549532, 31.684006, 23.818899>,  <29.908850, 31.830097, 23.721184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549532, 31.684006, 23.818899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039906, -0.621481, -0.782413,
		0.437580, -0.693088, 0.572847,
		-0.898294, -0.365228, 0.244289,
		29.280045, 31.574438, 23.892185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527582, 31.449953, 23.465145>,  <29.908850, 31.830097, 23.721184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527582, 31.449953, 23.465145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.828909, 31.628645, 23.272087>,  <31.009705, 31.735861, 23.156252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.828909, 31.628645, 23.272087>,  <30.527582, 31.449953, 23.465145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828909, 31.628645, 23.272087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361419, 0.331918, 0.871324,
		0.549446, -0.830820, 0.088583,
		0.753316, 0.446730, -0.482646,
		31.054905, 31.762663, 23.127293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072697, 31.291904, 23.945520>,  <30.527582, 31.449953, 23.465145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072697, 31.291904, 23.945520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147732, 31.610325, 23.715349>,  <31.192753, 31.801376, 23.577248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147732, 31.610325, 23.715349>,  <31.072697, 31.291904, 23.945520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147732, 31.610325, 23.715349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227093, 0.534806, 0.813887,
		0.955636, -0.283351, -0.080453,
		0.187589, 0.796049, -0.575427,
		31.204008, 31.849140, 23.542721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714264, 31.456921, 24.056322>,  <31.072697, 31.291904, 23.945520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714264, 31.456921, 24.056322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535505, 31.793657, 23.935266>,  <31.428251, 31.995699, 23.862633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535505, 31.793657, 23.935266>,  <31.714264, 31.456921, 24.056322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535505, 31.793657, 23.935266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269156, 0.449156, 0.851947,
		0.853135, 0.299273, -0.427312,
		-0.446895, 0.841840, -0.302640,
		31.401438, 32.046207, 23.844475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145149, 31.939640, 24.211727>,  <31.714264, 31.456921, 24.056322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145149, 31.939640, 24.211727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794973, 32.129772, 24.176712>,  <31.584867, 32.243851, 24.155703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794973, 32.129772, 24.176712>,  <32.145149, 31.939640, 24.211727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794973, 32.129772, 24.176712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193672, 0.510937, 0.837517,
		0.442822, 0.716244, -0.539354,
		-0.875443, 0.475328, -0.087538,
		31.532341, 32.272369, 24.150452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228752, 32.606846, 24.312788>,  <32.145149, 31.939640, 24.211727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228752, 32.606846, 24.312788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836418, 32.593151, 24.389511>,  <31.601017, 32.584934, 24.435545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836418, 32.593151, 24.389511>,  <32.228752, 32.606846, 24.312788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836418, 32.593151, 24.389511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110629, 0.712517, 0.692879,
		-0.160388, 0.700820, -0.695074,
		-0.980835, -0.034234, 0.191810,
		31.542168, 32.582882, 24.447054>
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
