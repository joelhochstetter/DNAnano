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
	<24.260208, 35.370930, 35.034355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254953, 34.988956, 35.152966>,  <24.251801, 34.759773, 35.224133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254953, 34.988956, 35.152966>,  <24.260208, 35.370930, 35.034355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254953, 34.988956, 35.152966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988256, 0.032753, 0.149258,
		-0.152244, 0.295006, 0.943288,
		-0.013136, -0.954934, 0.296528,
		24.251013, 34.702477, 35.241924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819704, 35.369781, 35.536240>,  <24.260208, 35.370930, 35.034355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819704, 35.369781, 35.536240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.791027, 35.016453, 35.350941>,  <24.773821, 34.804455, 35.239761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.791027, 35.016453, 35.350941>,  <24.819704, 35.369781, 35.536240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.791027, 35.016453, 35.350941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985592, 0.008598, -0.168925,
		0.153199, -0.468681, 0.869982,
		-0.071692, -0.883326, -0.463245,
		24.769520, 34.751453, 35.211967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254486, 34.863018, 35.779736>,  <24.819704, 35.369781, 35.536240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254486, 34.863018, 35.779736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196686, 34.827618, 35.385521>,  <25.162006, 34.806377, 35.148991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196686, 34.827618, 35.385521>,  <25.254486, 34.863018, 35.779736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196686, 34.827618, 35.385521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972310, 0.172170, -0.158023,
		0.183666, -0.981083, 0.061174,
		-0.144501, -0.088503, -0.985538,
		25.153336, 34.801067, 35.089859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800100, 35.147011, 35.482197>,  <25.254486, 34.863018, 35.779736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800100, 35.147011, 35.482197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656401, 35.000378, 35.138905>,  <25.570181, 34.912399, 34.932930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656401, 35.000378, 35.138905>,  <25.800100, 35.147011, 35.482197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656401, 35.000378, 35.138905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868485, 0.205266, -0.451220,
		0.341574, -0.907460, 0.244630,
		-0.359250, -0.366583, -0.858229,
		25.548626, 34.890404, 34.881435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188082, 34.537060, 35.224201>,  <25.800100, 35.147011, 35.482197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188082, 34.537060, 35.224201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009447, 34.747772, 34.934910>,  <25.902267, 34.874199, 34.761333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009447, 34.747772, 34.934910>,  <26.188082, 34.537060, 35.224201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009447, 34.747772, 34.934910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891703, 0.195478, -0.408232,
		-0.073673, -0.827219, -0.557029,
		-0.446584, 0.526780, -0.723232,
		25.875471, 34.905807, 34.717941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331255, 34.167095, 34.521061>,  <26.188082, 34.537060, 35.224201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331255, 34.167095, 34.521061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255249, 34.558296, 34.486626>,  <26.209646, 34.793015, 34.465965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255249, 34.558296, 34.486626>,  <26.331255, 34.167095, 34.521061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255249, 34.558296, 34.486626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759189, 0.090765, -0.644510,
		-0.622516, -0.187826, -0.759733,
		-0.190013, 0.978000, -0.086092,
		26.198246, 34.851696, 34.460796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231089, 34.432323, 33.795181>,  <26.331255, 34.167095, 34.521061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231089, 34.432323, 33.795181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358276, 34.735344, 34.023220>,  <26.434589, 34.917156, 34.160042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358276, 34.735344, 34.023220>,  <26.231089, 34.432323, 33.795181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358276, 34.735344, 34.023220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832261, 0.064999, -0.550561,
		-0.454135, 0.649529, -0.609814,
		0.317968, 0.757553, 0.570096,
		26.453667, 34.962608, 34.194248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550663, 34.866211, 33.331223>,  <26.231089, 34.432323, 33.795181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550663, 34.866211, 33.331223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715204, 34.921169, 33.691647>,  <26.813929, 34.954144, 33.907902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715204, 34.921169, 33.691647>,  <26.550663, 34.866211, 33.331223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715204, 34.921169, 33.691647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875912, 0.213860, -0.432483,
		-0.252122, 0.967154, -0.032375,
		0.411353, 0.137397, 0.901061,
		26.838610, 34.962387, 33.961964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814930, 35.581493, 33.488510>,  <26.550663, 34.866211, 33.331223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814930, 35.581493, 33.488510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035397, 35.345726, 33.724747>,  <27.167677, 35.204266, 33.866489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035397, 35.345726, 33.724747>,  <26.814930, 35.581493, 33.488510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035397, 35.345726, 33.724747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832456, 0.340223, -0.437339,
		0.056841, 0.732692, 0.678183,
		0.551168, -0.589416, 0.590595,
		27.200747, 35.168900, 33.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396873, 36.000607, 33.633862>,  <26.814930, 35.581493, 33.488510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396873, 36.000607, 33.633862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502636, 35.628880, 33.736973>,  <27.566093, 35.405842, 33.798840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502636, 35.628880, 33.736973>,  <27.396873, 36.000607, 33.633862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502636, 35.628880, 33.736973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900113, 0.141832, -0.411922,
		0.346246, 0.340948, 0.873996,
		0.264404, -0.929322, 0.257783,
		27.581957, 35.350082, 33.814308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947376, 36.057674, 34.108902>,  <27.396873, 36.000607, 33.633862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947376, 36.057674, 34.108902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936275, 35.720963, 33.893257>,  <27.929615, 35.518936, 33.763870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936275, 35.720963, 33.893257>,  <27.947376, 36.057674, 34.108902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936275, 35.720963, 33.893257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896958, 0.217090, -0.385145,
		0.441242, -0.494249, 0.749014,
		-0.027754, -0.841777, -0.539111,
		27.927950, 35.468430, 33.731525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412790, 35.573238, 34.294735>,  <27.947376, 36.057674, 34.108902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412790, 35.573238, 34.294735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351542, 35.518303, 33.903290>,  <28.314793, 35.485340, 33.668423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351542, 35.518303, 33.903290>,  <28.412790, 35.573238, 34.294735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351542, 35.518303, 33.903290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960924, 0.210401, -0.179880,
		0.230607, -0.967920, 0.099756,
		-0.153121, -0.137340, -0.978618,
		28.305605, 35.477100, 33.609703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928015, 35.053078, 34.020535>,  <28.412790, 35.573238, 34.294735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928015, 35.053078, 34.020535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779398, 35.317654, 33.759937>,  <28.690228, 35.476402, 33.603577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779398, 35.317654, 33.759937>,  <28.928015, 35.053078, 34.020535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779398, 35.317654, 33.759937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915107, 0.379303, -0.136780,
		0.156642, -0.647008, -0.746220,
		-0.371542, 0.661445, -0.651497,
		28.667936, 35.516087, 33.564487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177023, 34.996990, 33.320602>,  <28.928015, 35.053078, 34.020535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177023, 34.996990, 33.320602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071573, 35.379963, 33.367638>,  <29.008303, 35.609745, 33.395859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071573, 35.379963, 33.367638>,  <29.177023, 34.996990, 33.320602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071573, 35.379963, 33.367638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915954, 0.286689, -0.280781,
		-0.302540, 0.033687, -0.952541,
		-0.263625, 0.957431, 0.117591,
		28.992485, 35.667191, 33.402916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819126, 34.363750, 33.606956>,  <29.177023, 34.996990, 33.320602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819126, 34.363750, 33.606956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820066, 33.965862, 33.565910>,  <28.820631, 33.727131, 33.541283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820066, 33.965862, 33.565910>,  <28.819126, 34.363750, 33.606956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820066, 33.965862, 33.565910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714690, 0.070102, -0.695920,
		0.699438, 0.074976, -0.710750,
		0.002353, -0.994718, -0.102617,
		28.820772, 33.667446, 33.535126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771938, 34.111866, 32.920063>,  <28.819126, 34.363750, 33.606956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771938, 34.111866, 32.920063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645729, 33.799507, 33.135712>,  <28.570004, 33.612091, 33.265102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645729, 33.799507, 33.135712>,  <28.771938, 34.111866, 32.920063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645729, 33.799507, 33.135712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759243, -0.133047, -0.637062,
		0.569206, -0.610331, -0.550908,
		-0.315522, -0.780893, 0.539121,
		28.551073, 33.565239, 33.297447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128952, 34.262157, 33.345879>,  <28.771938, 34.111866, 32.920063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128952, 34.262157, 33.345879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068073, 34.642696, 33.453045>,  <28.031546, 34.871021, 33.517345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068073, 34.642696, 33.453045>,  <28.128952, 34.262157, 33.345879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068073, 34.642696, 33.453045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845105, -0.265820, 0.463829,
		0.512478, -0.155820, 0.844445,
		-0.152197, 0.951346, 0.267911,
		28.022415, 34.928101, 33.533417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088932, 34.126801, 34.069183>,  <28.128952, 34.262157, 33.345879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088932, 34.126801, 34.069183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925467, 34.486626, 34.007496>,  <27.827387, 34.702522, 33.970486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925467, 34.486626, 34.007496>,  <28.088932, 34.126801, 34.069183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925467, 34.486626, 34.007496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725858, -0.217903, 0.652417,
		0.553286, 0.378556, 0.742004,
		-0.408662, 0.899563, -0.154215,
		27.802868, 34.756493, 33.961231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794279, 34.383091, 34.699886>,  <28.088932, 34.126801, 34.069183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794279, 34.383091, 34.699886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608601, 34.615299, 34.432297>,  <27.497192, 34.754623, 34.271744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608601, 34.615299, 34.432297>,  <27.794279, 34.383091, 34.699886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608601, 34.615299, 34.432297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828110, -0.016480, 0.560323,
		0.314252, 0.814081, 0.488382,
		-0.464197, 0.580517, -0.668970,
		27.469341, 34.789455, 34.231606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434763, 34.887165, 35.120949>,  <27.794279, 34.383091, 34.699886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434763, 34.887165, 35.120949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241528, 34.896828, 34.770855>,  <27.125587, 34.902626, 34.560799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241528, 34.896828, 34.770855>,  <27.434763, 34.887165, 35.120949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241528, 34.896828, 34.770855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875541, -0.004768, 0.483121,
		0.007500, 0.999697, 0.023457,
		-0.483086, 0.024161, -0.875239,
		27.096601, 34.904076, 34.508282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980482, 35.505531, 34.992287>,  <27.434763, 34.887165, 35.120949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980482, 35.505531, 34.992287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840899, 35.180809, 34.805012>,  <26.757149, 34.985973, 34.692646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840899, 35.180809, 34.805012>,  <26.980482, 35.505531, 34.992287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840899, 35.180809, 34.805012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836875, 0.045114, 0.545533,
		-0.421746, 0.582180, -0.695124,
		-0.348958, -0.811808, -0.468185,
		26.736212, 34.937267, 34.664555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200874, 35.674606, 35.761993>,  <26.980482, 35.505531, 34.992287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200874, 35.674606, 35.761993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537903, 35.678017, 35.977402>,  <27.740120, 35.680065, 36.106647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537903, 35.678017, 35.977402>,  <27.200874, 35.674606, 35.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537903, 35.678017, 35.977402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180115, 0.946768, 0.266813,
		-0.507575, -0.321804, 0.799256,
		0.842571, 0.008530, 0.538517,
		27.790674, 35.680576, 36.138958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066996, 35.841183, 36.528461>,  <27.200874, 35.674606, 35.761993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066996, 35.841183, 36.528461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415010, 35.973755, 36.382481>,  <27.623819, 36.053299, 36.294891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415010, 35.973755, 36.382481>,  <27.066996, 35.841183, 36.528461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415010, 35.973755, 36.382481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281395, 0.941713, 0.184371,
		0.404788, -0.057713, 0.912587,
		0.870036, 0.331429, -0.364954,
		27.676022, 36.073185, 36.272995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391682, 36.416515, 36.976242>,  <27.066996, 35.841183, 36.528461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391682, 36.416515, 36.976242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567905, 36.425915, 36.617275>,  <27.673639, 36.431553, 36.401894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567905, 36.425915, 36.617275>,  <27.391682, 36.416515, 36.976242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567905, 36.425915, 36.617275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220852, 0.971771, -0.082978,
		0.870134, 0.234753, 0.433310,
		0.440557, 0.023495, -0.897417,
		27.700073, 36.432964, 36.348049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874519, 37.033577, 36.874859>,  <27.391682, 36.416515, 36.976242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874519, 37.033577, 36.874859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769108, 36.939587, 36.500622>,  <27.705860, 36.883190, 36.276077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769108, 36.939587, 36.500622>,  <27.874519, 37.033577, 36.874859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769108, 36.939587, 36.500622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096538, 0.971434, -0.216787,
		0.959808, 0.033190, -0.278688,
		-0.263532, -0.234978, -0.935594,
		27.690048, 36.869095, 36.219944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307859, 37.420605, 36.501747>,  <27.874519, 37.033577, 36.874859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307859, 37.420605, 36.501747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988239, 37.313263, 36.286526>,  <27.796467, 37.248859, 36.157394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988239, 37.313263, 36.286526>,  <28.307859, 37.420605, 36.501747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988239, 37.313263, 36.286526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145190, 0.954511, -0.260440,
		0.583468, -0.129985, -0.801666,
		-0.799052, -0.268352, -0.538055,
		27.748524, 37.232758, 36.125111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039934, 37.757637, 35.896080>,  <28.307859, 37.420605, 36.501747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039934, 37.757637, 35.896080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649563, 37.841759, 35.872967>,  <27.415340, 37.892231, 35.859100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649563, 37.841759, 35.872967>,  <28.039934, 37.757637, 35.896080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649563, 37.841759, 35.872967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049960, 0.473449, 0.879403,
		0.212302, 0.855346, -0.472558,
		-0.975926, 0.210308, -0.057781,
		27.356785, 37.904850, 35.855633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945780, 38.481712, 36.013504>,  <28.039934, 37.757637, 35.896080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945780, 38.481712, 36.013504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594318, 38.300964, 36.075188>,  <27.383442, 38.192516, 36.112198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594318, 38.300964, 36.075188>,  <27.945780, 38.481712, 36.013504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594318, 38.300964, 36.075188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017843, 0.353840, 0.935136,
		-0.477122, 0.818911, -0.318966,
		-0.878656, -0.451866, 0.154213,
		27.330721, 38.165405, 36.121452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525963, 39.000008, 35.743477>,  <27.945780, 38.481712, 36.013504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525963, 39.000008, 35.743477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698544, 38.983303, 36.103943>,  <28.802092, 38.973282, 36.320225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698544, 38.983303, 36.103943>,  <28.525963, 39.000008, 35.743477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698544, 38.983303, 36.103943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621508, 0.737812, -0.263366,
		-0.653895, 0.673713, 0.344285,
		0.431451, -0.041762, 0.901169,
		28.827978, 38.970776, 36.374294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376261, 39.537891, 36.104874>,  <28.525963, 39.000008, 35.743477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376261, 39.537891, 36.104874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720659, 39.454021, 36.290226>,  <28.927298, 39.403698, 36.401436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720659, 39.454021, 36.290226>,  <28.376261, 39.537891, 36.104874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720659, 39.454021, 36.290226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379821, 0.870997, -0.311611,
		-0.338265, 0.444297, 0.829565,
		0.860996, -0.209679, 0.463381,
		28.978958, 39.391117, 36.429241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604229, 40.050991, 36.608448>,  <28.376261, 39.537891, 36.104874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604229, 40.050991, 36.608448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916065, 39.869755, 36.435501>,  <29.103167, 39.761013, 36.331734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916065, 39.869755, 36.435501>,  <28.604229, 40.050991, 36.608448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916065, 39.869755, 36.435501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390658, 0.891404, -0.229751,
		0.489515, 0.010204, 0.871935,
		0.779591, -0.453095, -0.432369,
		29.149942, 39.733826, 36.305790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386631, 40.283646, 36.826260>,  <28.604229, 40.050991, 36.608448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386631, 40.283646, 36.826260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346087, 40.168240, 36.445423>,  <29.321760, 40.098995, 36.216919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346087, 40.168240, 36.445423>,  <29.386631, 40.283646, 36.826260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346087, 40.168240, 36.445423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481773, 0.823085, -0.300709,
		0.870414, -0.489175, 0.055567,
		-0.101363, -0.288512, -0.952096,
		29.315678, 40.081684, 36.159794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998512, 40.386074, 36.498230>,  <29.386631, 40.283646, 36.826260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998512, 40.386074, 36.498230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739260, 40.390377, 36.193649>,  <29.583708, 40.392960, 36.010902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739260, 40.390377, 36.193649>,  <29.998512, 40.386074, 36.498230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739260, 40.390377, 36.193649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439567, 0.821792, -0.362545,
		0.621855, -0.569687, -0.537358,
		-0.648133, 0.010755, -0.761451,
		29.544819, 40.393604, 35.965214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377083, 40.396194, 35.753834>,  <29.998512, 40.386074, 36.498230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377083, 40.396194, 35.753834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018507, 40.567661, 35.708855>,  <29.803362, 40.670540, 35.681866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018507, 40.567661, 35.708855>,  <30.377083, 40.396194, 35.753834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018507, 40.567661, 35.708855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427447, 0.769350, -0.474753,
		-0.116995, -0.473654, -0.872906,
		-0.896438, 0.428665, -0.112452,
		29.749575, 40.696262, 35.675117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906170, 40.793850, 35.576626>,  <30.377083, 40.396194, 35.753834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906170, 40.793850, 35.576626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236195, 41.011250, 35.514809>,  <31.434210, 41.141689, 35.477718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236195, 41.011250, 35.514809>,  <30.906170, 40.793850, 35.576626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236195, 41.011250, 35.514809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277813, 0.152033, -0.948528,
		-0.492028, 0.825528, 0.276427,
		0.825063, 0.543497, -0.154538,
		31.483713, 41.174297, 35.468449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862513, 41.367050, 36.102695>,  <30.906170, 40.793850, 35.576626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862513, 41.367050, 36.102695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678476, 41.552788, 35.799988>,  <30.568054, 41.664230, 35.618362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678476, 41.552788, 35.799988>,  <30.862513, 41.367050, 36.102695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678476, 41.552788, 35.799988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777738, -0.621933, 0.091228,
		-0.428301, 0.630544, 0.647281,
		-0.460089, 0.464342, -0.756773,
		30.540449, 41.692089, 35.572956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164028, 41.548046, 36.292297>,  <30.862513, 41.367050, 36.102695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164028, 41.548046, 36.292297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161266, 41.508167, 35.894299>,  <30.159609, 41.484241, 35.655499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161266, 41.508167, 35.894299>,  <30.164028, 41.548046, 36.292297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161266, 41.508167, 35.894299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825783, -0.560581, 0.061901,
		-0.563946, 0.822077, -0.078456,
		-0.006907, -0.099696, -0.994994,
		30.159195, 41.478260, 35.595798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540606, 41.826820, 36.073895>,  <30.164028, 41.548046, 36.292297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540606, 41.826820, 36.073895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655733, 41.574677, 35.785503>,  <29.724810, 41.423389, 35.612469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655733, 41.574677, 35.785503>,  <29.540606, 41.826820, 36.073895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655733, 41.574677, 35.785503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907444, -0.420144, 0.005078,
		-0.306114, 0.652781, -0.692943,
		0.287821, -0.630361, -0.720974,
		29.742079, 41.385567, 35.569210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966330, 41.460449, 35.902313>,  <29.540606, 41.826820, 36.073895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966330, 41.460449, 35.902313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236540, 41.255753, 35.689980>,  <29.398666, 41.132935, 35.562580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236540, 41.255753, 35.689980>,  <28.966330, 41.460449, 35.902313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236540, 41.255753, 35.689980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652239, -0.750491, -0.106522,
		-0.343876, 0.418191, -0.840753,
		0.675524, -0.511742, -0.530836,
		29.439198, 41.102230, 35.530727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664209, 41.037476, 35.294899>,  <28.966330, 41.460449, 35.902313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664209, 41.037476, 35.294899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012781, 40.869522, 35.396336>,  <29.221924, 40.768749, 35.457195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012781, 40.869522, 35.396336>,  <28.664209, 41.037476, 35.294899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012781, 40.869522, 35.396336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443737, -0.895138, 0.042718,
		0.209061, -0.149753, -0.966368,
		0.871431, -0.419883, 0.253589,
		29.274210, 40.743557, 35.472412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685068, 40.384197, 35.023808>,  <28.664209, 41.037476, 35.294899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685068, 40.384197, 35.023808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962927, 40.375690, 35.311424>,  <29.129642, 40.370586, 35.483994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962927, 40.375690, 35.311424>,  <28.685068, 40.384197, 35.023808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962927, 40.375690, 35.311424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242646, -0.947909, 0.206377,
		0.677193, -0.317830, -0.663622,
		0.694646, -0.021269, 0.719037,
		29.171320, 40.369308, 35.527134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093023, 39.812763, 34.911148>,  <28.685068, 40.384197, 35.023808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093023, 39.812763, 34.911148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139364, 39.903107, 35.298046>,  <29.167170, 39.957314, 35.530186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139364, 39.903107, 35.298046>,  <29.093023, 39.812763, 34.911148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139364, 39.903107, 35.298046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021299, -0.974146, 0.224914,
		0.993038, -0.005455, -0.117666,
		0.115851, 0.225855, 0.967248,
		29.174120, 39.970863, 35.588219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748848, 39.459984, 35.287724>,  <29.093023, 39.812763, 34.911148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748848, 39.459984, 35.287724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445574, 39.541847, 35.535358>,  <29.263609, 39.590965, 35.683941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445574, 39.541847, 35.535358>,  <29.748848, 39.459984, 35.287724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445574, 39.541847, 35.535358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127221, -0.977650, 0.167380,
		0.639505, 0.048145, 0.767278,
		-0.758187, 0.204654, 0.619087,
		29.218117, 39.603245, 35.721085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202991, 39.850487, 34.781849>,  <29.748848, 39.459984, 35.287724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202991, 39.850487, 34.781849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394442, 40.199429, 34.821697>,  <30.509312, 40.408794, 34.845608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394442, 40.199429, 34.821697>,  <30.202991, 39.850487, 34.781849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394442, 40.199429, 34.821697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863992, -0.447735, -0.230330,
		-0.156326, 0.196312, -0.968000,
		0.478624, 0.872350, 0.099620,
		30.538029, 40.461132, 34.851582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920406, 40.571075, 34.556004>,  <30.202991, 39.850487, 34.781849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920406, 40.571075, 34.556004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863247, 40.824692, 34.859997>,  <29.828951, 40.976860, 35.042393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863247, 40.824692, 34.859997>,  <29.920406, 40.571075, 34.556004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863247, 40.824692, 34.859997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941983, 0.322762, -0.092155,
		-0.303723, 0.702720, -0.643379,
		-0.142899, 0.634042, 0.759981,
		29.820377, 41.014904, 35.087990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210304, 41.298504, 34.341843>,  <29.920406, 40.571075, 34.556004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210304, 41.298504, 34.341843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182600, 41.367310, 34.734905>,  <30.165977, 41.408592, 34.970741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182600, 41.367310, 34.734905>,  <30.210304, 41.298504, 34.341843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182600, 41.367310, 34.734905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758714, 0.648649, -0.060066,
		-0.647732, 0.741395, -0.175432,
		-0.069261, 0.172009, 0.982657,
		30.161821, 41.418911, 35.029701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090792, 42.000534, 34.453106>,  <30.210304, 41.298504, 34.341843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090792, 42.000534, 34.453106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295738, 41.796593, 34.729519>,  <30.418707, 41.674229, 34.895367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295738, 41.796593, 34.729519>,  <30.090792, 42.000534, 34.453106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295738, 41.796593, 34.729519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728901, 0.683672, -0.036016,
		-0.454076, 0.522147, 0.721926,
		0.512366, -0.509858, 0.691033,
		30.449448, 41.643635, 34.936829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351744, 42.566246, 34.779057>,  <30.090792, 42.000534, 34.453106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351744, 42.566246, 34.779057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589943, 42.257584, 34.868431>,  <30.732862, 42.072384, 34.922054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589943, 42.257584, 34.868431>,  <30.351744, 42.566246, 34.779057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589943, 42.257584, 34.868431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754040, 0.632837, 0.175904,
		-0.277136, 0.063728, 0.958715,
		0.595500, -0.771658, 0.223435,
		30.768593, 42.026085, 34.935463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589657, 42.750435, 35.347065>,  <30.351744, 42.566246, 34.779057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589657, 42.750435, 35.347065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855803, 42.491760, 35.197887>,  <31.015490, 42.336555, 35.108383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855803, 42.491760, 35.197887>,  <30.589657, 42.750435, 35.347065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855803, 42.491760, 35.197887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705812, 0.707672, 0.032112,
		0.243154, -0.284593, 0.927299,
		0.665362, -0.646690, -0.372942,
		31.055410, 42.297752, 35.086006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234917, 42.717648, 35.783867>,  <30.589657, 42.750435, 35.347065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234917, 42.717648, 35.783867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315022, 42.668388, 35.395077>,  <31.363085, 42.638832, 35.161804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315022, 42.668388, 35.395077>,  <31.234917, 42.717648, 35.783867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315022, 42.668388, 35.395077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717334, 0.694155, 0.059844,
		0.667329, -0.709213, 0.227352,
		0.200260, -0.123151, -0.971972,
		31.375099, 42.631443, 35.103485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858513, 42.822285, 35.711884>,  <31.234917, 42.717648, 35.783867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858513, 42.822285, 35.711884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780867, 42.847111, 35.320278>,  <31.734278, 42.862007, 35.085316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780867, 42.847111, 35.320278>,  <31.858513, 42.822285, 35.711884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780867, 42.847111, 35.320278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704643, 0.703156, -0.095136,
		0.682493, -0.708322, -0.180231,
		-0.194117, 0.062069, -0.979013,
		31.722631, 42.865730, 35.026573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506184, 42.853661, 35.459171>,  <31.858513, 42.822285, 35.711884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506184, 42.853661, 35.459171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272060, 42.973186, 35.157677>,  <32.131584, 43.044903, 34.976780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272060, 42.973186, 35.157677>,  <32.506184, 42.853661, 35.459171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272060, 42.973186, 35.157677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514978, 0.855035, -0.060933,
		0.626266, -0.423823, -0.654343,
		-0.585311, 0.298812, -0.753739,
		32.096466, 43.062832, 34.931557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954762, 43.089966, 34.867592>,  <32.506184, 42.853661, 35.459171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954762, 43.089966, 34.867592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601223, 43.272099, 34.824726>,  <32.389099, 43.381378, 34.799007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601223, 43.272099, 34.824726>,  <32.954762, 43.089966, 34.867592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601223, 43.272099, 34.824726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461766, 0.885889, -0.044418,
		0.074715, -0.088746, -0.993248,
		-0.883850, 0.455329, -0.107169,
		32.336067, 43.408699, 34.792576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307259, 43.574268, 34.521881>,  <32.954762, 43.089966, 34.867592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307259, 43.574268, 34.521881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940720, 43.669090, 34.650948>,  <32.720795, 43.725983, 34.728386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940720, 43.669090, 34.650948>,  <33.307259, 43.574268, 34.521881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940720, 43.669090, 34.650948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198768, 0.968906, -0.147352,
		-0.347561, -0.070891, -0.934974,
		-0.916347, 0.237056, 0.322663,
		32.665817, 43.740208, 34.747746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882351, 43.863373, 33.986732>,  <33.307259, 43.574268, 34.521881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882351, 43.863373, 33.986732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799526, 43.986423, 34.358215>,  <32.749832, 44.060253, 34.581104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799526, 43.986423, 34.358215>,  <32.882351, 43.863373, 33.986732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799526, 43.986423, 34.358215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467181, 0.865142, -0.182406,
		-0.859574, 0.396103, -0.322855,
		-0.207063, 0.307623, 0.928705,
		32.737408, 44.078709, 34.636826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771313, 44.611702, 33.927155>,  <32.882351, 43.863373, 33.986732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771313, 44.611702, 33.927155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914341, 44.482655, 34.277710>,  <33.000156, 44.405224, 34.488045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914341, 44.482655, 34.277710>,  <32.771313, 44.611702, 33.927155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914341, 44.482655, 34.277710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695185, 0.718577, -0.019112,
		-0.623587, 0.616087, 0.481223,
		0.357570, -0.322621, 0.876390,
		33.021610, 44.385868, 34.540627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009766, 45.277447, 33.978012>,  <32.771313, 44.611702, 33.927155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009766, 45.277447, 33.978012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831562, 45.443794, 34.295143>,  <32.724640, 45.543602, 34.485420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831562, 45.443794, 34.295143>,  <33.009766, 45.277447, 33.978012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831562, 45.443794, 34.295143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205550, -0.909421, 0.361528,
		0.871360, -0.001900, 0.490641,
		-0.445513, 0.415872, 0.792823,
		32.697906, 45.568558, 34.532990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328316, 44.911339, 34.617496>,  <33.009766, 45.277447, 33.978012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328316, 44.911339, 34.617496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949009, 45.036728, 34.637566>,  <32.721424, 45.111961, 34.649609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949009, 45.036728, 34.637566>,  <33.328316, 44.911339, 34.617496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949009, 45.036728, 34.637566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306564, -0.945267, 0.111754,
		0.082461, 0.090591, 0.992468,
		-0.948271, 0.313471, 0.050176,
		32.664528, 45.130768, 34.652618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045486, 44.617725, 35.190048>,  <33.328316, 44.911339, 34.617496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045486, 44.617725, 35.190048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729057, 44.693146, 34.957272>,  <32.539200, 44.738400, 34.817604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729057, 44.693146, 34.957272>,  <33.045486, 44.617725, 35.190048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729057, 44.693146, 34.957272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310916, -0.943203, 0.117042,
		-0.526821, 0.273523, 0.804764,
		-0.791070, 0.188554, -0.581942,
		32.491737, 44.749710, 34.782688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353989, 44.464760, 35.565983>,  <33.045486, 44.617725, 35.190048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353989, 44.464760, 35.565983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311249, 44.446735, 35.168682>,  <32.285606, 44.435921, 34.930302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311249, 44.446735, 35.168682>,  <32.353989, 44.464760, 35.565983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311249, 44.446735, 35.168682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294554, -0.952694, 0.074909,
		-0.949643, 0.300570, 0.088521,
		-0.106848, -0.045062, -0.993254,
		32.279194, 44.433216, 34.870705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629585, 44.287891, 35.354515>,  <32.353989, 44.464760, 35.565983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629585, 44.287891, 35.354515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889366, 44.146759, 35.085079>,  <32.045235, 44.062080, 34.923416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889366, 44.146759, 35.085079>,  <31.629585, 44.287891, 35.354515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889366, 44.146759, 35.085079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450396, -0.892215, 0.033093,
		-0.612662, 0.281889, -0.738366,
		0.649452, -0.352832, -0.673588,
		32.084202, 44.040909, 34.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180298, 43.968910, 34.844555>,  <31.629585, 44.287891, 35.354515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180298, 43.968910, 34.844555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547911, 43.817898, 34.799206>,  <31.768478, 43.727291, 34.771996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547911, 43.817898, 34.799206>,  <31.180298, 43.968910, 34.844555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547911, 43.817898, 34.799206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391795, -0.906490, -0.157391,
		-0.043348, 0.189065, -0.981007,
		0.919031, -0.377532, -0.113370,
		31.823620, 43.704639, 34.765194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110983, 43.535397, 34.321125>,  <31.180298, 43.968910, 34.844555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110983, 43.535397, 34.321125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439205, 43.414948, 34.515453>,  <31.636139, 43.342678, 34.632050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439205, 43.414948, 34.515453>,  <31.110983, 43.535397, 34.321125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439205, 43.414948, 34.515453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188252, -0.944926, -0.267723,
		0.539678, 0.128225, -0.832049,
		0.820554, -0.301119, 0.485818,
		31.685371, 43.324612, 34.661198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423296, 43.087227, 33.762882>,  <31.110983, 43.535397, 34.321125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423296, 43.087227, 33.762882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490602, 43.029705, 34.152962>,  <31.530987, 42.995193, 34.387009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490602, 43.029705, 34.152962>,  <31.423296, 43.087227, 33.762882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490602, 43.029705, 34.152962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245314, -0.964286, -0.099865,
		0.954729, -0.222425, -0.197534,
		0.168267, -0.143801, 0.975196,
		31.541082, 42.986565, 34.445522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771107, 42.456604, 33.876915>,  <31.423296, 43.087227, 33.762882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771107, 42.456604, 33.876915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608839, 42.520237, 34.236942>,  <31.511478, 42.558418, 34.452957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608839, 42.520237, 34.236942>,  <31.771107, 42.456604, 33.876915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608839, 42.520237, 34.236942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275433, -0.960239, 0.045581,
		0.871532, -0.229418, 0.433358,
		-0.405670, 0.159086, 0.900069,
		31.487139, 42.567963, 34.506962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106258, 41.961952, 34.414303>,  <31.771107, 42.456604, 33.876915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106258, 41.961952, 34.414303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717831, 42.033203, 34.477928>,  <31.484774, 42.075954, 34.516102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717831, 42.033203, 34.477928>,  <32.106258, 41.961952, 34.414303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717831, 42.033203, 34.477928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176040, -0.984007, 0.027211,
		0.161362, -0.001577, 0.986894,
		-0.971068, 0.178123, 0.159059,
		31.426510, 42.086639, 34.525646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848377, 41.644257, 35.114773>,  <32.106258, 41.961952, 34.414303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848377, 41.644257, 35.114773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585091, 41.649776, 34.813694>,  <31.427118, 41.653088, 34.633045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585091, 41.649776, 34.813694>,  <31.848377, 41.644257, 35.114773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585091, 41.649776, 34.813694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119713, -0.985192, -0.122743,
		-0.743248, -0.170900, 0.646819,
		-0.658218, 0.013796, -0.752701,
		31.387625, 41.653915, 34.587883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404491, 41.115189, 34.795383>,  <31.848377, 41.644257, 35.114773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404491, 41.115189, 34.795383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379185, 41.126987, 34.396358>,  <32.364002, 41.134068, 34.156944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379185, 41.126987, 34.396358>,  <32.404491, 41.115189, 34.795383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379185, 41.126987, 34.396358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393790, -0.917722, -0.052111,
		-0.917021, -0.396126, 0.046445,
		-0.063266, 0.029498, -0.997561,
		32.360207, 41.135838, 34.097092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172207, 40.404198, 34.626320>,  <32.404491, 41.115189, 34.795383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172207, 40.404198, 34.626320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358551, 40.600639, 34.331894>,  <32.470356, 40.718506, 34.155239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358551, 40.600639, 34.331894>,  <32.172207, 40.404198, 34.626320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358551, 40.600639, 34.331894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528144, -0.821744, -0.214012,
		-0.709959, -0.289049, -0.642190,
		0.465856, 0.491108, -0.736065,
		32.498306, 40.747971, 34.111076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006130, 40.051231, 34.016663>,  <32.172207, 40.404198, 34.626320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006130, 40.051231, 34.016663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354607, 40.229042, 33.933323>,  <32.563694, 40.335728, 33.883320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354607, 40.229042, 33.933323>,  <32.006130, 40.051231, 34.016663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354607, 40.229042, 33.933323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402796, -0.889847, -0.214307,
		-0.280667, 0.102780, -0.954286,
		0.871196, 0.444531, -0.208351,
		32.615967, 40.362400, 33.870819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160492, 39.770611, 33.346699>,  <32.006130, 40.051231, 34.016663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160492, 39.770611, 33.346699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495407, 39.911880, 33.513653>,  <32.696358, 39.996643, 33.613823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495407, 39.911880, 33.513653>,  <32.160492, 39.770611, 33.346699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495407, 39.911880, 33.513653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481626, -0.837760, -0.257283,
		0.258799, 0.416444, -0.871549,
		0.837293, 0.353176, 0.417382,
		32.746593, 40.017834, 33.638866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688366, 39.781284, 32.816231>,  <32.160492, 39.770611, 33.346699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688366, 39.781284, 32.816231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872433, 39.784985, 33.171345>,  <32.982872, 39.787205, 33.384411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872433, 39.784985, 33.171345>,  <32.688366, 39.781284, 32.816231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872433, 39.784985, 33.171345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510003, -0.821259, -0.255796,
		0.726732, 0.570481, -0.382638,
		0.460172, 0.009252, 0.887782,
		33.010483, 39.787762, 33.437679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374172, 39.695351, 32.664242>,  <32.688366, 39.781284, 32.816231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374172, 39.695351, 32.664242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349556, 39.598007, 33.051434>,  <33.334785, 39.539600, 33.283749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349556, 39.598007, 33.051434>,  <33.374172, 39.695351, 32.664242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349556, 39.598007, 33.051434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594829, -0.787722, -0.160224,
		0.801493, 0.565925, 0.193229,
		-0.061536, -0.243357, 0.967983,
		33.331097, 39.525002, 33.341827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989101, 39.591087, 32.938038>,  <33.374172, 39.695351, 32.664242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989101, 39.591087, 32.938038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788425, 39.398518, 33.225521>,  <33.668018, 39.282978, 33.398010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788425, 39.398518, 33.225521>,  <33.989101, 39.591087, 32.938038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788425, 39.398518, 33.225521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657916, -0.751786, -0.044324,
		0.561652, 0.450611, 0.693900,
		-0.501691, -0.481422, 0.718706,
		33.637917, 39.254089, 33.441132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507339, 39.191719, 33.281517>,  <33.989101, 39.591087, 32.938038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507339, 39.191719, 33.281517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145142, 39.045452, 33.367657>,  <33.927822, 38.957691, 33.419342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145142, 39.045452, 33.367657>,  <34.507339, 39.191719, 33.281517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145142, 39.045452, 33.367657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314992, -0.919198, -0.236337,
		0.284373, -0.146167, 0.947506,
		-0.905490, -0.365665, 0.215353,
		33.873493, 38.935753, 33.432262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671425, 38.578835, 33.603260>,  <34.507339, 39.191719, 33.281517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671425, 38.578835, 33.603260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286224, 38.537975, 33.503498>,  <34.055103, 38.513458, 33.443642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286224, 38.537975, 33.503498>,  <34.671425, 38.578835, 33.603260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286224, 38.537975, 33.503498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179190, -0.933901, -0.309386,
		-0.201315, -0.342628, 0.917648,
		-0.962997, -0.102149, -0.249403,
		33.997326, 38.507332, 33.428677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465931, 37.955700, 33.916012>,  <34.671425, 38.578835, 33.603260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465931, 37.955700, 33.916012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227261, 38.018997, 33.601322>,  <34.084057, 38.056976, 33.412510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227261, 38.018997, 33.601322>,  <34.465931, 37.955700, 33.916012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227261, 38.018997, 33.601322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123014, -0.950740, -0.284537,
		-0.792997, -0.266555, 0.547819,
		-0.596678, 0.158247, -0.786723,
		34.048256, 38.066471, 33.365307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144985, 37.337769, 33.832413>,  <34.465931, 37.955700, 33.916012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144985, 37.337769, 33.832413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059483, 37.501671, 33.477695>,  <34.008183, 37.600014, 33.264866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059483, 37.501671, 33.477695>,  <34.144985, 37.337769, 33.832413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059483, 37.501671, 33.477695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036296, -0.910482, -0.411953,
		-0.976213, -0.055870, 0.209492,
		-0.213755, 0.409757, -0.886796,
		33.995358, 37.624599, 33.211655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750305, 36.792225, 33.436310>,  <34.144985, 37.337769, 33.832413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750305, 36.792225, 33.436310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843002, 37.050690, 33.145443>,  <33.898621, 37.205769, 32.970924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843002, 37.050690, 33.145443>,  <33.750305, 36.792225, 33.436310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843002, 37.050690, 33.145443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126880, -0.721050, -0.681167,
		-0.964467, 0.250118, -0.085113,
		0.231743, 0.646164, -0.727164,
		33.912525, 37.244537, 32.927292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202255, 36.693386, 32.918823>,  <33.750305, 36.792225, 33.436310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202255, 36.693386, 32.918823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545269, 36.837166, 32.771618>,  <33.751076, 36.923431, 32.683296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545269, 36.837166, 32.771618>,  <33.202255, 36.693386, 32.918823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545269, 36.837166, 32.771618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018877, -0.736889, -0.675750,
		-0.514078, 0.572533, -0.638694,
		0.857536, 0.359446, -0.368010,
		33.802528, 36.945000, 32.661213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244881, 36.519409, 32.255535>,  <33.202255, 36.693386, 32.918823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244881, 36.519409, 32.255535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628983, 36.625046, 32.291698>,  <33.859444, 36.688427, 32.313396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628983, 36.625046, 32.291698>,  <33.244881, 36.519409, 32.255535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628983, 36.625046, 32.291698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273914, -0.829152, -0.487317,
		-0.053736, 0.492710, -0.868533,
		0.960252, 0.264089, 0.090405,
		33.917057, 36.704273, 32.318821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482807, 36.485718, 31.531977>,  <33.244881, 36.519409, 32.255535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482807, 36.485718, 31.531977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777630, 36.458454, 31.800930>,  <33.954525, 36.442097, 31.962303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777630, 36.458454, 31.800930>,  <33.482807, 36.485718, 31.531977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777630, 36.458454, 31.800930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368336, -0.793640, -0.484214,
		0.566636, 0.604557, -0.559852,
		0.737056, -0.068159, 0.672385,
		33.998745, 36.438007, 32.002647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928074, 36.118401, 31.190414>,  <33.482807, 36.485718, 31.531977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928074, 36.118401, 31.190414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053783, 36.073170, 31.567444>,  <34.129208, 36.046032, 31.793661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053783, 36.073170, 31.567444>,  <33.928074, 36.118401, 31.190414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053783, 36.073170, 31.567444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205905, -0.961126, -0.183957,
		0.926733, 0.251893, -0.278774,
		0.314275, -0.113078, 0.942573,
		34.148067, 36.039246, 31.850216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605640, 35.788811, 31.163063>,  <33.928074, 36.118401, 31.190414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605640, 35.788811, 31.163063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431679, 35.731499, 31.518663>,  <34.327301, 35.697113, 31.732023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431679, 35.731499, 31.518663>,  <34.605640, 35.788811, 31.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431679, 35.731499, 31.518663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183056, -0.980713, -0.068505,
		0.881672, 0.132944, 0.452748,
		-0.434908, -0.143277, 0.889003,
		34.301205, 35.688515, 31.785364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937111, 35.276798, 31.263767>,  <34.605640, 35.788811, 31.163063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937111, 35.276798, 31.263767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641003, 35.248596, 31.531208>,  <34.463337, 35.231674, 31.691673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641003, 35.248596, 31.531208>,  <34.937111, 35.276798, 31.263767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641003, 35.248596, 31.531208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063681, -0.997368, -0.034669,
		0.669286, 0.016912, 0.742812,
		-0.740271, -0.070506, 0.668602,
		34.418922, 35.227444, 31.731789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200916, 34.828369, 31.860567>,  <34.937111, 35.276798, 31.263767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200916, 34.828369, 31.860567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803402, 34.796139, 31.891283>,  <34.564892, 34.776802, 31.909714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803402, 34.796139, 31.891283>,  <35.200916, 34.828369, 31.860567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803402, 34.796139, 31.891283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086676, -0.993039, 0.079756,
		0.069831, 0.085916, 0.993852,
		-0.993786, -0.080574, 0.076792,
		34.505264, 34.771965, 31.914320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074776, 34.471664, 32.485241>,  <35.200916, 34.828369, 31.860567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074776, 34.471664, 32.485241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756454, 34.427094, 32.247154>,  <34.565460, 34.400352, 32.104301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756454, 34.427094, 32.247154>,  <35.074776, 34.471664, 32.485241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756454, 34.427094, 32.247154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113672, -0.992940, 0.033905,
		-0.594792, -0.040678, 0.802850,
		-0.795802, -0.111428, -0.595217,
		34.517715, 34.393665, 32.068588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744652, 33.938747, 32.755627>,  <35.074776, 34.471664, 32.485241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744652, 33.938747, 32.755627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593948, 33.956463, 32.385525>,  <34.503525, 33.967094, 32.163464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593948, 33.956463, 32.385525>,  <34.744652, 33.938747, 32.755627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593948, 33.956463, 32.385525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121738, -0.987825, -0.096858,
		-0.918276, -0.149130, 0.366783,
		-0.376762, 0.044291, -0.925251,
		34.480919, 33.969749, 32.107948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560272, 33.189888, 32.547112>,  <34.744652, 33.938747, 32.755627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560272, 33.189888, 32.547112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516045, 33.349197, 32.182880>,  <34.489506, 33.444782, 31.964342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516045, 33.349197, 32.182880>,  <34.560272, 33.189888, 32.547112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516045, 33.349197, 32.182880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096170, -0.907608, -0.408655,
		-0.989204, -0.132757, 0.062055,
		-0.110574, 0.398275, -0.910577,
		34.482872, 33.468681, 31.909708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908485, 32.877026, 32.240864>,  <34.560272, 33.189888, 32.547112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908485, 32.877026, 32.240864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162529, 33.009022, 31.961508>,  <34.314957, 33.088219, 31.793896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162529, 33.009022, 31.961508>,  <33.908485, 32.877026, 32.240864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162529, 33.009022, 31.961508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090612, -0.866080, -0.491625,
		-0.767088, 0.375518, -0.520156,
		0.635111, 0.329987, -0.698386,
		34.353062, 33.108017, 31.751991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633293, 32.568157, 31.666189>,  <33.908485, 32.877026, 32.240864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633293, 32.568157, 31.666189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003815, 32.673431, 31.558336>,  <34.226128, 32.736595, 31.493624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003815, 32.673431, 31.558336>,  <33.633293, 32.568157, 31.666189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003815, 32.673431, 31.558336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128880, -0.893761, -0.429629,
		-0.354058, 0.363215, -0.861811,
		0.926301, 0.263183, -0.269632,
		34.281704, 32.752388, 31.477448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638462, 32.556664, 31.055227>,  <33.633293, 32.568157, 31.666189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638462, 32.556664, 31.055227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032009, 32.529678, 31.121494>,  <34.268139, 32.513485, 31.161255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032009, 32.529678, 31.121494>,  <33.638462, 32.556664, 31.055227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032009, 32.529678, 31.121494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041250, -0.815606, -0.577136,
		0.174056, 0.574661, -0.799668,
		0.983872, -0.067467, 0.165666,
		34.327171, 32.509438, 31.171194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895664, 32.464279, 30.324547>,  <33.638462, 32.556664, 31.055227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895664, 32.464279, 30.324547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183254, 32.335899, 30.571142>,  <34.355808, 32.258869, 30.719099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183254, 32.335899, 30.571142>,  <33.895664, 32.464279, 30.324547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183254, 32.335899, 30.571142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127397, -0.811110, -0.570851,
		0.683258, 0.488967, -0.542281,
		0.718977, -0.320954, 0.616491,
		34.398949, 32.239613, 30.756090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539742, 32.286552, 29.952145>,  <33.895664, 32.464279, 30.324547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539742, 32.286552, 29.952145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525265, 32.076778, 30.292418>,  <34.516579, 31.950914, 30.496582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525265, 32.076778, 30.292418>,  <34.539742, 32.286552, 29.952145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525265, 32.076778, 30.292418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238229, -0.831228, -0.502302,
		0.970534, 0.184477, 0.155020,
		-0.036194, -0.524431, 0.850683,
		34.514408, 31.919449, 30.547623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066872, 31.824045, 29.917950>,  <34.539742, 32.286552, 29.952145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066872, 31.824045, 29.917950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895065, 31.636137, 30.226452>,  <34.791981, 31.523392, 30.411552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895065, 31.636137, 30.226452>,  <35.066872, 31.824045, 29.917950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895065, 31.636137, 30.226452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146670, -0.878994, -0.453715,
		0.891070, -0.081757, 0.446442,
		-0.429514, -0.469771, 0.771254,
		34.766212, 31.495205, 30.457829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524460, 31.356585, 30.146210>,  <35.066872, 31.824045, 29.917950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524460, 31.356585, 30.146210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159634, 31.220400, 30.237625>,  <34.940739, 31.138689, 30.292475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159634, 31.220400, 30.237625>,  <35.524460, 31.356585, 30.146210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159634, 31.220400, 30.237625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214961, -0.871600, -0.440574,
		0.349194, -0.352703, 0.868138,
		-0.912061, -0.340462, 0.228540,
		34.886017, 31.118261, 30.306187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547340, 30.645708, 30.388922>,  <35.524460, 31.356585, 30.146210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547340, 30.645708, 30.388922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162716, 30.665474, 30.280880>,  <34.931942, 30.677334, 30.216055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162716, 30.665474, 30.280880>,  <35.547340, 30.645708, 30.388922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162716, 30.665474, 30.280880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087312, -0.877602, -0.471372,
		-0.260338, -0.476837, 0.839554,
		-0.961562, 0.049413, -0.270106,
		34.874249, 30.680298, 30.199848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267166, 29.958879, 30.477325>,  <35.547340, 30.645708, 30.388922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267166, 29.958879, 30.477325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006016, 30.124720, 30.223755>,  <34.849327, 30.224224, 30.071613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006016, 30.124720, 30.223755>,  <35.267166, 29.958879, 30.477325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006016, 30.124720, 30.223755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026337, -0.823973, -0.566016,
		-0.757008, -0.386234, 0.527032,
		-0.652875, 0.414598, -0.633926,
		34.810154, 30.249100, 30.033577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854034, 29.393930, 30.208860>,  <35.267166, 29.958879, 30.477325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854034, 29.393930, 30.208860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770916, 29.686148, 29.948668>,  <34.721043, 29.861477, 29.792551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770916, 29.686148, 29.948668>,  <34.854034, 29.393930, 30.208860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770916, 29.686148, 29.948668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229433, -0.682849, -0.693597,
		-0.950884, 0.005113, 0.309506,
		-0.207799, 0.730541, -0.650484,
		34.708576, 29.905310, 29.753523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309662, 29.103598, 29.919859>,  <34.854034, 29.393930, 30.208860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309662, 29.103598, 29.919859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473473, 29.367498, 29.667824>,  <34.571758, 29.525839, 29.516602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473473, 29.367498, 29.667824>,  <34.309662, 29.103598, 29.919859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473473, 29.367498, 29.667824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107146, -0.651099, -0.751392,
		-0.905982, 0.375231, -0.195956,
		0.409532, 0.659752, -0.630089,
		34.596333, 29.565424, 29.478798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045750, 28.971901, 29.345312>,  <34.309662, 29.103598, 29.919859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045750, 28.971901, 29.345312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329502, 29.205492, 29.187450>,  <34.499752, 29.345646, 29.092733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329502, 29.205492, 29.187450>,  <34.045750, 28.971901, 29.345312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329502, 29.205492, 29.187450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052401, -0.514686, -0.855776,
		-0.702879, 0.627748, -0.334505,
		0.709377, 0.583978, -0.394656,
		34.542316, 29.380686, 29.069054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748894, 29.145229, 28.705669>,  <34.045750, 28.971901, 29.345312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748894, 29.145229, 28.705669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144730, 29.201134, 28.691923>,  <34.382233, 29.234676, 28.683676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144730, 29.201134, 28.691923>,  <33.748894, 29.145229, 28.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144730, 29.201134, 28.691923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048289, -0.547350, -0.835510,
		-0.135581, 0.825152, -0.548400,
		0.989589, 0.139761, -0.034365,
		34.441605, 29.243063, 28.681614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892769, 29.317228, 27.961979>,  <33.748894, 29.145229, 28.705669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892769, 29.317228, 27.961979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232929, 29.204042, 28.139404>,  <34.437027, 29.136131, 28.245859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232929, 29.204042, 28.139404>,  <33.892769, 29.317228, 27.961979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232929, 29.204042, 28.139404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268783, -0.491101, -0.828599,
		0.452300, 0.823863, -0.341576,
		0.850400, -0.282966, 0.443565,
		34.488049, 29.119152, 28.272474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502380, 29.626404, 27.584774>,  <33.892769, 29.317228, 27.961979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502380, 29.626404, 27.584774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611359, 29.289074, 27.770065>,  <34.676746, 29.086676, 27.881241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611359, 29.289074, 27.770065>,  <34.502380, 29.626404, 27.584774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611359, 29.289074, 27.770065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225437, -0.412091, -0.882813,
		0.935389, 0.344946, 0.077844,
		0.272444, -0.843323, 0.463229,
		34.693092, 29.036077, 27.909035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835205, 29.236723, 27.074125>,  <34.502380, 29.626404, 27.584774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835205, 29.236723, 27.074125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806690, 28.969946, 27.370802>,  <34.789581, 28.809879, 27.548807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806690, 28.969946, 27.370802>,  <34.835205, 29.236723, 27.074125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806690, 28.969946, 27.370802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383590, -0.704730, -0.596837,
		0.920748, 0.241956, 0.306074,
		-0.071292, -0.666943, 0.741690,
		34.785301, 28.769863, 27.593309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503620, 28.951809, 27.036018>,  <34.835205, 29.236723, 27.074125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503620, 28.951809, 27.036018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223694, 28.702736, 27.176031>,  <35.055737, 28.553291, 27.260038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223694, 28.702736, 27.176031>,  <35.503620, 28.951809, 27.036018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223694, 28.702736, 27.176031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214643, -0.650680, -0.728384,
		0.681311, -0.434604, 0.589012,
		-0.699817, -0.622683, 0.350030,
		35.013748, 28.515930, 27.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784081, 28.172094, 26.945000>,  <35.503620, 28.951809, 27.036018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784081, 28.172094, 26.945000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385269, 28.171923, 26.975817>,  <35.145981, 28.171820, 26.994307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385269, 28.171923, 26.975817>,  <35.784081, 28.172094, 26.945000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385269, 28.171923, 26.975817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056891, -0.670200, -0.739997,
		0.051951, -0.742181, 0.668183,
		-0.997028, -0.000430, 0.077041,
		35.086163, 28.171793, 26.998928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600719, 27.447773, 26.885069>,  <35.784081, 28.172094, 26.945000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600719, 27.447773, 26.885069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280384, 27.665359, 26.784866>,  <35.088181, 27.795912, 26.724745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280384, 27.665359, 26.784866>,  <35.600719, 27.447773, 26.885069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280384, 27.665359, 26.784866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130633, -0.566891, -0.813369,
		-0.584465, -0.618649, 0.525047,
		-0.800835, 0.543974, -0.250512,
		35.040131, 27.828550, 26.709715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130123, 26.989960, 26.701178>,  <35.600719, 27.447773, 26.885069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130123, 26.989960, 26.701178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997314, 27.329288, 26.536198>,  <34.917629, 27.532887, 26.437210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997314, 27.329288, 26.536198>,  <35.130123, 26.989960, 26.701178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997314, 27.329288, 26.536198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222802, -0.495409, -0.839601,
		-0.916582, -0.186870, 0.353493,
		-0.332020, 0.848322, -0.412448,
		34.897709, 27.583784, 26.412464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582310, 26.733070, 26.320227>,  <35.130123, 26.989960, 26.701178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582310, 26.733070, 26.320227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626530, 27.103321, 26.175453>,  <34.653061, 27.325472, 26.088589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626530, 27.103321, 26.175453>,  <34.582310, 26.733070, 26.320227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626530, 27.103321, 26.175453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298693, -0.316389, -0.900378,
		-0.947925, 0.207640, 0.241502,
		0.110546, 0.925626, -0.361934,
		34.659695, 27.381008, 26.066874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892838, 27.088242, 26.118134>,  <34.582310, 26.733070, 26.320227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892838, 27.088242, 26.118134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217922, 27.201059, 25.914192>,  <34.412971, 27.268751, 25.791828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217922, 27.201059, 25.914192>,  <33.892838, 27.088242, 26.118134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217922, 27.201059, 25.914192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374406, -0.417680, -0.827867,
		-0.446452, 0.863709, -0.233854,
		0.812712, 0.282046, -0.509851,
		34.461735, 27.285673, 25.761236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823589, 27.359276, 25.427277>,  <33.892838, 27.088242, 26.118134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823589, 27.359276, 25.427277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212219, 27.270191, 25.395170>,  <34.445396, 27.216740, 25.375906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212219, 27.270191, 25.395170>,  <33.823589, 27.359276, 25.427277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212219, 27.270191, 25.395170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176524, -0.455625, -0.872494,
		0.157745, 0.861861, -0.481988,
		0.971574, -0.222714, -0.080266,
		34.503693, 27.203377, 25.371090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110241, 27.570610, 24.719044>,  <33.823589, 27.359276, 25.427277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110241, 27.570610, 24.719044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287853, 27.256123, 24.890951>,  <34.394421, 27.067430, 24.994097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287853, 27.256123, 24.890951>,  <34.110241, 27.570610, 24.719044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287853, 27.256123, 24.890951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312041, -0.585306, -0.748363,
		0.839923, 0.198187, -0.505224,
		0.444026, -0.786218, 0.429770,
		34.421062, 27.020258, 25.019882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468494, 27.370550, 24.221493>,  <34.110241, 27.570610, 24.719044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468494, 27.370550, 24.221493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370483, 27.053600, 24.444956>,  <34.311676, 26.863430, 24.579035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370483, 27.053600, 24.444956>,  <34.468494, 27.370550, 24.221493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370483, 27.053600, 24.444956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224484, -0.514197, -0.827773,
		0.943169, -0.328239, -0.051883,
		-0.245029, -0.792376, 0.558659,
		34.296974, 26.815887, 24.612553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449970, 26.662432, 23.906443>,  <34.468494, 27.370550, 24.221493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449970, 26.662432, 23.906443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177464, 26.594559, 24.191282>,  <34.013962, 26.553835, 24.362186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177464, 26.594559, 24.191282>,  <34.449970, 26.662432, 23.906443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177464, 26.594559, 24.191282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439734, -0.682844, -0.583403,
		0.585246, -0.710586, 0.390583,
		-0.681265, -0.169681, 0.712100,
		33.973083, 26.543653, 24.404913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867413, 26.665428, 23.310633>,  <34.449970, 26.662432, 23.906443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867413, 26.665428, 23.310633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027225, 26.836313, 22.986197>,  <35.123112, 26.938845, 22.791534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027225, 26.836313, 22.986197>,  <34.867413, 26.665428, 23.310633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027225, 26.836313, 22.986197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304919, 0.772465, 0.557066,
		0.864522, -0.469882, 0.178361,
		0.399533, 0.427211, -0.811089,
		35.147087, 26.964476, 22.742870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612087, 26.935978, 23.475992>,  <34.867413, 26.665428, 23.310633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612087, 26.935978, 23.475992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383289, 27.127975, 23.209932>,  <35.246010, 27.243174, 23.050297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383289, 27.127975, 23.209932>,  <35.612087, 26.935978, 23.475992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383289, 27.127975, 23.209932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022909, 0.819937, 0.571995,
		0.819937, 0.311940, -0.479996,
		-0.571995, 0.479996, -0.665151,
		35.211693, 27.271975, 23.010387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790009, 27.535498, 23.605515>,  <35.612087, 26.935978, 23.475992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790009, 27.535498, 23.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449963, 27.568878, 23.397535>,  <35.245937, 27.588905, 23.272749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449963, 27.568878, 23.397535>,  <35.790009, 27.535498, 23.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449963, 27.568878, 23.397535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206441, 0.855518, 0.474839,
		0.484448, 0.511005, -0.710059,
		-0.850113, 0.083450, -0.519946,
		35.194927, 27.593912, 23.241552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866180, 28.144392, 23.152035>,  <35.790009, 27.535498, 23.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866180, 28.144392, 23.152035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508617, 28.025921, 23.286625>,  <35.294079, 27.954838, 23.367378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508617, 28.025921, 23.286625>,  <35.866180, 28.144392, 23.152035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508617, 28.025921, 23.286625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129380, 0.889151, 0.438943,
		-0.429180, 0.348840, -0.833135,
		-0.893904, -0.296176, 0.336473,
		35.240444, 27.937069, 23.387568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384079, 28.587994, 22.999567>,  <35.866180, 28.144392, 23.152035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384079, 28.587994, 22.999567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219490, 28.408413, 23.316839>,  <35.120735, 28.300665, 23.507202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219490, 28.408413, 23.316839>,  <35.384079, 28.587994, 22.999567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219490, 28.408413, 23.316839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216476, 0.893502, 0.393436,
		-0.885341, -0.009816, -0.464839,
		-0.411473, -0.448951, 0.793179,
		35.096046, 28.273727, 23.554792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659142, 28.860170, 23.174356>,  <35.384079, 28.587994, 22.999567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659142, 28.860170, 23.174356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816204, 28.732824, 23.519485>,  <34.910442, 28.656418, 23.726562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816204, 28.732824, 23.519485>,  <34.659142, 28.860170, 23.174356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816204, 28.732824, 23.519485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178344, 0.894005, 0.411033,
		-0.902226, -0.315275, 0.294263,
		0.392661, -0.318364, 0.862822,
		34.934002, 28.637316, 23.778332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244465, 29.220100, 23.669865>,  <34.659142, 28.860170, 23.174356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244465, 29.220100, 23.669865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545670, 29.061745, 23.880102>,  <34.726391, 28.966732, 24.006245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545670, 29.061745, 23.880102>,  <34.244465, 29.220100, 23.669865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545670, 29.061745, 23.880102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006408, 0.794311, 0.607478,
		-0.657978, -0.460805, 0.595587,
		0.753010, -0.395890, 0.525592,
		34.771572, 28.942978, 24.037779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041191, 29.352623, 24.383987>,  <34.244465, 29.220100, 23.669865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041191, 29.352623, 24.383987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437672, 29.301643, 24.398258>,  <34.675560, 29.271055, 24.406820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437672, 29.301643, 24.398258>,  <34.041191, 29.352623, 24.383987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437672, 29.301643, 24.398258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096770, 0.881826, 0.461538,
		-0.090284, -0.454026, 0.886402,
		0.991204, -0.127447, 0.035679,
		34.735031, 29.263409, 24.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304276, 29.396420, 25.027657>,  <34.041191, 29.352623, 24.383987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304276, 29.396420, 25.027657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630665, 29.493414, 24.817749>,  <34.826500, 29.551611, 24.691805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630665, 29.493414, 24.817749>,  <34.304276, 29.396420, 25.027657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630665, 29.493414, 24.817749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089416, 0.843905, 0.528988,
		0.571127, -0.478565, 0.666925,
		0.815977, 0.242485, -0.524769,
		34.875458, 29.566160, 24.660318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873569, 29.608139, 25.504677>,  <34.304276, 29.396420, 25.027657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873569, 29.608139, 25.504677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978020, 29.763348, 25.151123>,  <35.040691, 29.856472, 24.938992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978020, 29.763348, 25.151123>,  <34.873569, 29.608139, 25.504677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978020, 29.763348, 25.151123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128987, 0.893417, 0.430311,
		0.956647, -0.226377, 0.183249,
		0.261130, 0.388019, -0.883885,
		35.056358, 29.879753, 24.885958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532845, 29.918997, 25.599026>,  <34.873569, 29.608139, 25.504677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532845, 29.918997, 25.599026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374054, 30.092178, 25.275307>,  <35.278778, 30.196087, 25.081076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374054, 30.092178, 25.275307>,  <35.532845, 29.918997, 25.599026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374054, 30.092178, 25.275307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087720, 0.895611, 0.436103,
		0.913628, 0.102131, -0.393515,
		-0.396976, 0.432955, -0.809296,
		35.254963, 30.222065, 25.032518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922203, 30.477570, 25.463661>,  <35.532845, 29.918997, 25.599026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922203, 30.477570, 25.463661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586151, 30.569853, 25.267313>,  <35.384521, 30.625223, 25.149504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586151, 30.569853, 25.267313>,  <35.922203, 30.477570, 25.463661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586151, 30.569853, 25.267313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002600, 0.906726, 0.421712,
		0.542380, 0.353016, -0.762367,
		-0.840129, 0.230710, -0.490872,
		35.334114, 30.639067, 25.120050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150566, 31.067154, 25.110464>,  <35.922203, 30.477570, 25.463661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150566, 31.067154, 25.110464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750797, 31.065624, 25.124010>,  <35.510937, 31.064707, 25.132137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750797, 31.065624, 25.124010>,  <36.150566, 31.067154, 25.110464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750797, 31.065624, 25.124010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005500, 0.962549, 0.271052,
		-0.033632, 0.271081, -0.961969,
		-0.999419, -0.003825, 0.033863,
		35.450970, 31.064476, 25.134169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966900, 31.630911, 24.815681>,  <36.150566, 31.067154, 25.110464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966900, 31.630911, 24.815681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636497, 31.543325, 25.023441>,  <35.438255, 31.490774, 25.148096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636497, 31.543325, 25.023441>,  <35.966900, 31.630911, 24.815681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636497, 31.543325, 25.023441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078721, 0.957246, 0.278358,
		-0.558143, 0.189037, -0.807924,
		-0.826002, -0.218964, 0.519398,
		35.388699, 31.477636, 25.179260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555378, 32.300915, 24.728712>,  <35.966900, 31.630911, 24.815681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555378, 32.300915, 24.728712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382374, 32.086819, 25.018942>,  <35.278572, 31.958363, 25.193079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382374, 32.086819, 25.018942>,  <35.555378, 32.300915, 24.728712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382374, 32.086819, 25.018942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232988, 0.843750, 0.483530,
		-0.871008, 0.040079, -0.489631,
		-0.432506, -0.535237, 0.725575,
		35.252621, 31.926247, 25.236614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807846, 32.561581, 24.728899>,  <35.555378, 32.300915, 24.728712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807846, 32.561581, 24.728899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871063, 32.382198, 25.080786>,  <34.908993, 32.274567, 25.291918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871063, 32.382198, 25.080786>,  <34.807846, 32.561581, 24.728899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871063, 32.382198, 25.080786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298663, 0.827476, 0.475484,
		-0.941181, -0.337888, -0.003158,
		0.158047, -0.448459, 0.879719,
		34.918476, 32.247662, 25.344702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198875, 32.533089, 25.159630>,  <34.807846, 32.561581, 24.728899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198875, 32.533089, 25.159630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480865, 32.499783, 25.441360>,  <34.650059, 32.479801, 25.610399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480865, 32.499783, 25.441360>,  <34.198875, 32.533089, 25.159630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480865, 32.499783, 25.441360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478640, 0.676978, 0.559110,
		-0.523366, -0.731278, 0.437401,
		0.704976, -0.083262, 0.704327,
		34.692360, 32.474804, 25.652658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842422, 32.548218, 25.767023>,  <34.198875, 32.533089, 25.159630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842422, 32.548218, 25.767023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212074, 32.655529, 25.875847>,  <34.433865, 32.719917, 25.941141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212074, 32.655529, 25.875847>,  <33.842422, 32.548218, 25.767023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212074, 32.655529, 25.875847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381896, 0.626028, 0.679885,
		0.012085, -0.732198, 0.680985,
		0.924126, 0.268282, 0.272058,
		34.489311, 32.736015, 25.957464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000816, 32.563351, 26.544020>,  <33.842422, 32.548218, 25.767023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000816, 32.563351, 26.544020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277931, 32.815224, 26.403425>,  <34.444202, 32.966347, 26.319069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277931, 32.815224, 26.403425>,  <34.000816, 32.563351, 26.544020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277931, 32.815224, 26.403425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177307, 0.621179, 0.763347,
		0.699002, -0.466518, 0.541993,
		0.692790, 0.629681, -0.351489,
		34.485767, 33.004128, 26.297979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001717, 32.911842, 27.130795>,  <34.000816, 32.563351, 26.544020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001717, 32.911842, 27.130795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203522, 33.118008, 26.853720>,  <34.324604, 33.241707, 26.687475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203522, 33.118008, 26.853720>,  <34.001717, 32.911842, 27.130795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203522, 33.118008, 26.853720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192918, 0.849287, 0.491422,
		0.841578, -0.114294, 0.527905,
		0.504509, 0.515412, -0.692691,
		34.354877, 33.272633, 26.645914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511024, 33.388573, 27.515917>,  <34.001717, 32.911842, 27.130795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511024, 33.388573, 27.515917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440899, 33.534142, 27.150003>,  <34.398823, 33.621483, 26.930456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440899, 33.534142, 27.150003>,  <34.511024, 33.388573, 27.515917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440899, 33.534142, 27.150003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360473, 0.840921, 0.403622,
		0.916146, 0.400516, -0.016244,
		-0.175317, 0.363921, -0.914782,
		34.388306, 33.643318, 26.875568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736046, 33.966846, 27.680012>,  <34.511024, 33.388573, 27.515917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736046, 33.966846, 27.680012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531643, 34.001152, 27.337896>,  <34.409000, 34.021736, 27.132627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531643, 34.001152, 27.337896>,  <34.736046, 33.966846, 27.680012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531643, 34.001152, 27.337896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415129, 0.846657, 0.332926,
		0.752689, 0.525182, -0.397043,
		-0.511006, 0.085766, -0.855288,
		34.378342, 34.026882, 27.081310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825630, 34.610134, 27.469776>,  <34.736046, 33.966846, 27.680012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825630, 34.610134, 27.469776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502289, 34.503902, 27.259619>,  <34.308285, 34.440163, 27.133524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502289, 34.503902, 27.259619>,  <34.825630, 34.610134, 27.469776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502289, 34.503902, 27.259619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380180, 0.916905, 0.121441,
		0.449484, 0.297911, -0.842148,
		-0.808349, -0.265582, -0.525394,
		34.259785, 34.424229, 27.102001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693970, 35.169933, 27.041214>,  <34.825630, 34.610134, 27.469776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693970, 35.169933, 27.041214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347729, 34.974808, 27.086432>,  <34.139984, 34.857735, 27.113562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347729, 34.974808, 27.086432>,  <34.693970, 35.169933, 27.041214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347729, 34.974808, 27.086432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457679, 0.862327, 0.216616,
		-0.203148, 0.135765, -0.969690,
		-0.865598, -0.487811, 0.113044,
		34.088051, 34.828465, 27.120344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180241, 35.595036, 26.737406>,  <34.693970, 35.169933, 27.041214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180241, 35.595036, 26.737406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970894, 35.356403, 26.980776>,  <33.845287, 35.213223, 27.126799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970894, 35.356403, 26.980776>,  <34.180241, 35.595036, 26.737406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970894, 35.356403, 26.980776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540631, 0.784384, 0.304071,
		-0.658643, -0.169794, -0.733048,
		-0.523362, -0.596583, 0.608425,
		33.813885, 35.177429, 27.163303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531452, 35.720665, 26.444468>,  <34.180241, 35.595036, 26.737406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531452, 35.720665, 26.444468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498688, 35.576591, 26.816179>,  <33.479031, 35.490147, 27.039206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498688, 35.576591, 26.816179>,  <33.531452, 35.720665, 26.444468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498688, 35.576591, 26.816179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646592, 0.728755, 0.225467,
		-0.758426, -0.582397, -0.292581,
		-0.081908, -0.360180, 0.929280,
		33.474113, 35.468536, 27.094963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812771, 35.744476, 26.602745>,  <33.531452, 35.720665, 26.444468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812771, 35.744476, 26.602745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017391, 35.739418, 26.946409>,  <33.140163, 35.736385, 27.152609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017391, 35.739418, 26.946409>,  <32.812771, 35.744476, 26.602745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017391, 35.739418, 26.946409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495603, 0.812468, 0.307040,
		-0.701923, -0.582869, 0.409350,
		0.511548, -0.012643, 0.859161,
		33.170856, 35.735626, 27.204157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309410, 35.949589, 27.043348>,  <32.812771, 35.744476, 26.602745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309410, 35.949589, 27.043348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638256, 35.985836, 27.268173>,  <32.835564, 36.007584, 27.403069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638256, 35.985836, 27.268173>,  <32.309410, 35.949589, 27.043348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638256, 35.985836, 27.268173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449976, 0.708238, 0.543985,
		-0.348777, -0.700133, 0.623032,
		0.822117, 0.090620, 0.562060,
		32.884892, 36.013023, 27.436790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116203, 36.010708, 27.681192>,  <32.309410, 35.949589, 27.043348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116203, 36.010708, 27.681192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489082, 36.149963, 27.720795>,  <32.712811, 36.233517, 27.744556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489082, 36.149963, 27.720795>,  <32.116203, 36.010708, 27.681192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489082, 36.149963, 27.720795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347655, 0.785135, 0.512542,
		0.100702, -0.512212, 0.852935,
		0.932199, 0.348141, 0.099008,
		32.768742, 36.254406, 27.750498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121948, 36.319836, 28.369621>,  <32.116203, 36.010708, 27.681192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121948, 36.319836, 28.369621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423828, 36.495117, 28.174314>,  <32.604958, 36.600285, 28.057131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423828, 36.495117, 28.174314>,  <32.121948, 36.319836, 28.369621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423828, 36.495117, 28.174314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352190, 0.898506, 0.262012,
		0.553527, -0.025777, 0.832432,
		0.754699, 0.438205, -0.488268,
		32.650238, 36.626579, 28.027834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659630, 36.548157, 28.916891>,  <32.121948, 36.319836, 28.369621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659630, 36.548157, 28.916891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709591, 36.770012, 28.587826>,  <32.739567, 36.903126, 28.390387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709591, 36.770012, 28.587826>,  <32.659630, 36.548157, 28.916891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709591, 36.770012, 28.587826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041105, 0.831337, 0.554246,
		0.991317, -0.035413, 0.126638,
		0.124906, 0.554639, -0.822663,
		32.747063, 36.936405, 28.341026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046844, 37.005447, 29.085581>,  <32.659630, 36.548157, 28.916891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046844, 37.005447, 29.085581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908909, 37.163494, 28.745001>,  <32.826149, 37.258324, 28.540653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908909, 37.163494, 28.745001>,  <33.046844, 37.005447, 29.085581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908909, 37.163494, 28.745001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172304, 0.918321, 0.356367,
		0.922711, -0.023818, -0.384755,
		-0.344841, 0.395118, -0.851450,
		32.805458, 37.282028, 28.489567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579170, 37.484753, 28.834263>,  <33.046844, 37.005447, 29.085581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579170, 37.484753, 28.834263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231667, 37.602417, 28.674900>,  <33.023163, 37.673016, 28.579283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231667, 37.602417, 28.674900>,  <33.579170, 37.484753, 28.834263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231667, 37.602417, 28.674900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181793, 0.937742, 0.295957,
		0.460659, 0.184688, -0.868149,
		-0.868760, 0.294159, -0.398405,
		32.971039, 37.690666, 28.555378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672329, 38.144447, 28.526581>,  <33.579170, 37.484753, 28.834263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672329, 38.144447, 28.526581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274132, 38.118328, 28.554083>,  <33.035213, 38.102657, 28.570585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274132, 38.118328, 28.554083>,  <33.672329, 38.144447, 28.526581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274132, 38.118328, 28.554083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038246, 0.940016, 0.338980,
		-0.086767, 0.334823, -0.938278,
		-0.995494, -0.065298, 0.068757,
		32.975483, 38.098740, 28.574709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529839, 38.768414, 28.420595>,  <33.672329, 38.144447, 28.526581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529839, 38.768414, 28.420595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184818, 38.623783, 28.562166>,  <32.977806, 38.537003, 28.647108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184818, 38.623783, 28.562166>,  <33.529839, 38.768414, 28.420595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184818, 38.623783, 28.562166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202759, 0.887895, 0.412954,
		-0.463567, 0.284432, -0.839169,
		-0.862551, -0.361581, 0.353927,
		32.926052, 38.515308, 28.668344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909576, 39.288631, 28.387039>,  <33.529839, 38.768414, 28.420595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909576, 39.288631, 28.387039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799953, 39.037296, 28.678268>,  <32.734180, 38.886497, 28.853006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799953, 39.037296, 28.678268>,  <32.909576, 39.288631, 28.387039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799953, 39.037296, 28.678268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324373, 0.773087, 0.545085,
		-0.905360, -0.086785, -0.415682,
		-0.274053, -0.628334, 0.728073,
		32.717739, 38.848797, 28.896690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333790, 39.603031, 28.743204>,  <32.909576, 39.288631, 28.387039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333790, 39.603031, 28.743204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465500, 39.329906, 29.004080>,  <32.544525, 39.166031, 29.160604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465500, 39.329906, 29.004080>,  <32.333790, 39.603031, 28.743204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465500, 39.329906, 29.004080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263648, 0.596751, 0.757877,
		-0.906680, -0.421497, 0.016473,
		0.329273, -0.682809, 0.652189,
		32.564281, 39.125065, 29.199738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774353, 39.489796, 29.144150>,  <32.333790, 39.603031, 28.743204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774353, 39.489796, 29.144150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064629, 39.349209, 29.380741>,  <32.238792, 39.264854, 29.522696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064629, 39.349209, 29.380741>,  <31.774353, 39.489796, 29.144150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064629, 39.349209, 29.380741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059413, 0.824453, 0.562803,
		-0.685453, -0.443561, 0.577414,
		0.725688, -0.351469, 0.591477,
		32.282333, 39.243767, 29.558184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558146, 39.566612, 29.844032>,  <31.774353, 39.489796, 29.144150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558146, 39.566612, 29.844032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951345, 39.512470, 29.893654>,  <32.187267, 39.479984, 29.923426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951345, 39.512470, 29.893654>,  <31.558146, 39.566612, 29.844032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951345, 39.512470, 29.893654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015868, 0.735753, 0.677063,
		-0.182918, -0.663585, 0.725394,
		0.983000, -0.135357, 0.124052,
		32.246246, 39.471863, 29.930870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684105, 39.673717, 30.625088>,  <31.558146, 39.566612, 29.844032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684105, 39.673717, 30.625088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034187, 39.691780, 30.432432>,  <32.244236, 39.702618, 30.316839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034187, 39.691780, 30.432432>,  <31.684105, 39.673717, 30.625088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034187, 39.691780, 30.432432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259192, 0.796889, 0.545699,
		0.408454, -0.602435, 0.685738,
		0.875206, 0.045155, -0.481639,
		32.296749, 39.705326, 30.287941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174866, 39.485531, 31.105591>,  <31.684105, 39.673717, 30.625088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174866, 39.485531, 31.105591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362988, 39.711327, 30.834249>,  <32.475861, 39.846806, 30.671444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362988, 39.711327, 30.834249>,  <32.174866, 39.485531, 31.105591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362988, 39.711327, 30.834249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309872, 0.614098, 0.725853,
		0.826312, -0.551576, 0.113894,
		0.470305, 0.564488, -0.678355,
		32.504078, 39.880672, 30.630743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798851, 39.729588, 31.399134>,  <32.174866, 39.485531, 31.105591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798851, 39.729588, 31.399134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755222, 39.986450, 31.095623>,  <32.729046, 40.140568, 30.913517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755222, 39.986450, 31.095623>,  <32.798851, 39.729588, 31.399134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755222, 39.986450, 31.095623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441387, 0.715241, 0.541856,
		0.890663, -0.275811, -0.361453,
		-0.109076, 0.642152, -0.758777,
		32.722500, 40.179096, 30.867990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386425, 40.067699, 31.348156>,  <32.798851, 39.729588, 31.399134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386425, 40.067699, 31.348156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142025, 40.323792, 31.161915>,  <32.995384, 40.477448, 31.050169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142025, 40.323792, 31.161915>,  <33.386425, 40.067699, 31.348156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142025, 40.323792, 31.161915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240629, 0.710533, 0.661241,
		0.754171, 0.291981, -0.588194,
		-0.611002, 0.640226, -0.465604,
		32.958725, 40.515858, 31.022234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877682, 40.557926, 31.164524>,  <33.386425, 40.067699, 31.348156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877682, 40.557926, 31.164524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504959, 40.698402, 31.201200>,  <33.281326, 40.782688, 31.223207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504959, 40.698402, 31.201200>,  <33.877682, 40.557926, 31.164524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504959, 40.698402, 31.201200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317364, 0.665714, 0.675356,
		0.176139, 0.658398, -0.731770,
		-0.931802, 0.351194, 0.091693,
		33.225418, 40.803761, 31.228708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972401, 41.110203, 30.634972>,  <33.877682, 40.557926, 31.164524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972401, 41.110203, 30.634972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330589, 41.264259, 30.545706>,  <34.545502, 41.356693, 30.492147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330589, 41.264259, 30.545706>,  <33.972401, 41.110203, 30.634972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330589, 41.264259, 30.545706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095280, -0.655574, -0.749096,
		-0.434810, 0.649528, -0.623742,
		0.895467, 0.385145, -0.223163,
		34.599228, 41.379803, 30.478756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032719, 40.995392, 29.934439>,  <33.972401, 41.110203, 30.634972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032719, 40.995392, 29.934439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403091, 41.029057, 30.081715>,  <34.625317, 41.049255, 30.170080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403091, 41.029057, 30.081715>,  <34.032719, 40.995392, 29.934439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403091, 41.029057, 30.081715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315620, -0.707848, -0.631930,
		0.207436, 0.701333, -0.681984,
		0.925934, 0.084163, 0.368188,
		34.680870, 41.054306, 30.192171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390728, 40.940876, 29.376076>,  <34.032719, 40.995392, 29.934439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390728, 40.940876, 29.376076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668846, 40.860088, 29.651981>,  <34.835716, 40.811615, 29.817524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668846, 40.860088, 29.651981>,  <34.390728, 40.940876, 29.376076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668846, 40.860088, 29.651981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451206, -0.624358, -0.637644,
		0.559443, 0.754576, -0.342984,
		0.695296, -0.201969, 0.689763,
		34.877434, 40.799500, 29.858910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965591, 41.015068, 29.041142>,  <34.390728, 40.940876, 29.376076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965591, 41.015068, 29.041142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037800, 40.758354, 29.339277>,  <35.081123, 40.604328, 29.518158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037800, 40.758354, 29.339277>,  <34.965591, 41.015068, 29.041142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037800, 40.758354, 29.339277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412847, -0.638359, -0.649657,
		0.892732, 0.424986, 0.149723,
		0.180518, -0.641782, 0.745338,
		35.091957, 40.565819, 29.562880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620644, 40.706749, 28.915863>,  <34.965591, 41.015068, 29.041142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620644, 40.706749, 28.915863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488941, 40.472775, 29.212360>,  <35.409920, 40.332390, 29.390259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488941, 40.472775, 29.212360>,  <35.620644, 40.706749, 28.915863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488941, 40.472775, 29.212360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406318, -0.796388, -0.447965,
		0.852347, 0.153684, 0.499886,
		-0.329258, -0.584934, 0.741243,
		35.390163, 40.297295, 29.434734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206242, 40.313507, 29.207214>,  <35.620644, 40.706749, 28.915863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206242, 40.313507, 29.207214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881218, 40.103928, 29.309374>,  <35.686203, 39.978180, 29.370670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881218, 40.103928, 29.309374>,  <36.206242, 40.313507, 29.207214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881218, 40.103928, 29.309374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439356, -0.838489, -0.322339,
		0.383039, -0.149708, 0.911520,
		-0.812556, -0.523950, 0.255399,
		35.637451, 39.946743, 29.385994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356319, 39.732563, 29.808956>,  <36.206242, 40.313507, 29.207214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356319, 39.732563, 29.808956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037838, 39.654163, 29.579996>,  <35.846748, 39.607124, 29.442619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037838, 39.654163, 29.579996>,  <36.356319, 39.732563, 29.808956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037838, 39.654163, 29.579996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462632, -0.806924, -0.367213,
		-0.389912, -0.557188, 0.733151,
		-0.796204, -0.195998, -0.572402,
		35.798977, 39.595364, 29.408276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188923, 38.966110, 29.930548>,  <36.356319, 39.732563, 29.808956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188923, 38.966110, 29.930548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057293, 39.102848, 29.578445>,  <35.978313, 39.184891, 29.367184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057293, 39.102848, 29.578445>,  <36.188923, 38.966110, 29.930548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057293, 39.102848, 29.578445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436294, -0.771674, -0.462781,
		-0.837471, -0.536341, 0.104794,
		-0.329075, 0.341844, -0.880257,
		35.958569, 39.205402, 29.314369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965412, 38.382820, 29.609251>,  <36.188923, 38.966110, 29.930548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965412, 38.382820, 29.609251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945415, 38.632435, 29.297335>,  <35.933418, 38.782204, 29.110186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945415, 38.632435, 29.297335>,  <35.965412, 38.382820, 29.609251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945415, 38.632435, 29.297335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309967, -0.732518, -0.606084,
		-0.949432, -0.272011, -0.156810,
		-0.049995, 0.624042, -0.779790,
		35.930416, 38.819649, 29.063398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768539, 37.974628, 29.031322>,  <35.965412, 38.382820, 29.609251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768539, 37.974628, 29.031322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918793, 38.306938, 28.867020>,  <36.008945, 38.506325, 28.768438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918793, 38.306938, 28.867020>,  <35.768539, 37.974628, 29.031322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918793, 38.306938, 28.867020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428780, -0.548711, -0.717680,
		-0.821615, 0.093457, -0.562330,
		0.375629, 0.830772, -0.410756,
		36.031483, 38.556171, 28.743793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530849, 37.958286, 28.354519>,  <35.768539, 37.974628, 29.031322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530849, 37.958286, 28.354519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851051, 38.198017, 28.353907>,  <36.043171, 38.341858, 28.353539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851051, 38.198017, 28.353907>,  <35.530849, 37.958286, 28.354519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851051, 38.198017, 28.353907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388401, -0.520714, -0.760264,
		-0.456447, 0.607997, -0.649612,
		0.800501, 0.599330, -0.001532,
		36.091202, 38.377815, 28.353447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662746, 37.949921, 27.747431>,  <35.530849, 37.958286, 28.354519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662746, 37.949921, 27.747431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011486, 38.053112, 27.913958>,  <36.220730, 38.115028, 28.013874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011486, 38.053112, 27.913958>,  <35.662746, 37.949921, 27.747431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011486, 38.053112, 27.913958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484409, -0.579628, -0.655270,
		0.072262, 0.772967, -0.630318,
		0.871852, 0.257981, 0.416317,
		36.273041, 38.130505, 28.038853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015369, 38.338142, 27.337770>,  <35.662746, 37.949921, 27.747431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015369, 38.338142, 27.337770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297150, 38.195141, 27.583029>,  <36.466217, 38.109341, 27.730183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297150, 38.195141, 27.583029>,  <36.015369, 38.338142, 27.337770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297150, 38.195141, 27.583029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438542, -0.460007, -0.772059,
		0.558063, 0.812764, -0.167271,
		0.704448, -0.357502, 0.613144,
		36.508484, 38.087891, 27.766972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736034, 38.356415, 26.960875>,  <36.015369, 38.338142, 27.337770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736034, 38.356415, 26.960875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789326, 38.094383, 27.258362>,  <36.821301, 37.937164, 27.436853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789326, 38.094383, 27.258362>,  <36.736034, 38.356415, 26.960875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789326, 38.094383, 27.258362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478115, -0.614833, -0.627206,
		0.868134, 0.439146, 0.231290,
		0.133230, -0.655082, 0.743719,
		36.829296, 37.897858, 27.481478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152794, 37.942276, 26.690369>,  <36.736034, 38.356415, 26.960875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152794, 37.942276, 26.690369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133518, 37.732178, 27.030203>,  <37.121952, 37.606117, 27.234102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133518, 37.732178, 27.030203>,  <37.152794, 37.942276, 26.690369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133518, 37.732178, 27.030203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545066, -0.726592, -0.418290,
		0.837007, 0.442920, 0.321312,
		-0.048193, -0.525248, 0.849583,
		37.119061, 37.574604, 27.285078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862186, 37.732407, 26.823191>,  <37.152794, 37.942276, 26.690369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862186, 37.732407, 26.823191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594276, 37.488083, 26.992102>,  <37.433529, 37.341488, 27.093449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594276, 37.488083, 26.992102>,  <37.862186, 37.732407, 26.823191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594276, 37.488083, 26.992102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454367, -0.786899, -0.417542,
		0.587327, -0.087790, 0.804575,
		-0.669775, -0.610805, 0.422278,
		37.393345, 37.304840, 27.118786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156490, 37.143002, 27.013746>,  <37.862186, 37.732407, 26.823191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156490, 37.143002, 27.013746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778370, 37.013134, 27.026356>,  <37.551498, 36.935215, 27.033922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778370, 37.013134, 27.026356>,  <38.156490, 37.143002, 27.013746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778370, 37.013134, 27.026356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265036, -0.820806, -0.505998,
		0.190158, -0.469965, 0.861959,
		-0.945302, -0.324670, 0.031525,
		37.494778, 36.915733, 27.035812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207783, 36.397511, 27.070126>,  <38.156490, 37.143002, 27.013746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207783, 36.397511, 27.070126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846340, 36.480164, 26.920034>,  <37.629475, 36.529755, 26.829979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846340, 36.480164, 26.920034>,  <38.207783, 36.397511, 27.070126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846340, 36.480164, 26.920034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028738, -0.844742, -0.534401,
		-0.427398, -0.493672, 0.757377,
		-0.903607, 0.206636, -0.375228,
		37.575256, 36.542156, 26.807467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690910, 35.830345, 27.173635>,  <38.207783, 36.397511, 27.070126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690910, 35.830345, 27.173635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508991, 36.001568, 26.861244>,  <37.399841, 36.104301, 26.673809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508991, 36.001568, 26.861244>,  <37.690910, 35.830345, 27.173635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508991, 36.001568, 26.861244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109486, -0.897138, -0.427968,
		-0.883839, -0.109133, 0.454884,
		-0.454799, 0.428058, -0.780977,
		37.372551, 36.129986, 26.626951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067474, 35.355705, 27.014988>,  <37.690910, 35.830345, 27.173635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067474, 35.355705, 27.014988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100315, 35.567928, 26.677523>,  <37.120018, 35.695263, 26.475042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100315, 35.567928, 26.677523>,  <37.067474, 35.355705, 27.014988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100315, 35.567928, 26.677523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312919, -0.789992, -0.527251,
		-0.946225, 0.307286, 0.101163,
		0.082099, 0.530555, -0.843666,
		37.124943, 35.727097, 26.424423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444805, 35.230663, 26.563381>,  <37.067474, 35.355705, 27.014988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444805, 35.230663, 26.563381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722187, 35.356102, 26.303913>,  <36.888615, 35.431366, 26.148232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722187, 35.356102, 26.303913>,  <36.444805, 35.230663, 26.563381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722187, 35.356102, 26.303913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144764, -0.821305, -0.551816,
		-0.705806, 0.476564, -0.524141,
		0.693456, 0.313599, -0.648672,
		36.930225, 35.450180, 26.109312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200123, 35.194717, 25.865669>,  <36.444805, 35.230663, 26.563381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200123, 35.194717, 25.865669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596394, 35.203922, 25.811960>,  <36.834156, 35.209446, 25.779734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596394, 35.203922, 25.811960>,  <36.200123, 35.194717, 25.865669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596394, 35.203922, 25.811960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021691, -0.946402, -0.322261,
		-0.134495, 0.322169, -0.937080,
		0.990677, 0.023016, -0.134274,
		36.893597, 35.210827, 25.771677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264343, 35.059032, 25.184025>,  <36.200123, 35.194717, 25.865669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264343, 35.059032, 25.184025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596840, 34.966995, 25.386450>,  <36.796337, 34.911774, 25.507904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596840, 34.966995, 25.386450>,  <36.264343, 35.059032, 25.184025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596840, 34.966995, 25.386450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096415, -0.956198, -0.276388,
		0.547491, 0.180952, -0.817013,
		0.831239, -0.230092, 0.506063,
		36.846210, 34.897968, 25.538269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679943, 34.532143, 24.718006>,  <36.264343, 35.059032, 25.184025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679943, 34.532143, 24.718006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831909, 34.478909, 25.084166>,  <36.923088, 34.446968, 25.303862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831909, 34.478909, 25.084166>,  <36.679943, 34.532143, 24.718006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831909, 34.478909, 25.084166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070640, -0.990880, -0.114743,
		0.922320, -0.021071, -0.385853,
		0.379916, -0.133086, 0.915397,
		36.945885, 34.438984, 25.358786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194813, 34.042450, 24.606384>,  <36.679943, 34.532143, 24.718006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194813, 34.042450, 24.606384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114132, 34.004845, 24.996353>,  <37.065723, 33.982281, 25.230335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114132, 34.004845, 24.996353>,  <37.194813, 34.042450, 24.606384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114132, 34.004845, 24.996353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062968, -0.994568, -0.082880,
		0.977420, 0.044672, 0.206528,
		-0.201704, -0.094014, 0.974924,
		37.053619, 33.976639, 25.288830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689758, 33.571007, 24.894844>,  <37.194813, 34.042450, 24.606384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689758, 33.571007, 24.894844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399288, 33.571342, 25.169849>,  <37.225006, 33.571545, 25.334852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399288, 33.571342, 25.169849>,  <37.689758, 33.571007, 24.894844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399288, 33.571342, 25.169849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221183, -0.946551, 0.234775,
		0.650964, 0.322553, 0.687172,
		-0.726171, 0.000840, 0.687514,
		37.181438, 33.571594, 25.376104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961979, 33.238403, 25.471661>,  <37.689758, 33.571007, 24.894844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961979, 33.238403, 25.471661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567539, 33.226448, 25.537045>,  <37.330875, 33.219276, 25.576275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567539, 33.226448, 25.537045>,  <37.961979, 33.238403, 25.471661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567539, 33.226448, 25.537045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086878, -0.931268, 0.353826,
		0.141648, 0.363108, 0.920917,
		-0.986098, -0.029889, 0.163458,
		37.271709, 33.217480, 25.586082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926506, 33.124645, 26.210579>,  <37.961979, 33.238403, 25.471661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926506, 33.124645, 26.210579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599831, 32.999371, 26.016695>,  <37.403828, 32.924206, 25.900366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599831, 32.999371, 26.016695>,  <37.926506, 33.124645, 26.210579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599831, 32.999371, 26.016695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133138, -0.919520, 0.369806,
		-0.561517, 0.237482, 0.792655,
		-0.816684, -0.313184, -0.484708,
		37.354824, 32.905415, 25.871283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581875, 32.702030, 26.775225>,  <37.926506, 33.124645, 26.210579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581875, 32.702030, 26.775225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418598, 32.594318, 26.426313>,  <37.320633, 32.529694, 26.216967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418598, 32.594318, 26.426313>,  <37.581875, 32.702030, 26.775225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418598, 32.594318, 26.426313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236919, -0.954015, 0.183642,
		-0.881619, -0.131699, 0.453214,
		-0.408188, -0.269277, -0.872280,
		37.296143, 32.513535, 26.164629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206116, 32.006828, 26.943079>,  <37.581875, 32.702030, 26.775225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206116, 32.006828, 26.943079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253204, 32.002251, 26.545887>,  <37.281460, 31.999504, 26.307571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253204, 32.002251, 26.545887>,  <37.206116, 32.006828, 26.943079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253204, 32.002251, 26.545887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194834, -0.980233, 0.034395,
		-0.973746, -0.197516, -0.113168,
		0.117725, -0.011443, -0.992980,
		37.288521, 31.998817, 26.247993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913494, 31.406677, 26.749138>,  <37.206116, 32.006828, 26.943079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913494, 31.406677, 26.749138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096180, 31.484150, 26.401829>,  <37.205791, 31.530634, 26.193443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096180, 31.484150, 26.401829>,  <36.913494, 31.406677, 26.749138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096180, 31.484150, 26.401829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162014, -0.977799, -0.132894,
		-0.874737, -0.079979, -0.477952,
		0.456712, 0.193682, -0.868275,
		37.233192, 31.542255, 26.141346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558708, 30.922417, 26.200531>,  <36.913494, 31.406677, 26.749138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558708, 30.922417, 26.200531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924160, 31.041115, 26.089375>,  <37.143433, 31.112333, 26.022680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924160, 31.041115, 26.089375>,  <36.558708, 30.922417, 26.200531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924160, 31.041115, 26.089375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208063, -0.928531, -0.307474,
		-0.349270, 0.223098, -0.910076,
		0.913630, 0.296745, -0.277890,
		37.198250, 31.130138, 26.006008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700539, 30.528316, 25.629772>,  <36.558708, 30.922417, 26.200531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700539, 30.528316, 25.629772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058121, 30.667463, 25.742786>,  <37.272671, 30.750952, 25.810595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058121, 30.667463, 25.742786>,  <36.700539, 30.528316, 25.629772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058121, 30.667463, 25.742786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423166, -0.862793, -0.276619,
		0.147542, 0.366845, -0.918507,
		0.893958, 0.347868, 0.282534,
		37.326309, 30.771824, 25.827547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140793, 30.232710, 25.159721>,  <36.700539, 30.528316, 25.629772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140793, 30.232710, 25.159721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394306, 30.338720, 25.450397>,  <37.546413, 30.402327, 25.624804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394306, 30.338720, 25.450397>,  <37.140793, 30.232710, 25.159721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394306, 30.338720, 25.450397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494594, -0.861173, -0.117292,
		0.594722, 0.433754, -0.676878,
		0.633785, 0.265024, 0.726691,
		37.584442, 30.418228, 25.668406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843342, 30.107075, 24.921392>,  <37.140793, 30.232710, 25.159721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843342, 30.107075, 24.921392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829975, 30.089092, 25.320765>,  <37.821957, 30.078302, 25.560389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829975, 30.089092, 25.320765>,  <37.843342, 30.107075, 24.921392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829975, 30.089092, 25.320765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564939, -0.824931, -0.018238,
		0.824456, 0.563443, 0.052960,
		-0.033412, -0.044955, 0.998430,
		37.819950, 30.075605, 25.620293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553062, 29.864840, 25.131104>,  <37.843342, 30.107075, 24.921392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553062, 29.864840, 25.131104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288631, 29.773476, 25.416986>,  <38.129974, 29.718657, 25.588516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288631, 29.773476, 25.416986>,  <38.553062, 29.864840, 25.131104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288631, 29.773476, 25.416986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487131, -0.855145, 0.177287,
		0.570684, 0.465356, 0.676583,
		-0.661078, -0.228410, 0.714706,
		38.090309, 29.704952, 25.631399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976131, 29.480566, 25.621237>,  <38.553062, 29.864840, 25.131104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976131, 29.480566, 25.621237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585728, 29.418444, 25.682276>,  <38.351486, 29.381170, 25.718899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585728, 29.418444, 25.682276>,  <38.976131, 29.480566, 25.621237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585728, 29.418444, 25.682276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164671, -0.985045, 0.050697,
		0.142442, 0.074609, 0.986987,
		-0.976009, -0.155307, 0.152597,
		38.292927, 29.371851, 25.728054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916771, 28.892580, 26.032890>,  <38.976131, 29.480566, 25.621237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916771, 28.892580, 26.032890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298714, 28.777220, 26.061369>,  <39.527882, 28.708004, 26.078455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298714, 28.777220, 26.061369>,  <38.916771, 28.892580, 26.032890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298714, 28.777220, 26.061369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285883, 0.957275, 0.043532,
		-0.080708, -0.021214, 0.996512,
		0.954860, -0.288400, 0.071195,
		39.585171, 28.690701, 26.082727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109985, 29.265900, 26.568489>,  <38.916771, 28.892580, 26.032890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109985, 29.265900, 26.568489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436378, 29.148661, 26.369183>,  <39.632214, 29.078318, 26.249599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436378, 29.148661, 26.369183>,  <39.109985, 29.265900, 26.568489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436378, 29.148661, 26.369183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366753, 0.928733, 0.054294,
		0.446841, -0.227043, 0.865323,
		0.815981, -0.293099, -0.498265,
		39.681171, 29.060730, 26.219704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612854, 29.734324, 26.921106>,  <39.109985, 29.265900, 26.568489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612854, 29.734324, 26.921106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805641, 29.592291, 26.600700>,  <39.921314, 29.507071, 26.408457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805641, 29.592291, 26.600700>,  <39.612854, 29.734324, 26.921106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805641, 29.592291, 26.600700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557472, 0.829567, -0.032311,
		0.675968, -0.430970, 0.597772,
		0.481967, -0.355082, -0.801015,
		39.950230, 29.485765, 26.360395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299110, 29.777479, 26.989790>,  <39.612854, 29.734324, 26.921106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299110, 29.777479, 26.989790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266605, 29.766953, 26.591251>,  <40.247105, 29.760637, 26.352129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266605, 29.766953, 26.591251>,  <40.299110, 29.777479, 26.989790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266605, 29.766953, 26.591251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291162, 0.955419, -0.048982,
		0.953216, -0.294078, -0.069977,
		-0.081261, -0.026316, -0.996345,
		40.242226, 29.759058, 26.292347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889404, 30.173687, 26.800997>,  <40.299110, 29.777479, 26.989790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889404, 30.173687, 26.800997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646149, 30.158230, 26.483839>,  <40.500195, 30.148956, 26.293545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646149, 30.158230, 26.483839>,  <40.889404, 30.173687, 26.800997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646149, 30.158230, 26.483839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220619, 0.951240, -0.215571,
		0.762561, -0.306023, -0.569958,
		-0.608136, -0.038643, -0.792892,
		40.463707, 30.146637, 26.245972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271694, 30.498274, 26.273195>,  <40.889404, 30.173687, 26.800997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271694, 30.498274, 26.273195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888355, 30.501207, 26.158989>,  <40.658352, 30.502968, 26.090466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888355, 30.501207, 26.158989>,  <41.271694, 30.498274, 26.273195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888355, 30.501207, 26.158989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076809, 0.969461, -0.232907,
		0.275089, -0.245136, -0.929642,
		-0.958346, 0.007335, -0.285517,
		40.600853, 30.503408, 26.073334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302586, 30.940468, 25.614679>,  <41.271694, 30.498274, 26.273195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302586, 30.940468, 25.614679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941456, 30.962404, 25.785276>,  <40.724777, 30.975565, 25.887634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941456, 30.962404, 25.785276>,  <41.302586, 30.940468, 25.614679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941456, 30.962404, 25.785276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061304, 0.998118, 0.001432,
		-0.425610, 0.027438, -0.904491,
		-0.902828, 0.054840, 0.426491,
		40.670609, 30.978857, 25.913223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927135, 31.465466, 25.267159>,  <41.302586, 30.940468, 25.614679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927135, 31.465466, 25.267159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737865, 31.412863, 25.615597>,  <40.624302, 31.381302, 25.824659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737865, 31.412863, 25.615597>,  <40.927135, 31.465466, 25.267159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737865, 31.412863, 25.615597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053938, 0.991265, 0.120350,
		-0.879314, 0.009962, -0.476138,
		-0.473178, -0.131508, 0.871096,
		40.595913, 31.373411, 25.876926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489433, 31.994051, 25.241838>,  <40.927135, 31.465466, 25.267159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489433, 31.994051, 25.241838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452206, 31.905140, 25.630051>,  <40.429871, 31.851793, 25.862978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452206, 31.905140, 25.630051>,  <40.489433, 31.994051, 25.241838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452206, 31.905140, 25.630051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237631, 0.951552, 0.195143,
		-0.966887, -0.212467, -0.141377,
		-0.093066, -0.222277, 0.970532,
		40.424286, 31.838457, 25.921209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910698, 32.330826, 25.416332>,  <40.489433, 31.994051, 25.241838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910698, 32.330826, 25.416332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094021, 32.258076, 25.764328>,  <40.204014, 32.214424, 25.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094021, 32.258076, 25.764328>,  <39.910698, 32.330826, 25.416332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094021, 32.258076, 25.764328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245640, 0.914793, 0.320647,
		-0.854177, -0.360658, 0.374577,
		0.458304, -0.181878, 0.869987,
		40.231510, 32.203514, 26.025324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487125, 32.620209, 25.867910>,  <39.910698, 32.330826, 25.416332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487125, 32.620209, 25.867910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835594, 32.584667, 26.061056>,  <40.044678, 32.563343, 26.176945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835594, 32.584667, 26.061056>,  <39.487125, 32.620209, 25.867910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835594, 32.584667, 26.061056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039367, 0.967679, 0.249094,
		-0.489392, -0.236013, 0.839519,
		0.871175, -0.088855, 0.482866,
		40.096947, 32.558010, 26.205915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326675, 32.981709, 26.420572>,  <39.487125, 32.620209, 25.867910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326675, 32.981709, 26.420572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726124, 32.968155, 26.436602>,  <39.965794, 32.960022, 26.446220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726124, 32.968155, 26.436602>,  <39.326675, 32.981709, 26.420572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726124, 32.968155, 26.436602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018323, 0.940704, 0.338733,
		-0.049176, -0.337532, 0.940028,
		0.998622, -0.033882, 0.040076,
		40.025711, 32.957989, 26.448624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633892, 33.097866, 27.116507>,  <39.326675, 32.981709, 26.420572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633892, 33.097866, 27.116507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901928, 33.195549, 26.836124>,  <40.062748, 33.254158, 26.667894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901928, 33.195549, 26.836124>,  <39.633892, 33.097866, 27.116507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901928, 33.195549, 26.836124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197869, 0.851392, 0.485777,
		0.715420, -0.464213, 0.522188,
		0.670091, 0.244210, -0.700957,
		40.102955, 33.268814, 26.625837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340736, 33.266865, 27.459944>,  <39.633892, 33.097866, 27.116507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340736, 33.266865, 27.459944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347569, 33.434998, 27.097059>,  <40.351669, 33.535877, 26.879330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347569, 33.434998, 27.097059>,  <40.340736, 33.266865, 27.459944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347569, 33.434998, 27.097059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056676, 0.905477, 0.420594,
		0.998246, -0.058601, -0.008356,
		0.017081, 0.420330, -0.907210,
		40.352692, 33.561096, 26.824896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823269, 33.744614, 27.528316>,  <40.340736, 33.266865, 27.459944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823269, 33.744614, 27.528316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609020, 33.859310, 27.210602>,  <40.480473, 33.928127, 27.019972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609020, 33.859310, 27.210602>,  <40.823269, 33.744614, 27.528316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609020, 33.859310, 27.210602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090305, 0.915744, 0.391481,
		0.839619, 0.281412, -0.464595,
		-0.535617, 0.286739, -0.794289,
		40.448334, 33.945332, 26.972315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214703, 34.409058, 27.313963>,  <40.823269, 33.744614, 27.528316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214703, 34.409058, 27.313963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853062, 34.392197, 27.143873>,  <40.636078, 34.382080, 27.041819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853062, 34.392197, 27.143873>,  <41.214703, 34.409058, 27.313963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853062, 34.392197, 27.143873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234752, 0.880501, 0.411837,
		0.357050, 0.472166, -0.805962,
		-0.904106, -0.042154, -0.425224,
		40.581829, 34.379551, 27.016306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116009, 35.152832, 27.080900>,  <41.214703, 34.409058, 27.313963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116009, 35.152832, 27.080900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748726, 34.995899, 27.059065>,  <40.528358, 34.901741, 27.045963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748726, 34.995899, 27.059065>,  <41.116009, 35.152832, 27.080900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748726, 34.995899, 27.059065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390672, 0.874203, 0.288347,
		-0.065408, 0.286086, -0.955969,
		-0.918203, -0.392331, -0.054586,
		40.473267, 34.878201, 27.042688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666035, 35.518700, 26.530025>,  <41.116009, 35.152832, 27.080900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666035, 35.518700, 26.530025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417099, 35.341591, 26.788219>,  <40.267738, 35.235325, 26.943136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417099, 35.341591, 26.788219>,  <40.666035, 35.518700, 26.530025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417099, 35.341591, 26.788219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482374, 0.866382, 0.129219,
		-0.616452, -0.230948, -0.752761,
		-0.622336, -0.442769, 0.645487,
		40.230396, 35.208759, 26.981865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916992, 35.742493, 26.386435>,  <40.666035, 35.518700, 26.530025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916992, 35.742493, 26.386435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916050, 35.603966, 26.761681>,  <39.915485, 35.520851, 26.986828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916050, 35.603966, 26.761681>,  <39.916992, 35.742493, 26.386435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916050, 35.603966, 26.761681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433114, 0.845914, 0.311193,
		-0.901336, -0.405578, -0.151987,
		-0.002355, -0.346317, 0.938115,
		39.915344, 35.500072, 27.043116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228710, 35.924690, 26.460840>,  <39.916992, 35.742493, 26.386435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228710, 35.924690, 26.460840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408920, 35.848888, 26.809807>,  <39.517048, 35.803406, 27.019186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408920, 35.848888, 26.809807>,  <39.228710, 35.924690, 26.460840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408920, 35.848888, 26.809807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533109, 0.726746, 0.433169,
		-0.716113, -0.660249, 0.226393,
		0.450530, -0.189506, 0.872417,
		39.544079, 35.792038, 27.071531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717377, 35.907612, 26.948778>,  <39.228710, 35.924690, 26.460840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717377, 35.907612, 26.948778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036480, 36.007999, 27.168083>,  <39.227943, 36.068230, 27.299667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036480, 36.007999, 27.168083>,  <38.717377, 35.907612, 26.948778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036480, 36.007999, 27.168083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526789, 0.732490, 0.431221,
		-0.293376, -0.632831, 0.716558,
		0.797761, 0.250966, 0.548264,
		39.275810, 36.083290, 27.332561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512375, 36.084446, 27.666122>,  <38.717377, 35.907612, 26.948778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512375, 36.084446, 27.666122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869499, 36.263058, 27.642469>,  <39.083775, 36.370224, 27.628277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869499, 36.263058, 27.642469>,  <38.512375, 36.084446, 27.666122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869499, 36.263058, 27.642469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383135, 0.821889, 0.421552,
		0.236836, -0.353712, 0.904874,
		0.892814, 0.446527, -0.059134,
		39.137344, 36.397015, 27.624729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550549, 36.383423, 28.255978>,  <38.512375, 36.084446, 27.666122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550549, 36.383423, 28.255978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838940, 36.600441, 28.083540>,  <39.011974, 36.730652, 27.980078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838940, 36.600441, 28.083540>,  <38.550549, 36.383423, 28.255978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838940, 36.600441, 28.083540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280045, 0.797162, 0.534890,
		0.633852, -0.264917, 0.726671,
		0.720976, 0.542542, -0.431094,
		39.055233, 36.763203, 27.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915218, 36.800335, 28.816074>,  <38.550549, 36.383423, 28.255978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915218, 36.800335, 28.816074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016766, 36.970917, 28.468813>,  <39.077694, 37.073265, 28.260456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016766, 36.970917, 28.468813>,  <38.915218, 36.800335, 28.816074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016766, 36.970917, 28.468813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021120, 0.894899, 0.445768,
		0.967009, -0.131501, 0.218177,
		0.253865, 0.426454, -0.868153,
		39.092926, 37.098854, 28.208366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540054, 37.178493, 28.851635>,  <38.915218, 36.800335, 28.816074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540054, 37.178493, 28.851635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346203, 37.342342, 28.542482>,  <39.229893, 37.440651, 28.356991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346203, 37.342342, 28.542482>,  <39.540054, 37.178493, 28.851635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346203, 37.342342, 28.542482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209384, 0.912212, 0.352177,
		0.849292, 0.008844, -0.527849,
		-0.484624, 0.409624, -0.772883,
		39.200817, 37.465229, 28.310617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763309, 37.797180, 28.861935>,  <39.540054, 37.178493, 28.851635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763309, 37.797180, 28.861935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498314, 37.861210, 28.569225>,  <39.339317, 37.899628, 28.393600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498314, 37.861210, 28.569225>,  <39.763309, 37.797180, 28.861935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498314, 37.861210, 28.569225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099079, 0.987043, 0.126213,
		0.742494, 0.011111, -0.669760,
		-0.662484, 0.160072, -0.731773,
		39.299568, 37.909233, 28.349693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010216, 38.344845, 28.433643>,  <39.763309, 37.797180, 28.861935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010216, 38.344845, 28.433643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616055, 38.349339, 28.365700>,  <39.379559, 38.352036, 28.324934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616055, 38.349339, 28.365700>,  <40.010216, 38.344845, 28.433643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616055, 38.349339, 28.365700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020564, 0.982654, 0.184306,
		0.168982, 0.185109, -0.968080,
		-0.985405, 0.011237, -0.169857,
		39.320435, 38.352711, 28.314743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839298, 38.924736, 27.971800>,  <40.010216, 38.344845, 28.433643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839298, 38.924736, 27.971800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528706, 38.823193, 28.202496>,  <39.342350, 38.762268, 28.340912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528706, 38.823193, 28.202496>,  <39.839298, 38.924736, 27.971800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528706, 38.823193, 28.202496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131291, 0.960350, 0.245948,
		-0.616306, 0.115254, -0.779027,
		-0.776485, -0.253858, 0.576738,
		39.295761, 38.747036, 28.375517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342312, 39.480003, 27.868204>,  <39.839298, 38.924736, 27.971800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342312, 39.480003, 27.868204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215805, 39.292313, 28.198004>,  <39.139900, 39.179699, 28.395884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215805, 39.292313, 28.198004>,  <39.342312, 39.480003, 27.868204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215805, 39.292313, 28.198004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056892, 0.876929, 0.477242,
		-0.946963, 0.104029, -0.304039,
		-0.316267, -0.469227, 0.824500,
		39.120926, 39.151543, 28.445354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865799, 39.891731, 28.137016>,  <39.342312, 39.480003, 27.868204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865799, 39.891731, 28.137016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955303, 39.664017, 28.453457>,  <39.009007, 39.527386, 28.643322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955303, 39.664017, 28.453457>,  <38.865799, 39.891731, 28.137016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955303, 39.664017, 28.453457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044280, 0.816781, 0.575246,
		-0.973638, -0.093687, 0.207970,
		0.223759, -0.569290, 0.791101,
		39.022430, 39.493229, 28.690786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393665, 39.983055, 28.563498>,  <38.865799, 39.891731, 28.137016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393665, 39.983055, 28.563498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701107, 39.859657, 28.787670>,  <38.885571, 39.785618, 28.922174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701107, 39.859657, 28.787670>,  <38.393665, 39.983055, 28.563498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701107, 39.859657, 28.787670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177356, 0.738954, 0.649994,
		-0.614650, -0.598983, 0.513249,
		0.768603, -0.308490, 0.560431,
		38.931686, 39.767109, 28.955799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126312, 39.974728, 29.322937>,  <38.393665, 39.983055, 28.563498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126312, 39.974728, 29.322937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525772, 39.979721, 29.343103>,  <38.765450, 39.982716, 29.355204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525772, 39.979721, 29.343103>,  <38.126312, 39.974728, 29.322937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525772, 39.979721, 29.343103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050594, 0.452960, 0.890094,
		-0.011729, -0.891443, 0.452980,
		0.998651, 0.012479, 0.050415,
		38.825367, 39.983463, 29.358227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315231, 39.648460, 29.987240>,  <38.126312, 39.974728, 29.322937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315231, 39.648460, 29.987240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631752, 39.871468, 29.886826>,  <38.821663, 40.005272, 29.826576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631752, 39.871468, 29.886826>,  <38.315231, 39.648460, 29.987240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631752, 39.871468, 29.886826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028738, 0.376204, 0.926091,
		0.610754, -0.740029, 0.281668,
		0.791299, 0.557519, -0.251035,
		38.869141, 40.038723, 29.811516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786480, 39.611530, 30.636917>,  <38.315231, 39.648460, 29.987240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786480, 39.611530, 30.636917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918629, 39.914211, 30.411261>,  <38.997917, 40.095821, 30.275867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918629, 39.914211, 30.411261>,  <38.786480, 39.611530, 30.636917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918629, 39.914211, 30.411261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238039, 0.511582, 0.825604,
		0.913341, -0.407044, -0.011112,
		0.330372, 0.756703, -0.564141,
		39.017742, 40.141224, 30.242018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424858, 39.831192, 30.910036>,  <38.786480, 39.611530, 30.636917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424858, 39.831192, 30.910036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330891, 40.159050, 30.701036>,  <39.274509, 40.355762, 30.575636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330891, 40.159050, 30.701036>,  <39.424858, 39.831192, 30.910036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330891, 40.159050, 30.701036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404084, 0.571239, 0.714424,
		0.884043, -0.043305, -0.465396,
		-0.234914, 0.819640, -0.522499,
		39.260418, 40.404942, 30.544287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122276, 40.171246, 30.752340>,  <39.424858, 39.831192, 30.910036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122276, 40.171246, 30.752340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805698, 40.415714, 30.748652>,  <39.615749, 40.562393, 30.746439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805698, 40.415714, 30.748652>,  <40.122276, 40.171246, 30.752340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805698, 40.415714, 30.748652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427750, 0.564574, 0.705894,
		0.436626, 0.554733, -0.708258,
		-0.791447, 0.611169, -0.009221,
		39.568264, 40.599064, 30.745886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411373, 40.832073, 30.881315>,  <40.122276, 40.171246, 30.752340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411373, 40.832073, 30.881315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030003, 40.923698, 30.959812>,  <39.801182, 40.978672, 31.006910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030003, 40.923698, 30.959812>,  <40.411373, 40.832073, 30.881315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030003, 40.923698, 30.959812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301486, 0.703630, 0.643437,
		0.009302, 0.672634, -0.739917,
		-0.953425, 0.229060, 0.196244,
		39.743977, 40.992416, 31.018686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324570, 41.575382, 30.872139>,  <40.411373, 40.832073, 30.881315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324570, 41.575382, 30.872139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010933, 41.446468, 31.084301>,  <39.822750, 41.369118, 31.211597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010933, 41.446468, 31.084301>,  <40.324570, 41.575382, 30.872139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010933, 41.446468, 31.084301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189095, 0.689920, 0.698751,
		-0.591136, 0.648183, -0.480018,
		-0.784093, -0.322287, 0.530405,
		39.775703, 41.349781, 31.243422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049164, 42.187458, 31.170568>,  <40.324570, 41.575382, 30.872139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049164, 42.187458, 31.170568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855953, 41.902454, 31.374140>,  <39.740025, 41.731453, 31.496283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855953, 41.902454, 31.374140>,  <40.049164, 42.187458, 31.170568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855953, 41.902454, 31.374140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132868, 0.514858, 0.846917,
		-0.865465, 0.476706, -0.154021,
		-0.483029, -0.712512, 0.508930,
		39.711044, 41.688702, 31.526819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577034, 42.548843, 31.629309>,  <40.049164, 42.187458, 31.170568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577034, 42.548843, 31.629309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608986, 42.193939, 31.811029>,  <39.628159, 41.980999, 31.920063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608986, 42.193939, 31.811029>,  <39.577034, 42.548843, 31.629309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608986, 42.193939, 31.811029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204308, 0.460657, 0.863744,
		-0.975642, 0.023823, 0.218071,
		0.079879, -0.887259, 0.454303,
		39.632950, 41.927761, 31.947321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025455, 42.432442, 32.212276>,  <39.577034, 42.548843, 31.629309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025455, 42.432442, 32.212276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297195, 42.167622, 32.338879>,  <39.460239, 42.008732, 32.414841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297195, 42.167622, 32.338879>,  <39.025455, 42.432442, 32.212276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297195, 42.167622, 32.338879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047410, 0.390812, 0.919249,
		-0.732279, -0.639499, 0.234111,
		0.679352, -0.662048, 0.316502,
		39.500999, 41.969006, 32.433830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844261, 42.198536, 32.913086>,  <39.025455, 42.432442, 32.212276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844261, 42.198536, 32.913086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230503, 42.103195, 32.871548>,  <39.462250, 42.045990, 32.846622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230503, 42.103195, 32.871548>,  <38.844261, 42.198536, 32.913086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230503, 42.103195, 32.871548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167372, 0.264211, 0.949831,
		-0.198960, -0.934547, 0.295019,
		0.965610, -0.238356, -0.103850,
		39.520187, 42.031689, 32.840393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861320, 41.948368, 33.546246>,  <38.844261, 42.198536, 32.913086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861320, 41.948368, 33.546246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237320, 41.987652, 33.415554>,  <39.462921, 42.011223, 33.337139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237320, 41.987652, 33.415554>,  <38.861320, 41.948368, 33.546246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237320, 41.987652, 33.415554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318723, 0.088820, 0.943677,
		0.121700, -0.991194, 0.052189,
		0.940002, 0.098211, -0.326726,
		39.519321, 42.017113, 33.317535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282944, 41.403645, 33.901581>,  <38.861320, 41.948368, 33.546246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282944, 41.403645, 33.901581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515862, 41.703388, 33.775471>,  <39.655613, 41.883232, 33.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515862, 41.703388, 33.775471>,  <39.282944, 41.403645, 33.901581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515862, 41.703388, 33.775471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166342, 0.269777, 0.948447,
		0.795777, -0.604721, 0.032441,
		0.582297, 0.749355, -0.315273,
		39.690552, 41.928196, 33.680889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880043, 41.378967, 34.323299>,  <39.282944, 41.403645, 33.901581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880043, 41.378967, 34.323299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839439, 41.748417, 34.175449>,  <39.815079, 41.970085, 34.086739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839439, 41.748417, 34.175449>,  <39.880043, 41.378967, 34.323299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839439, 41.748417, 34.175449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134097, 0.380857, 0.914858,
		0.985756, 0.043300, -0.162515,
		-0.101508, 0.923619, -0.369626,
		39.808987, 42.025501, 34.064560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422207, 41.756386, 34.624626>,  <39.880043, 41.378967, 34.323299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422207, 41.756386, 34.624626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175732, 42.032681, 34.473263>,  <40.027847, 42.198456, 34.382442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175732, 42.032681, 34.473263>,  <40.422207, 41.756386, 34.624626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175732, 42.032681, 34.473263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018265, 0.467803, 0.883644,
		0.787387, 0.551402, -0.275638,
		-0.616188, 0.690736, -0.378413,
		39.990875, 42.239902, 34.359737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772064, 42.486462, 34.750923>,  <40.422207, 41.756386, 34.624626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772064, 42.486462, 34.750923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373528, 42.510548, 34.726662>,  <40.134407, 42.524998, 34.712105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373528, 42.510548, 34.726662>,  <40.772064, 42.486462, 34.750923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373528, 42.510548, 34.726662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022564, 0.499202, 0.866192,
		0.082437, 0.864391, -0.496017,
		-0.996341, 0.060214, -0.060657,
		40.074627, 42.528610, 34.708466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623680, 43.156448, 35.125904>,  <40.772064, 42.486462, 34.750923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623680, 43.156448, 35.125904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279491, 42.954315, 35.099915>,  <40.072979, 42.833035, 35.084320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279491, 42.954315, 35.099915>,  <40.623680, 43.156448, 35.125904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279491, 42.954315, 35.099915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393971, 0.579074, 0.713765,
		-0.323061, 0.639776, -0.697365,
		-0.860476, -0.505331, -0.064977,
		40.021347, 42.802715, 35.080421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097912, 43.667900, 35.076012>,  <40.623680, 43.156448, 35.125904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097912, 43.667900, 35.076012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936478, 43.329075, 35.214352>,  <39.839619, 43.125782, 35.297356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936478, 43.329075, 35.214352>,  <40.097912, 43.667900, 35.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936478, 43.329075, 35.214352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254580, 0.467037, 0.846797,
		-0.878810, 0.253710, -0.404134,
		-0.403586, -0.847058, 0.345847,
		39.815403, 43.074959, 35.318108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325874, 43.741756, 35.385532>,  <40.097912, 43.667900, 35.076012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325874, 43.741756, 35.385532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546665, 43.464565, 35.571053>,  <39.679138, 43.298252, 35.682365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546665, 43.464565, 35.571053>,  <39.325874, 43.741756, 35.385532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546665, 43.464565, 35.571053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194407, 0.433933, 0.879721,
		-0.810883, -0.575749, 0.104801,
		0.551974, -0.692976, 0.463798,
		39.712257, 43.256672, 35.710194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946896, 43.708786, 36.035378>,  <39.325874, 43.741756, 35.385532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946896, 43.708786, 36.035378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304390, 43.534534, 36.078190>,  <39.518887, 43.429985, 36.103878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304390, 43.534534, 36.078190>,  <38.946896, 43.708786, 36.035378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304390, 43.534534, 36.078190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028895, 0.294011, 0.955365,
		-0.447655, -0.850755, 0.275357,
		0.893739, -0.435631, 0.107033,
		39.572514, 43.403847, 36.110298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892059, 43.171635, 36.569855>,  <38.946896, 43.708786, 36.035378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892059, 43.171635, 36.569855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256107, 43.332870, 36.531490>,  <39.474537, 43.429611, 36.508472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256107, 43.332870, 36.531490>,  <38.892059, 43.171635, 36.569855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256107, 43.332870, 36.531490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023385, 0.281090, 0.959396,
		0.413685, -0.870923, 0.265252,
		0.910120, 0.403091, -0.095916,
		39.529144, 43.453796, 36.502716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395378, 42.739468, 36.917427>,  <38.892059, 43.171635, 36.569855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395378, 42.739468, 36.917427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452576, 43.134560, 36.892281>,  <39.486893, 43.371613, 36.877193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452576, 43.134560, 36.892281>,  <39.395378, 42.739468, 36.917427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452576, 43.134560, 36.892281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154244, 0.084984, 0.984371,
		0.977631, -0.131059, 0.164503,
		0.142991, 0.987725, -0.062868,
		39.495472, 43.430878, 36.873421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834431, 42.949364, 37.408287>,  <39.395378, 42.739468, 36.917427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834431, 42.949364, 37.408287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706882, 43.325199, 37.358494>,  <39.630356, 43.550701, 37.328617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706882, 43.325199, 37.358494>,  <39.834431, 42.949364, 37.408287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706882, 43.325199, 37.358494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004609, 0.132877, 0.991122,
		0.947788, 0.315464, -0.046700,
		-0.318868, 0.939588, -0.124485,
		39.611221, 43.607075, 37.321148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309978, 43.570839, 37.576435>,  <39.834431, 42.949364, 37.408287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309978, 43.570839, 37.576435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116798, 43.877861, 37.407860>,  <40.000889, 44.062077, 37.306713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116798, 43.877861, 37.407860>,  <40.309978, 43.570839, 37.576435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116798, 43.877861, 37.407860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196759, 0.373857, 0.906376,
		0.853255, 0.520658, -0.029531,
		-0.482952, 0.767559, -0.421439,
		39.971912, 44.108128, 37.281429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428097, 44.126270, 37.946209>,  <40.309978, 43.570839, 37.576435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428097, 44.126270, 37.946209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075439, 44.215137, 37.779671>,  <39.863846, 44.268459, 37.679749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075439, 44.215137, 37.779671>,  <40.428097, 44.126270, 37.946209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075439, 44.215137, 37.779671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278306, 0.467722, 0.838917,
		0.381115, 0.855498, -0.350534,
		-0.881645, 0.222168, -0.416346,
		39.810947, 44.281788, 37.654766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387897, 44.801609, 38.125927>,  <40.428097, 44.126270, 37.946209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387897, 44.801609, 38.125927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032578, 44.643421, 38.032516>,  <39.819386, 44.548508, 37.976471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032578, 44.643421, 38.032516>,  <40.387897, 44.801609, 38.125927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032578, 44.643421, 38.032516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393270, 0.392363, 0.831498,
		-0.237203, 0.830456, -0.504060,
		-0.888298, -0.395466, -0.233524,
		39.766087, 44.524780, 37.962460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762558, 45.318623, 38.096851>,  <40.387897, 44.801609, 38.125927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762558, 45.318623, 38.096851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617008, 44.953224, 38.169647>,  <39.529678, 44.733986, 38.213326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617008, 44.953224, 38.169647>,  <39.762558, 45.318623, 38.096851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617008, 44.953224, 38.169647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405616, 0.331290, 0.851893,
		-0.838491, 0.236168, -0.491078,
		-0.363879, -0.913494, 0.181991,
		39.507843, 44.679176, 38.224243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121861, 45.509304, 38.387039>,  <39.762558, 45.318623, 38.096851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121861, 45.509304, 38.387039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205475, 45.134441, 38.498783>,  <39.255642, 44.909523, 38.565830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205475, 45.134441, 38.498783>,  <39.121861, 45.509304, 38.387039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205475, 45.134441, 38.498783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469503, 0.154416, 0.869323,
		-0.857829, -0.312882, -0.407719,
		0.209037, -0.937156, 0.279361,
		39.268185, 44.853294, 38.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582550, 45.228306, 38.502602>,  <39.121861, 45.509304, 38.387039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582550, 45.228306, 38.502602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829903, 45.022030, 38.739807>,  <38.978313, 44.898262, 38.882130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829903, 45.022030, 38.739807>,  <38.582550, 45.228306, 38.502602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829903, 45.022030, 38.739807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487600, 0.340007, 0.804140,
		-0.616316, -0.786421, -0.041197,
		0.618385, -0.515692, 0.593010,
		39.015419, 44.867321, 38.917709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200237, 44.588001, 38.878559>,  <38.582550, 45.228306, 38.502602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200237, 44.588001, 38.878559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487080, 44.802444, 39.056705>,  <38.659184, 44.931110, 39.163593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487080, 44.802444, 39.056705>,  <38.200237, 44.588001, 38.878559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487080, 44.802444, 39.056705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685659, 0.427994, 0.588806,
		0.125050, -0.727604, 0.674503,
		0.717101, 0.536109, 0.445368,
		38.702209, 44.963276, 39.190315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973301, 44.628677, 39.629711>,  <38.200237, 44.588001, 38.878559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973301, 44.628677, 39.629711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172066, 44.935997, 39.468319>,  <38.291325, 45.120388, 39.371483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172066, 44.935997, 39.468319>,  <37.973301, 44.628677, 39.629711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172066, 44.935997, 39.468319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636280, 0.638732, 0.432632,
		0.590107, 0.041748, 0.806245,
		0.496912, 0.768296, -0.403484,
		38.321140, 45.166485, 39.347275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045151, 45.222813, 40.106033>,  <37.973301, 44.628677, 39.629711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045151, 45.222813, 40.106033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065979, 45.453728, 39.780083>,  <38.078476, 45.592278, 39.584511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065979, 45.453728, 39.780083>,  <38.045151, 45.222813, 40.106033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065979, 45.453728, 39.780083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639293, 0.646142, 0.416899,
		0.767198, 0.499235, 0.402706,
		0.052075, 0.577291, -0.814876,
		38.081600, 45.626915, 39.535622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551594, 45.543556, 40.515648>,  <38.045151, 45.222813, 40.106033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551594, 45.543556, 40.515648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869183, 45.311382, 40.587990>,  <39.059734, 45.172077, 40.631393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869183, 45.311382, 40.587990>,  <38.551594, 45.543556, 40.515648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869183, 45.311382, 40.587990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132596, -0.455637, -0.880235,
		0.593322, 0.674899, -0.438725,
		0.793969, -0.580436, 0.180850,
		39.107372, 45.137253, 40.642246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011158, 45.593952, 39.957787>,  <38.551594, 45.543556, 40.515648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011158, 45.593952, 39.957787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051861, 45.233910, 40.127232>,  <39.076283, 45.017883, 40.228897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051861, 45.233910, 40.127232>,  <39.011158, 45.593952, 39.957787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051861, 45.233910, 40.127232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061599, -0.430705, -0.900388,
		0.992900, 0.065526, -0.099272,
		0.101756, -0.900111, 0.423611,
		39.082386, 44.963875, 40.254314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610775, 45.263428, 39.704891>,  <39.011158, 45.593952, 39.957787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610775, 45.263428, 39.704891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315254, 45.014709, 39.808838>,  <39.137939, 44.865479, 39.871204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315254, 45.014709, 39.808838>,  <39.610775, 45.263428, 39.704891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315254, 45.014709, 39.808838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027296, -0.412901, -0.910367,
		0.673366, -0.665490, 0.322027,
		-0.738805, -0.621800, 0.259868,
		39.093613, 44.828171, 39.886799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798519, 44.602058, 39.786282>,  <39.610775, 45.263428, 39.704891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798519, 44.602058, 39.786282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430580, 44.610313, 39.629589>,  <39.209816, 44.615265, 39.535576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430580, 44.610313, 39.629589>,  <39.798519, 44.602058, 39.786282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430580, 44.610313, 39.629589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362752, -0.335306, -0.869471,
		-0.149289, -0.941883, 0.300946,
		-0.919850, 0.020633, -0.391728,
		39.154625, 44.616505, 39.512070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597809, 43.925560, 39.623302>,  <39.798519, 44.602058, 39.786282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597809, 43.925560, 39.623302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422974, 44.206009, 39.397957>,  <39.318073, 44.374279, 39.262749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422974, 44.206009, 39.397957>,  <39.597809, 43.925560, 39.623302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422974, 44.206009, 39.397957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352961, -0.442407, -0.824436,
		-0.827268, -0.559196, -0.054099,
		-0.437087, 0.701125, -0.563363,
		39.291847, 44.416348, 39.228947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493172, 43.629288, 38.985420>,  <39.597809, 43.925560, 39.623302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493172, 43.629288, 38.985420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415562, 44.002274, 38.863518>,  <39.368996, 44.226063, 38.790379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415562, 44.002274, 38.863518>,  <39.493172, 43.629288, 38.985420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415562, 44.002274, 38.863518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456411, -0.189183, -0.869424,
		-0.868358, -0.307779, -0.388879,
		-0.194021, 0.932460, -0.304752,
		39.357357, 44.282013, 38.772091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050869, 43.501232, 38.456150>,  <39.493172, 43.629288, 38.985420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050869, 43.501232, 38.456150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203667, 43.869244, 38.421215>,  <39.295345, 44.090050, 38.400253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203667, 43.869244, 38.421215>,  <39.050869, 43.501232, 38.456150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203667, 43.869244, 38.421215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379409, -0.242291, -0.892941,
		-0.842692, 0.307962, -0.441621,
		0.381992, 0.920030, -0.087333,
		39.318264, 44.145252, 38.395016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668953, 43.844971, 37.916153>,  <39.050869, 43.501232, 38.456150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668953, 43.844971, 37.916153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036354, 44.002914, 37.924629>,  <39.256794, 44.097679, 37.929714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036354, 44.002914, 37.924629>,  <38.668953, 43.844971, 37.916153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036354, 44.002914, 37.924629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071019, -0.112009, -0.991166,
		-0.388995, 0.911889, -0.130922,
		0.918498, 0.394856, 0.021190,
		39.311905, 44.121372, 37.930984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658207, 44.395748, 37.340431>,  <38.668953, 43.844971, 37.916153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658207, 44.395748, 37.340431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024612, 44.273602, 37.444489>,  <39.244453, 44.200314, 37.506924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024612, 44.273602, 37.444489>,  <38.658207, 44.395748, 37.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024612, 44.273602, 37.444489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235612, -0.115310, -0.964982,
		0.324674, 0.945226, -0.033676,
		0.916009, -0.305370, 0.260145,
		39.299416, 44.181992, 37.522533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166142, 44.711136, 36.962433>,  <38.658207, 44.395748, 37.340431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166142, 44.711136, 36.962433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336926, 44.372993, 37.090855>,  <39.439396, 44.170109, 37.167908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336926, 44.372993, 37.090855>,  <39.166142, 44.711136, 36.962433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336926, 44.372993, 37.090855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338053, -0.180084, -0.923737,
		0.838704, 0.502933, 0.208886,
		0.426960, -0.845357, 0.321056,
		39.465015, 44.119385, 37.187172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914078, 44.661831, 36.839813>,  <39.166142, 44.711136, 36.962433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914078, 44.661831, 36.839813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765987, 44.290768, 36.859371>,  <39.677132, 44.068130, 36.871105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765987, 44.290768, 36.859371>,  <39.914078, 44.661831, 36.839813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765987, 44.290768, 36.859371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390282, -0.203091, -0.898017,
		0.842978, -0.313389, 0.437236,
		-0.370227, -0.927654, 0.048891,
		39.654919, 44.012470, 36.874039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400627, 44.243134, 36.737278>,  <39.914078, 44.661831, 36.839813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400627, 44.243134, 36.737278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077354, 44.044151, 36.611183>,  <39.883392, 43.924763, 36.535526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077354, 44.044151, 36.611183>,  <40.400627, 44.243134, 36.737278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077354, 44.044151, 36.611183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477657, -0.240554, -0.844971,
		0.344506, -0.833468, 0.432026,
		-0.808183, -0.497458, -0.315240,
		39.834900, 43.894913, 36.516613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793900, 43.628403, 36.414997>,  <40.400627, 44.243134, 36.737278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793900, 43.628403, 36.414997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429504, 43.477722, 36.482170>,  <40.210869, 43.387314, 36.522472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429504, 43.477722, 36.482170>,  <40.793900, 43.628403, 36.414997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429504, 43.477722, 36.482170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074278, -0.550353, -0.831622,
		0.405693, -0.745122, 0.529345,
		-0.910986, -0.376702, 0.167928,
		40.156208, 43.364712, 36.532547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761456, 42.875927, 36.328171>,  <40.793900, 43.628403, 36.414997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761456, 42.875927, 36.328171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391239, 43.017647, 36.274734>,  <40.169109, 43.102676, 36.242672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391239, 43.017647, 36.274734>,  <40.761456, 42.875927, 36.328171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391239, 43.017647, 36.274734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165098, -0.695110, -0.699689,
		-0.340754, -0.625537, 0.701847,
		-0.925543, 0.354296, -0.133586,
		40.113575, 43.123936, 36.234657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340935, 42.269157, 36.233013>,  <40.761456, 42.875927, 36.328171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340935, 42.269157, 36.233013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156418, 42.585224, 36.071598>,  <40.045708, 42.774864, 35.974751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156418, 42.585224, 36.071598>,  <40.340935, 42.269157, 36.233013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156418, 42.585224, 36.071598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111125, -0.502692, -0.857293,
		-0.880262, -0.350619, 0.319695,
		-0.461291, 0.790169, -0.403538,
		40.018032, 42.822273, 35.950535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687386, 42.037575, 36.029587>,  <40.340935, 42.269157, 36.233013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687386, 42.037575, 36.029587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802727, 42.347027, 35.803894>,  <39.871933, 42.532696, 35.668480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802727, 42.347027, 35.803894>,  <39.687386, 42.037575, 36.029587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802727, 42.347027, 35.803894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098622, -0.562129, -0.821148,
		-0.952432, 0.292426, -0.085795,
		0.288353, 0.773627, -0.564229,
		39.889233, 42.579113, 35.634624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143612, 42.041473, 35.647488>,  <39.687386, 42.037575, 36.029587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143612, 42.041473, 35.647488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354919, 42.361244, 35.533054>,  <39.481705, 42.553108, 35.464394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354919, 42.361244, 35.533054>,  <39.143612, 42.041473, 35.647488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354919, 42.361244, 35.533054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006730, -0.332982, -0.942909,
		-0.849052, 0.500032, -0.170522,
		0.528266, 0.799432, -0.286084,
		39.513401, 42.601074, 35.447227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826195, 42.226486, 35.033016>,  <39.143612, 42.041473, 35.647488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826195, 42.226486, 35.033016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175282, 42.421761, 35.035664>,  <39.384731, 42.538925, 35.037251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175282, 42.421761, 35.035664>,  <38.826195, 42.226486, 35.033016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175282, 42.421761, 35.035664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115247, -0.192822, -0.974442,
		-0.474433, 0.851173, -0.224541,
		0.872715, 0.488185, 0.006614,
		39.437096, 42.568214, 35.037647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743240, 42.558460, 34.375755>,  <38.826195, 42.226486, 35.033016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743240, 42.558460, 34.375755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126076, 42.578331, 34.489960>,  <39.355778, 42.590252, 34.558483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126076, 42.578331, 34.489960>,  <38.743240, 42.558460, 34.375755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126076, 42.578331, 34.489960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289771, -0.150157, -0.945244,
		-0.004086, 0.987413, -0.158108,
		0.957087, 0.049677, 0.285510,
		39.413200, 42.593235, 34.575611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040779, 43.039455, 33.892906>,  <38.743240, 42.558460, 34.375755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040779, 43.039455, 33.892906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325432, 42.808075, 34.052395>,  <39.496223, 42.669247, 34.148087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325432, 42.808075, 34.052395>,  <39.040779, 43.039455, 33.892906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325432, 42.808075, 34.052395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339222, -0.214078, -0.916023,
		0.615230, 0.787126, 0.043878,
		0.711632, -0.578449, 0.398718,
		39.538921, 42.634541, 34.172009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776684, 43.249054, 33.710335>,  <39.040779, 43.039455, 33.892906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776684, 43.249054, 33.710335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804646, 42.859051, 33.794693>,  <39.821423, 42.625050, 33.845306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804646, 42.859051, 33.794693>,  <39.776684, 43.249054, 33.710335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804646, 42.859051, 33.794693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239101, -0.188875, -0.952448,
		0.968476, 0.117001, 0.219922,
		0.069900, -0.975006, 0.210896,
		39.825615, 42.566547, 33.857964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302490, 42.977791, 33.211250>,  <39.776684, 43.249054, 33.710335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302490, 42.977791, 33.211250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104778, 42.661491, 33.355694>,  <39.986149, 42.471710, 33.442360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104778, 42.661491, 33.355694>,  <40.302490, 42.977791, 33.211250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104778, 42.661491, 33.355694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063813, -0.447288, -0.892111,
		0.866956, -0.417911, 0.271547,
		-0.494283, -0.790749, 0.361111,
		39.956493, 42.424267, 33.464027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704361, 42.379196, 32.889523>,  <40.302490, 42.977791, 33.211250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704361, 42.379196, 32.889523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357529, 42.249752, 33.041019>,  <40.149429, 42.172085, 33.131916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357529, 42.249752, 33.041019>,  <40.704361, 42.379196, 32.889523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357529, 42.249752, 33.041019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133248, -0.581909, -0.802264,
		0.480012, -0.746096, 0.461443,
		-0.867083, -0.323610, 0.378739,
		40.097404, 42.152668, 33.154640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747593, 41.632744, 32.716648>,  <40.704361, 42.379196, 32.889523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747593, 41.632744, 32.716648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365318, 41.747295, 32.743900>,  <40.135952, 41.816029, 32.760250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365318, 41.747295, 32.743900>,  <40.747593, 41.632744, 32.716648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365318, 41.747295, 32.743900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214893, -0.520541, -0.826352,
		-0.201188, -0.804377, 0.559018,
		-0.955691, 0.286381, 0.068129,
		40.078609, 41.833210, 32.764339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430573, 41.738899, 32.806637>,  <40.747593, 41.632744, 32.716648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430573, 41.738899, 32.806637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645668, 41.578575, 32.509937>,  <41.774723, 41.482380, 32.331917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645668, 41.578575, 32.509937>,  <41.430573, 41.738899, 32.806637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645668, 41.578575, 32.509937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456557, -0.601190, 0.655840,
		-0.708801, -0.691319, -0.140287,
		0.537734, -0.400810, -0.741750,
		41.806988, 41.458332, 32.287411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302170, 41.014187, 32.842129>,  <41.430573, 41.738899, 32.806637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302170, 41.014187, 32.842129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658455, 41.167545, 32.744446>,  <41.872227, 41.259560, 32.685837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658455, 41.167545, 32.744446>,  <41.302170, 41.014187, 32.842129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658455, 41.167545, 32.744446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408595, -0.439838, 0.799745,
		0.199208, -0.812126, -0.548423,
		0.890711, 0.383398, -0.244212,
		41.925667, 41.282566, 32.671181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850716, 40.483360, 32.974728>,  <41.302170, 41.014187, 32.842129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850716, 40.483360, 32.974728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985554, 40.858612, 33.006428>,  <42.066456, 41.083763, 33.025448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985554, 40.858612, 33.006428>,  <41.850716, 40.483360, 32.974728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985554, 40.858612, 33.006428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460124, -0.237605, 0.855470,
		0.821371, -0.251913, -0.511752,
		0.337099, 0.938128, 0.079250,
		42.086685, 41.140049, 33.030201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516243, 40.405197, 32.860493>,  <41.850716, 40.483360, 32.974728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516243, 40.405197, 32.860493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450233, 40.717037, 33.102150>,  <42.410625, 40.904140, 33.247147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450233, 40.717037, 33.102150>,  <42.516243, 40.405197, 32.860493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450233, 40.717037, 33.102150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671556, -0.359802, 0.647731,
		0.722343, 0.512611, -0.464166,
		-0.165026, 0.779598, 0.604147,
		42.400726, 40.950916, 33.283394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214535, 40.461231, 33.217827>,  <42.516243, 40.405197, 32.860493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214535, 40.461231, 33.217827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900639, 40.595432, 33.426292>,  <42.712299, 40.675953, 33.551373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900639, 40.595432, 33.426292>,  <43.214535, 40.461231, 33.217827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900639, 40.595432, 33.426292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399531, -0.369040, 0.839157,
		0.473870, 0.866746, 0.155558,
		-0.784743, 0.335501, 0.521169,
		42.665215, 40.696083, 33.582642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595589, 39.787334, 33.332279>,  <43.214535, 40.461231, 33.217827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595589, 39.787334, 33.332279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230507, 39.859009, 33.185383>,  <43.011459, 39.902016, 33.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230507, 39.859009, 33.185383>,  <43.595589, 39.787334, 33.332279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230507, 39.859009, 33.185383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389270, -0.107983, 0.914772,
		0.124262, 0.977870, 0.168309,
		-0.912703, 0.179189, -0.367238,
		42.956696, 39.912766, 33.075211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916080, 39.156071, 33.208412>,  <43.595589, 39.787334, 33.332279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916080, 39.156071, 33.208412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601013, 38.948975, 33.341991>,  <43.411972, 38.824715, 33.422138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601013, 38.948975, 33.341991>,  <43.916080, 39.156071, 33.208412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601013, 38.948975, 33.341991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333949, -0.814289, -0.474775,
		0.517745, -0.262441, 0.814288,
		-0.787667, -0.517743, 0.333952,
		43.364712, 38.793652, 33.442177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459030, 39.098354, 33.616169>,  <43.916080, 39.156071, 33.208412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459030, 39.098354, 33.616169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766968, 39.195877, 33.852097>,  <44.951733, 39.254391, 33.993652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766968, 39.195877, 33.852097>,  <44.459030, 39.098354, 33.616169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766968, 39.195877, 33.852097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346906, -0.935571, -0.066060,
		0.535714, 0.255469, -0.804827,
		0.769849, 0.243810, 0.589822,
		44.997921, 39.269020, 34.029041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.162819, 39.009724, 33.300709>,  <44.459030, 39.098354, 33.616169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.162819, 39.009724, 33.300709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117031, 38.940037, 33.691921>,  <45.089558, 38.898224, 33.926647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117031, 38.940037, 33.691921>,  <45.162819, 39.009724, 33.300709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117031, 38.940037, 33.691921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196263, -0.969064, -0.149652,
		0.973847, 0.174821, 0.145118,
		-0.114466, -0.174220, 0.978031,
		45.082691, 38.887772, 33.985329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717159, 38.527699, 33.722343>,  <45.162819, 39.009724, 33.300709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717159, 38.527699, 33.722343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392288, 38.468845, 33.948166>,  <45.197365, 38.433533, 34.083660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392288, 38.468845, 33.948166>,  <45.717159, 38.527699, 33.722343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392288, 38.468845, 33.948166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177606, -0.984101, -0.000969,
		0.555726, 0.099482, 0.825392,
		-0.812173, -0.147133, 0.564559,
		45.148636, 38.424706, 34.117535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812496, 38.097427, 34.304314>,  <45.717159, 38.527699, 33.722343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812496, 38.097427, 34.304314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415218, 38.051979, 34.294117>,  <45.176849, 38.024712, 34.287998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415218, 38.051979, 34.294117>,  <45.812496, 38.097427, 34.304314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415218, 38.051979, 34.294117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100010, -0.944443, 0.313091,
		-0.059646, 0.308412, 0.949381,
		-0.993197, -0.113622, -0.025488,
		45.117260, 38.017891, 34.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583538, 37.720787, 34.982082>,  <45.812496, 38.097427, 34.304314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583538, 37.720787, 34.982082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287380, 37.708950, 34.713474>,  <45.109684, 37.701847, 34.552311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287380, 37.708950, 34.713474>,  <45.583538, 37.720787, 34.982082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287380, 37.708950, 34.713474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061311, -0.997839, -0.023626,
		-0.669366, -0.058664, 0.740613,
		-0.740398, -0.029593, -0.671516,
		45.065262, 37.700073, 34.512020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246044, 37.189190, 35.130600>,  <45.583538, 37.720787, 34.982082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246044, 37.189190, 35.130600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183861, 37.257992, 34.741501>,  <45.146549, 37.299274, 34.508041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183861, 37.257992, 34.741501>,  <45.246044, 37.189190, 35.130600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183861, 37.257992, 34.741501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255622, -0.944179, -0.207807,
		-0.954196, -0.280963, 0.102815,
		-0.155462, 0.172007, -0.972752,
		45.137222, 37.309593, 34.449677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570236, 36.807117, 34.769608>,  <45.246044, 37.189190, 35.130600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570236, 36.807117, 34.769608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902096, 36.874237, 34.556622>,  <45.101212, 36.914509, 34.428829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902096, 36.874237, 34.556622>,  <44.570236, 36.807117, 34.769608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902096, 36.874237, 34.556622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145396, -0.985791, -0.084121,
		-0.539016, -0.007627, -0.842261,
		0.829652, 0.167803, -0.532466,
		45.150990, 36.924580, 34.396881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643173, 36.353725, 34.058846>,  <44.570236, 36.807117, 34.769608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643173, 36.353725, 34.058846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980835, 36.439365, 34.255440>,  <45.183434, 36.490749, 34.373398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980835, 36.439365, 34.255440>,  <44.643173, 36.353725, 34.058846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980835, 36.439365, 34.255440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181220, -0.976785, 0.114243,
		0.504538, -0.007371, -0.863358,
		0.844157, 0.214097, 0.491489,
		45.234081, 36.503593, 34.402885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188255, 35.923790, 33.830479>,  <44.643173, 36.353725, 34.058846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188255, 35.923790, 33.830479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316887, 36.049297, 34.187832>,  <45.394066, 36.124599, 34.402245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316887, 36.049297, 34.187832>,  <45.188255, 35.923790, 33.830479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316887, 36.049297, 34.187832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226592, -0.941588, 0.249134,
		0.919372, 0.122319, -0.373889,
		0.321576, 0.313767, 0.893387,
		45.413361, 36.143429, 34.455849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786850, 35.598194, 34.064316>,  <45.188255, 35.923790, 33.830479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786850, 35.598194, 34.064316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607273, 35.694321, 34.408573>,  <45.499527, 35.751995, 34.615128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607273, 35.694321, 34.408573>,  <45.786850, 35.598194, 34.064316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607273, 35.694321, 34.408573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353697, -0.836698, 0.418132,
		0.820581, 0.492121, 0.290626,
		-0.448938, 0.240317, 0.860641,
		45.472591, 35.766415, 34.666767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237431, 35.569031, 34.625408>,  <45.786850, 35.598194, 34.064316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237431, 35.569031, 34.625408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865078, 35.487808, 34.746887>,  <45.641666, 35.439075, 34.819775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865078, 35.487808, 34.746887>,  <46.237431, 35.569031, 34.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865078, 35.487808, 34.746887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285413, -0.923128, 0.257633,
		0.228039, 0.326505, 0.917275,
		-0.930880, -0.203052, 0.303698,
		45.585815, 35.426891, 34.837997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254826, 35.112896, 35.150352>,  <46.237431, 35.569031, 34.625408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254826, 35.112896, 35.150352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868771, 35.081383, 35.050507>,  <45.637138, 35.062477, 34.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868771, 35.081383, 35.050507>,  <46.254826, 35.112896, 35.150352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868771, 35.081383, 35.050507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041622, -0.987689, 0.150792,
		-0.258422, 0.135146, 0.956532,
		-0.965135, -0.078781, -0.249615,
		45.579231, 35.057747, 34.975620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934559, 34.880459, 35.101925>,  <46.254826, 35.112896, 35.150352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934559, 34.880459, 35.101925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.096287, 35.245770, 35.082123>,  <47.193325, 35.464954, 35.070240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.096287, 35.245770, 35.082123>,  <46.934559, 34.880459, 35.101925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.096287, 35.245770, 35.082123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757816, -0.304207, 0.577212,
		0.512093, -0.270896, -0.815093,
		0.404321, 0.913276, -0.049507,
		47.217583, 35.519753, 35.067272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676811, 34.829659, 34.935696>,  <46.934559, 34.880459, 35.101925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676811, 34.829659, 34.935696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603539, 35.174957, 35.123848>,  <47.559574, 35.382137, 35.236740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603539, 35.174957, 35.123848>,  <47.676811, 34.829659, 34.935696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603539, 35.174957, 35.123848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830682, -0.119968, 0.543668,
		0.525748, 0.490326, -0.695104,
		-0.183184, 0.863243, 0.470378,
		47.548584, 35.433929, 35.264961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.926769, 33.653103, 30.443806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593616, 33.462002, 30.555565>,  <37.393726, 33.347343, 30.622622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593616, 33.462002, 30.555565>,  <37.926769, 33.653103, 30.443806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593616, 33.462002, 30.555565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294981, 0.810344, 0.506289,
		-0.468288, 0.339261, -0.815848,
		-0.832882, -0.477749, 0.279399,
		37.343754, 33.318676, 30.639385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396214, 34.052887, 30.110529>,  <37.926769, 33.653103, 30.443806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396214, 34.052887, 30.110529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261909, 33.857700, 30.432808>,  <37.181328, 33.740589, 30.626175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261909, 33.857700, 30.432808>,  <37.396214, 34.052887, 30.110529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261909, 33.857700, 30.432808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312103, 0.864670, 0.393621,
		-0.888738, -0.119297, -0.442621,
		-0.335764, -0.487969, 0.805698,
		37.161179, 33.711311, 30.674517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680092, 34.213604, 30.157881>,  <37.396214, 34.052887, 30.110529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680092, 34.213604, 30.157881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785862, 34.069767, 30.515825>,  <36.849323, 33.983463, 30.730593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785862, 34.069767, 30.515825>,  <36.680092, 34.213604, 30.157881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785862, 34.069767, 30.515825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270817, 0.862865, 0.426758,
		-0.925602, -0.355187, 0.130777,
		0.264421, -0.359591, 0.894861,
		36.865189, 33.961891, 30.784283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255272, 34.425999, 30.478365>,  <36.680092, 34.213604, 30.157881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255272, 34.425999, 30.478365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505535, 34.362801, 30.783936>,  <36.655693, 34.324883, 30.967278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505535, 34.362801, 30.783936>,  <36.255272, 34.425999, 30.478365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505535, 34.362801, 30.783936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372145, 0.800211, 0.470287,
		-0.685608, -0.578532, 0.441863,
		0.625660, -0.157996, 0.763928,
		36.693233, 34.315403, 31.013115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861294, 34.542252, 31.066050>,  <36.255272, 34.425999, 30.478365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861294, 34.542252, 31.066050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.241875, 34.580921, 31.182940>,  <36.470222, 34.604122, 31.253073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.241875, 34.580921, 31.182940>,  <35.861294, 34.542252, 31.066050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241875, 34.580921, 31.182940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244362, 0.814518, 0.526163,
		-0.187156, -0.572026, 0.798598,
		0.951452, 0.096672, 0.292223,
		36.527309, 34.609924, 31.270607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868137, 34.538387, 31.825167>,  <35.861294, 34.542252, 31.066050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868137, 34.538387, 31.825167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210094, 34.723404, 31.731178>,  <36.415268, 34.834415, 31.674786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210094, 34.723404, 31.731178>,  <35.868137, 34.538387, 31.825167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210094, 34.723404, 31.731178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179690, 0.688859, 0.702271,
		0.486693, -0.558145, 0.672015,
		0.854893, 0.462545, -0.234970,
		36.466560, 34.862167, 31.660686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190083, 34.680099, 32.485596>,  <35.868137, 34.538387, 31.825167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190083, 34.680099, 32.485596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356121, 34.914005, 32.206814>,  <36.455746, 35.054348, 32.039543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356121, 34.914005, 32.206814>,  <36.190083, 34.680099, 32.485596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356121, 34.914005, 32.206814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005867, 0.764337, 0.644790,
		0.909759, -0.271739, 0.313843,
		0.415096, 0.584762, -0.696957,
		36.480648, 35.089436, 31.997726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442036, 35.191841, 32.859623>,  <36.190083, 34.680099, 32.485596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442036, 35.191841, 32.859623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532444, 35.386444, 32.522049>,  <36.586689, 35.503208, 32.319504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532444, 35.386444, 32.522049>,  <36.442036, 35.191841, 32.859623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532444, 35.386444, 32.522049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143422, 0.840291, 0.522821,
		0.963507, -0.239205, 0.120143,
		0.226017, 0.486511, -0.843934,
		36.600250, 35.532398, 32.268867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022774, 35.617916, 33.006313>,  <36.442036, 35.191841, 32.859623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022774, 35.617916, 33.006313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846596, 35.784248, 32.688046>,  <36.740891, 35.884048, 32.497086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846596, 35.784248, 32.688046>,  <37.022774, 35.617916, 33.006313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846596, 35.784248, 32.688046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101895, 0.903692, 0.415882,
		0.891980, 0.102098, -0.440395,
		-0.440442, 0.415832, -0.795672,
		36.714462, 35.908997, 32.449345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537300, 36.217594, 32.632076>,  <37.022774, 35.617916, 33.006313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537300, 36.217594, 32.632076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160011, 36.292366, 32.522243>,  <36.933640, 36.337231, 32.456345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160011, 36.292366, 32.522243>,  <37.537300, 36.217594, 32.632076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160011, 36.292366, 32.522243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117149, 0.960712, 0.251613,
		0.310832, 0.205158, -0.928059,
		-0.943218, 0.186930, -0.274586,
		36.877045, 36.348446, 32.439869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561455, 36.881729, 32.364044>,  <37.537300, 36.217594, 32.632076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561455, 36.881729, 32.364044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174568, 36.828255, 32.450405>,  <36.942436, 36.796169, 32.502224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174568, 36.828255, 32.450405>,  <37.561455, 36.881729, 32.364044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174568, 36.828255, 32.450405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055343, 0.940747, 0.334561,
		-0.247839, 0.311645, -0.917308,
		-0.967219, -0.133684, 0.215906,
		36.884403, 36.788151, 32.515179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237160, 37.504524, 32.216331>,  <37.561455, 36.881729, 32.364044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237160, 37.504524, 32.216331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008110, 37.315979, 32.484634>,  <36.870682, 37.202850, 32.645618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008110, 37.315979, 32.484634>,  <37.237160, 37.504524, 32.216331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008110, 37.315979, 32.484634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056263, 0.838847, 0.541452,
		-0.817886, 0.272308, -0.506863,
		-0.572623, -0.471363, 0.670761,
		36.836323, 37.174568, 32.685863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771885, 37.995132, 32.393143>,  <37.237160, 37.504524, 32.216331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771885, 37.995132, 32.393143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782856, 37.728016, 32.690681>,  <36.789436, 37.567745, 32.869205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782856, 37.728016, 32.690681>,  <36.771885, 37.995132, 32.393143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782856, 37.728016, 32.690681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065639, 0.743722, 0.665259,
		-0.997466, 0.030580, 0.064230,
		0.027425, -0.667789, 0.743845,
		36.791084, 37.527679, 32.913834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274776, 38.237152, 32.833454>,  <36.771885, 37.995132, 32.393143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274776, 38.237152, 32.833454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479256, 37.973225, 33.053753>,  <36.601944, 37.814869, 33.185932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479256, 37.973225, 33.053753>,  <36.274776, 38.237152, 32.833454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479256, 37.973225, 33.053753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019294, 0.649454, 0.760156,
		-0.859249, -0.377961, 0.344728,
		0.511194, -0.659814, 0.550751,
		36.632614, 37.775280, 33.218979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958904, 38.205799, 33.522915>,  <36.274776, 38.237152, 32.833454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958904, 38.205799, 33.522915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342270, 38.094555, 33.548523>,  <36.572289, 38.027809, 33.563889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342270, 38.094555, 33.548523>,  <35.958904, 38.205799, 33.522915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342270, 38.094555, 33.548523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114601, 0.580508, 0.806149,
		-0.261360, -0.765288, 0.588239,
		0.958414, -0.278108, 0.064019,
		36.629795, 38.011124, 33.567730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125038, 38.117451, 34.319698>,  <35.958904, 38.205799, 33.522915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125038, 38.117451, 34.319698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480560, 38.140644, 34.137859>,  <36.693874, 38.154560, 34.028755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480560, 38.140644, 34.137859>,  <36.125038, 38.117451, 34.319698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480560, 38.140644, 34.137859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326451, 0.616089, 0.716843,
		0.321639, -0.785539, 0.528655,
		0.888807, 0.057985, -0.454598,
		36.747204, 38.158039, 34.001480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467628, 38.175728, 34.895214>,  <36.125038, 38.117451, 34.319698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467628, 38.175728, 34.895214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697281, 38.275833, 34.583385>,  <36.835072, 38.335896, 34.396286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697281, 38.275833, 34.583385>,  <36.467628, 38.175728, 34.895214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697281, 38.275833, 34.583385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457160, 0.691908, 0.558811,
		0.679239, -0.677225, 0.282844,
		0.574142, 0.250261, -0.779570,
		36.869522, 38.350914, 34.349514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100777, 38.244926, 35.168316>,  <36.467628, 38.175728, 34.895214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100777, 38.244926, 35.168316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121788, 38.470543, 34.838688>,  <37.134396, 38.605915, 34.640911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121788, 38.470543, 34.838688>,  <37.100777, 38.244926, 35.168316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121788, 38.470543, 34.838688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512806, 0.692862, 0.506924,
		0.856896, -0.449215, -0.252854,
		0.052525, 0.564046, -0.824071,
		37.137547, 38.639755, 34.591465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752586, 38.542927, 35.147766>,  <37.100777, 38.244926, 35.168316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752586, 38.542927, 35.147766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530365, 38.773720, 34.908279>,  <37.397034, 38.912193, 34.764587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530365, 38.773720, 34.908279>,  <37.752586, 38.542927, 35.147766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530365, 38.773720, 34.908279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381576, 0.816669, 0.432957,
		0.738758, 0.012074, -0.673863,
		-0.555550, 0.576980, -0.598713,
		37.363701, 38.946815, 34.728664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190910, 39.032940, 34.981312>,  <37.752586, 38.542927, 35.147766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190910, 39.032940, 34.981312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846851, 39.203339, 34.869114>,  <37.640415, 39.305576, 34.801796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846851, 39.203339, 34.869114>,  <38.190910, 39.032940, 34.981312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846851, 39.203339, 34.869114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282961, 0.856099, 0.432467,
		0.424359, 0.292616, -0.856910,
		-0.860147, 0.425993, -0.280495,
		37.588806, 39.331135, 34.784966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376762, 39.676888, 34.600521>,  <38.190910, 39.032940, 34.981312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376762, 39.676888, 34.600521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997761, 39.718594, 34.721424>,  <37.770359, 39.743618, 34.793964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997761, 39.718594, 34.721424>,  <38.376762, 39.676888, 34.600521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997761, 39.718594, 34.721424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217362, 0.903344, 0.369762,
		-0.234486, 0.416051, -0.878589,
		-0.947507, 0.104268, 0.302255,
		37.713509, 39.749874, 34.812099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381386, 40.326252, 34.422253>,  <38.376762, 39.676888, 34.600521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381386, 40.326252, 34.422253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125561, 40.245956, 34.719078>,  <37.972065, 40.197781, 34.897175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125561, 40.245956, 34.719078>,  <38.381386, 40.326252, 34.422253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125561, 40.245956, 34.719078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255175, 0.855138, 0.451249,
		-0.725152, 0.477959, -0.495692,
		-0.639563, -0.200736, 0.742068,
		37.933693, 40.185738, 34.941700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089161, 40.695274, 34.220753>,  <38.381386, 40.326252, 34.422253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089161, 40.695274, 34.220753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474293, 40.590427, 34.194683>,  <39.705372, 40.527519, 34.179043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474293, 40.590427, 34.194683>,  <39.089161, 40.695274, 34.220753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474293, 40.590427, 34.194683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261550, -0.844559, -0.467239,
		0.067430, 0.466918, -0.881726,
		0.962832, -0.262121, -0.065174,
		39.763142, 40.511791, 34.175129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246525, 40.500702, 33.528912>,  <39.089161, 40.695274, 34.220753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246525, 40.500702, 33.528912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.512276, 40.326679, 33.771999>,  <39.671726, 40.222267, 33.917854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.512276, 40.326679, 33.771999>,  <39.246525, 40.500702, 33.528912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512276, 40.326679, 33.771999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161728, -0.877540, -0.451406,
		0.729688, 0.201619, -0.653380,
		0.664379, -0.435056, 0.607723,
		39.711590, 40.196163, 33.954315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747604, 40.128639, 33.047924>,  <39.246525, 40.500702, 33.528912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747604, 40.128639, 33.047924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802242, 39.974686, 33.413044>,  <39.835026, 39.882313, 33.632114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802242, 39.974686, 33.413044>,  <39.747604, 40.128639, 33.047924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802242, 39.974686, 33.413044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359787, -0.839241, -0.407710,
		0.922982, 0.384103, 0.023844,
		0.136592, -0.384888, 0.912800,
		39.843220, 39.859219, 33.686886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344143, 39.850338, 32.885418>,  <39.747604, 40.128639, 33.047924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344143, 39.850338, 32.885418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188099, 39.688438, 33.216232>,  <40.094471, 39.591297, 33.414722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188099, 39.688438, 33.216232>,  <40.344143, 39.850338, 32.885418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188099, 39.688438, 33.216232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379535, -0.889035, -0.256068,
		0.838908, 0.213995, 0.500438,
		-0.390110, -0.404751, 0.827037,
		40.071068, 39.567013, 33.464344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859467, 39.321651, 33.170811>,  <40.344143, 39.850338, 32.885418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859467, 39.321651, 33.170811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496468, 39.213966, 33.299793>,  <40.278667, 39.149357, 33.377182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496468, 39.213966, 33.299793>,  <40.859467, 39.321651, 33.170811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496468, 39.213966, 33.299793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131044, -0.910768, -0.391573,
		0.399098, -0.313094, 0.861796,
		-0.907496, -0.269209, 0.322457,
		40.224220, 39.133205, 33.396530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981850, 38.616127, 33.478016>,  <40.859467, 39.321651, 33.170811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981850, 38.616127, 33.478016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592499, 38.650173, 33.392879>,  <40.358891, 38.670601, 33.341797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592499, 38.650173, 33.392879>,  <40.981850, 38.616127, 33.478016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592499, 38.650173, 33.392879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014594, -0.903615, -0.428096,
		-0.228762, -0.419803, 0.878313,
		-0.973373, 0.085114, -0.212839,
		40.300488, 38.675709, 33.329029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670097, 37.999802, 33.772263>,  <40.981850, 38.616127, 33.478016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670097, 37.999802, 33.772263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.428543, 38.141365, 33.486588>,  <40.283611, 38.226303, 33.315182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.428543, 38.141365, 33.486588>,  <40.670097, 37.999802, 33.772263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428543, 38.141365, 33.486588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061583, -0.914058, -0.400881,
		-0.794685, -0.198106, 0.573786,
		-0.603891, 0.353910, -0.714188,
		40.247375, 38.247540, 33.272331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329784, 37.461918, 33.652290>,  <40.670097, 37.999802, 33.772263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329784, 37.461918, 33.652290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241852, 37.694187, 33.338730>,  <40.189091, 37.833549, 33.150593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241852, 37.694187, 33.338730>,  <40.329784, 37.461918, 33.652290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241852, 37.694187, 33.338730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011969, -0.805099, -0.593018,
		-0.975464, -0.120984, 0.183939,
		-0.219835, 0.580670, -0.783897,
		40.175900, 37.868389, 33.103561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842861, 37.006802, 33.373047>,  <40.329784, 37.461918, 33.652290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842861, 37.006802, 33.373047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.921528, 37.273129, 33.085155>,  <39.968727, 37.432922, 32.912418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.921528, 37.273129, 33.085155>,  <39.842861, 37.006802, 33.373047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921528, 37.273129, 33.085155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133282, -0.709100, -0.692397,
		-0.971370, 0.232097, -0.050713,
		0.196664, 0.665814, -0.719733,
		39.980526, 37.472874, 32.869236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330864, 37.024837, 32.861511>,  <39.842861, 37.006802, 33.373047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330864, 37.024837, 32.861511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651165, 37.161324, 32.664589>,  <39.843346, 37.243214, 32.546436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651165, 37.161324, 32.664589>,  <39.330864, 37.024837, 32.861511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651165, 37.161324, 32.664589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127497, -0.705967, -0.696674,
		-0.585267, 0.620633, -0.521802,
		0.800754, 0.341212, -0.492308,
		39.891392, 37.263687, 32.516895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172394, 36.948437, 32.193462>,  <39.330864, 37.024837, 32.861511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172394, 36.948437, 32.193462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570274, 36.988342, 32.183540>,  <39.809002, 37.012283, 32.177589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570274, 36.988342, 32.183540>,  <39.172394, 36.948437, 32.193462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570274, 36.988342, 32.183540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069046, -0.827111, -0.557781,
		-0.076160, 0.553114, -0.829617,
		0.994702, 0.099762, -0.024803,
		39.868687, 37.018272, 32.176098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288692, 37.067257, 31.489758>,  <39.172394, 36.948437, 32.193462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288692, 37.067257, 31.489758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.594101, 36.910519, 31.695086>,  <39.777344, 36.816475, 31.818281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.594101, 36.910519, 31.695086>,  <39.288692, 37.067257, 31.489758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594101, 36.910519, 31.695086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018436, -0.781323, -0.623854,
		0.645523, 0.485787, -0.589330,
		0.763518, -0.391848, 0.513318,
		39.823154, 36.792965, 31.849081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771133, 36.831291, 30.932524>,  <39.288692, 37.067257, 31.489758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771133, 36.831291, 30.932524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819901, 36.645962, 31.283630>,  <39.849163, 36.534763, 31.494293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819901, 36.645962, 31.283630>,  <39.771133, 36.831291, 30.932524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819901, 36.645962, 31.283630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042758, -0.881089, -0.471013,
		0.991618, 0.094958, -0.087614,
		0.121922, -0.463319, 0.877765,
		39.856476, 36.506966, 31.546959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358719, 36.591862, 30.809532>,  <39.771133, 36.831291, 30.932524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358719, 36.591862, 30.809532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208504, 36.345970, 31.086971>,  <40.118374, 36.198437, 31.253435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208504, 36.345970, 31.086971>,  <40.358719, 36.591862, 30.809532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208504, 36.345970, 31.086971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249075, -0.787783, -0.563346,
		0.892711, -0.038799, 0.448955,
		-0.375537, -0.614729, 0.693599,
		40.095844, 36.161552, 31.295052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801270, 35.952938, 30.801311>,  <40.358719, 36.591862, 30.809532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801270, 35.952938, 30.801311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478390, 35.842125, 31.009804>,  <40.284660, 35.775639, 31.134899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478390, 35.842125, 31.009804>,  <40.801270, 35.952938, 30.801311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478390, 35.842125, 31.009804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012473, -0.890834, -0.454158,
		0.590147, -0.360095, 0.722536,
		-0.807200, -0.277031, 0.521231,
		40.236229, 35.759014, 31.166174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963581, 35.391567, 31.293533>,  <40.801270, 35.952938, 30.801311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963581, 35.391567, 31.293533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569313, 35.387314, 31.226198>,  <40.332752, 35.384762, 31.185797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569313, 35.387314, 31.226198>,  <40.963581, 35.391567, 31.293533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569313, 35.387314, 31.226198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081586, -0.903555, -0.420633,
		-0.147630, -0.428340, 0.891477,
		-0.985672, -0.010634, -0.168338,
		40.273613, 35.384125, 31.175697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764652, 34.794365, 31.557882>,  <40.963581, 35.391567, 31.293533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764652, 34.794365, 31.557882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457520, 34.879665, 31.316235>,  <40.273239, 34.930843, 31.171246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457520, 34.879665, 31.316235>,  <40.764652, 34.794365, 31.557882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457520, 34.879665, 31.316235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128592, -0.975086, -0.180753,
		-0.627611, -0.061104, 0.776125,
		-0.767833, 0.213247, -0.604117,
		40.227169, 34.943638, 31.134998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216152, 34.215309, 31.700310>,  <40.764652, 34.794365, 31.557882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216152, 34.215309, 31.700310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129414, 34.402264, 31.357492>,  <40.077370, 34.514439, 31.151802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129414, 34.402264, 31.357492>,  <40.216152, 34.215309, 31.700310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129414, 34.402264, 31.357492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224586, -0.878269, -0.422142,
		-0.950020, 0.100940, 0.295420,
		-0.216848, 0.467391, -0.857043,
		40.064358, 34.542480, 31.100380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.493652, 33.895214, 31.438370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686932, 34.089581, 31.147055>,  <39.802898, 34.206200, 30.972265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686932, 34.089581, 31.147055>,  <39.493652, 33.895214, 31.438370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686932, 34.089581, 31.147055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121922, -0.786391, -0.605578,
		-0.866980, 0.381409, -0.320738,
		0.483198, 0.485919, -0.728287,
		39.831890, 34.235355, 30.928568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066875, 33.854443, 30.956656>,  <39.493652, 33.895214, 31.438370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066875, 33.854443, 30.956656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404568, 33.939789, 30.759981>,  <39.607182, 33.990997, 30.641977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404568, 33.939789, 30.759981>,  <39.066875, 33.854443, 30.956656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404568, 33.939789, 30.759981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272412, -0.619223, -0.736448,
		-0.461595, 0.755671, -0.464642,
		0.844228, 0.213366, -0.491684,
		39.657837, 34.003799, 30.612476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885303, 33.945526, 30.339497>,  <39.066875, 33.854443, 30.956656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885303, 33.945526, 30.339497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271389, 33.855034, 30.287077>,  <39.503040, 33.800739, 30.255625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271389, 33.855034, 30.287077>,  <38.885303, 33.945526, 30.339497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271389, 33.855034, 30.287077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249432, -0.646595, -0.720901,
		0.078356, 0.728514, -0.680535,
		0.965217, -0.226234, -0.131050,
		39.560955, 33.787163, 30.247763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982277, 33.921146, 29.678936>,  <38.885303, 33.945526, 30.339497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982277, 33.921146, 29.678936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277538, 33.700211, 29.833879>,  <39.454697, 33.567650, 29.926846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.277538, 33.700211, 29.833879>,  <38.982277, 33.921146, 29.678936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277538, 33.700211, 29.833879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264459, -0.765134, -0.587053,
		0.620633, 0.330897, -0.710860,
		0.738157, -0.552338, 0.387359,
		39.498985, 33.534508, 29.950087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367409, 33.671394, 29.122595>,  <38.982277, 33.921146, 29.678936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367409, 33.671394, 29.122595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457714, 33.433311, 29.431076>,  <39.511898, 33.290462, 29.616165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457714, 33.433311, 29.431076>,  <39.367409, 33.671394, 29.122595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457714, 33.433311, 29.431076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186876, -0.803403, -0.565350,
		0.956089, -0.016482, -0.292613,
		0.225768, -0.595208, 0.771205,
		39.525444, 33.254749, 29.662437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676853, 33.035671, 28.829630>,  <39.367409, 33.671394, 29.122595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676853, 33.035671, 28.829630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601070, 32.883045, 29.191517>,  <39.555599, 32.791470, 29.408649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601070, 32.883045, 29.191517>,  <39.676853, 33.035671, 28.829630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601070, 32.883045, 29.191517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058881, -0.924161, -0.377439,
		0.980122, -0.018238, 0.197554,
		-0.189456, -0.381568, 0.904717,
		39.544235, 32.768574, 29.462933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124928, 32.453560, 28.898539>,  <39.676853, 33.035671, 28.829630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124928, 32.453560, 28.898539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838360, 32.396275, 29.171663>,  <39.666420, 32.361904, 29.335537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838360, 32.396275, 29.171663>,  <40.124928, 32.453560, 28.898539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838360, 32.396275, 29.171663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118721, -0.939403, -0.321602,
		0.687494, -0.311466, 0.656004,
		-0.716420, -0.143218, 0.682811,
		39.623432, 32.353310, 29.376507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296146, 31.917978, 29.222332>,  <40.124928, 32.453560, 28.898539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296146, 31.917978, 29.222332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902622, 31.912371, 29.293795>,  <39.666508, 31.909006, 29.336672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902622, 31.912371, 29.293795>,  <40.296146, 31.917978, 29.222332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902622, 31.912371, 29.293795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034810, -0.962998, -0.267252,
		0.175795, -0.269145, 0.946920,
		-0.983811, -0.014019, 0.178659,
		39.607479, 31.908165, 29.347393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142437, 31.248203, 29.610025>,  <40.296146, 31.917978, 29.222332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142437, 31.248203, 29.610025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795525, 31.371954, 29.454023>,  <39.587376, 31.446205, 29.360422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795525, 31.371954, 29.454023>,  <40.142437, 31.248203, 29.610025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795525, 31.371954, 29.454023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208780, -0.937257, -0.279213,
		-0.451915, -0.160733, 0.877461,
		-0.867285, 0.309377, -0.390003,
		39.535339, 31.464767, 29.337023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682041, 30.875088, 29.857485>,  <40.142437, 31.248203, 29.610025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682041, 30.875088, 29.857485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536850, 30.998335, 29.505732>,  <39.449734, 31.072283, 29.294680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536850, 30.998335, 29.505732>,  <39.682041, 30.875088, 29.857485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536850, 30.998335, 29.505732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106052, -0.951274, -0.289533,
		-0.925742, -0.011834, 0.377969,
		-0.362979, 0.308118, -0.879380,
		39.427956, 31.090771, 29.241917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245079, 30.332645, 29.727026>,  <39.682041, 30.875088, 29.857485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245079, 30.332645, 29.727026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.262794, 30.521416, 29.374815>,  <39.273426, 30.634678, 29.163488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.262794, 30.521416, 29.374815>,  <39.245079, 30.332645, 29.727026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262794, 30.521416, 29.374815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161371, -0.866437, -0.472490,
		-0.985899, 0.163019, 0.037780,
		0.044291, 0.471924, -0.880526,
		39.276081, 30.662992, 29.110657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727192, 30.034657, 29.348541>,  <39.245079, 30.332645, 29.727026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727192, 30.034657, 29.348541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.976254, 30.194958, 29.079708>,  <39.125690, 30.291138, 28.918407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.976254, 30.194958, 29.079708>,  <38.727192, 30.034657, 29.348541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976254, 30.194958, 29.079708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111543, -0.804670, -0.583151,
		-0.774504, 0.438069, -0.456332,
		0.622657, 0.400752, -0.672083,
		39.163052, 30.315184, 28.878082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414032, 29.928394, 28.666658>,  <38.727192, 30.034657, 29.348541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414032, 29.928394, 28.666658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806896, 29.976139, 28.608526>,  <39.042614, 30.004786, 28.573647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806896, 29.976139, 28.608526>,  <38.414032, 29.928394, 28.666658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806896, 29.976139, 28.608526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013235, -0.814727, -0.579693,
		-0.187598, 0.567426, -0.801769,
		0.982157, 0.119361, -0.145331,
		39.101543, 30.011948, 28.564926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500511, 29.695757, 28.060146>,  <38.414032, 29.928394, 28.666658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500511, 29.695757, 28.060146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883999, 29.669746, 28.170872>,  <39.114090, 29.654140, 28.237307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883999, 29.669746, 28.170872>,  <38.500511, 29.695757, 28.060146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883999, 29.669746, 28.170872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142747, -0.731882, -0.666313,
		0.245924, 0.678322, -0.692388,
		0.958721, -0.065026, 0.276815,
		39.171616, 29.650238, 28.253916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990257, 29.545752, 27.405811>,  <38.500511, 29.695757, 28.060146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990257, 29.545752, 27.405811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168369, 29.395685, 27.731014>,  <39.275234, 29.305645, 27.926136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168369, 29.395685, 27.731014>,  <38.990257, 29.545752, 27.405811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168369, 29.395685, 27.731014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302504, -0.791570, -0.530951,
		0.842745, 0.482358, -0.238980,
		0.445278, -0.375164, 0.813007,
		39.301952, 29.283136, 27.974916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452404, 29.055641, 27.176855>,  <38.990257, 29.545752, 27.405811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452404, 29.055641, 27.176855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.463055, 28.960747, 27.565290>,  <39.469444, 28.903811, 27.798351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.463055, 28.960747, 27.565290>,  <39.452404, 29.055641, 27.176855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463055, 28.960747, 27.565290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137275, -0.961361, -0.238624,
		0.990175, 0.139659, 0.006970,
		0.026625, -0.237236, 0.971087,
		39.471043, 28.889576, 27.856617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029587, 28.548128, 27.269867>,  <39.452404, 29.055641, 27.176855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029587, 28.548128, 27.269867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.808872, 28.505880, 27.600777>,  <39.676445, 28.480532, 27.799322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.808872, 28.505880, 27.600777>,  <40.029587, 28.548128, 27.269867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808872, 28.505880, 27.600777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017491, -0.993195, -0.115139,
		0.833804, -0.049062, 0.549876,
		-0.551783, -0.105621, 0.827272,
		39.643337, 28.474194, 27.848959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388672, 28.066629, 27.718687>,  <40.029587, 28.548128, 27.269867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388672, 28.066629, 27.718687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003201, 28.073900, 27.825260>,  <39.771915, 28.078262, 27.889204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003201, 28.073900, 27.825260>,  <40.388672, 28.066629, 27.718687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003201, 28.073900, 27.825260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046757, -0.993754, -0.101324,
		0.262926, -0.110102, 0.958513,
		-0.963682, 0.018176, 0.266432,
		39.714096, 28.079353, 27.905190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447166, 27.547998, 28.155849>,  <40.388672, 28.066629, 27.718687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447166, 27.547998, 28.155849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064888, 27.628412, 28.069845>,  <39.835522, 27.676661, 28.018242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064888, 27.628412, 28.069845>,  <40.447166, 27.547998, 28.155849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064888, 27.628412, 28.069845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150854, -0.961739, -0.228696,
		-0.252761, -0.186128, 0.949457,
		-0.955696, 0.201035, -0.215012,
		39.778179, 27.688723, 28.005342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053719, 27.057814, 28.477333>,  <40.447166, 27.547998, 28.155849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053719, 27.057814, 28.477333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.828522, 27.188511, 28.173679>,  <39.693405, 27.266930, 27.991488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.828522, 27.188511, 28.173679>,  <40.053719, 27.057814, 28.477333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828522, 27.188511, 28.173679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069801, -0.934046, -0.350264,
		-0.823512, -0.144206, 0.548665,
		-0.562989, 0.326744, -0.759132,
		39.659626, 27.286533, 27.945940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504471, 26.588173, 28.426519>,  <40.053719, 27.057814, 28.477333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504471, 26.588173, 28.426519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.568172, 26.758972, 28.070471>,  <39.606392, 26.861452, 27.856842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.568172, 26.758972, 28.070471>,  <39.504471, 26.588173, 28.426519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568172, 26.758972, 28.070471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047453, -0.897273, -0.438918,
		-0.986096, 0.112139, -0.122633,
		0.159255, 0.426996, -0.890119,
		39.615948, 26.887072, 27.803434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133263, 26.198748, 28.020729>,  <39.504471, 26.588173, 28.426519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133263, 26.198748, 28.020729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322155, 26.412327, 27.740187>,  <39.435490, 26.540474, 27.571861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322155, 26.412327, 27.740187>,  <39.133263, 26.198748, 28.020729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322155, 26.412327, 27.740187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198228, -0.710954, -0.674722,
		-0.858899, 0.457650, -0.229888,
		0.472226, 0.533948, -0.701357,
		39.463821, 26.572512, 27.529779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672134, 26.303041, 27.328888>,  <39.133263, 26.198748, 28.020729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672134, 26.303041, 27.328888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051239, 26.350447, 27.210432>,  <39.278702, 26.378889, 27.139359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051239, 26.350447, 27.210432>,  <38.672134, 26.303041, 27.328888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051239, 26.350447, 27.210432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170318, -0.596965, -0.783980,
		-0.269697, 0.793465, -0.545597,
		0.947763, 0.118512, -0.296141,
		39.335567, 26.386000, 27.121590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442398, 25.658062, 27.674517>,  <38.672134, 26.303041, 27.328888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442398, 25.658062, 27.674517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086895, 25.502647, 27.771803>,  <37.873592, 25.409399, 27.830173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086895, 25.502647, 27.771803>,  <38.442398, 25.658062, 27.674517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086895, 25.502647, 27.771803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309770, 0.900191, 0.306102,
		-0.337872, 0.196709, -0.920407,
		-0.888755, -0.388538, 0.243214,
		37.820267, 25.386086, 27.844767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891682, 26.019875, 27.348095>,  <38.442398, 25.658062, 27.674517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891682, 26.019875, 27.348095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762707, 25.865168, 27.693682>,  <37.685322, 25.772343, 27.901035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762707, 25.865168, 27.693682>,  <37.891682, 26.019875, 27.348095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762707, 25.865168, 27.693682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286608, 0.909765, 0.300304,
		-0.902157, -0.150790, -0.404196,
		-0.322441, -0.386767, 0.863969,
		37.665974, 25.749138, 27.952873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233570, 26.243252, 27.433130>,  <37.891682, 26.019875, 27.348095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233570, 26.243252, 27.433130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.315178, 26.119867, 27.804771>,  <37.364143, 26.045837, 28.027756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.315178, 26.119867, 27.804771>,  <37.233570, 26.243252, 27.433130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315178, 26.119867, 27.804771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327714, 0.872788, 0.361726,
		-0.922485, -0.378279, 0.076980,
		0.204021, -0.308459, 0.929101,
		37.376385, 26.027330, 28.083502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602474, 26.309362, 27.803280>,  <37.233570, 26.243252, 27.433130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602474, 26.309362, 27.803280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911045, 26.323706, 28.057404>,  <37.096188, 26.332312, 28.209877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911045, 26.323706, 28.057404>,  <36.602474, 26.309362, 27.803280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911045, 26.323706, 28.057404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219318, 0.952217, 0.212561,
		-0.597331, -0.303309, 0.742428,
		0.771424, 0.035859, 0.635310,
		37.142471, 26.334463, 28.247997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309971, 26.503805, 28.338789>,  <36.602474, 26.309362, 27.803280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309971, 26.503805, 28.338789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695732, 26.593706, 28.394522>,  <36.927189, 26.647646, 28.427961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695732, 26.593706, 28.394522>,  <36.309971, 26.503805, 28.338789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695732, 26.593706, 28.394522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255858, 0.926196, 0.276943,
		-0.066803, -0.302734, 0.950731,
		0.964403, 0.224751, 0.139330,
		36.985054, 26.661131, 28.436321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477448, 26.768482, 29.010323>,  <36.309971, 26.503805, 28.338789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477448, 26.768482, 29.010323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788704, 26.904961, 28.799387>,  <36.975456, 26.986847, 28.672825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788704, 26.904961, 28.799387>,  <36.477448, 26.768482, 29.010323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788704, 26.904961, 28.799387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111058, 0.901101, 0.419146,
		0.618195, -0.267588, 0.739075,
		0.778139, 0.341194, -0.527338,
		37.022144, 27.007318, 28.641186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527554, 27.350714, 29.333590>,  <36.477448, 26.768482, 29.010323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527554, 27.350714, 29.333590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788898, 27.406263, 29.035910>,  <36.945705, 27.439592, 28.857302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788898, 27.406263, 29.035910>,  <36.527554, 27.350714, 29.333590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788898, 27.406263, 29.035910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055043, 0.971715, 0.229654,
		0.755041, -0.191010, 0.627238,
		0.653363, 0.138874, -0.744198,
		36.984909, 27.447926, 28.812651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141460, 27.708136, 29.589428>,  <36.527554, 27.350714, 29.333590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141460, 27.708136, 29.589428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142860, 27.762131, 29.193092>,  <37.143700, 27.794527, 28.955290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142860, 27.762131, 29.193092>,  <37.141460, 27.708136, 29.589428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142860, 27.762131, 29.193092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055027, 0.989320, 0.134974,
		0.998479, -0.054996, -0.003964,
		0.003501, 0.134987, -0.990841,
		37.143909, 27.802628, 28.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717857, 28.028643, 29.455391>,  <37.141460, 27.708136, 29.589428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717857, 28.028643, 29.455391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473148, 28.117290, 29.151648>,  <37.326324, 28.170479, 28.969402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473148, 28.117290, 29.151648>,  <37.717857, 28.028643, 29.455391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473148, 28.117290, 29.151648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124289, 0.974959, 0.184412,
		0.781210, 0.018438, -0.623996,
		-0.611771, 0.221620, -0.759356,
		37.289616, 28.183777, 28.923841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028687, 28.574690, 29.107521>,  <37.717857, 28.028643, 29.455391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028687, 28.574690, 29.107521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656437, 28.597000, 28.962837>,  <37.433086, 28.610386, 28.876026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656437, 28.597000, 28.962837>,  <38.028687, 28.574690, 29.107521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656437, 28.597000, 28.962837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039604, 0.997862, 0.051981,
		0.363837, 0.034049, -0.930840,
		-0.930620, 0.055778, -0.361711,
		37.377251, 28.613733, 28.854324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043507, 28.889530, 28.483795>,  <38.028687, 28.574690, 29.107521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043507, 28.889530, 28.483795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676323, 28.929163, 28.637440>,  <37.456013, 28.952942, 28.729626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676323, 28.929163, 28.637440>,  <38.043507, 28.889530, 28.483795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676323, 28.929163, 28.637440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131409, 0.989584, 0.058778,
		-0.374287, 0.104431, -0.921414,
		-0.917955, 0.099082, 0.384112,
		37.400936, 28.958887, 28.752674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730846, 29.582432, 28.152632>,  <38.043507, 28.889530, 28.483795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730846, 29.582432, 28.152632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509754, 29.485653, 28.471619>,  <37.377098, 29.427586, 28.663012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509754, 29.485653, 28.471619>,  <37.730846, 29.582432, 28.152632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509754, 29.485653, 28.471619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015379, 0.959727, 0.280514,
		-0.833220, 0.142784, -0.534188,
		-0.552728, -0.241945, 0.797468,
		37.343937, 29.413069, 28.710859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323601, 30.107483, 28.206318>,  <37.730846, 29.582432, 28.152632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323601, 30.107483, 28.206318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331886, 29.947132, 28.572678>,  <37.336857, 29.850922, 28.792494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331886, 29.947132, 28.572678>,  <37.323601, 30.107483, 28.206318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331886, 29.947132, 28.572678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035750, 0.915212, 0.401384,
		-0.999146, -0.041060, 0.004630,
		0.020718, -0.400875, 0.915898,
		37.338100, 29.826870, 28.847446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928768, 30.504208, 28.546345>,  <37.323601, 30.107483, 28.206318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928768, 30.504208, 28.546345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114841, 30.337517, 28.858740>,  <37.226486, 30.237503, 29.046177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114841, 30.337517, 28.858740>,  <36.928768, 30.504208, 28.546345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114841, 30.337517, 28.858740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055049, 0.866933, 0.495375,
		-0.883501, -0.273433, 0.380342,
		0.465183, -0.416727, 0.780989,
		37.254395, 30.212498, 29.093037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606602, 30.710814, 29.083403>,  <36.928768, 30.504208, 28.546345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606602, 30.710814, 29.083403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943607, 30.591434, 29.262779>,  <37.145809, 30.519808, 29.370405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943607, 30.591434, 29.262779>,  <36.606602, 30.710814, 29.083403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943607, 30.591434, 29.262779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111672, 0.717636, 0.687407,
		-0.526974, -0.629228, 0.571289,
		0.842513, -0.298448, 0.448442,
		37.196362, 30.501900, 29.397312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531967, 31.090115, 29.747616>,  <36.606602, 30.710814, 29.083403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531967, 31.090115, 29.747616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901760, 30.946651, 29.799294>,  <37.123638, 30.860573, 29.830301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901760, 30.946651, 29.799294>,  <36.531967, 31.090115, 29.747616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901760, 30.946651, 29.799294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204068, 0.751854, 0.626955,
		-0.321999, -0.553245, 0.768268,
		0.924485, -0.358658, 0.129196,
		37.179104, 30.839054, 29.838053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672878, 31.087683, 30.501139>,  <36.531967, 31.090115, 29.747616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672878, 31.087683, 30.501139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013466, 31.129501, 30.295586>,  <37.217819, 31.154593, 30.172253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013466, 31.129501, 30.295586>,  <36.672878, 31.087683, 30.501139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013466, 31.129501, 30.295586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154724, 0.886219, 0.436665,
		0.501066, -0.451315, 0.738408,
		0.851465, 0.104549, -0.513884,
		37.268906, 31.160866, 30.141420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152294, 31.331091, 30.987181>,  <36.672878, 31.087683, 30.501139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152294, 31.331091, 30.987181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299236, 31.433331, 30.629473>,  <37.387402, 31.494675, 30.414848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299236, 31.433331, 30.629473>,  <37.152294, 31.331091, 30.987181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299236, 31.433331, 30.629473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042075, 0.965080, 0.258556,
		0.929130, -0.057354, 0.365278,
		0.367351, 0.255601, -0.894271,
		37.409443, 31.510012, 30.361191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629459, 31.722561, 31.143164>,  <37.152294, 31.331091, 30.987181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629459, 31.722561, 31.143164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.559391, 31.839537, 30.767122>,  <37.517349, 31.909721, 30.541498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.559391, 31.839537, 30.767122>,  <37.629459, 31.722561, 31.143164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559391, 31.839537, 30.767122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103409, 0.955051, 0.277819,
		0.979092, -0.048549, -0.197540,
		-0.175173, 0.292438, -0.940103,
		37.506840, 31.927269, 30.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997292, 32.290154, 31.042295>,  <37.629459, 31.722561, 31.143164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997292, 32.290154, 31.042295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753490, 32.368782, 30.735085>,  <37.607212, 32.415958, 30.550758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753490, 32.368782, 30.735085>,  <37.997292, 32.290154, 31.042295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753490, 32.368782, 30.735085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005534, 0.969803, 0.243825,
		0.792767, 0.144361, -0.592183,
		-0.609500, 0.196574, -0.768029,
		37.570641, 32.427753, 30.504675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090664, 32.979912, 30.967150>,  <37.997292, 32.290154, 31.042295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090664, 32.979912, 30.967150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755070, 32.936356, 30.753889>,  <37.553715, 32.910221, 30.625933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755070, 32.936356, 30.753889>,  <38.090664, 32.979912, 30.967150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755070, 32.936356, 30.753889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284085, 0.923303, 0.258473,
		0.464114, 0.368315, -0.805570,
		-0.838984, -0.108890, -0.533150,
		37.503376, 32.903690, 30.593945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.949188, 36.389702, 32.366673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596546, 36.518875, 32.228989>,  <40.384960, 36.596378, 32.146378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596546, 36.518875, 32.228989>,  <40.949188, 36.389702, 32.366673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596546, 36.518875, 32.228989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219213, 0.926012, 0.307324,
		0.417988, 0.195484, -0.887171,
		-0.881607, 0.322937, -0.344209,
		40.332066, 36.615757, 32.125725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123581, 37.017700, 32.200352>,  <40.949188, 36.389702, 32.366673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123581, 37.017700, 32.200352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723785, 37.005451, 32.196541>,  <40.483910, 36.998100, 32.194252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723785, 37.005451, 32.196541>,  <41.123581, 37.017700, 32.200352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723785, 37.005451, 32.196541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031581, 0.887693, 0.459352,
		-0.005609, 0.459416, -0.888204,
		-0.999486, -0.030627, -0.009530,
		40.423939, 36.996262, 32.193684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936558, 37.785324, 31.909779>,  <41.123581, 37.017700, 32.200352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936558, 37.785324, 31.909779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610622, 37.624165, 32.076496>,  <40.415062, 37.527470, 32.176529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610622, 37.624165, 32.076496>,  <40.936558, 37.785324, 31.909779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610622, 37.624165, 32.076496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211596, 0.876102, 0.433212,
		-0.539695, 0.264804, -0.799130,
		-0.814835, -0.402895, 0.416796,
		40.366173, 37.503296, 32.201534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360527, 38.297161, 31.957424>,  <40.936558, 37.785324, 31.909779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360527, 38.297161, 31.957424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230640, 38.050243, 32.244061>,  <40.152706, 37.902092, 32.416042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230640, 38.050243, 32.244061>,  <40.360527, 38.297161, 31.957424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230640, 38.050243, 32.244061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260567, 0.786714, 0.559630,
		-0.909209, -0.004996, -0.416310,
		-0.324721, -0.617297, 0.716590,
		40.133224, 37.865055, 32.459038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700592, 38.412136, 32.073700>,  <40.360527, 38.297161, 31.957424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700592, 38.412136, 32.073700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855721, 38.265842, 32.412128>,  <39.948799, 38.178066, 32.615185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855721, 38.265842, 32.412128>,  <39.700592, 38.412136, 32.073700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855721, 38.265842, 32.412128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263339, 0.835687, 0.481954,
		-0.883314, -0.409717, 0.227790,
		0.387826, -0.365731, 0.846069,
		39.972069, 38.156124, 32.665951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312340, 38.861561, 32.509418>,  <39.700592, 38.412136, 32.073700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312340, 38.861561, 32.509418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.594719, 38.682434, 32.728905>,  <39.764149, 38.574959, 32.860596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.594719, 38.682434, 32.728905>,  <39.312340, 38.861561, 32.509418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594719, 38.682434, 32.728905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190324, 0.626297, 0.755996,
		-0.682209, -0.638131, 0.356904,
		0.705952, -0.447819, 0.548717,
		39.806503, 38.548088, 32.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023403, 38.746525, 33.167603>,  <39.312340, 38.861561, 32.509418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023403, 38.746525, 33.167603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.421822, 38.739948, 33.202515>,  <39.660873, 38.736000, 33.223461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.421822, 38.739948, 33.202515>,  <39.023403, 38.746525, 33.167603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421822, 38.739948, 33.202515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054455, 0.663229, 0.746433,
		-0.070158, -0.748236, 0.659713,
		0.996049, -0.016444, 0.087276,
		39.720634, 38.735016, 33.228699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127777, 38.735157, 33.872635>,  <39.023403, 38.746525, 33.167603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127777, 38.735157, 33.872635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475853, 38.874592, 33.733341>,  <39.684696, 38.958252, 33.649765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475853, 38.874592, 33.733341>,  <39.127777, 38.735157, 33.872635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475853, 38.874592, 33.733341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096161, 0.813306, 0.573835,
		0.483249, -0.465857, 0.741247,
		0.870186, 0.348585, -0.348231,
		39.736908, 38.979168, 33.628872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410137, 39.021484, 34.479450>,  <39.127777, 38.735157, 33.872635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410137, 39.021484, 34.479450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602802, 39.168915, 34.161419>,  <39.718399, 39.257374, 33.970600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602802, 39.168915, 34.161419>,  <39.410137, 39.021484, 34.479450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602802, 39.168915, 34.161419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026460, 0.900725, 0.433584,
		0.875959, -0.229877, 0.424090,
		0.481659, 0.368580, -0.795081,
		39.747299, 39.279488, 33.922894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094475, 39.234722, 34.759014>,  <39.410137, 39.021484, 34.479450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094475, 39.234722, 34.759014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011700, 39.435112, 34.422871>,  <39.962036, 39.555347, 34.221184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011700, 39.435112, 34.422871>,  <40.094475, 39.234722, 34.759014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011700, 39.435112, 34.422871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294063, 0.851082, 0.434955,
		0.933115, -0.157110, -0.323439,
		-0.206938, 0.500975, -0.840358,
		39.949619, 39.585403, 34.170765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600101, 39.788048, 34.760101>,  <40.094475, 39.234722, 34.759014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600101, 39.788048, 34.760101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.330517, 39.894215, 34.484325>,  <40.168766, 39.957912, 34.318859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.330517, 39.894215, 34.484325>,  <40.600101, 39.788048, 34.760101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330517, 39.894215, 34.484325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299853, 0.951184, 0.073055,
		0.675176, -0.157495, -0.720648,
		-0.673963, 0.265413, -0.689442,
		40.128326, 39.973839, 34.277493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971966, 40.092159, 34.206112>,  <40.600101, 39.788048, 34.760101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971966, 40.092159, 34.206112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.600208, 40.239651, 34.199688>,  <40.377151, 40.328148, 34.195835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.600208, 40.239651, 34.199688>,  <40.971966, 40.092159, 34.206112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600208, 40.239651, 34.199688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369054, 0.927913, -0.052695,
		-0.004532, -0.054899, -0.998482,
		-0.929397, 0.368732, -0.016055,
		40.321388, 40.350269, 34.194870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851162, 40.575928, 33.631615>,  <40.971966, 40.092159, 34.206112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851162, 40.575928, 33.631615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604122, 40.653839, 33.936413>,  <40.455898, 40.700584, 34.119289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604122, 40.653839, 33.936413>,  <40.851162, 40.575928, 33.631615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604122, 40.653839, 33.936413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392687, 0.915812, 0.084179,
		-0.681445, 0.351214, -0.642092,
		-0.617600, 0.194777, 0.761992,
		40.418842, 40.712273, 34.165012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465027, 41.242115, 33.610893>,  <40.851162, 40.575928, 33.631615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465027, 41.242115, 33.610893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.556652, 41.142578, 33.987320>,  <40.611629, 41.082855, 34.213177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.556652, 41.142578, 33.987320>,  <40.465027, 41.242115, 33.610893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556652, 41.142578, 33.987320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240664, 0.951237, 0.192949,
		-0.943191, 0.182283, 0.277783,
		0.229066, -0.248840, 0.941067,
		40.625370, 41.067924, 34.269642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299919, 41.057529, 32.926308>,  <40.465027, 41.242115, 33.610893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299919, 41.057529, 32.926308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.064445, 41.329472, 32.751381>,  <39.923161, 41.492638, 32.646427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.064445, 41.329472, 32.751381>,  <40.299919, 41.057529, 32.926308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064445, 41.329472, 32.751381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175941, -0.635779, -0.751552,
		-0.788984, -0.365484, 0.493887,
		-0.588684, 0.679857, -0.437316,
		39.887840, 41.533428, 32.620186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923397, 40.712196, 32.341152>,  <40.299919, 41.057529, 32.926308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923397, 40.712196, 32.341152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813000, 41.082909, 32.239250>,  <39.746761, 41.305336, 32.178108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813000, 41.082909, 32.239250>,  <39.923397, 40.712196, 32.341152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813000, 41.082909, 32.239250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339641, -0.341986, -0.876179,
		-0.899151, -0.155294, 0.409159,
		-0.275992, 0.926785, -0.254753,
		39.730202, 41.360943, 32.162823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245930, 40.678745, 32.257549>,  <39.923397, 40.712196, 32.341152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245930, 40.678745, 32.257549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366493, 40.992027, 32.040020>,  <39.438831, 41.179996, 31.909502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366493, 40.992027, 32.040020>,  <39.245930, 40.678745, 32.257549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366493, 40.992027, 32.040020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482900, -0.366409, -0.795331,
		-0.822168, 0.502333, 0.267770,
		0.301408, 0.783202, -0.543826,
		39.456917, 41.226990, 31.876873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715492, 40.883774, 31.867205>,  <39.245930, 40.678745, 32.257549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715492, 40.883774, 31.867205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.037109, 41.033310, 31.682270>,  <39.230080, 41.123032, 31.571310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.037109, 41.033310, 31.682270>,  <38.715492, 40.883774, 31.867205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037109, 41.033310, 31.682270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349029, -0.332747, -0.876047,
		-0.481341, 0.865751, -0.137064,
		0.804046, 0.373838, -0.462336,
		39.278324, 41.145462, 31.543570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525517, 41.197651, 31.253603>,  <38.715492, 40.883774, 31.867205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525517, 41.197651, 31.253603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905018, 41.135986, 31.143255>,  <39.132717, 41.098988, 31.077045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905018, 41.135986, 31.143255>,  <38.525517, 41.197651, 31.253603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905018, 41.135986, 31.143255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310893, -0.298659, -0.902302,
		0.056706, 0.941827, -0.331280,
		0.948752, -0.154159, -0.275872,
		39.189644, 41.089737, 31.060493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520042, 41.457294, 30.588156>,  <38.525517, 41.197651, 31.253603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520042, 41.457294, 30.588156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830730, 41.207470, 30.620718>,  <39.017143, 41.057575, 30.640255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830730, 41.207470, 30.620718>,  <38.520042, 41.457294, 30.588156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830730, 41.207470, 30.620718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138007, -0.294871, -0.945518,
		0.614534, 0.723173, -0.315227,
		0.776725, -0.624557, 0.081406,
		39.063747, 41.020103, 30.645140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902672, 41.446239, 29.916372>,  <38.520042, 41.457294, 30.588156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902672, 41.446239, 29.916372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009823, 41.102455, 30.090530>,  <39.074112, 40.896183, 30.195024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009823, 41.102455, 30.090530>,  <38.902672, 41.446239, 29.916372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009823, 41.102455, 30.090530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049196, -0.439118, -0.897082,
		0.962197, 0.261725, -0.075347,
		0.267874, -0.859463, 0.435393,
		39.090183, 40.844616, 30.221148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371429, 41.120216, 29.405350>,  <38.902672, 41.446239, 29.916372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371429, 41.120216, 29.405350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298470, 40.823780, 29.663809>,  <39.254692, 40.645916, 29.818884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298470, 40.823780, 29.663809>,  <39.371429, 41.120216, 29.405350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298470, 40.823780, 29.663809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041502, -0.650784, -0.758128,
		0.982348, -0.165100, 0.087947,
		-0.182401, -0.741095, 0.646148,
		39.243748, 40.601452, 29.857653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947048, 40.706196, 29.366064>,  <39.371429, 41.120216, 29.405350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947048, 40.706196, 29.366064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628239, 40.507317, 29.503201>,  <39.436951, 40.387989, 29.585484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628239, 40.507317, 29.503201>,  <39.947048, 40.706196, 29.366064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628239, 40.507317, 29.503201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176245, -0.734445, -0.655385,
		0.577655, -0.461935, 0.673001,
		-0.797027, -0.497199, 0.342842,
		39.389130, 40.358158, 29.606052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130852, 39.948364, 29.526527>,  <39.947048, 40.706196, 29.366064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130852, 39.948364, 29.526527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.735153, 39.956757, 29.468626>,  <39.497734, 39.961792, 29.433886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.735153, 39.956757, 29.468626>,  <40.130852, 39.948364, 29.526527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735153, 39.956757, 29.468626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074523, -0.779268, -0.622244,
		-0.125857, -0.626340, 0.769323,
		-0.989246, 0.020981, -0.144753,
		39.438381, 39.963051, 29.425200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800522, 39.268440, 29.747932>,  <40.130852, 39.948364, 29.526527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800522, 39.268440, 29.747932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545067, 39.440884, 29.492971>,  <39.391792, 39.544350, 29.339994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545067, 39.440884, 29.492971>,  <39.800522, 39.268440, 29.747932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545067, 39.440884, 29.492971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009348, -0.832615, -0.553774,
		-0.769447, -0.347705, 0.535773,
		-0.638643, 0.431108, -0.637402,
		39.353474, 39.570217, 29.301750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332058, 38.728310, 29.720057>,  <39.800522, 39.268440, 29.747932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332058, 38.728310, 29.720057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262913, 38.957649, 29.399712>,  <39.221424, 39.095253, 29.207504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262913, 38.957649, 29.399712>,  <39.332058, 38.728310, 29.720057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262913, 38.957649, 29.399712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226889, -0.814418, -0.534083,
		-0.958456, 0.089382, 0.270874,
		-0.172867, 0.573353, -0.800864,
		39.211052, 39.129654, 29.159452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657246, 38.520061, 29.504305>,  <39.332058, 38.728310, 29.720057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657246, 38.520061, 29.504305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.810532, 38.713043, 29.189249>,  <38.902504, 38.828835, 29.000216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.810532, 38.713043, 29.189249>,  <38.657246, 38.520061, 29.504305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810532, 38.713043, 29.189249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176020, -0.798968, -0.575037,
		-0.906732, 0.359004, -0.221255,
		0.383216, 0.482459, -0.787642,
		38.925495, 38.857780, 28.952957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165886, 38.509068, 28.988361>,  <38.657246, 38.520061, 29.504305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165886, 38.509068, 28.988361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515297, 38.558258, 28.799967>,  <38.724945, 38.587772, 28.686930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515297, 38.558258, 28.799967>,  <38.165886, 38.509068, 28.988361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515297, 38.558258, 28.799967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224195, -0.757184, -0.613522,
		-0.432073, 0.641521, -0.633849,
		0.873527, 0.122980, -0.470984,
		38.777355, 38.595154, 28.658672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357235, 38.500027, 28.700270>,  <38.165886, 38.509068, 28.988361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357235, 38.500027, 28.700270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.043179, 38.397251, 28.474867>,  <36.854744, 38.335587, 28.339624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.043179, 38.397251, 28.474867>,  <37.357235, 38.500027, 28.700270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043179, 38.397251, 28.474867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541969, 0.725370, 0.424391,
		0.299710, 0.638610, -0.708767,
		-0.785139, -0.256936, -0.563508,
		36.807636, 38.320171, 28.305815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127823, 39.083511, 28.407593>,  <37.357235, 38.500027, 28.700270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127823, 39.083511, 28.407593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.790180, 38.875862, 28.353939>,  <36.587593, 38.751270, 28.321747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.790180, 38.875862, 28.353939>,  <37.127823, 39.083511, 28.407593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790180, 38.875862, 28.353939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528597, 0.763800, 0.370399,
		-0.089834, 0.383558, -0.919137,
		-0.844106, -0.519127, -0.134132,
		36.536949, 38.720123, 28.313700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617264, 39.589291, 28.237619>,  <37.127823, 39.083511, 28.407593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617264, 39.589291, 28.237619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443268, 39.257320, 28.377337>,  <36.338871, 39.058136, 28.461166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443268, 39.257320, 28.377337>,  <36.617264, 39.589291, 28.237619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443268, 39.257320, 28.377337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634955, 0.557767, 0.534535,
		-0.638449, 0.010732, -0.769589,
		-0.434988, -0.829928, 0.349292,
		36.312771, 39.008343, 28.482124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902607, 39.708542, 28.127647>,  <36.617264, 39.589291, 28.237619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902607, 39.708542, 28.127647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905983, 39.427860, 28.412613>,  <35.908009, 39.259449, 28.583593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.905983, 39.427860, 28.412613>,  <35.902607, 39.708542, 28.127647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905983, 39.427860, 28.412613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602449, 0.565062, 0.563702,
		-0.798113, -0.433949, -0.417976,
		0.008436, -0.701707, 0.712416,
		35.908512, 39.217350, 28.626337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226025, 39.582260, 28.275759>,  <35.902607, 39.708542, 28.127647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226025, 39.582260, 28.275759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.427639, 39.439571, 28.590387>,  <35.548607, 39.353958, 28.779165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.427639, 39.439571, 28.590387>,  <35.226025, 39.582260, 28.275759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427639, 39.439571, 28.590387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677431, 0.401650, 0.616250,
		-0.535758, -0.843461, -0.039211,
		0.504034, -0.356724, 0.786574,
		35.578850, 39.332554, 28.826359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708111, 39.300163, 28.763147>,  <35.226025, 39.582260, 28.275759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708111, 39.300163, 28.763147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048294, 39.367451, 28.962513>,  <35.252403, 39.407822, 29.082132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048294, 39.367451, 28.962513>,  <34.708111, 39.300163, 28.763147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048294, 39.367451, 28.962513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483824, 0.622027, 0.615627,
		-0.206469, -0.764713, 0.610398,
		0.850462, 0.168217, 0.498416,
		35.303432, 39.417915, 29.112038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574478, 39.188023, 29.582781>,  <34.708111, 39.300163, 28.763147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574478, 39.188023, 29.582781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887684, 39.433186, 29.540386>,  <35.075607, 39.580284, 29.514950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887684, 39.433186, 29.540386>,  <34.574478, 39.188023, 29.582781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887684, 39.433186, 29.540386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424806, 0.651418, 0.628645,
		0.454343, -0.447215, 0.770436,
		0.783015, 0.612906, -0.105987,
		35.122589, 39.617058, 29.508591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730534, 39.481239, 30.252085>,  <34.574478, 39.188023, 29.582781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730534, 39.481239, 30.252085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949265, 39.724670, 30.022089>,  <35.080505, 39.870728, 29.884092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949265, 39.724670, 30.022089>,  <34.730534, 39.481239, 30.252085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949265, 39.724670, 30.022089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121001, 0.737000, 0.664974,
		0.828454, -0.294053, 0.476652,
		0.546830, 0.608576, -0.574989,
		35.113316, 39.907242, 29.849592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310154, 39.805275, 30.641317>,  <34.730534, 39.481239, 30.252085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310154, 39.805275, 30.641317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269142, 40.052872, 30.329845>,  <35.244534, 40.201431, 30.142963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269142, 40.052872, 30.329845>,  <35.310154, 39.805275, 30.641317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269142, 40.052872, 30.329845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152364, 0.783338, 0.602633,
		0.982992, -0.056855, -0.174627,
		-0.102529, 0.618990, -0.778678,
		35.238384, 40.238567, 30.096243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743702, 40.434204, 30.740641>,  <35.310154, 39.805275, 30.641317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743702, 40.434204, 30.740641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.474522, 40.544327, 30.466024>,  <35.313011, 40.610401, 30.301254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.474522, 40.544327, 30.466024>,  <35.743702, 40.434204, 30.740641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474522, 40.544327, 30.466024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062773, 0.903548, 0.423863,
		0.737015, 0.328337, -0.590765,
		-0.672955, 0.275309, -0.686539,
		35.272636, 40.626919, 30.260063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952332, 41.121502, 30.470848>,  <35.743702, 40.434204, 30.740641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952332, 41.121502, 30.470848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.561577, 41.089108, 30.391714>,  <35.327126, 41.069672, 30.344234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.561577, 41.089108, 30.391714>,  <35.952332, 41.121502, 30.470848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561577, 41.089108, 30.391714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149930, 0.919235, 0.364045,
		0.152373, 0.385291, -0.910128,
		-0.976885, -0.080985, -0.197833,
		35.268513, 41.064812, 30.332365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832352, 41.738831, 30.227678>,  <35.952332, 41.121502, 30.470848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832352, 41.738831, 30.227678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463379, 41.610748, 30.314013>,  <35.241997, 41.533897, 30.365814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463379, 41.610748, 30.314013>,  <35.832352, 41.738831, 30.227678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463379, 41.610748, 30.314013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234083, 0.908195, 0.346968,
		-0.307124, 0.269530, -0.912704,
		-0.922432, -0.320210, 0.215837,
		35.186649, 41.514687, 30.378763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.987888, 35.949436, 25.433191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666058, 35.796246, 25.614735>,  <37.472958, 35.704330, 25.723660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666058, 35.796246, 25.614735>,  <37.987888, 35.949436, 25.433191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666058, 35.796246, 25.614735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140530, 0.865345, 0.481072,
		-0.576981, 0.323279, -0.750056,
		-0.804577, -0.382974, 0.453857,
		37.424683, 35.681355, 25.750893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297840, 36.369251, 25.346907>,  <37.987888, 35.949436, 25.433191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297840, 36.369251, 25.346907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253986, 36.171879, 25.692045>,  <37.227673, 36.053455, 25.899128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253986, 36.171879, 25.692045>,  <37.297840, 36.369251, 25.346907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253986, 36.171879, 25.692045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185997, 0.862931, 0.469845,
		-0.976415, -0.108976, -0.186382,
		-0.109633, -0.493430, 0.862848,
		37.221096, 36.023849, 25.950899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801346, 36.784851, 25.700756>,  <37.297840, 36.369251, 25.346907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801346, 36.784851, 25.700756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979774, 36.565479, 25.983667>,  <37.086834, 36.433857, 26.153414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979774, 36.565479, 25.983667>,  <36.801346, 36.784851, 25.700756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979774, 36.565479, 25.983667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139876, 0.737825, 0.660339,
		-0.883998, -0.393492, 0.252412,
		0.446074, -0.548432, 0.707276,
		37.113598, 36.400951, 26.195850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386169, 36.804848, 26.376265>,  <36.801346, 36.784851, 25.700756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386169, 36.804848, 26.376265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745960, 36.689968, 26.507996>,  <36.961834, 36.621040, 26.587034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745960, 36.689968, 26.507996>,  <36.386169, 36.804848, 26.376265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745960, 36.689968, 26.507996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148887, 0.507128, 0.848913,
		-0.410820, -0.812610, 0.413390,
		0.899477, -0.287203, 0.329325,
		37.015804, 36.603806, 26.606792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277439, 36.688046, 27.038160>,  <36.386169, 36.804848, 26.376265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277439, 36.688046, 27.038160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675659, 36.725609, 27.041491>,  <36.914589, 36.748146, 27.043489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675659, 36.725609, 27.041491>,  <36.277439, 36.688046, 27.038160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675659, 36.725609, 27.041491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068840, 0.663765, 0.744766,
		0.064412, -0.742022, 0.667273,
		0.995546, 0.093907, 0.008326,
		36.974323, 36.753780, 27.043989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490692, 36.542011, 27.711983>,  <36.277439, 36.688046, 27.038160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490692, 36.542011, 27.711983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772968, 36.768307, 27.541365>,  <36.942333, 36.904083, 27.438993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772968, 36.768307, 27.541365>,  <36.490692, 36.542011, 27.711983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772968, 36.768307, 27.541365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040530, 0.633267, 0.772871,
		0.707365, -0.528117, 0.469817,
		0.705686, 0.565744, -0.426546,
		36.984676, 36.938030, 27.413401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839962, 36.693649, 28.178041>,  <36.490692, 36.542011, 27.711983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839962, 36.693649, 28.178041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960522, 36.988209, 27.935762>,  <37.032860, 37.164944, 27.790394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960522, 36.988209, 27.935762>,  <36.839962, 36.693649, 28.178041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960522, 36.988209, 27.935762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071481, 0.650903, 0.755788,
		0.950814, -0.184501, 0.248823,
		0.301403, 0.736400, -0.605699,
		37.050941, 37.209129, 27.754053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141392, 37.212917, 28.550106>,  <36.839962, 36.693649, 28.178041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141392, 37.212917, 28.550106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046646, 37.412781, 28.216824>,  <36.989799, 37.532700, 28.016853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046646, 37.412781, 28.216824>,  <37.141392, 37.212917, 28.550106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046646, 37.412781, 28.216824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322102, 0.768721, 0.552556,
		0.916594, 0.399260, -0.021144,
		-0.236867, 0.499659, -0.833207,
		36.975586, 37.562679, 27.966862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584442, 37.860569, 28.452806>,  <37.141392, 37.212917, 28.550106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584442, 37.860569, 28.452806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235977, 37.900894, 28.260593>,  <37.026897, 37.925087, 28.145266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235977, 37.900894, 28.260593>,  <37.584442, 37.860569, 28.452806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235977, 37.900894, 28.260593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182322, 0.842299, 0.507238,
		0.455888, 0.529499, -0.715400,
		-0.871163, 0.100811, -0.480534,
		36.974628, 37.931137, 28.116434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062347, 38.403366, 28.236237>,  <37.584442, 37.860569, 28.452806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062347, 38.403366, 28.236237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461266, 38.384960, 28.259172>,  <38.700615, 38.373917, 28.272934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461266, 38.384960, 28.259172>,  <38.062347, 38.403366, 28.236237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461266, 38.384960, 28.259172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001180, -0.769801, -0.638283,
		0.073511, 0.636623, -0.767663,
		0.997294, -0.046015, 0.057340,
		38.760452, 38.371155, 28.276375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310745, 38.240902, 27.588669>,  <38.062347, 38.403366, 28.236237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310745, 38.240902, 27.588669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630714, 38.132755, 27.802969>,  <38.822697, 38.067867, 27.931549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630714, 38.132755, 27.802969>,  <38.310745, 38.240902, 27.588669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630714, 38.132755, 27.802969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100593, -0.819714, -0.563871,
		0.591615, 0.504945, -0.628508,
		0.799921, -0.270371, 0.535748,
		38.870689, 38.051643, 27.963694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756138, 37.861519, 27.167881>,  <38.310745, 38.240902, 27.588669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756138, 37.861519, 27.167881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876987, 37.767239, 27.537350>,  <38.949497, 37.710670, 27.759031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876987, 37.767239, 27.537350>,  <38.756138, 37.861519, 27.167881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876987, 37.767239, 27.537350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171210, -0.939779, -0.295808,
		0.937767, 0.247513, -0.243579,
		0.302126, -0.235696, 0.923670,
		38.967625, 37.696529, 27.814451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435997, 37.710247, 27.109903>,  <38.756138, 37.861519, 27.167881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435997, 37.710247, 27.109903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308121, 37.510693, 27.432123>,  <39.231396, 37.390961, 27.625456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308121, 37.510693, 27.432123>,  <39.435997, 37.710247, 27.109903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308121, 37.510693, 27.432123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533090, -0.797547, -0.282371,
		0.783336, 0.339160, 0.520918,
		-0.319688, -0.498888, 0.805550,
		39.212215, 37.361027, 27.673788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981140, 37.409966, 27.299883>,  <39.435997, 37.710247, 27.109903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981140, 37.409966, 27.299883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711075, 37.199261, 27.506449>,  <39.549038, 37.072838, 27.630388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711075, 37.199261, 27.506449>,  <39.981140, 37.409966, 27.299883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711075, 37.199261, 27.506449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324244, -0.840722, -0.433650,
		0.662591, -0.125338, 0.738420,
		-0.675159, -0.526760, 0.516415,
		39.508526, 37.041233, 27.661373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320938, 36.960606, 27.740595>,  <39.981140, 37.409966, 27.299883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320938, 36.960606, 27.740595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959766, 36.789631, 27.722637>,  <39.743065, 36.687046, 27.711863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959766, 36.789631, 27.722637>,  <40.320938, 36.960606, 27.740595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959766, 36.789631, 27.722637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428838, -0.889062, -0.160209,
		0.028564, -0.163911, 0.986062,
		-0.902930, -0.427436, -0.044896,
		39.688889, 36.661400, 27.709167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266430, 36.283760, 28.198669>,  <40.320938, 36.960606, 27.740595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266430, 36.283760, 28.198669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983868, 36.215679, 27.923855>,  <39.814331, 36.174831, 27.758966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983868, 36.215679, 27.923855>,  <40.266430, 36.283760, 28.198669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983868, 36.215679, 27.923855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387167, -0.905487, -0.173767,
		-0.592529, -0.388748, 0.705538,
		-0.706407, -0.170199, -0.687038,
		39.771946, 36.164619, 27.717743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340076, 35.655777, 28.196495>,  <40.266430, 36.283760, 28.198669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340076, 35.655777, 28.196495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110851, 35.712593, 27.873652>,  <39.973316, 35.746685, 27.679945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110851, 35.712593, 27.873652>,  <40.340076, 35.655777, 28.196495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110851, 35.712593, 27.873652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067433, -0.973352, -0.219178,
		-0.816734, -0.180028, 0.548211,
		-0.573060, 0.142043, -0.807109,
		39.938934, 35.755207, 27.631519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971798, 34.980232, 28.234495>,  <40.340076, 35.655777, 28.196495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971798, 34.980232, 28.234495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915630, 35.136414, 27.870554>,  <39.881931, 35.230122, 27.652189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915630, 35.136414, 27.870554>,  <39.971798, 34.980232, 28.234495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915630, 35.136414, 27.870554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275536, -0.867245, -0.414688,
		-0.950980, -0.308927, 0.014194,
		-0.140418, 0.390449, -0.909853,
		39.873505, 35.253548, 27.597599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549984, 34.526340, 27.884912>,  <39.971798, 34.980232, 28.234495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549984, 34.526340, 27.884912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720779, 34.729259, 27.585491>,  <39.823257, 34.851009, 27.405838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720779, 34.729259, 27.585491>,  <39.549984, 34.526340, 27.884912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720779, 34.729259, 27.585491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332107, -0.857935, -0.391986,
		-0.841063, -0.081226, -0.534805,
		0.426988, 0.507297, -0.748552,
		39.848877, 34.881447, 27.360926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340435, 34.295719, 27.205528>,  <39.549984, 34.526340, 27.884912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340435, 34.295719, 27.205528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689720, 34.481846, 27.147602>,  <39.899292, 34.593521, 27.112846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689720, 34.481846, 27.147602>,  <39.340435, 34.295719, 27.205528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689720, 34.481846, 27.147602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322784, -0.774876, -0.543486,
		-0.365110, 0.427836, -0.826832,
		0.873215, 0.465320, -0.144817,
		39.951683, 34.621441, 27.104156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398739, 34.354095, 26.503017>,  <39.340435, 34.295719, 27.205528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398739, 34.354095, 26.503017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760159, 34.358707, 26.674353>,  <39.977009, 34.361473, 26.777153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760159, 34.358707, 26.674353>,  <39.398739, 34.354095, 26.503017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760159, 34.358707, 26.674353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294623, -0.742564, -0.601495,
		0.311133, 0.669676, -0.674337,
		0.903545, 0.011530, 0.428338,
		40.031223, 34.362167, 26.802855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793655, 34.311577, 25.956224>,  <39.398739, 34.354095, 26.503017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793655, 34.311577, 25.956224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995571, 34.196522, 26.281790>,  <40.116718, 34.127491, 26.477129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995571, 34.196522, 26.281790>,  <39.793655, 34.311577, 25.956224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995571, 34.196522, 26.281790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207246, -0.874900, -0.437721,
		0.837997, 0.389636, -0.382027,
		0.504787, -0.287636, 0.813914,
		40.147007, 34.110229, 26.525965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524654, 34.080013, 25.656456>,  <39.793655, 34.311577, 25.956224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524654, 34.080013, 25.656456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458443, 33.940002, 26.025255>,  <40.418716, 33.855995, 26.246534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458443, 33.940002, 26.025255>,  <40.524654, 34.080013, 25.656456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458443, 33.940002, 26.025255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157995, -0.932232, -0.325548,
		0.973466, 0.091783, 0.209616,
		-0.165531, -0.350028, 0.921998,
		40.408783, 33.834995, 26.301855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.173950, 30.901188, 31.407009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324867, 31.088322, 31.087315>,  <34.415417, 31.200602, 30.895498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324867, 31.088322, 31.087315>,  <34.173950, 30.901188, 31.407009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324867, 31.088322, 31.087315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280531, 0.764735, 0.580071,
		0.882581, -0.443069, 0.157289,
		0.377296, 0.467836, -0.799235,
		34.438057, 31.228672, 30.847544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752216, 31.244688, 31.638723>,  <34.173950, 30.901188, 31.407009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752216, 31.244688, 31.638723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690189, 31.441328, 31.295961>,  <34.652973, 31.559313, 31.090305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690189, 31.441328, 31.295961>,  <34.752216, 31.244688, 31.638723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690189, 31.441328, 31.295961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209533, 0.864027, 0.457770,
		0.965427, -0.108564, -0.236989,
		-0.155068, 0.491601, -0.856903,
		34.643669, 31.588808, 31.038891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309418, 31.715513, 31.596573>,  <34.752216, 31.244688, 31.638723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309418, 31.715513, 31.596573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020100, 31.884792, 31.378305>,  <34.846508, 31.986359, 31.247345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020100, 31.884792, 31.378305>,  <35.309418, 31.715513, 31.596573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020100, 31.884792, 31.378305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327436, 0.905904, 0.268557,
		0.607975, 0.015574, -0.793804,
		-0.723293, 0.423196, -0.545667,
		34.803112, 32.011749, 31.214605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549583, 32.386250, 31.589725>,  <35.309418, 31.715513, 31.596573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549583, 32.386250, 31.589725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181965, 32.421841, 31.436136>,  <34.961395, 32.443195, 31.343983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181965, 32.421841, 31.436136>,  <35.549583, 32.386250, 31.589725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181965, 32.421841, 31.436136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020247, 0.962241, 0.271445,
		0.393626, 0.257245, -0.882544,
		-0.919047, 0.088979, -0.383972,
		34.906250, 32.448536, 31.320944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524223, 32.948547, 31.101599>,  <35.549583, 32.386250, 31.589725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524223, 32.948547, 31.101599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148537, 32.913578, 31.234402>,  <34.923126, 32.892597, 31.314083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148537, 32.913578, 31.234402>,  <35.524223, 32.948547, 31.101599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148537, 32.913578, 31.234402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009541, 0.960015, 0.279786,
		-0.343194, 0.265947, -0.900827,
		-0.939216, -0.087426, 0.332009,
		34.866772, 32.887352, 31.334003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137047, 33.502968, 30.801777>,  <35.524223, 32.948547, 31.101599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137047, 33.502968, 30.801777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904026, 33.383312, 31.104074>,  <34.764214, 33.311520, 31.285454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904026, 33.383312, 31.104074>,  <35.137047, 33.502968, 30.801777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904026, 33.383312, 31.104074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175286, 0.954168, 0.242567,
		-0.793670, 0.008836, -0.608285,
		-0.582549, -0.299142, 0.755745,
		34.729259, 33.293571, 31.330797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559013, 33.969769, 30.738291>,  <35.137047, 33.502968, 30.801777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559013, 33.969769, 30.738291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542381, 33.828629, 31.112192>,  <34.532402, 33.743946, 31.336533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542381, 33.828629, 31.112192>,  <34.559013, 33.969769, 30.738291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542381, 33.828629, 31.112192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357129, 0.879008, 0.315919,
		-0.933129, -0.320691, -0.162565,
		-0.041583, -0.352850, 0.934756,
		34.529907, 33.722775, 31.392618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897552, 34.085476, 30.950954>,  <34.559013, 33.969769, 30.738291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897552, 34.085476, 30.950954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100582, 34.061378, 31.294754>,  <34.222401, 34.046921, 31.501034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100582, 34.061378, 31.294754>,  <33.897552, 34.085476, 30.950954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100582, 34.061378, 31.294754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290240, 0.927296, 0.236395,
		-0.811252, -0.369449, 0.453187,
		0.507574, -0.060243, 0.859499,
		34.252853, 34.043304, 31.552605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374077, 34.210049, 31.496019>,  <33.897552, 34.085476, 30.950954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374077, 34.210049, 31.496019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746510, 34.286366, 31.620398>,  <33.969967, 34.332157, 31.695024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746510, 34.286366, 31.620398>,  <33.374077, 34.210049, 31.496019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746510, 34.286366, 31.620398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307457, 0.869173, 0.387308,
		-0.196370, -0.456218, 0.867931,
		0.931080, 0.190796, 0.310947,
		34.025833, 34.343605, 31.713682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233959, 34.608601, 32.080662>,  <33.374077, 34.210049, 31.496019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233959, 34.608601, 32.080662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.616547, 34.672623, 31.983053>,  <33.846100, 34.711037, 31.924488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.616547, 34.672623, 31.983053>,  <33.233959, 34.608601, 32.080662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616547, 34.672623, 31.983053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073333, 0.941173, 0.329871,
		0.282461, -0.297617, 0.911943,
		0.956472, 0.160051, -0.244020,
		33.903488, 34.720638, 31.909847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529182, 35.072247, 32.661972>,  <33.233959, 34.608601, 32.080662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529182, 35.072247, 32.661972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.812550, 35.124573, 32.384548>,  <33.982571, 35.155968, 32.218094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.812550, 35.124573, 32.384548>,  <33.529182, 35.072247, 32.661972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812550, 35.124573, 32.384548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061694, 0.990389, 0.123788,
		0.703089, -0.044906, 0.709683,
		0.708421, 0.130817, -0.693561,
		34.025074, 35.163818, 32.176479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912193, 35.522667, 33.011486>,  <33.529182, 35.072247, 32.661972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912193, 35.522667, 33.011486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.012066, 35.570496, 32.627121>,  <34.071991, 35.599194, 32.396500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.012066, 35.570496, 32.627121>,  <33.912193, 35.522667, 33.011486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012066, 35.570496, 32.627121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208222, 0.962503, 0.173870,
		0.945675, -0.243497, 0.215427,
		0.249686, 0.119568, -0.960917,
		34.086971, 35.606365, 32.338844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429283, 35.897476, 33.078289>,  <33.912193, 35.522667, 33.011486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429283, 35.897476, 33.078289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.331909, 35.948811, 32.693733>,  <34.273483, 35.979610, 32.463001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.331909, 35.948811, 32.693733>,  <34.429283, 35.897476, 33.078289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331909, 35.948811, 32.693733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227178, 0.971179, 0.072118,
		0.942936, -0.200850, -0.265578,
		-0.243438, 0.128336, -0.961388,
		34.258877, 35.987312, 32.405315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009884, 36.344597, 32.795689>,  <34.429283, 35.897476, 33.078289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009884, 36.344597, 32.795689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.685310, 36.371487, 32.563465>,  <34.490566, 36.387619, 32.424129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.685310, 36.371487, 32.563465>,  <35.009884, 36.344597, 32.795689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685310, 36.371487, 32.563465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070115, 0.997386, 0.017489,
		0.580217, -0.026515, -0.814031,
		-0.811439, 0.067223, -0.580559,
		34.441879, 36.391655, 32.389297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635708, 36.329510, 32.200375>,  <35.009884, 36.344597, 32.795689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635708, 36.329510, 32.200375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028980, 36.363071, 32.265274>,  <36.264942, 36.383209, 32.304214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028980, 36.363071, 32.265274>,  <35.635708, 36.329510, 32.200375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028980, 36.363071, 32.265274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172386, -0.719857, -0.672375,
		0.060381, 0.689033, -0.722211,
		0.983177, 0.083901, 0.162245,
		36.323933, 36.388241, 32.313946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028683, 36.394432, 31.479881>,  <35.635708, 36.329510, 32.200375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028683, 36.394432, 31.479881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255013, 36.253521, 31.778074>,  <36.390812, 36.168976, 31.956989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255013, 36.253521, 31.778074>,  <36.028683, 36.394432, 31.479881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255013, 36.253521, 31.778074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190129, -0.824024, -0.533699,
		0.802303, 0.443719, -0.399278,
		0.565827, -0.352274, 0.745481,
		36.424759, 36.147839, 32.001720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682598, 36.181862, 31.188660>,  <36.028683, 36.394432, 31.479881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682598, 36.181862, 31.188660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.663673, 35.965752, 31.524721>,  <36.652321, 35.836086, 31.726358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.663673, 35.965752, 31.524721>,  <36.682598, 36.181862, 31.188660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663673, 35.965752, 31.524721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189574, -0.830666, -0.523504,
		0.980726, 0.134506, 0.141720,
		-0.047307, -0.540280, 0.840154,
		36.649483, 35.803669, 31.776768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194427, 35.664406, 31.077417>,  <36.682598, 36.181862, 31.188660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194427, 35.664406, 31.077417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958843, 35.538734, 31.375256>,  <36.817493, 35.463333, 31.553959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958843, 35.538734, 31.375256>,  <37.194427, 35.664406, 31.077417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958843, 35.538734, 31.375256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132551, -0.946418, -0.294489,
		0.797220, -0.074744, 0.599043,
		-0.588957, -0.314176, 0.744596,
		36.782158, 35.444481, 31.598635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685524, 35.286228, 31.334532>,  <37.194427, 35.664406, 31.077417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685524, 35.286228, 31.334532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.321339, 35.166260, 31.448446>,  <37.102829, 35.094280, 31.516794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.321339, 35.166260, 31.448446>,  <37.685524, 35.286228, 31.334532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321339, 35.166260, 31.448446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221933, -0.935329, -0.275509,
		0.348999, -0.187638, 0.918146,
		-0.910465, -0.299920, 0.284785,
		37.048199, 35.076283, 31.533882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767052, 34.627384, 31.543921>,  <37.685524, 35.286228, 31.334532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767052, 34.627384, 31.543921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368732, 34.614586, 31.509613>,  <37.129742, 34.606907, 31.489029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368732, 34.614586, 31.509613>,  <37.767052, 34.627384, 31.543921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368732, 34.614586, 31.509613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052525, -0.967058, -0.249076,
		-0.074973, -0.252536, 0.964678,
		-0.995801, -0.031996, -0.085768,
		37.069992, 34.604988, 31.483883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496471, 34.032383, 31.954226>,  <37.767052, 34.627384, 31.543921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496471, 34.032383, 31.954226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225029, 34.115608, 31.672459>,  <37.062164, 34.165543, 31.503399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225029, 34.115608, 31.672459>,  <37.496471, 34.032383, 31.954226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225029, 34.115608, 31.672459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071238, -0.973163, -0.218812,
		-0.731039, -0.098306, 0.675217,
		-0.678607, 0.208061, -0.704417,
		37.021446, 34.178028, 31.461134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060959, 33.479080, 31.956268>,  <37.496471, 34.032383, 31.954226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060959, 33.479080, 31.956268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001900, 33.640465, 31.595066>,  <36.966465, 33.737293, 31.378344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001900, 33.640465, 31.595066>,  <37.060959, 33.479080, 31.956268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001900, 33.640465, 31.595066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072468, -0.914972, -0.396957,
		-0.986382, 0.006830, 0.164329,
		-0.147645, 0.403460, -0.903007,
		36.957607, 33.761501, 31.324163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841125, 32.906353, 31.609709>,  <37.060959, 33.479080, 31.956268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841125, 32.906353, 31.609709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.870106, 33.159859, 31.301661>,  <36.887493, 33.311962, 31.116831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.870106, 33.159859, 31.301661>,  <36.841125, 32.906353, 31.609709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870106, 33.159859, 31.301661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021865, -0.772976, -0.634058,
		-0.997132, 0.029100, -0.069862,
		0.072453, 0.633768, -0.770123,
		36.891842, 33.349991, 31.070623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361214, 32.698345, 31.080818>,  <36.841125, 32.906353, 31.609709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361214, 32.698345, 31.080818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666588, 32.890011, 30.907581>,  <36.849812, 33.005013, 30.803638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666588, 32.890011, 30.907581>,  <36.361214, 32.698345, 31.080818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666588, 32.890011, 30.907581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205690, -0.815996, -0.540224,
		-0.612258, 0.323343, -0.721519,
		0.763434, 0.479166, -0.433092,
		36.895618, 33.033760, 30.777655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292179, 32.634636, 30.257708>,  <36.361214, 32.698345, 31.080818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292179, 32.634636, 30.257708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671597, 32.715603, 30.355101>,  <36.899246, 32.764183, 30.413536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671597, 32.715603, 30.355101>,  <36.292179, 32.634636, 30.257708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671597, 32.715603, 30.355101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297810, -0.831542, -0.468878,
		0.107556, 0.517265, -0.849040,
		0.948547, 0.202422, 0.243484,
		36.956161, 32.776329, 30.428146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742409, 32.671387, 29.558254>,  <36.292179, 32.634636, 30.257708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742409, 32.671387, 29.558254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991802, 32.587872, 29.859631>,  <37.141438, 32.537762, 30.040457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991802, 32.587872, 29.859631>,  <36.742409, 32.671387, 29.558254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991802, 32.587872, 29.859631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316421, -0.813848, -0.487370,
		0.714943, 0.542273, -0.441358,
		0.623485, -0.208787, 0.753441,
		37.178848, 32.525234, 30.085663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259621, 32.291759, 29.233341>,  <36.742409, 32.671387, 29.558254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259621, 32.291759, 29.233341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.338928, 32.171200, 29.606403>,  <37.386513, 32.098866, 29.830240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.338928, 32.171200, 29.606403>,  <37.259621, 32.291759, 29.233341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338928, 32.171200, 29.606403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326659, -0.876827, -0.352802,
		0.924112, 0.374611, -0.075393,
		0.198270, -0.301400, 0.932656,
		37.398411, 32.080780, 29.886200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729698, 31.799438, 29.154144>,  <37.259621, 32.291759, 29.233341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729698, 31.799438, 29.154144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639496, 31.723572, 29.536385>,  <37.585373, 31.678053, 29.765728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639496, 31.723572, 29.536385>,  <37.729698, 31.799438, 29.154144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639496, 31.723572, 29.536385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141939, -0.976797, -0.160376,
		0.963846, 0.099471, 0.247197,
		-0.225509, -0.189664, 0.955601,
		37.571842, 31.666672, 29.823065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313053, 31.957443, 29.559078>,  <37.729698, 31.799438, 29.154144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313053, 31.957443, 29.559078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704666, 31.961777, 29.477713>,  <38.939632, 31.964376, 29.428892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704666, 31.961777, 29.477713>,  <38.313053, 31.957443, 29.559078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704666, 31.961777, 29.477713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099517, 0.845874, 0.524016,
		0.177740, -0.533272, 0.827061,
		0.979033, 0.010832, -0.203415,
		38.998375, 31.965027, 29.416689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714531, 32.016590, 30.248108>,  <38.313053, 31.957443, 29.559078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714531, 32.016590, 30.248108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991032, 32.136650, 29.985176>,  <39.156933, 32.208687, 29.827417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991032, 32.136650, 29.985176>,  <38.714531, 32.016590, 30.248108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991032, 32.136650, 29.985176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157488, 0.825213, 0.542421,
		0.705242, -0.478472, 0.523162,
		0.691254, 0.300146, -0.657329,
		39.198406, 32.226692, 29.787977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324116, 32.304790, 30.672293>,  <38.714531, 32.016590, 30.248108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324116, 32.304790, 30.672293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376053, 32.459644, 30.307159>,  <39.407215, 32.552559, 30.088079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376053, 32.459644, 30.307159>,  <39.324116, 32.304790, 30.672293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376053, 32.459644, 30.307159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245334, 0.879458, 0.407878,
		0.960704, -0.276908, 0.019212,
		0.129841, 0.387137, -0.912835,
		39.415005, 32.575787, 30.033310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930733, 32.603077, 30.698586>,  <39.324116, 32.304790, 30.672293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930733, 32.603077, 30.698586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789753, 32.793304, 30.376190>,  <39.705166, 32.907440, 30.182753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789753, 32.793304, 30.376190>,  <39.930733, 32.603077, 30.698586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789753, 32.793304, 30.376190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281829, 0.875209, 0.393169,
		0.892384, -0.088577, -0.442498,
		-0.352452, 0.475567, -0.805986,
		39.684017, 32.935974, 30.134394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473522, 32.914864, 30.413290>,  <39.930733, 32.603077, 30.698586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473522, 32.914864, 30.413290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154488, 33.125755, 30.296061>,  <39.963066, 33.252289, 30.225723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154488, 33.125755, 30.296061>,  <40.473522, 32.914864, 30.413290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154488, 33.125755, 30.296061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517271, 0.847742, 0.117323,
		0.310308, -0.058025, -0.948863,
		-0.797584, 0.527225, -0.293076,
		39.915211, 33.283924, 30.208138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783943, 33.420113, 30.083080>,  <40.473522, 32.914864, 30.413290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783943, 33.420113, 30.083080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.408306, 33.538471, 30.152998>,  <40.182922, 33.609486, 30.194948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.408306, 33.538471, 30.152998>,  <40.783943, 33.420113, 30.083080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408306, 33.538471, 30.152998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343590, 0.819182, 0.459225,
		-0.007305, 0.491311, -0.870953,
		-0.939091, 0.295896, 0.174794,
		40.126579, 33.627239, 30.205437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748039, 34.228340, 29.953226>,  <40.783943, 33.420113, 30.083080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748039, 34.228340, 29.953226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419590, 34.152931, 30.168711>,  <40.222519, 34.107685, 30.298002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419590, 34.152931, 30.168711>,  <40.748039, 34.228340, 29.953226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419590, 34.152931, 30.168711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108404, 0.875177, 0.471501,
		-0.560357, 0.445560, -0.698195,
		-0.821126, -0.188521, 0.538713,
		40.173252, 34.096375, 30.330324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251328, 34.731159, 29.793119>,  <40.748039, 34.228340, 29.953226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251328, 34.731159, 29.793119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145317, 34.587528, 30.151073>,  <40.081711, 34.501350, 30.365847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145317, 34.587528, 30.151073>,  <40.251328, 34.731159, 29.793119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145317, 34.587528, 30.151073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061000, 0.932459, 0.356090,
		-0.962310, 0.039785, -0.269030,
		-0.265027, -0.359080, 0.894887,
		40.065807, 34.479805, 30.419540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861103, 35.243031, 29.995110>,  <40.251328, 34.731159, 29.793119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861103, 35.243031, 29.995110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891239, 35.019005, 30.325115>,  <39.909321, 34.884590, 30.523119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891239, 35.019005, 30.325115>,  <39.861103, 35.243031, 29.995110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891239, 35.019005, 30.325115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126167, 0.815364, 0.565034,
		-0.989144, -0.146659, -0.009233,
		0.075339, -0.560065, 0.825016,
		39.913841, 34.850986, 30.572620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260815, 35.341042, 30.412832>,  <39.861103, 35.243031, 29.995110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260815, 35.341042, 30.412832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550358, 35.206375, 30.653725>,  <39.724083, 35.125576, 30.798260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550358, 35.206375, 30.653725>,  <39.260815, 35.341042, 30.412832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550358, 35.206375, 30.653725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120909, 0.797458, 0.591135,
		-0.679273, -0.500713, 0.536540,
		0.723857, -0.336670, 0.602233,
		39.767513, 35.105373, 30.834394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010456, 35.428371, 31.156837>,  <39.260815, 35.341042, 30.412832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010456, 35.428371, 31.156837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409187, 35.416630, 31.127266>,  <39.648426, 35.409584, 31.109524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409187, 35.416630, 31.127266>,  <39.010456, 35.428371, 31.156837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409187, 35.416630, 31.127266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073701, 0.690425, 0.719640,
		0.029919, -0.722809, 0.690400,
		0.996832, -0.029352, -0.073929,
		39.708237, 35.407825, 31.105087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223202, 35.308033, 31.879444>,  <39.010456, 35.428371, 31.156837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223202, 35.308033, 31.879444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.520233, 35.455746, 31.655943>,  <39.698452, 35.544373, 31.521843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.520233, 35.455746, 31.655943>,  <39.223202, 35.308033, 31.879444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520233, 35.455746, 31.655943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242353, 0.629576, 0.738173,
		0.624363, -0.683572, 0.378021,
		0.742588, 0.369273, -0.558749,
		39.743008, 35.566528, 31.488317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813915, 35.400894, 32.310688>,  <39.223202, 35.308033, 31.879444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813915, 35.400894, 32.310688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.869549, 35.649376, 32.002205>,  <39.902927, 35.798466, 31.817116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.869549, 35.649376, 32.002205>,  <39.813915, 35.400894, 32.310688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869549, 35.649376, 32.002205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255150, 0.730000, 0.634034,
		0.956846, -0.284956, -0.056972,
		0.139082, 0.621209, -0.771204,
		39.911274, 35.835739, 31.770844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485260, 35.854481, 32.461628>,  <39.813915, 35.400894, 32.310688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485260, 35.854481, 32.461628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.273861, 36.063377, 32.193913>,  <40.147022, 36.188717, 32.033283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.273861, 36.063377, 32.193913>,  <40.485260, 35.854481, 32.461628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273861, 36.063377, 32.193913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294965, 0.852234, 0.432079,
		0.796041, 0.030939, -0.604452,
		-0.528503, 0.522245, -0.669288,
		40.115311, 36.220051, 31.993126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.139427, 33.490578, 25.900723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811352, 33.441814, 26.124302>,  <40.614506, 33.412556, 26.258450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811352, 33.441814, 26.124302>,  <41.139427, 33.490578, 25.900723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811352, 33.441814, 26.124302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025430, -0.983836, -0.177257,
		0.571522, -0.131171, 0.810035,
		-0.820193, -0.121905, 0.558948,
		40.565292, 33.405243, 26.291986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368813, 33.013924, 26.388100>,  <41.139427, 33.490578, 25.900723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368813, 33.013924, 26.388100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.969280, 32.997936, 26.398975>,  <40.729561, 32.988346, 26.405500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.969280, 32.997936, 26.398975>,  <41.368813, 33.013924, 26.388100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969280, 32.997936, 26.398975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039456, -0.999040, -0.019061,
		0.027923, -0.017966, 0.999449,
		-0.998831, -0.039966, 0.027187,
		40.669632, 32.985947, 26.407131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245140, 32.392776, 26.775742>,  <41.368813, 33.013924, 26.388100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245140, 32.392776, 26.775742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.887413, 32.438690, 26.602757>,  <40.672779, 32.466240, 26.498964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.887413, 32.438690, 26.602757>,  <41.245140, 32.392776, 26.775742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887413, 32.438690, 26.602757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064554, -0.989522, -0.129147,
		-0.442757, -0.087581, 0.892354,
		-0.894315, 0.114786, -0.432465,
		40.619118, 32.473125, 26.473017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873306, 31.851564, 27.079557>,  <41.245140, 32.392776, 26.775742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873306, 31.851564, 27.079557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660057, 31.963966, 26.760353>,  <40.532108, 32.031406, 26.568830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660057, 31.963966, 26.760353>,  <40.873306, 31.851564, 27.079557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660057, 31.963966, 26.760353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174072, -0.959481, -0.221574,
		-0.827939, 0.020786, 0.560433,
		-0.533119, 0.281006, -0.798010,
		40.500122, 32.048267, 26.520950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231247, 31.526394, 27.140120>,  <40.873306, 31.851564, 27.079557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231247, 31.526394, 27.140120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.298180, 31.629230, 26.759403>,  <40.338341, 31.690931, 26.530973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.298180, 31.629230, 26.759403>,  <40.231247, 31.526394, 27.140120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298180, 31.629230, 26.759403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215026, -0.932644, -0.289722,
		-0.962166, 0.253139, -0.100782,
		0.167334, 0.257090, -0.951790,
		40.348381, 31.706358, 26.473866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740341, 31.240597, 26.841890>,  <40.231247, 31.526394, 27.140120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740341, 31.240597, 26.841890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001778, 31.276985, 26.541346>,  <40.158638, 31.298819, 26.361019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001778, 31.276985, 26.541346>,  <39.740341, 31.240597, 26.841890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001778, 31.276985, 26.541346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284862, -0.890181, -0.355573,
		-0.701196, 0.446433, -0.555897,
		0.653588, 0.090972, -0.751363,
		40.197853, 31.304277, 26.315937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415157, 30.885763, 26.292833>,  <39.740341, 31.240597, 26.841890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415157, 30.885763, 26.292833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.796806, 30.911043, 26.175760>,  <40.025795, 30.926210, 26.105516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.796806, 30.911043, 26.175760>,  <39.415157, 30.885763, 26.292833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796806, 30.911043, 26.175760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083029, -0.883296, -0.461404,
		-0.287685, 0.464536, -0.837523,
		0.954119, 0.063201, -0.292681,
		40.083042, 30.930004, 26.087955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413506, 30.656225, 25.559120>,  <39.415157, 30.885763, 26.292833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413506, 30.656225, 25.559120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.769920, 30.601120, 25.732132>,  <39.983768, 30.568058, 25.835939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.769920, 30.601120, 25.732132>,  <39.413506, 30.656225, 25.559120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769920, 30.601120, 25.732132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081410, -0.985886, -0.146296,
		0.446577, 0.095142, -0.889672,
		0.891034, -0.137761, 0.432528,
		40.037231, 30.559792, 25.861891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766853, 30.219769, 25.134502>,  <39.413506, 30.656225, 25.559120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766853, 30.219769, 25.134502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.959152, 30.179071, 25.482876>,  <40.074532, 30.154654, 25.691900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.959152, 30.179071, 25.482876>,  <39.766853, 30.219769, 25.134502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959152, 30.179071, 25.482876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188739, -0.957958, -0.216090,
		0.856304, 0.268265, -0.441336,
		0.480750, -0.101741, 0.870935,
		40.103378, 30.148548, 25.744156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233334, 29.673637, 25.029758>,  <39.766853, 30.219769, 25.134502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233334, 29.673637, 25.029758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254120, 29.701733, 25.428228>,  <40.266590, 29.718590, 25.667311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254120, 29.701733, 25.428228>,  <40.233334, 29.673637, 25.029758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254120, 29.701733, 25.428228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049288, -0.996127, 0.072806,
		0.997432, -0.052883, -0.048301,
		0.051964, 0.070238, 0.996176,
		40.269711, 29.722805, 25.727081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438065, 29.083424, 25.247503>,  <40.233334, 29.673637, 25.029758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438065, 29.083424, 25.247503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.295692, 29.197701, 25.603413>,  <40.210270, 29.266266, 25.816957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.295692, 29.197701, 25.603413>,  <40.438065, 29.083424, 25.247503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295692, 29.197701, 25.603413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284719, -0.940010, 0.187928,
		0.890085, -0.186447, 0.415916,
		-0.355926, 0.285691, 0.889774,
		40.188915, 29.283407, 25.870344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793751, 28.590199, 25.647055>,  <40.438065, 29.083424, 25.247503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793751, 28.590199, 25.647055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.471291, 28.730570, 25.837618>,  <40.277813, 28.814793, 25.951956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.471291, 28.730570, 25.837618>,  <40.793751, 28.590199, 25.647055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471291, 28.730570, 25.837618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389797, -0.920713, 0.018611,
		0.445167, -0.170699, 0.879027,
		-0.806154, 0.350927, 0.476409,
		40.229443, 28.835848, 25.980541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774014, 28.262039, 26.270334>,  <40.793751, 28.590199, 25.647055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774014, 28.262039, 26.270334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.401226, 28.369547, 26.173012>,  <40.177555, 28.434052, 26.114618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.401226, 28.369547, 26.173012>,  <40.774014, 28.262039, 26.270334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401226, 28.369547, 26.173012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311814, -0.936620, 0.159733,
		-0.184955, 0.224732, 0.956706,
		-0.931968, 0.268771, -0.243307,
		40.121635, 28.450178, 26.100019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335674, 27.854609, 26.772394>,  <40.774014, 28.262039, 26.270334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335674, 27.854609, 26.772394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.108234, 27.962395, 26.461504>,  <39.971771, 28.027065, 26.274969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.108234, 27.962395, 26.461504>,  <40.335674, 27.854609, 26.772394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108234, 27.962395, 26.461504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428555, -0.903516, 0.000274,
		-0.702162, 0.333240, 0.629223,
		-0.568604, 0.269464, -0.777225,
		39.937653, 28.043234, 26.228336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110638, 27.277107, 26.632645>,  <40.335674, 27.854609, 26.772394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110638, 27.277107, 26.632645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926964, 27.059542, 26.913589>,  <39.816761, 26.929003, 27.082157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926964, 27.059542, 26.913589>,  <40.110638, 27.277107, 26.632645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926964, 27.059542, 26.913589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167715, 0.829503, 0.532726,
		-0.872367, 0.126821, -0.472114,
		-0.459181, -0.543913, 0.702361,
		39.789211, 26.896368, 27.124298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408131, 27.550116, 26.633638>,  <40.110638, 27.277107, 26.632645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408131, 27.550116, 26.633638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.480934, 27.370232, 26.983412>,  <39.524616, 27.262302, 27.193275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.480934, 27.370232, 26.983412>,  <39.408131, 27.550116, 26.633638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480934, 27.370232, 26.983412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279933, 0.828792, 0.484501,
		-0.942609, -0.332966, 0.024958,
		0.182007, -0.449708, 0.874435,
		39.535538, 27.235319, 27.245743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919476, 27.789309, 27.022045>,  <39.408131, 27.550116, 26.633638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919476, 27.789309, 27.022045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151077, 27.642618, 27.313324>,  <39.290039, 27.554604, 27.488091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151077, 27.642618, 27.313324>,  <38.919476, 27.789309, 27.022045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151077, 27.642618, 27.313324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126438, 0.841943, 0.524542,
		-0.805464, -0.395782, 0.441117,
		0.579000, -0.366726, 0.728197,
		39.324776, 27.532600, 27.531784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576988, 27.934345, 27.581379>,  <38.919476, 27.789309, 27.022045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576988, 27.934345, 27.581379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.957447, 27.888674, 27.696117>,  <39.185722, 27.861271, 27.764961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.957447, 27.888674, 27.696117>,  <38.576988, 27.934345, 27.581379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957447, 27.888674, 27.696117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022215, 0.901383, 0.432454,
		-0.307934, -0.417700, 0.854812,
		0.951148, -0.114178, 0.286846,
		39.242790, 27.854420, 27.782171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517635, 28.008778, 28.333439>,  <38.576988, 27.934345, 27.581379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517635, 28.008778, 28.333439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882317, 28.063248, 28.178389>,  <39.101124, 28.095930, 28.085360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882317, 28.063248, 28.178389>,  <38.517635, 28.008778, 28.333439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882317, 28.063248, 28.178389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067889, 0.880573, 0.469023,
		0.405200, -0.453926, 0.793577,
		0.911704, 0.136173, -0.387624,
		39.155827, 28.104099, 28.062101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884045, 28.281853, 28.827446>,  <38.517635, 28.008778, 28.333439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884045, 28.281853, 28.827446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104824, 28.353378, 28.501654>,  <39.237293, 28.396294, 28.306179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104824, 28.353378, 28.501654>,  <38.884045, 28.281853, 28.827446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104824, 28.353378, 28.501654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134649, 0.944809, 0.298674,
		0.822935, -0.274522, 0.497409,
		0.551948, 0.178813, -0.814481,
		39.270409, 28.407022, 28.257309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469307, 28.510384, 29.094255>,  <38.884045, 28.281853, 28.827446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469307, 28.510384, 29.094255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468380, 28.645735, 28.717852>,  <39.467823, 28.726946, 28.492010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468380, 28.645735, 28.717852>,  <39.469307, 28.510384, 29.094255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468380, 28.645735, 28.717852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056633, 0.939545, 0.337711,
		0.998392, -0.052511, -0.021337,
		-0.002314, 0.338376, -0.941008,
		39.467686, 28.747248, 28.435549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934608, 28.957754, 29.022936>,  <39.469307, 28.510384, 29.094255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934608, 28.957754, 29.022936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.727165, 29.056814, 28.695593>,  <39.602699, 29.116251, 28.499187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.727165, 29.056814, 28.695593>,  <39.934608, 28.957754, 29.022936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727165, 29.056814, 28.695593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029573, 0.961756, 0.272306,
		0.854498, 0.117020, -0.506102,
		-0.518612, 0.247652, -0.818358,
		39.571583, 29.131109, 28.450085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373344, 29.523022, 28.647928>,  <39.934608, 28.957754, 29.022936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373344, 29.523022, 28.647928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.007053, 29.571638, 28.494736>,  <39.787281, 29.600809, 28.402821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.007053, 29.571638, 28.494736>,  <40.373344, 29.523022, 28.647928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007053, 29.571638, 28.494736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002421, 0.954804, 0.297227,
		0.401796, 0.271251, -0.874633,
		-0.915726, 0.121542, -0.382980,
		39.732334, 29.608101, 28.379843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328033, 30.206741, 28.396107>,  <40.373344, 29.523022, 28.647928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328033, 30.206741, 28.396107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940777, 30.120184, 28.446508>,  <39.708424, 30.068251, 28.476749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940777, 30.120184, 28.446508>,  <40.328033, 30.206741, 28.396107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940777, 30.120184, 28.446508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164668, 0.929272, 0.330663,
		-0.188644, 0.299380, -0.935300,
		-0.968141, -0.216392, 0.126003,
		39.650333, 30.055267, 28.484310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926861, 30.714045, 27.938099>,  <40.328033, 30.206741, 28.396107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926861, 30.714045, 27.938099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.708942, 30.595846, 28.252012>,  <39.578194, 30.524927, 28.440359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.708942, 30.595846, 28.252012>,  <39.926861, 30.714045, 27.938099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708942, 30.595846, 28.252012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133888, 0.954502, 0.266456,
		-0.827813, 0.040090, -0.559570,
		-0.544793, -0.295496, 0.784782,
		39.545506, 30.507198, 28.487448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431004, 31.210365, 27.967167>,  <39.926861, 30.714045, 27.938099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431004, 31.210365, 27.967167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365925, 31.038143, 28.322279>,  <39.326878, 30.934811, 28.535345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365925, 31.038143, 28.322279>,  <39.431004, 31.210365, 27.967167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365925, 31.038143, 28.322279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023594, 0.901208, 0.432744,
		-0.986393, 0.049462, -0.156786,
		-0.162702, -0.430555, 0.887778,
		39.317116, 30.908978, 28.588612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783730, 31.455273, 28.212154>,  <39.431004, 31.210365, 27.967167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783730, 31.455273, 28.212154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984291, 31.345449, 28.540352>,  <39.104630, 31.279554, 28.737270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984291, 31.345449, 28.540352>,  <38.783730, 31.455273, 28.212154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984291, 31.345449, 28.540352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065951, 0.933427, 0.352654,
		-0.862696, -0.230935, 0.449917,
		0.501405, -0.274560, 0.820494,
		39.134712, 31.263081, 28.786501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385334, 31.739996, 28.829453>,  <38.783730, 31.455273, 28.212154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385334, 31.739996, 28.829453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760338, 31.680870, 28.955456>,  <38.985340, 31.645395, 29.031057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760338, 31.680870, 28.955456>,  <38.385334, 31.739996, 28.829453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760338, 31.680870, 28.955456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003384, 0.901373, 0.433030,
		-0.347946, -0.407035, 0.844544,
		0.937508, -0.147813, 0.315007,
		39.041592, 31.636526, 29.049957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331753, 31.230349, 29.392557>,  <38.385334, 31.739996, 28.829453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331753, 31.230349, 29.392557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021465, 31.194618, 29.642448>,  <37.835293, 31.173180, 29.792383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021465, 31.194618, 29.642448>,  <38.331753, 31.230349, 29.392557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021465, 31.194618, 29.642448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132817, -0.944653, -0.299986,
		0.616947, -0.315678, 0.720919,
		-0.775717, -0.089325, 0.624728,
		37.788750, 31.167820, 29.829866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444691, 30.699402, 29.933048>,  <38.331753, 31.230349, 29.392557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444691, 30.699402, 29.933048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.048573, 30.717348, 29.880438>,  <37.810902, 30.728115, 29.848871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.048573, 30.717348, 29.880438>,  <38.444691, 30.699402, 29.933048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048573, 30.717348, 29.880438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015208, -0.975754, -0.218342,
		-0.138133, -0.214223, 0.966968,
		-0.990297, 0.044866, -0.131526,
		37.751484, 30.730808, 29.840981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207111, 29.956417, 29.902786>,  <38.444691, 30.699402, 29.933048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207111, 29.956417, 29.902786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891747, 30.146336, 29.746340>,  <37.702526, 30.260286, 29.652472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891747, 30.146336, 29.746340>,  <38.207111, 29.956417, 29.902786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891747, 30.146336, 29.746340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368088, -0.873554, -0.318457,
		-0.492863, -0.107111, 0.863489,
		-0.788414, 0.474796, -0.391116,
		37.655224, 30.288774, 29.629005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706917, 29.693901, 30.174288>,  <38.207111, 29.956417, 29.902786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706917, 29.693901, 30.174288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587967, 29.844606, 29.823378>,  <37.516598, 29.935030, 29.612831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587967, 29.844606, 29.823378>,  <37.706917, 29.693901, 30.174288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587967, 29.844606, 29.823378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313355, -0.906463, -0.283078,
		-0.901872, 0.190716, 0.387627,
		-0.297382, 0.376765, -0.877275,
		37.498753, 29.957636, 29.560194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301380, 29.191473, 29.993696>,  <37.706917, 29.693901, 30.174288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301380, 29.191473, 29.993696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294964, 29.409990, 29.658720>,  <37.291115, 29.541100, 29.457733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.294964, 29.409990, 29.658720>,  <37.301380, 29.191473, 29.993696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294964, 29.409990, 29.658720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361998, -0.783904, -0.504432,
		-0.932041, 0.295060, 0.210333,
		-0.016043, 0.546291, -0.837442,
		37.290150, 29.573877, 29.407488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628700, 29.087803, 29.773916>,  <37.301380, 29.191473, 29.993696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628700, 29.087803, 29.773916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832516, 29.205929, 29.450642>,  <36.954803, 29.276804, 29.256678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832516, 29.205929, 29.450642>,  <36.628700, 29.087803, 29.773916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832516, 29.205929, 29.450642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274497, -0.834393, -0.477955,
		-0.815490, 0.465379, -0.344089,
		0.509536, 0.295316, -0.808184,
		36.985378, 29.294523, 29.208187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166828, 29.024755, 29.140390>,  <36.628700, 29.087803, 29.773916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166828, 29.024755, 29.140390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545479, 29.003918, 29.013153>,  <36.772671, 28.991415, 28.936811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545479, 29.003918, 29.013153>,  <36.166828, 29.024755, 29.140390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545479, 29.003918, 29.013153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151985, -0.942400, -0.297964,
		-0.284249, 0.330406, -0.900019,
		0.946627, -0.052094, -0.318093,
		36.829468, 28.988289, 28.917725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737450, 29.323303, 28.615129>,  <36.166828, 29.024755, 29.140390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737450, 29.323303, 28.615129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341213, 29.291491, 28.659662>,  <35.103470, 29.272404, 28.686382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341213, 29.291491, 28.659662>,  <35.737450, 29.323303, 28.615129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341213, 29.291491, 28.659662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005840, 0.788383, 0.615157,
		-0.136696, 0.610022, -0.780504,
		-0.990596, -0.079531, 0.111332,
		35.044033, 29.267632, 28.693062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595078, 29.983751, 28.679892>,  <35.737450, 29.323303, 28.615129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595078, 29.983751, 28.679892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260754, 29.804375, 28.806589>,  <35.060162, 29.696749, 28.882608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260754, 29.804375, 28.806589>,  <35.595078, 29.983751, 28.679892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260754, 29.804375, 28.806589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143002, 0.734825, 0.663010,
		-0.530074, 0.508853, -0.678300,
		-0.835806, -0.448442, 0.316745,
		35.010014, 29.669842, 28.901613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178356, 30.480402, 28.708220>,  <35.595078, 29.983751, 28.679892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178356, 30.480402, 28.708220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997410, 30.206308, 28.936543>,  <34.888844, 30.041853, 29.073536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997410, 30.206308, 28.936543>,  <35.178356, 30.480402, 28.708220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997410, 30.206308, 28.936543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272939, 0.715701, 0.642866,
		-0.849041, 0.135014, -0.510785,
		-0.452365, -0.685232, 0.570809,
		34.861702, 30.000738, 29.107784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495293, 30.739967, 28.811663>,  <35.178356, 30.480402, 28.708220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495293, 30.739967, 28.811663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572891, 30.498093, 29.120653>,  <34.619450, 30.352968, 29.306047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572891, 30.498093, 29.120653>,  <34.495293, 30.739967, 28.811663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572891, 30.498093, 29.120653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346292, 0.694534, 0.630638,
		-0.917849, -0.389844, -0.074660,
		0.193996, -0.604684, 0.772478,
		34.631088, 30.316687, 29.352396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933193, 30.782814, 29.285833>,  <34.495293, 30.739967, 28.811663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933193, 30.782814, 29.285833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.220837, 30.626629, 29.515764>,  <34.393421, 30.532919, 29.653723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.220837, 30.626629, 29.515764>,  <33.933193, 30.782814, 29.285833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220837, 30.626629, 29.515764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234310, 0.642520, 0.729566,
		-0.654205, -0.659324, 0.370551,
		0.719106, -0.390462, 0.574826,
		34.436569, 30.509491, 29.688211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616905, 30.635054, 29.929255>,  <33.933193, 30.782814, 29.285833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616905, 30.635054, 29.929255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005936, 30.651505, 30.020828>,  <34.239353, 30.661375, 30.075773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005936, 30.651505, 30.020828>,  <33.616905, 30.635054, 29.929255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005936, 30.651505, 30.020828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201544, 0.640343, 0.741176,
		-0.116115, -0.766988, 0.631069,
		0.972572, 0.041127, 0.228935,
		34.297707, 30.663843, 30.089508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701149, 30.713316, 30.662453>,  <33.616905, 30.635054, 29.929255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701149, 30.713316, 30.662453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057690, 30.831139, 30.524622>,  <34.271614, 30.901833, 30.441923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057690, 30.831139, 30.524622>,  <33.701149, 30.713316, 30.662453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057690, 30.831139, 30.524622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004001, 0.765205, 0.643775,
		0.453303, -0.572448, 0.683242,
		0.891348, 0.294559, -0.344579,
		34.325092, 30.919506, 30.421247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.445599, 28.821323, 26.452318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090973, 28.730434, 26.613497>,  <36.878197, 28.675901, 26.710205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090973, 28.730434, 26.613497>,  <37.445599, 28.821323, 26.452318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090973, 28.730434, 26.613497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163889, 0.968835, 0.185739,
		-0.432595, 0.098632, -0.896177,
		-0.886568, -0.227223, 0.402948,
		36.825001, 28.662268, 26.734381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933880, 29.241856, 26.112007>,  <37.445599, 28.821323, 26.452318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933880, 29.241856, 26.112007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324810, 29.268154, 26.031496>,  <37.559368, 29.283934, 25.983191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324810, 29.268154, 26.031496>,  <36.933880, 29.241856, 26.112007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324810, 29.268154, 26.031496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036082, 0.988380, 0.147660,
		0.208646, -0.137049, 0.968341,
		0.977326, 0.065748, -0.201276,
		37.618008, 29.287878, 25.971113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236126, 29.670340, 26.602560>,  <36.933880, 29.241856, 26.112007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236126, 29.670340, 26.602560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.514072, 29.658894, 26.315132>,  <37.680840, 29.652027, 26.142675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.514072, 29.658894, 26.315132>,  <37.236126, 29.670340, 26.602560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514072, 29.658894, 26.315132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043871, 0.999034, 0.002643,
		0.717800, -0.033361, 0.695450,
		0.694866, -0.028613, -0.718570,
		37.722530, 29.650311, 26.099562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844624, 30.065096, 26.886103>,  <37.236126, 29.670340, 26.602560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844624, 30.065096, 26.886103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.869068, 30.070276, 26.486883>,  <37.883736, 30.073385, 26.247353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.869068, 30.070276, 26.486883>,  <37.844624, 30.065096, 26.886103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869068, 30.070276, 26.486883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113680, 0.993500, 0.005932,
		0.991636, 0.113096, 0.062182,
		0.061107, 0.012951, -0.998047,
		37.887402, 30.074162, 26.187469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259930, 30.629831, 26.759205>,  <37.844624, 30.065096, 26.886103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259930, 30.629831, 26.759205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.086548, 30.576820, 26.402655>,  <37.982517, 30.545013, 26.188725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.086548, 30.576820, 26.402655>,  <38.259930, 30.629831, 26.759205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086548, 30.576820, 26.402655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278843, 0.960310, -0.007179,
		0.856949, 0.245443, -0.453207,
		-0.433457, -0.132525, -0.891377,
		37.956512, 30.537064, 26.135242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553989, 31.089916, 26.208817>,  <38.259930, 30.629831, 26.759205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553989, 31.089916, 26.208817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185734, 30.991676, 26.087425>,  <37.964779, 30.932734, 26.014591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185734, 30.991676, 26.087425>,  <38.553989, 31.089916, 26.208817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185734, 30.991676, 26.087425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200019, 0.964291, -0.173596,
		0.335276, -0.099119, -0.936891,
		-0.920642, -0.245599, -0.303478,
		37.909542, 30.917997, 25.996382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442513, 31.409054, 25.584435>,  <38.553989, 31.089916, 26.208817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442513, 31.409054, 25.584435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.074623, 31.341021, 25.725960>,  <37.853889, 31.300201, 25.810875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.074623, 31.341021, 25.725960>,  <38.442513, 31.409054, 25.584435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074623, 31.341021, 25.725960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225196, 0.966817, -0.120628,
		-0.321557, -0.190622, -0.927504,
		-0.919721, -0.170081, 0.353814,
		37.798706, 31.289997, 25.832104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994568, 31.868471, 25.180620>,  <38.442513, 31.409054, 25.584435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994568, 31.868471, 25.180620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751808, 31.769466, 25.482721>,  <37.606152, 31.710064, 25.663982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751808, 31.769466, 25.482721>,  <37.994568, 31.868471, 25.180620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751808, 31.769466, 25.482721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567389, 0.800357, -0.193644,
		-0.556543, -0.546046, -0.626174,
		-0.606902, -0.247513, 0.755253,
		37.569736, 31.695213, 25.709297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447926, 32.115593, 24.977657>,  <37.994568, 31.868471, 25.180620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447926, 32.115593, 24.977657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.400558, 32.090702, 25.374062>,  <37.372139, 32.075768, 25.611904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.400558, 32.090702, 25.374062>,  <37.447926, 32.115593, 24.977657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400558, 32.090702, 25.374062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458920, 0.888477, 0.000955,
		-0.880551, -0.454682, -0.133765,
		-0.118413, -0.062228, 0.991013,
		37.365036, 32.072033, 25.671366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682678, 32.137318, 25.090427>,  <37.447926, 32.115593, 24.977657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682678, 32.137318, 25.090427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.847736, 32.253712, 25.435692>,  <36.946774, 32.323547, 25.642851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.847736, 32.253712, 25.435692>,  <36.682678, 32.137318, 25.090427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847736, 32.253712, 25.435692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354335, 0.924246, -0.142185,
		-0.839147, -0.247176, 0.484496,
		0.412648, 0.290988, 0.863161,
		36.971531, 32.341007, 25.694641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176918, 32.486626, 25.433876>,  <36.682678, 32.137318, 25.090427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176918, 32.486626, 25.433876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539032, 32.614002, 25.546341>,  <36.756302, 32.690430, 25.613821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539032, 32.614002, 25.546341>,  <36.176918, 32.486626, 25.433876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539032, 32.614002, 25.546341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331038, 0.943613, -0.002847,
		-0.266216, -0.090498, 0.959656,
		0.905286, 0.318441, 0.281164,
		36.810619, 32.709534, 25.630690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008991, 33.094151, 25.764431>,  <36.176918, 32.486626, 25.433876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008991, 33.094151, 25.764431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403969, 33.128178, 25.711187>,  <36.640957, 33.148594, 25.679241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403969, 33.128178, 25.711187>,  <36.008991, 33.094151, 25.764431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403969, 33.128178, 25.711187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094680, 0.993208, -0.067633,
		0.126453, 0.079387, 0.988791,
		0.987444, 0.085066, -0.133111,
		36.700203, 33.153698, 25.671253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671139, 33.042652, 26.310080>,  <36.008991, 33.094151, 25.764431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671139, 33.042652, 26.310080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.295757, 32.951336, 26.206390>,  <35.070530, 32.896545, 26.144176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.295757, 32.951336, 26.206390>,  <35.671139, 33.042652, 26.310080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295757, 32.951336, 26.206390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329749, -0.815554, -0.475539,
		-0.102850, -0.531748, 0.840634,
		-0.938449, -0.228289, -0.259223,
		35.014221, 32.882851, 26.128624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507118, 32.304970, 26.623417>,  <35.671139, 33.042652, 26.310080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507118, 32.304970, 26.623417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.263321, 32.365917, 26.312214>,  <35.117043, 32.402485, 26.125492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.263321, 32.365917, 26.312214>,  <35.507118, 32.304970, 26.623417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263321, 32.365917, 26.312214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205877, -0.917269, -0.340929,
		-0.765591, -0.367969, 0.527702,
		-0.609496, 0.152370, -0.778009,
		35.080471, 32.411629, 26.078812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054222, 31.736891, 26.613819>,  <35.507118, 32.304970, 26.623417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054222, 31.736891, 26.613819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.059963, 31.902729, 26.249863>,  <35.063408, 32.002232, 26.031488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.059963, 31.902729, 26.249863>,  <35.054222, 31.736891, 26.613819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059963, 31.902729, 26.249863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094461, -0.906478, -0.411552,
		-0.995425, -0.080044, -0.052170,
		0.014348, 0.414597, -0.909892,
		35.064266, 32.027107, 25.976894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569645, 31.459278, 26.266523>,  <35.054222, 31.736891, 26.613819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569645, 31.459278, 26.266523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807346, 31.578390, 25.967674>,  <34.949966, 31.649857, 25.788364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807346, 31.578390, 25.967674>,  <34.569645, 31.459278, 26.266523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807346, 31.578390, 25.967674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076895, -0.903644, -0.421326,
		-0.800595, 0.307823, -0.514094,
		0.594251, 0.297780, -0.747123,
		34.985622, 31.667725, 25.743538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239357, 31.217833, 25.723982>,  <34.569645, 31.459278, 26.266523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239357, 31.217833, 25.723982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.591286, 31.296583, 25.550936>,  <34.802441, 31.343834, 25.447107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.591286, 31.296583, 25.550936>,  <34.239357, 31.217833, 25.723982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591286, 31.296583, 25.550936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098035, -0.815446, -0.570471,
		-0.465089, 0.544323, -0.698144,
		0.879819, 0.196878, -0.432617,
		34.855232, 31.355646, 25.421150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089645, 31.086098, 25.000660>,  <34.239357, 31.217833, 25.723982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089645, 31.086098, 25.000660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.488480, 31.090862, 25.030779>,  <34.727779, 31.093721, 25.048851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.488480, 31.090862, 25.030779>,  <34.089645, 31.086098, 25.000660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488480, 31.090862, 25.030779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057305, -0.768491, -0.637289,
		0.050275, 0.639750, -0.766937,
		0.997090, 0.011910, 0.075297,
		34.787605, 31.094435, 25.053368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263165, 30.891191, 24.410095>,  <34.089645, 31.086098, 25.000660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263165, 30.891191, 24.410095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588951, 30.818367, 24.630457>,  <34.784424, 30.774672, 24.762674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588951, 30.818367, 24.630457>,  <34.263165, 30.891191, 24.410095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588951, 30.818367, 24.630457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238211, -0.760852, -0.603622,
		0.529054, 0.622862, -0.576320,
		0.814468, -0.182063, 0.550904,
		34.833290, 30.763748, 24.795729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795639, 30.743774, 23.908363>,  <34.263165, 30.891191, 24.410095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795639, 30.743774, 23.908363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.930027, 30.586212, 24.250582>,  <35.010658, 30.491674, 24.455914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.930027, 30.586212, 24.250582>,  <34.795639, 30.743774, 23.908363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930027, 30.586212, 24.250582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257610, -0.835282, -0.485738,
		0.905960, 0.383590, -0.179153,
		0.335967, -0.393907, 0.855548,
		35.030819, 30.468040, 24.507246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438511, 30.347294, 23.724031>,  <34.795639, 30.743774, 23.908363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438511, 30.347294, 23.724031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301537, 30.214899, 24.075756>,  <35.219353, 30.135462, 24.286791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301537, 30.214899, 24.075756>,  <35.438511, 30.347294, 23.724031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301537, 30.214899, 24.075756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221037, -0.938005, -0.267002,
		0.913171, 0.102929, 0.394366,
		-0.342435, -0.330988, 0.879310,
		35.198807, 30.115602, 24.339548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763546, 29.723434, 23.783243>,  <35.438511, 30.347294, 23.724031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763546, 29.723434, 23.783243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506020, 29.671812, 24.084932>,  <35.351505, 29.640839, 24.265945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506020, 29.671812, 24.084932>,  <35.763546, 29.723434, 23.783243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506020, 29.671812, 24.084932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008018, -0.986759, -0.161998,
		0.765142, -0.098249, 0.636322,
		-0.643812, -0.129054, 0.754223,
		35.312878, 29.633097, 24.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028728, 29.085501, 24.237906>,  <35.763546, 29.723434, 23.783243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028728, 29.085501, 24.237906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.638050, 29.142178, 24.302387>,  <35.403645, 29.176184, 24.341076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.638050, 29.142178, 24.302387>,  <36.028728, 29.085501, 24.237906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638050, 29.142178, 24.302387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182829, -0.942687, -0.279134,
		0.112415, -0.302102, 0.946624,
		-0.976697, 0.141691, 0.161205,
		35.345039, 29.184685, 24.350748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877895, 28.634186, 24.654810>,  <36.028728, 29.085501, 24.237906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877895, 28.634186, 24.654810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.530987, 28.718369, 24.474342>,  <35.322842, 28.768877, 24.366062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.530987, 28.718369, 24.474342>,  <35.877895, 28.634186, 24.654810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530987, 28.718369, 24.474342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047346, -0.937013, -0.346070,
		-0.495585, -0.278774, 0.822606,
		-0.867268, 0.210454, -0.451171,
		35.270805, 28.781506, 24.338991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405399, 28.145113, 24.874876>,  <35.877895, 28.634186, 24.654810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405399, 28.145113, 24.874876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239975, 28.283123, 24.537848>,  <35.140720, 28.365929, 24.335630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239975, 28.283123, 24.537848>,  <35.405399, 28.145113, 24.874876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239975, 28.283123, 24.537848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039608, -0.931359, -0.361941,
		-0.909613, -0.116314, 0.398843,
		-0.413565, 0.345023, -0.842569,
		35.115906, 28.386631, 24.285076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085037, 28.498075, 25.534012>,  <35.405399, 28.145113, 24.874876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085037, 28.498075, 25.534012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.907986, 28.171864, 25.683140>,  <34.801754, 27.976137, 25.772617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.907986, 28.171864, 25.683140>,  <35.085037, 28.498075, 25.534012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907986, 28.171864, 25.683140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043555, 0.434830, 0.899458,
		-0.895648, 0.381886, -0.227988,
		-0.442626, -0.815528, 0.372822,
		34.775196, 27.927206, 25.794987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454178, 28.668810, 25.872526>,  <35.085037, 28.498075, 25.534012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454178, 28.668810, 25.872526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581985, 28.330635, 26.043709>,  <34.658669, 28.127731, 26.146420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581985, 28.330635, 26.043709>,  <34.454178, 28.668810, 25.872526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581985, 28.330635, 26.043709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008503, 0.449057, 0.893463,
		-0.947542, -0.289116, 0.136293,
		0.319517, -0.845435, 0.427959,
		34.677841, 28.077005, 26.172096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967964, 28.489300, 26.399757>,  <34.454178, 28.668810, 25.872526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967964, 28.489300, 26.399757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.293339, 28.287054, 26.514774>,  <34.488564, 28.165707, 26.583784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.293339, 28.287054, 26.514774>,  <33.967964, 28.489300, 26.399757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293339, 28.287054, 26.514774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087087, 0.382910, 0.919672,
		-0.575104, -0.773131, 0.267438,
		0.813432, -0.505617, 0.287543,
		34.537369, 28.135368, 26.601038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794907, 28.037371, 27.001612>,  <33.967964, 28.489300, 26.399757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794907, 28.037371, 27.001612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.189613, 28.102226, 27.001883>,  <34.426437, 28.141140, 27.002045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.189613, 28.102226, 27.001883>,  <33.794907, 28.037371, 27.001612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189613, 28.102226, 27.001883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059951, 0.360975, 0.930647,
		0.150648, -0.918373, 0.365918,
		0.986768, 0.162137, 0.000677,
		34.485645, 28.150867, 27.002085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024498, 27.742582, 27.642771>,  <33.794907, 28.037371, 27.001612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024498, 27.742582, 27.642771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322521, 27.985817, 27.533138>,  <34.501335, 28.131758, 27.467360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322521, 27.985817, 27.533138>,  <34.024498, 27.742582, 27.642771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322521, 27.985817, 27.533138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029135, 0.380850, 0.924178,
		0.666365, -0.696550, 0.266038,
		0.745057, 0.608089, -0.274079,
		34.546040, 28.168243, 27.450914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519737, 27.716791, 28.265436>,  <34.024498, 27.742582, 27.642771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519737, 27.716791, 28.265436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.602573, 28.056229, 28.070704>,  <34.652275, 28.259892, 27.953865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.602573, 28.056229, 28.070704>,  <34.519737, 27.716791, 28.265436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602573, 28.056229, 28.070704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237554, 0.439108, 0.866460,
		0.949044, -0.295079, -0.110654,
		0.207085, 0.848594, -0.486830,
		34.664700, 28.310806, 27.924654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013050, 27.966490, 28.566008>,  <34.519737, 27.716791, 28.265436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013050, 27.966490, 28.566008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.881931, 28.287380, 28.366417>,  <34.803261, 28.479914, 28.246662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.881931, 28.287380, 28.366417>,  <35.013050, 27.966490, 28.566008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881931, 28.287380, 28.366417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073544, 0.548227, 0.833090,
		0.941880, 0.236389, -0.238708,
		-0.327800, 0.802227, -0.498979,
		34.783592, 28.528048, 28.216722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493290, 28.509138, 28.751499>,  <35.013050, 27.966490, 28.566008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493290, 28.509138, 28.751499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.187847, 28.719101, 28.601099>,  <35.004581, 28.845078, 28.510859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.187847, 28.719101, 28.601099>,  <35.493290, 28.509138, 28.751499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187847, 28.719101, 28.601099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032149, 0.550703, 0.834082,
		0.644880, 0.648999, -0.403646,
		-0.763608, 0.524906, -0.376002,
		34.958763, 28.876574, 28.488298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147686, 28.628757, 28.511703>,  <35.493290, 28.509138, 28.751499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147686, 28.628757, 28.511703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.535881, 28.627447, 28.608160>,  <36.768799, 28.626661, 28.666035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.535881, 28.627447, 28.608160>,  <36.147686, 28.628757, 28.511703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535881, 28.627447, 28.608160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044287, -0.980481, -0.191559,
		0.237063, 0.196585, -0.951397,
		0.970484, -0.003277, 0.241142,
		36.827026, 28.626465, 28.680502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531551, 28.401413, 27.901850>,  <36.147686, 28.628757, 28.511703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531551, 28.401413, 27.901850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773022, 28.342331, 28.215219>,  <36.917904, 28.306881, 28.403242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773022, 28.342331, 28.215219>,  <36.531551, 28.401413, 27.901850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773022, 28.342331, 28.215219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081934, -0.965988, -0.245262,
		0.793006, 0.212248, -0.571045,
		0.603679, -0.147706, 0.783425,
		36.954124, 28.298019, 28.450247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981247, 27.968546, 27.646774>,  <36.531551, 28.401413, 27.901850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981247, 27.968546, 27.646774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.046001, 27.924185, 28.038998>,  <37.084854, 27.897568, 28.274332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.046001, 27.924185, 28.038998>,  <36.981247, 27.968546, 27.646774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046001, 27.924185, 28.038998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114891, -0.984789, -0.130350,
		0.980099, 0.133758, -0.146677,
		0.161881, -0.110904, 0.980559,
		37.094566, 27.890913, 28.333164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684696, 27.706633, 27.704517>,  <36.981247, 27.968546, 27.646774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684696, 27.706633, 27.704517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455078, 27.608702, 28.017063>,  <37.317307, 27.549944, 28.204590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455078, 27.608702, 28.017063>,  <37.684696, 27.706633, 27.704517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455078, 27.608702, 28.017063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236902, -0.963101, -0.127723,
		0.783804, 0.111788, 0.610865,
		-0.574046, -0.244825, 0.781365,
		37.282864, 27.535254, 28.251472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139744, 27.245014, 28.063980>,  <37.684696, 27.706633, 27.704517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139744, 27.245014, 28.063980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.793148, 27.187668, 28.255245>,  <37.585190, 27.153261, 28.370005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.793148, 27.187668, 28.255245>,  <38.139744, 27.245014, 28.063980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793148, 27.187668, 28.255245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203813, -0.976000, 0.076708,
		0.455687, 0.163922, 0.874916,
		-0.866492, -0.143365, 0.478160,
		37.533199, 27.144659, 28.398693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244610, 26.896854, 28.667681>,  <38.139744, 27.245014, 28.063980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244610, 26.896854, 28.667681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.861259, 26.814068, 28.589012>,  <37.631248, 26.764397, 28.541811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.861259, 26.814068, 28.589012>,  <38.244610, 26.896854, 28.667681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861259, 26.814068, 28.589012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212842, -0.977045, -0.008991,
		-0.190294, -0.050476, 0.980429,
		-0.958377, -0.206965, -0.196670,
		37.573746, 26.751978, 28.530012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050919, 26.347111, 29.125923>,  <38.244610, 26.896854, 28.667681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050919, 26.347111, 29.125923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.803677, 26.355541, 28.811596>,  <37.655331, 26.360600, 28.622999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.803677, 26.355541, 28.811596>,  <38.050919, 26.347111, 29.125923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803677, 26.355541, 28.811596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034465, -0.997953, -0.053876,
		-0.785343, -0.060384, 0.616109,
		-0.618101, 0.021077, -0.785816,
		37.618248, 26.361864, 28.575851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836273, 25.670193, 29.235998>,  <38.050919, 26.347111, 29.125923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836273, 25.670193, 29.235998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689129, 25.785585, 28.882399>,  <37.600842, 25.854820, 28.670238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689129, 25.785585, 28.882399>,  <37.836273, 25.670193, 29.235998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689129, 25.785585, 28.882399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001814, -0.950436, -0.310915,
		-0.929878, -0.115978, 0.349109,
		-0.367865, 0.288479, -0.884000,
		37.578770, 25.872129, 28.617199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241928, 25.331200, 29.142097>,  <37.836273, 25.670193, 29.235998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241928, 25.331200, 29.142097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397858, 25.432880, 28.788054>,  <37.491417, 25.493889, 28.575626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397858, 25.432880, 28.788054>,  <37.241928, 25.331200, 29.142097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397858, 25.432880, 28.788054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094677, -0.967117, -0.236054,
		-0.916009, 0.008220, -0.401073,
		0.389824, 0.254200, -0.885110,
		37.514805, 25.509140, 28.522520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.852318, 39.710663, 35.864807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070129, 39.866531, 35.567719>,  <37.200817, 39.960052, 35.389465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070129, 39.866531, 35.567719>,  <36.852318, 39.710663, 35.864807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070129, 39.866531, 35.567719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285980, -0.746202, -0.601164,
		-0.788481, 0.539757, -0.294890,
		0.544529, 0.389674, -0.742726,
		37.233490, 39.983433, 35.344902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502037, 39.815338, 35.321915>,  <36.852318, 39.710663, 35.864807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502037, 39.815338, 35.321915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868717, 39.808277, 35.162243>,  <37.088726, 39.804039, 35.066441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868717, 39.808277, 35.162243>,  <36.502037, 39.815338, 35.321915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868717, 39.808277, 35.162243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282958, -0.734039, -0.617351,
		-0.282114, 0.678878, -0.677891,
		0.916704, -0.017652, -0.399176,
		37.143730, 39.802982, 35.042488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435574, 39.856926, 34.560493>,  <36.502037, 39.815338, 35.321915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435574, 39.856926, 34.560493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786507, 39.690952, 34.656925>,  <36.997066, 39.591370, 34.714783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786507, 39.690952, 34.656925>,  <36.435574, 39.856926, 34.560493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786507, 39.690952, 34.656925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157872, -0.723968, -0.671526,
		0.453173, 0.551091, -0.700666,
		0.877331, -0.414933, 0.241081,
		37.049706, 39.566471, 34.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711266, 39.736298, 33.905556>,  <36.435574, 39.856926, 34.560493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711266, 39.736298, 33.905556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932945, 39.514687, 34.154045>,  <37.065952, 39.381721, 34.303139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932945, 39.514687, 34.154045>,  <36.711266, 39.736298, 33.905556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932945, 39.514687, 34.154045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019841, -0.754899, -0.655541,
		0.832144, 0.350977, -0.429360,
		0.554204, -0.554024, 0.621221,
		37.099205, 39.348480, 34.340412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155655, 39.382439, 33.547653>,  <36.711266, 39.736298, 33.905556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155655, 39.382439, 33.547653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148018, 39.150902, 33.873737>,  <37.143436, 39.011978, 34.069389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148018, 39.150902, 33.873737>,  <37.155655, 39.382439, 33.547653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148018, 39.150902, 33.873737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042202, -0.815101, -0.577779,
		0.998927, 0.023373, 0.039990,
		-0.019092, -0.578847, 0.815213,
		37.142292, 38.977249, 34.118301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611477, 38.804756, 33.358280>,  <37.155655, 39.382439, 33.547653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611477, 38.804756, 33.358280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391342, 38.681187, 33.668556>,  <37.259262, 38.607044, 33.854721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391342, 38.681187, 33.668556>,  <37.611477, 38.804756, 33.358280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391342, 38.681187, 33.668556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049108, -0.915448, -0.399428,
		0.833495, -0.257914, 0.488636,
		-0.550339, -0.308925, 0.775688,
		37.226242, 38.588509, 33.901264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974060, 38.254261, 33.550755>,  <37.611477, 38.804756, 33.358280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974060, 38.254261, 33.550755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591434, 38.220211, 33.662285>,  <37.361858, 38.199780, 33.729202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591434, 38.220211, 33.662285>,  <37.974060, 38.254261, 33.550755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591434, 38.220211, 33.662285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045802, -0.900655, -0.432114,
		0.287911, -0.426114, 0.857633,
		-0.956561, -0.085129, 0.278825,
		37.304466, 38.194672, 33.745934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835709, 37.530796, 33.523792>,  <37.974060, 38.254261, 33.550755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835709, 37.530796, 33.523792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463528, 37.664970, 33.582775>,  <37.240219, 37.745476, 33.618164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463528, 37.664970, 33.582775>,  <37.835709, 37.530796, 33.523792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463528, 37.664970, 33.582775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365264, -0.817246, -0.445748,
		-0.029007, -0.468609, 0.882929,
		-0.930452, 0.335432, 0.147460,
		37.184391, 37.765598, 33.627014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462624, 37.049004, 33.940884>,  <37.835709, 37.530796, 33.523792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462624, 37.049004, 33.940884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207726, 37.264496, 33.720451>,  <37.054787, 37.393791, 33.588192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207726, 37.264496, 33.720451>,  <37.462624, 37.049004, 33.940884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207726, 37.264496, 33.720451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357272, -0.840107, -0.408139,
		-0.682841, -0.063201, 0.727828,
		-0.637248, 0.538727, -0.551080,
		37.016552, 37.426113, 33.555126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756393, 36.663036, 33.868412>,  <37.462624, 37.049004, 33.940884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756393, 36.663036, 33.868412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735249, 36.939209, 33.579826>,  <36.722561, 37.104912, 33.406673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735249, 36.939209, 33.579826>,  <36.756393, 36.663036, 33.868412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735249, 36.939209, 33.579826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362402, -0.686482, -0.630402,
		-0.930522, 0.228137, 0.286502,
		-0.052861, 0.690432, -0.721464,
		36.719391, 37.146339, 33.363388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063366, 36.618294, 33.540016>,  <36.756393, 36.663036, 33.868412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063366, 36.618294, 33.540016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270954, 36.800808, 33.250885>,  <36.395508, 36.910316, 33.077408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270954, 36.800808, 33.250885>,  <36.063366, 36.618294, 33.540016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270954, 36.800808, 33.250885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283590, -0.705812, -0.649158,
		-0.806380, 0.541878, -0.236896,
		0.518968, 0.456287, -0.722823,
		36.426643, 36.937695, 33.034039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674274, 36.562824, 32.930843>,  <36.063366, 36.618294, 33.540016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674274, 36.562824, 32.930843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039650, 36.635738, 32.785301>,  <36.258877, 36.679489, 32.697975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039650, 36.635738, 32.785301>,  <35.674274, 36.562824, 32.930843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039650, 36.635738, 32.785301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140918, -0.697087, -0.703002,
		-0.381790, 0.693427, -0.611062,
		0.913443, 0.182289, -0.363857,
		36.313683, 36.690426, 32.676144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157246, 36.984016, 32.504536>,  <35.674274, 36.562824, 32.930843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157246, 36.984016, 32.504536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772369, 36.909611, 32.424950>,  <34.541443, 36.864967, 32.377197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772369, 36.909611, 32.424950>,  <35.157246, 36.984016, 32.504536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772369, 36.909611, 32.424950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232683, 0.941071, 0.245445,
		0.141585, 0.282461, -0.948772,
		-0.962191, -0.186012, -0.198966,
		34.483711, 36.853806, 32.365261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865551, 37.477406, 32.231918>,  <35.157246, 36.984016, 32.504536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865551, 37.477406, 32.231918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522434, 37.313995, 32.356689>,  <34.316566, 37.215950, 32.431553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522434, 37.313995, 32.356689>,  <34.865551, 37.477406, 32.231918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522434, 37.313995, 32.356689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310068, 0.895287, 0.319872,
		-0.409945, 0.177663, -0.894640,
		-0.857789, -0.408529, 0.311931,
		34.265099, 37.191437, 32.450268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438267, 38.028114, 32.077366>,  <34.865551, 37.477406, 32.231918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438267, 38.028114, 32.077366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267536, 37.782593, 32.343018>,  <34.165096, 37.635281, 32.502407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267536, 37.782593, 32.343018>,  <34.438267, 38.028114, 32.077366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267536, 37.782593, 32.343018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327549, 0.789448, 0.519118,
		-0.842930, 0.004039, -0.538009,
		-0.426827, -0.613804, 0.664126,
		34.139488, 37.598450, 32.542255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779236, 38.246231, 32.040379>,  <34.438267, 38.028114, 32.077366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779236, 38.246231, 32.040379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818401, 38.044727, 32.383690>,  <33.841900, 37.923824, 32.589676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818401, 38.044727, 32.383690>,  <33.779236, 38.246231, 32.040379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818401, 38.044727, 32.383690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418457, 0.761638, 0.494775,
		-0.902943, -0.407599, -0.136224,
		0.097917, -0.503757, 0.858278,
		33.847775, 37.893600, 32.641174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133198, 38.223297, 32.409019>,  <33.779236, 38.246231, 32.040379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133198, 38.223297, 32.409019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427689, 38.177952, 32.675888>,  <33.604385, 38.150745, 32.836010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427689, 38.177952, 32.675888>,  <33.133198, 38.223297, 32.409019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427689, 38.177952, 32.675888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329242, 0.801326, 0.499477,
		-0.591242, -0.587389, 0.552636,
		0.736229, -0.113361, 0.667170,
		33.648556, 38.143944, 32.876038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785702, 38.320095, 33.042225>,  <33.133198, 38.223297, 32.409019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785702, 38.320095, 33.042225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163956, 38.383827, 33.155640>,  <33.390907, 38.422066, 33.223690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163956, 38.383827, 33.155640>,  <32.785702, 38.320095, 33.042225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163956, 38.383827, 33.155640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291332, 0.802509, 0.520678,
		-0.144584, -0.574974, 0.805296,
		0.945632, 0.159327, 0.283538,
		33.447647, 38.431625, 33.240700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789024, 38.334019, 33.755909>,  <32.785702, 38.320095, 33.042225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789024, 38.334019, 33.755909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122894, 38.526249, 33.648304>,  <33.323215, 38.641586, 33.583740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122894, 38.526249, 33.648304>,  <32.789024, 38.334019, 33.755909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122894, 38.526249, 33.648304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266785, 0.780120, 0.565896,
		0.481819, -0.400569, 0.779355,
		0.834671, 0.480580, -0.269011,
		33.373295, 38.670422, 33.567600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935539, 38.656570, 34.348778>,  <32.789024, 38.334019, 33.755909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935539, 38.656570, 34.348778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150154, 38.848152, 34.070862>,  <33.278923, 38.963100, 33.904114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150154, 38.848152, 34.070862>,  <32.935539, 38.656570, 34.348778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150154, 38.848152, 34.070862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368891, 0.873615, 0.317357,
		0.758978, 0.086028, 0.645409,
		0.536537, 0.478953, -0.694789,
		33.311115, 38.991837, 33.862423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357662, 39.200489, 34.600147>,  <32.935539, 38.656570, 34.348778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357662, 39.200489, 34.600147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334831, 39.299847, 34.213356>,  <33.321133, 39.359463, 33.981281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334831, 39.299847, 34.213356>,  <33.357662, 39.200489, 34.600147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334831, 39.299847, 34.213356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223137, 0.940880, 0.254861,
		0.973114, 0.230316, 0.001720,
		-0.057080, 0.248393, -0.966976,
		33.317707, 39.374363, 33.923264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567051, 39.924522, 34.594124>,  <33.357662, 39.200489, 34.600147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567051, 39.924522, 34.594124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415352, 39.877354, 34.227024>,  <33.324333, 39.849052, 34.006763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415352, 39.877354, 34.227024>,  <33.567051, 39.924522, 34.594124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415352, 39.877354, 34.227024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329058, 0.944196, 0.014657,
		0.864805, 0.307551, -0.396893,
		-0.379252, -0.117925, -0.917748,
		33.301575, 39.841976, 33.951698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783943, 40.518574, 34.191589>,  <33.567051, 39.924522, 34.594124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783943, 40.518574, 34.191589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465313, 40.355038, 34.013462>,  <33.274136, 40.256916, 33.906586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465313, 40.355038, 34.013462>,  <33.783943, 40.518574, 34.191589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465313, 40.355038, 34.013462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454485, 0.890741, -0.004807,
		0.398628, 0.198561, -0.895360,
		-0.796580, -0.408844, -0.445317,
		33.226337, 40.232384, 33.879868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740353, 40.916100, 33.563580>,  <33.783943, 40.518574, 34.191589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740353, 40.916100, 33.563580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388935, 40.763657, 33.678768>,  <33.178085, 40.672192, 33.747883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388935, 40.763657, 33.678768>,  <33.740353, 40.916100, 33.563580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388935, 40.763657, 33.678768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427819, 0.895929, -0.119503,
		-0.212460, -0.228188, -0.950153,
		-0.878540, -0.381104, 0.287972,
		33.125374, 40.649326, 33.765160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164993, 41.091682, 33.027107>,  <33.740353, 40.916100, 33.563580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164993, 41.091682, 33.027107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943722, 41.014126, 33.351181>,  <32.810959, 40.967594, 33.545628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943722, 41.014126, 33.351181>,  <33.164993, 41.091682, 33.027107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943722, 41.014126, 33.351181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687267, 0.655847, -0.312296,
		-0.470809, -0.729570, -0.496051,
		-0.553175, -0.193888, 0.810188,
		32.777771, 40.955959, 33.594238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470734, 41.200466, 32.775814>,  <33.164993, 41.091682, 33.027107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470734, 41.200466, 32.775814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422474, 41.193848, 33.172836>,  <32.393517, 41.189877, 33.411049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422474, 41.193848, 33.172836>,  <32.470734, 41.200466, 32.775814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422474, 41.193848, 33.172836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797431, 0.597108, -0.086979,
		-0.591225, -0.801990, -0.085239,
		-0.120653, -0.016548, 0.992557,
		32.386276, 41.188885, 33.470604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558041, 40.543411, 32.321316>,  <32.470734, 41.200466, 32.775814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558041, 40.543411, 32.321316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640312, 40.882401, 32.125568>,  <32.689674, 41.085793, 32.008118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640312, 40.882401, 32.125568>,  <32.558041, 40.543411, 32.321316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640312, 40.882401, 32.125568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048018, -0.490722, -0.869992,
		-0.977440, 0.202439, -0.060238,
		0.205680, 0.847473, -0.489373,
		32.702015, 41.136642, 31.978756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061947, 40.759998, 31.698244>,  <32.558041, 40.543411, 32.321316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061947, 40.759998, 31.698244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412361, 40.936062, 31.619442>,  <32.622612, 41.041702, 31.572161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412361, 40.936062, 31.619442>,  <32.061947, 40.759998, 31.698244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412361, 40.936062, 31.619442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039786, -0.473098, -0.880111,
		-0.480594, 0.763175, -0.431965,
		0.876040, 0.440162, -0.197004,
		32.675175, 41.068111, 31.560341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012146, 41.348740, 31.168322>,  <32.061947, 40.759998, 31.698244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012146, 41.348740, 31.168322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382591, 41.198105, 31.177187>,  <32.604858, 41.107723, 31.182507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382591, 41.198105, 31.177187>,  <32.012146, 41.348740, 31.168322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382591, 41.198105, 31.177187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182349, -0.498313, -0.847604,
		0.330242, 0.780938, -0.530166,
		0.926115, -0.376590, 0.022161,
		32.660427, 41.085129, 31.183836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201954, 41.352436, 30.442617>,  <32.012146, 41.348740, 31.168322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201954, 41.352436, 30.442617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436359, 41.089035, 30.631495>,  <32.577003, 40.930992, 30.744820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436359, 41.089035, 30.631495>,  <32.201954, 41.352436, 30.442617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436359, 41.089035, 30.631495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214439, -0.687986, -0.693319,
		0.781414, 0.305036, -0.544376,
		0.586010, -0.658505, 0.472191,
		32.612164, 40.891483, 30.773151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663181, 41.102314, 29.885752>,  <32.201954, 41.352436, 30.442617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663181, 41.102314, 29.885752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693336, 40.831059, 30.178173>,  <32.711430, 40.668304, 30.353626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693336, 40.831059, 30.178173>,  <32.663181, 41.102314, 29.885752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693336, 40.831059, 30.178173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031939, -0.734408, -0.677957,
		0.996643, 0.027759, -0.077023,
		0.075386, -0.678141, 0.731056,
		32.715954, 40.627617, 30.397490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136986, 40.616611, 29.734362>,  <32.663181, 41.102314, 29.885752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136986, 40.616611, 29.734362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949841, 40.412018, 30.022665>,  <32.837555, 40.289261, 30.195646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949841, 40.412018, 30.022665>,  <33.136986, 40.616611, 29.734362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949841, 40.412018, 30.022665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053299, -0.830363, -0.554668,
		0.882194, -0.221092, 0.415756,
		-0.467861, -0.511484, 0.720757,
		32.809483, 40.258572, 30.238892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471088, 39.960239, 29.713366>,  <33.136986, 40.616611, 29.734362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471088, 39.960239, 29.713366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116219, 39.892391, 29.885019>,  <32.903297, 39.851681, 29.988012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116219, 39.892391, 29.885019>,  <33.471088, 39.960239, 29.713366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116219, 39.892391, 29.885019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007387, -0.924646, -0.380756,
		0.461383, -0.340965, 0.819066,
		-0.887170, -0.169624, 0.429135,
		32.850067, 39.841503, 30.013760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503357, 39.318298, 30.104563>,  <33.471088, 39.960239, 29.713366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503357, 39.318298, 30.104563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110821, 39.372803, 30.050297>,  <32.875298, 39.405506, 30.017736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110821, 39.372803, 30.050297>,  <33.503357, 39.318298, 30.104563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110821, 39.372803, 30.050297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053643, -0.871564, -0.487339,
		-0.184644, -0.470968, 0.862610,
		-0.981340, 0.136257, -0.135665,
		32.816418, 39.413681, 30.009598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383945, 38.647831, 30.094479>,  <33.503357, 39.318298, 30.104563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383945, 38.647831, 30.094479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060547, 38.832085, 29.947973>,  <32.866508, 38.942638, 29.860069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060547, 38.832085, 29.947973>,  <33.383945, 38.647831, 30.094479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060547, 38.832085, 29.947973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259866, -0.837845, -0.480088,
		-0.528018, -0.292970, 0.797098,
		-0.808497, 0.460634, -0.366264,
		32.817997, 38.970276, 29.838095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834335, 38.264168, 30.162266>,  <33.383945, 38.647831, 30.094479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834335, 38.264168, 30.162266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761509, 38.510426, 29.855585>,  <32.717815, 38.658180, 29.671576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761509, 38.510426, 29.855585>,  <32.834335, 38.264168, 30.162266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761509, 38.510426, 29.855585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156407, -0.787939, -0.595557,
		-0.970768, 0.011488, 0.239746,
		-0.182064, 0.615646, -0.766703,
		32.706890, 38.695118, 29.625574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298576, 38.023083, 29.793539>,  <32.834335, 38.264168, 30.162266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298576, 38.023083, 29.793539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452579, 38.274658, 29.523367>,  <32.544983, 38.425602, 29.361263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452579, 38.274658, 29.523367>,  <32.298576, 38.023083, 29.793539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452579, 38.274658, 29.523367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173974, -0.669265, -0.722369,
		-0.906368, 0.395624, -0.148253,
		0.385007, 0.628940, -0.675429,
		32.568081, 38.463341, 29.320738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843777, 37.965229, 29.297869>,  <32.298576, 38.023083, 29.793539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843777, 37.965229, 29.297869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155277, 38.136707, 29.114666>,  <32.342178, 38.239594, 29.004744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155277, 38.136707, 29.114666>,  <31.843777, 37.965229, 29.297869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155277, 38.136707, 29.114666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048892, -0.686389, -0.725590,
		-0.625426, 0.587446, -0.513566,
		0.778750, 0.428693, -0.458007,
		32.388901, 38.265316, 28.977264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684034, 37.955879, 28.575159>,  <31.843777, 37.965229, 29.297869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684034, 37.955879, 28.575159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078426, 38.021809, 28.564734>,  <32.315060, 38.061367, 28.558479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.078426, 38.021809, 28.564734>,  <31.684034, 37.955879, 28.575159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078426, 38.021809, 28.564734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089838, -0.655918, -0.749467,
		-0.140626, 0.736616, -0.661529,
		0.985978, 0.164825, -0.026063,
		32.374222, 38.071255, 28.556915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878687, 38.013943, 27.860428>,  <31.684034, 37.955879, 28.575159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878687, 38.013943, 27.860428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208538, 37.889320, 28.049286>,  <32.406448, 37.814548, 28.162601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208538, 37.889320, 28.049286>,  <31.878687, 38.013943, 27.860428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208538, 37.889320, 28.049286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146056, -0.689088, -0.709806,
		0.546494, 0.654286, -0.522737,
		0.824628, -0.311556, 0.472145,
		32.455925, 37.795853, 28.190929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373333, 37.802441, 27.376810>,  <31.878687, 38.013943, 27.860428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373333, 37.802441, 27.376810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.520184, 37.650215, 27.716312>,  <32.608295, 37.558880, 27.920013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.520184, 37.650215, 27.716312>,  <32.373333, 37.802441, 27.376810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520184, 37.650215, 27.716312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213035, -0.853818, -0.474984,
		0.905446, 0.355195, -0.232386,
		0.367128, -0.380566, 0.848756,
		32.630322, 37.536045, 27.970940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977657, 37.526043, 27.161943>,  <32.373333, 37.802441, 27.376810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977657, 37.526043, 27.161943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919304, 37.358967, 27.520664>,  <32.884293, 37.258720, 27.735897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919304, 37.358967, 27.520664>,  <32.977657, 37.526043, 27.161943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919304, 37.358967, 27.520664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405446, -0.852115, -0.330927,
		0.902403, 0.315328, 0.293662,
		-0.145883, -0.417694, 0.896800,
		32.875538, 37.233658, 27.789703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607433, 37.252285, 27.409662>,  <32.977657, 37.526043, 27.161943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607433, 37.252285, 27.409662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312084, 37.061226, 27.600094>,  <33.134872, 36.946590, 27.714354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312084, 37.061226, 27.600094>,  <33.607433, 37.252285, 27.409662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312084, 37.061226, 27.600094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429280, -0.877343, -0.214449,
		0.520117, 0.046028, 0.852854,
		-0.738375, -0.477652, 0.476080,
		33.090572, 36.917931, 27.742918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951458, 36.778133, 27.841290>,  <33.607433, 37.252285, 27.409662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951458, 36.778133, 27.841290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590591, 36.618759, 27.775143>,  <33.374073, 36.523136, 27.735455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590591, 36.618759, 27.775143>,  <33.951458, 36.778133, 27.841290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590591, 36.618759, 27.775143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424899, -0.886963, -0.180992,
		-0.074561, -0.233550, 0.969482,
		-0.902165, -0.398437, -0.165368,
		33.319942, 36.499229, 27.725533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054806, 36.163090, 28.090994>,  <33.951458, 36.778133, 27.841290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054806, 36.163090, 28.090994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719646, 36.122822, 27.876410>,  <33.518551, 36.098663, 27.747660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719646, 36.122822, 27.876410>,  <34.054806, 36.163090, 28.090994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719646, 36.122822, 27.876410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207797, -0.967667, -0.142976,
		-0.504721, -0.231274, 0.831727,
		-0.837900, -0.100667, -0.536460,
		33.468277, 36.092621, 27.715471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667526, 35.604603, 28.410288>,  <34.054806, 36.163090, 28.090994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667526, 35.604603, 28.410288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517555, 35.646442, 28.041834>,  <33.427574, 35.671547, 27.820761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517555, 35.646442, 28.041834>,  <33.667526, 35.604603, 28.410288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517555, 35.646442, 28.041834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218029, -0.955796, -0.197275,
		-0.901053, -0.274797, 0.335545,
		-0.374923, 0.104597, -0.921136,
		33.405079, 35.677822, 27.765493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229893, 35.059566, 28.297823>,  <33.667526, 35.604603, 28.410288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229893, 35.059566, 28.297823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333965, 35.188957, 27.933918>,  <33.396408, 35.266594, 27.715574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333965, 35.188957, 27.933918>,  <33.229893, 35.059566, 28.297823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333965, 35.188957, 27.933918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350718, -0.909519, -0.223095,
		-0.899613, -0.261025, -0.350088,
		0.260178, 0.323481, -0.909762,
		33.412018, 35.286003, 27.660990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101288, 34.445271, 27.934368>,  <33.229893, 35.059566, 28.297823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101288, 34.445271, 27.934368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324863, 34.670597, 27.690969>,  <33.459007, 34.805794, 27.544931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324863, 34.670597, 27.690969>,  <33.101288, 34.445271, 27.934368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324863, 34.670597, 27.690969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329997, -0.824323, -0.459993,
		-0.760716, 0.056306, -0.646638,
		0.558939, 0.563313, -0.608495,
		33.492546, 34.839592, 27.508421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026802, 34.149372, 27.333166>,  <33.101288, 34.445271, 27.934368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026802, 34.149372, 27.333166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341743, 34.380894, 27.248262>,  <33.530708, 34.519806, 27.197319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341743, 34.380894, 27.248262>,  <33.026802, 34.149372, 27.333166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341743, 34.380894, 27.248262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387434, -0.732375, -0.559931,
		-0.479544, 0.358629, -0.800888,
		0.787358, 0.578803, -0.212261,
		33.577950, 34.554535, 27.184584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166428, 34.094753, 26.512646>,  <33.026802, 34.149372, 27.333166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166428, 34.094753, 26.512646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500389, 34.199345, 26.706371>,  <33.700768, 34.262100, 26.822607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500389, 34.199345, 26.706371>,  <33.166428, 34.094753, 26.512646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500389, 34.199345, 26.706371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538531, -0.569808, -0.620729,
		0.113657, 0.779068, -0.616551,
		0.834905, 0.261482, 0.484314,
		33.750862, 34.277790, 26.851665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634113, 34.260468, 26.020128>,  <33.166428, 34.094753, 26.512646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634113, 34.260468, 26.020128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865742, 34.186752, 26.337799>,  <34.004719, 34.142525, 26.528400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865742, 34.186752, 26.337799>,  <33.634113, 34.260468, 26.020128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865742, 34.186752, 26.337799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608566, -0.550508, -0.571478,
		0.542516, 0.814235, -0.206633,
		0.579071, -0.184287, 0.794176,
		34.039463, 34.131466, 26.576052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266602, 34.232567, 25.741089>,  <33.634113, 34.260468, 26.020128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266602, 34.232567, 25.741089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312077, 34.034378, 26.085548>,  <34.339359, 33.915462, 26.292225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312077, 34.034378, 26.085548>,  <34.266602, 34.232567, 25.741089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312077, 34.034378, 26.085548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541214, -0.695991, -0.471895,
		0.833165, 0.519714, 0.189035,
		0.113684, -0.495474, 0.861151,
		34.346180, 33.885735, 26.343893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906853, 34.046425, 25.717360>,  <34.266602, 34.232567, 25.741089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906853, 34.046425, 25.717360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767078, 33.800030, 25.999765>,  <34.683216, 33.652191, 26.169209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767078, 33.800030, 25.999765>,  <34.906853, 34.046425, 25.717360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767078, 33.800030, 25.999765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502892, -0.759084, -0.413390,
		0.790567, 0.210596, 0.575025,
		-0.349433, -0.615988, 0.706013,
		34.662247, 33.615234, 26.211569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545719, 33.692802, 25.999823>,  <34.906853, 34.046425, 25.717360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545719, 33.692802, 25.999823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226589, 33.475704, 26.104822>,  <35.035110, 33.345444, 26.167822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226589, 33.475704, 26.104822>,  <35.545719, 33.692802, 25.999823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226589, 33.475704, 26.104822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362138, -0.779517, -0.511086,
		0.482011, -0.312696, 0.818466,
		-0.797823, -0.542746, 0.262497,
		34.987244, 33.312881, 26.183571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189873, 33.622040, 26.267740>,  <35.545719, 33.692802, 25.999823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189873, 33.622040, 26.267740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480900, 33.603607, 25.993944>,  <36.655514, 33.592548, 25.829666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480900, 33.603607, 25.993944>,  <36.189873, 33.622040, 26.267740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480900, 33.603607, 25.993944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101179, 0.994039, 0.040620,
		0.678536, -0.098810, 0.727892,
		0.727566, -0.046085, -0.684488,
		36.699169, 33.589783, 25.788597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896854, 33.761200, 26.524353>,  <36.189873, 33.622040, 26.267740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896854, 33.761200, 26.524353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912273, 33.845531, 26.133648>,  <36.921524, 33.896130, 25.899225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912273, 33.845531, 26.133648>,  <36.896854, 33.761200, 26.524353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912273, 33.845531, 26.133648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191156, 0.957882, 0.214295,
		0.980803, -0.194974, -0.003377,
		0.038547, 0.210826, -0.976763,
		36.923840, 33.908779, 25.840618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415783, 34.313709, 26.535463>,  <36.896854, 33.761200, 26.524353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415783, 34.313709, 26.535463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267593, 34.353321, 26.166044>,  <37.178680, 34.377087, 25.944393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267593, 34.353321, 26.166044>,  <37.415783, 34.313709, 26.535463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267593, 34.353321, 26.166044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205711, 0.978357, 0.022387,
		0.905777, -0.181691, -0.382825,
		-0.370472, 0.099029, -0.923549,
		37.156452, 34.383030, 25.888979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982559, 34.642727, 26.105715>,  <37.415783, 34.313709, 26.535463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982559, 34.642727, 26.105715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628761, 34.709961, 25.931623>,  <37.416485, 34.750301, 25.827169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628761, 34.709961, 25.931623>,  <37.982559, 34.642727, 26.105715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628761, 34.709961, 25.931623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133316, 0.985008, 0.109480,
		0.447105, 0.038811, -0.893639,
		-0.884491, 0.168085, -0.435228,
		37.363415, 34.760387, 25.801056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163586, 35.149002, 25.639868>,  <37.982559, 34.642727, 26.105715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163586, 35.149002, 25.639868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775692, 35.173138, 25.734501>,  <37.542953, 35.187618, 25.791281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775692, 35.173138, 25.734501>,  <38.163586, 35.149002, 25.639868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775692, 35.173138, 25.734501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125506, 0.954348, 0.271050,
		-0.209427, 0.292539, -0.933039,
		-0.969736, 0.060336, 0.236581,
		37.484772, 35.191238, 25.805475>
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
