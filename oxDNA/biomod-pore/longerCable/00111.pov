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
	<24.190893, 35.394283, 34.970551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221979, 35.012669, 34.854778>,  <24.240631, 34.783699, 34.785316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221979, 35.012669, 34.854778>,  <24.190893, 35.394283, 34.970551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.221979, 35.012669, 34.854778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277245, 0.299536, -0.912915,
		0.957651, -0.009295, 0.287781,
		0.077715, -0.954040, -0.289428,
		24.245293, 34.726456, 34.767948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788582, 35.256866, 34.551491>,  <24.190893, 35.394283, 34.970551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788582, 35.256866, 34.551491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076826, 35.005863, 34.433540>,  <25.249773, 34.855263, 34.362770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076826, 35.005863, 34.433540>,  <24.788582, 35.256866, 34.551491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076826, 35.005863, 34.433540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693259, 0.645568, 0.320364,
		-0.010667, -0.435285, 0.900230,
		0.720609, -0.627510, -0.294879,
		25.293009, 34.817612, 34.345078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247057, 35.292923, 35.181953>,  <24.788582, 35.256866, 34.551491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247057, 35.292923, 35.181953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419662, 35.152687, 34.849476>,  <25.523226, 35.068546, 34.649990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419662, 35.152687, 34.849476>,  <25.247057, 35.292923, 35.181953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419662, 35.152687, 34.849476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814919, 0.546679, 0.192480,
		0.386913, -0.760413, 0.521603,
		0.431514, -0.350591, -0.831193,
		25.549116, 35.047508, 34.600117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873137, 34.946957, 35.249561>,  <25.247057, 35.292923, 35.181953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873137, 34.946957, 35.249561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873306, 35.080029, 34.872345>,  <25.873407, 35.159870, 34.646015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873306, 35.080029, 34.872345>,  <25.873137, 34.946957, 35.249561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873306, 35.080029, 34.872345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671792, 0.698454, 0.246695,
		0.740740, -0.633632, -0.223192,
		0.000424, 0.332675, -0.943041,
		25.873434, 35.179832, 34.589432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497921, 35.130852, 35.154228>,  <25.873137, 34.946957, 35.249561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497921, 35.130852, 35.154228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265888, 35.328880, 34.895489>,  <26.126669, 35.447697, 34.740246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265888, 35.328880, 34.895489>,  <26.497921, 35.130852, 35.154228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265888, 35.328880, 34.895489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457539, 0.855032, 0.244087,
		0.673915, -0.154367, -0.722502,
		-0.580084, 0.495067, -0.646848,
		26.091864, 35.477402, 34.701435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670227, 34.788090, 35.751205>,  <26.497921, 35.130852, 35.154228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670227, 34.788090, 35.751205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862263, 34.441116, 35.698948>,  <26.977484, 34.232933, 35.667591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862263, 34.441116, 35.698948>,  <26.670227, 34.788090, 35.751205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862263, 34.441116, 35.698948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613929, -0.438627, 0.656276,
		-0.626584, -0.234861, -0.743124,
		0.480087, -0.867437, -0.130648,
		27.006289, 34.180885, 35.659752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179474, 35.007122, 36.292919>,  <26.670227, 34.788090, 35.751205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179474, 35.007122, 36.292919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048815, 34.873516, 36.646584>,  <26.970419, 34.793354, 36.858780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048815, 34.873516, 36.646584>,  <27.179474, 35.007122, 36.292919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048815, 34.873516, 36.646584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031285, 0.938780, 0.343093,
		-0.944628, 0.084410, -0.317102,
		-0.326649, -0.334016, 0.884157,
		26.950821, 34.773312, 36.911831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520208, 35.377792, 36.475819>,  <27.179474, 35.007122, 36.292919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520208, 35.377792, 36.475819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686502, 35.226814, 36.806805>,  <26.786280, 35.136227, 37.005398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686502, 35.226814, 36.806805>,  <26.520208, 35.377792, 36.475819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686502, 35.226814, 36.806805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071012, 0.893568, 0.443275,
		-0.906709, -0.243045, 0.344684,
		0.415735, -0.377445, 0.827466,
		26.811222, 35.113579, 37.055046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058613, 35.487827, 37.076931>,  <26.520208, 35.377792, 36.475819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058613, 35.487827, 37.076931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423492, 35.439423, 37.233521>,  <26.642420, 35.410378, 37.327473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423492, 35.439423, 37.233521>,  <26.058613, 35.487827, 37.076931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423492, 35.439423, 37.233521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098537, 0.862567, 0.496254,
		-0.397727, -0.491256, 0.774907,
		0.912198, -0.121016, 0.391473,
		26.697151, 35.403118, 37.350964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049332, 35.784924, 37.678127>,  <26.058613, 35.487827, 37.076931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049332, 35.784924, 37.678127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446388, 35.761147, 37.635925>,  <26.684622, 35.746880, 37.610603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446388, 35.761147, 37.635925>,  <26.049332, 35.784924, 37.678127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446388, 35.761147, 37.635925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113930, 0.753748, 0.647212,
		0.041051, -0.654469, 0.754974,
		0.992641, -0.059446, -0.105505,
		26.744181, 35.743313, 37.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388353, 35.832714, 38.416054>,  <26.049332, 35.784924, 37.678127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388353, 35.832714, 38.416054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650702, 35.913815, 38.125198>,  <26.808111, 35.962475, 37.950684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650702, 35.913815, 38.125198>,  <26.388353, 35.832714, 38.416054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650702, 35.913815, 38.125198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369765, 0.753492, 0.543621,
		0.658109, -0.625414, 0.419225,
		0.655871, 0.202747, -0.727136,
		26.847462, 35.974640, 37.907059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121668, 35.870262, 38.634605>,  <26.388353, 35.832714, 38.416054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121668, 35.870262, 38.634605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006430, 36.099873, 38.328014>,  <26.937286, 36.237640, 38.144058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006430, 36.099873, 38.328014>,  <27.121668, 35.870262, 38.634605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006430, 36.099873, 38.328014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084015, 0.812484, 0.576898,
		0.953908, 0.101807, -0.282302,
		-0.288098, 0.574026, -0.766482,
		26.920000, 36.272079, 38.098068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757227, 36.558445, 38.769314>,  <27.121668, 35.870262, 38.634605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757227, 36.558445, 38.769314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948154, 36.898602, 38.680767>,  <27.062710, 37.102695, 38.627640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948154, 36.898602, 38.680767>,  <26.757227, 36.558445, 38.769314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948154, 36.898602, 38.680767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113525, -0.309479, -0.944105,
		-0.871367, 0.425508, -0.244261,
		0.477318, 0.850391, -0.221364,
		27.091351, 37.153721, 38.614357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477022, 37.136375, 38.209469>,  <26.757227, 36.558445, 38.769314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477022, 37.136375, 38.209469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873831, 37.086277, 38.203732>,  <27.111916, 37.056217, 38.200291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873831, 37.086277, 38.203732>,  <26.477022, 37.136375, 38.209469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873831, 37.086277, 38.203732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073704, -0.483933, -0.871996,
		0.102279, 0.866095, -0.489304,
		0.992022, -0.125250, -0.014339,
		27.171436, 37.048702, 38.199429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667923, 37.226208, 37.505661>,  <26.477022, 37.136375, 38.209469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667923, 37.226208, 37.505661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967026, 37.014938, 37.666607>,  <27.146488, 36.888176, 37.763172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967026, 37.014938, 37.666607>,  <26.667923, 37.226208, 37.505661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967026, 37.014938, 37.666607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175276, -0.741518, -0.647634,
		0.640420, 0.413748, -0.647051,
		0.747757, -0.528170, 0.402363,
		27.191353, 36.856487, 37.787315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141859, 36.897263, 36.967281>,  <26.667923, 37.226208, 37.505661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141859, 36.897263, 36.967281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155220, 36.690506, 37.309441>,  <27.163237, 36.566452, 37.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155220, 36.690506, 37.309441>,  <27.141859, 36.897263, 36.967281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155220, 36.690506, 37.309441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253655, -0.832236, -0.492994,
		0.966718, -0.200509, -0.158910,
		0.033401, -0.516894, 0.855398,
		27.165239, 36.535439, 37.566059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598793, 36.277317, 36.889069>,  <27.141859, 36.897263, 36.967281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598793, 36.277317, 36.889069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370079, 36.197315, 37.207329>,  <27.232851, 36.149315, 37.398285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370079, 36.197315, 37.207329>,  <27.598793, 36.277317, 36.889069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370079, 36.197315, 37.207329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122282, -0.938217, -0.323723,
		0.811240, -0.282393, 0.512000,
		-0.571784, -0.200009, 0.795650,
		27.198544, 36.137314, 37.446022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964981, 35.836586, 37.222790>,  <27.598793, 36.277317, 36.889069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964981, 35.836586, 37.222790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586348, 35.789864, 37.343010>,  <27.359167, 35.761829, 37.415142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586348, 35.789864, 37.343010>,  <27.964981, 35.836586, 37.222790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586348, 35.789864, 37.343010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044028, -0.970173, -0.238380,
		0.319433, -0.212415, 0.923495,
		-0.946585, -0.116806, 0.300553,
		27.302372, 35.754822, 37.433174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991592, 35.254009, 37.597271>,  <27.964981, 35.836586, 37.222790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991592, 35.254009, 37.597271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601313, 35.305664, 37.526463>,  <27.367146, 35.336658, 37.483978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601313, 35.305664, 37.526463>,  <27.991592, 35.254009, 37.597271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601313, 35.305664, 37.526463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053952, -0.924586, -0.377133,
		-0.212374, -0.358417, 0.909084,
		-0.975698, 0.129140, -0.177021,
		27.308603, 35.344406, 37.473358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586540, 34.738392, 38.018795>,  <27.991592, 35.254009, 37.597271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586540, 34.738392, 38.018795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351589, 34.859470, 37.718567>,  <27.210619, 34.932117, 37.538429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351589, 34.859470, 37.718567>,  <27.586540, 34.738392, 38.018795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351589, 34.859470, 37.718567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107162, -0.948344, -0.298597,
		-0.802186, -0.094956, 0.589474,
		-0.587378, 0.302700, -0.750573,
		27.175375, 34.950279, 37.493397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858429, 34.501892, 38.026188>,  <27.586540, 34.738392, 38.018795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858429, 34.501892, 38.026188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970526, 34.544548, 37.644592>,  <27.037785, 34.570141, 37.415634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970526, 34.544548, 37.644592>,  <26.858429, 34.501892, 38.026188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970526, 34.544548, 37.644592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080388, -0.987712, -0.134024,
		-0.956557, 0.114249, -0.268227,
		0.280243, 0.106639, -0.953987,
		27.054598, 34.576538, 37.358395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466343, 34.033855, 37.644161>,  <26.858429, 34.501892, 38.026188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466343, 34.033855, 37.644161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805674, 34.133621, 37.457344>,  <27.009272, 34.193481, 37.345253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805674, 34.133621, 37.457344>,  <26.466343, 34.033855, 37.644161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805674, 34.133621, 37.457344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236099, -0.967740, -0.087953,
		-0.473915, -0.035656, -0.879848,
		0.848329, 0.249414, -0.467045,
		27.060173, 34.208447, 37.317230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406139, 33.783588, 36.977386>,  <26.466343, 34.033855, 37.644161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406139, 33.783588, 36.977386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763330, 33.791355, 37.157257>,  <26.977646, 33.796017, 37.265179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763330, 33.791355, 37.157257>,  <26.406139, 33.783588, 36.977386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763330, 33.791355, 37.157257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097329, -0.983762, -0.150795,
		0.439448, 0.178424, -0.880369,
		0.892979, 0.019418, 0.449678,
		27.031225, 33.797180, 37.292160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930534, 33.487049, 36.553844>,  <26.406139, 33.783588, 36.977386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930534, 33.487049, 36.553844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983067, 33.431084, 36.946411>,  <27.014585, 33.397507, 37.181950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983067, 33.431084, 36.946411>,  <26.930534, 33.487049, 36.553844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983067, 33.431084, 36.946411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177097, -0.970754, -0.162088,
		0.975392, 0.195093, -0.102714,
		0.131332, -0.139909, 0.981416,
		27.022467, 33.389111, 37.240837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612278, 33.501434, 35.901958>,  <26.930534, 33.487049, 36.553844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612278, 33.501434, 35.901958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970070, 33.360600, 36.012188>,  <27.184746, 33.276100, 36.078323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970070, 33.360600, 36.012188>,  <26.612278, 33.501434, 35.901958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970070, 33.360600, 36.012188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058660, -0.703430, -0.708340,
		0.443240, 0.617432, -0.649859,
		0.894482, -0.352085, 0.275570,
		27.238415, 33.254974, 36.094860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224920, 33.544079, 35.447685>,  <26.612278, 33.501434, 35.901958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224920, 33.544079, 35.447685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244522, 33.229645, 35.694157>,  <27.256283, 33.040985, 35.842037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244522, 33.229645, 35.694157>,  <27.224920, 33.544079, 35.447685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244522, 33.229645, 35.694157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192227, -0.597959, -0.778135,
		0.980126, 0.156578, 0.121804,
		0.049005, -0.786084, 0.616174,
		27.259224, 32.993820, 35.879009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025932, 33.249043, 35.471504>,  <27.224920, 33.544079, 35.447685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025932, 33.249043, 35.471504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733105, 32.994572, 35.568958>,  <27.557409, 32.841888, 35.627430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733105, 32.994572, 35.568958>,  <28.025932, 33.249043, 35.471504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733105, 32.994572, 35.568958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311753, -0.630851, -0.710518,
		0.605713, -0.444193, 0.660155,
		-0.732067, -0.636176, 0.243636,
		27.513485, 32.803719, 35.642048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374533, 32.706894, 35.693306>,  <28.025932, 33.249043, 35.471504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374533, 32.706894, 35.693306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615974, 32.897282, 35.437458>,  <28.760839, 33.011517, 35.283951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615974, 32.897282, 35.437458>,  <28.374533, 32.706894, 35.693306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615974, 32.897282, 35.437458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790788, -0.459610, 0.404244,
		-0.101566, -0.749806, -0.653816,
		0.603605, 0.475972, -0.639619,
		28.797056, 33.040073, 35.245571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806818, 32.254520, 35.464062>,  <28.374533, 32.706894, 35.693306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806818, 32.254520, 35.464062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987867, 32.610176, 35.437019>,  <29.096497, 32.823570, 35.420795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987867, 32.610176, 35.437019>,  <28.806818, 32.254520, 35.464062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987867, 32.610176, 35.437019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758495, -0.344038, 0.553465,
		0.468847, -0.301787, -0.830124,
		0.452623, 0.889136, -0.067603,
		29.123653, 32.876915, 35.416737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464201, 32.217010, 35.261501>,  <28.806818, 32.254520, 35.464062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464201, 32.217010, 35.261501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477278, 32.565044, 35.458229>,  <29.485123, 32.773865, 35.576267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477278, 32.565044, 35.458229>,  <29.464201, 32.217010, 35.261501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477278, 32.565044, 35.458229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703968, -0.369354, 0.606635,
		0.709478, 0.326395, -0.624585,
		0.032690, 0.870083, 0.491820,
		29.487085, 32.826069, 35.605774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790751, 31.990843, 35.903873>,  <29.464201, 32.217010, 35.261501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790751, 31.990843, 35.903873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099533, 31.763958, 36.018665>,  <30.284801, 31.627827, 36.087540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099533, 31.763958, 36.018665>,  <29.790751, 31.990843, 35.903873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099533, 31.763958, 36.018665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197365, -0.643007, -0.739992,
		0.604261, 0.514601, -0.608320,
		0.771955, -0.567210, 0.286980,
		30.331120, 31.593796, 36.104759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006098, 31.662437, 35.296757>,  <29.790751, 31.990843, 35.903873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006098, 31.662437, 35.296757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182922, 31.429323, 35.569504>,  <30.289017, 31.289455, 35.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182922, 31.429323, 35.569504>,  <30.006098, 31.662437, 35.296757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182922, 31.429323, 35.569504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033860, -0.770478, -0.636567,
		0.896346, 0.258312, -0.360330,
		0.442059, -0.582786, 0.681868,
		30.315540, 31.254488, 35.774063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557186, 31.342779, 34.925575>,  <30.006098, 31.662437, 35.296757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557186, 31.342779, 34.925575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471371, 31.097872, 35.229969>,  <30.419882, 30.950928, 35.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471371, 31.097872, 35.229969>,  <30.557186, 31.342779, 34.925575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471371, 31.097872, 35.229969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149910, -0.790538, -0.593782,
		0.965142, -0.013310, 0.261387,
		-0.214539, -0.612268, 0.760986,
		30.407009, 30.914192, 35.458263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056389, 30.861284, 34.964794>,  <30.557186, 31.342779, 34.925575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056389, 30.861284, 34.964794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715717, 30.715399, 35.115330>,  <30.511314, 30.627867, 35.205650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715717, 30.715399, 35.115330>,  <31.056389, 30.861284, 34.964794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715717, 30.715399, 35.115330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010692, -0.730052, -0.683308,
		0.523959, -0.577933, 0.625668,
		-0.851677, -0.364714, 0.376338,
		30.460215, 30.605984, 35.228230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011047, 30.089106, 34.917938>,  <31.056389, 30.861284, 34.964794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011047, 30.089106, 34.917938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638559, 30.232281, 34.890480>,  <30.415068, 30.318186, 34.874004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638559, 30.232281, 34.890480>,  <31.011047, 30.089106, 34.917938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638559, 30.232281, 34.890480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173068, -0.600036, -0.781028,
		-0.320749, -0.715428, 0.620712,
		-0.931218, 0.357939, -0.068643,
		30.359194, 30.339663, 34.869888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963055, 30.118561, 34.278744>,  <31.011047, 30.089106, 34.917938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963055, 30.118561, 34.278744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819174, 29.754255, 34.359856>,  <30.732845, 29.535671, 34.408524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819174, 29.754255, 34.359856>,  <30.963055, 30.118561, 34.278744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819174, 29.754255, 34.359856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646214, 0.399936, 0.649969,
		-0.673069, 0.102754, -0.732407,
		-0.359703, -0.910765, 0.202783,
		30.711264, 29.481026, 34.420692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203344, 30.057188, 34.140881>,  <30.963055, 30.118561, 34.278744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203344, 30.057188, 34.140881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319889, 29.802406, 34.426369>,  <30.389816, 29.649536, 34.597660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319889, 29.802406, 34.426369>,  <30.203344, 30.057188, 34.140881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319889, 29.802406, 34.426369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701913, 0.364563, 0.611893,
		-0.649944, -0.679251, -0.340868,
		0.291361, -0.636955, 0.713720,
		30.407297, 29.611320, 34.640484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611433, 29.775581, 34.518513>,  <30.203344, 30.057188, 34.140881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611433, 29.775581, 34.518513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948578, 29.762894, 34.733391>,  <30.150866, 29.755281, 34.862316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948578, 29.762894, 34.733391>,  <29.611433, 29.775581, 34.518513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948578, 29.762894, 34.733391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357084, 0.713850, 0.602420,
		-0.402585, -0.699580, 0.590350,
		0.842862, -0.031721, 0.537194,
		30.201437, 29.753378, 34.894550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398012, 30.208462, 35.129169>,  <29.611433, 29.775581, 34.518513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398012, 30.208462, 35.129169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773661, 30.095619, 35.207619>,  <29.999050, 30.027914, 35.254688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773661, 30.095619, 35.207619>,  <29.398012, 30.208462, 35.129169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773661, 30.095619, 35.207619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031678, 0.639486, 0.768150,
		-0.342118, -0.715174, 0.609493,
		0.939123, -0.282106, 0.196125,
		30.055397, 30.010988, 35.266457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393856, 30.331486, 35.842381>,  <29.398012, 30.208462, 35.129169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393856, 30.331486, 35.842381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765009, 30.326935, 35.693298>,  <29.987700, 30.324203, 35.603851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765009, 30.326935, 35.693298>,  <29.393856, 30.331486, 35.842381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765009, 30.326935, 35.693298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286126, 0.662659, 0.692109,
		0.239099, -0.748835, 0.618124,
		0.927881, -0.011379, -0.372702,
		30.043373, 30.323521, 35.581486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899572, 30.265421, 36.427868>,  <29.393856, 30.331486, 35.842381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899572, 30.265421, 36.427868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084908, 30.457823, 36.130157>,  <30.196108, 30.573263, 35.951530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084908, 30.457823, 36.130157>,  <29.899572, 30.265421, 36.427868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084908, 30.457823, 36.130157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257078, 0.730799, 0.632331,
		0.848074, -0.484320, 0.214950,
		0.463337, 0.481005, -0.744281,
		30.223909, 30.602123, 35.906872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685942, 30.423769, 36.675529>,  <29.899572, 30.265421, 36.427868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685942, 30.423769, 36.675529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555927, 30.682438, 36.399509>,  <30.477919, 30.837639, 36.233898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555927, 30.682438, 36.399509>,  <30.685942, 30.423769, 36.675529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555927, 30.682438, 36.399509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244010, 0.762308, 0.599455,
		0.913679, 0.026467, -0.405573,
		-0.325037, 0.646673, -0.690047,
		30.458416, 30.876440, 36.192497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115931, 31.020515, 36.636990>,  <30.685942, 30.423769, 36.675529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115931, 31.020515, 36.636990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728321, 31.088295, 36.565125>,  <30.495754, 31.128963, 36.522007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728321, 31.088295, 36.565125>,  <31.115931, 31.020515, 36.636990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728321, 31.088295, 36.565125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019214, 0.673543, 0.738898,
		0.246215, 0.719463, -0.649424,
		-0.969025, 0.169450, -0.179660,
		30.437614, 31.139130, 36.511227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669880, 30.762161, 36.452763>,  <31.115931, 31.020515, 36.636990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669880, 30.762161, 36.452763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848150, 30.750710, 36.094868>,  <31.955112, 30.743839, 35.880131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848150, 30.750710, 36.094868>,  <31.669880, 30.762161, 36.452763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848150, 30.750710, 36.094868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884532, -0.139716, 0.445064,
		-0.137751, -0.989778, -0.036943,
		0.445676, -0.028631, -0.894737,
		31.981853, 30.742121, 35.826447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119846, 30.205648, 36.369427>,  <31.669880, 30.762161, 36.452763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119846, 30.205648, 36.369427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242077, 30.485567, 36.111153>,  <32.315414, 30.653519, 35.956188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242077, 30.485567, 36.111153>,  <32.119846, 30.205648, 36.369427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242077, 30.485567, 36.111153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940770, -0.117287, 0.318112,
		0.146884, -0.704646, -0.694189,
		0.305576, 0.699798, -0.645683,
		32.333748, 30.695507, 35.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652832, 29.954464, 36.017590>,  <32.119846, 30.205648, 36.369427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652832, 29.954464, 36.017590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697708, 30.351864, 36.009888>,  <32.724632, 30.590303, 36.005264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697708, 30.351864, 36.009888>,  <32.652832, 29.954464, 36.017590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697708, 30.351864, 36.009888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966783, -0.104653, 0.233191,
		0.229660, -0.044780, -0.972240,
		0.112191, 0.993500, -0.019258,
		32.731365, 30.649914, 36.004108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262733, 29.335278, 36.082863>,  <32.652832, 29.954464, 36.017590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262733, 29.335278, 36.082863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333279, 29.453005, 36.458580>,  <33.375607, 29.523642, 36.684010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333279, 29.453005, 36.458580>,  <33.262733, 29.335278, 36.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333279, 29.453005, 36.458580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958750, 0.164751, -0.231637,
		-0.222925, 0.941400, -0.253122,
		0.176361, 0.294318, 0.939294,
		33.386189, 29.541300, 36.740368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647964, 30.017035, 36.057774>,  <33.262733, 29.335278, 36.082863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647964, 30.017035, 36.057774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744526, 29.802341, 36.381165>,  <33.802464, 29.673525, 36.575199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744526, 29.802341, 36.381165>,  <33.647964, 30.017035, 36.057774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744526, 29.802341, 36.381165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966641, 0.059488, -0.249132,
		0.085623, 0.841652, 0.533189,
		0.241401, -0.536734, 0.808481,
		33.816948, 29.641321, 36.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148205, 30.393524, 36.408897>,  <33.647964, 30.017035, 36.057774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148205, 30.393524, 36.408897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196194, 30.009764, 36.511002>,  <34.224987, 29.779507, 36.572262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196194, 30.009764, 36.511002>,  <34.148205, 30.393524, 36.408897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196194, 30.009764, 36.511002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965837, 0.053306, -0.253608,
		0.229705, 0.276962, 0.933020,
		0.119976, -0.959401, 0.255256,
		34.232185, 29.721943, 36.587578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652573, 30.052210, 35.981091>,  <34.148205, 30.393524, 36.408897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652573, 30.052210, 35.981091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743294, 30.293573, 36.286888>,  <34.797726, 30.438391, 36.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743294, 30.293573, 36.286888>,  <34.652573, 30.052210, 35.981091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743294, 30.293573, 36.286888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346834, -0.783535, 0.515537,
		0.910091, 0.148227, -0.386993,
		0.226806, 0.603408, 0.764498,
		34.811337, 30.474596, 36.516239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313969, 29.881468, 36.183727>,  <34.652573, 30.052210, 35.981091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313969, 29.881468, 36.183727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187969, 30.076693, 36.509319>,  <35.112370, 30.193829, 36.704674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187969, 30.076693, 36.509319>,  <35.313969, 29.881468, 36.183727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187969, 30.076693, 36.509319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460542, -0.671304, 0.580734,
		0.829866, 0.557803, -0.013315,
		-0.314997, 0.488064, 0.813984,
		35.093472, 30.223112, 36.753513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938705, 29.908716, 36.511230>,  <35.313969, 29.881468, 36.183727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938705, 29.908716, 36.511230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615734, 29.890743, 36.746532>,  <35.421951, 29.879959, 36.887714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615734, 29.890743, 36.746532>,  <35.938705, 29.908716, 36.511230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615734, 29.890743, 36.746532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466994, -0.657990, 0.590733,
		0.360521, 0.751685, 0.552263,
		-0.807429, -0.044931, 0.588252,
		35.373505, 29.877264, 36.923008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091480, 30.111076, 37.226154>,  <35.938705, 29.908716, 36.511230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091480, 30.111076, 37.226154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805294, 29.836592, 37.173656>,  <35.633583, 29.671902, 37.142159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805294, 29.836592, 37.173656>,  <36.091480, 30.111076, 37.226154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805294, 29.836592, 37.173656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584009, -0.690524, 0.426744,
		-0.383462, 0.228674, 0.894799,
		-0.715465, -0.686211, -0.131242,
		35.590656, 29.630728, 37.134285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809891, 30.854406, 37.196056>,  <36.091480, 30.111076, 37.226154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809891, 30.854406, 37.196056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562321, 30.716776, 37.478485>,  <35.413776, 30.634197, 37.647942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562321, 30.716776, 37.478485>,  <35.809891, 30.854406, 37.196056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562321, 30.716776, 37.478485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741370, -0.552822, 0.380471,
		0.259422, 0.758946, 0.597245,
		-0.618927, -0.344077, 0.706074,
		35.376644, 30.613552, 37.690308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035130, 30.902925, 37.952583>,  <35.809891, 30.854406, 37.196056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035130, 30.902925, 37.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796951, 30.587893, 37.889145>,  <35.654045, 30.398872, 37.851082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796951, 30.587893, 37.889145>,  <36.035130, 30.902925, 37.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796951, 30.587893, 37.889145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663522, -0.593409, 0.455637,
		-0.452966, 0.166074, 0.875923,
		-0.595450, -0.787582, -0.158600,
		35.618317, 30.351618, 37.841564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974621, 30.489094, 38.595932>,  <36.035130, 30.902925, 37.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974621, 30.489094, 38.595932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826729, 30.212725, 38.347443>,  <35.737991, 30.046904, 38.198349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826729, 30.212725, 38.347443>,  <35.974621, 30.489094, 38.595932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826729, 30.212725, 38.347443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510358, -0.709730, 0.485611,
		-0.776423, -0.137501, 0.615029,
		-0.369732, -0.690925, -0.621226,
		35.715809, 30.005447, 38.161076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831326, 29.705795, 38.892193>,  <35.974621, 30.489094, 38.595932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831326, 29.705795, 38.892193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212818, 29.732683, 39.009418>,  <36.441711, 29.748816, 39.079754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212818, 29.732683, 39.009418>,  <35.831326, 29.705795, 38.892193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212818, 29.732683, 39.009418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187146, -0.630156, 0.753578,
		0.235333, -0.773553, -0.588416,
		0.953727, 0.067222, 0.293063,
		36.498936, 29.752850, 39.097336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511093, 29.236595, 38.809753>,  <35.831326, 29.705795, 38.892193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511093, 29.236595, 38.809753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238575, 28.998795, 38.638920>,  <36.075062, 28.856113, 38.536419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238575, 28.998795, 38.638920>,  <36.511093, 29.236595, 38.809753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238575, 28.998795, 38.638920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217728, 0.721614, -0.657166,
		0.698869, -0.354744, -0.621079,
		-0.681305, -0.594499, -0.427076,
		36.034184, 28.820444, 38.510796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473846, 29.265278, 38.019176>,  <36.511093, 29.236595, 38.809753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473846, 29.265278, 38.019176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117146, 29.106239, 38.105618>,  <35.903126, 29.010817, 38.157482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117146, 29.106239, 38.105618>,  <36.473846, 29.265278, 38.019176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117146, 29.106239, 38.105618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448214, 0.710231, -0.542841,
		0.062349, -0.580939, -0.811556,
		-0.891750, -0.397596, 0.216102,
		35.849621, 28.986959, 38.170448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092812, 29.034094, 37.469040>,  <36.473846, 29.265278, 38.019176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092812, 29.034094, 37.469040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842735, 29.153700, 37.757408>,  <35.692688, 29.225464, 37.930428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842735, 29.153700, 37.757408>,  <36.092812, 29.034094, 37.469040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842735, 29.153700, 37.757408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273793, 0.780971, -0.561357,
		-0.730871, -0.548339, -0.406389,
		-0.625192, 0.299013, 0.720921,
		35.655178, 29.243404, 37.973682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291306, 29.122503, 37.339558>,  <36.092812, 29.034094, 37.469040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291306, 29.122503, 37.339558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419170, 29.394474, 37.603531>,  <35.495888, 29.557657, 37.761917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419170, 29.394474, 37.603531>,  <35.291306, 29.122503, 37.339558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419170, 29.394474, 37.603531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537812, 0.703612, -0.464422,
		-0.780113, -0.206465, 0.590590,
		0.319659, 0.679928, 0.659936,
		35.515068, 29.598452, 37.801510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734844, 29.422169, 37.713070>,  <35.291306, 29.122503, 37.339558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734844, 29.422169, 37.713070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029110, 29.693068, 37.708420>,  <35.205669, 29.855608, 37.705627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029110, 29.693068, 37.708420>,  <34.734844, 29.422169, 37.713070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029110, 29.693068, 37.708420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598689, 0.642106, -0.478822,
		-0.316815, 0.359213, 0.877835,
		0.735663, 0.677248, -0.011628,
		35.249809, 29.896242, 37.704933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428028, 30.074211, 37.750835>,  <34.734844, 29.422169, 37.713070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428028, 30.074211, 37.750835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790768, 30.144651, 37.597675>,  <35.008411, 30.186914, 37.505779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790768, 30.144651, 37.597675>,  <34.428028, 30.074211, 37.750835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790768, 30.144651, 37.597675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406213, 0.607324, -0.682751,
		0.112312, 0.774692, 0.622285,
		0.906850, 0.176099, -0.382899,
		35.062824, 30.197481, 37.482807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543541, 30.770872, 37.744289>,  <34.428028, 30.074211, 37.750835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543541, 30.770872, 37.744289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730461, 30.578184, 37.447758>,  <34.842613, 30.462572, 37.269836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730461, 30.578184, 37.447758>,  <34.543541, 30.770872, 37.744289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730461, 30.578184, 37.447758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351687, 0.668037, -0.655778,
		0.811137, 0.567165, 0.142762,
		0.467304, -0.481718, -0.741333,
		34.870651, 30.433668, 37.225357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060757, 31.298805, 37.458569>,  <34.543541, 30.770872, 37.744289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060757, 31.298805, 37.458569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002323, 31.013845, 37.184010>,  <34.967262, 30.842869, 37.019276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002323, 31.013845, 37.184010>,  <35.060757, 31.298805, 37.458569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002323, 31.013845, 37.184010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247275, 0.698112, -0.671933,
		0.957870, 0.071571, -0.278141,
		-0.146083, -0.712402, -0.686399,
		34.958500, 30.800125, 36.978088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388954, 31.480330, 36.831654>,  <35.060757, 31.298805, 37.458569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388954, 31.480330, 36.831654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044464, 31.280813, 36.792656>,  <34.837772, 31.161104, 36.769257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044464, 31.280813, 36.792656>,  <35.388954, 31.480330, 36.831654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044464, 31.280813, 36.792656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361359, 0.735863, -0.572648,
		0.357373, -0.457947, -0.813984,
		-0.861223, -0.498789, -0.097494,
		34.786098, 31.131176, 36.763409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185738, 31.447498, 36.045113>,  <35.388954, 31.480330, 36.831654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185738, 31.447498, 36.045113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881367, 31.467056, 36.303909>,  <34.698742, 31.478790, 36.459187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881367, 31.467056, 36.303909>,  <35.185738, 31.447498, 36.045113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881367, 31.467056, 36.303909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497563, 0.596020, -0.630231,
		-0.416432, -0.801480, -0.429202,
		-0.760930, 0.048893, 0.646989,
		34.653088, 31.481724, 36.498005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509998, 31.383659, 35.633259>,  <35.185738, 31.447498, 36.045113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509998, 31.383659, 35.633259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461266, 31.576275, 35.980427>,  <34.432026, 31.691843, 36.188728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461266, 31.576275, 35.980427>,  <34.509998, 31.383659, 35.633259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461266, 31.576275, 35.980427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462083, 0.746371, -0.478967,
		-0.878428, -0.459405, 0.131575,
		-0.121836, 0.481537, 0.867916,
		34.424713, 31.720736, 36.240803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790913, 31.469616, 35.853489>,  <34.509998, 31.383659, 35.633259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790913, 31.469616, 35.853489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987186, 31.780865, 36.010334>,  <34.104950, 31.967613, 36.104443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987186, 31.780865, 36.010334>,  <33.790913, 31.469616, 35.853489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987186, 31.780865, 36.010334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522025, 0.622837, -0.582721,
		-0.697652, 0.081238, 0.711816,
		0.490684, 0.778122, 0.392116,
		34.134392, 32.014301, 36.127968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330257, 31.988134, 35.930531>,  <33.790913, 31.469616, 35.853489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330257, 31.988134, 35.930531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662106, 32.211452, 35.932941>,  <33.861214, 32.345444, 35.934387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662106, 32.211452, 35.932941>,  <33.330257, 31.988134, 35.930531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662106, 32.211452, 35.932941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501703, 0.750177, -0.430731,
		-0.244995, 0.354321, 0.902460,
		0.829622, 0.558294, 0.006025,
		33.910992, 32.378941, 35.934750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055649, 32.636497, 36.000702>,  <33.330257, 31.988134, 35.930531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055649, 32.636497, 36.000702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423244, 32.704826, 35.858559>,  <33.643803, 32.745823, 35.773273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423244, 32.704826, 35.858559>,  <33.055649, 32.636497, 36.000702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423244, 32.704826, 35.858559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356346, 0.745604, -0.563110,
		0.168765, 0.644122, 0.746073,
		0.918986, 0.170827, -0.355362,
		33.698940, 32.756073, 35.751949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134369, 33.326344, 35.974083>,  <33.055649, 32.636497, 36.000702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134369, 33.326344, 35.974083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405922, 33.188354, 35.714821>,  <33.568855, 33.105560, 35.559261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405922, 33.188354, 35.714821>,  <33.134369, 33.326344, 35.974083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405922, 33.188354, 35.714821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221938, 0.745050, -0.629003,
		0.699902, 0.570869, 0.429237,
		0.678881, -0.344977, -0.648160,
		33.609585, 33.084862, 35.520374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662701, 34.004684, 35.784679>,  <33.134369, 33.326344, 35.974083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662701, 34.004684, 35.784679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632694, 33.697582, 35.530144>,  <33.614689, 33.513321, 35.377422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632694, 33.697582, 35.530144>,  <33.662701, 34.004684, 35.784679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632694, 33.697582, 35.530144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075524, 0.640682, -0.764084,
		0.994318, -0.009262, -0.106048,
		-0.075020, -0.767751, -0.636342,
		33.610188, 33.467258, 35.339241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950317, 34.341999, 35.157341>,  <33.662701, 34.004684, 35.784679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950317, 34.341999, 35.157341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804504, 34.001617, 35.006084>,  <33.717014, 33.797390, 34.915329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804504, 34.001617, 35.006084>,  <33.950317, 34.341999, 35.157341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804504, 34.001617, 35.006084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238196, 0.477787, -0.845566,
		0.900209, -0.218167, -0.376865,
		-0.364536, -0.850954, -0.378142,
		33.695145, 33.746330, 34.892643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159264, 34.331905, 34.457680>,  <33.950317, 34.341999, 35.157341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159264, 34.331905, 34.457680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840714, 34.090614, 34.475113>,  <33.649582, 33.945839, 34.485573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840714, 34.090614, 34.475113>,  <34.159264, 34.331905, 34.457680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840714, 34.090614, 34.475113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433675, 0.519337, -0.736352,
		0.421553, -0.605316, -0.675193,
		-0.796379, -0.603227, 0.043582,
		33.601799, 33.909645, 34.488186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002258, 34.154652, 33.764671>,  <34.159264, 34.331905, 34.457680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002258, 34.154652, 33.764671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648197, 34.081673, 33.935883>,  <33.435760, 34.037884, 34.038609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648197, 34.081673, 33.935883>,  <34.002258, 34.154652, 33.764671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648197, 34.081673, 33.935883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425750, 0.688706, -0.586874,
		-0.187712, -0.701710, -0.687290,
		-0.885156, -0.182451, 0.428031,
		33.382648, 34.026936, 34.064293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534046, 33.968494, 33.186893>,  <34.002258, 34.154652, 33.764671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534046, 33.968494, 33.186893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317310, 34.092434, 33.499405>,  <33.187267, 34.166798, 33.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317310, 34.092434, 33.499405>,  <33.534046, 33.968494, 33.186893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317310, 34.092434, 33.499405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560014, 0.560067, -0.610500,
		-0.626732, -0.768323, -0.129948,
		-0.541841, 0.309847, 0.781283,
		33.154758, 34.185387, 33.733791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813065, 33.911007, 32.981476>,  <33.534046, 33.968494, 33.186893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813065, 33.911007, 32.981476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827549, 34.165741, 33.289536>,  <32.836239, 34.318581, 33.474369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827549, 34.165741, 33.289536>,  <32.813065, 33.911007, 32.981476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827549, 34.165741, 33.289536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562949, 0.649743, -0.510805,
		-0.825698, -0.415056, 0.382036,
		0.036213, 0.636838, 0.770147,
		32.838413, 34.356792, 33.520580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100666, 34.148647, 33.094990>,  <32.813065, 33.911007, 32.981476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100666, 34.148647, 33.094990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332127, 34.425274, 33.267918>,  <32.471004, 34.591251, 33.371674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332127, 34.425274, 33.267918>,  <32.100666, 34.148647, 33.094990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332127, 34.425274, 33.267918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501934, 0.719774, -0.479570,
		-0.642826, 0.060509, 0.763619,
		0.578651, 0.691566, 0.432318,
		32.505722, 34.632744, 33.397614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801048, 34.784901, 32.878941>,  <32.100666, 34.148647, 33.094990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801048, 34.784901, 32.878941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106766, 34.943874, 33.082073>,  <32.290195, 35.039261, 33.203953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106766, 34.943874, 33.082073>,  <31.801048, 34.784901, 32.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106766, 34.943874, 33.082073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176088, 0.886201, -0.428534,
		-0.620358, 0.238104, 0.747303,
		0.764296, 0.397436, 0.507835,
		32.336056, 35.063107, 33.234425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562296, 35.256752, 33.272278>,  <31.801048, 34.784901, 32.878941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562296, 35.256752, 33.272278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940998, 35.332123, 33.167854>,  <32.168221, 35.377346, 33.105198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940998, 35.332123, 33.167854>,  <31.562296, 35.256752, 33.272278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940998, 35.332123, 33.167854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305860, 0.779575, -0.546546,
		0.100535, 0.597293, 0.795697,
		0.946754, 0.188425, -0.261063,
		32.225025, 35.388649, 33.089535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788218, 35.926380, 33.598045>,  <31.562296, 35.256752, 33.272278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788218, 35.926380, 33.598045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001934, 35.885002, 33.262466>,  <32.130165, 35.860176, 33.061119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001934, 35.885002, 33.262466>,  <31.788218, 35.926380, 33.598045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001934, 35.885002, 33.262466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350203, 0.876215, -0.331068,
		0.769343, 0.470689, 0.431930,
		0.534293, -0.103441, -0.838946,
		32.162224, 35.853970, 33.010784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093529, 36.575928, 33.506294>,  <31.788218, 35.926380, 33.598045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093529, 36.575928, 33.506294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161861, 36.392998, 33.157200>,  <32.202862, 36.283241, 32.947742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161861, 36.392998, 33.157200>,  <32.093529, 36.575928, 33.506294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161861, 36.392998, 33.157200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195147, 0.852507, -0.484922,
		0.965781, 0.253154, 0.056392,
		0.170834, -0.457323, -0.872737,
		32.213112, 36.255802, 32.895378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634563, 36.934864, 33.174801>,  <32.093529, 36.575928, 33.506294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634563, 36.934864, 33.174801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433647, 36.735111, 32.892433>,  <32.313099, 36.615261, 32.723011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433647, 36.735111, 32.892433>,  <32.634563, 36.934864, 33.174801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433647, 36.735111, 32.892433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096290, 0.843604, -0.528261,
		0.859325, -0.197363, -0.471814,
		-0.502284, -0.499379, -0.705926,
		32.282959, 36.585297, 32.680656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980602, 37.191303, 32.582668>,  <32.634563, 36.934864, 33.174801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980602, 37.191303, 32.582668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625092, 37.045429, 32.471615>,  <32.411785, 36.957905, 32.404984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625092, 37.045429, 32.471615>,  <32.980602, 37.191303, 32.582668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625092, 37.045429, 32.471615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136955, 0.789367, -0.598450,
		0.437401, -0.493865, -0.751517,
		-0.888776, -0.364687, -0.277633,
		32.358459, 36.936024, 32.388325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020943, 37.260292, 31.828337>,  <32.980602, 37.191303, 32.582668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020943, 37.260292, 31.828337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631538, 37.220551, 31.910715>,  <32.397896, 37.196705, 31.960142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631538, 37.220551, 31.910715>,  <33.020943, 37.260292, 31.828337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631538, 37.220551, 31.910715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204720, 0.779894, -0.591485,
		-0.101852, -0.617976, -0.779572,
		-0.973507, -0.099349, 0.205946,
		32.339485, 37.190746, 31.972498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750034, 37.700470, 31.372931>,  <33.020943, 37.260292, 31.828337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750034, 37.700470, 31.372931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426342, 37.572044, 31.569733>,  <32.232128, 37.494991, 31.687815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426342, 37.572044, 31.569733>,  <32.750034, 37.700470, 31.372931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426342, 37.572044, 31.569733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575654, 0.600605, -0.554884,
		-0.117351, -0.732253, -0.670846,
		-0.809229, -0.321059, 0.492005,
		32.183575, 37.475727, 31.717335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254166, 37.371792, 30.888641>,  <32.750034, 37.700470, 31.372931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254166, 37.371792, 30.888641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102352, 37.546497, 31.214878>,  <32.011265, 37.651321, 31.410620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102352, 37.546497, 31.214878>,  <32.254166, 37.371792, 30.888641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102352, 37.546497, 31.214878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468700, 0.669283, -0.576525,
		-0.797667, -0.601079, -0.049304,
		-0.379536, 0.436766, 0.815591,
		31.988491, 37.677528, 31.459555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639774, 37.515419, 30.686575>,  <32.254166, 37.371792, 30.888641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639774, 37.515419, 30.686575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722275, 37.764343, 30.988619>,  <31.771774, 37.913700, 31.169846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722275, 37.764343, 30.988619>,  <31.639774, 37.515419, 30.686575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722275, 37.764343, 30.988619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564258, 0.706110, -0.427810,
		-0.799421, -0.337840, 0.496780,
		0.206250, 0.622313, 0.755108,
		31.784149, 37.951038, 31.215151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975006, 37.624722, 30.951748>,  <31.639774, 37.515419, 30.686575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975006, 37.624722, 30.951748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224792, 37.923233, 31.043930>,  <31.374664, 38.102341, 31.099239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224792, 37.923233, 31.043930>,  <30.975006, 37.624722, 30.951748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224792, 37.923233, 31.043930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678125, 0.664436, -0.314119,
		-0.387543, 0.039879, 0.920989,
		0.624465, 0.746280, 0.230455,
		31.412132, 38.147118, 31.113066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505571, 38.181351, 31.260895>,  <30.975006, 37.624722, 30.951748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505571, 38.181351, 31.260895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849922, 38.364700, 31.172544>,  <31.056532, 38.474709, 31.119534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849922, 38.364700, 31.172544>,  <30.505571, 38.181351, 31.260895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849922, 38.364700, 31.172544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501852, 0.836490, -0.220065,
		0.083889, 0.300296, 0.950150,
		0.860876, 0.458374, -0.220876,
		31.108185, 38.502213, 31.106281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349945, 38.847118, 31.500992>,  <30.505571, 38.181351, 31.260895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349945, 38.847118, 31.500992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666660, 38.892067, 31.260843>,  <30.856689, 38.919037, 31.116755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666660, 38.892067, 31.260843>,  <30.349945, 38.847118, 31.500992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666660, 38.892067, 31.260843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296135, 0.930303, -0.216425,
		0.534209, 0.349154, 0.769879,
		0.791786, 0.112372, -0.600373,
		30.904196, 38.925777, 31.080730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487967, 39.503120, 31.629520>,  <30.349945, 38.847118, 31.500992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487967, 39.503120, 31.629520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674776, 39.427597, 31.283979>,  <30.786861, 39.382282, 31.076654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674776, 39.427597, 31.283979>,  <30.487967, 39.503120, 31.629520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674776, 39.427597, 31.283979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462620, 0.780396, -0.420671,
		0.753571, 0.596099, 0.277120,
		0.467026, -0.188804, -0.863852,
		30.814884, 39.370956, 31.024824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841881, 40.105900, 31.407423>,  <30.487967, 39.503120, 31.629520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841881, 40.105900, 31.407423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813965, 39.907898, 31.060989>,  <30.797215, 39.789097, 30.853128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813965, 39.907898, 31.060989>,  <30.841881, 40.105900, 31.407423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813965, 39.907898, 31.060989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338297, 0.828497, -0.446259,
		0.938448, 0.261850, -0.225279,
		-0.069790, -0.495002, -0.866084,
		30.793028, 39.759396, 30.801165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100468, 40.574341, 30.920382>,  <30.841881, 40.105900, 31.407423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100468, 40.574341, 30.920382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886793, 40.315643, 30.702623>,  <30.758589, 40.160423, 30.571968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886793, 40.315643, 30.702623>,  <31.100468, 40.574341, 30.920382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886793, 40.315643, 30.702623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440533, 0.762589, -0.473697,
		0.721510, -0.013219, -0.692278,
		-0.534186, -0.646748, -0.544392,
		30.726538, 40.121620, 30.539305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322416, 40.638180, 30.263437>,  <31.100468, 40.574341, 30.920382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322416, 40.638180, 30.263437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945751, 40.513634, 30.314543>,  <30.719753, 40.438904, 30.345207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945751, 40.513634, 30.314543>,  <31.322416, 40.638180, 30.263437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945751, 40.513634, 30.314543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328132, 0.764920, -0.554280,
		0.074855, -0.563868, -0.822466,
		-0.941661, -0.311368, 0.127765,
		30.663252, 40.420223, 30.352873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026670, 40.448013, 29.603016>,  <31.322416, 40.638180, 30.263437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026670, 40.448013, 29.603016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712715, 40.533558, 29.835642>,  <30.524342, 40.584885, 29.975218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712715, 40.533558, 29.835642>,  <31.026670, 40.448013, 29.603016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712715, 40.533558, 29.835642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223803, 0.777353, -0.587907,
		-0.577812, -0.591596, -0.562270,
		-0.784886, 0.213862, 0.581565,
		30.477249, 40.597717, 30.010111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433336, 40.557274, 29.194965>,  <31.026670, 40.448013, 29.603016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433336, 40.557274, 29.194965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332581, 40.736393, 29.538134>,  <30.272127, 40.843864, 29.744034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332581, 40.736393, 29.538134>,  <30.433336, 40.557274, 29.194965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332581, 40.736393, 29.538134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345152, 0.786635, -0.511933,
		-0.904113, -0.425064, -0.043587,
		-0.251891, 0.447801, 0.857919,
		30.257013, 40.870735, 29.795509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798393, 40.910038, 29.024534>,  <30.433336, 40.557274, 29.194965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798393, 40.910038, 29.024534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925013, 41.092266, 29.357342>,  <30.000984, 41.201603, 29.557026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925013, 41.092266, 29.357342>,  <29.798393, 40.910038, 29.024534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925013, 41.092266, 29.357342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286900, 0.882024, -0.373794,
		-0.904149, -0.120382, 0.409906,
		0.316549, 0.455568, 0.832018,
		30.019978, 41.228935, 29.606947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237230, 41.315601, 29.276743>,  <29.798393, 40.910038, 29.024534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237230, 41.315601, 29.276743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560631, 41.471737, 29.452909>,  <29.754671, 41.565418, 29.558609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560631, 41.471737, 29.452909>,  <29.237230, 41.315601, 29.276743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560631, 41.471737, 29.452909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339327, 0.920648, -0.193040,
		-0.480818, 0.006628, 0.876795,
		0.808499, 0.390337, 0.440415,
		29.803181, 41.588837, 29.585033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989185, 41.841122, 29.610245>,  <29.237230, 41.315601, 29.276743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989185, 41.841122, 29.610245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374308, 41.947651, 29.592037>,  <29.605381, 42.011570, 29.581114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374308, 41.947651, 29.592037>,  <28.989185, 41.841122, 29.610245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374308, 41.947651, 29.592037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266606, 0.909119, -0.320037,
		-0.043854, 0.320269, 0.946311,
		0.962808, 0.266327, -0.045517,
		29.663151, 42.027550, 29.578382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035532, 42.452881, 29.937433>,  <28.989185, 41.841122, 29.610245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035532, 42.452881, 29.937433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372652, 42.457623, 29.722195>,  <29.574924, 42.460468, 29.593052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372652, 42.457623, 29.722195>,  <29.035532, 42.452881, 29.937433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372652, 42.457623, 29.722195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187731, 0.943445, -0.273256,
		0.504424, 0.331318, 0.797361,
		0.842801, 0.011852, -0.538095,
		29.625492, 42.461178, 29.560766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506807, 43.033001, 30.169289>,  <29.035532, 42.452881, 29.937433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506807, 43.033001, 30.169289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623804, 42.940735, 29.798077>,  <29.694002, 42.885376, 29.575350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623804, 42.940735, 29.798077>,  <29.506807, 43.033001, 30.169289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623804, 42.940735, 29.798077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063267, 0.963678, -0.259463,
		0.954173, 0.134604, 0.267275,
		0.292492, -0.230663, -0.928032,
		29.711552, 42.871536, 29.519667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898022, 43.559391, 29.912373>,  <29.506807, 43.033001, 30.169289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898022, 43.559391, 29.912373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786652, 43.377926, 29.573748>,  <29.719830, 43.269047, 29.370571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786652, 43.377926, 29.573748>,  <29.898022, 43.559391, 29.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786652, 43.377926, 29.573748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042510, 0.886375, -0.461012,
		0.959517, -0.092370, -0.266074,
		-0.278425, -0.453660, -0.846565,
		29.703123, 43.241829, 29.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248158, 43.882420, 29.381004>,  <29.898022, 43.559391, 29.912373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248158, 43.882420, 29.381004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933704, 43.718552, 29.195894>,  <29.745033, 43.620232, 29.084827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933704, 43.718552, 29.195894>,  <30.248158, 43.882420, 29.381004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933704, 43.718552, 29.195894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153574, 0.854754, -0.495793,
		0.598674, -0.318688, -0.734865,
		-0.786133, -0.409674, -0.462777,
		29.697865, 43.595650, 29.057060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240223, 44.179047, 28.725437>,  <30.248158, 43.882420, 29.381004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240223, 44.179047, 28.725437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874632, 44.016853, 28.731438>,  <29.655277, 43.919537, 28.735039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874632, 44.016853, 28.731438>,  <30.240223, 44.179047, 28.725437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874632, 44.016853, 28.731438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312999, 0.681020, -0.662000,
		0.258215, -0.609749, -0.749354,
		-0.913979, -0.405485, 0.015001,
		29.600439, 43.895206, 28.735937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098225, 44.063610, 28.063396>,  <30.240223, 44.179047, 28.725437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098225, 44.063610, 28.063396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751879, 44.098953, 28.260361>,  <29.544071, 44.120159, 28.378538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751879, 44.098953, 28.260361>,  <30.098225, 44.063610, 28.063396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751879, 44.098953, 28.260361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343686, 0.610171, -0.713842,
		-0.363530, -0.787326, -0.497959,
		-0.865867, 0.088362, 0.492409,
		29.492119, 44.125462, 28.408083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598009, 43.981621, 27.488110>,  <30.098225, 44.063610, 28.063396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598009, 43.981621, 27.488110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469616, 44.173279, 27.814884>,  <29.392580, 44.288273, 28.010950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469616, 44.173279, 27.814884>,  <29.598009, 43.981621, 27.488110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469616, 44.173279, 27.814884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336941, 0.748374, -0.571321,
		-0.885121, -0.458645, -0.078773,
		-0.320985, 0.479146, 0.816938,
		29.373320, 44.317024, 28.059965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931831, 44.306549, 27.274145>,  <29.598009, 43.981621, 27.488110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931831, 44.306549, 27.274145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034721, 44.515575, 27.599295>,  <29.096457, 44.640991, 27.794384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034721, 44.515575, 27.599295>,  <28.931831, 44.306549, 27.274145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034721, 44.515575, 27.599295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570349, 0.761138, -0.308821,
		-0.780087, -0.384184, 0.493828,
		0.257227, 0.522562, 0.812873,
		29.111889, 44.672344, 27.843157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264244, 44.435375, 27.679783>,  <28.931831, 44.306549, 27.274145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264244, 44.435375, 27.679783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532953, 44.714478, 27.779264>,  <28.694180, 44.881939, 27.838953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532953, 44.714478, 27.779264>,  <28.264244, 44.435375, 27.679783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532953, 44.714478, 27.779264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639085, 0.715691, -0.281702,
		-0.374555, 0.030297, 0.926710,
		0.671773, 0.697760, 0.248703,
		28.734486, 44.923805, 27.853876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995216, 45.028069, 27.985025>,  <28.264244, 44.435375, 27.679783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995216, 45.028069, 27.985025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355890, 45.167641, 27.882875>,  <28.572294, 45.251385, 27.821585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355890, 45.167641, 27.882875>,  <27.995216, 45.028069, 27.985025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355890, 45.167641, 27.882875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406007, 0.886388, -0.222430,
		0.148748, 0.304245, 0.940908,
		0.901683, 0.348929, -0.255375,
		28.626394, 45.272320, 27.806263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259104, 45.521069, 28.450029>,  <27.995216, 45.028069, 27.985025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259104, 45.521069, 28.450029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400949, 45.582779, 28.081150>,  <28.486057, 45.619804, 27.859823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400949, 45.582779, 28.081150>,  <28.259104, 45.521069, 28.450029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400949, 45.582779, 28.081150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460274, 0.887318, -0.028546,
		0.813877, 0.434586, 0.385668,
		0.354615, 0.154280, -0.922196,
		28.507334, 45.629063, 27.804491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580822, 46.082561, 28.566980>,  <28.259104, 45.521069, 28.450029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580822, 46.082561, 28.566980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448500, 46.032951, 28.192776>,  <28.369106, 46.003185, 27.968252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448500, 46.032951, 28.192776>,  <28.580822, 46.082561, 28.566980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448500, 46.032951, 28.192776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457387, 0.888179, 0.043987,
		0.825448, 0.442442, -0.350543,
		-0.330807, -0.124025, -0.935513,
		28.349258, 45.995743, 27.912123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866055, 46.423656, 27.964258>,  <28.580822, 46.082561, 28.566980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866055, 46.423656, 27.964258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469727, 46.369591, 27.963572>,  <28.231930, 46.337151, 27.963160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469727, 46.369591, 27.963572>,  <28.866055, 46.423656, 27.964258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469727, 46.369591, 27.963572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131449, 0.966369, -0.221024,
		0.031535, -0.218770, -0.975267,
		-0.990821, -0.135168, -0.001717,
		28.172480, 46.329041, 27.963057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493294, 46.908546, 27.524065>,  <28.866055, 46.423656, 27.964258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493294, 46.908546, 27.524065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238501, 46.795135, 27.810802>,  <28.085625, 46.727089, 27.982845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238501, 46.795135, 27.810802>,  <28.493294, 46.908546, 27.524065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238501, 46.795135, 27.810802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386434, 0.922071, 0.021317,
		-0.667025, -0.263434, -0.696908,
		-0.636983, -0.283528, 0.716844,
		28.047405, 46.710075, 28.025856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145380, 47.308998, 27.825699>,  <28.493294, 46.908546, 27.524065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145380, 47.308998, 27.825699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411997, 47.554710, 27.994638>,  <29.571968, 47.702137, 28.096003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411997, 47.554710, 27.994638>,  <29.145380, 47.308998, 27.825699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411997, 47.554710, 27.994638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032797, -0.541848, 0.839837,
		0.744744, -0.573640, -0.341019,
		0.666544, 0.614279, 0.422351,
		29.611959, 47.738995, 28.121344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718393, 46.986485, 28.044619>,  <29.145380, 47.308998, 27.825699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718393, 46.986485, 28.044619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651270, 47.273884, 28.314611>,  <29.610996, 47.446323, 28.476606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651270, 47.273884, 28.314611>,  <29.718393, 46.986485, 28.044619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651270, 47.273884, 28.314611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138009, -0.695069, 0.705573,
		0.976112, 0.025247, 0.215797,
		-0.167807, 0.718500, 0.674981,
		29.600927, 47.489433, 28.517105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141409, 46.827900, 28.678562>,  <29.718393, 46.986485, 28.044619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141409, 46.827900, 28.678562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827728, 47.057148, 28.773691>,  <29.639519, 47.194695, 28.830769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827728, 47.057148, 28.773691>,  <30.141409, 46.827900, 28.678562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827728, 47.057148, 28.773691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221232, -0.616332, 0.755772,
		0.579725, 0.540065, 0.610122,
		-0.784204, 0.573119, 0.237823,
		29.592466, 47.229084, 28.845037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312407, 47.118774, 29.306648>,  <30.141409, 46.827900, 28.678562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312407, 47.118774, 29.306648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927399, 47.057652, 29.217020>,  <29.696394, 47.020977, 29.163242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927399, 47.057652, 29.217020>,  <30.312407, 47.118774, 29.306648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927399, 47.057652, 29.217020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079910, -0.629717, 0.772704,
		-0.259177, 0.761647, 0.593903,
		-0.962518, -0.152809, -0.224071,
		29.638643, 47.011810, 29.149799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814444, 47.326534, 29.908829>,  <30.312407, 47.118774, 29.306648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814444, 47.326534, 29.908829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676800, 47.035629, 29.671280>,  <29.594213, 46.861088, 29.528751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676800, 47.035629, 29.671280>,  <29.814444, 47.326534, 29.908829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676800, 47.035629, 29.671280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021239, -0.638366, 0.769440,
		-0.938690, 0.252157, 0.235113,
		-0.344108, -0.727259, -0.593872,
		29.573568, 46.817451, 29.493118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598774, 46.742733, 30.414722>,  <29.814444, 47.326534, 29.908829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598774, 46.742733, 30.414722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685328, 46.574242, 30.062418>,  <29.737259, 46.473145, 29.851034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685328, 46.574242, 30.062418>,  <29.598774, 46.742733, 30.414722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685328, 46.574242, 30.062418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346540, -0.810256, 0.472648,
		-0.912737, -0.407493, -0.029353,
		0.216384, -0.421231, -0.880762,
		29.750242, 46.447872, 29.798189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308441, 46.028481, 30.379442>,  <29.598774, 46.742733, 30.414722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308441, 46.028481, 30.379442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620558, 46.036194, 30.129395>,  <29.807827, 46.040821, 29.979366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620558, 46.036194, 30.129395>,  <29.308441, 46.028481, 30.379442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620558, 46.036194, 30.129395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300424, -0.888211, 0.347602,
		-0.548534, -0.459031, -0.698857,
		0.780292, 0.019282, -0.625118,
		29.854645, 46.041977, 29.941858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278994, 45.461422, 29.936699>,  <29.308441, 46.028481, 30.379442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278994, 45.461422, 29.936699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660019, 45.582607, 29.948265>,  <29.888634, 45.655319, 29.955204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660019, 45.582607, 29.948265>,  <29.278994, 45.461422, 29.936699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660019, 45.582607, 29.948265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244335, -0.817932, 0.520853,
		0.181451, -0.489080, -0.853156,
		0.952563, 0.302966, 0.028915,
		29.945787, 45.673496, 29.956940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586557, 44.884094, 30.043028>,  <29.278994, 45.461422, 29.936699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586557, 44.884094, 30.043028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880053, 45.143486, 30.124126>,  <30.056150, 45.299122, 30.172785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880053, 45.143486, 30.124126>,  <29.586557, 44.884094, 30.043028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880053, 45.143486, 30.124126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460127, -0.693823, 0.553979,
		0.499912, -0.313188, -0.807466,
		0.733738, 0.648478, 0.202744,
		30.100174, 45.338028, 30.184950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269524, 44.521278, 29.916479>,  <29.586557, 44.884094, 30.043028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269524, 44.521278, 29.916479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364573, 44.824787, 30.159063>,  <30.421602, 45.006893, 30.304613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364573, 44.824787, 30.159063>,  <30.269524, 44.521278, 29.916479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364573, 44.824787, 30.159063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478251, -0.634816, 0.606865,
		0.845465, 0.145836, -0.513732,
		0.237622, 0.758776, 0.606461,
		30.435860, 45.052422, 30.341002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989180, 44.391335, 30.184666>,  <30.269524, 44.521278, 29.916479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989180, 44.391335, 30.184666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812967, 44.638481, 30.445181>,  <30.707239, 44.786770, 30.601490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812967, 44.638481, 30.445181>,  <30.989180, 44.391335, 30.184666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812967, 44.638481, 30.445181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450789, -0.475136, 0.755668,
		0.776350, 0.626490, -0.069213,
		-0.440533, 0.617864, 0.651287,
		30.680807, 44.823841, 30.640568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488327, 44.424908, 30.689753>,  <30.989180, 44.391335, 30.184666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488327, 44.424908, 30.689753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171885, 44.583733, 30.875868>,  <30.982019, 44.679028, 30.987537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171885, 44.583733, 30.875868>,  <31.488327, 44.424908, 30.689753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171885, 44.583733, 30.875868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201562, -0.548971, 0.811174,
		0.577513, 0.735511, 0.354263,
		-0.791107, 0.397058, 0.465289,
		30.934553, 44.702850, 31.015455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774263, 44.698307, 31.311419>,  <31.488327, 44.424908, 30.689753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774263, 44.698307, 31.311419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385181, 44.624405, 31.367579>,  <31.151731, 44.580063, 31.401274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385181, 44.624405, 31.367579>,  <31.774263, 44.698307, 31.311419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385181, 44.624405, 31.367579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225562, -0.610773, 0.758998,
		-0.054476, 0.769949, 0.635775,
		-0.972704, -0.184754, 0.140399,
		31.093370, 44.568977, 31.409698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699871, 44.595016, 32.016430>,  <31.774263, 44.698307, 31.311419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699871, 44.595016, 32.016430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365795, 44.417759, 31.886150>,  <31.165350, 44.311405, 31.807981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365795, 44.417759, 31.886150>,  <31.699871, 44.595016, 32.016430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365795, 44.417759, 31.886150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101940, -0.706705, 0.700125,
		-0.540429, 0.551537, 0.635408,
		-0.835191, -0.443142, -0.325701,
		31.115238, 44.284817, 31.788441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304943, 44.496838, 32.578388>,  <31.699871, 44.595016, 32.016430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304943, 44.496838, 32.578388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144306, 44.228107, 32.329433>,  <31.047924, 44.066868, 32.180061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144306, 44.228107, 32.329433>,  <31.304943, 44.496838, 32.578388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144306, 44.228107, 32.329433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008243, -0.682224, 0.731097,
		-0.915781, 0.288473, 0.279515,
		-0.401594, -0.671828, -0.622390,
		31.023829, 44.026558, 32.142715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854565, 44.026302, 33.071114>,  <31.304943, 44.496838, 32.578388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854565, 44.026302, 33.071114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912977, 43.830650, 32.727154>,  <30.948025, 43.713261, 32.520779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912977, 43.830650, 32.727154>,  <30.854565, 44.026302, 33.071114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912977, 43.830650, 32.727154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033147, -0.866312, 0.498402,
		-0.988725, -0.101285, -0.110295,
		0.146030, -0.489127, -0.859902,
		30.956787, 43.683914, 32.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522974, 43.439056, 33.162910>,  <30.854565, 44.026302, 33.071114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522974, 43.439056, 33.162910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779667, 43.358280, 32.866966>,  <30.933683, 43.309814, 32.689400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779667, 43.358280, 32.866966>,  <30.522974, 43.439056, 33.162910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779667, 43.358280, 32.866966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316042, -0.809355, 0.495037,
		-0.698781, -0.551509, -0.455567,
		0.641734, -0.201944, -0.739863,
		30.972187, 43.297695, 32.645008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460438, 42.726315, 32.944012>,  <30.522974, 43.439056, 33.162910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460438, 42.726315, 32.944012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828457, 42.816505, 32.815845>,  <31.049269, 42.870621, 32.738945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828457, 42.816505, 32.815845>,  <30.460438, 42.726315, 32.944012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828457, 42.816505, 32.815845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358769, -0.813510, 0.457697,
		-0.157463, -0.536060, -0.829364,
		0.920049, 0.225480, -0.320419,
		31.104471, 42.884148, 32.719719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758938, 42.115456, 32.708416>,  <30.460438, 42.726315, 32.944012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758938, 42.115456, 32.708416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075781, 42.352432, 32.767170>,  <31.265886, 42.494617, 32.802422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075781, 42.352432, 32.767170>,  <30.758938, 42.115456, 32.708416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075781, 42.352432, 32.767170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490942, -0.761375, 0.423419,
		0.362688, -0.263281, -0.893947,
		0.792107, 0.592445, 0.146886,
		31.313414, 42.530167, 32.811237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347885, 41.771435, 32.400162>,  <30.758938, 42.115456, 32.708416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347885, 41.771435, 32.400162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491550, 42.018036, 32.680428>,  <31.577749, 42.165997, 32.848587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491550, 42.018036, 32.680428>,  <31.347885, 41.771435, 32.400162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491550, 42.018036, 32.680428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325299, -0.786373, 0.525165,
		0.874747, 0.039304, -0.482984,
		0.359164, 0.616500, 0.700663,
		31.599300, 42.202988, 32.890625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941977, 41.460724, 32.594433>,  <31.347885, 41.771435, 32.400162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941977, 41.460724, 32.594433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875614, 41.710423, 32.899796>,  <31.835796, 41.860241, 33.083015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875614, 41.710423, 32.899796>,  <31.941977, 41.460724, 32.594433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875614, 41.710423, 32.899796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197621, -0.737389, 0.645912,
		0.966137, 0.258026, -0.001027,
		-0.165905, 0.624243, 0.763411,
		31.825842, 41.897694, 33.128819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515327, 41.391701, 33.043068>,  <31.941977, 41.460724, 32.594433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515327, 41.391701, 33.043068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209370, 41.526352, 33.262745>,  <32.025795, 41.607143, 33.394550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209370, 41.526352, 33.262745>,  <32.515327, 41.391701, 33.043068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209370, 41.526352, 33.262745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212326, -0.673179, 0.708342,
		0.608151, 0.658418, 0.443439,
		-0.764899, 0.336625, 0.549194,
		31.979900, 41.627338, 33.427502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794102, 41.464676, 33.654530>,  <32.515327, 41.391701, 33.043068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794102, 41.464676, 33.654530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401779, 41.399708, 33.697689>,  <32.166386, 41.360725, 33.723583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401779, 41.399708, 33.697689>,  <32.794102, 41.464676, 33.654530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401779, 41.399708, 33.697689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194993, -0.818863, 0.539852,
		0.000671, 0.550529, 0.834816,
		-0.980804, -0.162421, 0.107899,
		32.107536, 41.350983, 33.730061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810879, 41.205738, 34.282879>,  <32.794102, 41.464676, 33.654530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810879, 41.205738, 34.282879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448471, 41.110844, 34.142677>,  <32.231026, 41.053905, 34.058556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448471, 41.110844, 34.142677>,  <32.810879, 41.205738, 34.282879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448471, 41.110844, 34.142677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006998, -0.819626, 0.572856,
		-0.423184, 0.521470, 0.740935,
		-0.906017, -0.237238, -0.350502,
		32.176666, 41.039673, 34.037525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422966, 40.988506, 34.931843>,  <32.810879, 41.205738, 34.282879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422966, 40.988506, 34.931843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245754, 40.853962, 34.599438>,  <32.139427, 40.773235, 34.399994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245754, 40.853962, 34.599438>,  <32.422966, 40.988506, 34.931843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245754, 40.853962, 34.599438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029042, -0.921078, 0.388293,
		-0.896034, 0.196161, 0.398301,
		-0.443034, -0.336357, -0.831015,
		32.112843, 40.753056, 34.350132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845146, 40.670055, 35.280144>,  <32.422966, 40.988506, 34.931843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845146, 40.670055, 35.280144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910475, 40.512100, 34.918507>,  <31.949673, 40.417328, 34.701523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910475, 40.512100, 34.918507>,  <31.845146, 40.670055, 35.280144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910475, 40.512100, 34.918507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034951, -0.918140, 0.394712,
		-0.985953, -0.032867, -0.163756,
		0.163324, -0.394891, -0.904094,
		31.959471, 40.393631, 34.647278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392784, 40.056763, 35.292412>,  <31.845146, 40.670055, 35.280144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392784, 40.056763, 35.292412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681486, 40.032047, 35.016659>,  <31.854708, 40.017220, 34.851208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681486, 40.032047, 35.016659>,  <31.392784, 40.056763, 35.292412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681486, 40.032047, 35.016659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221981, -0.922732, 0.315102,
		-0.655588, -0.380457, -0.652270,
		0.721754, -0.061786, -0.689387,
		31.898012, 40.013512, 34.809841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356920, 39.318222, 34.996418>,  <31.392784, 40.056763, 35.292412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356920, 39.318222, 34.996418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723747, 39.424328, 34.877342>,  <31.943844, 39.487991, 34.805897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723747, 39.424328, 34.877342>,  <31.356920, 39.318222, 34.996418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723747, 39.424328, 34.877342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332095, -0.921351, 0.202053,
		-0.220683, -0.284158, -0.933035,
		0.917067, 0.265267, -0.297694,
		31.998867, 39.503906, 34.788033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602655, 38.746067, 34.469807>,  <31.356920, 39.318222, 34.996418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602655, 38.746067, 34.469807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916187, 38.946831, 34.616066>,  <32.104305, 39.067287, 34.703823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916187, 38.946831, 34.616066>,  <31.602655, 38.746067, 34.469807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916187, 38.946831, 34.616066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425426, -0.862968, 0.272579,
		0.452352, -0.058099, -0.889945,
		0.783830, 0.501907, 0.365649,
		32.151337, 39.097404, 34.725761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190746, 38.432018, 34.187252>,  <31.602655, 38.746067, 34.469807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190746, 38.432018, 34.187252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318619, 38.623734, 34.514198>,  <32.395344, 38.738762, 34.710365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318619, 38.623734, 34.514198>,  <32.190746, 38.432018, 34.187252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318619, 38.623734, 34.514198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540008, -0.800986, 0.258480,
		0.778584, 0.358751, -0.514883,
		0.319684, 0.479290, 0.817363,
		32.414524, 38.767521, 34.759407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833504, 38.187363, 34.221859>,  <32.190746, 38.432018, 34.187252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833504, 38.187363, 34.221859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796856, 38.345348, 34.587505>,  <32.774868, 38.440140, 34.806892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796856, 38.345348, 34.587505>,  <32.833504, 38.187363, 34.221859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796856, 38.345348, 34.587505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478829, -0.787412, 0.388209,
		0.873114, 0.473274, -0.116975,
		-0.091621, 0.394962, 0.914117,
		32.769371, 38.463837, 34.861740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492603, 38.190247, 34.549976>,  <32.833504, 38.187363, 34.221859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492603, 38.190247, 34.549976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223743, 38.181747, 34.846020>,  <33.062428, 38.176647, 35.023647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223743, 38.181747, 34.846020>,  <33.492603, 38.190247, 34.549976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223743, 38.181747, 34.846020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394719, -0.855982, 0.333903,
		0.626424, 0.516568, 0.583738,
		-0.672153, -0.021247, 0.740107,
		33.022099, 38.175373, 35.068050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864609, 38.127266, 35.189919>,  <33.492603, 38.190247, 34.549976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864609, 38.127266, 35.189919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491508, 38.007530, 35.270283>,  <33.267647, 37.935688, 35.318501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491508, 38.007530, 35.270283>,  <33.864609, 38.127266, 35.189919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491508, 38.007530, 35.270283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359607, -0.733042, 0.577349,
		-0.025550, 0.610773, 0.791394,
		-0.932754, -0.299342, 0.200909,
		33.211681, 37.917728, 35.330555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723572, 38.130394, 35.875504>,  <33.864609, 38.127266, 35.189919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723572, 38.130394, 35.875504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464474, 37.853149, 35.749001>,  <33.309013, 37.686802, 35.673100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464474, 37.853149, 35.749001>,  <33.723572, 38.130394, 35.875504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464474, 37.853149, 35.749001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341754, -0.635354, 0.692481,
		-0.680904, 0.340469, 0.648422,
		-0.647746, -0.693113, -0.316258,
		33.270149, 37.645214, 35.654121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485714, 37.642025, 36.498463>,  <33.723572, 38.130394, 35.875504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485714, 37.642025, 36.498463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324142, 37.431404, 36.199242>,  <33.227200, 37.305031, 36.019707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324142, 37.431404, 36.199242>,  <33.485714, 37.642025, 36.498463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324142, 37.431404, 36.199242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015184, -0.821482, 0.570033,
		-0.914665, 0.218894, 0.339814,
		-0.403928, -0.526548, -0.748057,
		33.202965, 37.273441, 35.974823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859966, 37.356190, 36.640652>,  <33.485714, 37.642025, 36.498463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859966, 37.356190, 36.640652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019138, 37.119904, 36.359879>,  <33.114643, 36.978134, 36.191414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019138, 37.119904, 36.359879>,  <32.859966, 37.356190, 36.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019138, 37.119904, 36.359879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099053, -0.788311, 0.607251,
		-0.912051, -0.172117, -0.372207,
		0.397933, -0.590712, -0.701932,
		33.138519, 36.942688, 36.149300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642216, 36.704472, 36.790424>,  <32.859966, 37.356190, 36.640652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642216, 36.704472, 36.790424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916191, 36.582939, 36.525532>,  <33.080574, 36.510021, 36.366596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916191, 36.582939, 36.525532>,  <32.642216, 36.704472, 36.790424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916191, 36.582939, 36.525532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008981, -0.905316, 0.424643,
		-0.728547, -0.296801, -0.617356,
		0.684937, -0.303828, -0.662231,
		33.121674, 36.491791, 36.326862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394230, 36.034470, 36.565350>,  <32.642216, 36.704472, 36.790424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394230, 36.034470, 36.565350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787746, 36.064289, 36.500107>,  <33.023857, 36.082180, 36.460960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787746, 36.064289, 36.500107>,  <32.394230, 36.034470, 36.565350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787746, 36.064289, 36.500107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147254, -0.854923, 0.497417,
		-0.102357, -0.513370, -0.852041,
		0.983788, 0.074552, -0.163103,
		33.082882, 36.086655, 36.451176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607651, 35.400368, 36.370686>,  <32.394230, 36.034470, 36.565350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607651, 35.400368, 36.370686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978695, 35.539444, 36.425316>,  <33.201321, 35.622890, 36.458096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978695, 35.539444, 36.425316>,  <32.607651, 35.400368, 36.370686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978695, 35.539444, 36.425316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278135, -0.886918, 0.368805,
		0.249361, -0.304121, -0.919418,
		0.927610, 0.347688, 0.136576,
		33.256977, 35.643749, 36.466290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071342, 34.895813, 36.162941>,  <32.607651, 35.400368, 36.370686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071342, 34.895813, 36.162941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289810, 35.123680, 36.408600>,  <33.420891, 35.260403, 36.555996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289810, 35.123680, 36.408600>,  <33.071342, 34.895813, 36.162941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289810, 35.123680, 36.408600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382865, -0.821859, 0.421855,
		0.745060, 0.004732, -0.666980,
		0.546168, 0.569671, 0.614146,
		33.453659, 35.294582, 36.592842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763813, 34.638245, 36.210426>,  <33.071342, 34.895813, 36.162941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763813, 34.638245, 36.210426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742088, 34.842403, 36.553715>,  <33.729053, 34.964897, 36.759689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742088, 34.842403, 36.553715>,  <33.763813, 34.638245, 36.210426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742088, 34.842403, 36.553715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498431, -0.730897, 0.466214,
		0.865226, 0.453089, -0.214696,
		-0.054315, 0.510392, 0.858225,
		33.725792, 34.995522, 36.811184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373451, 34.503372, 36.561855>,  <33.763813, 34.638245, 36.210426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373451, 34.503372, 36.561855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137531, 34.634937, 36.856869>,  <33.995979, 34.713875, 37.033875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137531, 34.634937, 36.856869>,  <34.373451, 34.503372, 36.561855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137531, 34.634937, 36.856869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436175, -0.638866, 0.633720,
		0.679622, 0.695461, 0.233341,
		-0.589802, 0.328913, 0.737530,
		33.960590, 34.733612, 37.078129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847660, 34.676155, 37.173893>,  <34.373451, 34.503372, 36.561855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847660, 34.676155, 37.173893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473938, 34.604862, 37.297382>,  <34.249706, 34.562084, 37.371475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473938, 34.604862, 37.297382>,  <34.847660, 34.676155, 37.173893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473938, 34.604862, 37.297382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349935, -0.623771, 0.698896,
		0.068008, 0.761014, 0.645161,
		-0.934302, -0.178234, 0.308727,
		34.193649, 34.551392, 37.389999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956474, 34.568851, 37.870949>,  <34.847660, 34.676155, 37.173893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956474, 34.568851, 37.870949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583485, 34.444714, 37.797009>,  <34.359692, 34.370232, 37.752644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583485, 34.444714, 37.797009>,  <34.956474, 34.568851, 37.870949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583485, 34.444714, 37.797009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097912, -0.709728, 0.697638,
		-0.347705, 0.632433, 0.692192,
		-0.932478, -0.310346, -0.184853,
		34.303741, 34.351608, 37.741554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750027, 35.285442, 37.674545>,  <34.956474, 34.568851, 37.870949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750027, 35.285442, 37.674545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067631, 35.423843, 37.874477>,  <35.258194, 35.506886, 37.994438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067631, 35.423843, 37.874477>,  <34.750027, 35.285442, 37.674545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067631, 35.423843, 37.874477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212151, 0.928239, -0.305556,
		-0.569688, 0.136574, 0.810434,
		0.794008, 0.346006, 0.499832,
		35.305832, 35.527645, 38.024426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498272, 35.893234, 38.064873>,  <34.750027, 35.285442, 37.674545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498272, 35.893234, 38.064873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893211, 35.926056, 38.010593>,  <35.130173, 35.945747, 37.978024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893211, 35.926056, 38.010593>,  <34.498272, 35.893234, 38.064873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893211, 35.926056, 38.010593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138347, 0.863940, -0.484218,
		0.077508, 0.496865, 0.864360,
		0.987346, 0.082051, -0.135702,
		35.189415, 35.950672, 37.969883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717396, 36.623077, 38.368031>,  <34.498272, 35.893234, 38.064873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717396, 36.623077, 38.368031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032581, 36.522892, 38.143040>,  <35.221691, 36.462780, 38.008045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032581, 36.522892, 38.143040>,  <34.717396, 36.623077, 38.368031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032581, 36.522892, 38.143040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130126, 0.960632, -0.245465,
		0.601812, 0.120225, 0.789536,
		0.787965, -0.250463, -0.562476,
		35.268970, 36.447754, 37.974297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179756, 37.124489, 38.511471>,  <34.717396, 36.623077, 38.368031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179756, 37.124489, 38.511471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256264, 36.975761, 38.148117>,  <35.302170, 36.886524, 37.930103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256264, 36.975761, 38.148117>,  <35.179756, 37.124489, 38.511471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256264, 36.975761, 38.148117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011967, 0.926289, -0.376624,
		0.981464, 0.061166, 0.181622,
		0.191271, -0.371817, -0.908387,
		35.313644, 36.864216, 37.875603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532211, 37.627007, 38.313393>,  <35.179756, 37.124489, 38.511471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532211, 37.627007, 38.313393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431747, 37.427753, 37.981422>,  <35.371468, 37.308201, 37.782238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431747, 37.427753, 37.981422>,  <35.532211, 37.627007, 38.313393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431747, 37.427753, 37.981422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124467, 0.833675, -0.538046,
		0.959909, -0.238437, -0.147388,
		-0.251164, -0.498130, -0.829929,
		35.356400, 37.278313, 37.732445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155342, 37.737377, 37.789955>,  <35.532211, 37.627007, 38.313393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155342, 37.737377, 37.789955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822109, 37.638855, 37.591843>,  <35.622169, 37.579742, 37.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822109, 37.638855, 37.591843>,  <36.155342, 37.737377, 37.789955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822109, 37.638855, 37.591843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091545, 0.821653, -0.562588,
		0.545519, -0.514024, -0.661959,
		-0.833084, -0.246303, -0.495284,
		35.572186, 37.564964, 37.443256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296875, 37.875816, 37.072067>,  <36.155342, 37.737377, 37.789955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296875, 37.875816, 37.072067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896919, 37.872677, 37.066879>,  <35.656948, 37.870792, 37.063766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896919, 37.872677, 37.066879>,  <36.296875, 37.875816, 37.072067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896919, 37.872677, 37.066879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003156, 0.729092, -0.684408,
		0.014823, -0.684371, -0.728984,
		-0.999885, -0.007844, -0.012967,
		35.596954, 37.870323, 37.062988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098042, 37.957134, 36.344933>,  <36.296875, 37.875816, 37.072067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098042, 37.957134, 36.344933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769936, 38.029755, 36.561897>,  <35.573074, 38.073326, 36.692074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769936, 38.029755, 36.561897>,  <36.098042, 37.957134, 36.344933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769936, 38.029755, 36.561897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227932, 0.765994, -0.601083,
		-0.524612, -0.616678, -0.586933,
		-0.820262, 0.181555, 0.542410,
		35.523857, 38.084221, 36.724621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582684, 38.099045, 35.850990>,  <36.098042, 37.957134, 36.344933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582684, 38.099045, 35.850990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454243, 38.278023, 36.184860>,  <35.377178, 38.385410, 36.385181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454243, 38.278023, 36.184860>,  <35.582684, 38.099045, 35.850990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454243, 38.278023, 36.184860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217866, 0.822812, -0.524895,
		-0.921644, -0.350393, -0.166723,
		-0.321101, 0.447443, 0.834679,
		35.357914, 38.412254, 36.435265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056492, 38.407757, 35.671612>,  <35.582684, 38.099045, 35.850990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056492, 38.407757, 35.671612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117367, 38.602997, 36.015377>,  <35.153893, 38.720142, 36.221638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117367, 38.602997, 36.015377>,  <35.056492, 38.407757, 35.671612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117367, 38.602997, 36.015377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394815, 0.827177, -0.399874,
		-0.906068, -0.278453, 0.318598,
		0.152191, 0.488100, 0.859416,
		35.163025, 38.749428, 36.273201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385506, 38.846512, 35.825630>,  <35.056492, 38.407757, 35.671612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385506, 38.846512, 35.825630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691380, 39.000172, 36.032581>,  <34.874905, 39.092369, 36.156754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691380, 39.000172, 36.032581>,  <34.385506, 38.846512, 35.825630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691380, 39.000172, 36.032581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249261, 0.916715, -0.312253,
		-0.594243, 0.109814, 0.796754,
		0.764686, 0.384154, 0.517379,
		34.920784, 39.115417, 36.187794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096615, 39.453346, 36.136681>,  <34.385506, 38.846512, 35.825630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096615, 39.453346, 36.136681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493809, 39.500298, 36.131096>,  <34.732124, 39.528469, 36.127747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493809, 39.500298, 36.131096>,  <34.096615, 39.453346, 36.136681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493809, 39.500298, 36.131096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114819, 0.929691, -0.349987,
		-0.028105, 0.349135, 0.936651,
		0.992989, 0.117382, -0.013958,
		34.791706, 39.535511, 36.126907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302139, 40.216267, 36.283760>,  <34.096615, 39.453346, 36.136681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302139, 40.216267, 36.283760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657375, 40.137142, 36.117786>,  <34.870518, 40.089668, 36.018204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657375, 40.137142, 36.117786>,  <34.302139, 40.216267, 36.283760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657375, 40.137142, 36.117786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032809, 0.927648, -0.372012,
		0.458495, 0.316767, 0.830325,
		0.888091, -0.197808, -0.414929,
		34.923801, 40.077801, 35.993309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722439, 40.853989, 36.350033>,  <34.302139, 40.216267, 36.283760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722439, 40.853989, 36.350033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911751, 40.640572, 36.069653>,  <35.025337, 40.512520, 35.901424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911751, 40.640572, 36.069653>,  <34.722439, 40.853989, 36.350033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911751, 40.640572, 36.069653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017829, 0.789747, -0.613174,
		0.880729, 0.302703, 0.364262,
		0.473285, -0.533546, -0.700950,
		35.053738, 40.480507, 35.859367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359653, 41.135086, 36.300079>,  <34.722439, 40.853989, 36.350033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359653, 41.135086, 36.300079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260590, 40.954788, 35.957039>,  <35.201149, 40.846607, 35.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260590, 40.954788, 35.957039>,  <35.359653, 41.135086, 36.300079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260590, 40.954788, 35.957039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023866, 0.887752, -0.459702,
		0.968552, -0.093383, -0.230620,
		-0.247662, -0.450749, -0.857606,
		35.186291, 40.819565, 35.699757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563545, 41.597782, 35.900688>,  <35.359653, 41.135086, 36.300079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563545, 41.597782, 35.900688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353676, 41.392601, 35.628922>,  <35.227757, 41.269493, 35.465862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353676, 41.392601, 35.628922>,  <35.563545, 41.597782, 35.900688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353676, 41.392601, 35.628922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105259, 0.831048, -0.546149,
		0.844779, -0.215028, -0.490011,
		-0.524661, -0.512954, -0.679419,
		35.196274, 41.238716, 35.425098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851936, 41.716148, 35.234924>,  <35.563545, 41.597782, 35.900688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851936, 41.716148, 35.234924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484512, 41.582832, 35.149914>,  <35.264057, 41.502842, 35.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484512, 41.582832, 35.149914>,  <35.851936, 41.716148, 35.234924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484512, 41.582832, 35.149914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074017, 0.673171, -0.735773,
		0.388297, -0.660119, -0.643015,
		-0.918557, -0.333292, -0.212530,
		35.208946, 41.482845, 35.086155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845486, 41.721725, 34.494087>,  <35.851936, 41.716148, 35.234924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845486, 41.721725, 34.494087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470772, 41.712822, 34.633762>,  <35.245941, 41.707481, 34.717567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470772, 41.712822, 34.633762>,  <35.845486, 41.721725, 34.494087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470772, 41.712822, 34.633762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275889, 0.660804, -0.698014,
		-0.215211, -0.750229, -0.625173,
		-0.936787, -0.022258, 0.349192,
		35.189735, 41.706146, 34.738522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419937, 41.545063, 33.957596>,  <35.845486, 41.721725, 34.494087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419937, 41.545063, 33.957596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186184, 41.725952, 34.227112>,  <35.045933, 41.834484, 34.388821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186184, 41.725952, 34.227112>,  <35.419937, 41.545063, 33.957596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186184, 41.725952, 34.227112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259212, 0.682798, -0.683079,
		-0.768966, -0.573833, -0.281792,
		-0.584380, 0.452220, 0.673793,
		35.010868, 41.861618, 34.429249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713570, 41.547150, 33.675835>,  <35.419937, 41.545063, 33.957596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713570, 41.547150, 33.675835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721905, 41.854713, 33.931442>,  <34.726906, 42.039253, 34.084805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721905, 41.854713, 33.931442>,  <34.713570, 41.547150, 33.675835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721905, 41.854713, 33.931442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412495, 0.588832, -0.695072,
		-0.910721, -0.249107, 0.329442,
		0.020839, 0.768910, 0.639017,
		34.728157, 42.085388, 34.123146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999538, 41.757164, 33.815838>,  <34.713570, 41.547150, 33.675835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999538, 41.757164, 33.815838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216663, 42.085846, 33.885307>,  <34.346939, 42.283054, 33.926991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216663, 42.085846, 33.885307>,  <33.999538, 41.757164, 33.815838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216663, 42.085846, 33.885307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539598, 0.499673, -0.677614,
		-0.643577, 0.274102, 0.714617,
		0.542810, 0.821702, 0.173673,
		34.379505, 42.332355, 33.937408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552471, 42.300312, 33.976242>,  <33.999538, 41.757164, 33.815838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552471, 42.300312, 33.976242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896393, 42.486763, 33.892845>,  <34.102745, 42.598633, 33.842808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896393, 42.486763, 33.892845>,  <33.552471, 42.300312, 33.976242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896393, 42.486763, 33.892845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510625, 0.782839, -0.355563,
		-0.002524, 0.412173, 0.911102,
		0.859800, 0.466129, -0.208490,
		34.154331, 42.626602, 33.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555958, 43.020523, 34.207817>,  <33.552471, 42.300312, 33.976242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555958, 43.020523, 34.207817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829792, 43.046993, 33.917450>,  <33.994095, 43.062874, 33.743229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829792, 43.046993, 33.917450>,  <33.555958, 43.020523, 34.207817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829792, 43.046993, 33.917450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472934, 0.798135, -0.373248,
		0.554682, 0.598834, 0.577690,
		0.684588, 0.066176, -0.725920,
		34.035168, 43.066845, 33.699673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655521, 43.676609, 34.182804>,  <33.555958, 43.020523, 34.207817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655521, 43.676609, 34.182804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789501, 43.537254, 33.832619>,  <33.869888, 43.453644, 33.622505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789501, 43.537254, 33.832619>,  <33.655521, 43.676609, 34.182804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789501, 43.537254, 33.832619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345289, 0.819117, -0.458065,
		0.876690, 0.455716, 0.154069,
		0.334948, -0.348382, -0.875465,
		33.889984, 43.432739, 33.569981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952068, 44.265938, 33.867558>,  <33.655521, 43.676609, 34.182804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952068, 44.265938, 33.867558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917801, 44.024723, 33.550316>,  <33.897240, 43.879993, 33.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917801, 44.024723, 33.550316>,  <33.952068, 44.265938, 33.867558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917801, 44.024723, 33.550316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291210, 0.776424, -0.558895,
		0.952815, 0.183077, -0.242128,
		-0.085673, -0.603033, -0.793102,
		33.892097, 43.843815, 33.312386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328728, 44.555309, 33.265507>,  <33.952068, 44.265938, 33.867558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328728, 44.555309, 33.265507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052078, 44.314682, 33.105621>,  <33.886089, 44.170307, 33.009689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052078, 44.314682, 33.105621>,  <34.328728, 44.555309, 33.265507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052078, 44.314682, 33.105621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311963, 0.747951, -0.585873,
		0.651406, -0.280512, -0.704971,
		-0.691628, -0.601566, -0.399710,
		33.844589, 44.134212, 32.985706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483269, 44.570789, 32.493824>,  <34.328728, 44.555309, 33.265507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483269, 44.570789, 32.493824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098942, 44.485260, 32.564365>,  <33.868343, 44.433941, 32.606689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098942, 44.485260, 32.564365>,  <34.483269, 44.570789, 32.493824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098942, 44.485260, 32.564365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274245, 0.641238, -0.716661,
		0.040157, -0.736948, -0.674756,
		-0.960821, -0.213828, 0.176354,
		33.810696, 44.421112, 32.617271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280102, 44.286415, 31.847700>,  <34.483269, 44.570789, 32.493824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280102, 44.286415, 31.847700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923000, 44.360607, 32.011940>,  <33.708740, 44.405121, 32.110485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923000, 44.360607, 32.011940>,  <34.280102, 44.286415, 31.847700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923000, 44.360607, 32.011940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336531, 0.331435, -0.881418,
		-0.299570, -0.925067, -0.233471,
		-0.892751, 0.185477, 0.410602,
		33.655174, 44.416248, 32.135120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734074, 44.021690, 31.456572>,  <34.280102, 44.286415, 31.847700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734074, 44.021690, 31.456572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550762, 44.301872, 31.675421>,  <33.440777, 44.469982, 31.806730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550762, 44.301872, 31.675421>,  <33.734074, 44.021690, 31.456572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550762, 44.301872, 31.675421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334424, 0.434444, -0.836313,
		-0.823495, -0.566233, 0.035155,
		-0.458275, 0.700456, 0.547124,
		33.413280, 44.512009, 31.839558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028416, 44.069546, 31.238535>,  <33.734074, 44.021690, 31.456572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028416, 44.069546, 31.238535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134701, 44.411804, 31.416195>,  <33.198471, 44.617161, 31.522791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134701, 44.411804, 31.416195>,  <33.028416, 44.069546, 31.238535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134701, 44.411804, 31.416195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211952, 0.501286, -0.838921,
		-0.940465, 0.128771, 0.314553,
		0.265710, 0.855646, 0.444149,
		33.214413, 44.668499, 31.549440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598160, 44.638020, 30.946733>,  <33.028416, 44.069546, 31.238535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598160, 44.638020, 30.946733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852428, 44.880375, 31.138079>,  <33.004990, 45.025787, 31.252886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852428, 44.880375, 31.138079>,  <32.598160, 44.638020, 30.946733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852428, 44.880375, 31.138079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113535, 0.686307, -0.718396,
		-0.763568, 0.402351, 0.505053,
		0.635668, 0.605886, 0.478361,
		33.043129, 45.062141, 31.281588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329365, 45.251122, 31.077612>,  <32.598160, 44.638020, 30.946733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329365, 45.251122, 31.077612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716824, 45.347355, 31.102413>,  <32.949299, 45.405094, 31.117294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716824, 45.347355, 31.102413>,  <32.329365, 45.251122, 31.077612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716824, 45.347355, 31.102413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109772, 0.638321, -0.761903,
		-0.222877, 0.731208, 0.644717,
		0.968646, 0.240583, 0.062001,
		33.007416, 45.419529, 31.121014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361366, 45.966091, 31.115328>,  <32.329365, 45.251122, 31.077612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361366, 45.966091, 31.115328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716301, 45.847553, 30.974007>,  <32.929260, 45.776432, 30.889214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716301, 45.847553, 30.974007>,  <32.361366, 45.966091, 31.115328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716301, 45.847553, 30.974007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003572, 0.761726, -0.647890,
		0.461116, 0.576156, 0.674846,
		0.887333, -0.296342, -0.353302,
		32.982502, 45.758652, 30.868015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712116, 46.670361, 31.110640>,  <32.361366, 45.966091, 31.115328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712116, 46.670361, 31.110640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914661, 46.415936, 30.877737>,  <33.036190, 46.263283, 30.737995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914661, 46.415936, 30.877737>,  <32.712116, 46.670361, 31.110640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914661, 46.415936, 30.877737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041840, 0.692549, -0.720157,
		0.861303, 0.340301, 0.377296,
		0.506366, -0.636059, -0.582256,
		33.066570, 46.225117, 30.703060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276688, 47.048122, 30.856031>,  <32.712116, 46.670361, 31.110640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276688, 47.048122, 30.856031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279549, 46.728790, 30.615162>,  <33.281265, 46.537189, 30.470640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279549, 46.728790, 30.615162>,  <33.276688, 47.048122, 30.856031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279549, 46.728790, 30.615162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014095, 0.602049, -0.798335,
		0.999875, 0.014195, -0.006948,
		0.007149, -0.798333, -0.602174,
		33.281693, 46.489292, 30.434509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903034, 47.054962, 30.409380>,  <33.276688, 47.048122, 30.856031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903034, 47.054962, 30.409380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607773, 46.862423, 30.220306>,  <33.430614, 46.746899, 30.106863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607773, 46.862423, 30.220306>,  <33.903034, 47.054962, 30.409380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607773, 46.862423, 30.220306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145593, 0.570483, -0.808302,
		0.658735, -0.665471, -0.351022,
		-0.738153, -0.481350, -0.472685,
		33.386326, 46.718018, 30.078501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139534, 46.997852, 29.719723>,  <33.903034, 47.054962, 30.409380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139534, 46.997852, 29.719723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741779, 46.955860, 29.714415>,  <33.503128, 46.930664, 29.711229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741779, 46.955860, 29.714415>,  <34.139534, 46.997852, 29.719723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741779, 46.955860, 29.714415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054861, 0.618727, -0.783688,
		0.090481, -0.778560, -0.621013,
		-0.994386, -0.104978, -0.013270,
		33.443462, 46.924366, 29.710434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178905, 46.774151, 28.908684>,  <34.139534, 46.997852, 29.719723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178905, 46.774151, 28.908684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351715, 46.575939, 28.607271>,  <34.455399, 46.457012, 28.426424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351715, 46.575939, 28.607271>,  <34.178905, 46.774151, 28.908684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351715, 46.575939, 28.607271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310331, -0.702821, 0.640108,
		-0.846790, -0.510382, -0.149853,
		0.432020, -0.495533, -0.753529,
		34.481319, 46.427280, 28.381212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985149, 46.056835, 28.940758>,  <34.178905, 46.774151, 28.908684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985149, 46.056835, 28.940758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344154, 46.096703, 28.768930>,  <34.559559, 46.120625, 28.665834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344154, 46.096703, 28.768930>,  <33.985149, 46.056835, 28.940758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344154, 46.096703, 28.768930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372030, -0.694151, 0.616237,
		-0.236764, -0.712896, -0.660093,
		0.897517, 0.099671, -0.429569,
		34.613411, 46.126602, 28.640060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198959, 45.341469, 28.940363>,  <33.985149, 46.056835, 28.940758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198959, 45.341469, 28.940363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531979, 45.544376, 28.851324>,  <34.731789, 45.666119, 28.797901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531979, 45.544376, 28.851324>,  <34.198959, 45.341469, 28.940363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531979, 45.544376, 28.851324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534967, -0.631930, 0.560780,
		0.143797, -0.585958, -0.797481,
		0.832546, 0.507265, -0.222598,
		34.781742, 45.696556, 28.784544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708782, 44.828392, 28.850563>,  <34.198959, 45.341469, 28.940363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708782, 44.828392, 28.850563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911720, 45.170925, 28.889111>,  <35.033485, 45.376446, 28.912239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911720, 45.170925, 28.889111>,  <34.708782, 44.828392, 28.850563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911720, 45.170925, 28.889111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671018, -0.462746, 0.579311,
		0.540679, -0.229247, -0.809390,
		0.507347, 0.856337, 0.096368,
		35.063923, 45.427826, 28.918020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347294, 44.666042, 28.602303>,  <34.708782, 44.828392, 28.850563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347294, 44.666042, 28.602303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421566, 44.986561, 28.829790>,  <35.466129, 45.178871, 28.966282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421566, 44.986561, 28.829790>,  <35.347294, 44.666042, 28.602303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421566, 44.986561, 28.829790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679661, -0.522730, 0.514601,
		0.709637, 0.290985, -0.641673,
		0.185681, 0.801300, 0.568719,
		35.477272, 45.226952, 29.000406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035912, 44.794243, 28.555098>,  <35.347294, 44.666042, 28.602303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035912, 44.794243, 28.555098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905769, 44.938431, 28.904772>,  <35.827682, 45.024944, 29.114576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905769, 44.938431, 28.904772>,  <36.035912, 44.794243, 28.555098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905769, 44.938431, 28.904772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645908, -0.590478, 0.483879,
		0.690614, 0.722076, -0.040718,
		-0.325354, 0.360474, 0.874187,
		35.808163, 45.046574, 29.167028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620090, 44.729256, 29.027916>,  <36.035912, 44.794243, 28.555098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620090, 44.729256, 29.027916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317375, 44.819824, 29.273193>,  <36.135746, 44.874165, 29.420361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317375, 44.819824, 29.273193>,  <36.620090, 44.729256, 29.027916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317375, 44.819824, 29.273193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458102, -0.485452, 0.744633,
		0.466278, 0.844434, 0.263658,
		-0.756787, 0.226424, 0.613193,
		36.090340, 44.887753, 29.457151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946091, 45.004604, 29.730709>,  <36.620090, 44.729256, 29.027916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946091, 45.004604, 29.730709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575245, 44.864449, 29.783903>,  <36.352737, 44.780357, 29.815821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575245, 44.864449, 29.783903>,  <36.946091, 45.004604, 29.730709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575245, 44.864449, 29.783903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335573, -0.618120, 0.710858,
		-0.166873, 0.703674, 0.690649,
		-0.927116, -0.350386, 0.132987,
		36.297112, 44.759335, 29.823799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784786, 45.089676, 30.402182>,  <36.946091, 45.004604, 29.730709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784786, 45.089676, 30.402182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569424, 44.779411, 30.270445>,  <36.440205, 44.593254, 30.191402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569424, 44.779411, 30.270445>,  <36.784786, 45.089676, 30.402182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569424, 44.779411, 30.270445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319518, -0.549551, 0.771947,
		-0.779758, 0.310393, 0.543722,
		-0.538410, -0.775660, -0.329341,
		36.407902, 44.546715, 30.171642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713524, 44.660683, 30.929592>,  <36.784786, 45.089676, 30.402182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713524, 44.660683, 30.929592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561668, 44.406799, 30.660366>,  <36.470554, 44.254471, 30.498831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561668, 44.406799, 30.660366>,  <36.713524, 44.660683, 30.929592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561668, 44.406799, 30.660366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060993, -0.743124, 0.666369,
		-0.923121, 0.211928, 0.320832,
		-0.379640, -0.634708, -0.673067,
		36.447777, 44.216389, 30.458447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148350, 44.272690, 31.294559>,  <36.713524, 44.660683, 30.929592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148350, 44.272690, 31.294559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208916, 44.060947, 30.960648>,  <36.245255, 43.933903, 30.760300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208916, 44.060947, 30.960648>,  <36.148350, 44.272690, 31.294559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208916, 44.060947, 30.960648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135932, -0.847643, 0.512858,
		-0.979080, 0.035821, -0.200298,
		0.151410, -0.529356, -0.834780,
		36.254337, 43.902142, 30.710215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591854, 43.812443, 31.161455>,  <36.148350, 44.272690, 31.294559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591854, 43.812443, 31.161455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914539, 43.661102, 30.979874>,  <36.108150, 43.570297, 30.870926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914539, 43.661102, 30.979874>,  <35.591854, 43.812443, 31.161455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914539, 43.661102, 30.979874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045417, -0.805597, 0.590720,
		-0.589201, -0.455922, -0.667066,
		0.806709, -0.378349, -0.453952,
		36.156551, 43.547596, 30.843687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508385, 43.204266, 31.200626>,  <35.591854, 43.812443, 31.161455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508385, 43.204266, 31.200626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896835, 43.178497, 31.108740>,  <36.129906, 43.163036, 31.053608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896835, 43.178497, 31.108740>,  <35.508385, 43.204266, 31.200626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896835, 43.178497, 31.108740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099506, -0.765754, 0.635390,
		-0.216837, -0.639900, -0.737231,
		0.971123, -0.064417, -0.229718,
		36.188171, 43.159172, 31.039824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656414, 42.491135, 30.936256>,  <35.508385, 43.204266, 31.200626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656414, 42.491135, 30.936256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982697, 42.662994, 31.091187>,  <36.178467, 42.766109, 31.184145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982697, 42.662994, 31.091187>,  <35.656414, 42.491135, 30.936256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982697, 42.662994, 31.091187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158541, -0.809984, 0.564615,
		0.556315, -0.399154, -0.728828,
		0.815707, 0.429653, 0.387325,
		36.227409, 42.791889, 31.207384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260227, 42.019299, 30.909996>,  <35.656414, 42.491135, 30.936256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260227, 42.019299, 30.909996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353500, 42.283562, 31.195415>,  <36.409466, 42.442120, 31.366667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353500, 42.283562, 31.195415>,  <36.260227, 42.019299, 30.909996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353500, 42.283562, 31.195415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222296, -0.750564, 0.622284,
		0.946683, 0.013512, -0.321883,
		0.233186, 0.660659, 0.713550,
		36.423454, 42.481758, 31.409481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666019, 41.535751, 31.215076>,  <36.260227, 42.019299, 30.909996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666019, 41.535751, 31.215076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614697, 41.845448, 31.462975>,  <36.583900, 42.031265, 31.611713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614697, 41.845448, 31.462975>,  <36.666019, 41.535751, 31.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614697, 41.845448, 31.462975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328636, -0.556409, 0.763157,
		0.935700, 0.301592, -0.183051,
		-0.128311, 0.774243, 0.619746,
		36.576202, 42.077721, 31.648899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281498, 41.635941, 31.586315>,  <36.666019, 41.535751, 31.215076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281498, 41.635941, 31.586315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988689, 41.792629, 31.809278>,  <36.813004, 41.886642, 31.943056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988689, 41.792629, 31.809278>,  <37.281498, 41.635941, 31.586315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988689, 41.792629, 31.809278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358071, -0.474838, 0.803936,
		0.579598, 0.788088, 0.207326,
		-0.732019, 0.391722, 0.557407,
		36.769085, 41.910145, 31.976501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601425, 41.947178, 32.234859>,  <37.281498, 41.635941, 31.586315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601425, 41.947178, 32.234859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220078, 41.879082, 32.334541>,  <36.991268, 41.838223, 32.394348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220078, 41.879082, 32.334541>,  <37.601425, 41.947178, 32.234859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220078, 41.879082, 32.334541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301765, -0.525002, 0.795808,
		-0.004652, 0.833900, 0.551895,
		-0.953371, -0.170245, 0.249200,
		36.934067, 41.828007, 32.409302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482613, 42.146767, 32.903679>,  <37.601425, 41.947178, 32.234859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482613, 42.146767, 32.903679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186695, 41.880978, 32.861362>,  <37.009144, 41.721504, 32.835972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186695, 41.880978, 32.861362>,  <37.482613, 42.146767, 32.903679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186695, 41.880978, 32.861362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228991, -0.396488, 0.889022,
		-0.632671, 0.633465, 0.445476,
		-0.739790, -0.664469, -0.105789,
		36.964760, 41.681637, 32.829624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329041, 41.901646, 33.537205>,  <37.482613, 42.146767, 32.903679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329041, 41.901646, 33.537205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099140, 41.630428, 33.353935>,  <36.961201, 41.467697, 33.243973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099140, 41.630428, 33.353935>,  <37.329041, 41.901646, 33.537205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099140, 41.630428, 33.353935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239760, -0.674846, 0.697924,
		-0.782418, 0.291281, 0.550435,
		-0.574751, -0.678040, -0.458174,
		36.926716, 41.427017, 33.216484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842854, 41.639065, 34.035412>,  <37.329041, 41.901646, 33.537205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842854, 41.639065, 34.035412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843151, 41.356239, 33.752552>,  <36.843330, 41.186546, 33.582836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843151, 41.356239, 33.752552>,  <36.842854, 41.639065, 34.035412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843151, 41.356239, 33.752552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064204, -0.705658, 0.705637,
		-0.997936, -0.045926, 0.044871,
		0.000743, -0.707062, -0.707151,
		36.843372, 41.144119, 33.540405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272041, 41.215523, 34.201889>,  <36.842854, 41.639065, 34.035412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272041, 41.215523, 34.201889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541218, 41.015484, 33.983879>,  <36.702724, 40.895462, 33.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541218, 41.015484, 33.983879>,  <36.272041, 41.215523, 34.201889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541218, 41.015484, 33.983879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056506, -0.769426, 0.636232,
		-0.737527, -0.397355, -0.546043,
		0.672949, -0.500093, -0.545020,
		36.743103, 40.865456, 33.820374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090580, 40.575062, 33.892143>,  <36.272041, 41.215523, 34.201889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090580, 40.575062, 33.892143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483471, 40.502335, 33.910789>,  <36.719204, 40.458698, 33.921978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483471, 40.502335, 33.910789>,  <36.090580, 40.575062, 33.892143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483471, 40.502335, 33.910789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154505, -0.642174, 0.750827,
		-0.106578, -0.744684, -0.658852,
		0.982227, -0.181818, 0.046616,
		36.778137, 40.447788, 33.924774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103046, 39.961353, 34.078224>,  <36.090580, 40.575062, 33.892143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103046, 39.961353, 34.078224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488628, 40.048267, 34.139652>,  <36.719978, 40.100414, 34.176510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488628, 40.048267, 34.139652>,  <36.103046, 39.961353, 34.078224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488628, 40.048267, 34.139652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048556, -0.711120, 0.701392,
		0.261607, -0.668652, -0.696036,
		0.963952, 0.217285, 0.153567,
		36.777813, 40.113453, 34.185722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327896, 39.341908, 34.242085>,  <36.103046, 39.961353, 34.078224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327896, 39.341908, 34.242085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606205, 39.598129, 34.372066>,  <36.773190, 39.751862, 34.450058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606205, 39.598129, 34.372066>,  <36.327896, 39.341908, 34.242085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606205, 39.598129, 34.372066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133532, -0.559890, 0.817737,
		0.705741, -0.525566, -0.475090,
		0.695772, 0.640550, 0.324957,
		36.814938, 39.790295, 34.469555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974262, 38.913303, 34.452820>,  <36.327896, 39.341908, 34.242085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974262, 38.913303, 34.452820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949539, 39.260578, 34.649769>,  <36.934704, 39.468941, 34.767941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949539, 39.260578, 34.649769>,  <36.974262, 38.913303, 34.452820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949539, 39.260578, 34.649769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036821, -0.491000, 0.870381,
		0.997408, 0.071929, -0.001618,
		-0.061811, 0.868185, 0.492376,
		36.930996, 39.521034, 34.797482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637543, 39.095264, 34.784081>,  <36.974262, 38.913303, 34.452820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637543, 39.095264, 34.784081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360241, 39.296928, 34.990078>,  <37.193859, 39.417927, 35.113674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360241, 39.296928, 34.990078>,  <37.637543, 39.095264, 34.784081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360241, 39.296928, 34.990078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256650, -0.495025, 0.830109,
		0.673444, 0.707650, 0.213786,
		-0.693256, 0.504164, 0.514989,
		37.152264, 39.448177, 35.144573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990555, 39.439968, 35.329514>,  <37.637543, 39.095264, 34.784081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990555, 39.439968, 35.329514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615944, 39.329674, 35.416119>,  <37.391178, 39.263496, 35.468082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615944, 39.329674, 35.416119>,  <37.990555, 39.439968, 35.329514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615944, 39.329674, 35.416119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324789, -0.449892, 0.831931,
		-0.131985, 0.849451, 0.510894,
		-0.936532, -0.275735, 0.216513,
		37.334984, 39.246952, 35.481071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974010, 39.601723, 35.954945>,  <37.990555, 39.439968, 35.329514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974010, 39.601723, 35.954945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678951, 39.336548, 35.903751>,  <37.501915, 39.177441, 35.873035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678951, 39.336548, 35.903751>,  <37.974010, 39.601723, 35.954945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678951, 39.336548, 35.903751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307531, -0.498643, 0.810420,
		-0.601078, 0.558448, 0.571699,
		-0.737651, -0.662941, -0.127983,
		37.457657, 39.137665, 35.865356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687447, 39.604481, 36.574516>,  <37.974010, 39.601723, 35.954945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687447, 39.604481, 36.574516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580360, 39.263367, 36.395145>,  <37.516109, 39.058697, 36.287521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580360, 39.263367, 36.395145>,  <37.687447, 39.604481, 36.574516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580360, 39.263367, 36.395145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205254, -0.505210, 0.838233,
		-0.941382, 0.132365, 0.310290,
		-0.267714, -0.852785, -0.448427,
		37.500046, 39.007530, 36.260616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183849, 39.259941, 37.027126>,  <37.687447, 39.604481, 36.574516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183849, 39.259941, 37.027126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339287, 38.970413, 36.799065>,  <37.432549, 38.796696, 36.662228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339287, 38.970413, 36.799065>,  <37.183849, 39.259941, 37.027126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339287, 38.970413, 36.799065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158466, -0.557063, 0.815211,
		-0.907679, -0.407138, -0.101772,
		0.388596, -0.723823, -0.570152,
		37.455868, 38.753265, 36.628017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272953, 38.737450, 37.466633>,  <37.183849, 39.259941, 37.027126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272953, 38.737450, 37.466633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470188, 38.559856, 37.167366>,  <37.588528, 38.453300, 36.987808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470188, 38.559856, 37.167366>,  <37.272953, 38.737450, 37.466633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470188, 38.559856, 37.167366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277484, -0.734801, 0.618927,
		-0.824543, -0.512787, -0.239121,
		0.493084, -0.443979, -0.748165,
		37.618114, 38.426662, 36.942917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065918, 38.109295, 37.427116>,  <37.272953, 38.737450, 37.466633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065918, 38.109295, 37.427116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425095, 38.100166, 37.251305>,  <37.640598, 38.094688, 37.145817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425095, 38.100166, 37.251305>,  <37.065918, 38.109295, 37.427116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425095, 38.100166, 37.251305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293035, -0.714115, 0.635743,
		-0.328382, -0.699656, -0.634544,
		0.897940, -0.022823, -0.439527,
		37.694477, 38.093319, 37.119446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272781, 37.399372, 37.497120>,  <37.065918, 38.109295, 37.427116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272781, 37.399372, 37.497120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619877, 37.587803, 37.433731>,  <37.828136, 37.700859, 37.395699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619877, 37.587803, 37.433731>,  <37.272781, 37.399372, 37.497120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619877, 37.587803, 37.433731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485594, -0.735593, 0.472336,
		0.105935, -0.486819, -0.867056,
		0.867742, 0.471074, -0.158471,
		37.880199, 37.729126, 37.386189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674484, 36.952183, 37.186493>,  <37.272781, 37.399372, 37.497120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674484, 36.952183, 37.186493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948242, 37.220791, 37.300095>,  <38.112499, 37.381954, 37.368256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948242, 37.220791, 37.300095>,  <37.674484, 36.952183, 37.186493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948242, 37.220791, 37.300095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549207, -0.731010, 0.404964,
		0.479553, -0.121179, -0.869106,
		0.684398, 0.671520, 0.284006,
		38.153561, 37.422249, 37.385296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283604, 36.594303, 37.144878>,  <37.674484, 36.952183, 37.186493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283604, 36.594303, 37.144878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338306, 36.894783, 37.403179>,  <38.371128, 37.075069, 37.558159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338306, 36.894783, 37.403179>,  <38.283604, 36.594303, 37.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338306, 36.894783, 37.403179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530784, -0.605971, 0.592509,
		0.836401, 0.261729, -0.481593,
		0.136755, 0.751197, 0.645757,
		38.379333, 37.120144, 37.596905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011337, 36.650692, 37.214607>,  <38.283604, 36.594303, 37.144878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011337, 36.650692, 37.214607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849243, 36.787174, 37.553871>,  <38.751987, 36.869064, 37.757427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849243, 36.787174, 37.553871>,  <39.011337, 36.650692, 37.214607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849243, 36.787174, 37.553871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343026, -0.803212, 0.487014,
		0.847420, 0.488293, 0.208445,
		-0.405231, 0.341204, 0.848156,
		38.727673, 36.889534, 37.808319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556538, 36.603733, 37.714710>,  <39.011337, 36.650692, 37.214607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556538, 36.603733, 37.714710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234711, 36.626129, 37.951195>,  <39.041615, 36.639568, 38.093086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234711, 36.626129, 37.951195>,  <39.556538, 36.603733, 37.714710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234711, 36.626129, 37.951195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281762, -0.840366, 0.463029,
		0.522758, 0.539121, 0.660358,
		-0.804570, 0.055989, 0.591212,
		38.993340, 36.642925, 38.128559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841396, 36.362373, 38.333775>,  <39.556538, 36.603733, 37.714710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841396, 36.362373, 38.333775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443539, 36.335907, 38.365520>,  <39.204823, 36.320026, 38.384567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443539, 36.335907, 38.365520>,  <39.841396, 36.362373, 38.333775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443539, 36.335907, 38.365520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099083, -0.828708, 0.550840,
		0.029320, 0.555755, 0.830829,
		-0.994647, -0.066170, 0.079364,
		39.145145, 36.316055, 38.389328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801853, 35.983864, 38.952797>,  <39.841396, 36.362373, 38.333775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801853, 35.983864, 38.952797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431427, 35.984497, 38.801853>,  <39.209171, 35.984875, 38.711285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431427, 35.984497, 38.801853>,  <39.801853, 35.983864, 38.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431427, 35.984497, 38.801853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153550, -0.915042, 0.372988,
		-0.344712, 0.403355, 0.847631,
		-0.926065, 0.001581, -0.377361,
		39.153606, 35.984970, 38.688644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274189, 35.953232, 39.560406>,  <39.801853, 35.983864, 38.952797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274189, 35.953232, 39.560406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095802, 35.815548, 39.229919>,  <38.988770, 35.732937, 39.031628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095802, 35.815548, 39.229919>,  <39.274189, 35.953232, 39.560406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095802, 35.815548, 39.229919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035379, -0.915597, 0.400537,
		-0.894352, 0.207855, 0.396146,
		-0.445964, -0.344206, -0.826219,
		38.962013, 35.712288, 38.982052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686031, 35.450184, 39.766533>,  <39.274189, 35.953232, 39.560406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686031, 35.450184, 39.766533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742100, 35.367420, 39.379227>,  <38.775742, 35.317760, 39.146843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742100, 35.367420, 39.379227>,  <38.686031, 35.450184, 39.766533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742100, 35.367420, 39.379227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110959, -0.975044, 0.192294,
		-0.983891, 0.080484, -0.159631,
		0.140170, -0.206908, -0.968267,
		38.784153, 35.305347, 39.088745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106548, 35.005768, 39.615192>,  <38.686031, 35.450184, 39.766533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106548, 35.005768, 39.615192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398392, 34.939369, 39.349827>,  <38.573498, 34.899532, 39.190605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398392, 34.939369, 39.349827>,  <38.106548, 35.005768, 39.615192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398392, 34.939369, 39.349827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164285, -0.984230, 0.065590,
		-0.663843, 0.061134, -0.745369,
		0.729604, -0.165994, -0.663418,
		38.617271, 34.889572, 39.150803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829105, 34.555389, 39.109615>,  <38.106548, 35.005768, 39.615192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829105, 34.555389, 39.109615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226204, 34.509655, 39.124458>,  <38.464462, 34.482216, 39.133362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226204, 34.509655, 39.124458>,  <37.829105, 34.555389, 39.109615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226204, 34.509655, 39.124458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118905, -0.979348, 0.163520,
		0.017640, -0.166746, -0.985842,
		0.992749, -0.114337, 0.037103,
		38.524029, 34.475353, 39.135590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112286, 34.044647, 38.642769>,  <37.829105, 34.555389, 39.109615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112286, 34.044647, 38.642769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422543, 34.083202, 38.892277>,  <38.608696, 34.106335, 39.041981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422543, 34.083202, 38.892277>,  <38.112286, 34.044647, 38.642769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422543, 34.083202, 38.892277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036097, -0.993428, 0.108617,
		0.630142, -0.061731, -0.774022,
		0.775641, 0.096384, 0.623772,
		38.655235, 34.112118, 39.079407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407753, 33.445263, 38.477711>,  <38.112286, 34.044647, 38.642769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407753, 33.445263, 38.477711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620522, 33.559437, 38.796604>,  <38.748180, 33.627941, 38.987942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620522, 33.559437, 38.796604>,  <38.407753, 33.445263, 38.477711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620522, 33.559437, 38.796604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286747, -0.946570, 0.147584,
		0.796767, 0.150103, -0.585347,
		0.531919, 0.285437, 0.797238,
		38.780098, 33.645069, 39.035774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051090, 33.166977, 38.423794>,  <38.407753, 33.445263, 38.477711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051090, 33.166977, 38.423794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023285, 33.226501, 38.818363>,  <39.006599, 33.262218, 39.055103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023285, 33.226501, 38.818363>,  <39.051090, 33.166977, 38.423794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023285, 33.226501, 38.818363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020674, -0.988813, 0.147718,
		0.997366, -0.010124, 0.071815,
		-0.069516, 0.148813, 0.986419,
		39.002430, 33.271145, 39.114288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663780, 32.844452, 38.780827>,  <39.051090, 33.166977, 38.423794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663780, 32.844452, 38.780827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358742, 32.871258, 39.038185>,  <39.175716, 32.887341, 39.192600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358742, 32.871258, 39.038185>,  <39.663780, 32.844452, 38.780827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358742, 32.871258, 39.038185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115341, -0.964595, 0.237178,
		0.636507, 0.255081, 0.727868,
		-0.762598, 0.067013, 0.643393,
		39.129963, 32.891361, 39.231201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839409, 32.418129, 39.402115>,  <39.663780, 32.844452, 38.780827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839409, 32.418129, 39.402115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443985, 32.463505, 39.441887>,  <39.206730, 32.490730, 39.465752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443985, 32.463505, 39.441887>,  <39.839409, 32.418129, 39.402115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443985, 32.463505, 39.441887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084755, -0.962955, 0.255997,
		0.124789, 0.244640, 0.961551,
		-0.988557, 0.113442, 0.099431,
		39.147419, 32.497536, 39.471718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633377, 32.150814, 39.991348>,  <39.839409, 32.418129, 39.402115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633377, 32.150814, 39.991348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280174, 32.125862, 39.805267>,  <39.068253, 32.110889, 39.693619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280174, 32.125862, 39.805267>,  <39.633377, 32.150814, 39.991348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280174, 32.125862, 39.805267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110785, -0.935426, 0.335715,
		-0.456102, 0.347975, 0.819075,
		-0.883005, -0.062379, -0.465200,
		39.015274, 32.107147, 39.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462276, 31.566742, 40.201397>,  <39.633377, 32.150814, 39.991348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462276, 31.566742, 40.201397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131065, 31.674431, 40.004665>,  <38.932339, 31.739044, 39.886627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131065, 31.674431, 40.004665>,  <39.462276, 31.566742, 40.201397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131065, 31.674431, 40.004665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398045, -0.900038, 0.177461,
		-0.394886, 0.342711, 0.852416,
		-0.828025, 0.269223, -0.491827,
		38.882656, 31.755198, 39.857117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778461, 31.410725, 40.614010>,  <39.462276, 31.566742, 40.201397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778461, 31.410725, 40.614010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747780, 31.403612, 40.215252>,  <38.729370, 31.399343, 39.975998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747780, 31.403612, 40.215252>,  <38.778461, 31.410725, 40.614010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747780, 31.403612, 40.215252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336661, -0.940658, 0.042684,
		-0.938497, 0.338890, 0.066167,
		-0.076706, -0.017783, -0.996895,
		38.724770, 31.398277, 39.916183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103802, 31.308931, 40.444439>,  <38.778461, 31.410725, 40.614010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103802, 31.308931, 40.444439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306591, 31.165970, 40.130692>,  <38.428265, 31.080193, 39.942444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306591, 31.165970, 40.130692>,  <38.103802, 31.308931, 40.444439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306591, 31.165970, 40.130692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453857, -0.884309, 0.109594,
		-0.732796, 0.300431, -0.610534,
		0.506976, -0.357405, -0.784371,
		38.458683, 31.058748, 39.895382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616753, 30.840145, 40.016544>,  <38.103802, 31.308931, 40.444439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616753, 30.840145, 40.016544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980473, 30.722050, 39.899235>,  <38.198704, 30.651194, 39.828850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980473, 30.722050, 39.899235>,  <37.616753, 30.840145, 40.016544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980473, 30.722050, 39.899235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279471, -0.955412, 0.095307,
		-0.308332, -0.004702, -0.951267,
		0.909300, -0.295237, -0.293270,
		38.253262, 30.633478, 39.811253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616428, 30.275234, 39.473679>,  <37.616753, 30.840145, 40.016544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616428, 30.275234, 39.473679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953224, 30.260426, 39.688969>,  <38.155300, 30.251541, 39.818142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953224, 30.260426, 39.688969>,  <37.616428, 30.275234, 39.473679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953224, 30.260426, 39.688969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166272, -0.966887, 0.193606,
		0.513236, -0.252506, -0.820262,
		0.841987, -0.037021, 0.538226,
		38.205822, 30.249319, 39.850437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075073, 29.770422, 39.207806>,  <37.616428, 30.275234, 39.473679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075073, 29.770422, 39.207806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217976, 29.790840, 39.580849>,  <38.303719, 29.803091, 39.804676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217976, 29.790840, 39.580849>,  <38.075073, 29.770422, 39.207806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217976, 29.790840, 39.580849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079252, -0.993248, 0.084726,
		0.930638, -0.104180, -0.350799,
		0.357257, 0.051048, 0.932610,
		38.325153, 29.806154, 39.860630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408092, 29.154678, 39.311829>,  <38.075073, 29.770422, 39.207806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408092, 29.154678, 39.311829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351540, 29.284353, 39.685974>,  <38.317608, 29.362158, 39.910461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351540, 29.284353, 39.685974>,  <38.408092, 29.154678, 39.311829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351540, 29.284353, 39.685974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241374, -0.927632, 0.285023,
		0.960077, -0.185476, 0.209404,
		-0.141385, 0.324189, 0.935367,
		38.309124, 29.381609, 39.966583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795277, 28.733736, 39.780926>,  <38.408092, 29.154678, 39.311829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795277, 28.733736, 39.780926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492542, 28.896025, 39.985897>,  <38.310902, 28.993399, 40.108879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492542, 28.896025, 39.985897>,  <38.795277, 28.733736, 39.780926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492542, 28.896025, 39.985897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184279, -0.884663, 0.428267,
		0.627087, 0.229698, 0.744312,
		-0.756838, 0.405722, 0.512432,
		38.265491, 29.017742, 40.139626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969337, 28.464987, 40.370129>,  <38.795277, 28.733736, 39.780926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969337, 28.464987, 40.370129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601334, 28.618471, 40.401993>,  <38.380531, 28.710562, 40.421112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601334, 28.618471, 40.401993>,  <38.969337, 28.464987, 40.370129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601334, 28.618471, 40.401993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322081, -0.856136, 0.404097,
		0.223254, 0.346117, 0.911241,
		-0.920012, 0.383710, 0.079658,
		38.325329, 28.733583, 40.425892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784626, 28.492437, 41.133350>,  <38.969337, 28.464987, 40.370129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784626, 28.492437, 41.133350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465878, 28.473804, 40.892410>,  <38.274628, 28.462626, 40.747845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465878, 28.473804, 40.892410>,  <38.784626, 28.492437, 41.133350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465878, 28.473804, 40.892410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275539, -0.859269, 0.430971,
		-0.537656, 0.509399, 0.671892,
		-0.796871, -0.046582, -0.602350,
		38.226814, 28.459829, 40.711704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181793, 28.320967, 41.521076>,  <38.784626, 28.492437, 41.133350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181793, 28.320967, 41.521076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105907, 28.186033, 41.152248>,  <38.060375, 28.105074, 40.930950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105907, 28.186033, 41.152248>,  <38.181793, 28.320967, 41.521076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105907, 28.186033, 41.152248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360213, -0.849728, 0.384979,
		-0.913375, 0.405179, 0.039695,
		-0.189716, -0.337332, -0.922071,
		38.048992, 28.084833, 40.875626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349285, 28.173286, 41.598679>,  <38.181793, 28.320967, 41.521076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349285, 28.173286, 41.598679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602230, 28.024786, 41.326710>,  <37.753998, 27.935686, 41.163528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602230, 28.024786, 41.326710>,  <37.349285, 28.173286, 41.598679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602230, 28.024786, 41.326710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183219, -0.924460, 0.334373,
		-0.752698, -0.086869, -0.652610,
		0.632359, -0.371252, -0.679923,
		37.791939, 27.913410, 41.122734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802792, 27.555902, 41.524559>,  <37.349285, 28.173286, 41.598679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802792, 27.555902, 41.524559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460148, 27.360889, 41.592125>,  <37.254562, 27.243881, 41.632664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460148, 27.360889, 41.592125>,  <37.802792, 27.555902, 41.524559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460148, 27.360889, 41.592125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511314, 0.845974, -0.151280,
		-0.069147, -0.215959, -0.973951,
		-0.856607, -0.487534, 0.168920,
		37.203167, 27.214628, 41.642799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173061, 27.008039, 41.380398>,  <37.802792, 27.555902, 41.524559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173061, 27.008039, 41.380398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822788, 27.048246, 41.191475>,  <37.612625, 27.072371, 41.078121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822788, 27.048246, 41.191475>,  <38.173061, 27.008039, 41.380398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822788, 27.048246, 41.191475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398627, 0.702503, -0.589565,
		0.272536, -0.704547, -0.655239,
		-0.875683, 0.100518, -0.472308,
		37.560081, 27.078402, 41.049782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262909, 27.025713, 40.599361>,  <38.173061, 27.008039, 41.380398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262909, 27.025713, 40.599361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930420, 27.217875, 40.711281>,  <37.730927, 27.333172, 40.778431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930420, 27.217875, 40.711281>,  <38.262909, 27.025713, 40.599361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930420, 27.217875, 40.711281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242956, 0.766574, -0.594421,
		-0.500047, -0.426116, -0.753908,
		-0.831219, 0.480405, 0.279796,
		37.681053, 27.361996, 40.795219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063240, 27.528017, 40.037483>,  <38.262909, 27.025713, 40.599361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063240, 27.528017, 40.037483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818569, 27.664463, 40.322998>,  <37.671768, 27.746330, 40.494308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818569, 27.664463, 40.322998>,  <38.063240, 27.528017, 40.037483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818569, 27.664463, 40.322998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009522, 0.905371, -0.424514,
		-0.791050, -0.252868, -0.557043,
		-0.611677, 0.341116, 0.713786,
		37.635067, 27.766798, 40.537132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408722, 27.946146, 39.837856>,  <38.063240, 27.528017, 40.037483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408722, 27.946146, 39.837856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504707, 28.055552, 40.210438>,  <37.562298, 28.121195, 40.433987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504707, 28.055552, 40.210438>,  <37.408722, 27.946146, 39.837856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504707, 28.055552, 40.210438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159983, 0.935229, -0.315837,
		-0.957509, 0.224806, 0.180664,
		0.239964, 0.273514, 0.931455,
		37.576698, 28.137606, 40.489876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105381, 28.603786, 40.010845>,  <37.408722, 27.946146, 39.837856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105381, 28.603786, 40.010845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410069, 28.567852, 40.267506>,  <37.592880, 28.546291, 40.421501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410069, 28.567852, 40.267506>,  <37.105381, 28.603786, 40.010845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410069, 28.567852, 40.267506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168769, 0.983664, -0.062633,
		-0.625539, 0.155999, 0.764437,
		0.761720, -0.089834, 0.641648,
		37.638584, 28.540901, 40.459999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084850, 29.071674, 40.573616>,  <37.105381, 28.603786, 40.010845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084850, 29.071674, 40.573616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469460, 28.976952, 40.517914>,  <37.700226, 28.920118, 40.484493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469460, 28.976952, 40.517914>,  <37.084850, 29.071674, 40.573616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469460, 28.976952, 40.517914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253080, 0.960740, 0.113702,
		0.106866, -0.144571, 0.983706,
		0.961525, -0.236805, -0.139259,
		37.757915, 28.905910, 40.476135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606060, 29.326368, 41.152180>,  <37.084850, 29.071674, 40.573616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606060, 29.326368, 41.152180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797867, 29.277033, 40.804653>,  <37.912952, 29.247433, 40.596138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797867, 29.277033, 40.804653>,  <37.606060, 29.326368, 41.152180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797867, 29.277033, 40.804653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331407, 0.942207, 0.049157,
		0.812544, -0.311504, 0.492683,
		0.479522, -0.123336, -0.868819,
		37.941723, 29.240032, 40.544006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127556, 29.741161, 41.172157>,  <37.606060, 29.326368, 41.152180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127556, 29.741161, 41.172157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220043, 29.621058, 40.801994>,  <38.275536, 29.548996, 40.579895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220043, 29.621058, 40.801994>,  <38.127556, 29.741161, 41.172157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220043, 29.621058, 40.801994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302811, 0.926149, -0.224841,
		0.924578, -0.228238, 0.305061,
		0.231214, -0.300259, -0.925410,
		38.289406, 29.530979, 40.524372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814323, 30.031153, 41.012241>,  <38.127556, 29.741161, 41.172157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814323, 30.031153, 41.012241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653168, 29.944622, 40.656517>,  <38.556473, 29.892704, 40.443081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653168, 29.944622, 40.656517>,  <38.814323, 30.031153, 41.012241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653168, 29.944622, 40.656517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288072, 0.892308, -0.347564,
		0.868730, -0.396218, -0.297188,
		-0.402894, -0.216327, -0.889314,
		38.532299, 29.879723, 40.389721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304272, 30.180632, 40.520142>,  <38.814323, 30.031153, 41.012241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304272, 30.180632, 40.520142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945431, 30.183498, 40.343437>,  <38.730125, 30.185219, 40.237415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945431, 30.183498, 40.343437>,  <39.304272, 30.180632, 40.520142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945431, 30.183498, 40.343437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129009, 0.960543, -0.246401,
		0.422561, -0.278038, -0.862634,
		-0.897106, 0.007168, -0.441758,
		38.676300, 30.185648, 40.210911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496399, 30.696743, 39.988205>,  <39.304272, 30.180632, 40.520142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496399, 30.696743, 39.988205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099514, 30.679964, 40.035133>,  <38.861385, 30.669897, 40.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099514, 30.679964, 40.035133>,  <39.496399, 30.696743, 39.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099514, 30.679964, 40.035133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065849, 0.975914, -0.207983,
		-0.105767, -0.214087, -0.971072,
		-0.992208, -0.041947, 0.117317,
		38.801853, 30.667379, 40.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458775, 30.309517, 39.368637>,  <39.496399, 30.696743, 39.988205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458775, 30.309517, 39.368637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082581, 30.392330, 39.476429>,  <38.856865, 30.442019, 39.541103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082581, 30.392330, 39.476429>,  <39.458775, 30.309517, 39.368637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082581, 30.392330, 39.476429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072767, 0.897290, -0.435404,
		-0.331940, -0.389884, -0.858957,
		-0.940490, 0.207032, 0.269476,
		38.800434, 30.454439, 39.557270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118748, 30.726421, 38.810287>,  <39.458775, 30.309517, 39.368637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118748, 30.726421, 38.810287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932053, 30.813395, 39.153187>,  <38.820034, 30.865578, 39.358925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932053, 30.813395, 39.153187>,  <39.118748, 30.726421, 38.810287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932053, 30.813395, 39.153187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044560, 0.962294, -0.268336,
		-0.883270, -0.163443, -0.439455,
		-0.466742, 0.217431, 0.857249,
		38.792030, 30.878624, 39.410362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781185, 31.329145, 38.606915>,  <39.118748, 30.726421, 38.810287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781185, 31.329145, 38.606915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754982, 31.345654, 39.005714>,  <38.739258, 31.355558, 39.244995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754982, 31.345654, 39.005714>,  <38.781185, 31.329145, 38.606915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754982, 31.345654, 39.005714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097107, 0.994138, -0.047534,
		-0.993116, -0.099930, -0.061118,
		-0.065510, 0.041271, 0.996998,
		38.735329, 31.358034, 39.304813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194496, 31.700254, 38.822037>,  <38.781185, 31.329145, 38.606915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194496, 31.700254, 38.822037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444824, 31.742239, 39.131187>,  <38.595020, 31.767429, 39.316677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444824, 31.742239, 39.131187>,  <38.194496, 31.700254, 38.822037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444824, 31.742239, 39.131187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172048, 0.985073, 0.005536,
		-0.760756, -0.136436, 0.634536,
		0.625820, 0.104959, 0.772874,
		38.632568, 31.773727, 39.363049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077068, 32.375469, 38.958817>,  <38.194496, 31.700254, 38.822037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077068, 32.375469, 38.958817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321461, 32.276402, 39.259579>,  <38.468098, 32.216961, 39.440037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321461, 32.276402, 39.259579>,  <38.077068, 32.375469, 38.958817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321461, 32.276402, 39.259579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070118, 0.929138, 0.363025,
		-0.788534, -0.274524, 0.550320,
		0.610982, -0.247670, 0.751905,
		38.504757, 32.202099, 39.485149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854435, 32.600109, 39.585239>,  <38.077068, 32.375469, 38.958817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854435, 32.600109, 39.585239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253391, 32.571548, 39.581066>,  <38.492767, 32.554413, 39.578560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253391, 32.571548, 39.581066>,  <37.854435, 32.600109, 39.585239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253391, 32.571548, 39.581066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071890, 0.995732, 0.057868,
		0.006261, -0.058468, 0.998270,
		0.997393, -0.071403, -0.010438,
		38.552608, 32.550129, 39.577934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123848, 32.996838, 40.146107>,  <37.854435, 32.600109, 39.585239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123848, 32.996838, 40.146107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410984, 32.963398, 39.869640>,  <38.583267, 32.943333, 39.703758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410984, 32.963398, 39.869640>,  <38.123848, 32.996838, 40.146107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410984, 32.963398, 39.869640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217446, 0.970022, 0.108506,
		0.661376, -0.228182, 0.714502,
		0.717843, -0.083603, -0.691168,
		38.626335, 32.938316, 39.662289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647785, 33.424454, 40.323746>,  <38.123848, 32.996838, 40.146107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647785, 33.424454, 40.323746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764462, 33.363167, 39.946079>,  <38.834465, 33.326393, 39.719479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764462, 33.363167, 39.946079>,  <38.647785, 33.424454, 40.323746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764462, 33.363167, 39.946079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172482, 0.979331, -0.105643,
		0.940834, -0.132036, 0.312088,
		0.291689, -0.153222, -0.944161,
		38.851967, 33.317200, 39.662830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255741, 33.864346, 40.251114>,  <38.647785, 33.424454, 40.323746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255741, 33.864346, 40.251114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117641, 33.786076, 39.883961>,  <39.034782, 33.739113, 39.663670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117641, 33.786076, 39.883961>,  <39.255741, 33.864346, 40.251114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117641, 33.786076, 39.883961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115683, 0.961693, -0.248524,
		0.931354, -0.191987, -0.309388,
		-0.345250, -0.195673, -0.917886,
		39.014065, 33.727375, 39.608597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653023, 34.134933, 39.787563>,  <39.255741, 33.864346, 40.251114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653023, 34.134933, 39.787563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320683, 34.097141, 39.568195>,  <39.121281, 34.074467, 39.436573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320683, 34.097141, 39.568195>,  <39.653023, 34.134933, 39.787563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320683, 34.097141, 39.568195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148311, 0.912245, -0.381854,
		0.536373, -0.398599, -0.743924,
		-0.830848, -0.094484, -0.548420,
		39.071426, 34.068794, 39.403667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830395, 34.346775, 39.103943>,  <39.653023, 34.134933, 39.787563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830395, 34.346775, 39.103943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432663, 34.386059, 39.120285>,  <39.194023, 34.409630, 39.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432663, 34.386059, 39.120285>,  <39.830395, 34.346775, 39.103943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432663, 34.386059, 39.120285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074487, 0.917089, -0.391662,
		-0.075930, -0.386397, -0.919202,
		-0.994327, 0.098208, 0.040853,
		39.134365, 34.415520, 39.132542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685062, 34.695160, 38.411823>,  <39.830395, 34.346775, 39.103943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685062, 34.695160, 38.411823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348595, 34.738461, 38.623753>,  <39.146713, 34.764439, 38.750912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348595, 34.738461, 38.623753>,  <39.685062, 34.695160, 38.411823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348595, 34.738461, 38.623753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181918, 0.866014, -0.465754,
		-0.509252, -0.488163, -0.708773,
		-0.841171, 0.108248, 0.529825,
		39.096245, 34.770935, 38.782700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266193, 35.072620, 37.903240>,  <39.685062, 34.695160, 38.411823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266193, 35.072620, 37.903240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069260, 35.134880, 38.245792>,  <38.951099, 35.172234, 38.451324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069260, 35.134880, 38.245792>,  <39.266193, 35.072620, 37.903240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069260, 35.134880, 38.245792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150888, 0.953724, -0.260085,
		-0.857230, -0.257265, -0.446062,
		-0.492330, 0.155647, 0.856379,
		38.921562, 35.181576, 38.502705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694313, 34.718044, 37.365963>,  <39.266193, 35.072620, 37.903240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694313, 34.718044, 37.365963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815449, 34.505104, 37.049763>,  <39.888130, 34.377342, 36.860043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815449, 34.505104, 37.049763>,  <39.694313, 34.718044, 37.365963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815449, 34.505104, 37.049763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133718, 0.797512, -0.588298,
		0.943613, 0.283866, 0.170336,
		0.302842, -0.532348, -0.790501,
		39.906300, 34.345398, 36.812611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263771, 34.999630, 37.017811>,  <39.694313, 34.718044, 37.365963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263771, 34.999630, 37.017811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021866, 34.807037, 36.764057>,  <39.876720, 34.691483, 36.611805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021866, 34.807037, 36.764057>,  <40.263771, 34.999630, 37.017811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021866, 34.807037, 36.764057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148230, 0.850687, -0.504340,
		0.782487, -0.210974, -0.585837,
		-0.604766, -0.481478, -0.634379,
		39.840435, 34.662594, 36.573742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857758, 35.289146, 37.243629>,  <40.263771, 34.999630, 37.017811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857758, 35.289146, 37.243629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672600, 35.563763, 37.467911>,  <40.561504, 35.728531, 37.602478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672600, 35.563763, 37.467911>,  <40.857758, 35.289146, 37.243629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672600, 35.563763, 37.467911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802360, 0.055667, 0.594239,
		0.376758, 0.724956, -0.576621,
		-0.462896, 0.686542, 0.560703,
		40.533730, 35.769726, 37.636120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350384, 35.869801, 37.397972>,  <40.857758, 35.289146, 37.243629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350384, 35.869801, 37.397972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081406, 35.757755, 37.672009>,  <40.920017, 35.690529, 37.836430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081406, 35.757755, 37.672009>,  <41.350384, 35.869801, 37.397972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081406, 35.757755, 37.672009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738695, -0.196101, 0.644883,
		-0.046297, 0.939723, 0.338789,
		-0.672448, -0.280118, 0.685090,
		40.879673, 35.673721, 37.877537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974628, 35.467930, 37.241890>,  <41.350384, 35.869801, 37.397972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974628, 35.467930, 37.241890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240353, 35.417137, 36.947254>,  <42.399788, 35.386662, 36.770473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240353, 35.417137, 36.947254>,  <41.974628, 35.467930, 37.241890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240353, 35.417137, 36.947254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090673, -0.991876, 0.089216,
		-0.741938, 0.007522, -0.670427,
		0.664309, -0.126982, -0.736592,
		42.439644, 35.379044, 36.726276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062332, 36.012123, 36.786846>,  <41.974628, 35.467930, 37.241890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062332, 36.012123, 36.786846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272945, 36.029678, 37.126457>,  <42.399311, 36.040211, 37.330223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272945, 36.029678, 37.126457>,  <42.062332, 36.012123, 36.786846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272945, 36.029678, 37.126457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850154, -0.030015, -0.525678,
		0.002411, 0.998585, -0.053117,
		0.526529, 0.043890, 0.849024,
		42.430904, 36.042847, 37.381165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646358, 36.569805, 36.876305>,  <42.062332, 36.012123, 36.786846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646358, 36.569805, 36.876305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746353, 36.241421, 37.081646>,  <42.806351, 36.044392, 37.204849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746353, 36.241421, 37.081646>,  <42.646358, 36.569805, 36.876305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746353, 36.241421, 37.081646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802944, -0.120523, -0.583742,
		0.541100, 0.558120, 0.629057,
		0.249982, -0.820961, 0.513354,
		42.821346, 35.995132, 37.235653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301914, 36.577435, 36.977261>,  <42.646358, 36.569805, 36.876305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301914, 36.577435, 36.977261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234856, 36.184841, 37.014313>,  <43.194622, 35.949284, 37.036545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234856, 36.184841, 37.014313>,  <43.301914, 36.577435, 36.977261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234856, 36.184841, 37.014313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908417, -0.190298, -0.372244,
		0.382980, 0.021743, 0.923501,
		-0.167647, -0.981486, 0.092632,
		43.184563, 35.890396, 37.042103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757942, 36.282795, 37.449100>,  <43.301914, 36.577435, 36.977261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757942, 36.282795, 37.449100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658039, 36.032600, 37.153427>,  <43.598095, 35.882484, 36.976025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658039, 36.032600, 37.153427>,  <43.757942, 36.282795, 37.449100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658039, 36.032600, 37.153427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928398, 0.062216, -0.366341,
		0.275130, -0.777750, 0.565162,
		-0.249760, -0.625487, -0.739179,
		43.583111, 35.844955, 36.931675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320503, 35.693024, 37.335129>,  <43.757942, 36.282795, 37.449100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320503, 35.693024, 37.335129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142609, 35.755318, 36.982319>,  <44.035873, 35.792694, 36.770634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142609, 35.755318, 36.982319>,  <44.320503, 35.693024, 37.335129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142609, 35.755318, 36.982319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891695, -0.015619, -0.452368,
		-0.084225, -0.987676, -0.131920,
		-0.444732, 0.155733, -0.882021,
		44.009190, 35.802036, 36.717712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540176, 35.185787, 36.938847>,  <44.320503, 35.693024, 37.335129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540176, 35.185787, 36.938847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438869, 35.502911, 36.717106>,  <44.378086, 35.693184, 36.584061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438869, 35.502911, 36.717106>,  <44.540176, 35.185787, 36.938847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438869, 35.502911, 36.717106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873792, -0.058434, -0.482776,
		-0.415143, -0.606661, -0.677951,
		-0.253266, 0.792810, -0.554355,
		44.362888, 35.740753, 36.550800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560459, 35.136944, 36.080879>,  <44.540176, 35.185787, 36.938847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560459, 35.136944, 36.080879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635483, 35.486877, 36.259533>,  <44.680496, 35.696838, 36.366726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635483, 35.486877, 36.259533>,  <44.560459, 35.136944, 36.080879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635483, 35.486877, 36.259533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929517, -0.011092, -0.368612,
		-0.317520, 0.484294, -0.815255,
		0.187559, 0.874835, 0.446637,
		44.691750, 35.749329, 36.393524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759563, 35.748619, 35.730354>,  <44.560459, 35.136944, 36.080879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759563, 35.748619, 35.730354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900074, 35.731464, 36.104469>,  <44.984383, 35.721172, 36.328938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900074, 35.731464, 36.104469>,  <44.759563, 35.748619, 35.730354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900074, 35.731464, 36.104469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898750, -0.264514, -0.349687,
		0.262395, 0.963427, -0.054371,
		0.351280, -0.042890, 0.935287,
		45.005459, 35.718597, 36.385056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188080, 36.302250, 35.860672>,  <44.759563, 35.748619, 35.730354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188080, 36.302250, 35.860672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275917, 35.962357, 36.052395>,  <45.328621, 35.758423, 36.167427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275917, 35.962357, 36.052395>,  <45.188080, 36.302250, 35.860672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275917, 35.962357, 36.052395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954282, 0.084963, -0.286577,
		0.202790, 0.520325, 0.829541,
		0.219593, -0.849731, 0.479307,
		45.341797, 35.707436, 36.196186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871723, 36.308979, 35.939461>,  <45.188080, 36.302250, 35.860672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871723, 36.308979, 35.939461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838192, 35.914597, 35.997234>,  <45.818073, 35.677967, 36.031898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838192, 35.914597, 35.997234>,  <45.871723, 36.308979, 35.939461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838192, 35.914597, 35.997234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863173, -0.144271, -0.483857,
		0.497900, 0.084108, 0.863146,
		-0.083831, -0.985957, 0.144432,
		45.813042, 35.618809, 36.040565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537720, 36.088734, 35.857559>,  <45.871723, 36.308979, 35.939461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537720, 36.088734, 35.857559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331158, 35.746273, 35.850327>,  <46.207222, 35.540794, 35.845989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331158, 35.746273, 35.850327>,  <46.537720, 36.088734, 35.857559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331158, 35.746273, 35.850327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808082, -0.480206, -0.341183,
		0.283424, -0.190797, 0.939823,
		-0.516405, -0.856154, -0.018078,
		46.176235, 35.489426, 35.844902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831871, 35.626987, 36.231178>,  <46.537720, 36.088734, 35.857559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831871, 35.626987, 36.231178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622116, 35.442364, 35.944965>,  <46.496265, 35.331589, 35.773239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622116, 35.442364, 35.944965>,  <46.831871, 35.626987, 36.231178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622116, 35.442364, 35.944965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842110, -0.405459, -0.355604,
		-0.125988, -0.789031, 0.601296,
		-0.524383, -0.461556, -0.715534,
		46.464802, 35.303898, 35.730305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748631, 34.784817, 36.331642>,  <46.831871, 35.626987, 36.231178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748631, 34.784817, 36.331642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776768, 34.964634, 35.975449>,  <46.793652, 35.072525, 35.761734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776768, 34.964634, 35.975449>,  <46.748631, 34.784817, 36.331642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776768, 34.964634, 35.975449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869327, -0.465425, -0.166287,
		-0.489207, -0.762425, -0.423538,
		0.070344, 0.449542, -0.890485,
		46.797871, 35.099495, 35.708302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.836800, 34.335499, 35.613003>,  <46.748631, 34.784817, 36.331642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.836800, 34.335499, 35.613003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005962, 34.697964, 35.611118>,  <47.107460, 34.915443, 35.609989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005962, 34.697964, 35.611118>,  <46.836800, 34.335499, 35.613003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.005962, 34.697964, 35.611118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841362, -0.394581, -0.369347,
		-0.336547, 0.152233, -0.929280,
		0.422903, 0.906163, -0.004712,
		47.132832, 34.969814, 35.609703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022472, 34.681843, 34.868458>,  <46.836800, 34.335499, 35.613003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022472, 34.681843, 34.868458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.272964, 34.801899, 35.156277>,  <47.423260, 34.873932, 35.328968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.272964, 34.801899, 35.156277>,  <47.022472, 34.681843, 34.868458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.272964, 34.801899, 35.156277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704926, -0.612225, -0.358134,
		0.333035, 0.731503, -0.594972,
		0.626233, 0.300140, 0.719548,
		47.460835, 34.891941, 35.372143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.724739, 34.954468, 34.567459>,  <47.022472, 34.681843, 34.868458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.724739, 34.954468, 34.567459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773544, 34.827393, 34.943584>,  <47.802826, 34.751148, 35.169258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773544, 34.827393, 34.943584>,  <47.724739, 34.954468, 34.567459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.773544, 34.827393, 34.943584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750434, -0.590518, -0.296881,
		0.649587, 0.741864, 0.166355,
		0.122010, -0.317689, 0.940312,
		47.810146, 34.732086, 35.225677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.536812, 39.336529, 29.697695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181797, 39.175640, 29.607813>,  <33.968788, 39.079109, 29.553885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181797, 39.175640, 29.607813>,  <34.536812, 39.336529, 29.697695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181797, 39.175640, 29.607813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230320, -0.809738, 0.539701,
		-0.399029, 0.427253, 0.811314,
		-0.887541, -0.402219, -0.224704,
		33.915535, 39.054974, 29.540401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096451, 39.230560, 30.367840>,  <34.536812, 39.336529, 29.697695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096451, 39.230560, 30.367840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978989, 38.985294, 30.074501>,  <33.908512, 38.838135, 29.898499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978989, 38.985294, 30.074501>,  <34.096451, 39.230560, 30.367840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978989, 38.985294, 30.074501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026370, -0.772074, 0.634986,
		-0.955547, 0.167129, 0.242893,
		-0.293656, -0.613164, -0.733346,
		33.890892, 38.801346, 29.854498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597939, 38.891003, 30.622992>,  <34.096451, 39.230560, 30.367840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597939, 38.891003, 30.622992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735172, 38.656490, 30.329443>,  <33.817513, 38.515785, 30.153313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735172, 38.656490, 30.329443>,  <33.597939, 38.891003, 30.622992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735172, 38.656490, 30.329443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089996, -0.757183, 0.646974,
		-0.934982, -0.288014, -0.207016,
		0.343087, -0.586278, -0.733873,
		33.838097, 38.480606, 30.109282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307545, 38.357311, 30.717756>,  <33.597939, 38.891003, 30.622992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307545, 38.357311, 30.717756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562347, 38.192986, 30.456850>,  <33.715229, 38.094391, 30.300306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562347, 38.192986, 30.456850>,  <33.307545, 38.357311, 30.717756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562347, 38.192986, 30.456850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037986, -0.861858, 0.505725,
		-0.769921, -0.297373, -0.564615,
		0.637008, -0.410816, -0.652267,
		33.753448, 38.069740, 30.261169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074043, 37.686825, 30.707170>,  <33.307545, 38.357311, 30.717756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074043, 37.686825, 30.707170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.445515, 37.687557, 30.558819>,  <33.668396, 37.687996, 30.469809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.445515, 37.687557, 30.558819>,  <33.074043, 37.686825, 30.707170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445515, 37.687557, 30.558819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205703, -0.834623, 0.510971,
		-0.308609, -0.550819, -0.775473,
		0.928680, 0.001828, -0.370877,
		33.724117, 37.688107, 30.447556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131542, 37.091961, 30.489470>,  <33.074043, 37.686825, 30.707170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131542, 37.091961, 30.489470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510372, 37.207394, 30.545696>,  <33.737671, 37.276653, 30.579433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510372, 37.207394, 30.545696>,  <33.131542, 37.091961, 30.489470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510372, 37.207394, 30.545696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114486, -0.712779, 0.691982,
		0.299891, -0.639268, -0.708097,
		0.947079, 0.288587, 0.140569,
		33.794495, 37.293968, 30.587868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554146, 36.459946, 30.588638>,  <33.131542, 37.091961, 30.489470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554146, 36.459946, 30.588638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779659, 36.747326, 30.751596>,  <33.914967, 36.919754, 30.849371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779659, 36.747326, 30.751596>,  <33.554146, 36.459946, 30.588638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779659, 36.747326, 30.751596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245305, -0.616664, 0.748032,
		0.788650, -0.321795, -0.523907,
		0.563788, 0.718452, 0.407394,
		33.948795, 36.962860, 30.873816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258015, 36.214355, 30.581917>,  <33.554146, 36.459946, 30.588638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258015, 36.214355, 30.581917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253490, 36.490353, 30.871408>,  <34.250774, 36.655949, 31.045103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253490, 36.490353, 30.871408>,  <34.258015, 36.214355, 30.581917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253490, 36.490353, 30.871408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445815, -0.644381, 0.621307,
		0.895054, 0.329677, -0.300319,
		-0.011311, 0.689990, 0.723731,
		34.250095, 36.697350, 31.088528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886936, 36.036560, 30.993372>,  <34.258015, 36.214355, 30.581917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886936, 36.036560, 30.993372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641678, 36.265053, 31.211634>,  <34.494522, 36.402149, 31.342590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641678, 36.265053, 31.211634>,  <34.886936, 36.036560, 30.993372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641678, 36.265053, 31.211634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303295, -0.467569, 0.830296,
		0.729423, 0.674591, 0.113438,
		-0.613150, 0.571232, 0.545657,
		34.457733, 36.436420, 31.375330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251873, 36.162582, 31.478077>,  <34.886936, 36.036560, 30.993372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251873, 36.162582, 31.478077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885918, 36.225540, 31.626785>,  <34.666344, 36.263313, 31.716011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885918, 36.225540, 31.626785>,  <35.251873, 36.162582, 31.478077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885918, 36.225540, 31.626785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330045, -0.238741, 0.913276,
		0.232503, 0.958243, 0.166473,
		-0.914884, 0.157396, 0.371771,
		34.611454, 36.272758, 31.738317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423527, 36.664284, 32.037514>,  <35.251873, 36.162582, 31.478077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423527, 36.664284, 32.037514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071896, 36.483562, 32.098309>,  <34.860916, 36.375130, 32.134785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071896, 36.483562, 32.098309>,  <35.423527, 36.664284, 32.037514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071896, 36.483562, 32.098309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276786, -0.224194, 0.934412,
		-0.388097, 0.863486, 0.322137,
		-0.879073, -0.451806, 0.151992,
		34.808174, 36.348022, 32.143906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193493, 36.756210, 32.837444>,  <35.423527, 36.664284, 32.037514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193493, 36.756210, 32.837444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.973484, 36.452709, 32.697865>,  <34.841480, 36.270607, 32.614117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.973484, 36.452709, 32.697865>,  <35.193493, 36.756210, 32.837444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973484, 36.452709, 32.697865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071608, -0.373442, 0.924886,
		-0.832075, 0.533694, 0.151068,
		-0.550021, -0.758757, -0.348949,
		34.808479, 36.225082, 32.593182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669765, 36.697632, 33.421017>,  <35.193493, 36.756210, 32.837444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669765, 36.697632, 33.421017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717564, 36.360508, 33.211105>,  <34.746243, 36.158234, 33.085159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717564, 36.360508, 33.211105>,  <34.669765, 36.697632, 33.421017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717564, 36.360508, 33.211105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068870, -0.520258, 0.851228,
		-0.990443, -0.137862, -0.004126,
		0.119499, -0.842808, -0.524780,
		34.753414, 36.107666, 33.053673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294849, 36.268497, 33.774117>,  <34.669765, 36.697632, 33.421017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294849, 36.268497, 33.774117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535053, 36.026936, 33.564472>,  <34.679176, 35.882000, 33.438686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535053, 36.026936, 33.564472>,  <34.294849, 36.268497, 33.774117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535053, 36.026936, 33.564472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236161, -0.492266, 0.837796,
		-0.763950, -0.626877, -0.152990,
		0.600506, -0.603904, -0.524110,
		34.715206, 35.845764, 33.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195866, 35.594406, 34.033428>,  <34.294849, 36.268497, 33.774117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195866, 35.594406, 34.033428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555302, 35.601147, 33.858040>,  <34.770962, 35.605190, 33.752808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555302, 35.601147, 33.858040>,  <34.195866, 35.594406, 34.033428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555302, 35.601147, 33.858040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369265, -0.568823, 0.734904,
		-0.237026, -0.822287, -0.517361,
		0.898589, 0.016852, -0.438468,
		34.824879, 35.606201, 33.726498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366562, 34.877098, 34.043377>,  <34.195866, 35.594406, 34.033428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366562, 34.877098, 34.043377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704540, 35.082726, 33.984306>,  <34.907326, 35.206100, 33.948864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704540, 35.082726, 33.984306>,  <34.366562, 34.877098, 34.043377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704540, 35.082726, 33.984306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463936, -0.567022, 0.680624,
		0.266149, -0.643601, -0.717595,
		0.844943, 0.514066, -0.147677,
		34.958023, 35.236946, 33.940002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949478, 34.306705, 34.103912>,  <34.366562, 34.877098, 34.043377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949478, 34.306705, 34.103912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125710, 34.664101, 34.138729>,  <35.231449, 34.878536, 34.159618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125710, 34.664101, 34.138729>,  <34.949478, 34.306705, 34.103912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125710, 34.664101, 34.138729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657416, -0.387146, 0.646469,
		0.611308, -0.227598, -0.757959,
		0.440576, 0.893486, 0.087039,
		35.257881, 34.932148, 34.164841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639816, 34.144108, 33.878887>,  <34.949478, 34.306705, 34.103912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639816, 34.144108, 33.878887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673985, 34.473251, 34.103603>,  <35.694485, 34.670738, 34.238434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673985, 34.473251, 34.103603>,  <35.639816, 34.144108, 33.878887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673985, 34.473251, 34.103603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851733, -0.352867, 0.387345,
		0.516967, 0.445405, -0.730999,
		0.085420, 0.822860, 0.561787,
		35.699612, 34.720108, 34.272141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370453, 34.296741, 33.902218>,  <35.639816, 34.144108, 33.878887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370453, 34.296741, 33.902218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210136, 34.499786, 34.207294>,  <36.113945, 34.621613, 34.390339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210136, 34.499786, 34.207294>,  <36.370453, 34.296741, 33.902218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210136, 34.499786, 34.207294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749683, -0.296814, 0.591504,
		0.526633, 0.808844, -0.261591,
		-0.400791, 0.507616, 0.762688,
		36.089901, 34.652073, 34.436100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946293, 34.729656, 34.235565>,  <36.370453, 34.296741, 33.902218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946293, 34.729656, 34.235565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677097, 34.680714, 34.527351>,  <36.515579, 34.651348, 34.702423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677097, 34.680714, 34.527351>,  <36.946293, 34.729656, 34.235565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677097, 34.680714, 34.527351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731337, -0.257570, 0.631509,
		0.110618, 0.958481, 0.262827,
		-0.672986, -0.122359, 0.729465,
		36.475201, 34.644005, 34.746189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217709, 35.108162, 34.884613>,  <36.946293, 34.729656, 34.235565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217709, 35.108162, 34.884613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936848, 34.869839, 35.040562>,  <36.768333, 34.726845, 35.134132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936848, 34.869839, 35.040562>,  <37.217709, 35.108162, 34.884613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936848, 34.869839, 35.040562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645281, -0.300996, 0.702149,
		-0.300996, 0.744591, 0.595807,
		-0.702149, -0.595807, 0.389872,
		36.726204, 34.691097, 35.157524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389561, 35.140152, 35.592545>,  <37.217709, 35.108162, 34.884613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389561, 35.140152, 35.592545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138073, 34.829479, 35.577179>,  <36.987179, 34.643074, 35.567959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138073, 34.829479, 35.577179>,  <37.389561, 35.140152, 35.592545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138073, 34.829479, 35.577179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485451, -0.430596, 0.760871,
		-0.607495, 0.459728, 0.647766,
		-0.628719, -0.776684, -0.038409,
		36.949459, 34.596474, 35.565655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567898, 35.391361, 36.246876>,  <37.389561, 35.140152, 35.592545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567898, 35.391361, 36.246876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938690, 35.529869, 36.304565>,  <38.161167, 35.612972, 36.339180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938690, 35.529869, 36.304565>,  <37.567898, 35.391361, 36.246876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938690, 35.529869, 36.304565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064104, 0.525078, -0.848636,
		-0.369581, 0.777428, 0.508936,
		0.926985, 0.346265, 0.144222,
		38.216785, 35.633747, 36.347832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621540, 36.095554, 36.205238>,  <37.567898, 35.391361, 36.246876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621540, 36.095554, 36.205238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987415, 35.973530, 36.099201>,  <38.206940, 35.900314, 36.035580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987415, 35.973530, 36.099201>,  <37.621540, 36.095554, 36.205238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987415, 35.973530, 36.099201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018789, 0.623117, -0.781903,
		0.403716, 0.720181, 0.564228,
		0.914691, -0.305066, -0.265094,
		38.261822, 35.882011, 36.019672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964634, 36.770241, 36.164719>,  <37.621540, 36.095554, 36.205238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964634, 36.770241, 36.164719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210655, 36.524639, 35.966846>,  <38.358269, 36.377277, 35.848125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210655, 36.524639, 35.966846>,  <37.964634, 36.770241, 36.164719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210655, 36.524639, 35.966846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107804, 0.686970, -0.718645,
		0.781080, 0.388678, 0.488717,
		0.615055, -0.614004, -0.494678,
		38.395172, 36.340439, 35.818443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606079, 37.126717, 36.092159>,  <37.964634, 36.770241, 36.164719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606079, 37.126717, 36.092159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546806, 36.853996, 35.805611>,  <38.511242, 36.690365, 35.633682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546806, 36.853996, 35.805611>,  <38.606079, 37.126717, 36.092159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546806, 36.853996, 35.805611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118110, 0.731386, -0.671658,
		0.981882, -0.014916, -0.188904,
		-0.148180, -0.681801, -0.716373,
		38.502354, 36.649456, 35.590698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787670, 37.367725, 35.532169>,  <38.606079, 37.126717, 36.092159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787670, 37.367725, 35.532169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570675, 37.072369, 35.371929>,  <38.440479, 36.895153, 35.275784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570675, 37.072369, 35.371929>,  <38.787670, 37.367725, 35.532169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570675, 37.072369, 35.371929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224018, 0.586756, -0.778160,
		0.809647, -0.332396, -0.483719,
		-0.542483, -0.738397, -0.400603,
		38.407928, 36.850849, 35.251747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104637, 37.277622, 34.899181>,  <38.787670, 37.367725, 35.532169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104637, 37.277622, 34.899181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730583, 37.147446, 34.843159>,  <38.506153, 37.069340, 34.809547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730583, 37.147446, 34.843159>,  <39.104637, 37.277622, 34.899181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730583, 37.147446, 34.843159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039845, 0.489388, -0.871155,
		0.352051, -0.809065, -0.470610,
		-0.935132, -0.325442, -0.140052,
		38.450043, 37.049812, 34.801144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982197, 37.150742, 34.115585>,  <39.104637, 37.277622, 34.899181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982197, 37.150742, 34.115585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621212, 37.186436, 34.284157>,  <38.404621, 37.207851, 34.385300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621212, 37.186436, 34.284157>,  <38.982197, 37.150742, 34.115585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621212, 37.186436, 34.284157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297907, 0.577364, -0.760199,
		-0.311156, -0.811596, -0.494463,
		-0.902459, 0.089236, 0.421431,
		38.350475, 37.213207, 34.410587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571091, 36.817863, 33.560421>,  <38.982197, 37.150742, 34.115585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571091, 36.817863, 33.560421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335953, 37.047371, 33.788536>,  <38.194870, 37.185078, 33.925404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335953, 37.047371, 33.788536>,  <38.571091, 36.817863, 33.560421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335953, 37.047371, 33.788536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432642, 0.372691, -0.820928,
		-0.683566, -0.729306, 0.029154,
		-0.587842, 0.573771, 0.570287,
		38.159599, 37.219501, 33.959621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815327, 36.727184, 33.335823>,  <38.571091, 36.817863, 33.560421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815327, 36.727184, 33.335823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837273, 37.084812, 33.513645>,  <37.850441, 37.299389, 33.620338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837273, 37.084812, 33.513645>,  <37.815327, 36.727184, 33.335823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837273, 37.084812, 33.513645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418607, 0.424805, -0.802689,
		-0.906509, -0.142054, 0.397571,
		0.054865, 0.894070, 0.444554,
		37.853733, 37.353035, 33.647011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151501, 37.020504, 33.299496>,  <37.815327, 36.727184, 33.335823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151501, 37.020504, 33.299496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412724, 37.321152, 33.336552>,  <37.569458, 37.501541, 33.358788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412724, 37.321152, 33.336552>,  <37.151501, 37.020504, 33.299496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412724, 37.321152, 33.336552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526888, 0.538818, -0.657316,
		-0.543967, 0.380455, 0.747900,
		0.653061, 0.751618, 0.092642,
		37.608643, 37.546638, 33.364346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735271, 37.536972, 33.180614>,  <37.151501, 37.020504, 33.299496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735271, 37.536972, 33.180614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093140, 37.714054, 33.156689>,  <37.307861, 37.820301, 33.142334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093140, 37.714054, 33.156689>,  <36.735271, 37.536972, 33.180614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093140, 37.714054, 33.156689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383064, 0.691386, -0.612574,
		-0.229836, 0.570964, 0.788147,
		0.894672, 0.442702, -0.059810,
		37.361542, 37.846867, 33.138744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589134, 38.223705, 33.293449>,  <36.735271, 37.536972, 33.180614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589134, 38.223705, 33.293449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951546, 38.219547, 33.124210>,  <37.168991, 38.217052, 33.022667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951546, 38.219547, 33.124210>,  <36.589134, 38.223705, 33.293449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951546, 38.219547, 33.124210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282480, 0.729581, -0.622829,
		0.315156, 0.683815, 0.658083,
		0.906025, -0.010393, -0.423096,
		37.223354, 38.216431, 32.997280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843090, 38.995300, 33.271675>,  <36.589134, 38.223705, 33.293449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843090, 38.995300, 33.271675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056107, 38.788132, 33.003899>,  <37.183918, 38.663830, 32.843231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056107, 38.788132, 33.003899>,  <36.843090, 38.995300, 33.271675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056107, 38.788132, 33.003899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104203, 0.744793, -0.659109,
		0.839966, 0.420761, 0.342663,
		0.532540, -0.517923, -0.669445,
		37.215870, 38.632755, 32.803066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327492, 39.477371, 32.952827>,  <36.843090, 38.995300, 33.271675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327492, 39.477371, 32.952827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283573, 39.166843, 32.704548>,  <37.257221, 38.980526, 32.555580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283573, 39.166843, 32.704548>,  <37.327492, 39.477371, 32.952827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283573, 39.166843, 32.704548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080495, 0.629367, -0.772928,
		0.990690, -0.034899, -0.131590,
		-0.109792, -0.776324, -0.620698,
		37.250637, 38.933945, 32.518337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785683, 39.726837, 32.365063>,  <37.327492, 39.477371, 32.952827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785683, 39.726837, 32.365063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536049, 39.441330, 32.237907>,  <37.386269, 39.270023, 32.161613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536049, 39.441330, 32.237907>,  <37.785683, 39.726837, 32.365063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536049, 39.441330, 32.237907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059157, 0.448835, -0.891654,
		0.779117, -0.537658, -0.322334,
		-0.624080, -0.713772, -0.317889,
		37.348824, 39.227200, 32.142540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976284, 39.576248, 31.666208>,  <37.785683, 39.726837, 32.365063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976284, 39.576248, 31.666208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601074, 39.439945, 31.691498>,  <37.375950, 39.358162, 31.706673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601074, 39.439945, 31.691498>,  <37.976284, 39.576248, 31.666208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601074, 39.439945, 31.691498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198499, 0.378692, -0.903986,
		0.284095, -0.860510, -0.422862,
		-0.938023, -0.340756, 0.063226,
		37.319668, 39.337719, 31.710466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951210, 39.503197, 30.917057>,  <37.976284, 39.576248, 31.666208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951210, 39.503197, 30.917057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586151, 39.469193, 31.076981>,  <37.367115, 39.448792, 31.172934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586151, 39.469193, 31.076981>,  <37.951210, 39.503197, 30.917057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586151, 39.469193, 31.076981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399685, 0.390411, -0.829356,
		-0.085587, -0.916708, -0.390284,
		-0.912648, -0.085009, 0.399808,
		37.312355, 39.443691, 31.196922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472084, 39.001900, 30.468937>,  <37.951210, 39.503197, 30.917057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472084, 39.001900, 30.468937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243744, 39.253269, 30.680302>,  <37.106739, 39.404091, 30.807121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243744, 39.253269, 30.680302>,  <37.472084, 39.001900, 30.468937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243744, 39.253269, 30.680302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496852, 0.247971, -0.831654,
		-0.653659, -0.737291, 0.170678,
		-0.570848, 0.628420, 0.528413,
		37.072491, 39.441795, 30.838825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.414108, 39.091846, 30.116497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509491, 39.380978, 30.375931>,  <36.566719, 39.554455, 30.531591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509491, 39.380978, 30.375931>,  <36.414108, 39.091846, 30.116497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509491, 39.380978, 30.375931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714843, 0.582707, -0.386591,
		-0.657372, -0.371450, 0.655657,
		0.238457, 0.722827, 0.648583,
		36.581028, 39.597824, 30.570505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762035, 39.287525, 30.346006>,  <36.414108, 39.091846, 30.116497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762035, 39.287525, 30.346006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.066536, 39.545410, 30.373831>,  <36.249237, 39.700142, 30.390526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.066536, 39.545410, 30.373831>,  <35.762035, 39.287525, 30.346006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066536, 39.545410, 30.373831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534126, 0.684252, -0.496496,
		-0.367693, 0.340805, 0.865247,
		0.761256, 0.644709, 0.069562,
		36.294914, 39.738823, 30.394699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531437, 39.922779, 30.656202>,  <35.762035, 39.287525, 30.346006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531437, 39.922779, 30.656202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.847183, 40.014046, 30.428223>,  <36.036633, 40.068806, 30.291435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.847183, 40.014046, 30.428223>,  <35.531437, 39.922779, 30.656202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847183, 40.014046, 30.428223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528336, 0.725289, -0.441380,
		0.312672, 0.649536, 0.693066,
		0.789365, 0.228164, -0.569951,
		36.083992, 40.082497, 30.257236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441998, 40.627659, 30.589136>,  <35.531437, 39.922779, 30.656202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441998, 40.627659, 30.589136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723724, 40.561901, 30.312901>,  <35.892761, 40.522446, 30.147160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723724, 40.561901, 30.312901>,  <35.441998, 40.627659, 30.589136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723724, 40.561901, 30.312901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365448, 0.750039, -0.551261,
		0.608595, 0.640636, 0.468185,
		0.704315, -0.164398, -0.690589,
		35.935020, 40.512581, 30.105724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739403, 41.298847, 30.370764>,  <35.441998, 40.627659, 30.589136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739403, 41.298847, 30.370764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811859, 41.029530, 30.084026>,  <35.855331, 40.867939, 29.911983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811859, 41.029530, 30.084026>,  <35.739403, 41.298847, 30.370764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811859, 41.029530, 30.084026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406245, 0.612580, -0.678020,
		0.895630, 0.414032, -0.162558,
		0.181142, -0.673293, -0.716843,
		35.866203, 40.827541, 29.868973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063622, 41.689419, 29.918991>,  <35.739403, 41.298847, 30.370764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063622, 41.689419, 29.918991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933529, 41.369144, 29.717745>,  <35.855473, 41.176979, 29.596996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933529, 41.369144, 29.717745>,  <36.063622, 41.689419, 29.918991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933529, 41.369144, 29.717745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320791, 0.593911, -0.737809,
		0.889560, -0.078563, -0.450012,
		-0.325232, -0.800686, -0.503117,
		35.835960, 41.128941, 29.566811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257809, 41.702579, 29.080164>,  <36.063622, 41.689419, 29.918991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257809, 41.702579, 29.080164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928066, 41.482494, 29.133379>,  <35.730221, 41.350445, 29.165308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928066, 41.482494, 29.133379>,  <36.257809, 41.702579, 29.080164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928066, 41.482494, 29.133379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381103, 0.365674, -0.849143,
		0.418558, -0.750701, -0.511134,
		-0.824360, -0.550210, 0.133039,
		35.680759, 41.317432, 29.173290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154152, 41.646496, 28.463335>,  <36.257809, 41.702579, 29.080164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154152, 41.646496, 28.463335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814346, 41.540375, 28.645741>,  <35.610462, 41.476704, 28.755184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814346, 41.540375, 28.645741>,  <36.154152, 41.646496, 28.463335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814346, 41.540375, 28.645741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522976, 0.309651, -0.794111,
		0.069474, -0.913089, -0.401798,
		-0.849511, -0.265300, 0.456012,
		35.559494, 41.460785, 28.782543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791294, 41.573471, 27.853464>,  <36.154152, 41.646496, 28.463335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791294, 41.573471, 27.853464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516537, 41.576813, 28.144146>,  <35.351681, 41.578819, 28.318556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516537, 41.576813, 28.144146>,  <35.791294, 41.573471, 27.853464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516537, 41.576813, 28.144146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618013, 0.519429, -0.590130,
		-0.382403, -0.854473, -0.351630,
		-0.686897, 0.008355, 0.726707,
		35.310467, 41.579319, 28.362158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145542, 41.472851, 27.562191>,  <35.791294, 41.573471, 27.853464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145542, 41.472851, 27.562191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053150, 41.640759, 27.913290>,  <34.997715, 41.741505, 28.123949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053150, 41.640759, 27.913290>,  <35.145542, 41.472851, 27.562191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053150, 41.640759, 27.913290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721936, 0.530856, -0.443848,
		-0.652272, -0.736197, 0.180430,
		-0.230977, 0.419769, 0.877749,
		34.983856, 41.766689, 28.176615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415241, 41.536449, 27.562841>,  <35.145542, 41.472851, 27.562191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415241, 41.536449, 27.562841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566071, 41.803852, 27.819252>,  <34.656570, 41.964294, 27.973099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566071, 41.803852, 27.819252>,  <34.415241, 41.536449, 27.562841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566071, 41.803852, 27.819252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599537, 0.703724, -0.381219,
		-0.705953, -0.240572, 0.666150,
		0.377075, 0.668504, 0.641028,
		34.679192, 42.004402, 28.011560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837200, 41.939369, 27.651985>,  <34.415241, 41.536449, 27.562841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837200, 41.939369, 27.651985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109921, 42.176849, 27.822943>,  <34.273552, 42.319336, 27.925518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109921, 42.176849, 27.822943>,  <33.837200, 41.939369, 27.651985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109921, 42.176849, 27.822943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453890, 0.801507, -0.389320,
		-0.573700, 0.071447, 0.815943,
		0.681800, 0.593701, 0.427396,
		34.314461, 42.354961, 27.951162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464008, 42.440643, 28.065592>,  <33.837200, 41.939369, 27.651985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464008, 42.440643, 28.065592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823196, 42.599892, 27.990601>,  <34.038708, 42.695442, 27.945606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823196, 42.599892, 27.990601>,  <33.464008, 42.440643, 28.065592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823196, 42.599892, 27.990601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434788, 0.868391, -0.238447,
		0.067874, 0.295632, 0.952888,
		0.897971, 0.398120, -0.187478,
		34.092587, 42.719326, 27.934357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408405, 43.023380, 28.466896>,  <33.464008, 42.440643, 28.065592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408405, 43.023380, 28.466896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698013, 43.096550, 28.200861>,  <33.871777, 43.140450, 28.041241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698013, 43.096550, 28.200861>,  <33.408405, 43.023380, 28.466896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698013, 43.096550, 28.200861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498400, 0.805299, -0.321078,
		0.476862, 0.563945, 0.674217,
		0.724016, 0.182919, -0.665087,
		33.915218, 43.151424, 28.001335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491074, 43.690918, 28.461477>,  <33.408405, 43.023380, 28.466896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491074, 43.690918, 28.461477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.650639, 43.622856, 28.101051>,  <33.746376, 43.582020, 27.884796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.650639, 43.622856, 28.101051>,  <33.491074, 43.690918, 28.461477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650639, 43.622856, 28.101051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350178, 0.879895, -0.321185,
		0.847494, 0.443657, 0.291415,
		0.398910, -0.170156, -0.901065,
		33.770313, 43.571808, 27.830732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834236, 44.348991, 28.236120>,  <33.491074, 43.690918, 28.461477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834236, 44.348991, 28.236120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793781, 44.172989, 27.879208>,  <33.769508, 44.067387, 27.665060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793781, 44.172989, 27.879208>,  <33.834236, 44.348991, 28.236120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793781, 44.172989, 27.879208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037062, 0.897924, -0.438587,
		0.994182, -0.011287, -0.107121,
		-0.101137, -0.440005, -0.892282,
		33.763439, 44.040989, 27.611523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269974, 44.668026, 27.752464>,  <33.834236, 44.348991, 28.236120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269974, 44.668026, 27.752464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.978374, 44.505745, 27.531931>,  <33.803417, 44.408375, 27.399611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.978374, 44.505745, 27.531931>,  <34.269974, 44.668026, 27.752464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978374, 44.505745, 27.531931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056977, 0.766675, -0.639503,
		0.682143, -0.497608, -0.535787,
		-0.728996, -0.405705, -0.551334,
		33.759674, 44.384033, 27.366531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456924, 44.950909, 27.011786>,  <34.269974, 44.668026, 27.752464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456924, 44.950909, 27.011786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078022, 44.824905, 26.988205>,  <33.850681, 44.749302, 26.974056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078022, 44.824905, 26.988205>,  <34.456924, 44.950909, 27.011786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078022, 44.824905, 26.988205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241570, 0.822711, -0.514578,
		0.210596, -0.473197, -0.855415,
		-0.947256, -0.315011, -0.058949,
		33.793846, 44.730404, 26.970520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268013, 45.209576, 26.358807>,  <34.456924, 44.950909, 27.011786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268013, 45.209576, 26.358807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926498, 45.129578, 26.551079>,  <33.721588, 45.081581, 26.666443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926498, 45.129578, 26.551079>,  <34.268013, 45.209576, 26.358807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926498, 45.129578, 26.551079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454827, 0.735798, -0.501731,
		-0.253342, -0.646997, -0.719175,
		-0.853786, -0.199991, 0.480681,
		33.670364, 45.069580, 26.695282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814674, 45.200764, 25.789030>,  <34.268013, 45.209576, 26.358807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814674, 45.200764, 25.789030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594810, 45.253002, 26.119078>,  <33.462891, 45.284344, 26.317106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594810, 45.253002, 26.119078>,  <33.814674, 45.200764, 25.789030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594810, 45.253002, 26.119078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514518, 0.725214, -0.457532,
		-0.658137, -0.676026, -0.331429,
		-0.549660, 0.130593, 0.825117,
		33.429913, 45.292179, 26.366613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039185, 45.289677, 25.589983>,  <33.814674, 45.200764, 25.789030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039185, 45.289677, 25.589983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083942, 45.436390, 25.959404>,  <33.110798, 45.524418, 26.181057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083942, 45.436390, 25.959404>,  <33.039185, 45.289677, 25.589983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083942, 45.436390, 25.959404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529824, 0.808289, -0.256817,
		-0.840693, -0.460582, 0.284780,
		0.111899, 0.366788, 0.923550,
		33.117512, 45.546425, 26.236469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362789, 45.536289, 25.867498>,  <33.039185, 45.289677, 25.589983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362789, 45.536289, 25.867498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647713, 45.743370, 26.057064>,  <32.818668, 45.867619, 26.170803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647713, 45.743370, 26.057064>,  <32.362789, 45.536289, 25.867498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647713, 45.743370, 26.057064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407107, 0.854787, -0.321874,
		-0.571733, 0.036339, 0.819634,
		0.712309, 0.517705, 0.473916,
		32.861404, 45.898682, 26.199240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984114, 46.039375, 25.951036>,  <32.362789, 45.536289, 25.867498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984114, 46.039375, 25.951036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347015, 46.169582, 26.057564>,  <32.564758, 46.247707, 26.121481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347015, 46.169582, 26.057564>,  <31.984114, 46.039375, 25.951036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347015, 46.169582, 26.057564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362832, 0.926010, 0.104201,
		-0.212695, -0.191166, 0.958236,
		0.907256, 0.325515, 0.266319,
		32.619194, 46.267239, 26.137459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278185, 45.799129, 25.746082>,  <31.984114, 46.039375, 25.951036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278185, 45.799129, 25.746082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881790, 45.815659, 25.797052>,  <30.643953, 45.825577, 25.827635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881790, 45.815659, 25.797052>,  <31.278185, 45.799129, 25.746082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881790, 45.815659, 25.797052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080959, -0.573119, 0.815463,
		0.106726, 0.818429, 0.564609,
		-0.990987, 0.041321, 0.127426,
		30.584494, 45.828056, 25.835279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101038, 45.967350, 26.438908>,  <31.278185, 45.799129, 25.746082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101038, 45.967350, 26.438908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784014, 45.765621, 26.301790>,  <30.593800, 45.644585, 26.219521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784014, 45.765621, 26.301790>,  <31.101038, 45.967350, 26.438908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784014, 45.765621, 26.301790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059897, -0.623813, 0.779276,
		-0.606843, 0.597092, 0.524618,
		-0.792562, -0.504321, -0.342792,
		30.546246, 45.614326, 26.198954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808451, 45.724319, 27.064123>,  <31.101038, 45.967350, 26.438908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808451, 45.724319, 27.064123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.703638, 45.483040, 26.762796>,  <30.640751, 45.338272, 26.582001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.703638, 45.483040, 26.762796>,  <30.808451, 45.724319, 27.064123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703638, 45.483040, 26.762796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185342, -0.797517, 0.574121,
		-0.947094, 0.010817, 0.320775,
		-0.262034, -0.603200, -0.753318,
		30.625029, 45.302078, 26.536800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365805, 45.176289, 27.345720>,  <30.808451, 45.724319, 27.064123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365805, 45.176289, 27.345720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.509878, 45.026039, 27.004152>,  <30.596321, 44.935890, 26.799212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.509878, 45.026039, 27.004152>,  <30.365805, 45.176289, 27.345720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509878, 45.026039, 27.004152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155609, -0.878340, 0.452000,
		-0.919812, -0.295680, -0.257912,
		0.360182, -0.375622, -0.853919,
		30.617933, 44.913353, 26.747976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024670, 44.482521, 27.198893>,  <30.365805, 45.176289, 27.345720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024670, 44.482521, 27.198893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366262, 44.481205, 26.990774>,  <30.571218, 44.480415, 26.865904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366262, 44.481205, 26.990774>,  <30.024670, 44.482521, 27.198893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366262, 44.481205, 26.990774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155032, -0.952950, 0.260484,
		-0.496670, -0.303111, -0.813291,
		0.853981, -0.003288, -0.520294,
		30.622458, 44.480217, 26.834686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074390, 43.863144, 26.977114>,  <30.024670, 44.482521, 27.198893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074390, 43.863144, 26.977114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449295, 43.965240, 26.882126>,  <30.674238, 44.026497, 26.825132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449295, 43.965240, 26.882126>,  <30.074390, 43.863144, 26.977114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449295, 43.965240, 26.882126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310146, -0.921543, 0.233599,
		-0.159216, -0.292594, -0.942889,
		0.937262, 0.255241, -0.237472,
		30.730474, 44.041813, 26.810884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390078, 43.318306, 26.524963>,  <30.074390, 43.863144, 26.977114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390078, 43.318306, 26.524963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702866, 43.513416, 26.680191>,  <30.890539, 43.630482, 26.773329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702866, 43.513416, 26.680191>,  <30.390078, 43.318306, 26.524963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702866, 43.513416, 26.680191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405544, -0.870933, 0.277507,
		0.473344, -0.059623, -0.878857,
		0.781971, 0.487772, 0.388071,
		30.937456, 43.659748, 26.796612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870291, 42.895065, 26.473328>,  <30.390078, 43.318306, 26.524963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870291, 42.895065, 26.473328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.069599, 43.112904, 26.743187>,  <31.189184, 43.243607, 26.905102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.069599, 43.112904, 26.743187>,  <30.870291, 42.895065, 26.473328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069599, 43.112904, 26.743187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481571, -0.820889, 0.306971,
		0.720984, 0.171936, -0.671283,
		0.498269, 0.544591, 0.674647,
		31.219080, 43.276279, 26.945581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579489, 42.719952, 26.389200>,  <30.870291, 42.895065, 26.473328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579489, 42.719952, 26.389200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536177, 42.876770, 26.754622>,  <31.510189, 42.970860, 26.973875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536177, 42.876770, 26.754622>,  <31.579489, 42.719952, 26.389200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536177, 42.876770, 26.754622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451256, -0.799443, 0.396559,
		0.885801, 0.455186, -0.090347,
		-0.108281, 0.392042, 0.913553,
		31.503693, 42.994381, 27.028687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232498, 42.737247, 26.821329>,  <31.579489, 42.719952, 26.389200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232498, 42.737247, 26.821329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950726, 42.709732, 27.103903>,  <31.781662, 42.693222, 27.273447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950726, 42.709732, 27.103903>,  <32.232498, 42.737247, 26.821329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950726, 42.709732, 27.103903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543779, -0.691963, 0.474859,
		0.456162, 0.718648, 0.524844,
		-0.704429, -0.068787, 0.706434,
		31.739397, 42.689095, 27.315832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586323, 42.608616, 27.532660>,  <32.232498, 42.737247, 26.821329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586323, 42.608616, 27.532660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199337, 42.523567, 27.587519>,  <31.967146, 42.472538, 27.620434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199337, 42.523567, 27.587519>,  <32.586323, 42.608616, 27.532660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199337, 42.523567, 27.587519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245027, -0.652205, 0.717349,
		-0.063072, 0.727614, 0.683081,
		-0.967462, -0.212618, 0.137149,
		31.909098, 42.459782, 27.628664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498505, 42.793583, 28.281538>,  <32.586323, 42.608616, 27.532660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498505, 42.793583, 28.281538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210243, 42.543140, 28.162441>,  <32.037285, 42.392876, 28.090982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210243, 42.543140, 28.162441>,  <32.498505, 42.793583, 28.281538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210243, 42.543140, 28.162441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179840, -0.583584, 0.791889,
		-0.669561, 0.517133, 0.533161,
		-0.720656, -0.626101, -0.297744,
		31.994047, 42.355309, 28.073118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099773, 42.451984, 28.881264>,  <32.498505, 42.793583, 28.281538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099773, 42.451984, 28.881264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041889, 42.202778, 28.573782>,  <32.007156, 42.053253, 28.389292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041889, 42.202778, 28.573782>,  <32.099773, 42.451984, 28.881264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041889, 42.202778, 28.573782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385624, -0.750967, 0.536043,
		-0.911237, -0.218860, 0.348924,
		-0.144712, -0.623016, -0.768707,
		31.998476, 42.015873, 28.343170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860962, 41.797340, 29.205893>,  <32.099773, 42.451984, 28.881264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860962, 41.797340, 29.205893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997889, 41.693428, 28.844709>,  <32.080044, 41.631081, 28.628000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997889, 41.693428, 28.844709>,  <31.860962, 41.797340, 29.205893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997889, 41.693428, 28.844709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511528, -0.754587, 0.411021,
		-0.788137, -0.602587, -0.125419,
		0.342316, -0.259785, -0.902958,
		32.100582, 41.615494, 28.573822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775551, 41.142384, 29.204639>,  <31.860962, 41.797340, 29.205893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775551, 41.142384, 29.204639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.049747, 41.164463, 28.914246>,  <32.214264, 41.177711, 28.740009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.049747, 41.164463, 28.914246>,  <31.775551, 41.142384, 29.204639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049747, 41.164463, 28.914246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426839, -0.838264, 0.339296,
		-0.589837, -0.542463, -0.598186,
		0.685493, 0.055200, -0.725984,
		32.255394, 41.181023, 28.696451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897112, 40.478519, 28.949585>,  <31.775551, 41.142384, 29.204639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897112, 40.478519, 28.949585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229927, 40.672050, 28.841049>,  <32.429615, 40.788170, 28.775928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229927, 40.672050, 28.841049>,  <31.897112, 40.478519, 28.949585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229927, 40.672050, 28.841049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539832, -0.818784, 0.195380,
		-0.127637, -0.309040, -0.942445,
		0.832039, 0.483825, -0.271338,
		32.479538, 40.817200, 28.759647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275185, 40.007038, 28.568735>,  <31.897112, 40.478519, 28.949585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275185, 40.007038, 28.568735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532387, 40.278950, 28.709839>,  <32.686707, 40.442097, 28.794502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532387, 40.278950, 28.709839>,  <32.275185, 40.007038, 28.568735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532387, 40.278950, 28.709839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665046, -0.724033, 0.183000,
		0.379812, 0.116932, -0.917644,
		0.643006, 0.679781, 0.352762,
		32.725288, 40.482883, 28.815668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825893, 39.706768, 28.372496>,  <32.275185, 40.007038, 28.568735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825893, 39.706768, 28.372496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963840, 39.976307, 28.633873>,  <33.046608, 40.138031, 28.790699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963840, 39.976307, 28.633873>,  <32.825893, 39.706768, 28.372496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963840, 39.976307, 28.633873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768993, -0.602026, 0.214976,
		0.538252, 0.428357, -0.725806,
		0.344868, 0.673851, 0.653445,
		33.067303, 40.178463, 28.829906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533733, 39.764339, 28.246021>,  <32.825893, 39.706768, 28.372496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533733, 39.764339, 28.246021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460033, 39.868729, 28.625061>,  <33.415813, 39.931362, 28.852486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460033, 39.868729, 28.625061>,  <33.533733, 39.764339, 28.246021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460033, 39.868729, 28.625061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511777, -0.797628, 0.319177,
		0.839129, 0.543767, 0.013399,
		-0.184246, 0.260973, 0.947600,
		33.404758, 39.947021, 28.909342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184906, 39.814316, 28.607531>,  <33.533733, 39.764339, 28.246021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184906, 39.814316, 28.607531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873169, 39.735374, 28.845411>,  <33.686127, 39.688007, 28.988140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873169, 39.735374, 28.845411>,  <34.184906, 39.814316, 28.607531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873169, 39.735374, 28.845411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467054, -0.815672, 0.341380,
		0.417708, 0.543811, 0.727867,
		-0.779346, -0.197356, 0.594701,
		33.639366, 39.676167, 29.023821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533527, 39.452114, 28.986446>,  <34.184906, 39.814316, 28.607531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533527, 39.452114, 28.986446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163490, 39.405834, 29.131117>,  <33.941467, 39.378067, 29.217920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163490, 39.405834, 29.131117>,  <34.533527, 39.452114, 28.986446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163490, 39.405834, 29.131117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341906, -0.668201, 0.660762,
		0.165222, 0.734929, 0.657710,
		-0.925096, -0.115702, 0.361678,
		33.885963, 39.371124, 29.239620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.382099, 38.159389, 32.429806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.024261, 38.191612, 32.605625>,  <37.809559, 38.210945, 32.711117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.024261, 38.191612, 32.605625>,  <38.382099, 38.159389, 32.429806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024261, 38.191612, 32.605625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380706, -0.377689, 0.844046,
		0.234007, 0.922422, 0.307212,
		-0.894597, 0.080555, 0.439553,
		37.755882, 38.215778, 32.737492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534916, 38.434006, 33.019924>,  <38.382099, 38.159389, 32.429806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534916, 38.434006, 33.019924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181824, 38.252903, 33.070213>,  <37.969971, 38.144241, 33.100388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181824, 38.252903, 33.070213>,  <38.534916, 38.434006, 33.019924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181824, 38.252903, 33.070213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310463, -0.361132, 0.879316,
		-0.352714, 0.815227, 0.459345,
		-0.882726, -0.452757, 0.125722,
		37.917007, 38.117077, 33.107929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347431, 38.496559, 33.717892>,  <38.534916, 38.434006, 33.019924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347431, 38.496559, 33.717892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.113579, 38.198067, 33.590553>,  <37.973267, 38.018970, 33.514149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.113579, 38.198067, 33.590553>,  <38.347431, 38.496559, 33.717892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113579, 38.198067, 33.590553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138976, -0.478707, 0.866906,
		-0.799310, 0.462574, 0.383574,
		-0.584627, -0.746234, -0.318348,
		37.938190, 37.974197, 33.495049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914299, 38.414963, 34.320763>,  <38.347431, 38.496559, 33.717892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914299, 38.414963, 34.320763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878670, 38.075306, 34.112522>,  <37.857292, 37.871513, 33.987579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878670, 38.075306, 34.112522>,  <37.914299, 38.414963, 34.320763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878670, 38.075306, 34.112522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127063, -0.528093, 0.839626,
		-0.987887, 0.008640, 0.154934,
		-0.089074, -0.849142, -0.520599,
		37.851948, 37.820564, 33.956341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467999, 38.031536, 34.734371>,  <37.914299, 38.414963, 34.320763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467999, 38.031536, 34.734371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.668537, 37.774632, 34.502457>,  <37.788860, 37.620487, 34.363308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.668537, 37.774632, 34.502457>,  <37.467999, 38.031536, 34.734371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668537, 37.774632, 34.502457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183234, -0.576072, 0.796597,
		-0.845620, -0.505609, -0.171129,
		0.501349, -0.642262, -0.579783,
		37.818943, 37.581955, 34.328522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159016, 37.302063, 34.857265>,  <37.467999, 38.031536, 34.734371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159016, 37.302063, 34.857265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527897, 37.256943, 34.709309>,  <37.749226, 37.229870, 34.620537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527897, 37.256943, 34.709309>,  <37.159016, 37.302063, 34.857265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527897, 37.256943, 34.709309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171211, -0.738555, 0.652092,
		-0.346738, -0.664690, -0.661785,
		0.922203, -0.112800, -0.369887,
		37.804558, 37.223103, 34.598343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288372, 36.536674, 34.716755>,  <37.159016, 37.302063, 34.857265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288372, 36.536674, 34.716755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.654716, 36.695343, 34.741570>,  <37.874523, 36.790543, 34.756458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.654716, 36.695343, 34.741570>,  <37.288372, 36.536674, 34.716755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654716, 36.695343, 34.741570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283187, -0.747766, 0.600542,
		0.284609, -0.532445, -0.797183,
		0.915862, 0.396672, 0.062040,
		37.929474, 36.814346, 34.760181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730774, 35.935501, 34.601986>,  <37.288372, 36.536674, 34.716755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730774, 35.935501, 34.601986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944439, 36.212177, 34.796402>,  <38.072639, 36.378181, 34.913052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944439, 36.212177, 34.796402>,  <37.730774, 35.935501, 34.601986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944439, 36.212177, 34.796402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401310, -0.713500, 0.574342,
		0.744057, -0.111739, -0.658707,
		0.534163, 0.691688, 0.486042,
		38.104687, 36.419685, 34.942215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437435, 35.725986, 34.641670>,  <37.730774, 35.935501, 34.601986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437435, 35.725986, 34.641670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443745, 36.011349, 34.921902>,  <38.447533, 36.182564, 35.090038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443745, 36.011349, 34.921902>,  <38.437435, 35.725986, 34.641670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443745, 36.011349, 34.921902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388988, -0.649846, 0.652984,
		0.921108, 0.262214, -0.287758,
		0.015777, 0.713403, 0.700577,
		38.448479, 36.225368, 35.132076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035175, 35.524200, 35.026295>,  <38.437435, 35.725986, 34.641670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035175, 35.524200, 35.026295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837009, 35.774921, 35.266853>,  <38.718109, 35.925354, 35.411190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.837009, 35.774921, 35.266853>,  <39.035175, 35.524200, 35.026295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837009, 35.774921, 35.266853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150104, -0.620146, 0.769992,
		0.855591, 0.471736, 0.213142,
		-0.495412, 0.626805, 0.601400,
		38.688385, 35.962963, 35.447273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429779, 35.583817, 35.614433>,  <39.035175, 35.524200, 35.026295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429779, 35.583817, 35.614433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064690, 35.685127, 35.742680>,  <38.845638, 35.745914, 35.819626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064690, 35.685127, 35.742680>,  <39.429779, 35.583817, 35.614433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064690, 35.685127, 35.742680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149846, -0.522520, 0.839356,
		0.380117, 0.814140, 0.438962,
		-0.912720, 0.253277, 0.320614,
		38.790874, 35.761112, 35.838863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576237, 35.636948, 36.269444>,  <39.429779, 35.583817, 35.614433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576237, 35.636948, 36.269444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178059, 35.600445, 36.258358>,  <38.939152, 35.578545, 36.251705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178059, 35.600445, 36.258358>,  <39.576237, 35.636948, 36.269444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178059, 35.600445, 36.258358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030774, -0.582382, 0.812332,
		-0.090269, 0.807777, 0.582536,
		-0.995442, -0.091255, -0.027713,
		38.879425, 35.573067, 36.250046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358376, 35.780338, 36.883511>,  <39.576237, 35.636948, 36.269444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358376, 35.780338, 36.883511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146332, 35.499077, 36.693962>,  <39.019104, 35.330318, 36.580235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146332, 35.499077, 36.693962>,  <39.358376, 35.780338, 36.883511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146332, 35.499077, 36.693962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111519, -0.611816, 0.783100,
		-0.840562, 0.362285, 0.402746,
		-0.530112, -0.703158, -0.473868,
		38.987297, 35.288128, 36.551804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750481, 35.582027, 37.286800>,  <39.358376, 35.780338, 36.883511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750481, 35.582027, 37.286800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882267, 35.276886, 37.064266>,  <38.961338, 35.093803, 36.930744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882267, 35.276886, 37.064266>,  <38.750481, 35.582027, 37.286800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882267, 35.276886, 37.064266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035837, -0.578710, 0.814746,
		-0.943487, -0.288369, -0.163326,
		0.329466, -0.762849, -0.556340,
		38.981106, 35.048031, 36.897366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565567, 35.370697, 37.798328>,  <38.750481, 35.582027, 37.286800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565567, 35.370697, 37.798328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667442, 35.467686, 38.172779>,  <38.728569, 35.525879, 38.397449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667442, 35.467686, 38.172779>,  <38.565567, 35.370697, 37.798328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667442, 35.467686, 38.172779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150862, 0.966163, -0.209210,
		-0.955183, -0.087944, 0.282650,
		0.254687, 0.242475, 0.936130,
		38.743847, 35.540428, 38.453617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984619, 35.805832, 38.119282>,  <38.565567, 35.370697, 37.798328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984619, 35.805832, 38.119282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344585, 35.863163, 38.284016>,  <38.560566, 35.897560, 38.382858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344585, 35.863163, 38.284016>,  <37.984619, 35.805832, 38.119282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344585, 35.863163, 38.284016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143237, 0.989194, -0.031273,
		-0.411869, -0.030847, 0.910721,
		0.899915, 0.143329, 0.411836,
		38.614559, 35.906162, 38.407566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855968, 36.277817, 38.656628>,  <37.984619, 35.805832, 38.119282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855968, 36.277817, 38.656628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241722, 36.296017, 38.552399>,  <38.473175, 36.306934, 38.489861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241722, 36.296017, 38.552399>,  <37.855968, 36.277817, 38.656628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241722, 36.296017, 38.552399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088970, 0.983494, -0.157556,
		0.249106, 0.175128, 0.952511,
		0.964381, 0.045497, -0.260575,
		38.531036, 36.309666, 38.474228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002850, 36.889408, 38.885017>,  <37.855968, 36.277817, 38.656628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002850, 36.889408, 38.885017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305027, 36.797749, 38.639484>,  <38.486336, 36.742752, 38.492165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305027, 36.797749, 38.639484>,  <38.002850, 36.889408, 38.885017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305027, 36.797749, 38.639484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031515, 0.948471, -0.315291,
		0.654453, 0.218840, 0.723740,
		0.755445, -0.229152, -0.613833,
		38.531662, 36.729004, 38.455334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269379, 37.449196, 38.884007>,  <38.002850, 36.889408, 38.885017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269379, 37.449196, 38.884007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393677, 37.283352, 38.541885>,  <38.468258, 37.183846, 38.336613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393677, 37.283352, 38.541885>,  <38.269379, 37.449196, 38.884007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393677, 37.283352, 38.541885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035158, 0.894219, -0.446248,
		0.949842, 0.168742, 0.263300,
		0.310749, -0.414608, -0.855299,
		38.486900, 37.158970, 38.285297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686600, 37.945675, 38.538845>,  <38.269379, 37.449196, 38.884007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686600, 37.945675, 38.538845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.575760, 37.702480, 38.241238>,  <38.509254, 37.556564, 38.062672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.575760, 37.702480, 38.241238>,  <38.686600, 37.945675, 38.538845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575760, 37.702480, 38.241238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053127, 0.763463, -0.643662,
		0.959371, -0.217887, -0.179255,
		-0.277100, -0.607988, -0.744021,
		38.492630, 37.520084, 38.018032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031944, 38.189484, 37.940990>,  <38.686600, 37.945675, 38.538845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031944, 38.189484, 37.940990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772514, 37.955070, 37.746704>,  <38.616856, 37.814423, 37.630135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772514, 37.955070, 37.746704>,  <39.031944, 38.189484, 37.940990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772514, 37.955070, 37.746704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150107, 0.724072, -0.673192,
		0.746213, -0.363698, -0.557575,
		-0.648563, -0.586041, -0.485717,
		38.577942, 37.779259, 37.600990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076809, 38.263344, 37.254391>,  <39.031944, 38.189484, 37.940990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076809, 38.263344, 37.254391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709698, 38.105507, 37.272152>,  <38.489429, 38.010803, 37.282810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709698, 38.105507, 37.272152>,  <39.076809, 38.263344, 37.254391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709698, 38.105507, 37.272152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289656, 0.588784, -0.754607,
		0.271620, -0.705427, -0.654672,
		-0.917781, -0.394596, 0.044406,
		38.434364, 37.987129, 37.285473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899738, 38.102474, 36.528481>,  <39.076809, 38.263344, 37.254391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899738, 38.102474, 36.528481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533058, 38.112366, 36.688000>,  <38.313049, 38.118301, 36.783710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533058, 38.112366, 36.688000>,  <38.899738, 38.102474, 36.528481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533058, 38.112366, 36.688000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350997, 0.427083, -0.833307,
		-0.190931, -0.903874, -0.382828,
		-0.916704, 0.024733, 0.398800,
		38.258045, 38.119785, 36.807640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445259, 38.208424, 35.970039>,  <38.899738, 38.102474, 36.528481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445259, 38.208424, 35.970039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187000, 38.238155, 36.274044>,  <38.032043, 38.255993, 36.456448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187000, 38.238155, 36.274044>,  <38.445259, 38.208424, 35.970039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187000, 38.238155, 36.274044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665527, 0.433258, -0.607751,
		-0.374454, -0.898200, -0.230264,
		-0.645646, 0.074328, 0.760011,
		37.993305, 38.260452, 36.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817463, 37.828003, 35.797165>,  <38.445259, 38.208424, 35.970039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817463, 37.828003, 35.797165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713718, 38.115112, 36.055630>,  <37.651470, 38.287380, 36.210709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713718, 38.115112, 36.055630>,  <37.817463, 37.828003, 35.797165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713718, 38.115112, 36.055630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509835, 0.466475, -0.722821,
		-0.820243, -0.516910, 0.244961,
		-0.259365, 0.717778, 0.646161,
		37.635910, 38.330444, 36.249477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127499, 37.883110, 35.695847>,  <37.817463, 37.828003, 35.797165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127499, 37.883110, 35.695847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.224495, 38.231544, 35.866684>,  <37.282692, 38.440605, 35.969185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.224495, 38.231544, 35.866684>,  <37.127499, 37.883110, 35.695847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224495, 38.231544, 35.866684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572832, 0.483853, -0.661626,
		-0.782984, -0.084216, 0.616315,
		0.242487, 0.871087, 0.427091,
		37.297241, 38.492870, 35.994812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504459, 38.295864, 35.698971>,  <37.127499, 37.883110, 35.695847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504459, 38.295864, 35.698971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810722, 38.549198, 35.743980>,  <36.994480, 38.701199, 35.770988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810722, 38.549198, 35.743980>,  <36.504459, 38.295864, 35.698971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810722, 38.549198, 35.743980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488366, 0.686189, -0.539114,
		-0.418653, 0.357821, 0.834682,
		0.765655, 0.633332, 0.112528,
		37.040421, 38.739197, 35.777740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080120, 38.918884, 35.875687>,  <36.504459, 38.295864, 35.698971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080120, 38.918884, 35.875687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454857, 39.016376, 35.775349>,  <36.679699, 39.074871, 35.715145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454857, 39.016376, 35.775349>,  <36.080120, 38.918884, 35.875687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454857, 39.016376, 35.775349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343629, 0.775084, -0.530249,
		0.065191, 0.582957, 0.809884,
		0.936840, 0.243732, -0.250849,
		36.735909, 39.089497, 35.700092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079689, 39.688713, 36.072407>,  <36.080120, 38.918884, 35.875687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079689, 39.688713, 36.072407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683422, 39.637966, 36.092354>,  <35.445663, 39.607517, 36.104324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683422, 39.637966, 36.092354>,  <36.079689, 39.688713, 36.072407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683422, 39.637966, 36.092354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124912, -0.698330, 0.704792,
		-0.054589, 0.704443, 0.707659,
		-0.990665, -0.126869, 0.049872,
		35.386223, 39.599907, 36.107315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961876, 39.566917, 36.748753>,  <36.079689, 39.688713, 36.072407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961876, 39.566917, 36.748753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635273, 39.416553, 36.573479>,  <35.439312, 39.326336, 36.468315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635273, 39.416553, 36.573479>,  <35.961876, 39.566917, 36.748753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635273, 39.416553, 36.573479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010055, -0.768129, 0.640216,
		-0.577247, 0.518336, 0.630963,
		-0.816508, -0.375907, -0.438188,
		35.390320, 39.303780, 36.442020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658237, 39.291691, 37.357384>,  <35.961876, 39.566917, 36.748753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658237, 39.291691, 37.357384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.482746, 39.142761, 37.030239>,  <35.377453, 39.053406, 36.833954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.482746, 39.142761, 37.030239>,  <35.658237, 39.291691, 37.357384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482746, 39.142761, 37.030239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020910, -0.905654, 0.423502,
		-0.898377, 0.202904, 0.389550,
		-0.438728, -0.372319, -0.817861,
		35.351128, 39.031067, 36.784882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014202, 38.974159, 37.539520>,  <35.658237, 39.291691, 37.357384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014202, 38.974159, 37.539520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.115276, 38.794987, 37.196472>,  <35.175922, 38.687481, 36.990643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.115276, 38.794987, 37.196472>,  <35.014202, 38.974159, 37.539520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115276, 38.794987, 37.196472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130013, -0.894061, 0.428661,
		-0.958773, 0.003184, -0.284155,
		0.252687, -0.447933, -0.857616,
		35.191082, 38.660606, 36.939186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464806, 38.342506, 37.391094>,  <35.014202, 38.974159, 37.539520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464806, 38.342506, 37.391094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.799438, 38.282116, 37.180443>,  <35.000217, 38.245880, 37.054050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.799438, 38.282116, 37.180443>,  <34.464806, 38.342506, 37.391094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799438, 38.282116, 37.180443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006706, -0.958382, 0.285411,
		-0.547802, -0.242301, -0.800752,
		0.836581, -0.150978, -0.526628,
		35.050411, 38.236824, 37.022453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313004, 37.734562, 36.959400>,  <34.464806, 38.342506, 37.391094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313004, 37.734562, 36.959400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.706333, 37.789658, 37.006916>,  <34.942329, 37.822716, 37.035427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.706333, 37.789658, 37.006916>,  <34.313004, 37.734562, 36.959400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706333, 37.789658, 37.006916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101085, -0.956788, 0.272651,
		0.151210, -0.256095, -0.954752,
		0.983319, 0.137738, 0.118789,
		35.001328, 37.830978, 37.042553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623856, 37.120949, 36.685287>,  <34.313004, 37.734562, 36.959400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623856, 37.120949, 36.685287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898781, 37.279694, 36.928631>,  <35.063736, 37.374943, 37.074635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898781, 37.279694, 36.928631>,  <34.623856, 37.120949, 36.685287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898781, 37.279694, 36.928631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141557, -0.894667, 0.423713,
		0.712433, -0.205107, -0.671097,
		0.687315, 0.396865, 0.608356,
		35.104977, 37.398754, 37.111137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117352, 36.608269, 36.652630>,  <34.623856, 37.120949, 36.685287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117352, 36.608269, 36.652630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.221481, 36.814087, 36.979427>,  <35.283958, 36.937576, 37.175507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.221481, 36.814087, 36.979427>,  <35.117352, 36.608269, 36.652630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221481, 36.814087, 36.979427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179924, -0.857199, 0.482532,
		0.948609, 0.021382, -0.315727,
		0.260323, 0.514541, 0.816994,
		35.299580, 36.968449, 37.224525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796528, 36.456100, 36.745941>,  <35.117352, 36.608269, 36.652630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796528, 36.456100, 36.745941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.652824, 36.571442, 37.100971>,  <35.566605, 36.640648, 37.313988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.652824, 36.571442, 37.100971>,  <35.796528, 36.456100, 36.745941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652824, 36.571442, 37.100971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219455, -0.898294, 0.380668,
		0.907070, 0.331539, 0.259435,
		-0.359256, 0.288358, 0.887573,
		35.545048, 36.657948, 37.367245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308971, 36.158157, 37.246426>,  <35.796528, 36.456100, 36.745941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308971, 36.158157, 37.246426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.973228, 36.250370, 37.443333>,  <35.771782, 36.305698, 37.561478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.973228, 36.250370, 37.443333>,  <36.308971, 36.158157, 37.246426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973228, 36.250370, 37.443333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031065, -0.883788, 0.466856,
		0.542691, 0.407152, 0.734653,
		-0.839358, 0.230536, 0.492272,
		35.721420, 36.319530, 37.591015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505146, 36.026825, 37.909359>,  <36.308971, 36.158157, 37.246426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505146, 36.026825, 37.909359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105610, 36.023178, 37.928276>,  <35.865887, 36.020988, 37.939625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105610, 36.023178, 37.928276>,  <36.505146, 36.026825, 37.909359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105610, 36.023178, 37.928276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035631, -0.800601, 0.598138,
		0.032407, 0.599129, 0.799996,
		-0.998840, -0.009121, 0.047292,
		35.805958, 36.020443, 37.942463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332699, 36.063499, 38.602161>,  <36.505146, 36.026825, 37.909359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332699, 36.063499, 38.602161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.034580, 35.882019, 38.406738>,  <35.855709, 35.773132, 38.289486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.034580, 35.882019, 38.406738>,  <36.332699, 36.063499, 38.602161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034580, 35.882019, 38.406738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136726, -0.821193, 0.554028,
		-0.652563, 0.346118, 0.674066,
		-0.745297, -0.453700, -0.488557,
		35.810989, 35.745911, 38.260170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.046967, 43.276043, 34.464016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840927, 42.980007, 34.291069>,  <34.717304, 42.802387, 34.187302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840927, 42.980007, 34.291069>,  <35.046967, 43.276043, 34.464016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840927, 42.980007, 34.291069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293782, -0.626324, 0.722088,
		-0.805212, 0.244924, 0.540043,
		-0.515098, -0.740088, -0.432369,
		34.686398, 42.757980, 34.161358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669994, 43.003082, 35.047340>,  <35.046967, 43.276043, 34.464016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669994, 43.003082, 35.047340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689751, 42.728832, 34.756828>,  <34.701603, 42.564281, 34.582523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689751, 42.728832, 34.756828>,  <34.669994, 43.003082, 35.047340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689751, 42.728832, 34.756828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013419, -0.726644, 0.686883,
		-0.998689, -0.043672, -0.026690,
		0.049391, -0.685625, -0.726277,
		34.704567, 42.523144, 34.538944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240219, 42.397541, 35.329746>,  <34.669994, 43.003082, 35.047340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240219, 42.397541, 35.329746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447189, 42.242744, 35.024460>,  <34.571373, 42.149864, 34.841286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447189, 42.242744, 35.024460>,  <34.240219, 42.397541, 35.329746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447189, 42.242744, 35.024460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313988, -0.743825, 0.590031,
		-0.796043, -0.544938, -0.263360,
		0.517424, -0.386998, -0.763220,
		34.602417, 42.126644, 34.795494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944469, 41.690430, 35.253414>,  <34.240219, 42.397541, 35.329746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944469, 41.690430, 35.253414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315102, 41.698586, 35.103199>,  <34.537479, 41.703480, 35.013069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315102, 41.698586, 35.103199>,  <33.944469, 41.690430, 35.253414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315102, 41.698586, 35.103199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226120, -0.828109, 0.512938,
		-0.300528, -0.560197, -0.771922,
		0.926582, 0.020394, -0.375541,
		34.593075, 41.704704, 34.990536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968765, 41.044266, 34.932564>,  <33.944469, 41.690430, 35.253414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968765, 41.044266, 34.932564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335407, 41.193504, 34.990017>,  <34.555393, 41.283047, 35.024490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335407, 41.193504, 34.990017>,  <33.968765, 41.044266, 34.932564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335407, 41.193504, 34.990017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286559, -0.863659, 0.414702,
		0.278777, -0.338958, -0.898549,
		0.916606, 0.373097, 0.143636,
		34.610390, 41.305435, 35.033108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404686, 40.596302, 34.643047>,  <33.968765, 41.044266, 34.932564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404686, 40.596302, 34.643047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678505, 40.776733, 34.872105>,  <34.842796, 40.884991, 35.009541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678505, 40.776733, 34.872105>,  <34.404686, 40.596302, 34.643047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678505, 40.776733, 34.872105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195821, -0.870471, 0.451591,
		0.702171, -0.197002, -0.684212,
		0.684551, 0.451077, 0.572642,
		34.883869, 40.912056, 35.043896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025162, 40.268394, 34.530014>,  <34.404686, 40.596302, 34.643047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025162, 40.268394, 34.530014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087273, 40.426907, 34.891975>,  <35.124538, 40.522015, 35.109154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087273, 40.426907, 34.891975>,  <35.025162, 40.268394, 34.530014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087273, 40.426907, 34.891975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201356, -0.909479, 0.363735,
		0.967132, 0.125727, -0.221016,
		0.155279, 0.396282, 0.904903,
		35.133858, 40.545792, 35.163445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556015, 39.856789, 34.790131>,  <35.025162, 40.268394, 34.530014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556015, 39.856789, 34.790131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425892, 40.046093, 35.117596>,  <35.347816, 40.159676, 35.314075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425892, 40.046093, 35.117596>,  <35.556015, 39.856789, 34.790131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425892, 40.046093, 35.117596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156586, -0.826836, 0.540207,
		0.932552, 0.303926, 0.194873,
		-0.325311, 0.473257, 0.818658,
		35.328300, 40.188068, 35.363194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987995, 39.791733, 35.358730>,  <35.556015, 39.856789, 34.790131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987995, 39.791733, 35.358730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637630, 39.853313, 35.541634>,  <35.427414, 39.890263, 35.651375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637630, 39.853313, 35.541634>,  <35.987995, 39.791733, 35.358730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637630, 39.853313, 35.541634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210759, -0.730436, 0.649649,
		0.434007, 0.665404, 0.607351,
		-0.875910, 0.153947, 0.457255,
		35.374859, 39.899498, 35.678810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410122, 40.296944, 35.731709>,  <35.987995, 39.791733, 35.358730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410122, 40.296944, 35.731709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633007, 40.017395, 35.552330>,  <36.766739, 39.849667, 35.444702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633007, 40.017395, 35.552330>,  <36.410122, 40.296944, 35.731709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633007, 40.017395, 35.552330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046540, 0.565486, -0.823444,
		0.829066, 0.437962, 0.347620,
		0.557211, -0.698867, -0.448442,
		36.800171, 39.807735, 35.417797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900684, 40.705536, 35.375233>,  <36.410122, 40.296944, 35.731709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900684, 40.705536, 35.375233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914719, 40.346176, 35.200127>,  <36.923138, 40.130558, 35.095062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914719, 40.346176, 35.200127>,  <36.900684, 40.705536, 35.375233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914719, 40.346176, 35.200127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282646, 0.429075, -0.857908,
		0.958583, -0.093637, 0.268983,
		0.035082, -0.898402, -0.437770,
		36.925243, 40.076656, 35.068794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490448, 40.737663, 35.086552>,  <36.900684, 40.705536, 35.375233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490448, 40.737663, 35.086552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294212, 40.447163, 34.893936>,  <37.176472, 40.272861, 34.778366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294212, 40.447163, 34.893936>,  <37.490448, 40.737663, 35.086552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294212, 40.447163, 34.893936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189544, 0.450437, -0.872456,
		0.850524, -0.519293, -0.083324,
		-0.490593, -0.726251, -0.481536,
		37.147034, 40.229286, 34.749474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940140, 40.567787, 34.516079>,  <37.490448, 40.737663, 35.086552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940140, 40.567787, 34.516079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568501, 40.442783, 34.436977>,  <37.345516, 40.367779, 34.389515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568501, 40.442783, 34.436977>,  <37.940140, 40.567787, 34.516079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568501, 40.442783, 34.436977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099130, 0.304702, -0.947275,
		0.356296, -0.899716, -0.252118,
		-0.929100, -0.312518, -0.197753,
		37.289772, 40.349030, 34.377651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030594, 40.240093, 33.855259>,  <37.940140, 40.567787, 34.516079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030594, 40.240093, 33.855259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640030, 40.317513, 33.893536>,  <37.405689, 40.363964, 33.916504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640030, 40.317513, 33.893536>,  <38.030594, 40.240093, 33.855259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640030, 40.317513, 33.893536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043105, 0.259550, -0.964767,
		-0.211567, -0.946136, -0.245085,
		-0.976413, 0.193549, 0.095695,
		37.347107, 40.375576, 33.922245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649757, 40.119671, 33.188736>,  <38.030594, 40.240093, 33.855259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649757, 40.119671, 33.188736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397137, 40.363049, 33.380959>,  <37.245564, 40.509075, 33.496292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397137, 40.363049, 33.380959>,  <37.649757, 40.119671, 33.188736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397137, 40.363049, 33.380959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355143, 0.323944, -0.876889,
		-0.689211, -0.724469, 0.011496,
		-0.631555, 0.608444, 0.480556,
		37.207668, 40.545582, 33.525124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031483, 40.212139, 32.740334>,  <37.649757, 40.119671, 33.188736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031483, 40.212139, 32.740334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969242, 40.522968, 32.984283>,  <36.931896, 40.709465, 33.130653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969242, 40.522968, 32.984283>,  <37.031483, 40.212139, 32.740334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969242, 40.522968, 32.984283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297857, 0.551750, -0.779008,
		-0.941843, -0.302873, 0.145601,
		-0.155605, 0.777071, 0.609875,
		36.922562, 40.756088, 33.167244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383568, 40.440502, 32.552582>,  <37.031483, 40.212139, 32.740334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383568, 40.440502, 32.552582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555088, 40.747410, 32.743340>,  <36.658001, 40.931553, 32.857796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555088, 40.747410, 32.743340>,  <36.383568, 40.440502, 32.552582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555088, 40.747410, 32.743340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459926, 0.639767, -0.615765,
		-0.777558, 0.044705, 0.627220,
		0.428803, 0.767267, 0.476895,
		36.683727, 40.977589, 32.886410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891037, 41.027534, 32.500179>,  <36.383568, 40.440502, 32.552582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891037, 41.027534, 32.500179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213341, 41.232681, 32.618656>,  <36.406723, 41.355770, 32.689743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213341, 41.232681, 32.618656>,  <35.891037, 41.027534, 32.500179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213341, 41.232681, 32.618656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306326, 0.788917, -0.532705,
		-0.506876, 0.338498, 0.792777,
		0.805755, 0.512863, 0.296192,
		36.455067, 41.386539, 32.707516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692558, 41.660568, 32.705498>,  <35.891037, 41.027534, 32.500179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692558, 41.660568, 32.705498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075809, 41.732716, 32.616539>,  <36.305759, 41.776005, 32.563164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075809, 41.732716, 32.616539>,  <35.692558, 41.660568, 32.705498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075809, 41.732716, 32.616539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280705, 0.745013, -0.605111,
		0.056545, 0.642201, 0.764448,
		0.958127, 0.180368, -0.222396,
		36.363247, 41.786827, 32.549820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826599, 42.445019, 32.656490>,  <35.692558, 41.660568, 32.705498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826599, 42.445019, 32.656490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138885, 42.289616, 32.460716>,  <36.326256, 42.196373, 32.343250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138885, 42.289616, 32.460716>,  <35.826599, 42.445019, 32.656490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138885, 42.289616, 32.460716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018052, 0.768890, -0.639126,
		0.624627, 0.507811, 0.593271,
		0.780715, -0.388505, -0.489436,
		36.373100, 42.173065, 32.313885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276440, 43.027584, 32.529209>,  <35.826599, 42.445019, 32.656490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276440, 43.027584, 32.529209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411823, 42.756645, 32.267937>,  <36.493053, 42.594082, 32.111172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411823, 42.756645, 32.267937>,  <36.276440, 43.027584, 32.529209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411823, 42.756645, 32.267937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148380, 0.723881, -0.673781,
		0.929209, 0.131128, 0.345508,
		0.338458, -0.677349, -0.653180,
		36.513359, 42.553440, 32.071983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878780, 43.328083, 32.293636>,  <36.276440, 43.027584, 32.529209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878780, 43.328083, 32.293636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739101, 43.059044, 32.032661>,  <36.655296, 42.897621, 31.876076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739101, 43.059044, 32.032661>,  <36.878780, 43.328083, 32.293636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739101, 43.059044, 32.032661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100181, 0.665483, -0.739659,
		0.931680, -0.323647, -0.165002,
		-0.349194, -0.672595, -0.652440,
		36.634342, 42.857265, 31.836929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289654, 43.428783, 31.686954>,  <36.878780, 43.328083, 32.293636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289654, 43.428783, 31.686954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958035, 43.243290, 31.561968>,  <36.759064, 43.131996, 31.486977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958035, 43.243290, 31.561968>,  <37.289654, 43.428783, 31.686954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958035, 43.243290, 31.561968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092000, 0.664296, -0.741786,
		0.551556, -0.586230, -0.593397,
		-0.829048, -0.463730, -0.312463,
		36.709320, 43.104172, 31.468229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.957752, 39.248112, 29.980185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.196983, 39.518024, 30.153145>,  <30.340523, 39.679974, 30.256922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.196983, 39.518024, 30.153145>,  <29.957752, 39.248112, 29.980185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196983, 39.518024, 30.153145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669252, -0.717331, 0.193748,
		0.440912, 0.173508, -0.880620,
		0.598079, 0.674782, 0.432401,
		30.376408, 39.720459, 30.282866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606445, 39.106964, 29.745317>,  <29.957752, 39.248112, 29.980185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606445, 39.106964, 29.745317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684822, 39.309071, 30.081488>,  <30.731848, 39.430336, 30.283190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684822, 39.309071, 30.081488>,  <30.606445, 39.106964, 29.745317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684822, 39.309071, 30.081488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776125, -0.603737, 0.182021,
		0.599364, 0.616609, -0.510446,
		0.195940, 0.505267, 0.840424,
		30.743605, 39.460651, 30.333614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286869, 39.055321, 29.835949>,  <30.606445, 39.106964, 29.745317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286869, 39.055321, 29.835949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162155, 39.160652, 30.201122>,  <31.087328, 39.223850, 30.420227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162155, 39.160652, 30.201122>,  <31.286869, 39.055321, 29.835949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162155, 39.160652, 30.201122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636554, -0.655438, 0.406448,
		0.705401, 0.707856, 0.036734,
		-0.311784, 0.263325, 0.912935,
		31.068621, 39.239651, 30.475002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927994, 39.058159, 30.255196>,  <31.286869, 39.055321, 29.835949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927994, 39.058159, 30.255196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.628817, 39.017525, 30.517572>,  <31.449310, 38.993145, 30.674999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.628817, 39.017525, 30.517572>,  <31.927994, 39.058159, 30.255196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628817, 39.017525, 30.517572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581331, -0.577220, 0.573472,
		0.320365, 0.810245, 0.490785,
		-0.747944, -0.101588, 0.655942,
		31.404434, 38.987049, 30.714355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212440, 39.204975, 30.983644>,  <31.927994, 39.058159, 30.255196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212440, 39.204975, 30.983644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.878412, 38.989979, 31.030560>,  <31.677994, 38.860981, 31.058708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.878412, 38.989979, 31.030560>,  <32.212440, 39.204975, 30.983644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878412, 38.989979, 31.030560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433861, -0.512350, 0.741122,
		-0.338252, 0.669779, 0.661046,
		-0.835075, -0.537488, 0.117287,
		31.627890, 38.828732, 31.065746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038692, 39.309521, 31.625473>,  <32.212440, 39.204975, 30.983644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038692, 39.309521, 31.625473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.909616, 38.962547, 31.473988>,  <31.832170, 38.754364, 31.383097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.909616, 38.962547, 31.473988>,  <32.038692, 39.309521, 31.625473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909616, 38.962547, 31.473988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409972, -0.488732, 0.770107,
		-0.853109, 0.093243, 0.513333,
		-0.322690, -0.867437, -0.378715,
		31.812809, 38.702316, 31.360373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837675, 38.834930, 32.216007>,  <32.038692, 39.309521, 31.625473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837675, 38.834930, 32.216007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.825731, 38.571545, 31.915199>,  <31.818565, 38.413513, 31.734715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.825731, 38.571545, 31.915199>,  <31.837675, 38.834930, 32.216007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825731, 38.571545, 31.915199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403908, -0.696146, 0.593498,
		-0.914312, -0.286027, 0.286744,
		-0.029859, -0.658460, -0.752023,
		31.816774, 38.374008, 31.689592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488789, 38.229755, 32.491611>,  <31.837675, 38.834930, 32.216007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488789, 38.229755, 32.491611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.676111, 38.075317, 32.173714>,  <31.788506, 37.982655, 31.982975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.676111, 38.075317, 32.173714>,  <31.488789, 38.229755, 32.491611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676111, 38.075317, 32.173714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112964, -0.865931, 0.487240,
		-0.876315, -0.317956, -0.361906,
		0.468307, -0.386094, -0.794746,
		31.816603, 37.959488, 31.935289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208147, 37.596573, 32.485298>,  <31.488789, 38.229755, 32.491611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208147, 37.596573, 32.485298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.496908, 37.555027, 32.211636>,  <31.670164, 37.530102, 32.047440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.496908, 37.555027, 32.211636>,  <31.208147, 37.596573, 32.485298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496908, 37.555027, 32.211636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107138, -0.959976, 0.258780,
		-0.683651, -0.260113, -0.681881,
		0.721902, -0.103860, -0.684157,
		31.713478, 37.523869, 32.006390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025450, 37.046593, 32.082111>,  <31.208147, 37.596573, 32.485298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025450, 37.046593, 32.082111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.424088, 37.079056, 32.076252>,  <31.663269, 37.098534, 32.072735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.424088, 37.079056, 32.076252>,  <31.025450, 37.046593, 32.082111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424088, 37.079056, 32.076252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081457, -0.940956, 0.328582,
		0.012885, -0.328656, -0.944362,
		0.996594, 0.081159, -0.014647,
		31.723066, 37.103405, 32.071857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209631, 36.441368, 31.903215>,  <31.025450, 37.046593, 32.082111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209631, 36.441368, 31.903215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.543276, 36.613914, 32.040726>,  <31.743462, 36.717442, 32.123234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.543276, 36.613914, 32.040726>,  <31.209631, 36.441368, 31.903215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543276, 36.613914, 32.040726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357452, -0.897378, 0.258729,
		0.420106, -0.092925, -0.902705,
		0.834110, 0.431367, 0.343777,
		31.793509, 36.743324, 32.143860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739378, 36.027885, 31.654665>,  <31.209631, 36.441368, 31.903215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739378, 36.027885, 31.654665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.889717, 36.190819, 31.987608>,  <31.979921, 36.288578, 32.187374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.889717, 36.190819, 31.987608>,  <31.739378, 36.027885, 31.654665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889717, 36.190819, 31.987608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334951, -0.897199, 0.287824,
		0.864029, 0.170620, -0.473648,
		0.375848, 0.407337, 0.832355,
		32.002472, 36.313019, 32.237316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370033, 35.642330, 31.717897>,  <31.739378, 36.027885, 31.654665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370033, 35.642330, 31.717897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.332733, 35.830029, 32.069149>,  <32.310352, 35.942650, 32.279900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.332733, 35.830029, 32.069149>,  <32.370033, 35.642330, 31.717897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332733, 35.830029, 32.069149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499823, -0.740721, 0.448898,
		0.861093, 0.480769, -0.165469,
		-0.093249, 0.469248, 0.878129,
		32.304760, 35.970802, 32.332588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061615, 35.800827, 32.071995>,  <32.370033, 35.642330, 31.717897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061615, 35.800827, 32.071995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790554, 35.786919, 32.365822>,  <32.627918, 35.778576, 32.542118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790554, 35.786919, 32.365822>,  <33.061615, 35.800827, 32.071995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790554, 35.786919, 32.365822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529202, -0.716643, 0.454278,
		0.510625, 0.696573, 0.504032,
		-0.677649, -0.034769, 0.734564,
		32.587261, 35.776489, 32.586189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451565, 36.471172, 32.255573>,  <33.061615, 35.800827, 32.071995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451565, 36.471172, 32.255573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813534, 36.403275, 32.099464>,  <34.030716, 36.362537, 32.005798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813534, 36.403275, 32.099464>,  <33.451565, 36.471172, 32.255573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813534, 36.403275, 32.099464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209673, 0.620186, -0.755914,
		0.370352, 0.765869, 0.525627,
		0.904918, -0.169744, -0.390270,
		34.085011, 36.352352, 31.982384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774025, 37.131920, 32.208012>,  <33.451565, 36.471172, 32.255573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774025, 37.131920, 32.208012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993431, 36.911076, 31.956835>,  <34.125076, 36.778568, 31.806129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993431, 36.911076, 31.956835>,  <33.774025, 37.131920, 32.208012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993431, 36.911076, 31.956835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033890, 0.735698, -0.676461,
		0.835454, 0.392329, 0.384830,
		0.548514, -0.552110, -0.627938,
		34.157986, 36.745441, 31.768454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212524, 37.649055, 31.944946>,  <33.774025, 37.131920, 32.208012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212524, 37.649055, 31.944946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.220711, 37.347946, 31.681761>,  <34.225624, 37.167282, 31.523849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.220711, 37.347946, 31.681761>,  <34.212524, 37.649055, 31.944946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220711, 37.347946, 31.681761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152602, 0.652742, -0.742052,
		0.988076, -0.085217, 0.128236,
		0.020470, -0.752772, -0.657963,
		34.226852, 37.122116, 31.484371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713581, 37.858597, 31.454340>,  <34.212524, 37.649055, 31.944946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713581, 37.858597, 31.454340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492508, 37.575199, 31.278805>,  <34.359863, 37.405159, 31.173483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492508, 37.575199, 31.278805>,  <34.713581, 37.858597, 31.454340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492508, 37.575199, 31.278805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025855, 0.511739, -0.858752,
		0.832993, -0.485961, -0.264509,
		-0.552679, -0.708495, -0.438840,
		34.326702, 37.362652, 31.147154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935448, 37.785439, 30.786615>,  <34.713581, 37.858597, 31.454340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935448, 37.785439, 30.786615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571121, 37.623959, 30.752092>,  <34.352528, 37.527073, 30.731379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571121, 37.623959, 30.752092>,  <34.935448, 37.785439, 30.786615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571121, 37.623959, 30.752092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168444, 0.554307, -0.815089,
		0.376889, -0.727856, -0.572870,
		-0.910813, -0.403695, -0.086309,
		34.297878, 37.502850, 30.726200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989277, 37.662445, 30.074450>,  <34.935448, 37.785439, 30.786615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989277, 37.662445, 30.074450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609322, 37.672253, 30.199095>,  <34.381348, 37.678139, 30.273882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609322, 37.672253, 30.199095>,  <34.989277, 37.662445, 30.074450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609322, 37.672253, 30.199095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223246, 0.644556, -0.731238,
		-0.218783, -0.764164, -0.606784,
		-0.949892, 0.024520, 0.311614,
		34.324352, 37.679607, 30.292580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646961, 37.777386, 29.432505>,  <34.989277, 37.662445, 30.074450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646961, 37.777386, 29.432505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358788, 37.828339, 29.705194>,  <34.185883, 37.858910, 29.868809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358788, 37.828339, 29.705194>,  <34.646961, 37.777386, 29.432505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358788, 37.828339, 29.705194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414072, 0.709548, -0.570163,
		-0.556343, -0.693048, -0.458440,
		-0.720435, 0.127379, 0.681724,
		34.142658, 37.866550, 29.909712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043694, 37.693958, 29.097630>,  <34.646961, 37.777386, 29.432505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043694, 37.693958, 29.097630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986111, 37.929523, 29.415737>,  <33.951561, 38.070862, 29.606602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986111, 37.929523, 29.415737>,  <34.043694, 37.693958, 29.097630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986111, 37.929523, 29.415737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376941, 0.710423, -0.594319,
		-0.914981, -0.385328, 0.119714,
		-0.143960, 0.588916, 0.795270,
		33.942924, 38.106197, 29.654318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397896, 37.995132, 28.896027>,  <34.043694, 37.693958, 29.097630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397896, 37.995132, 28.896027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578766, 38.204563, 29.184860>,  <33.687286, 38.330219, 29.358160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578766, 38.204563, 29.184860>,  <33.397896, 37.995132, 28.896027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578766, 38.204563, 29.184860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249158, 0.851497, -0.461383,
		-0.856421, 0.028712, 0.515479,
		0.452176, 0.523574, 0.722086,
		33.714420, 38.361637, 29.401485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856636, 38.531345, 29.080471>,  <33.397896, 37.995132, 28.896027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856636, 38.531345, 29.080471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177963, 38.699490, 29.249218>,  <33.370762, 38.800377, 29.350466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177963, 38.699490, 29.249218>,  <32.856636, 38.531345, 29.080471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177963, 38.699490, 29.249218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371628, 0.907357, -0.196457,
		-0.465366, 0.001041, 0.885118,
		0.803322, 0.420359, 0.421866,
		33.418961, 38.825596, 29.375778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654778, 39.048363, 29.542370>,  <32.856636, 38.531345, 29.080471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654778, 39.048363, 29.542370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.029644, 39.150166, 29.446926>,  <33.254566, 39.211246, 29.389660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.029644, 39.150166, 29.446926>,  <32.654778, 39.048363, 29.542370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029644, 39.150166, 29.446926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287325, 0.951010, -0.114120,
		0.197876, 0.175508, 0.964387,
		0.937171, 0.254511, -0.238610,
		33.310795, 39.226521, 29.375343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805172, 39.639660, 30.020712>,  <32.654778, 39.048363, 29.542370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805172, 39.639660, 30.020712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051609, 39.651215, 29.705853>,  <33.199471, 39.658150, 29.516937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051609, 39.651215, 29.705853>,  <32.805172, 39.639660, 30.020712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051609, 39.651215, 29.705853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160565, 0.982950, -0.089597,
		0.771138, 0.181588, 0.610223,
		0.616088, 0.028888, -0.787147,
		33.236435, 39.659882, 29.469707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230022, 40.286674, 30.125145>,  <32.805172, 39.639660, 30.020712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230022, 40.286674, 30.125145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.294067, 40.191364, 29.741982>,  <33.332493, 40.134178, 29.512083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.294067, 40.191364, 29.741982>,  <33.230022, 40.286674, 30.125145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294067, 40.191364, 29.741982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057339, 0.966545, -0.250005,
		0.985433, 0.094953, 0.141089,
		0.160108, -0.238274, -0.957910,
		33.342098, 40.119881, 29.454609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653076, 40.832767, 29.766451>,  <33.230022, 40.286674, 30.125145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653076, 40.832767, 29.766451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.436531, 40.654163, 29.481480>,  <33.306606, 40.547001, 29.310497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.436531, 40.654163, 29.481480>,  <33.653076, 40.832767, 29.766451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436531, 40.654163, 29.481480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238600, 0.894083, -0.379060,
		0.806226, -0.035222, -0.590559,
		-0.541360, -0.446515, -0.712428,
		33.274124, 40.520210, 29.267752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314171, 40.909634, 29.260866>,  <33.653076, 40.832767, 29.766451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314171, 40.909634, 29.260866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.664288, 41.047916, 29.125603>,  <34.874359, 41.130886, 29.044445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.664288, 41.047916, 29.125603>,  <34.314171, 40.909634, 29.260866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664288, 41.047916, 29.125603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453357, -0.829985, 0.324950,
		-0.168328, -0.437732, -0.883208,
		0.875291, 0.345710, -0.338158,
		34.926876, 41.151630, 29.024155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791931, 40.386223, 29.223141>,  <34.314171, 40.909634, 29.260866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791931, 40.386223, 29.223141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.066463, 40.676811, 29.209387>,  <35.231182, 40.851166, 29.201134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.066463, 40.676811, 29.209387>,  <34.791931, 40.386223, 29.223141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066463, 40.676811, 29.209387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635325, -0.575865, 0.514530,
		0.353991, -0.374985, -0.856783,
		0.686332, 0.726475, -0.034386,
		35.272362, 40.894753, 29.199070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422169, 40.068890, 28.952833>,  <34.791931, 40.386223, 29.223141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422169, 40.068890, 28.952833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541069, 40.395844, 29.150227>,  <35.612408, 40.592014, 29.268661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541069, 40.395844, 29.150227>,  <35.422169, 40.068890, 28.952833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541069, 40.395844, 29.150227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724574, -0.529699, 0.440921,
		0.621799, 0.226500, -0.749709,
		0.297252, 0.817384, 0.493482,
		35.630245, 40.641060, 29.298271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123306, 40.124821, 28.841682>,  <35.422169, 40.068890, 28.952833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123306, 40.124821, 28.841682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027035, 40.316109, 29.179529>,  <35.969273, 40.430882, 29.382236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027035, 40.316109, 29.179529>,  <36.123306, 40.124821, 28.841682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027035, 40.316109, 29.179529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758665, -0.450073, 0.471022,
		0.605393, 0.754146, -0.254488,
		-0.240681, 0.478224, 0.844615,
		35.954830, 40.459576, 29.432913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731518, 40.183815, 29.093555>,  <36.123306, 40.124821, 28.841682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731518, 40.183815, 29.093555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491322, 40.282528, 29.397795>,  <36.347202, 40.341755, 29.580338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491322, 40.282528, 29.397795>,  <36.731518, 40.183815, 29.093555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491322, 40.282528, 29.397795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712707, -0.266112, 0.649025,
		0.362575, 0.931816, -0.016089,
		-0.600490, 0.246787, 0.760597,
		36.311176, 40.356564, 29.625975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155521, 40.471203, 29.655592>,  <36.731518, 40.183815, 29.093555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155521, 40.471203, 29.655592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822453, 40.354546, 29.843893>,  <36.622612, 40.284554, 29.956875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822453, 40.354546, 29.843893>,  <37.155521, 40.471203, 29.655592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822453, 40.354546, 29.843893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542784, -0.261317, 0.798185,
		-0.109766, 0.920141, 0.375888,
		-0.832669, -0.291640, 0.470754,
		36.572651, 40.267056, 29.985119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070499, 40.792583, 30.365561>,  <37.155521, 40.471203, 29.655592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070499, 40.792583, 30.365561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855007, 40.455627, 30.360857>,  <36.725712, 40.253452, 30.358034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855007, 40.455627, 30.360857>,  <37.070499, 40.792583, 30.365561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855007, 40.455627, 30.360857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328723, -0.223038, 0.917712,
		-0.775697, 0.490538, 0.397072,
		-0.538735, -0.842393, -0.011759,
		36.693386, 40.202911, 30.357330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733223, 40.719978, 31.072172>,  <37.070499, 40.792583, 30.365561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733223, 40.719978, 31.072172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744976, 40.357376, 30.903704>,  <36.752026, 40.139816, 30.802622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744976, 40.357376, 30.903704>,  <36.733223, 40.719978, 31.072172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744976, 40.357376, 30.903704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202106, -0.407265, 0.890667,
		-0.978923, -0.111288, 0.171246,
		0.029379, -0.906504, -0.421173,
		36.753788, 40.085426, 30.777351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250923, 40.191147, 31.529181>,  <36.733223, 40.719978, 31.072172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250923, 40.191147, 31.529181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498592, 39.966003, 31.310160>,  <36.647194, 39.830917, 31.178747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498592, 39.966003, 31.310160>,  <36.250923, 40.191147, 31.529181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498592, 39.966003, 31.310160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226915, -0.539298, 0.810967,
		-0.751755, -0.626376, -0.206197,
		0.619172, -0.562859, -0.547555,
		36.684345, 39.797146, 31.145893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042461, 39.497902, 31.654821>,  <36.250923, 40.191147, 31.529181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042461, 39.497902, 31.654821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412491, 39.466553, 31.506178>,  <36.634510, 39.447742, 31.416992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412491, 39.466553, 31.506178>,  <36.042461, 39.497902, 31.654821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412491, 39.466553, 31.506178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246419, -0.620676, 0.744338,
		-0.288985, -0.780141, -0.554859,
		0.925076, -0.078375, -0.371608,
		36.690014, 39.443039, 31.394695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136818, 38.800148, 31.551231>,  <36.042461, 39.497902, 31.654821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136818, 38.800148, 31.551231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497566, 38.959343, 31.618448>,  <36.714016, 39.054859, 31.658779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497566, 38.959343, 31.618448>,  <36.136818, 38.800148, 31.551231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497566, 38.959343, 31.618448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176141, -0.693936, 0.698160,
		0.394468, -0.600050, -0.695942,
		0.901870, 0.397986, 0.168042,
		36.768127, 39.078739, 31.668861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523415, 38.219883, 31.788706>,  <36.136818, 38.800148, 31.551231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523415, 38.219883, 31.788706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785172, 38.512947, 31.863522>,  <36.942226, 38.688786, 31.908411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785172, 38.512947, 31.863522>,  <36.523415, 38.219883, 31.788706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785172, 38.512947, 31.863522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444773, -0.572995, 0.688370,
		0.611510, -0.367276, -0.700830,
		0.654394, 0.732656, 0.187038,
		36.981491, 38.732742, 31.919634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174042, 37.926506, 31.736343>,  <36.523415, 38.219883, 31.788706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174042, 37.926506, 31.736343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171932, 38.244141, 31.979458>,  <37.170666, 38.434719, 32.125328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171932, 38.244141, 31.979458>,  <37.174042, 37.926506, 31.736343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171932, 38.244141, 31.979458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423185, -0.548918, 0.720836,
		0.906028, 0.261005, -0.333151,
		-0.005269, 0.794082, 0.607788,
		37.170353, 38.482365, 32.161793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877506, 37.938183, 31.866779>,  <37.174042, 37.926506, 31.736343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877506, 37.938183, 31.866779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.685616, 38.145630, 32.149876>,  <37.570480, 38.270100, 32.319733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.685616, 38.145630, 32.149876>,  <37.877506, 37.938183, 31.866779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685616, 38.145630, 32.149876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467893, -0.531150, 0.706368,
		0.742251, 0.670011, 0.012150,
		-0.479728, 0.518618, 0.707740,
		37.541698, 38.301216, 32.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.433735, 43.286057, 30.787195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046520, 43.227055, 30.868330>,  <36.814190, 43.191654, 30.917011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046520, 43.227055, 30.868330>,  <37.433735, 43.286057, 30.787195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046520, 43.227055, 30.868330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247960, 0.441512, -0.862313,
		0.037642, -0.885048, -0.463976,
		-0.968039, -0.147507, 0.202837,
		36.756107, 43.182804, 30.929180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123589, 42.970795, 30.192646>,  <37.433735, 43.286057, 30.787195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123589, 42.970795, 30.192646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.833111, 43.152111, 30.399399>,  <36.658825, 43.260899, 30.523451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.833111, 43.152111, 30.399399>,  <37.123589, 42.970795, 30.192646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833111, 43.152111, 30.399399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188399, 0.591850, -0.783722,
		-0.661167, -0.666517, -0.344402,
		-0.726198, 0.453286, 0.516883,
		36.615250, 43.288097, 30.554464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633442, 43.169521, 29.743776>,  <37.123589, 42.970795, 30.192646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633442, 43.169521, 29.743776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542843, 43.403362, 30.055401>,  <36.488483, 43.543667, 30.242374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542843, 43.403362, 30.055401>,  <36.633442, 43.169521, 29.743776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542843, 43.403362, 30.055401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316713, 0.712177, -0.626496,
		-0.921082, -0.388638, 0.023846,
		-0.226498, 0.584606, 0.779060,
		36.474892, 43.578743, 30.289120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889404, 43.376884, 29.643002>,  <36.633442, 43.169521, 29.743776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889404, 43.376884, 29.643002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053532, 43.635204, 29.900555>,  <36.152008, 43.790195, 30.055086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053532, 43.635204, 29.900555>,  <35.889404, 43.376884, 29.643002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053532, 43.635204, 29.900555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488702, 0.751827, -0.442637,
		-0.769942, -0.133045, 0.624090,
		0.410317, 0.645798, 0.643883,
		36.176628, 43.828945, 30.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393379, 43.731686, 30.065081>,  <35.889404, 43.376884, 29.643002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393379, 43.731686, 30.065081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.712833, 43.972176, 30.075699>,  <35.904507, 44.116470, 30.082069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.712833, 43.972176, 30.075699>,  <35.393379, 43.731686, 30.065081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712833, 43.972176, 30.075699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545810, 0.742197, -0.388891,
		-0.253515, 0.296093, 0.920901,
		0.798638, 0.601227, 0.026548,
		35.952423, 44.152542, 30.083664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068657, 44.369652, 30.024836>,  <35.393379, 43.731686, 30.065081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068657, 44.369652, 30.024836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.442551, 44.483601, 29.939863>,  <35.666885, 44.551971, 29.888880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.442551, 44.483601, 29.939863>,  <35.068657, 44.369652, 30.024836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442551, 44.483601, 29.939863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348330, 0.852817, -0.389062,
		0.070329, 0.437664, 0.896384,
		0.934730, 0.284875, -0.212430,
		35.722969, 44.569065, 29.876135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069927, 45.047272, 30.181778>,  <35.068657, 44.369652, 30.024836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069927, 45.047272, 30.181778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404690, 45.011395, 29.965799>,  <35.605549, 44.989868, 29.836212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404690, 45.011395, 29.965799>,  <35.069927, 45.047272, 30.181778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404690, 45.011395, 29.965799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273329, 0.786188, -0.554257,
		0.474215, 0.611444, 0.633449,
		0.836906, -0.089697, -0.539947,
		35.655762, 44.984486, 29.803816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592911, 45.725296, 30.294367>,  <35.069927, 45.047272, 30.181778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592911, 45.725296, 30.294367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647739, 45.534290, 29.947220>,  <35.680637, 45.419685, 29.738932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647739, 45.534290, 29.947220>,  <35.592911, 45.725296, 30.294367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647739, 45.534290, 29.947220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417136, 0.766839, -0.487807,
		0.898449, 0.428881, -0.094079,
		0.137068, -0.477513, -0.867867,
		35.688858, 45.391037, 29.686859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525646, 46.201939, 29.858828>,  <35.592911, 45.725296, 30.294367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525646, 46.201939, 29.858828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.512535, 45.909653, 29.586071>,  <35.504669, 45.734280, 29.422417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.512535, 45.909653, 29.586071>,  <35.525646, 46.201939, 29.858828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512535, 45.909653, 29.586071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517971, 0.595907, -0.613678,
		0.854770, 0.333089, -0.398020,
		-0.032773, -0.730717, -0.681894,
		35.502705, 45.690437, 29.381502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723801, 46.538864, 29.248474>,  <35.525646, 46.201939, 29.858828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723801, 46.538864, 29.248474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528046, 46.204933, 29.147627>,  <35.410595, 46.004574, 29.087118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528046, 46.204933, 29.147627>,  <35.723801, 46.538864, 29.248474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528046, 46.204933, 29.147627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564153, 0.523528, -0.638474,
		0.665007, -0.170226, -0.727178,
		-0.489383, -0.834830, -0.252117,
		35.381229, 45.954483, 29.071993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776203, 46.549286, 28.523657>,  <35.723801, 46.538864, 29.248474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776203, 46.549286, 28.523657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465008, 46.310894, 28.603203>,  <35.278290, 46.167858, 28.650930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465008, 46.310894, 28.603203>,  <35.776203, 46.549286, 28.523657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465008, 46.310894, 28.603203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527080, 0.446842, -0.722854,
		0.341941, -0.667191, -0.661765,
		-0.777987, -0.595977, 0.198869,
		35.231613, 46.132099, 28.662863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624275, 46.103401, 27.874605>,  <35.776203, 46.549286, 28.523657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624275, 46.103401, 27.874605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306503, 46.130295, 28.116053>,  <35.115841, 46.146431, 28.260921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306503, 46.130295, 28.116053>,  <35.624275, 46.103401, 27.874605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306503, 46.130295, 28.116053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551324, 0.337108, -0.763151,
		-0.254792, -0.939063, -0.230743,
		-0.794432, 0.067231, 0.603620,
		35.068172, 46.150463, 28.297138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079449, 45.821518, 27.377028>,  <35.624275, 46.103401, 27.874605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079449, 45.821518, 27.377028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873699, 45.991642, 27.674896>,  <34.750252, 46.093716, 27.853619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873699, 45.991642, 27.674896>,  <35.079449, 45.821518, 27.377028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873699, 45.991642, 27.674896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377499, 0.667402, -0.641926,
		-0.770011, -0.611301, -0.182739,
		-0.514370, 0.425306, 0.744673,
		34.719387, 46.119232, 27.898298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287270, 45.994648, 27.171061>,  <35.079449, 45.821518, 27.377028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287270, 45.994648, 27.171061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.401924, 46.226650, 27.476068>,  <34.470718, 46.365852, 27.659073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.401924, 46.226650, 27.476068>,  <34.287270, 45.994648, 27.171061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401924, 46.226650, 27.476068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363457, 0.802250, -0.473598,
		-0.886419, -0.141392, 0.440761,
		0.286637, 0.580004, 0.762519,
		34.487915, 46.400650, 27.704824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736912, 46.398670, 27.037458>,  <34.287270, 45.994648, 27.171061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736912, 46.398670, 27.037458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467896, 46.256729, 26.777683>,  <33.306484, 46.171566, 26.621819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467896, 46.256729, 26.777683>,  <33.736912, 46.398670, 27.037458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467896, 46.256729, 26.777683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281197, -0.934263, 0.219275,
		-0.684555, -0.035148, 0.728114,
		-0.672543, -0.354849, -0.649437,
		33.266132, 46.150276, 26.582851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281082, 45.993217, 27.468586>,  <33.736912, 46.398670, 27.037458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281082, 45.993217, 27.468586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212475, 45.867035, 27.095263>,  <33.171310, 45.791325, 26.871267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212475, 45.867035, 27.095263>,  <33.281082, 45.993217, 27.468586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212475, 45.867035, 27.095263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140636, -0.945487, 0.293730,
		-0.975091, -0.080876, 0.206533,
		-0.171518, -0.315459, -0.933310,
		33.161018, 45.772396, 26.815269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801544, 45.473019, 27.514839>,  <33.281082, 45.993217, 27.468586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801544, 45.473019, 27.514839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.004025, 45.414104, 27.174942>,  <33.125515, 45.378754, 26.971004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.004025, 45.414104, 27.174942>,  <32.801544, 45.473019, 27.514839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004025, 45.414104, 27.174942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210896, -0.934251, 0.287571,
		-0.836229, -0.324777, -0.441860,
		0.506205, -0.147289, -0.849742,
		33.155888, 45.369919, 26.920019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528942, 44.791901, 27.177155>,  <32.801544, 45.473019, 27.514839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528942, 44.791901, 27.177155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878216, 44.869991, 26.998522>,  <33.087780, 44.916847, 26.891342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878216, 44.869991, 26.998522>,  <32.528942, 44.791901, 27.177155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878216, 44.869991, 26.998522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265021, -0.959159, 0.098883,
		-0.409040, -0.204698, -0.889261,
		0.873184, 0.195226, -0.446584,
		33.140171, 44.928558, 26.864546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630703, 44.240517, 26.756346>,  <32.528942, 44.791901, 27.177155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630703, 44.240517, 26.756346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994671, 44.380470, 26.845457>,  <33.213051, 44.464443, 26.898924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994671, 44.380470, 26.845457>,  <32.630703, 44.240517, 26.756346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994671, 44.380470, 26.845457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284041, -0.917000, 0.280056,
		0.302276, -0.191549, -0.933776,
		0.909917, 0.349885, 0.222779,
		33.267647, 44.485435, 26.912291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030243, 43.727272, 26.496090>,  <32.630703, 44.240517, 26.756346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030243, 43.727272, 26.496090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.233669, 43.938362, 26.768225>,  <33.355724, 44.065018, 26.931505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.233669, 43.938362, 26.768225>,  <33.030243, 43.727272, 26.496090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233669, 43.938362, 26.768225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328406, -0.849310, 0.413307,
		0.795932, 0.013232, -0.605241,
		0.508568, 0.527729, 0.680338,
		33.386238, 44.096680, 26.972326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650425, 43.381413, 26.533564>,  <33.030243, 43.727272, 26.496090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650425, 43.381413, 26.533564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682728, 43.602917, 26.865065>,  <33.702110, 43.735817, 27.063965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682728, 43.602917, 26.865065>,  <33.650425, 43.381413, 26.533564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682728, 43.602917, 26.865065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556723, -0.714741, 0.423325,
		0.826763, 0.427197, -0.366014,
		0.080762, 0.553758, 0.828752,
		33.706955, 43.769043, 27.113689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363255, 43.377914, 26.704535>,  <33.650425, 43.381413, 26.533564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363255, 43.377914, 26.704535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.158787, 43.421898, 27.045502>,  <34.036106, 43.448288, 27.250082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.158787, 43.421898, 27.045502>,  <34.363255, 43.377914, 26.704535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158787, 43.421898, 27.045502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582548, -0.684887, 0.437685,
		0.631934, 0.720305, 0.286041,
		-0.511172, 0.109956, 0.852416,
		34.005436, 43.454884, 27.301226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852997, 43.362125, 27.148563>,  <34.363255, 43.377914, 26.704535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852997, 43.362125, 27.148563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535240, 43.284641, 27.378838>,  <34.344585, 43.238152, 27.517002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535240, 43.284641, 27.378838>,  <34.852997, 43.362125, 27.148563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535240, 43.284641, 27.378838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574222, -0.548467, 0.607826,
		0.198002, 0.813425, 0.546932,
		-0.794395, -0.193710, 0.575684,
		34.296921, 43.226528, 27.551542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195084, 43.362312, 27.803942>,  <34.852997, 43.362125, 27.148563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195084, 43.362312, 27.803942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859364, 43.146935, 27.833998>,  <34.657932, 43.017708, 27.852032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859364, 43.146935, 27.833998>,  <35.195084, 43.362312, 27.803942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859364, 43.146935, 27.833998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474465, -0.657962, 0.584781,
		-0.265433, 0.526460, 0.807704,
		-0.839302, -0.538448, 0.075142,
		34.607574, 42.985401, 27.856541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311665, 43.032291, 28.424963>,  <35.195084, 43.362312, 27.803942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311665, 43.032291, 28.424963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993214, 42.838638, 28.279747>,  <34.802143, 42.722446, 28.192617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993214, 42.838638, 28.279747>,  <35.311665, 43.032291, 28.424963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993214, 42.838638, 28.279747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171048, -0.755506, 0.632419,
		-0.580456, 0.441387, 0.684287,
		-0.796124, -0.484137, -0.363040,
		34.754375, 42.693398, 28.170835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982197, 42.823299, 28.967314>,  <35.311665, 43.032291, 28.424963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982197, 42.823299, 28.967314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.887585, 42.578918, 28.665110>,  <34.830818, 42.432289, 28.483788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.887585, 42.578918, 28.665110>,  <34.982197, 42.823299, 28.967314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887585, 42.578918, 28.665110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249489, -0.789693, 0.560482,
		-0.939045, -0.055917, 0.339215,
		-0.236535, -0.610948, -0.755509,
		34.816624, 42.395634, 28.438457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809566, 42.312366, 29.364620>,  <34.982197, 42.823299, 28.967314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809566, 42.312366, 29.364620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.840427, 42.153687, 28.998739>,  <34.858944, 42.058479, 28.779211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.840427, 42.153687, 28.998739>,  <34.809566, 42.312366, 29.364620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840427, 42.153687, 28.998739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138490, -0.904277, 0.403860,
		-0.987354, -0.157835, -0.014828,
		0.077151, -0.396700, -0.914700,
		34.863571, 42.034676, 28.724329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353069, 41.618454, 29.322704>,  <34.809566, 42.312366, 29.364620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353069, 41.618454, 29.322704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636547, 41.613281, 29.040546>,  <34.806633, 41.610176, 28.871252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636547, 41.613281, 29.040546>,  <34.353069, 41.618454, 29.322704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636547, 41.613281, 29.040546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459358, -0.750407, 0.475269,
		-0.535480, -0.660850, -0.525869,
		0.708697, -0.012935, -0.705395,
		34.849155, 41.609402, 28.828928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658020, 41.402313, 29.051205>,  <34.353069, 41.618454, 29.322704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658020, 41.402313, 29.051205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371983, 41.126556, 29.004936>,  <33.200359, 40.961102, 28.977175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371983, 41.126556, 29.004936>,  <33.658020, 41.402313, 29.051205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371983, 41.126556, 29.004936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556655, 0.661683, -0.502306,
		0.422826, -0.294804, -0.856918,
		-0.715090, -0.689396, -0.115672,
		33.157455, 40.919739, 28.970234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454929, 41.451389, 28.322018>,  <33.658020, 41.402313, 29.051205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454929, 41.451389, 28.322018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149986, 41.244076, 28.477037>,  <32.967022, 41.119686, 28.570049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149986, 41.244076, 28.477037>,  <33.454929, 41.451389, 28.322018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149986, 41.244076, 28.477037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645334, 0.563900, -0.515326,
		0.048545, -0.642961, -0.764359,
		-0.762357, -0.518283, 0.387550,
		32.921280, 41.088593, 28.593302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051838, 41.332939, 27.727947>,  <33.454929, 41.451389, 28.322018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051838, 41.332939, 27.727947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.792953, 41.277718, 28.027830>,  <32.637623, 41.244583, 28.207760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.792953, 41.277718, 28.027830>,  <33.051838, 41.332939, 27.727947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792953, 41.277718, 28.027830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659832, 0.593966, -0.460246,
		-0.381760, -0.792556, -0.475515,
		-0.647210, -0.138056, 0.749706,
		32.598789, 41.236301, 28.252743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479874, 41.219082, 27.391483>,  <33.051838, 41.332939, 27.727947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479874, 41.219082, 27.391483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.363384, 41.332806, 27.756857>,  <32.293491, 41.401039, 27.976082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.363384, 41.332806, 27.756857>,  <32.479874, 41.219082, 27.391483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363384, 41.332806, 27.756857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703780, 0.583071, -0.405859,
		-0.647985, -0.761051, 0.030289,
		-0.291219, 0.284307, 0.913433,
		32.276020, 41.418098, 28.030888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676947, 41.138630, 27.470268>,  <32.479874, 41.219082, 27.391483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676947, 41.138630, 27.470268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769505, 41.416306, 27.742903>,  <31.825039, 41.582912, 27.906483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769505, 41.416306, 27.742903>,  <31.676947, 41.138630, 27.470268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769505, 41.416306, 27.742903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690407, 0.610773, -0.387679,
		-0.685416, -0.380864, 0.620602,
		0.231394, 0.694189, 0.681585,
		31.838923, 41.624561, 27.947378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055935, 41.559410, 27.646646>,  <31.676947, 41.138630, 27.470268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055935, 41.559410, 27.646646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353943, 41.801296, 27.759262>,  <31.532747, 41.946426, 27.826832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353943, 41.801296, 27.759262>,  <31.055935, 41.559410, 27.646646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353943, 41.801296, 27.759262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423868, 0.755085, -0.500183,
		-0.515056, 0.253309, 0.818872,
		0.745019, 0.604716, 0.281541,
		31.577448, 41.982712, 27.843725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711485, 42.193508, 27.941347>,  <31.055935, 41.559410, 27.646646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711485, 42.193508, 27.941347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.088671, 42.257076, 27.824341>,  <31.314981, 42.295216, 27.754137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.088671, 42.257076, 27.824341>,  <30.711485, 42.193508, 27.941347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088671, 42.257076, 27.824341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268786, 0.881871, -0.387372,
		0.196401, 0.443902, 0.874287,
		0.942963, 0.158916, -0.292516,
		31.371559, 42.304752, 27.736586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650923, 42.316692, 28.719650>,  <30.711485, 42.193508, 27.941347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650923, 42.316692, 28.719650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.344894, 42.392452, 28.965836>,  <30.161278, 42.437908, 29.113546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.344894, 42.392452, 28.965836>,  <30.650923, 42.316692, 28.719650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344894, 42.392452, 28.965836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299966, -0.740917, 0.600885,
		0.569812, 0.644338, 0.510042,
		-0.765071, 0.189396, 0.615463,
		30.115374, 42.449272, 29.150475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885782, 42.251968, 29.323107>,  <30.650923, 42.316692, 28.719650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885782, 42.251968, 29.323107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.502584, 42.190968, 29.420256>,  <30.272665, 42.154369, 29.478544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.502584, 42.190968, 29.420256>,  <30.885782, 42.251968, 29.323107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502584, 42.190968, 29.420256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262021, -0.809683, 0.525127,
		0.116567, 0.566708, 0.815631,
		-0.957996, -0.152500, 0.242872,
		30.215185, 42.145218, 29.493116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830667, 42.205284, 30.069777>,  <30.885782, 42.251968, 29.323107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830667, 42.205284, 30.069777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523067, 42.009163, 29.905710>,  <30.338507, 41.891491, 29.807270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523067, 42.009163, 29.905710>,  <30.830667, 42.205284, 30.069777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523067, 42.009163, 29.905710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140666, -0.755704, 0.639628,
		-0.623579, 0.434178, 0.650107,
		-0.769001, -0.490306, -0.410167,
		30.292368, 41.862072, 29.782660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463152, 41.906563, 30.651644>,  <30.830667, 42.205284, 30.069777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463152, 41.906563, 30.651644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.333723, 41.683243, 30.346067>,  <30.256065, 41.549252, 30.162722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.333723, 41.683243, 30.346067>,  <30.463152, 41.906563, 30.651644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333723, 41.683243, 30.346067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070202, -0.819315, 0.569029,
		-0.943596, 0.130492, 0.304301,
		-0.323572, -0.558296, -0.763942,
		30.236652, 41.515755, 30.116884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997055, 41.460556, 30.909035>,  <30.463152, 41.906563, 30.651644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997055, 41.460556, 30.909035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.076031, 41.278076, 30.561956>,  <30.123417, 41.168587, 30.353710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.076031, 41.278076, 30.561956>,  <29.997055, 41.460556, 30.909035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076031, 41.278076, 30.561956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012049, -0.883923, 0.467477,
		-0.980241, -0.102753, -0.169025,
		0.197440, -0.456203, -0.867696,
		30.135263, 41.141216, 30.301647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535728, 40.918274, 30.890785>,  <29.997055, 41.460556, 30.909035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535728, 40.918274, 30.890785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834433, 40.844818, 30.635088>,  <30.013655, 40.800747, 30.481670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834433, 40.844818, 30.635088>,  <29.535728, 40.918274, 30.890785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834433, 40.844818, 30.635088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129015, -0.902876, 0.410084,
		-0.652462, -0.388706, -0.650539,
		0.746759, -0.183635, -0.639242,
		30.058460, 40.789726, 30.443316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207867, 40.300652, 30.616785>,  <29.535728, 40.918274, 30.890785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207867, 40.300652, 30.616785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.605463, 40.338936, 30.595528>,  <29.844021, 40.361904, 30.582773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.605463, 40.338936, 30.595528>,  <29.207867, 40.300652, 30.616785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605463, 40.338936, 30.595528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109117, -0.905215, 0.410706,
		-0.008798, -0.414037, -0.910217,
		0.993990, 0.095707, -0.053143,
		29.903660, 40.367649, 30.579584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.180515, 47.370010, 29.683374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495953, 47.206936, 29.499235>,  <32.685215, 47.109093, 29.388752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495953, 47.206936, 29.499235>,  <32.180515, 47.370010, 29.683374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495953, 47.206936, 29.499235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304340, -0.391752, 0.868278,
		-0.534328, -0.824816, -0.184856,
		0.788588, -0.407687, -0.460349,
		32.732529, 47.084629, 29.361130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193596, 46.609642, 29.676003>,  <32.180515, 47.370010, 29.683374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193596, 46.609642, 29.676003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575123, 46.729454, 29.685127>,  <32.804039, 46.801342, 29.690601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575123, 46.729454, 29.685127>,  <32.193596, 46.609642, 29.676003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575123, 46.729454, 29.685127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212237, -0.725678, 0.654483,
		0.212592, -0.619413, -0.755733,
		0.953813, 0.299532, 0.022811,
		32.861267, 46.819313, 29.691971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537544, 46.027313, 29.419857>,  <32.193596, 46.609642, 29.676003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537544, 46.027313, 29.419857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.793747, 46.241447, 29.640100>,  <32.947468, 46.369926, 29.772247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.793747, 46.241447, 29.640100>,  <32.537544, 46.027313, 29.419857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793747, 46.241447, 29.640100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121612, -0.778643, 0.615569,
		0.758262, -0.327315, -0.563828,
		0.640506, 0.535331, 0.550611,
		32.985897, 46.402046, 29.805285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052177, 45.555988, 29.596678>,  <32.537544, 46.027313, 29.419857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052177, 45.555988, 29.596678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.133327, 45.842434, 29.863817>,  <33.182018, 46.014301, 30.024101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.133327, 45.842434, 29.863817>,  <33.052177, 45.555988, 29.596678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133327, 45.842434, 29.863817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169683, -0.697425, 0.696280,
		0.964391, -0.027936, -0.263002,
		0.202875, 0.716113, 0.667850,
		33.194191, 46.057266, 30.064173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606503, 45.362358, 29.968481>,  <33.052177, 45.555988, 29.596678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606503, 45.362358, 29.968481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458206, 45.656277, 30.195681>,  <33.369228, 45.832630, 30.332001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458206, 45.656277, 30.195681>,  <33.606503, 45.362358, 29.968481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458206, 45.656277, 30.195681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213468, -0.527788, 0.822114,
		0.903872, 0.426038, 0.038815,
		-0.370738, 0.734800, 0.567998,
		33.346985, 45.876717, 30.366079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141930, 45.509911, 30.449467>,  <33.606503, 45.362358, 29.968481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141930, 45.509911, 30.449467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.781956, 45.608574, 30.593285>,  <33.565971, 45.667770, 30.679575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.781956, 45.608574, 30.593285>,  <34.141930, 45.509911, 30.449467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781956, 45.608574, 30.593285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174624, -0.551701, 0.815556,
		0.399523, 0.796735, 0.453425,
		-0.899938, 0.246654, 0.359546,
		33.511974, 45.682571, 30.701149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240868, 45.747276, 31.116776>,  <34.141930, 45.509911, 30.449467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240868, 45.747276, 31.116776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854546, 45.643581, 31.115284>,  <33.622753, 45.581364, 31.114389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854546, 45.643581, 31.115284>,  <34.240868, 45.747276, 31.116776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854546, 45.643581, 31.115284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133155, -0.508318, 0.850813,
		-0.222453, 0.821225, 0.525456,
		-0.965808, -0.259233, -0.003727,
		33.564804, 45.565811, 31.114166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988922, 45.785515, 31.839373>,  <34.240868, 45.747276, 31.116776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988922, 45.785515, 31.839373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.709408, 45.563263, 31.659161>,  <33.541698, 45.429913, 31.551033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.709408, 45.563263, 31.659161>,  <33.988922, 45.785515, 31.839373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709408, 45.563263, 31.659161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089105, -0.557299, 0.825517,
		-0.709762, 0.617001, 0.339922,
		-0.698783, -0.555632, -0.450528,
		33.499771, 45.396572, 31.524002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448082, 45.749725, 32.301441>,  <33.988922, 45.785515, 31.839373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448082, 45.749725, 32.301441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393536, 45.427864, 32.070290>,  <33.360809, 45.234749, 31.931599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393536, 45.427864, 32.070290>,  <33.448082, 45.749725, 32.301441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393536, 45.427864, 32.070290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209283, -0.546762, 0.810711,
		-0.968300, 0.231495, -0.093839,
		-0.136368, -0.804650, -0.577877,
		33.352627, 45.186470, 31.896927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918659, 45.415405, 32.628857>,  <33.448082, 45.749725, 32.301441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918659, 45.415405, 32.628857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059517, 45.126621, 32.390606>,  <33.144032, 44.953350, 32.247654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059517, 45.126621, 32.390606>,  <32.918659, 45.415405, 32.628857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059517, 45.126621, 32.390606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093994, -0.660453, 0.744961,
		-0.931215, -0.206346, -0.300432,
		0.352141, -0.721958, -0.595629,
		33.165161, 44.910034, 32.211918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604412, 44.712002, 32.835323>,  <32.918659, 45.415405, 32.628857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604412, 44.712002, 32.835323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.924622, 44.620205, 32.613876>,  <33.116749, 44.565125, 32.481007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.924622, 44.620205, 32.613876>,  <32.604412, 44.712002, 32.835323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924622, 44.620205, 32.613876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173395, -0.795569, 0.580520,
		-0.573668, -0.560715, -0.597079,
		0.800524, -0.229495, -0.553618,
		33.164780, 44.551357, 32.447792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585140, 43.906906, 32.692028>,  <32.604412, 44.712002, 32.835323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585140, 43.906906, 32.692028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947598, 44.075462, 32.677380>,  <33.165070, 44.176598, 32.668591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947598, 44.075462, 32.677380>,  <32.585140, 43.906906, 32.692028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947598, 44.075462, 32.677380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325791, -0.640101, 0.695795,
		0.269760, -0.642419, -0.717306,
		0.906140, 0.421389, -0.036621,
		33.219440, 44.201878, 32.666393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248596, 43.275681, 32.337864>,  <32.585140, 43.906906, 32.692028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248596, 43.275681, 32.337864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888096, 43.148811, 32.455948>,  <31.671795, 43.072689, 32.526798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888096, 43.148811, 32.455948>,  <32.248596, 43.275681, 32.337864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888096, 43.148811, 32.455948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433052, 0.682060, -0.589288,
		-0.014444, -0.658937, -0.752059,
		-0.901254, -0.317169, 0.295206,
		31.617720, 43.053661, 32.544510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876347, 43.016434, 31.780975>,  <32.248596, 43.275681, 32.337864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876347, 43.016434, 31.780975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.594584, 43.122478, 32.044346>,  <31.425526, 43.186104, 32.202370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.594584, 43.122478, 32.044346>,  <31.876347, 43.016434, 31.780975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594584, 43.122478, 32.044346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378524, 0.644409, -0.664422,
		-0.600442, -0.717254, -0.353575,
		-0.704406, 0.265111, 0.658428,
		31.383261, 43.202011, 32.241875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232464, 42.975208, 31.470835>,  <31.876347, 43.016434, 31.780975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232464, 42.975208, 31.470835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.147217, 43.220043, 31.775448>,  <31.096069, 43.366943, 31.958216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.147217, 43.220043, 31.775448>,  <31.232464, 42.975208, 31.470835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147217, 43.220043, 31.775448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492974, 0.605580, -0.624700,
		-0.843539, -0.508549, 0.172683,
		-0.213117, 0.612087, 0.761532,
		31.083282, 43.403667, 32.003906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568724, 43.177639, 31.303055>,  <31.232464, 42.975208, 31.470835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568724, 43.177639, 31.303055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704973, 43.444927, 31.567617>,  <30.786722, 43.605301, 31.726355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704973, 43.444927, 31.567617>,  <30.568724, 43.177639, 31.303055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704973, 43.444927, 31.567617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386974, 0.740766, -0.549106,
		-0.856870, -0.068908, 0.510906,
		0.340624, 0.668220, 0.661405,
		30.807161, 43.645393, 31.766039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029825, 43.747200, 31.344330>,  <30.568724, 43.177639, 31.303055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029825, 43.747200, 31.344330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.372038, 43.905720, 31.477606>,  <30.577366, 44.000832, 31.557571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.372038, 43.905720, 31.477606>,  <30.029825, 43.747200, 31.344330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372038, 43.905720, 31.477606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178401, 0.829758, -0.528842,
		-0.486047, 0.392999, 0.780583,
		0.855530, 0.396300, 0.333190,
		30.628696, 44.024609, 31.577562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846077, 44.360344, 31.645178>,  <30.029825, 43.747200, 31.344330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846077, 44.360344, 31.645178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231077, 44.425934, 31.558737>,  <30.462078, 44.465286, 31.506872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231077, 44.425934, 31.558737>,  <29.846077, 44.360344, 31.645178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231077, 44.425934, 31.558737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253352, 0.828102, -0.500060,
		0.096958, 0.536060, 0.838594,
		0.962503, 0.163975, -0.216103,
		30.519829, 44.475128, 31.493906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831940, 45.098225, 31.585917>,  <29.846077, 44.360344, 31.645178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831940, 45.098225, 31.585917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174410, 44.976803, 31.418671>,  <30.379892, 44.903950, 31.318323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174410, 44.976803, 31.418671>,  <29.831940, 45.098225, 31.585917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174410, 44.976803, 31.418671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024058, 0.784926, -0.619122,
		0.516122, 0.540137, 0.664733,
		0.856177, -0.303551, -0.418112,
		30.431263, 44.885738, 31.293238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168858, 45.631485, 31.501240>,  <29.831940, 45.098225, 31.585917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168858, 45.631485, 31.501240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342731, 45.388920, 31.234915>,  <30.447056, 45.243382, 31.075119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342731, 45.388920, 31.234915>,  <30.168858, 45.631485, 31.501240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342731, 45.388920, 31.234915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151549, 0.679516, -0.717838,
		0.887740, 0.412936, 0.203472,
		0.434684, -0.606418, -0.665814,
		30.473137, 45.206993, 31.035172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765953, 46.007053, 31.175301>,  <30.168858, 45.631485, 31.501240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765953, 46.007053, 31.175301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622122, 45.721130, 30.935383>,  <30.535824, 45.549576, 30.791431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622122, 45.721130, 30.935383>,  <30.765953, 46.007053, 31.175301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622122, 45.721130, 30.935383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197252, 0.686490, -0.699874,
		0.912028, -0.133347, -0.387844,
		-0.359577, -0.714808, -0.599795,
		30.514250, 45.506687, 30.755444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152983, 46.078789, 30.522074>,  <30.765953, 46.007053, 31.175301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152983, 46.078789, 30.522074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826630, 45.862206, 30.440926>,  <30.630817, 45.732254, 30.392237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826630, 45.862206, 30.440926>,  <31.152983, 46.078789, 30.522074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826630, 45.862206, 30.440926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158290, 0.546605, -0.822294,
		0.556140, -0.638776, -0.531671,
		-0.815876, -0.541468, -0.202877,
		30.581865, 45.699768, 30.380064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154373, 46.127209, 29.850952>,  <31.152983, 46.078789, 30.522074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154373, 46.127209, 29.850952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.785458, 45.975372, 29.880041>,  <30.564108, 45.884270, 29.897495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.785458, 45.975372, 29.880041>,  <31.154373, 46.127209, 29.850952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785458, 45.975372, 29.880041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289408, 0.553560, -0.780906,
		0.256168, -0.741270, -0.620400,
		-0.922292, -0.379592, 0.072725,
		30.508770, 45.861496, 29.901859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877731, 46.074089, 29.165157>,  <31.154373, 46.127209, 29.850952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877731, 46.074089, 29.165157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.552036, 46.070522, 29.397343>,  <30.356619, 46.068382, 29.536654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.552036, 46.070522, 29.397343>,  <30.877731, 46.074089, 29.165157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552036, 46.070522, 29.397343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452376, 0.636390, -0.624791,
		-0.363831, -0.771316, -0.522206,
		-0.814238, -0.008915, 0.580463,
		30.307764, 46.067848, 29.571482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289030, 46.002148, 28.734072>,  <30.877731, 46.074089, 29.165157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289030, 46.002148, 28.734072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.143341, 46.153885, 29.074293>,  <30.055927, 46.244926, 29.278425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.143341, 46.153885, 29.074293>,  <30.289030, 46.002148, 28.734072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143341, 46.153885, 29.074293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455086, 0.724330, -0.517921,
		-0.812550, -0.575715, -0.091187,
		-0.364224, 0.379339, 0.850554,
		30.034073, 46.267685, 29.329460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622023, 45.750572, 28.365206>,  <30.289030, 46.002148, 28.734072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622023, 45.750572, 28.365206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.376587, 45.491955, 28.183882>,  <29.229324, 45.336784, 28.075087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.376587, 45.491955, 28.183882>,  <29.622023, 45.750572, 28.365206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376587, 45.491955, 28.183882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351285, -0.737654, 0.576599,
		-0.707181, 0.194555, 0.679738,
		-0.613591, -0.646541, -0.453310,
		29.192509, 45.297993, 28.047888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443390, 45.294373, 28.938959>,  <29.622023, 45.750572, 28.365206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443390, 45.294373, 28.938959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321774, 45.103729, 28.609013>,  <29.248804, 44.989346, 28.411045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321774, 45.103729, 28.609013>,  <29.443390, 45.294373, 28.938959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321774, 45.103729, 28.609013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190488, -0.878788, 0.437546,
		-0.933420, -0.024095, 0.357975,
		-0.304042, -0.476604, -0.824868,
		29.230560, 44.960747, 28.361551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897110, 44.858524, 29.188578>,  <29.443390, 45.294373, 28.938959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897110, 44.858524, 29.188578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.025915, 44.702290, 28.843615>,  <29.103199, 44.608547, 28.636637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.025915, 44.702290, 28.843615>,  <28.897110, 44.858524, 29.188578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025915, 44.702290, 28.843615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032391, -0.905851, 0.422355,
		-0.946181, -0.163938, -0.279044,
		0.322012, -0.390586, -0.862409,
		29.122519, 44.585114, 28.584892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422161, 44.308464, 29.076658>,  <28.897110, 44.858524, 29.188578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422161, 44.308464, 29.076658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754257, 44.238747, 28.864878>,  <28.953516, 44.196915, 28.737810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754257, 44.238747, 28.864878>,  <28.422161, 44.308464, 29.076658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754257, 44.238747, 28.864878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045467, -0.925512, 0.375980,
		-0.555545, -0.336227, -0.760474,
		0.830242, -0.174297, -0.529451,
		29.003330, 44.186459, 28.706043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344997, 43.629925, 28.713215>,  <28.422161, 44.308464, 29.076658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344997, 43.629925, 28.713215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741848, 43.680016, 28.712910>,  <28.979959, 43.710068, 28.712727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741848, 43.680016, 28.712910>,  <28.344997, 43.629925, 28.713215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741848, 43.680016, 28.712910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119820, -0.947502, 0.296449,
		0.036398, -0.294207, -0.955048,
		0.992128, 0.125224, -0.000765,
		29.039486, 43.717583, 28.712681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688461, 42.990715, 28.488577>,  <28.344997, 43.629925, 28.713215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688461, 42.990715, 28.488577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981836, 43.181324, 28.682484>,  <29.157862, 43.295689, 28.798828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981836, 43.181324, 28.682484>,  <28.688461, 42.990715, 28.488577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981836, 43.181324, 28.682484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350904, -0.876192, 0.330385,
		0.582183, -0.072210, -0.809845,
		0.733437, 0.476522, 0.484765,
		29.201868, 43.324280, 28.827913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271847, 42.660046, 28.249056>,  <28.688461, 42.990715, 28.488577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271847, 42.660046, 28.249056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403057, 42.825706, 28.588675>,  <29.481783, 42.925102, 28.792446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403057, 42.825706, 28.588675>,  <29.271847, 42.660046, 28.249056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403057, 42.825706, 28.588675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424392, -0.867579, 0.259226,
		0.843972, 0.275295, -0.460351,
		0.328028, 0.414149, 0.849046,
		29.501465, 42.949951, 28.843388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038837, 42.649906, 28.230024>,  <29.271847, 42.660046, 28.249056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038837, 42.649906, 28.230024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919607, 42.687691, 28.609966>,  <29.848068, 42.710361, 28.837933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919607, 42.687691, 28.609966>,  <30.038837, 42.649906, 28.230024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919607, 42.687691, 28.609966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495815, -0.834998, 0.238633,
		0.815670, 0.542084, 0.202058,
		-0.298077, 0.094462, 0.949856,
		29.830185, 42.716030, 28.894922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764040, 42.899605, 28.132069>,  <30.038837, 42.649906, 28.230024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764040, 42.899605, 28.132069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.080145, 42.818748, 27.900682>,  <31.269808, 42.770233, 27.761850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.080145, 42.818748, 27.900682>,  <30.764040, 42.899605, 28.132069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080145, 42.818748, 27.900682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122302, 0.872994, -0.472148,
		0.600440, 0.443868, 0.665171,
		0.790262, -0.202145, -0.578467,
		31.317223, 42.758106, 27.727142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251200, 43.438766, 28.224291>,  <30.764040, 42.899605, 28.132069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251200, 43.438766, 28.224291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367331, 43.310837, 27.863531>,  <31.437010, 43.234077, 27.647076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367331, 43.310837, 27.863531>,  <31.251200, 43.438766, 28.224291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367331, 43.310837, 27.863531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123028, 0.922197, -0.366628,
		0.948986, 0.217401, 0.228391,
		0.290327, -0.319827, -0.901899,
		31.454428, 43.214890, 27.592962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670219, 44.014576, 27.896114>,  <31.251200, 43.438766, 28.224291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670219, 44.014576, 27.896114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.551075, 43.790264, 27.587101>,  <31.479588, 43.655678, 27.401693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.551075, 43.790264, 27.587101>,  <31.670219, 44.014576, 27.896114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551075, 43.790264, 27.587101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321447, 0.820925, -0.471969,
		0.898861, 0.107747, -0.424782,
		-0.297861, -0.560779, -0.772532,
		31.461716, 43.622032, 27.355341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976675, 44.307701, 27.225475>,  <31.670219, 44.014576, 27.896114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976675, 44.307701, 27.225475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660185, 44.099014, 27.097868>,  <31.470291, 43.973801, 27.021303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660185, 44.099014, 27.097868>,  <31.976675, 44.307701, 27.225475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660185, 44.099014, 27.097868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356997, 0.817624, -0.451714,
		0.496505, -0.243518, -0.833176,
		-0.791224, -0.521719, -0.319019,
		31.422817, 43.942497, 27.002163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909111, 44.496277, 26.507370>,  <31.976675, 44.307701, 27.225475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909111, 44.496277, 26.507370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.549770, 44.346634, 26.599464>,  <31.334166, 44.256847, 26.654722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.549770, 44.346634, 26.599464>,  <31.909111, 44.496277, 26.507370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549770, 44.346634, 26.599464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439080, 0.749114, -0.496021,
		0.013089, -0.546694, -0.837230,
		-0.898353, -0.374104, 0.230237,
		31.280264, 44.234402, 26.668535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573631, 44.488190, 25.959232>,  <31.909111, 44.496277, 26.507370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573631, 44.488190, 25.959232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294153, 44.498699, 26.245209>,  <31.126467, 44.505005, 26.416794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294153, 44.498699, 26.245209>,  <31.573631, 44.488190, 25.959232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294153, 44.498699, 26.245209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458693, 0.750448, -0.475845,
		-0.549026, -0.660407, -0.512282,
		-0.698693, 0.026271, 0.714939,
		31.084545, 44.506580, 26.459690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926901, 44.264786, 25.633299>,  <31.573631, 44.488190, 25.959232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926901, 44.264786, 25.633299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843874, 44.484486, 25.957087>,  <30.794058, 44.616306, 26.151360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843874, 44.484486, 25.957087>,  <30.926901, 44.264786, 25.633299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843874, 44.484486, 25.957087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536067, 0.628313, -0.563786,
		-0.818259, -0.550955, 0.164016,
		-0.207568, 0.549247, 0.809471,
		30.781603, 44.649261, 26.199928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396366, 44.532890, 25.514156>,  <30.926901, 44.264786, 25.633299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396366, 44.532890, 25.514156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476219, 44.776699, 25.821045>,  <30.524132, 44.922985, 26.005178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476219, 44.776699, 25.821045>,  <30.396366, 44.532890, 25.514156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476219, 44.776699, 25.821045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555224, 0.715520, -0.423979,
		-0.807386, -0.341338, 0.481265,
		0.199634, 0.609525, 0.767220,
		30.536110, 44.959557, 26.051210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825647, 44.882702, 25.488113>,  <30.396366, 44.532890, 25.514156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825647, 44.882702, 25.488113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086645, 45.104332, 25.694899>,  <30.243244, 45.237312, 25.818970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086645, 45.104332, 25.694899>,  <29.825647, 44.882702, 25.488113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086645, 45.104332, 25.694899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209507, 0.787503, -0.579609,
		-0.728256, 0.269885, 0.629925,
		0.652495, 0.554077, 0.516961,
		30.282394, 45.270554, 25.849987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.407196, 33.485897, 35.417019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555275, 33.849915, 35.491608>,  <36.644123, 34.068325, 35.536362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555275, 33.849915, 35.491608>,  <36.407196, 33.485897, 35.417019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555275, 33.849915, 35.491608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822406, 0.414408, -0.389761,
		-0.431976, -0.009068, 0.901840,
		0.370195, 0.910046, 0.186472,
		36.666332, 34.122929, 35.547550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847233, 33.946377, 35.698528>,  <36.407196, 33.485897, 35.417019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847233, 33.946377, 35.698528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120361, 34.185207, 35.530125>,  <36.284241, 34.328506, 35.429081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120361, 34.185207, 35.530125>,  <35.847233, 33.946377, 35.698528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120361, 34.185207, 35.530125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711093, 0.410949, -0.570498,
		-0.167617, 0.688928, 0.705183,
		0.682826, 0.597076, -0.421010,
		36.325211, 34.364330, 35.403820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441685, 34.522697, 35.554226>,  <35.847233, 33.946377, 35.698528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441685, 34.522697, 35.554226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759838, 34.574711, 35.317429>,  <35.950729, 34.605919, 35.175350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759838, 34.574711, 35.317429>,  <35.441685, 34.522697, 35.554226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759838, 34.574711, 35.317429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547546, 0.573014, -0.609794,
		0.259928, 0.809164, 0.526964,
		0.795381, 0.130035, -0.591996,
		35.998451, 34.613720, 35.139832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600639, 35.321499, 35.387829>,  <35.441685, 34.522697, 35.554226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600639, 35.321499, 35.387829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743122, 35.089458, 35.094818>,  <35.828609, 34.950233, 34.919010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743122, 35.089458, 35.094818>,  <35.600639, 35.321499, 35.387829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743122, 35.089458, 35.094818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520904, 0.527553, -0.671079,
		0.775743, 0.620619, -0.114262,
		0.356205, -0.580104, -0.732528,
		35.849983, 34.915428, 34.875061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840359, 35.827896, 34.969265>,  <35.600639, 35.321499, 35.387829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840359, 35.827896, 34.969265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798244, 35.497887, 34.747185>,  <35.772976, 35.299881, 34.613937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798244, 35.497887, 34.747185>,  <35.840359, 35.827896, 34.969265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798244, 35.497887, 34.747185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437319, 0.539832, -0.719259,
		0.893122, 0.167068, -0.417639,
		-0.105290, -0.825027, -0.555198,
		35.766659, 35.250378, 34.580624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770592, 36.156021, 34.338680>,  <35.840359, 35.827896, 34.969265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770592, 36.156021, 34.338680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665550, 35.776829, 34.266716>,  <35.602524, 35.549313, 34.223537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665550, 35.776829, 34.266716>,  <35.770592, 36.156021, 34.338680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665550, 35.776829, 34.266716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579628, 0.304049, -0.756033,
		0.771407, -0.094257, -0.629322,
		-0.262606, -0.947982, -0.179911,
		35.586769, 35.492435, 34.212742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049255, 35.907585, 33.700142>,  <35.770592, 36.156021, 34.338680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049255, 35.907585, 33.700142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725613, 35.681755, 33.765377>,  <35.531425, 35.546257, 33.804520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725613, 35.681755, 33.765377>,  <36.049255, 35.907585, 33.700142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725613, 35.681755, 33.765377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381625, 0.293750, -0.876398,
		0.446885, -0.771340, -0.453132,
		-0.809108, -0.564576, 0.163090,
		35.482880, 35.512383, 33.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887196, 35.465511, 33.104858>,  <36.049255, 35.907585, 33.700142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887196, 35.465511, 33.104858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525871, 35.458073, 33.276291>,  <35.309078, 35.453609, 33.379150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525871, 35.458073, 33.276291>,  <35.887196, 35.465511, 33.104858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525871, 35.458073, 33.276291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426693, 0.142121, -0.893160,
		-0.044300, -0.989675, -0.136314,
		-0.903311, -0.018597, 0.428584,
		35.254879, 35.452492, 33.404865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474907, 35.105797, 32.640358>,  <35.887196, 35.465511, 33.104858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474907, 35.105797, 32.640358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233643, 35.321766, 32.875195>,  <35.088882, 35.451347, 33.016094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233643, 35.321766, 32.875195>,  <35.474907, 35.105797, 32.640358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233643, 35.321766, 32.875195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531284, 0.277039, -0.800616,
		-0.594920, -0.794814, 0.119753,
		-0.603165, 0.539925, 0.587088,
		35.052692, 35.483742, 33.051323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847538, 34.965816, 32.478855>,  <35.474907, 35.105797, 32.640358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847538, 34.965816, 32.478855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833565, 35.332268, 32.638596>,  <34.825180, 35.552139, 32.734440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833565, 35.332268, 32.638596>,  <34.847538, 34.965816, 32.478855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833565, 35.332268, 32.638596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491993, 0.332056, -0.804786,
		-0.869898, -0.224590, 0.439132,
		-0.034930, 0.916132, 0.399351,
		34.823086, 35.607109, 32.758400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231617, 35.172459, 32.156303>,  <34.847538, 34.965816, 32.478855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231617, 35.172459, 32.156303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414902, 35.500160, 32.294209>,  <34.524872, 35.696781, 32.376953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414902, 35.500160, 32.294209>,  <34.231617, 35.172459, 32.156303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414902, 35.500160, 32.294209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436046, 0.545190, -0.715983,
		-0.774536, 0.177737, 0.607045,
		0.458211, 0.819254, 0.344767,
		34.552364, 35.745937, 32.397640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736809, 35.627922, 32.204849>,  <34.231617, 35.172459, 32.156303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736809, 35.627922, 32.204849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081398, 35.830990, 32.200008>,  <34.288151, 35.952831, 32.197105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081398, 35.830990, 32.200008>,  <33.736809, 35.627922, 32.204849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081398, 35.830990, 32.200008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322405, 0.528372, -0.785416,
		-0.392336, 0.680512, 0.618850,
		0.861469, 0.507667, -0.012101,
		34.339840, 35.983292, 32.196377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425159, 35.731098, 32.825512>,  <33.736809, 35.627922, 32.204849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425159, 35.731098, 32.825512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052654, 35.617870, 32.917263>,  <32.829151, 35.549934, 32.972313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052654, 35.617870, 32.917263>,  <33.425159, 35.731098, 32.825512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052654, 35.617870, 32.917263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363496, -0.764717, 0.532052,
		0.024798, 0.578859, 0.815051,
		-0.931266, -0.283074, 0.229376,
		32.773273, 35.532948, 32.986076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486588, 35.616329, 33.424858>,  <33.425159, 35.731098, 32.825512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486588, 35.616329, 33.424858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131382, 35.440121, 33.372124>,  <32.918259, 35.334396, 33.340481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131382, 35.440121, 33.372124>,  <33.486588, 35.616329, 33.424858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131382, 35.440121, 33.372124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254876, -0.710188, 0.656255,
		-0.382723, 0.549158, 0.742932,
		-0.888009, -0.440520, -0.131838,
		32.864979, 35.307964, 33.332573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090736, 35.623699, 34.036739>,  <33.486588, 35.616329, 33.424858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090736, 35.623699, 34.036739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950809, 35.311626, 33.829300>,  <32.866852, 35.124382, 33.704838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950809, 35.311626, 33.829300>,  <33.090736, 35.623699, 34.036739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950809, 35.311626, 33.829300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228009, -0.607828, 0.760629,
		-0.908648, 0.147837, 0.390517,
		-0.349816, -0.780185, -0.518594,
		32.845863, 35.077572, 33.673721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834118, 35.173237, 34.571468>,  <33.090736, 35.623699, 34.036739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834118, 35.173237, 34.571468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829269, 34.928963, 34.254757>,  <32.826363, 34.782398, 34.064728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829269, 34.928963, 34.254757>,  <32.834118, 35.173237, 34.571468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829269, 34.928963, 34.254757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308059, -0.755605, 0.578066,
		-0.951290, -0.236910, 0.197283,
		-0.012118, -0.610683, -0.791782,
		32.825634, 34.745758, 34.017223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458702, 34.599220, 34.736408>,  <32.834118, 35.173237, 34.571468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458702, 34.599220, 34.736408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641201, 34.443024, 34.416569>,  <32.750702, 34.349304, 34.224667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641201, 34.443024, 34.416569>,  <32.458702, 34.599220, 34.736408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641201, 34.443024, 34.416569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277156, -0.791514, 0.544693,
		-0.845590, -0.470128, -0.252899,
		0.456248, -0.390494, -0.799595,
		32.778076, 34.325874, 34.176689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343197, 33.896214, 34.762188>,  <32.458702, 34.599220, 34.736408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343197, 33.896214, 34.762188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678421, 33.919624, 34.545219>,  <32.879555, 33.933670, 34.415039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678421, 33.919624, 34.545219>,  <32.343197, 33.896214, 34.762188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678421, 33.919624, 34.545219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377971, -0.779259, 0.499894,
		-0.393430, -0.623963, -0.675191,
		0.838064, 0.058529, -0.542424,
		32.929840, 33.937183, 34.382492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628864, 33.124924, 34.589710>,  <32.343197, 33.896214, 34.762188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628864, 33.124924, 34.589710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936848, 33.379696, 34.574314>,  <33.121639, 33.532558, 34.565075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936848, 33.379696, 34.574314>,  <32.628864, 33.124924, 34.589710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936848, 33.379696, 34.574314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558860, -0.644018, 0.522414,
		0.307952, -0.423749, -0.851823,
		0.769962, 0.636928, -0.038490,
		33.167835, 33.570774, 34.562767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128872, 32.597225, 34.609570>,  <32.628864, 33.124924, 34.589710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128872, 32.597225, 34.609570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297199, 32.951889, 34.686249>,  <33.398193, 33.164688, 34.732254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297199, 32.951889, 34.686249>,  <33.128872, 32.597225, 34.609570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297199, 32.951889, 34.686249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619555, -0.435268, 0.653218,
		0.662622, -0.156117, -0.732502,
		0.420814, 0.886662, 0.191695,
		33.423443, 33.217888, 34.743759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854160, 32.603470, 34.346375>,  <33.128872, 32.597225, 34.609570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854160, 32.603470, 34.346375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792744, 32.873173, 34.635319>,  <33.755894, 33.034996, 34.808685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792744, 32.873173, 34.635319>,  <33.854160, 32.603470, 34.346375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792744, 32.873173, 34.635319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455630, -0.600365, 0.657239,
		0.876827, 0.430041, -0.215031,
		-0.153543, 0.674260, 0.722356,
		33.746681, 33.075451, 34.852024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481297, 32.681328, 34.674320>,  <33.854160, 32.603470, 34.346375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481297, 32.681328, 34.674320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208908, 32.811451, 34.936756>,  <34.045475, 32.889526, 35.094219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208908, 32.811451, 34.936756>,  <34.481297, 32.681328, 34.674320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208908, 32.811451, 34.936756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388446, -0.599031, 0.700193,
		0.620801, 0.731665, 0.281555,
		-0.680967, 0.325312, 0.656091,
		34.004620, 32.909046, 35.133583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887062, 32.884861, 35.282536>,  <34.481297, 32.681328, 34.674320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887062, 32.884861, 35.282536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513302, 32.853893, 35.421616>,  <34.289043, 32.835312, 35.505062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513302, 32.853893, 35.421616>,  <34.887062, 32.884861, 35.282536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513302, 32.853893, 35.421616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329078, -0.561292, 0.759381,
		0.136366, 0.823989, 0.549952,
		-0.934405, -0.077424, 0.347697,
		34.232979, 32.830666, 35.525925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048183, 32.979492, 36.022156>,  <34.887062, 32.884861, 35.282536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048183, 32.979492, 36.022156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679100, 32.826080, 36.006618>,  <34.457649, 32.734035, 35.997295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679100, 32.826080, 36.006618>,  <35.048183, 32.979492, 36.022156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679100, 32.826080, 36.006618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166976, -0.488462, 0.856460,
		-0.347447, 0.783781, 0.514750,
		-0.922713, -0.383525, -0.038842,
		34.402287, 32.711021, 35.994965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785561, 33.004333, 36.655167>,  <35.048183, 32.979492, 36.022156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785561, 33.004333, 36.655167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578850, 32.707748, 36.483974>,  <34.454823, 32.529797, 36.381260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578850, 32.707748, 36.483974>,  <34.785561, 33.004333, 36.655167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578850, 32.707748, 36.483974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261193, -0.612625, 0.745968,
		-0.815305, 0.273711, 0.510255,
		-0.516775, -0.741467, -0.427984,
		34.423817, 32.485310, 36.355579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554493, 32.529842, 37.208973>,  <34.785561, 33.004333, 36.655167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554493, 32.529842, 37.208973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518604, 32.284439, 36.895142>,  <34.497070, 32.137199, 36.706844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518604, 32.284439, 36.895142>,  <34.554493, 32.529842, 37.208973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518604, 32.284439, 36.895142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320281, -0.763683, 0.560544,
		-0.943065, -0.200994, 0.265010,
		-0.089717, -0.613507, -0.784577,
		34.491688, 32.100388, 36.659767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297199, 33.165932, 37.498013>,  <34.554493, 32.529842, 37.208973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297199, 33.165932, 37.498013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068550, 33.316776, 37.789501>,  <33.931358, 33.407284, 37.964394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068550, 33.316776, 37.789501>,  <34.297199, 33.165932, 37.498013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068550, 33.316776, 37.789501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130708, 0.834932, -0.534607,
		-0.810037, -0.400844, -0.427977,
		-0.571626, 0.377111, 0.728719,
		33.897060, 33.429909, 38.008118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653694, 33.409821, 37.293034>,  <34.297199, 33.165932, 37.498013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653694, 33.409821, 37.293034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764072, 33.623302, 37.612785>,  <33.830299, 33.751392, 37.804638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764072, 33.623302, 37.612785>,  <33.653694, 33.409821, 37.293034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764072, 33.623302, 37.612785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107975, 0.843623, -0.525968,
		-0.955090, 0.058824, 0.290419,
		0.275944, 0.533705, 0.799384,
		33.846855, 33.783413, 37.852600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123360, 33.868919, 37.522724>,  <33.653694, 33.409821, 37.293034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123360, 33.868919, 37.522724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471466, 34.036415, 37.626488>,  <33.680332, 34.136913, 37.688744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471466, 34.036415, 37.626488>,  <33.123360, 33.868919, 37.522724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471466, 34.036415, 37.626488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283137, 0.856185, -0.432181,
		-0.403069, 0.302667, 0.863672,
		0.870270, 0.418736, 0.259405,
		33.732548, 34.162037, 37.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022667, 34.433117, 37.885284>,  <33.123360, 33.868919, 37.522724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022667, 34.433117, 37.885284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380798, 34.475319, 37.712189>,  <33.595676, 34.500641, 37.608334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380798, 34.475319, 37.712189>,  <33.022667, 34.433117, 37.885284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380798, 34.475319, 37.712189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297382, 0.864871, -0.404427,
		0.331593, 0.490782, 0.805716,
		0.895326, 0.105501, -0.432735,
		33.649395, 34.506969, 37.582367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219894, 35.107822, 38.052101>,  <33.022667, 34.433117, 37.885284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219894, 35.107822, 38.052101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450386, 34.996555, 37.744701>,  <33.588680, 34.929794, 37.560261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450386, 34.996555, 37.744701>,  <33.219894, 35.107822, 38.052101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450386, 34.996555, 37.744701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201058, 0.863152, -0.463189,
		0.792174, 0.421414, 0.441441,
		0.576225, -0.278171, -0.768496,
		33.623253, 34.913105, 37.514153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609722, 35.652405, 37.891685>,  <33.219894, 35.107822, 38.052101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609722, 35.652405, 37.891685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648899, 35.456829, 37.544964>,  <33.672405, 35.339485, 37.336929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648899, 35.456829, 37.544964>,  <33.609722, 35.652405, 37.891685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648899, 35.456829, 37.544964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047266, 0.867723, -0.494795,
		0.994069, 0.089433, 0.061879,
		0.097945, -0.488935, -0.866804,
		33.678284, 35.310150, 37.284924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999928, 36.074066, 37.439724>,  <33.609722, 35.652405, 37.891685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999928, 36.074066, 37.439724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828979, 35.828136, 37.174595>,  <33.726410, 35.680576, 37.015518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828979, 35.828136, 37.174595>,  <33.999928, 36.074066, 37.439724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828979, 35.828136, 37.174595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052771, 0.748868, -0.660615,
		0.902534, -0.247351, -0.352491,
		-0.427373, -0.614829, -0.662827,
		33.700768, 35.643688, 36.975746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369362, 36.184242, 36.828350>,  <33.999928, 36.074066, 37.439724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369362, 36.184242, 36.828350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025646, 36.012856, 36.716614>,  <33.819416, 35.910023, 36.649570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025646, 36.012856, 36.716614>,  <34.369362, 36.184242, 36.828350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025646, 36.012856, 36.716614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098561, 0.674605, -0.731570,
		0.501900, -0.601100, -0.621913,
		-0.859292, -0.428471, -0.279339,
		33.767860, 35.884315, 36.632812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383305, 36.088909, 36.064072>,  <34.369362, 36.184242, 36.828350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383305, 36.088909, 36.064072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000946, 36.095699, 36.181358>,  <33.771530, 36.099773, 36.251732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000946, 36.095699, 36.181358>,  <34.383305, 36.088909, 36.064072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000946, 36.095699, 36.181358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233650, 0.560971, -0.794178,
		-0.177965, -0.827661, -0.532264,
		-0.955896, 0.016973, 0.293217,
		33.714176, 36.100792, 36.269325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965679, 36.055492, 35.432236>,  <34.383305, 36.088909, 36.064072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965679, 36.055492, 35.432236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709362, 36.200058, 35.703163>,  <33.555573, 36.286797, 35.865719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709362, 36.200058, 35.703163>,  <33.965679, 36.055492, 35.432236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709362, 36.200058, 35.703163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394880, 0.601432, -0.694514,
		-0.658370, -0.712500, -0.242679,
		-0.640796, 0.361418, 0.677316,
		33.517124, 36.308483, 35.906357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377216, 36.344543, 35.030685>,  <33.965679, 36.055492, 35.432236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377216, 36.344543, 35.030685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305168, 36.515728, 35.384953>,  <33.261940, 36.618439, 35.597511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305168, 36.515728, 35.384953>,  <33.377216, 36.344543, 35.030685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305168, 36.515728, 35.384953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281617, 0.840267, -0.463296,
		-0.942469, -0.332870, -0.030832,
		-0.180124, 0.427960, 0.885667,
		33.251129, 36.644115, 35.650654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737103, 36.599453, 34.951927>,  <33.377216, 36.344543, 35.030685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737103, 36.599453, 34.951927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.886475, 36.795479, 35.266983>,  <32.976097, 36.913094, 35.456017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.886475, 36.795479, 35.266983>,  <32.737103, 36.599453, 34.951927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886475, 36.795479, 35.266983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373047, 0.856721, -0.356183,
		-0.849344, -0.160818, 0.502744,
		0.373431, 0.490069, 0.787643,
		32.998505, 36.942501, 35.503277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236118, 37.001434, 35.244495>,  <32.737103, 36.599453, 34.951927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236118, 37.001434, 35.244495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570335, 37.185246, 35.364960>,  <32.770866, 37.295532, 35.437241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570335, 37.185246, 35.364960>,  <32.236118, 37.001434, 35.244495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570335, 37.185246, 35.364960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419233, 0.887534, -0.191118,
		-0.355116, 0.033430, 0.934224,
		0.835545, 0.459527, 0.301163,
		32.820999, 37.323105, 35.455307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970297, 37.606560, 35.518112>,  <32.236118, 37.001434, 35.244495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970297, 37.606560, 35.518112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356030, 37.712299, 35.523552>,  <32.587471, 37.775742, 35.526817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356030, 37.712299, 35.523552>,  <31.970297, 37.606560, 35.518112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356030, 37.712299, 35.523552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261142, 0.958522, -0.114191,
		-0.043225, 0.106566, 0.993366,
		0.964332, 0.264345, 0.013603,
		32.645329, 37.791603, 35.527634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108402, 38.102856, 35.957603>,  <31.970297, 37.606560, 35.518112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108402, 38.102856, 35.957603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395752, 38.153294, 35.683949>,  <32.568161, 38.183556, 35.519756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395752, 38.153294, 35.683949>,  <32.108402, 38.102856, 35.957603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395752, 38.153294, 35.683949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374737, 0.898697, -0.227849,
		0.586102, 0.420051, 0.692850,
		0.718371, 0.126094, -0.684137,
		32.611263, 38.191120, 35.478706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389420, 38.853325, 36.062374>,  <32.108402, 38.102856, 35.957603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389420, 38.853325, 36.062374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519016, 38.721630, 35.707607>,  <32.596775, 38.642612, 35.494747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519016, 38.721630, 35.707607>,  <32.389420, 38.853325, 36.062374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519016, 38.721630, 35.707607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283167, 0.860763, -0.422969,
		0.902687, 0.388187, 0.185653,
		0.323994, -0.329238, -0.886922,
		32.616215, 38.622860, 35.441532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875957, 39.349262, 35.815529>,  <32.389420, 38.853325, 36.062374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875957, 39.349262, 35.815529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736641, 39.164059, 35.489506>,  <32.653049, 39.052937, 35.293892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736641, 39.164059, 35.489506>,  <32.875957, 39.349262, 35.815529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736641, 39.164059, 35.489506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099183, 0.882822, -0.459116,
		0.932125, -0.079066, -0.353400,
		-0.348289, -0.463005, -0.815059,
		32.632153, 39.025158, 35.244987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208641, 39.644272, 35.189335>,  <32.875957, 39.349262, 35.815529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208641, 39.644272, 35.189335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867973, 39.477634, 35.062141>,  <32.663574, 39.377651, 34.985825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867973, 39.477634, 35.062141>,  <33.208641, 39.644272, 35.189335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867973, 39.477634, 35.062141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229577, 0.841983, -0.488220,
		0.471125, -0.342799, -0.812730,
		-0.851666, -0.416597, -0.317981,
		32.612473, 39.352654, 34.966747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120628, 39.989704, 34.547768>,  <33.208641, 39.644272, 35.189335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120628, 39.989704, 34.547768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753681, 39.851192, 34.626274>,  <32.533512, 39.768085, 34.673378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753681, 39.851192, 34.626274>,  <33.120628, 39.989704, 34.547768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753681, 39.851192, 34.626274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389091, 0.676245, -0.625541,
		0.083886, -0.650219, -0.755101,
		-0.917372, -0.346277, 0.196267,
		32.478470, 39.747311, 34.685154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794792, 39.959904, 33.877140>,  <33.120628, 39.989704, 34.547768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794792, 39.959904, 33.877140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501282, 39.959919, 34.148895>,  <32.325176, 39.959927, 34.311947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501282, 39.959919, 34.148895>,  <32.794792, 39.959904, 33.877140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501282, 39.959919, 34.148895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412980, 0.794012, -0.446086,
		-0.539459, -0.607903, -0.582614,
		-0.733779, 0.000037, 0.679388,
		32.281147, 39.959930, 34.352711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093826, 39.815079, 33.504135>,  <32.794792, 39.959904, 33.877140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093826, 39.815079, 33.504135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065170, 40.019787, 33.846588>,  <32.047977, 40.142612, 34.052059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065170, 40.019787, 33.846588>,  <32.093826, 39.815079, 33.504135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065170, 40.019787, 33.846588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521046, 0.712707, -0.469637,
		-0.850516, -0.479731, 0.215594,
		-0.071644, 0.511768, 0.856131,
		32.043678, 40.173317, 34.103428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445993, 40.125404, 33.393696>,  <32.093826, 39.815079, 33.504135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445993, 40.125404, 33.393696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653912, 40.313362, 33.679077>,  <31.778662, 40.426136, 33.850304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653912, 40.313362, 33.679077>,  <31.445993, 40.125404, 33.393696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653912, 40.313362, 33.679077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369336, 0.876663, -0.308308,
		-0.770328, -0.103246, 0.629234,
		0.519794, 0.469897, 0.713450,
		31.809851, 40.454330, 33.893112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040293, 40.661137, 33.605583>,  <31.445993, 40.125404, 33.393696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040293, 40.661137, 33.605583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381556, 40.800468, 33.760910>,  <31.586313, 40.884068, 33.854107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381556, 40.800468, 33.760910>,  <31.040293, 40.661137, 33.605583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381556, 40.800468, 33.760910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224918, 0.917275, -0.328662,
		-0.470678, 0.193060, 0.860924,
		0.853156, 0.348331, 0.388318,
		31.637503, 40.904968, 33.877407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850367, 41.270058, 33.988159>,  <31.040293, 40.661137, 33.605583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850367, 41.270058, 33.988159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242542, 41.295181, 33.913551>,  <31.477848, 41.310257, 33.868786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242542, 41.295181, 33.913551>,  <30.850367, 41.270058, 33.988159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242542, 41.295181, 33.913551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111865, 0.957588, -0.265538,
		0.161932, 0.281210, 0.945885,
		0.980441, 0.062812, -0.186521,
		31.536674, 41.314026, 33.857594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047060, 42.012192, 34.183960>,  <30.850367, 41.270058, 33.988159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047060, 42.012192, 34.183960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328867, 41.884460, 33.930447>,  <31.497952, 41.807819, 33.778339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328867, 41.884460, 33.930447>,  <31.047060, 42.012192, 34.183960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328867, 41.884460, 33.930447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047908, 0.912410, -0.406465,
		0.708067, 0.255998, 0.658108,
		0.704518, -0.319333, -0.633783,
		31.540222, 41.788662, 33.740311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436220, 42.620094, 34.111549>,  <31.047060, 42.012192, 34.183960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436220, 42.620094, 34.111549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540476, 42.401093, 33.793480>,  <31.603029, 42.269691, 33.602638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540476, 42.401093, 33.793480>,  <31.436220, 42.620094, 34.111549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540476, 42.401093, 33.793480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006687, 0.824646, -0.565610,
		0.965413, 0.142103, 0.218597,
		0.260641, -0.547509, -0.795173,
		31.618668, 42.236839, 33.554928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047813, 43.057804, 33.696026>,  <31.436220, 42.620094, 34.111549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047813, 43.057804, 33.696026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863808, 42.785030, 33.468571>,  <31.753403, 42.621368, 33.332096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863808, 42.785030, 33.468571>,  <32.047813, 43.057804, 33.696026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863808, 42.785030, 33.468571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167267, 0.695517, -0.698769,
		0.872012, -0.226332, -0.434015,
		-0.460019, -0.681931, -0.568641,
		31.725801, 42.580452, 33.297977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360935, 43.220749, 33.069969>,  <32.047813, 43.057804, 33.696026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360935, 43.220749, 33.069969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029041, 43.015553, 32.981983>,  <31.829905, 42.892437, 32.929192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029041, 43.015553, 32.981983>,  <32.360935, 43.220749, 33.069969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029041, 43.015553, 32.981983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271349, 0.715120, -0.644184,
		0.487762, -0.474814, -0.732558,
		-0.829734, -0.512987, -0.219968,
		31.780121, 42.861656, 32.915993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999382, 43.298565, 32.564430>,  <32.360935, 43.220749, 33.069969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999382, 43.298565, 32.564430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294750, 43.552410, 32.655640>,  <33.471973, 43.704716, 32.710365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294750, 43.552410, 32.655640>,  <32.999382, 43.298565, 32.564430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294750, 43.552410, 32.655640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427768, -0.702230, 0.569111,
		0.521290, -0.322705, -0.790011,
		0.738425, 0.634614, 0.228022,
		33.516277, 43.742794, 32.724045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733940, 42.994717, 32.345829>,  <32.999382, 43.298565, 32.564430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733940, 42.994717, 32.345829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778851, 43.276291, 32.626362>,  <33.805798, 43.445236, 32.794682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778851, 43.276291, 32.626362>,  <33.733940, 42.994717, 32.345829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778851, 43.276291, 32.626362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637467, -0.592439, 0.492596,
		0.762253, 0.391770, -0.515253,
		0.112272, 0.703940, 0.701330,
		33.812531, 43.487473, 32.836761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453201, 43.176727, 32.403034>,  <33.733940, 42.994717, 32.345829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453201, 43.176727, 32.403034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.278542, 43.235973, 32.757977>,  <34.173744, 43.271523, 32.970943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.278542, 43.235973, 32.757977>,  <34.453201, 43.176727, 32.403034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278542, 43.235973, 32.757977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625903, -0.658482, 0.417908,
		0.646207, 0.737877, 0.194819,
		-0.436649, 0.148117, 0.887355,
		34.147545, 43.280407, 33.024181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001839, 43.239315, 32.883026>,  <34.453201, 43.176727, 32.403034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001839, 43.239315, 32.883026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682121, 43.152344, 33.107113>,  <34.490292, 43.100163, 33.241566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682121, 43.152344, 33.107113>,  <35.001839, 43.239315, 32.883026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682121, 43.152344, 33.107113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578496, -0.530771, 0.619374,
		0.162680, 0.819150, 0.550025,
		-0.799298, -0.217428, 0.560221,
		34.442333, 43.087116, 33.275181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316036, 43.175438, 33.586945>,  <35.001839, 43.239315, 32.883026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316036, 43.175438, 33.586945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958897, 42.999966, 33.627693>,  <34.744614, 42.894684, 33.652142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958897, 42.999966, 33.627693>,  <35.316036, 43.175438, 33.586945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958897, 42.999966, 33.627693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413992, -0.710438, 0.569112,
		-0.177283, 0.550307, 0.815925,
		-0.892850, -0.438680, 0.101874,
		34.691040, 42.868362, 33.658257>
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
