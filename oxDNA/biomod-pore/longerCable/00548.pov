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
	<24.840883, 34.852543, 34.761265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549604, 34.820194, 35.033497>,  <24.374836, 34.800785, 35.196835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549604, 34.820194, 35.033497>,  <24.840883, 34.852543, 34.761265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.549604, 34.820194, 35.033497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526658, 0.701483, -0.480158,
		-0.438585, -0.708083, -0.553409,
		-0.728199, -0.080867, 0.680578,
		24.331144, 34.795933, 35.237671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896839, 34.409420, 35.437622>,  <24.840883, 34.852543, 34.761265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896839, 34.409420, 35.437622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200415, 34.626190, 35.582027>,  <25.382561, 34.756252, 35.668671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200415, 34.626190, 35.582027>,  <24.896839, 34.409420, 35.437622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200415, 34.626190, 35.582027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567882, -0.822123, 0.040283,
		0.318625, 0.174439, -0.931692,
		0.758939, 0.541927, 0.361010,
		25.428097, 34.788769, 35.690331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474709, 34.174816, 35.006229>,  <24.896839, 34.409420, 35.437622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474709, 34.174816, 35.006229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600777, 34.301140, 35.364208>,  <25.676418, 34.376934, 35.578995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600777, 34.301140, 35.364208>,  <25.474709, 34.174816, 35.006229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600777, 34.301140, 35.364208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585829, -0.806639, 0.078340,
		0.746640, 0.499595, -0.439242,
		0.315172, 0.315813, 0.894946,
		25.695328, 34.395885, 35.632690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192587, 34.360039, 35.053967>,  <25.474709, 34.174816, 35.006229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192587, 34.360039, 35.053967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043568, 34.211826, 35.394299>,  <25.954155, 34.122898, 35.598499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043568, 34.211826, 35.394299>,  <26.192587, 34.360039, 35.053967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043568, 34.211826, 35.394299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713597, -0.700518, 0.007390,
		0.593284, 0.609904, 0.525387,
		-0.372550, -0.370530, 0.850832,
		25.931803, 34.100666, 35.649548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771910, 34.195400, 35.368046>,  <26.192587, 34.360039, 35.053967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771910, 34.195400, 35.368046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451483, 33.983597, 35.479691>,  <26.259226, 33.856514, 35.546677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451483, 33.983597, 35.479691>,  <26.771910, 34.195400, 35.368046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451483, 33.983597, 35.479691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507639, -0.848067, -0.151936,
		0.317161, 0.019979, 0.948161,
		-0.801069, -0.529512, 0.279116,
		26.211163, 33.824741, 35.563427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211914, 34.717590, 34.936417>,  <26.771910, 34.195400, 35.368046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211914, 34.717590, 34.936417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541698, 34.743206, 34.711506>,  <27.739569, 34.758575, 34.576557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541698, 34.743206, 34.711506>,  <27.211914, 34.717590, 34.936417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541698, 34.743206, 34.711506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413602, 0.746337, -0.521454,
		0.386258, 0.662480, 0.641815,
		0.824463, 0.064040, -0.562281,
		27.789038, 34.762417, 34.542820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421923, 35.439728, 34.993500>,  <27.211914, 34.717590, 34.936417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421923, 35.439728, 34.993500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555706, 35.266647, 34.658619>,  <27.635975, 35.162800, 34.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555706, 35.266647, 34.658619>,  <27.421923, 35.439728, 34.993500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555706, 35.266647, 34.658619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415145, 0.729874, -0.543082,
		0.846046, 0.529197, 0.064475,
		0.334456, -0.432705, -0.837201,
		27.656042, 35.136837, 34.407459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457497, 35.957203, 34.481350>,  <27.421923, 35.439728, 34.993500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457497, 35.957203, 34.481350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453129, 35.686867, 34.186565>,  <27.450508, 35.524666, 34.009693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453129, 35.686867, 34.186565>,  <27.457497, 35.957203, 34.481350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453129, 35.686867, 34.186565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479069, 0.650454, -0.589409,
		0.877709, 0.346621, -0.330879,
		-0.010920, -0.675843, -0.736965,
		27.449852, 35.484116, 33.965477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708773, 36.379490, 33.886005>,  <27.457497, 35.957203, 34.481350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708773, 36.379490, 33.886005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483454, 36.063335, 33.789688>,  <27.348263, 35.873642, 33.731895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483454, 36.063335, 33.789688>,  <27.708773, 36.379490, 33.886005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483454, 36.063335, 33.789688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711997, 0.612200, -0.343908,
		0.419235, -0.022277, -0.907604,
		-0.563296, -0.790389, -0.240795,
		27.314465, 35.826218, 33.717449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527361, 36.340603, 33.164654>,  <27.708773, 36.379490, 33.886005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527361, 36.340603, 33.164654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242348, 36.135979, 33.356739>,  <27.071339, 36.013203, 33.471989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242348, 36.135979, 33.356739>,  <27.527361, 36.340603, 33.164654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242348, 36.135979, 33.356739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654196, 0.731772, -0.191149,
		-0.253620, -0.450352, -0.856072,
		-0.712534, -0.511559, 0.480211,
		27.028587, 35.982510, 33.500801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979500, 36.286301, 32.644932>,  <27.527361, 36.340603, 33.164654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979500, 36.286301, 32.644932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809803, 36.224960, 33.001919>,  <26.707985, 36.188156, 33.216110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809803, 36.224960, 33.001919>,  <26.979500, 36.286301, 32.644932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809803, 36.224960, 33.001919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798530, 0.528129, -0.288841,
		-0.427044, -0.835202, -0.346512,
		-0.424244, -0.153353, 0.892468,
		26.682529, 36.178955, 33.269661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191563, 36.103073, 32.553272>,  <26.979500, 36.286301, 32.644932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191563, 36.103073, 32.553272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327700, 36.364613, 32.823574>,  <26.409382, 36.521538, 32.985756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327700, 36.364613, 32.823574>,  <26.191563, 36.103073, 32.553272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327700, 36.364613, 32.823574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548528, 0.721765, -0.422105,
		-0.763729, -0.227009, 0.604305,
		0.340344, 0.653852, 0.675754,
		26.429804, 36.560768, 33.026299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555298, 36.611080, 32.812630>,  <26.191563, 36.103073, 32.553272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555298, 36.611080, 32.812630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926031, 36.756531, 32.850071>,  <26.148470, 36.843800, 32.872536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926031, 36.756531, 32.850071>,  <25.555298, 36.611080, 32.812630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926031, 36.756531, 32.850071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258023, 0.797899, -0.544777,
		-0.272776, 0.480766, 0.833341,
		0.926832, 0.363623, 0.093600,
		26.204081, 36.865616, 32.878151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877415, 37.130947, 33.127495>,  <25.555298, 36.611080, 32.812630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877415, 37.130947, 33.127495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687023, 36.935364, 33.419895>,  <25.572788, 36.818012, 33.595333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687023, 36.935364, 33.419895>,  <25.877415, 37.130947, 33.127495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687023, 36.935364, 33.419895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626060, -0.772143, -0.108831,
		0.617649, 0.405848, 0.673645,
		-0.475981, -0.488962, 0.730998,
		25.544230, 36.788673, 33.639194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159615, 37.022556, 33.833241>,  <25.877415, 37.130947, 33.127495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159615, 37.022556, 33.833241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925629, 36.713982, 33.733078>,  <25.785238, 36.528835, 33.672981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925629, 36.713982, 33.733078>,  <26.159615, 37.022556, 33.833241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925629, 36.713982, 33.733078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804975, -0.589960, -0.062950,
		-0.099168, -0.238396, 0.966092,
		-0.584962, -0.771437, -0.250408,
		25.750139, 36.482552, 33.657955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218037, 36.483490, 34.319149>,  <26.159615, 37.022556, 33.833241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218037, 36.483490, 34.319149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141560, 36.341221, 33.953209>,  <26.095675, 36.255859, 33.733646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141560, 36.341221, 33.953209>,  <26.218037, 36.483490, 34.319149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141560, 36.341221, 33.953209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708696, -0.694877, 0.122044,
		-0.679114, -0.625015, 0.384916,
		-0.191191, -0.355671, -0.914847,
		26.084202, 36.234520, 33.678757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083033, 35.758968, 34.298393>,  <26.218037, 36.483490, 34.319149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083033, 35.758968, 34.298393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246449, 35.874638, 33.952106>,  <26.344498, 35.944038, 33.744331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246449, 35.874638, 33.952106>,  <26.083033, 35.758968, 34.298393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246449, 35.874638, 33.952106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707404, -0.699684, 0.100115,
		-0.576781, -0.653315, -0.490412,
		0.408540, 0.289175, -0.865721,
		26.369011, 35.961391, 33.692390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140795, 35.142017, 33.852943>,  <26.083033, 35.758968, 34.298393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140795, 35.142017, 33.852943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417126, 35.414806, 33.756882>,  <26.582924, 35.578480, 33.699245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417126, 35.414806, 33.756882>,  <26.140795, 35.142017, 33.852943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417126, 35.414806, 33.756882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722491, -0.638418, 0.265385,
		0.027665, -0.356845, -0.933754,
		0.690827, 0.681970, -0.240155,
		26.624374, 35.619396, 33.684834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457682, 34.804932, 33.528370>,  <26.140795, 35.142017, 33.852943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457682, 34.804932, 33.528370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726120, 35.098328, 33.571484>,  <26.887184, 35.274364, 33.597351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726120, 35.098328, 33.571484>,  <26.457682, 34.804932, 33.528370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726120, 35.098328, 33.571484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665094, -0.659886, 0.349571,
		0.327533, -0.162909, -0.930690,
		0.671098, 0.733492, 0.107784,
		26.927450, 35.318375, 33.603817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916168, 34.621906, 33.087742>,  <26.457682, 34.804932, 33.528370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916168, 34.621906, 33.087742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078470, 34.878139, 33.348515>,  <27.175852, 35.031879, 33.504978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078470, 34.878139, 33.348515>,  <26.916168, 34.621906, 33.087742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078470, 34.878139, 33.348515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634173, -0.710970, 0.303885,
		0.658170, 0.290138, -0.694718,
		0.405755, 0.640580, 0.651936,
		27.200197, 35.070312, 33.544094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411594, 34.318531, 33.422028>,  <26.916168, 34.621906, 33.087742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411594, 34.318531, 33.422028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490667, 34.680534, 33.572701>,  <27.538111, 34.897736, 33.663105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490667, 34.680534, 33.572701>,  <27.411594, 34.318531, 33.422028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490667, 34.680534, 33.572701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778406, -0.378484, 0.500833,
		0.595824, 0.194206, -0.779280,
		0.197681, 0.905005, 0.376681,
		27.549971, 34.952034, 33.685703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095999, 34.571510, 33.338512>,  <27.411594, 34.318531, 33.422028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095999, 34.571510, 33.338512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938290, 34.730873, 33.669769>,  <27.843664, 34.826492, 33.868523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938290, 34.730873, 33.669769>,  <28.095999, 34.571510, 33.338512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938290, 34.730873, 33.669769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696131, -0.458827, 0.552159,
		0.599960, 0.794196, -0.096443,
		-0.394271, 0.398410, 0.828142,
		27.820007, 34.850395, 33.918213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729168, 34.853596, 33.645218>,  <28.095999, 34.571510, 33.338512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729168, 34.853596, 33.645218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427370, 34.805031, 33.903210>,  <28.246292, 34.775890, 34.058006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427370, 34.805031, 33.903210>,  <28.729168, 34.853596, 33.645218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427370, 34.805031, 33.903210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593414, -0.545995, 0.591397,
		0.280353, 0.828945, 0.483997,
		-0.754495, -0.121411, 0.644978,
		28.201021, 34.768608, 34.096703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113228, 34.891495, 34.284782>,  <28.729168, 34.853596, 33.645218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113228, 34.891495, 34.284782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774208, 34.705730, 34.387535>,  <28.570797, 34.594273, 34.449184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774208, 34.705730, 34.387535>,  <29.113228, 34.891495, 34.284782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774208, 34.705730, 34.387535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484744, -0.480350, 0.730949,
		-0.216066, 0.744036, 0.632239,
		-0.847549, -0.464407, 0.256880,
		28.519943, 34.566410, 34.464600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875626, 35.119545, 34.895695>,  <29.113228, 34.891495, 34.284782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875626, 35.119545, 34.895695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759720, 34.740223, 34.843906>,  <28.690176, 34.512630, 34.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759720, 34.740223, 34.843906>,  <28.875626, 35.119545, 34.895695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759720, 34.740223, 34.843906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524157, -0.270416, 0.807548,
		-0.800809, 0.166137, 0.575416,
		-0.289765, -0.948300, -0.129470,
		28.672791, 34.455734, 34.805065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655838, 34.854988, 35.414394>,  <28.875626, 35.119545, 34.895695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655838, 34.854988, 35.414394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813656, 34.550663, 35.208290>,  <28.908346, 34.368069, 35.084625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813656, 34.550663, 35.208290>,  <28.655838, 34.854988, 35.414394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813656, 34.550663, 35.208290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731114, -0.079750, 0.677579,
		-0.556603, -0.644053, 0.524775,
		0.394546, -0.760812, -0.515265,
		28.932020, 34.322418, 35.053711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119478, 34.454884, 35.857410>,  <28.655838, 34.854988, 35.414394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119478, 34.454884, 35.857410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216518, 34.330891, 35.489704>,  <29.274742, 34.256496, 35.269081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216518, 34.330891, 35.489704>,  <29.119478, 34.454884, 35.857410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216518, 34.330891, 35.489704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927234, -0.204556, 0.313678,
		-0.285276, -0.928476, 0.237800,
		0.242599, -0.309981, -0.919270,
		29.289299, 34.237896, 35.213924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478144, 33.717781, 35.869511>,  <29.119478, 34.454884, 35.857410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478144, 33.717781, 35.869511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633482, 33.938103, 35.573997>,  <29.726685, 34.070293, 35.396690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633482, 33.938103, 35.573997>,  <29.478144, 33.717781, 35.869511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633482, 33.938103, 35.573997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920726, -0.265058, 0.286371,
		-0.038089, -0.791432, -0.610070,
		0.388347, 0.550800, -0.738787,
		29.749987, 34.103344, 35.352360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801466, 33.516388, 35.263382>,  <29.478144, 33.717781, 35.869511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801466, 33.516388, 35.263382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980244, 33.856907, 35.373318>,  <30.087511, 34.061218, 35.439281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980244, 33.856907, 35.373318>,  <29.801466, 33.516388, 35.263382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980244, 33.856907, 35.373318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832360, -0.508318, 0.220883,
		0.327745, 0.130047, -0.935773,
		0.446945, 0.851294, 0.274844,
		30.114326, 34.112293, 35.455772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466467, 33.789730, 34.847488>,  <29.801466, 33.516388, 35.263382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466467, 33.789730, 34.847488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476023, 33.890617, 35.234440>,  <30.481756, 33.951149, 35.466610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476023, 33.890617, 35.234440>,  <30.466467, 33.789730, 34.847488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476023, 33.890617, 35.234440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892245, -0.441838, 0.093160,
		0.450920, 0.860911, -0.235592,
		0.023891, 0.252214, 0.967377,
		30.483191, 33.966282, 35.524654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100334, 34.204605, 35.063343>,  <30.466467, 33.789730, 34.847488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100334, 34.204605, 35.063343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956722, 33.980865, 35.362202>,  <30.870556, 33.846622, 35.541519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956722, 33.980865, 35.362202>,  <31.100334, 34.204605, 35.063343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956722, 33.980865, 35.362202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922445, -0.334543, 0.192813,
		0.142104, 0.758429, 0.636075,
		-0.359030, -0.559345, 0.747149,
		30.849014, 33.813061, 35.586346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708174, 34.068077, 35.392612>,  <31.100334, 34.204605, 35.063343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708174, 34.068077, 35.392612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458200, 33.849876, 35.616001>,  <31.308216, 33.718956, 35.750034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458200, 33.849876, 35.616001>,  <31.708174, 34.068077, 35.392612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458200, 33.849876, 35.616001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774618, -0.522254, 0.356676,
		0.097096, 0.655499, 0.748929,
		-0.624931, -0.545502, 0.558470,
		31.270721, 33.686226, 35.783543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925049, 34.118385, 36.160271>,  <31.708174, 34.068077, 35.392612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925049, 34.118385, 36.160271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716738, 33.780003, 36.114399>,  <31.591751, 33.576973, 36.086876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716738, 33.780003, 36.114399>,  <31.925049, 34.118385, 36.160271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716738, 33.780003, 36.114399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718990, -0.507057, 0.475339,
		-0.460265, 0.165091, 0.872296,
		-0.520778, -0.845954, -0.114682,
		31.560505, 33.526215, 36.079994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920525, 33.857468, 36.755947>,  <31.925049, 34.118385, 36.160271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920525, 33.857468, 36.755947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834812, 33.553471, 36.510513>,  <31.783384, 33.371071, 36.363251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834812, 33.553471, 36.510513>,  <31.920525, 33.857468, 36.755947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834812, 33.553471, 36.510513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666349, -0.573045, 0.477072,
		-0.714186, -0.306634, 0.629217,
		-0.214283, -0.759997, -0.613586,
		31.770527, 33.325470, 36.326439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769257, 33.246964, 37.185318>,  <31.920525, 33.857468, 36.755947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769257, 33.246964, 37.185318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873718, 33.118958, 36.821033>,  <31.936396, 33.042152, 36.602463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873718, 33.118958, 36.821033>,  <31.769257, 33.246964, 37.185318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873718, 33.118958, 36.821033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487357, -0.770665, 0.410559,
		-0.833237, -0.551058, -0.045298,
		0.261151, -0.320016, -0.910708,
		31.952065, 33.022953, 36.547821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645380, 32.452366, 37.166340>,  <31.769257, 33.246964, 37.185318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645380, 32.452366, 37.166340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929438, 32.544518, 36.900223>,  <32.099873, 32.599808, 36.740551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929438, 32.544518, 36.900223>,  <31.645380, 32.452366, 37.166340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929438, 32.544518, 36.900223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485807, -0.844292, 0.226191,
		-0.509595, -0.483835, -0.711489,
		0.710144, 0.230381, -0.665297,
		32.142479, 32.613632, 36.700634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156086, 32.026657, 36.915722>,  <31.645380, 32.452366, 37.166340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156086, 32.026657, 36.915722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485153, 32.119808, 36.708267>,  <31.682594, 32.175697, 36.583794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485153, 32.119808, 36.708267>,  <31.156086, 32.026657, 36.915722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485153, 32.119808, 36.708267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512184, -0.699519, 0.498338,
		-0.246745, -0.675605, -0.694748,
		0.822669, 0.232877, -0.518637,
		31.731955, 32.189671, 36.552677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318279, 31.347443, 36.716419>,  <31.156086, 32.026657, 36.915722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318279, 31.347443, 36.716419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628841, 31.596676, 36.678555>,  <31.815180, 31.746216, 36.655834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628841, 31.596676, 36.678555>,  <31.318279, 31.347443, 36.716419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628841, 31.596676, 36.678555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629168, -0.757581, 0.173834,
		0.036596, -0.194527, -0.980214,
		0.776407, 0.623082, -0.094666,
		31.861763, 31.783600, 36.650154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776102, 30.924166, 36.338428>,  <31.318279, 31.347443, 36.716419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776102, 30.924166, 36.338428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964968, 31.210857, 36.543705>,  <32.078285, 31.382872, 36.666870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964968, 31.210857, 36.543705>,  <31.776102, 30.924166, 36.338428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964968, 31.210857, 36.543705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713898, -0.652421, 0.254354,
		0.517118, 0.246269, -0.819719,
		0.472163, 0.716727, 0.513190,
		32.106617, 31.425877, 36.697662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463303, 30.965719, 36.148083>,  <31.776102, 30.924166, 36.338428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463303, 30.965719, 36.148083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497593, 31.116478, 36.516994>,  <32.518166, 31.206934, 36.738342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497593, 31.116478, 36.516994>,  <32.463303, 30.965719, 36.148083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497593, 31.116478, 36.516994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662237, -0.713159, 0.229883,
		0.744374, 0.591061, -0.310731,
		0.085726, 0.376897, 0.922280,
		32.523312, 31.229548, 36.793678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145016, 30.883194, 36.439415>,  <32.463303, 30.965719, 36.148083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145016, 30.883194, 36.439415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940697, 30.936668, 36.779114>,  <32.818108, 30.968752, 36.982933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940697, 30.936668, 36.779114>,  <33.145016, 30.883194, 36.439415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940697, 30.936668, 36.779114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726365, -0.461304, 0.509502,
		0.459872, 0.877113, 0.138528,
		-0.510795, 0.133684, 0.849245,
		32.787457, 30.976774, 37.033886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513046, 31.210543, 36.928280>,  <33.145016, 30.883194, 36.439415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513046, 31.210543, 36.928280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272636, 30.934868, 37.090164>,  <33.128391, 30.769463, 37.187294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272636, 30.934868, 37.090164>,  <33.513046, 31.210543, 36.928280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272636, 30.934868, 37.090164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787069, -0.422384, 0.449571,
		-0.138897, 0.588737, 0.796302,
		-0.601025, -0.689188, 0.404708,
		33.092331, 30.728111, 37.211578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173492, 31.899647, 36.925236>,  <33.513046, 31.210543, 36.928280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173492, 31.899647, 36.925236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827225, 31.761049, 36.780704>,  <32.619465, 31.677891, 36.693985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827225, 31.761049, 36.780704>,  <33.173492, 31.899647, 36.925236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827225, 31.761049, 36.780704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308659, 0.937673, -0.159686,
		0.394135, -0.026709, -0.918664,
		-0.865671, -0.346492, -0.361326,
		32.567524, 31.657103, 36.672306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034451, 32.501720, 36.623955>,  <33.173492, 31.899647, 36.925236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034451, 32.501720, 36.623955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702404, 32.280334, 36.596882>,  <32.503174, 32.147503, 36.580639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702404, 32.280334, 36.596882>,  <33.034451, 32.501720, 36.623955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702404, 32.280334, 36.596882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453413, 0.740688, -0.495780,
		0.324528, -0.380868, -0.865807,
		-0.830119, -0.553462, -0.067683,
		32.453369, 32.114296, 36.576576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743759, 32.571938, 35.862358>,  <33.034451, 32.501720, 36.623955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743759, 32.571938, 35.862358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437233, 32.476593, 36.101002>,  <32.253319, 32.419388, 36.244186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437233, 32.476593, 36.101002>,  <32.743759, 32.571938, 35.862358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437233, 32.476593, 36.101002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580246, 0.655446, -0.483429,
		-0.275815, -0.716641, -0.640587,
		-0.766316, -0.238361, 0.596611,
		32.207336, 32.405083, 36.279984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075409, 32.386101, 35.409706>,  <32.743759, 32.571938, 35.862358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075409, 32.386101, 35.409706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015419, 32.545361, 35.771698>,  <31.979425, 32.640915, 35.988892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015419, 32.545361, 35.771698>,  <32.075409, 32.386101, 35.409706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015419, 32.545361, 35.771698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729814, 0.572922, -0.373003,
		-0.666992, -0.716408, 0.204649,
		-0.149974, 0.398145, 0.904980,
		31.970427, 32.664803, 36.043190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346153, 32.393005, 35.526840>,  <32.075409, 32.386101, 35.409706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346153, 32.393005, 35.526840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482044, 32.677639, 35.772842>,  <31.563578, 32.848419, 35.920444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482044, 32.677639, 35.772842>,  <31.346153, 32.393005, 35.526840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482044, 32.677639, 35.772842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840482, 0.523161, -0.141038,
		-0.422109, -0.468989, 0.775805,
		0.339726, 0.711584, 0.615008,
		31.583961, 32.891113, 35.957344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867216, 32.458630, 36.026752>,  <31.346153, 32.393005, 35.526840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867216, 32.458630, 36.026752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074263, 32.799374, 36.058781>,  <31.198490, 33.003819, 36.077995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074263, 32.799374, 36.058781>,  <30.867216, 32.458630, 36.026752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074263, 32.799374, 36.058781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853975, 0.520146, -0.013229,
		-0.052917, -0.061529, 0.996702,
		0.517617, 0.851858, 0.080069,
		31.229548, 33.054932, 36.082802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462267, 32.959961, 36.505234>,  <30.867216, 32.458630, 36.026752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462267, 32.959961, 36.505234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717861, 33.187687, 36.298325>,  <30.871218, 33.324322, 36.174179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717861, 33.187687, 36.298325>,  <30.462267, 32.959961, 36.505234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717861, 33.187687, 36.298325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747264, 0.618950, -0.241863,
		0.182472, 0.541089, 0.820931,
		0.638984, 0.569319, -0.517277,
		30.909557, 33.358482, 36.143143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324711, 33.630447, 36.767689>,  <30.462267, 32.959961, 36.505234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324711, 33.630447, 36.767689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517799, 33.672710, 36.419937>,  <30.633654, 33.698071, 36.211288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517799, 33.672710, 36.419937>,  <30.324711, 33.630447, 36.767689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517799, 33.672710, 36.419937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645813, 0.713447, -0.271881,
		0.591526, 0.692697, 0.412634,
		0.482723, 0.105660, -0.869376,
		30.662617, 33.704407, 36.159126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443148, 34.259785, 36.808750>,  <30.324711, 33.630447, 36.767689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443148, 34.259785, 36.808750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441572, 34.143421, 36.426052>,  <30.440626, 34.073605, 36.196434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441572, 34.143421, 36.426052>,  <30.443148, 34.259785, 36.808750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441572, 34.143421, 36.426052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602747, 0.764109, -0.229853,
		0.797923, 0.575769, -0.178353,
		-0.003939, -0.290907, -0.956743,
		30.440390, 34.056149, 36.139030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355593, 34.778877, 36.294823>,  <30.443148, 34.259785, 36.808750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355593, 34.778877, 36.294823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237104, 34.481197, 36.055351>,  <30.166012, 34.302589, 35.911667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237104, 34.481197, 36.055351>,  <30.355593, 34.778877, 36.294823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237104, 34.481197, 36.055351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692552, 0.599011, -0.401942,
		0.657743, 0.295555, -0.692836,
		-0.296220, -0.744199, -0.598683,
		30.148237, 34.257938, 35.875748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050272, 35.058575, 36.050106>,  <30.355593, 34.778877, 36.294823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050272, 35.058575, 36.050106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986639, 34.890057, 36.407249>,  <30.948460, 34.788944, 36.621536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986639, 34.890057, 36.407249>,  <31.050272, 35.058575, 36.050106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986639, 34.890057, 36.407249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385789, 0.858998, 0.336583,
		-0.908768, -0.290912, -0.299184,
		-0.159082, -0.421298, 0.892861,
		30.938913, 34.763668, 36.675106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555603, 35.450981, 36.322159>,  <31.050272, 35.058575, 36.050106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555603, 35.450981, 36.322159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700415, 35.270996, 36.648708>,  <30.787302, 35.163006, 36.844639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700415, 35.270996, 36.648708>,  <30.555603, 35.450981, 36.322159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700415, 35.270996, 36.648708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410142, 0.709569, 0.572970,
		-0.837089, -0.542262, 0.072337,
		0.362028, -0.449959, 0.816378,
		30.809023, 35.136009, 36.893623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985218, 35.394932, 36.896210>,  <30.555603, 35.450981, 36.322159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985218, 35.394932, 36.896210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364519, 35.459866, 37.005360>,  <30.592100, 35.498825, 37.070850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364519, 35.459866, 37.005360>,  <29.985218, 35.394932, 36.896210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364519, 35.459866, 37.005360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253542, 0.904477, 0.342983,
		-0.191129, -0.394420, 0.898834,
		0.948254, 0.162338, 0.272874,
		30.648996, 35.508568, 37.087223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874687, 35.805351, 37.459587>,  <29.985218, 35.394932, 36.896210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874687, 35.805351, 37.459587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249041, 35.865719, 37.332249>,  <30.473652, 35.901939, 37.255844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249041, 35.865719, 37.332249>,  <29.874687, 35.805351, 37.459587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249041, 35.865719, 37.332249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067036, 0.963376, 0.259639,
		0.345874, -0.221651, 0.911725,
		0.935883, 0.150920, -0.318348,
		30.529806, 35.910995, 37.236744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287477, 36.072281, 37.980370>,  <29.874687, 35.805351, 37.459587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287477, 36.072281, 37.980370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446592, 36.180595, 37.629726>,  <30.542061, 36.245583, 37.419342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446592, 36.180595, 37.629726>,  <30.287477, 36.072281, 37.980370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446592, 36.180595, 37.629726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087050, 0.940005, 0.329866,
		0.913339, -0.207526, 0.350351,
		0.397787, 0.270781, -0.876608,
		30.565928, 36.261829, 37.366745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002459, 36.348854, 38.147560>,  <30.287477, 36.072281, 37.980370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002459, 36.348854, 38.147560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828653, 36.498844, 37.820000>,  <30.724369, 36.588837, 37.623463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828653, 36.498844, 37.820000>,  <31.002459, 36.348854, 38.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828653, 36.498844, 37.820000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046311, 0.917314, 0.395462,
		0.899473, 0.133910, -0.415952,
		-0.434515, 0.374971, -0.818898,
		30.698299, 36.611336, 37.574329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519417, 36.703987, 37.580616>,  <31.002459, 36.348854, 38.147560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519417, 36.703987, 37.580616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663795, 36.788586, 37.217300>,  <31.750423, 36.839344, 36.999310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663795, 36.788586, 37.217300>,  <31.519417, 36.703987, 37.580616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663795, 36.788586, 37.217300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797391, 0.575054, -0.182977,
		0.483616, 0.790306, 0.376206,
		0.360947, 0.211493, -0.908288,
		31.772079, 36.852032, 36.944813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434156, 37.436367, 37.490192>,  <31.519417, 36.703987, 37.580616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434156, 37.436367, 37.490192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437008, 37.255615, 37.133373>,  <31.438719, 37.147163, 36.919281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437008, 37.255615, 37.133373>,  <31.434156, 37.436367, 37.490192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437008, 37.255615, 37.133373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751799, 0.585786, -0.302743,
		0.659354, 0.672803, -0.335543,
		0.007129, -0.451876, -0.892052,
		31.439146, 37.120052, 36.865757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506365, 37.962776, 36.929760>,  <31.434156, 37.436367, 37.490192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506365, 37.962776, 36.929760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328800, 37.626850, 36.804768>,  <31.222261, 37.425293, 36.729771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328800, 37.626850, 36.804768>,  <31.506365, 37.962776, 36.929760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328800, 37.626850, 36.804768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742203, 0.539998, -0.396910,
		0.502071, 0.055731, -0.863029,
		-0.443913, -0.839820, -0.312481,
		31.195627, 37.374905, 36.711021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220585, 38.175560, 36.357864>,  <31.506365, 37.962776, 36.929760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220585, 38.175560, 36.357864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046638, 37.820004, 36.415504>,  <30.942270, 37.606670, 36.450089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046638, 37.820004, 36.415504>,  <31.220585, 38.175560, 36.357864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046638, 37.820004, 36.415504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863580, 0.366313, -0.346475,
		0.255191, -0.275115, -0.926924,
		-0.434865, -0.888891, 0.144104,
		30.916180, 37.553337, 36.458736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892809, 38.453079, 36.520088>,  <31.220585, 38.175560, 36.357864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892809, 38.453079, 36.520088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979393, 38.794437, 36.330410>,  <32.031342, 38.999252, 36.216602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979393, 38.794437, 36.330410>,  <31.892809, 38.453079, 36.520088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979393, 38.794437, 36.330410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250541, -0.517998, -0.817867,
		-0.943597, 0.058230, -0.325936,
		0.216459, 0.853397, -0.474193,
		32.044331, 39.050457, 36.188152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640396, 38.399246, 36.216919>,  <31.892809, 38.453079, 36.520088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640396, 38.399246, 36.216919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941200, 38.171581, 36.083927>,  <33.121681, 38.034981, 36.004131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941200, 38.171581, 36.083927>,  <32.640396, 38.399246, 36.216919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941200, 38.171581, 36.083927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158006, 0.334045, -0.929219,
		0.639939, 0.751312, 0.161273,
		0.752006, -0.569161, -0.332480,
		33.166801, 38.000832, 35.984184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072506, 38.851009, 35.918453>,  <32.640396, 38.399246, 36.216919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072506, 38.851009, 35.918453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111629, 38.478481, 35.778122>,  <33.135101, 38.254967, 35.693924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111629, 38.478481, 35.778122>,  <33.072506, 38.851009, 35.918453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111629, 38.478481, 35.778122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128327, 0.337778, -0.932437,
		0.986897, 0.136220, -0.086477,
		0.097807, -0.931316, -0.350833,
		33.140972, 38.199085, 35.672871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568417, 38.971573, 35.397957>,  <33.072506, 38.851009, 35.918453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568417, 38.971573, 35.397957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344948, 38.642479, 35.356018>,  <33.210869, 38.445023, 35.330856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344948, 38.642479, 35.356018>,  <33.568417, 38.971573, 35.397957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344948, 38.642479, 35.356018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007625, 0.131503, -0.991286,
		0.829355, -0.553002, -0.079741,
		-0.558670, -0.822737, -0.104846,
		33.177345, 38.395657, 35.324566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919144, 39.261715, 34.886753>,  <33.568417, 38.971573, 35.397957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919144, 39.261715, 34.886753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279976, 39.092640, 34.921581>,  <34.496475, 38.991196, 34.942478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279976, 39.092640, 34.921581>,  <33.919144, 39.261715, 34.886753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279976, 39.092640, 34.921581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430385, 0.866233, -0.253789,
		0.031847, 0.266415, 0.963332,
		0.902083, -0.422686, 0.087074,
		34.550602, 38.965836, 34.947704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415543, 39.622627, 35.381725>,  <33.919144, 39.261715, 34.886753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415543, 39.622627, 35.381725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604099, 39.440006, 35.079903>,  <34.717236, 39.330433, 34.898811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604099, 39.440006, 35.079903>,  <34.415543, 39.622627, 35.381725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604099, 39.440006, 35.079903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449020, 0.860627, -0.240211,
		0.759057, -0.225575, 0.610695,
		0.471395, -0.456548, -0.754553,
		34.745518, 39.303043, 34.853539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037807, 39.990612, 35.390713>,  <34.415543, 39.622627, 35.381725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037807, 39.990612, 35.390713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060555, 39.794369, 35.042904>,  <35.074203, 39.676624, 34.834217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060555, 39.794369, 35.042904>,  <35.037807, 39.990612, 35.390713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060555, 39.794369, 35.042904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644455, 0.683222, -0.343345,
		0.762525, -0.540843, 0.355028,
		0.056867, -0.490609, -0.869522,
		35.077614, 39.647186, 34.782047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834400, 39.909836, 35.205719>,  <35.037807, 39.990612, 35.390713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834400, 39.909836, 35.205719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618740, 39.891399, 34.869339>,  <35.489346, 39.880341, 34.667511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618740, 39.891399, 34.869339>,  <35.834400, 39.909836, 35.205719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618740, 39.891399, 34.869339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650155, 0.611941, -0.450363,
		0.535366, -0.789560, -0.299964,
		-0.539148, -0.046086, -0.840949,
		35.456997, 39.877575, 34.617054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384171, 40.000336, 34.676746>,  <35.834400, 39.909836, 35.205719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384171, 40.000336, 34.676746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032047, 40.081600, 34.505264>,  <35.820774, 40.130360, 34.402374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032047, 40.081600, 34.505264>,  <36.384171, 40.000336, 34.676746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032047, 40.081600, 34.505264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425700, 0.737121, -0.524816,
		0.209386, -0.644499, -0.735377,
		-0.880305, 0.203161, -0.428706,
		35.767956, 40.142548, 34.376652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603699, 40.335190, 33.997311>,  <36.384171, 40.000336, 34.676746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603699, 40.335190, 33.997311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208714, 40.398190, 33.992950>,  <35.971722, 40.435989, 33.990334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208714, 40.398190, 33.992950>,  <36.603699, 40.335190, 33.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208714, 40.398190, 33.992950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107790, 0.622115, -0.775470,
		-0.115352, -0.766920, -0.631290,
		-0.987459, 0.157499, -0.010904,
		35.912476, 40.445438, 33.989677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424625, 40.304043, 33.322960>,  <36.603699, 40.335190, 33.997311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424625, 40.304043, 33.322960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134113, 40.523960, 33.488007>,  <35.959808, 40.655910, 33.587032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134113, 40.523960, 33.488007>,  <36.424625, 40.304043, 33.322960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134113, 40.523960, 33.488007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038478, 0.566796, -0.822959,
		-0.686323, -0.613573, -0.390497,
		-0.726278, 0.549790, 0.412614,
		35.916229, 40.688896, 33.611790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821232, 40.330650, 32.904438>,  <36.424625, 40.304043, 33.322960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821232, 40.330650, 32.904438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817558, 40.658688, 33.133301>,  <35.815353, 40.855511, 33.270618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817558, 40.658688, 33.133301>,  <35.821232, 40.330650, 32.904438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817558, 40.658688, 33.133301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025722, 0.571796, -0.819993,
		-0.999627, -0.022245, 0.015845,
		-0.009181, 0.820094, 0.572155,
		35.814804, 40.904716, 33.304947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171524, 40.708237, 32.809788>,  <35.821232, 40.330650, 32.904438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171524, 40.708237, 32.809788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426727, 40.974949, 32.963852>,  <35.579849, 41.134975, 33.056290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426727, 40.974949, 32.963852>,  <35.171524, 40.708237, 32.809788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426727, 40.974949, 32.963852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039308, 0.527736, -0.848498,
		-0.769024, 0.526210, 0.362911,
		0.638010, 0.666781, 0.385158,
		35.618130, 41.174984, 33.079399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976456, 41.279591, 32.441486>,  <35.171524, 40.708237, 32.809788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976456, 41.279591, 32.441486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326279, 41.376751, 32.609367>,  <35.536171, 41.435047, 32.710094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326279, 41.376751, 32.609367>,  <34.976456, 41.279591, 32.441486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326279, 41.376751, 32.609367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170006, 0.656984, -0.734486,
		-0.454148, 0.713701, 0.533274,
		0.874556, 0.242906, 0.419701,
		35.588646, 41.449623, 32.735279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047226, 41.992123, 32.376305>,  <34.976456, 41.279591, 32.441486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047226, 41.992123, 32.376305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421242, 41.854767, 32.411610>,  <35.645649, 41.772354, 32.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421242, 41.854767, 32.411610>,  <35.047226, 41.992123, 32.376305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421242, 41.854767, 32.411610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307079, 0.659916, -0.685722,
		0.177226, 0.668278, 0.722493,
		0.935037, -0.343390, 0.088260,
		35.701752, 41.751751, 32.438087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564224, 42.535339, 32.435741>,  <35.047226, 41.992123, 32.376305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564224, 42.535339, 32.435741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778854, 42.225639, 32.301502>,  <35.907631, 42.039818, 32.220959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778854, 42.225639, 32.301502>,  <35.564224, 42.535339, 32.435741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778854, 42.225639, 32.301502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418646, 0.589546, -0.690776,
		0.732683, 0.230156, 0.640472,
		0.536573, -0.774251, -0.335596,
		35.939827, 41.993362, 32.200825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308212, 42.776917, 32.364906>,  <35.564224, 42.535339, 32.435741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308212, 42.776917, 32.364906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285110, 42.466793, 32.113331>,  <36.271248, 42.280720, 31.962385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285110, 42.466793, 32.113331>,  <36.308212, 42.776917, 32.364906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285110, 42.466793, 32.113331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316785, 0.583199, -0.748015,
		0.946737, -0.242438, 0.211925,
		-0.057753, -0.775308, -0.628937,
		36.267784, 42.234200, 31.924650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851070, 42.845749, 32.043896>,  <36.308212, 42.776917, 32.364906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851070, 42.845749, 32.043896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629501, 42.604340, 31.814487>,  <36.496559, 42.459496, 31.676842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629501, 42.604340, 31.814487>,  <36.851070, 42.845749, 32.043896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629501, 42.604340, 31.814487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497692, 0.312200, -0.809218,
		0.667436, -0.733683, 0.127433,
		-0.553924, -0.603524, -0.573522,
		36.463326, 42.423283, 31.642431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319595, 42.598373, 31.585581>,  <36.851070, 42.845749, 32.043896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319595, 42.598373, 31.585581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978222, 42.535542, 31.386793>,  <36.773399, 42.497841, 31.267521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978222, 42.535542, 31.386793>,  <37.319595, 42.598373, 31.585581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978222, 42.535542, 31.386793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422014, 0.351308, -0.835755,
		0.305868, -0.922989, -0.233529,
		-0.853434, -0.157078, -0.496968,
		36.722191, 42.488415, 31.237701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515945, 42.348709, 30.951527>,  <37.319595, 42.598373, 31.585581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515945, 42.348709, 30.951527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143917, 42.458885, 30.854290>,  <36.920700, 42.524990, 30.795948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143917, 42.458885, 30.854290>,  <37.515945, 42.348709, 30.951527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143917, 42.458885, 30.854290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325399, 0.310532, -0.893133,
		-0.170516, -0.909782, -0.378445,
		-0.930075, 0.275440, -0.243091,
		36.864895, 42.541515, 30.781363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253906, 41.924862, 30.337811>,  <37.515945, 42.348709, 30.951527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253906, 41.924862, 30.337811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065571, 42.277431, 30.352741>,  <36.952568, 42.488976, 30.361700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065571, 42.277431, 30.352741>,  <37.253906, 41.924862, 30.337811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065571, 42.277431, 30.352741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297324, 0.198377, -0.933941,
		-0.830606, -0.428640, -0.355473,
		-0.470842, 0.881427, 0.037328,
		36.924316, 42.541859, 30.363939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763603, 41.973572, 29.679829>,  <37.253906, 41.924862, 30.337811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763603, 41.973572, 29.679829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857590, 42.335537, 29.821770>,  <36.913982, 42.552715, 29.906935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857590, 42.335537, 29.821770>,  <36.763603, 41.973572, 29.679829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857590, 42.335537, 29.821770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147191, 0.327740, -0.933232,
		-0.960793, 0.271513, -0.056185,
		0.234971, 0.904913, 0.354855,
		36.928082, 42.607010, 29.928226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716293, 42.395283, 29.141094>,  <36.763603, 41.973572, 29.679829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716293, 42.395283, 29.141094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895374, 42.652149, 29.389992>,  <37.002823, 42.806267, 29.539331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895374, 42.652149, 29.389992>,  <36.716293, 42.395283, 29.141094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895374, 42.652149, 29.389992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258753, 0.573070, -0.777585,
		-0.855925, 0.509135, 0.090404,
		0.447704, 0.642162, 0.622245,
		37.029686, 42.844799, 29.576666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482834, 43.108410, 28.980646>,  <36.716293, 42.395283, 29.141094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482834, 43.108410, 28.980646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832397, 43.114265, 29.174995>,  <37.042133, 43.117779, 29.291605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832397, 43.114265, 29.174995>,  <36.482834, 43.108410, 28.980646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832397, 43.114265, 29.174995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380531, 0.601343, -0.702555,
		-0.302461, 0.798857, 0.519947,
		0.873907, 0.014640, 0.485872,
		37.094570, 43.118656, 29.320757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691551, 43.745724, 28.756804>,  <36.482834, 43.108410, 28.980646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691551, 43.745724, 28.756804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039452, 43.606518, 28.896755>,  <37.248192, 43.522995, 28.980726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039452, 43.606518, 28.896755>,  <36.691551, 43.745724, 28.756804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039452, 43.606518, 28.896755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493372, 0.597758, -0.631878,
		0.010760, 0.722198, 0.691602,
		0.869752, -0.348016, 0.349880,
		37.300377, 43.502113, 29.001719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166153, 44.312191, 28.815311>,  <36.691551, 43.745724, 28.756804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166153, 44.312191, 28.815311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407669, 43.993370, 28.810581>,  <37.552578, 43.802078, 28.807743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407669, 43.993370, 28.810581>,  <37.166153, 44.312191, 28.815311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407669, 43.993370, 28.810581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638741, 0.492632, -0.591036,
		0.476916, 0.349306, 0.806558,
		0.603789, -0.797056, -0.011828,
		37.588806, 43.754253, 28.807034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808399, 44.593327, 29.039648>,  <37.166153, 44.312191, 28.815311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808399, 44.593327, 29.039648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887909, 44.259388, 28.834312>,  <37.935616, 44.059025, 28.711111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887909, 44.259388, 28.834312>,  <37.808399, 44.593327, 29.039648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887909, 44.259388, 28.834312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778049, 0.452919, -0.435320,
		0.595928, -0.312874, 0.739581,
		0.198770, -0.834850, -0.513338,
		37.947540, 44.008934, 28.680311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488384, 44.671688, 28.902420>,  <37.808399, 44.593327, 29.039648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488384, 44.671688, 28.902420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364971, 44.407078, 28.629013>,  <38.290924, 44.248310, 28.464970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364971, 44.407078, 28.629013>,  <38.488384, 44.671688, 28.902420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364971, 44.407078, 28.629013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750863, 0.271766, -0.601952,
		0.583963, -0.698948, 0.412866,
		-0.308530, -0.661524, -0.683516,
		38.272411, 44.208622, 28.423958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009785, 44.396179, 28.654240>,  <38.488384, 44.671688, 28.902420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009785, 44.396179, 28.654240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754066, 44.257366, 28.379761>,  <38.600636, 44.174076, 28.215075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754066, 44.257366, 28.379761>,  <39.009785, 44.396179, 28.654240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754066, 44.257366, 28.379761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686621, 0.144127, -0.712586,
		0.346193, -0.926711, 0.146142,
		-0.639298, -0.347036, -0.686195,
		38.562279, 44.153255, 28.173903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338371, 43.873058, 28.234411>,  <39.009785, 44.396179, 28.654240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338371, 43.873058, 28.234411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031944, 44.017239, 28.021542>,  <38.848087, 44.103748, 27.893820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031944, 44.017239, 28.021542>,  <39.338371, 43.873058, 28.234411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031944, 44.017239, 28.021542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633019, 0.279524, -0.721910,
		-0.111461, -0.889909, -0.442310,
		-0.766070, 0.360455, -0.532174,
		38.802124, 44.125374, 27.861889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602795, 43.738968, 27.589125>,  <39.338371, 43.873058, 28.234411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602795, 43.738968, 27.589125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304798, 43.995857, 27.516972>,  <39.125999, 44.149990, 27.473680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304798, 43.995857, 27.516972>,  <39.602795, 43.738968, 27.589125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304798, 43.995857, 27.516972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440065, 0.269938, -0.856433,
		-0.501326, -0.717417, -0.483720,
		-0.744994, 0.642220, -0.180383,
		39.081299, 44.188522, 27.462856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257889, 43.603188, 26.854506>,  <39.602795, 43.738968, 27.589125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257889, 43.603188, 26.854506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190826, 43.991776, 26.921598>,  <39.150589, 44.224930, 26.961855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190826, 43.991776, 26.921598>,  <39.257889, 43.603188, 26.854506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190826, 43.991776, 26.921598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002467, 0.170555, -0.985345,
		-0.985843, -0.164783, -0.030991,
		-0.167654, 0.971472, 0.167734,
		39.140530, 44.283218, 26.971918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843987, 43.788677, 26.263878>,  <39.257889, 43.603188, 26.854506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843987, 43.788677, 26.263878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976521, 44.133450, 26.417391>,  <39.056042, 44.340313, 26.509499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976521, 44.133450, 26.417391>,  <38.843987, 43.788677, 26.263878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976521, 44.133450, 26.417391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198146, 0.334119, -0.921468,
		-0.922472, 0.381361, -0.060083,
		0.331336, 0.861933, 0.383780,
		39.075920, 44.392029, 26.532524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567829, 44.320129, 25.877934>,  <38.843987, 43.788677, 26.263878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567829, 44.320129, 25.877934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876240, 44.535194, 26.014425>,  <39.061287, 44.664234, 26.096321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876240, 44.535194, 26.014425>,  <38.567829, 44.320129, 25.877934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876240, 44.535194, 26.014425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211415, 0.289331, -0.933590,
		-0.600681, 0.791966, 0.109414,
		0.771029, 0.537659, 0.341230,
		39.107548, 44.696491, 26.116795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655941, 44.894691, 25.498453>,  <38.567829, 44.320129, 25.877934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655941, 44.894691, 25.498453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013638, 44.848713, 25.671482>,  <39.228256, 44.821125, 25.775299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013638, 44.848713, 25.671482>,  <38.655941, 44.894691, 25.498453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013638, 44.848713, 25.671482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446910, 0.176282, -0.877038,
		0.024562, 0.977605, 0.209012,
		0.894242, -0.114951, 0.432572,
		39.281910, 44.814228, 25.801254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979492, 45.460278, 25.275114>,  <38.655941, 44.894691, 25.498453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979492, 45.460278, 25.275114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249401, 45.186825, 25.386343>,  <39.411346, 45.022751, 25.453081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249401, 45.186825, 25.386343>,  <38.979492, 45.460278, 25.275114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249401, 45.186825, 25.386343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472242, 0.110400, -0.874528,
		0.567160, 0.721425, 0.397337,
		0.674772, -0.683636, 0.278073,
		39.451832, 44.981735, 25.469765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571323, 45.774258, 25.211529>,  <38.979492, 45.460278, 25.275114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571323, 45.774258, 25.211529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663780, 45.385166, 25.203842>,  <39.719254, 45.151711, 25.199230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663780, 45.385166, 25.203842>,  <39.571323, 45.774258, 25.211529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663780, 45.385166, 25.203842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341238, 0.099554, -0.934690,
		0.911113, 0.209491, 0.354944,
		0.231145, -0.972729, -0.019218,
		39.733124, 45.093346, 25.198076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331161, 45.628742, 25.090500>,  <39.571323, 45.774258, 25.211529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331161, 45.628742, 25.090500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140068, 45.295948, 24.977667>,  <40.025414, 45.096272, 24.909967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140068, 45.295948, 24.977667>,  <40.331161, 45.628742, 25.090500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140068, 45.295948, 24.977667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570115, -0.049319, -0.820083,
		0.668386, -0.552599, 0.497889,
		-0.477733, -0.831987, -0.282081,
		39.996750, 45.046352, 24.893042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850170, 45.261326, 24.939646>,  <40.331161, 45.628742, 25.090500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850170, 45.261326, 24.939646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546761, 45.063084, 24.770405>,  <40.364716, 44.944138, 24.668859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546761, 45.063084, 24.770405>,  <40.850170, 45.261326, 24.939646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546761, 45.063084, 24.770405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592602, -0.254570, -0.764210,
		0.271035, -0.830405, 0.486793,
		-0.758527, -0.495602, -0.423102,
		40.319202, 44.914402, 24.643475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237064, 44.947132, 24.476316>,  <40.850170, 45.261326, 24.939646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237064, 44.947132, 24.476316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866531, 44.927704, 24.326891>,  <40.644211, 44.916046, 24.237236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866531, 44.927704, 24.326891>,  <41.237064, 44.947132, 24.476316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866531, 44.927704, 24.326891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375710, -0.046886, -0.925550,
		0.027441, -0.997718, 0.061681,
		-0.926331, -0.048572, -0.373566,
		40.588631, 44.913132, 24.214821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231083, 44.450977, 24.056137>,  <41.237064, 44.947132, 24.476316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231083, 44.450977, 24.056137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910416, 44.653774, 23.929464>,  <40.718014, 44.775452, 23.853460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910416, 44.653774, 23.929464>,  <41.231083, 44.450977, 24.056137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910416, 44.653774, 23.929464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283810, -0.143438, -0.948091,
		-0.526095, -0.849935, -0.028899,
		-0.801671, 0.506988, -0.316682,
		40.669914, 44.805870, 23.834459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912525, 43.999535, 23.478336>,  <41.231083, 44.450977, 24.056137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912525, 43.999535, 23.478336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794979, 44.374008, 23.401175>,  <40.724453, 44.598690, 23.354877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794979, 44.374008, 23.401175>,  <40.912525, 43.999535, 23.478336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794979, 44.374008, 23.401175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287321, -0.105963, -0.951955,
		-0.911641, -0.335172, -0.237845,
		-0.293865, 0.936179, -0.192903,
		40.706818, 44.654861, 23.343304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595669, 43.918945, 22.825178>,  <40.912525, 43.999535, 23.478336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595669, 43.918945, 22.825178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652077, 44.311626, 22.876369>,  <40.685921, 44.547234, 22.907084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652077, 44.311626, 22.876369>,  <40.595669, 43.918945, 22.825178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652077, 44.311626, 22.876369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106417, 0.113490, -0.987823,
		-0.984271, 0.152920, -0.088466,
		0.141018, 0.981700, 0.127979,
		40.694382, 44.606136, 22.914762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245953, 44.264732, 22.244169>,  <40.595669, 43.918945, 22.825178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245953, 44.264732, 22.244169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515354, 44.506725, 22.414055>,  <40.676994, 44.651920, 22.515987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515354, 44.506725, 22.414055>,  <40.245953, 44.264732, 22.244169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515354, 44.506725, 22.414055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358315, 0.235349, -0.903450,
		-0.646527, 0.760663, -0.058265,
		0.673508, 0.604982, 0.424716,
		40.717407, 44.688221, 22.541470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301495, 44.920399, 21.695778>,  <40.245953, 44.264732, 22.244169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301495, 44.920399, 21.695778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621677, 44.881851, 21.932415>,  <40.813786, 44.858723, 22.074398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621677, 44.881851, 21.932415>,  <40.301495, 44.920399, 21.695778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621677, 44.881851, 21.932415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598185, 0.191043, -0.778252,
		-0.038017, 0.976839, 0.210570,
		0.800455, -0.096373, 0.591594,
		40.861813, 44.852940, 22.109894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719852, 45.473167, 21.492306>,  <40.301495, 44.920399, 21.695778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719852, 45.473167, 21.492306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958809, 45.231884, 21.703690>,  <41.102180, 45.087112, 21.830519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958809, 45.231884, 21.703690>,  <40.719852, 45.473167, 21.492306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958809, 45.231884, 21.703690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720155, 0.113571, -0.684454,
		0.352851, 0.789456, 0.502250,
		0.597388, -0.603209, 0.528457,
		41.138023, 45.050922, 21.862226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301685, 45.890671, 21.697203>,  <40.719852, 45.473167, 21.492306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301685, 45.890671, 21.697203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390217, 45.500607, 21.693867>,  <41.443336, 45.266567, 21.691866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390217, 45.500607, 21.693867>,  <41.301685, 45.890671, 21.697203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390217, 45.500607, 21.693867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727895, 0.170887, -0.664054,
		0.648986, 0.140904, 0.747638,
		0.221329, -0.975164, -0.008340,
		41.456615, 45.208057, 21.691364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002903, 45.758831, 21.849648>,  <41.301685, 45.890671, 21.697203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002903, 45.758831, 21.849648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890583, 45.446144, 21.626909>,  <41.823193, 45.258533, 21.493267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890583, 45.446144, 21.626909>,  <42.002903, 45.758831, 21.849648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890583, 45.446144, 21.626909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856379, 0.057880, -0.513094,
		0.433323, -0.620946, 0.653190,
		-0.280797, -0.781713, -0.556846,
		41.806343, 45.211632, 21.459856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581898, 45.192162, 21.766428>,  <42.002903, 45.758831, 21.849648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581898, 45.192162, 21.766428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385094, 45.145737, 21.421301>,  <42.267014, 45.117882, 21.214224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385094, 45.145737, 21.421301>,  <42.581898, 45.192162, 21.766428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385094, 45.145737, 21.421301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853282, 0.132359, -0.504373,
		0.172740, -0.984383, 0.033911,
		-0.492008, -0.116061, -0.862820,
		42.237492, 45.110920, 21.162455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913109, 44.660934, 21.376013>,  <42.581898, 45.192162, 21.766428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913109, 44.660934, 21.376013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762066, 44.924625, 21.115910>,  <42.671440, 45.082840, 20.959848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762066, 44.924625, 21.115910>,  <42.913109, 44.660934, 21.376013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762066, 44.924625, 21.115910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898912, 0.092470, -0.428261,
		-0.222190, -0.746239, -0.627503,
		-0.377610, 0.659225, -0.650256,
		42.648785, 45.122395, 20.920832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276875, 44.606628, 20.809002>,  <42.913109, 44.660934, 21.376013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276875, 44.606628, 20.809002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070713, 44.933498, 20.705786>,  <42.947018, 45.129620, 20.643856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070713, 44.933498, 20.705786>,  <43.276875, 44.606628, 20.809002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070713, 44.933498, 20.705786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821971, 0.386268, -0.418523,
		-0.242333, -0.427810, -0.870777,
		-0.515402, 0.817175, -0.258042,
		42.916092, 45.178650, 20.628374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466217, 44.859882, 20.019716>,  <43.276875, 44.606628, 20.809002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466217, 44.859882, 20.019716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350906, 45.134720, 20.286488>,  <43.281719, 45.299622, 20.446550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350906, 45.134720, 20.286488>,  <43.466217, 44.859882, 20.019716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350906, 45.134720, 20.286488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809660, 0.546760, -0.213318,
		-0.511220, 0.478490, -0.713934,
		-0.288280, 0.687096, 0.666929,
		43.264423, 45.340847, 20.486567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259739, 44.392982, 19.477333>,  <43.466217, 44.859882, 20.019716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259739, 44.392982, 19.477333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143719, 44.035610, 19.340136>,  <43.074104, 43.821186, 19.257816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143719, 44.035610, 19.340136>,  <43.259739, 44.392982, 19.477333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143719, 44.035610, 19.340136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286690, -0.260823, 0.921835,
		-0.913060, 0.365713, -0.180487,
		-0.290052, -0.893434, -0.342994,
		43.056702, 43.767578, 19.237238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634655, 44.197712, 19.890274>,  <43.259739, 44.392982, 19.477333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634655, 44.197712, 19.890274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815346, 43.871887, 19.744707>,  <42.923759, 43.676392, 19.657368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815346, 43.871887, 19.744707>,  <42.634655, 44.197712, 19.890274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815346, 43.871887, 19.744707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093472, -0.448874, 0.888693,
		-0.887245, -0.367432, -0.278908,
		0.451729, -0.814558, -0.363917,
		42.950863, 43.627522, 19.635532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215553, 43.703091, 20.212568>,  <42.634655, 44.197712, 19.890274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215553, 43.703091, 20.212568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587147, 43.597614, 20.108677>,  <42.810104, 43.534328, 20.046343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587147, 43.597614, 20.108677>,  <42.215553, 43.703091, 20.212568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587147, 43.597614, 20.108677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076517, -0.549746, 0.831820,
		-0.362127, -0.792620, -0.490528,
		0.928983, -0.263690, -0.259727,
		42.865841, 43.518505, 20.030758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340893, 42.945045, 20.212822>,  <42.215553, 43.703091, 20.212568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340893, 42.945045, 20.212822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697987, 43.118652, 20.261238>,  <42.912243, 43.222816, 20.290289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697987, 43.118652, 20.261238>,  <42.340893, 42.945045, 20.212822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697987, 43.118652, 20.261238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109624, -0.469776, 0.875953,
		0.437042, -0.768725, -0.466964,
		0.892735, 0.434019, 0.121042,
		42.965809, 43.248859, 20.297550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802258, 42.383839, 20.564075>,  <42.340893, 42.945045, 20.212822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802258, 42.383839, 20.564075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927650, 42.753071, 20.653212>,  <43.002884, 42.974609, 20.706694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927650, 42.753071, 20.653212>,  <42.802258, 42.383839, 20.564075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927650, 42.753071, 20.653212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160091, -0.282684, 0.945759,
		0.936003, -0.260800, -0.236392,
		0.313478, 0.923078, 0.222842,
		43.021694, 43.029995, 20.720064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361893, 42.159866, 20.890369>,  <42.802258, 42.383839, 20.564075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361893, 42.159866, 20.890369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202126, 42.508976, 21.002607>,  <43.106266, 42.718441, 21.069950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202126, 42.508976, 21.002607>,  <43.361893, 42.159866, 20.890369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202126, 42.508976, 21.002607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071312, -0.334721, 0.939615,
		0.913990, 0.355291, 0.195934,
		-0.399420, 0.872771, 0.280595,
		43.082298, 42.770809, 21.086786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623329, 42.388668, 21.545990>,  <43.361893, 42.159866, 20.890369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623329, 42.388668, 21.545990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259815, 42.554394, 21.526188>,  <43.041706, 42.653828, 21.514307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259815, 42.554394, 21.526188>,  <43.623329, 42.388668, 21.545990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259815, 42.554394, 21.526188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203039, -0.335438, 0.919922,
		0.364531, 0.846064, 0.388964,
		-0.908786, 0.414315, -0.049507,
		42.987179, 42.678688, 21.511335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483559, 42.704079, 22.190117>,  <43.623329, 42.388668, 21.545990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483559, 42.704079, 22.190117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114052, 42.701145, 22.036961>,  <42.892349, 42.699387, 21.945066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114052, 42.701145, 22.036961>,  <43.483559, 42.704079, 22.190117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114052, 42.701145, 22.036961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360950, -0.317429, 0.876900,
		-0.127969, 0.948254, 0.290584,
		-0.923764, -0.007330, -0.382893,
		42.836922, 42.698948, 21.922092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009418, 42.895016, 22.645321>,  <43.483559, 42.704079, 22.190117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009418, 42.895016, 22.645321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757328, 42.697918, 22.405315>,  <42.606071, 42.579659, 22.261311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757328, 42.697918, 22.405315>,  <43.009418, 42.895016, 22.645321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757328, 42.697918, 22.405315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461219, -0.384077, 0.799851,
		-0.624571, 0.780828, 0.014796,
		-0.630229, -0.492740, -0.600016,
		42.568260, 42.550095, 22.225311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321030, 43.037159, 22.846626>,  <43.009418, 42.895016, 22.645321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321030, 43.037159, 22.846626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322845, 42.696594, 22.636837>,  <42.323936, 42.492256, 22.510963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322845, 42.696594, 22.636837>,  <42.321030, 43.037159, 22.846626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322845, 42.696594, 22.636837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726743, -0.363075, 0.583114,
		-0.686895, 0.378507, -0.620410,
		0.004542, -0.851416, -0.524472,
		42.324207, 42.441170, 22.479496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646923, 42.817020, 22.873127>,  <42.321030, 43.037159, 22.846626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646923, 42.817020, 22.873127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842976, 42.493042, 22.744274>,  <41.960606, 42.298656, 22.666962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842976, 42.493042, 22.744274>,  <41.646923, 42.817020, 22.873127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842976, 42.493042, 22.744274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601243, -0.581718, 0.547825,
		-0.631098, -0.074821, -0.772086,
		0.490125, -0.809942, -0.322136,
		41.990013, 42.250061, 22.647635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163773, 42.319653, 22.610800>,  <41.646923, 42.817020, 22.873127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163773, 42.319653, 22.610800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481178, 42.103703, 22.723137>,  <41.671619, 41.974133, 22.790539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481178, 42.103703, 22.723137>,  <41.163773, 42.319653, 22.610800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481178, 42.103703, 22.723137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559809, -0.466597, 0.684764,
		-0.238647, -0.700586, -0.672478,
		0.793512, -0.539876, 0.280843,
		41.719231, 41.941738, 22.807390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820492, 41.685040, 22.815781>,  <41.163773, 42.319653, 22.610800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820492, 41.685040, 22.815781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182995, 41.668293, 22.984043>,  <41.400497, 41.658245, 23.085001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182995, 41.668293, 22.984043>,  <40.820492, 41.685040, 22.815781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182995, 41.668293, 22.984043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377552, -0.527771, 0.760863,
		0.190156, -0.848354, -0.494101,
		0.906253, -0.041866, 0.420657,
		41.454872, 41.655731, 23.110241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899632, 40.934933, 22.985361>,  <40.820492, 41.685040, 22.815781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899632, 40.934933, 22.985361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136803, 41.177517, 23.197264>,  <41.279106, 41.323067, 23.324406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136803, 41.177517, 23.197264>,  <40.899632, 40.934933, 22.985361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136803, 41.177517, 23.197264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453592, -0.292037, 0.842003,
		0.665348, -0.739542, 0.101928,
		0.592930, 0.606458, 0.529757,
		41.314682, 41.359455, 23.356192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968067, 40.543030, 23.500927>,  <40.899632, 40.934933, 22.985361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968067, 40.543030, 23.500927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094990, 40.895821, 23.640316>,  <41.171143, 41.107494, 23.723949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094990, 40.895821, 23.640316>,  <40.968067, 40.543030, 23.500927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094990, 40.895821, 23.640316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608893, -0.092232, 0.787872,
		0.727027, -0.462175, 0.507765,
		0.317302, 0.881979, 0.348470,
		41.190182, 41.160416, 23.744858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221756, 40.447426, 24.189398>,  <40.968067, 40.543030, 23.500927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221756, 40.447426, 24.189398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117695, 40.833126, 24.169201>,  <41.055260, 41.064545, 24.157082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117695, 40.833126, 24.169201>,  <41.221756, 40.447426, 24.189398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117695, 40.833126, 24.169201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531356, -0.099303, 0.841309,
		0.806214, 0.245700, 0.538192,
		-0.260153, 0.964246, -0.050495,
		41.039650, 41.122398, 24.154053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512836, 40.745373, 24.731434>,  <41.221756, 40.447426, 24.189398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512836, 40.745373, 24.731434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216465, 40.999821, 24.645298>,  <41.038643, 41.152489, 24.593616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216465, 40.999821, 24.645298>,  <41.512836, 40.745373, 24.731434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216465, 40.999821, 24.645298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420036, -0.188753, 0.887661,
		0.524012, 0.748148, 0.407046,
		-0.740933, 0.636118, -0.215340,
		40.994186, 41.190655, 24.580696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245575, 41.011909, 25.353895>,  <41.512836, 40.745373, 24.731434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245575, 41.011909, 25.353895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948078, 41.166214, 25.135529>,  <40.769581, 41.258797, 25.004509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948078, 41.166214, 25.135529>,  <41.245575, 41.011909, 25.353895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948078, 41.166214, 25.135529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597652, -0.017933, 0.801555,
		0.299422, 0.922423, 0.243891,
		-0.743746, 0.385765, -0.545918,
		40.724953, 41.281944, 24.971752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934036, 41.619442, 25.697268>,  <41.245575, 41.011909, 25.353895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934036, 41.619442, 25.697268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649059, 41.475407, 25.456347>,  <40.478073, 41.388985, 25.311794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649059, 41.475407, 25.456347>,  <40.934036, 41.619442, 25.697268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649059, 41.475407, 25.456347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664350, 0.069691, 0.744166,
		-0.225987, 0.930313, -0.288873,
		-0.712439, -0.360084, -0.602304,
		40.435329, 41.367382, 25.275656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249836, 42.077717, 25.694769>,  <40.934036, 41.619442, 25.697268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249836, 42.077717, 25.694769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129417, 41.713509, 25.581398>,  <40.057167, 41.494984, 25.513376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129417, 41.713509, 25.581398>,  <40.249836, 42.077717, 25.694769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129417, 41.713509, 25.581398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881557, 0.152388, 0.446805,
		-0.363634, 0.384364, -0.848549,
		-0.301045, -0.910517, -0.283425,
		40.039104, 41.440353, 25.496370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540527, 42.159939, 25.562988>,  <40.249836, 42.077717, 25.694769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540527, 42.159939, 25.562988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601425, 41.766685, 25.603527>,  <39.637966, 41.530735, 25.627851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601425, 41.766685, 25.603527>,  <39.540527, 42.159939, 25.562988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601425, 41.766685, 25.603527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780262, -0.056618, 0.622884,
		-0.606639, -0.173911, -0.775721,
		0.152246, -0.983132, 0.101349,
		39.647099, 41.471745, 25.633932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849609, 41.876240, 25.508368>,  <39.540527, 42.159939, 25.562988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849609, 41.876240, 25.508368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064617, 41.570362, 25.650532>,  <39.193623, 41.386837, 25.735830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064617, 41.570362, 25.650532>,  <38.849609, 41.876240, 25.508368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064617, 41.570362, 25.650532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745698, -0.234263, 0.623743,
		-0.393714, -0.600302, -0.696152,
		0.537517, -0.764695, 0.355411,
		39.225872, 41.340954, 25.757154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396484, 41.328629, 25.564245>,  <38.849609, 41.876240, 25.508368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396484, 41.328629, 25.564245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683887, 41.232468, 25.825308>,  <38.856327, 41.174770, 25.981945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683887, 41.232468, 25.825308>,  <38.396484, 41.328629, 25.564245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683887, 41.232468, 25.825308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692076, -0.340420, 0.636510,
		0.069161, -0.909023, -0.410967,
		0.718504, -0.240398, 0.652656,
		38.899437, 41.160347, 26.021105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162918, 40.650047, 25.848415>,  <38.396484, 41.328629, 25.564245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162918, 40.650047, 25.848415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438953, 40.784523, 26.104774>,  <38.604576, 40.865208, 26.258591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438953, 40.784523, 26.104774>,  <38.162918, 40.650047, 25.848415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438953, 40.784523, 26.104774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570348, -0.292497, 0.767560,
		0.445507, -0.895221, -0.010104,
		0.690092, 0.336191, 0.640897,
		38.645981, 40.885380, 26.297043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193913, 40.168098, 26.392216>,  <38.162918, 40.650047, 25.848415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193913, 40.168098, 26.392216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351658, 40.502090, 26.545727>,  <38.446304, 40.702484, 26.637835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351658, 40.502090, 26.545727>,  <38.193913, 40.168098, 26.392216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351658, 40.502090, 26.545727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373369, -0.236015, 0.897158,
		0.839684, -0.497101, 0.218678,
		0.394367, 0.834977, 0.383780,
		38.469967, 40.752583, 26.660860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665638, 39.998318, 26.979549>,  <38.193913, 40.168098, 26.392216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665638, 39.998318, 26.979549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550968, 40.378239, 27.029665>,  <38.482166, 40.606190, 27.059734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550968, 40.378239, 27.029665>,  <38.665638, 39.998318, 26.979549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550968, 40.378239, 27.029665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101869, -0.160257, 0.981805,
		0.952597, 0.268696, 0.142697,
		-0.286675, 0.949800, 0.125289,
		38.464966, 40.663177, 27.067251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036766, 40.220684, 27.555676>,  <38.665638, 39.998318, 26.979549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036766, 40.220684, 27.555676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748775, 40.497189, 27.531046>,  <38.575981, 40.663094, 27.516268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748775, 40.497189, 27.531046>,  <39.036766, 40.220684, 27.555676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748775, 40.497189, 27.531046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116643, -0.033071, 0.992623,
		0.684129, 0.721845, 0.104441,
		-0.719974, 0.691264, -0.061574,
		38.532784, 40.704567, 27.512573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154087, 40.868145, 28.018482>,  <39.036766, 40.220684, 27.555676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154087, 40.868145, 28.018482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765018, 40.826790, 27.935322>,  <38.531578, 40.801979, 27.885426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765018, 40.826790, 27.935322>,  <39.154087, 40.868145, 28.018482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765018, 40.826790, 27.935322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168488, -0.301810, 0.938362,
		-0.159759, 0.947746, 0.276143,
		-0.972671, -0.103385, -0.207900,
		38.473217, 40.795776, 27.872952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891468, 41.016319, 28.666880>,  <39.154087, 40.868145, 28.018482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891468, 41.016319, 28.666880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568348, 40.879742, 28.474684>,  <38.374474, 40.797794, 28.359365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568348, 40.879742, 28.474684>,  <38.891468, 41.016319, 28.666880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568348, 40.879742, 28.474684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274718, -0.503124, 0.819387,
		-0.521522, 0.793902, 0.312624,
		-0.807802, -0.341445, -0.480490,
		38.326008, 40.777309, 28.330536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258469, 41.196785, 29.053314>,  <38.891468, 41.016319, 28.666880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258469, 41.196785, 29.053314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146141, 40.886753, 28.826902>,  <38.078747, 40.700733, 28.691055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146141, 40.886753, 28.826902>,  <38.258469, 41.196785, 29.053314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146141, 40.886753, 28.826902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389553, -0.446948, 0.805286,
		-0.877149, 0.446635, -0.176427,
		-0.280815, -0.775084, -0.566028,
		38.061897, 40.654228, 28.657093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522324, 41.195320, 29.227865>,  <38.258469, 41.196785, 29.053314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522324, 41.195320, 29.227865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580482, 40.831509, 29.072117>,  <37.615379, 40.613220, 28.978668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580482, 40.831509, 29.072117>,  <37.522324, 41.195320, 29.227865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580482, 40.831509, 29.072117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449308, -0.411331, 0.793051,
		-0.881466, 0.059640, -0.468467,
		0.145397, -0.909533, -0.389371,
		37.624104, 40.558647, 28.955305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044434, 40.845901, 29.538082>,  <37.522324, 41.195320, 29.227865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044434, 40.845901, 29.538082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267555, 40.549164, 29.389210>,  <37.401428, 40.371120, 29.299887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267555, 40.549164, 29.389210>,  <37.044434, 40.845901, 29.538082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267555, 40.549164, 29.389210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308839, -0.601746, 0.736560,
		-0.770374, -0.295911, -0.564766,
		0.557802, -0.741849, -0.372181,
		37.434895, 40.326611, 29.277555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592525, 40.195564, 29.456352>,  <37.044434, 40.845901, 29.538082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592525, 40.195564, 29.456352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975113, 40.097023, 29.518938>,  <37.204666, 40.037899, 29.556490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975113, 40.097023, 29.518938>,  <36.592525, 40.195564, 29.456352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975113, 40.097023, 29.518938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280670, -0.629578, 0.724469,
		-0.079965, -0.736847, -0.671314,
		0.956467, -0.246350, 0.156466,
		37.262054, 40.023117, 29.565878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596729, 39.452774, 29.503468>,  <36.592525, 40.195564, 29.456352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596729, 39.452774, 29.503468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926563, 39.551601, 29.707039>,  <37.124466, 39.610897, 29.829182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926563, 39.551601, 29.707039>,  <36.596729, 39.452774, 29.503468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926563, 39.551601, 29.707039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226992, -0.679515, 0.697663,
		0.518196, -0.690808, -0.504238,
		0.824589, 0.247069, 0.508930,
		37.173939, 39.625721, 29.859718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855480, 38.780796, 29.772890>,  <36.596729, 39.452774, 29.503468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855480, 38.780796, 29.772890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055447, 39.058334, 29.980225>,  <37.175426, 39.224857, 30.104626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055447, 39.058334, 29.980225>,  <36.855480, 38.780796, 29.772890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055447, 39.058334, 29.980225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087997, -0.554697, 0.827386,
		0.861594, -0.459232, -0.216244,
		0.499912, 0.693843, 0.518334,
		37.205421, 39.266487, 30.135725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353878, 38.442287, 30.094299>,  <36.855480, 38.780796, 29.772890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353878, 38.442287, 30.094299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314053, 38.781662, 30.302240>,  <37.290157, 38.985287, 30.427006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314053, 38.781662, 30.302240>,  <37.353878, 38.442287, 30.094299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314053, 38.781662, 30.302240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110412, -0.528642, 0.841633,
		0.988886, 0.026401, 0.146313,
		-0.099567, 0.848434, 0.519852,
		37.284184, 39.036194, 30.458197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640167, 38.239086, 30.651232>,  <37.353878, 38.442287, 30.094299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640167, 38.239086, 30.651232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431747, 38.552193, 30.787340>,  <37.306698, 38.740059, 30.869005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431747, 38.552193, 30.787340>,  <37.640167, 38.239086, 30.651232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431747, 38.552193, 30.787340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149643, -0.476265, 0.866475,
		0.840308, 0.400555, 0.365292,
		-0.521046, 0.782769, 0.340269,
		37.275433, 38.787022, 30.889421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827099, 38.333702, 31.443148>,  <37.640167, 38.239086, 30.651232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827099, 38.333702, 31.443148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456089, 38.458038, 31.360126>,  <37.233482, 38.532639, 31.310314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456089, 38.458038, 31.360126>,  <37.827099, 38.333702, 31.443148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456089, 38.458038, 31.360126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357872, -0.578363, 0.733092,
		0.107834, 0.754237, 0.647686,
		-0.927523, 0.310841, -0.207554,
		37.177834, 38.551292, 31.297861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595024, 38.632462, 32.069305>,  <37.827099, 38.333702, 31.443148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595024, 38.632462, 32.069305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256222, 38.569050, 31.866350>,  <37.052940, 38.531002, 31.744576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256222, 38.569050, 31.866350>,  <37.595024, 38.632462, 32.069305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256222, 38.569050, 31.866350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459964, -0.259913, 0.849046,
		-0.266478, 0.952530, 0.147229,
		-0.847008, -0.158531, -0.507391,
		37.002121, 38.521492, 31.714132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010063, 38.998203, 32.522957>,  <37.595024, 38.632462, 32.069305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010063, 38.998203, 32.522957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863239, 38.718216, 32.277905>,  <36.775146, 38.550224, 32.130875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863239, 38.718216, 32.277905>,  <37.010063, 38.998203, 32.522957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863239, 38.718216, 32.277905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662247, -0.265851, 0.700537,
		-0.653220, 0.662852, -0.365966,
		-0.367060, -0.699965, -0.612631,
		36.753120, 38.508228, 32.094116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290142, 38.878357, 32.774326>,  <37.010063, 38.998203, 32.522957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290142, 38.878357, 32.774326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312160, 38.568199, 32.522697>,  <36.325371, 38.382103, 32.371719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312160, 38.568199, 32.522697>,  <36.290142, 38.878357, 32.774326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312160, 38.568199, 32.522697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554503, -0.547679, 0.626557,
		-0.830359, 0.314335, -0.460105,
		0.055041, -0.775397, -0.629071,
		36.328674, 38.335579, 32.333977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581467, 38.582474, 32.731510>,  <36.290142, 38.878357, 32.774326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581467, 38.582474, 32.731510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826126, 38.287411, 32.617142>,  <35.972919, 38.110371, 32.548523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826126, 38.287411, 32.617142>,  <35.581467, 38.582474, 32.731510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826126, 38.287411, 32.617142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600853, -0.668238, 0.438673,
		-0.514653, -0.096517, -0.851949,
		0.611644, -0.737660, -0.285918,
		36.009621, 38.066113, 32.531364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191814, 38.030525, 32.413517>,  <35.581467, 38.582474, 32.731510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191814, 38.030525, 32.413517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528652, 37.877354, 32.565437>,  <35.730755, 37.785450, 32.656590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528652, 37.877354, 32.565437>,  <35.191814, 38.030525, 32.413517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528652, 37.877354, 32.565437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539172, -0.580325, 0.610341,
		-0.013314, -0.718739, -0.695153,
		0.842091, -0.382932, 0.379798,
		35.781281, 37.762474, 32.679375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024448, 37.303463, 32.530449>,  <35.191814, 38.030525, 32.413517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024448, 37.303463, 32.530449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334652, 37.404167, 32.762035>,  <35.520775, 37.464588, 32.900986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334652, 37.404167, 32.762035>,  <35.024448, 37.303463, 32.530449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334652, 37.404167, 32.762035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399507, -0.514392, 0.758812,
		0.488853, -0.819767, -0.298337,
		0.775510, 0.251760, 0.578965,
		35.567307, 37.479694, 32.935726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311432, 36.697304, 32.755116>,  <35.024448, 37.303463, 32.530449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311432, 36.697304, 32.755116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400558, 36.978844, 33.024918>,  <35.454033, 37.147766, 33.186798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400558, 36.978844, 33.024918>,  <35.311432, 36.697304, 32.755116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400558, 36.978844, 33.024918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357494, -0.584699, 0.728234,
		0.906946, -0.403393, 0.121341,
		0.222817, 0.703848, 0.674501,
		35.467403, 37.189999, 33.227268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334682, 36.215469, 32.185581>,  <35.311432, 36.697304, 32.755116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334682, 36.215469, 32.185581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997112, 36.057526, 32.040321>,  <34.794571, 35.962757, 31.953165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997112, 36.057526, 32.040321>,  <35.334682, 36.215469, 32.185581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997112, 36.057526, 32.040321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187363, 0.417365, -0.889214,
		0.502687, -0.818467, -0.278239,
		-0.843920, -0.394864, -0.363154,
		34.743935, 35.939068, 31.931376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570412, 35.984726, 31.636967>,  <35.334682, 36.215469, 32.185581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570412, 35.984726, 31.636967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175041, 35.997765, 31.577705>,  <34.937820, 36.005589, 31.542149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175041, 35.997765, 31.577705>,  <35.570412, 35.984726, 31.636967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175041, 35.997765, 31.577705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151206, 0.289998, -0.945007,
		0.012160, -0.956472, -0.291570,
		-0.988427, 0.032596, -0.148151,
		34.878513, 36.007542, 31.533260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558323, 35.704048, 30.924751>,  <35.570412, 35.984726, 31.636967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558323, 35.704048, 30.924751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196957, 35.863121, 30.988857>,  <34.980137, 35.958565, 31.027321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196957, 35.863121, 30.988857>,  <35.558323, 35.704048, 30.924751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196957, 35.863121, 30.988857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030065, 0.314114, -0.948909,
		-0.427707, -0.862079, -0.271820,
		-0.903417, 0.397683, 0.160267,
		34.925930, 35.982426, 31.036938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090134, 35.533951, 30.348064>,  <35.558323, 35.704048, 30.924751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090134, 35.533951, 30.348064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 35.855011, 30.523438>,  <34.831326, 36.047646, 30.628662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 35.855011, 30.523438>,  <35.090134, 35.533951, 30.348064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928379, 35.855011, 30.523438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011887, 0.483950, -0.875015,
		-0.914511, -0.348633, -0.205244,
		-0.404387, 0.802650, 0.438433,
		34.807064, 36.095806, 30.654968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417351, 35.710133, 30.088684>,  <35.090134, 35.533951, 30.348064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417351, 35.710133, 30.088684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589458, 36.046753, 30.219318>,  <34.692722, 36.248726, 30.297699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589458, 36.046753, 30.219318>,  <34.417351, 35.710133, 30.088684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589458, 36.046753, 30.219318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036255, 0.377607, -0.925256,
		-0.901973, 0.386268, 0.192983,
		0.430268, 0.841552, 0.326587,
		34.718540, 36.299217, 30.317295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023209, 36.240074, 29.697575>,  <34.417351, 35.710133, 30.088684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023209, 36.240074, 29.697575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356476, 36.394596, 29.855865>,  <34.556438, 36.487309, 29.950840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356476, 36.394596, 29.855865>,  <34.023209, 36.240074, 29.697575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356476, 36.394596, 29.855865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084252, 0.618555, -0.781211,
		-0.546560, 0.684223, 0.482816,
		0.833171, 0.386301, 0.395725,
		34.606426, 36.510487, 29.974583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098022, 36.868919, 29.567650>,  <34.023209, 36.240074, 29.697575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098022, 36.868919, 29.567650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479725, 36.795948, 29.662413>,  <34.708744, 36.752167, 29.719271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479725, 36.795948, 29.662413>,  <34.098022, 36.868919, 29.567650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479725, 36.795948, 29.662413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298993, 0.574925, -0.761620,
		0.002733, 0.797611, 0.603166,
		0.954252, -0.182424, 0.236909,
		34.765999, 36.741222, 29.733486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430019, 37.531761, 29.510038>,  <34.098022, 36.868919, 29.567650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430019, 37.531761, 29.510038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725311, 37.265705, 29.465143>,  <34.902489, 37.106071, 29.438206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725311, 37.265705, 29.465143>,  <34.430019, 37.531761, 29.510038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725311, 37.265705, 29.465143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182436, 0.357064, -0.916091,
		0.649408, 0.655812, 0.384943,
		0.738232, -0.665144, -0.112236,
		34.946781, 37.066162, 29.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898254, 37.930012, 29.008787>,  <34.430019, 37.531761, 29.510038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898254, 37.930012, 29.008787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092709, 37.584435, 28.956221>,  <35.209381, 37.377087, 28.924681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092709, 37.584435, 28.956221>,  <34.898254, 37.930012, 29.008787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092709, 37.584435, 28.956221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324146, 0.317924, -0.890984,
		0.811541, 0.390544, 0.434599,
		0.486138, -0.863944, -0.131415,
		35.238548, 37.325253, 28.916796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521507, 38.131805, 28.632057>,  <34.898254, 37.930012, 29.008787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521507, 38.131805, 28.632057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508160, 37.736103, 28.575132>,  <35.500153, 37.498680, 28.540977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508160, 37.736103, 28.575132>,  <35.521507, 38.131805, 28.632057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508160, 37.736103, 28.575132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439764, 0.113333, -0.890934,
		0.897493, -0.092309, 0.431259,
		-0.033365, -0.989260, -0.142310,
		35.498150, 37.439323, 28.532440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233578, 37.932068, 28.416567>,  <35.521507, 38.131805, 28.632057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233578, 37.932068, 28.416567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969131, 37.664810, 28.280035>,  <35.810463, 37.504456, 28.198116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969131, 37.664810, 28.280035>,  <36.233578, 37.932068, 28.416567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969131, 37.664810, 28.280035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354871, 0.122367, -0.926872,
		0.661051, -0.733902, 0.156205,
		-0.661119, -0.668142, -0.341331,
		35.770794, 37.464367, 28.177635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533665, 37.497414, 28.123716>,  <36.233578, 37.932068, 28.416567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533665, 37.497414, 28.123716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173141, 37.466961, 27.953146>,  <35.956825, 37.448689, 27.850803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173141, 37.466961, 27.953146>,  <36.533665, 37.497414, 28.123716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173141, 37.466961, 27.953146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407579, 0.184298, -0.894379,
		0.146681, -0.979918, -0.135080,
		-0.901313, -0.076132, -0.426427,
		35.902748, 37.444122, 27.825218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717026, 37.225174, 27.517839>,  <36.533665, 37.497414, 28.123716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717026, 37.225174, 27.517839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343327, 37.355175, 27.459129>,  <36.119106, 37.433178, 27.423903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343327, 37.355175, 27.459129>,  <36.717026, 37.225174, 27.517839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343327, 37.355175, 27.459129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201241, 0.140695, -0.969385,
		-0.294406, -0.935188, -0.196849,
		-0.934252, 0.325006, -0.146777,
		36.063049, 37.452675, 27.415096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379719, 36.832081, 26.910883>,  <36.717026, 37.225174, 27.517839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379719, 36.832081, 26.910883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202141, 37.186916, 26.961451>,  <36.095592, 37.399818, 26.991791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202141, 37.186916, 26.961451>,  <36.379719, 36.832081, 26.910883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202141, 37.186916, 26.961451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365736, 0.308190, -0.878212,
		-0.818015, -0.343643, -0.461261,
		-0.443947, 0.887090, 0.126421,
		36.068958, 37.453045, 26.999376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925919, 36.959938, 26.196804>,  <36.379719, 36.832081, 26.910883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925919, 36.959938, 26.196804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002911, 37.303646, 26.386375>,  <36.049107, 37.509872, 26.500118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002911, 37.303646, 26.386375>,  <35.925919, 36.959938, 26.196804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002911, 37.303646, 26.386375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432789, 0.359116, -0.826879,
		-0.880708, 0.364266, -0.302761,
		0.192478, 0.859270, 0.473927,
		36.060654, 37.561428, 26.528553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703926, 37.378773, 25.619484>,  <35.925919, 36.959938, 26.196804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703926, 37.378773, 25.619484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933403, 37.567547, 25.887262>,  <36.071091, 37.680809, 26.047930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933403, 37.567547, 25.887262>,  <35.703926, 37.378773, 25.619484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933403, 37.567547, 25.887262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488381, 0.459047, -0.742132,
		-0.657543, 0.752700, 0.032869,
		0.573691, 0.471931, 0.669447,
		36.105511, 37.709126, 26.088097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682098, 38.073410, 25.320019>,  <35.703926, 37.378773, 25.619484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682098, 38.073410, 25.320019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002491, 38.057270, 25.558949>,  <36.194725, 38.047588, 25.702307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002491, 38.057270, 25.558949>,  <35.682098, 38.073410, 25.320019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002491, 38.057270, 25.558949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518833, 0.544618, -0.658941,
		-0.298729, 0.837713, 0.457163,
		0.800983, -0.040346, 0.597326,
		36.242786, 38.045166, 25.738146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129906, 38.804634, 25.459366>,  <35.682098, 38.073410, 25.320019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129906, 38.804634, 25.459366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376080, 38.507355, 25.564356>,  <36.523785, 38.328987, 25.627350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376080, 38.507355, 25.564356>,  <36.129906, 38.804634, 25.459366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376080, 38.507355, 25.564356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728608, 0.409429, -0.549089,
		0.300618, 0.529169, 0.793479,
		0.615434, -0.743201, 0.262476,
		36.560711, 38.284393, 25.643099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858753, 39.087078, 25.781261>,  <36.129906, 38.804634, 25.459366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858753, 39.087078, 25.781261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909168, 38.728306, 25.611734>,  <36.939419, 38.513042, 25.510017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909168, 38.728306, 25.611734>,  <36.858753, 39.087078, 25.781261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909168, 38.728306, 25.611734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791708, 0.348375, -0.501830,
		0.597757, -0.272290, 0.754019,
		0.126039, -0.896935, -0.423818,
		36.946980, 38.459225, 25.484589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558437, 38.873672, 25.934090>,  <36.858753, 39.087078, 25.781261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558437, 38.873672, 25.934090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436058, 38.644165, 25.630198>,  <37.362629, 38.506462, 25.447863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436058, 38.644165, 25.630198>,  <37.558437, 38.873672, 25.934090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436058, 38.644165, 25.630198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776903, 0.310781, -0.547574,
		0.550288, -0.757766, 0.350675,
		-0.305950, -0.573764, -0.759730,
		37.344273, 38.472034, 25.402279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187744, 38.751831, 25.676638>,  <37.558437, 38.873672, 25.934090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187744, 38.751831, 25.676638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926819, 38.627789, 25.399994>,  <37.770264, 38.553364, 25.234009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926819, 38.627789, 25.399994>,  <38.187744, 38.751831, 25.676638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926819, 38.627789, 25.399994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612900, 0.321012, -0.722015,
		0.445914, -0.894867, -0.019337,
		-0.652314, -0.310105, -0.691608,
		37.731125, 38.534756, 25.192513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633011, 38.401875, 25.235821>,  <38.187744, 38.751831, 25.676638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633011, 38.401875, 25.235821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299847, 38.522972, 25.050518>,  <38.099949, 38.595631, 24.939337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299847, 38.522972, 25.050518>,  <38.633011, 38.401875, 25.235821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299847, 38.522972, 25.050518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553390, 0.448821, -0.701655,
		-0.004499, -0.840778, -0.541361,
		-0.832910, 0.302741, -0.463259,
		38.049973, 38.613792, 24.911541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710468, 38.361000, 24.507187>,  <38.633011, 38.401875, 25.235821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710468, 38.361000, 24.507187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409210, 38.622089, 24.540005>,  <38.228455, 38.778744, 24.559694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409210, 38.622089, 24.540005>,  <38.710468, 38.361000, 24.507187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409210, 38.622089, 24.540005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491555, 0.641244, -0.589220,
		-0.437206, -0.403438, -0.803797,
		-0.753143, 0.652720, 0.082044,
		38.183266, 38.817905, 24.564617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579571, 38.617344, 23.917763>,  <38.710468, 38.361000, 24.507187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579571, 38.617344, 23.917763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387932, 38.921204, 24.093670>,  <38.272949, 39.103519, 24.199213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387932, 38.921204, 24.093670>,  <38.579571, 38.617344, 23.917763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387932, 38.921204, 24.093670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246098, 0.597167, -0.763431,
		-0.842554, -0.257535, -0.473052,
		-0.479102, 0.759649, 0.439767,
		38.244202, 39.149097, 24.225599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291496, 38.890659, 23.383539>,  <38.579571, 38.617344, 23.917763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291496, 38.890659, 23.383539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300236, 39.159878, 23.679251>,  <38.305477, 39.321407, 23.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300236, 39.159878, 23.679251>,  <38.291496, 38.890659, 23.383539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300236, 39.159878, 23.679251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046240, 0.737983, -0.673233,
		-0.998691, 0.048891, -0.015000,
		0.021846, 0.673046, 0.739278,
		38.306789, 39.361790, 23.901033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914455, 39.455479, 23.103083>,  <38.291496, 38.890659, 23.383539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914455, 39.455479, 23.103083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104679, 39.629204, 23.409079>,  <38.218815, 39.733440, 23.592676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104679, 39.629204, 23.409079>,  <37.914455, 39.455479, 23.103083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104679, 39.629204, 23.409079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310774, 0.730596, -0.607987,
		-0.822957, 0.526875, 0.212471,
		0.475564, 0.434317, 0.764989,
		38.247349, 39.759499, 23.638575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568012, 40.160004, 23.219622>,  <37.914455, 39.455479, 23.103083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568012, 40.160004, 23.219622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940941, 40.144981, 23.363489>,  <38.164700, 40.135967, 23.449810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940941, 40.144981, 23.363489>,  <37.568012, 40.160004, 23.219622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940941, 40.144981, 23.363489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236779, 0.815148, -0.528649,
		-0.273327, 0.578034, 0.768875,
		0.932324, -0.037560, 0.359668,
		38.220638, 40.133713, 23.471390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766399, 40.865402, 23.320421>,  <37.568012, 40.160004, 23.219622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766399, 40.865402, 23.320421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113667, 40.669785, 23.354185>,  <38.322025, 40.552414, 23.374443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113667, 40.669785, 23.354185>,  <37.766399, 40.865402, 23.320421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113667, 40.669785, 23.354185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483921, 0.796508, -0.362485,
		0.110039, 0.355544, 0.928160,
		0.868166, -0.489044, 0.084408,
		38.374115, 40.523071, 23.379507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210278, 41.464298, 23.418552>,  <37.766399, 40.865402, 23.320421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210278, 41.464298, 23.418552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441330, 41.152405, 23.321922>,  <38.579960, 40.965267, 23.263945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441330, 41.152405, 23.321922>,  <38.210278, 41.464298, 23.418552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441330, 41.152405, 23.321922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346442, 0.502132, -0.792364,
		0.739137, 0.374001, 0.560179,
		0.577629, -0.779735, -0.241575,
		38.614620, 40.918484, 23.249451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779713, 41.801270, 23.202421>,  <38.210278, 41.464298, 23.418552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779713, 41.801270, 23.202421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784027, 41.433807, 23.044453>,  <38.786617, 41.213329, 22.949671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784027, 41.433807, 23.044453>,  <38.779713, 41.801270, 23.202421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784027, 41.433807, 23.044453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180431, 0.390250, -0.902856,
		0.983529, -0.061514, 0.169964,
		0.010791, -0.918652, -0.394921,
		38.787266, 41.158211, 22.925976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262329, 41.909138, 22.709717>,  <38.779713, 41.801270, 23.202421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262329, 41.909138, 22.709717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077457, 41.564644, 22.625181>,  <38.966534, 41.357948, 22.574461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077457, 41.564644, 22.625181>,  <39.262329, 41.909138, 22.709717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077457, 41.564644, 22.625181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203369, 0.129028, -0.970563,
		0.863154, -0.491550, 0.115515,
		-0.462176, -0.861238, -0.211337,
		38.938805, 41.306274, 22.561781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772930, 41.449696, 22.466206>,  <39.262329, 41.909138, 22.709717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772930, 41.449696, 22.466206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418285, 41.329994, 22.325148>,  <39.205498, 41.258171, 22.240513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418285, 41.329994, 22.325148>,  <39.772930, 41.449696, 22.466206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418285, 41.329994, 22.325148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314712, 0.168379, -0.934133,
		0.338924, -0.939199, -0.055107,
		-0.886616, -0.299257, -0.352644,
		39.152302, 41.240219, 22.219355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870571, 40.869915, 21.856277>,  <39.772930, 41.449696, 22.466206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870571, 40.869915, 21.856277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516304, 41.054585, 21.836432>,  <39.303745, 41.165386, 21.824524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516304, 41.054585, 21.836432>,  <39.870571, 40.869915, 21.856277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516304, 41.054585, 21.836432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195157, 0.273160, -0.941965,
		-0.421325, -0.843946, -0.332026,
		-0.885663, 0.461670, -0.049613,
		39.250607, 41.193085, 21.821548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609917, 40.690987, 21.232183>,  <39.870571, 40.869915, 21.856277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609917, 40.690987, 21.232183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396019, 41.011112, 21.340662>,  <39.267681, 41.203186, 21.405748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396019, 41.011112, 21.340662>,  <39.609917, 40.690987, 21.232183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396019, 41.011112, 21.340662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063142, 0.357882, -0.931629,
		-0.842651, -0.481061, -0.241910,
		-0.534746, 0.800313, 0.271195,
		39.235596, 41.251205, 21.422020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292095, 40.764801, 20.668354>,  <39.609917, 40.690987, 21.232183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292095, 40.764801, 20.668354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232590, 41.116474, 20.849421>,  <39.196888, 41.327477, 20.958061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232590, 41.116474, 20.849421>,  <39.292095, 40.764801, 20.668354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232590, 41.116474, 20.849421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122444, 0.470614, -0.873802,
		-0.981263, -0.074565, -0.177662,
		-0.148765, 0.879183, 0.452666,
		39.187962, 41.380230, 20.985220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783062, 41.113876, 20.289049>,  <39.292095, 40.764801, 20.668354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783062, 41.113876, 20.289049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962330, 41.413055, 20.484894>,  <39.069889, 41.592564, 20.602400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962330, 41.413055, 20.484894>,  <38.783062, 41.113876, 20.289049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962330, 41.413055, 20.484894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119615, 0.492595, -0.861999,
		-0.885909, 0.444887, 0.131300,
		0.448170, 0.747948, 0.489610,
		39.096783, 41.637440, 20.631777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540253, 41.703499, 20.029846>,  <38.783062, 41.113876, 20.289049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540253, 41.703499, 20.029846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894104, 41.782333, 20.198883>,  <39.106415, 41.829632, 20.300304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894104, 41.782333, 20.198883>,  <38.540253, 41.703499, 20.029846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894104, 41.782333, 20.198883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279552, 0.501191, -0.818937,
		-0.373198, 0.842595, 0.388275,
		0.884632, 0.197082, 0.422592,
		39.159492, 41.841457, 20.325661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610905, 42.437263, 19.931955>,  <38.540253, 41.703499, 20.029846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610905, 42.437263, 19.931955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981262, 42.290554, 19.968185>,  <39.203476, 42.202526, 19.989923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981262, 42.290554, 19.968185>,  <38.610905, 42.437263, 19.931955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981262, 42.290554, 19.968185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227641, 0.350287, -0.908558,
		0.301509, 0.861844, 0.407821,
		0.925890, -0.366775, 0.090576,
		39.259029, 42.180523, 19.995358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194054, 42.624775, 19.358854>,  <38.610905, 42.437263, 19.931955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194054, 42.624775, 19.358854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831551, 42.789574, 19.396723>,  <37.614048, 42.888451, 19.419443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831551, 42.789574, 19.396723>,  <38.194054, 42.624775, 19.358854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831551, 42.789574, 19.396723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275252, -0.745071, 0.607541,
		0.320840, 0.524529, 0.788626,
		-0.906255, 0.411994, 0.094671,
		37.559673, 42.913174, 19.425123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965767, 42.712364, 20.114197>,  <38.194054, 42.624775, 19.358854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965767, 42.712364, 20.114197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621506, 42.709980, 19.910534>,  <37.414948, 42.708549, 19.788336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621506, 42.709980, 19.910534>,  <37.965767, 42.712364, 20.114197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621506, 42.709980, 19.910534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431874, -0.521166, 0.736118,
		-0.269744, 0.853434, 0.445969,
		-0.860652, -0.005961, -0.509158,
		37.363312, 42.708191, 19.757786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549709, 43.035915, 20.618124>,  <37.965767, 42.712364, 20.114197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549709, 43.035915, 20.618124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316154, 42.853436, 20.349512>,  <37.176022, 42.743950, 20.188345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316154, 42.853436, 20.349512>,  <37.549709, 43.035915, 20.618124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316154, 42.853436, 20.349512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573986, -0.352991, 0.738876,
		-0.574118, 0.816873, -0.055743,
		-0.583891, -0.456197, -0.671532,
		37.140987, 42.716576, 20.148052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920834, 43.138496, 20.831858>,  <37.549709, 43.035915, 20.618124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920834, 43.138496, 20.831858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885254, 42.821796, 20.590124>,  <36.863907, 42.631775, 20.445084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885254, 42.821796, 20.590124>,  <36.920834, 43.138496, 20.831858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885254, 42.821796, 20.590124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527804, -0.477080, 0.702721,
		-0.844696, 0.381475, -0.375454,
		-0.088949, -0.791752, -0.604332,
		36.858570, 42.584270, 20.408825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185539, 42.900116, 20.903595>,  <36.920834, 43.138496, 20.831858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185539, 42.900116, 20.903595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380604, 42.586735, 20.749512>,  <36.497643, 42.398705, 20.657061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380604, 42.586735, 20.749512>,  <36.185539, 42.900116, 20.903595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380604, 42.586735, 20.749512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555279, -0.618825, 0.555627,
		-0.673686, -0.057059, -0.736812,
		0.487661, -0.783454, -0.385210,
		36.526901, 42.351700, 20.633949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711525, 42.465626, 20.696068>,  <36.185539, 42.900116, 20.903595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711525, 42.465626, 20.696068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019131, 42.210213, 20.708027>,  <36.203693, 42.056965, 20.715202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019131, 42.210213, 20.708027>,  <35.711525, 42.465626, 20.696068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019131, 42.210213, 20.708027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575027, -0.670583, 0.468683,
		-0.279220, -0.377616, -0.882860,
		0.769013, -0.638534, 0.029899,
		36.249836, 42.018654, 20.716997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488754, 41.802513, 20.429502>,  <35.711525, 42.465626, 20.696068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488754, 41.802513, 20.429502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809418, 41.748333, 20.662397>,  <36.001816, 41.715824, 20.802135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809418, 41.748333, 20.662397>,  <35.488754, 41.802513, 20.429502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809418, 41.748333, 20.662397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499382, -0.687113, 0.527724,
		0.328584, -0.713813, -0.618469,
		0.801655, -0.135451, 0.582239,
		36.049915, 41.707699, 20.837069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370995, 41.152637, 20.477238>,  <35.488754, 41.802513, 20.429502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370995, 41.152637, 20.477238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627277, 41.240177, 20.771610>,  <35.781048, 41.292702, 20.948233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627277, 41.240177, 20.771610>,  <35.370995, 41.152637, 20.477238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627277, 41.240177, 20.771610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456268, -0.662370, 0.594210,
		0.617502, -0.716498, -0.324532,
		0.640711, 0.218852, 0.735931,
		35.819492, 41.305832, 20.992390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552940, 40.516090, 20.888304>,  <35.370995, 41.152637, 20.477238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552940, 40.516090, 20.888304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662098, 40.810051, 21.136642>,  <35.727592, 40.986427, 21.285645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662098, 40.810051, 21.136642>,  <35.552940, 40.516090, 20.888304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662098, 40.810051, 21.136642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279533, -0.556926, 0.782109,
		0.920537, -0.386982, 0.053445,
		0.272898, 0.734900, 0.620845,
		35.743969, 41.030521, 21.322897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917198, 40.089840, 21.508196>,  <35.552940, 40.516090, 20.888304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917198, 40.089840, 21.508196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771729, 40.447037, 21.614254>,  <35.684448, 40.661354, 21.677889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771729, 40.447037, 21.614254>,  <35.917198, 40.089840, 21.508196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771729, 40.447037, 21.614254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321941, -0.387585, 0.863789,
		0.874125, 0.228778, 0.428446,
		-0.363675, 0.892994, 0.265145,
		35.662624, 40.714935, 21.693798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071964, 40.086124, 22.157892>,  <35.917198, 40.089840, 21.508196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071964, 40.086124, 22.157892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804054, 40.378841, 22.107481>,  <35.643307, 40.554470, 22.077234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804054, 40.378841, 22.107481>,  <36.071964, 40.086124, 22.157892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804054, 40.378841, 22.107481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550207, -0.375100, 0.746037,
		0.498669, 0.569021, 0.653869,
		-0.669777, 0.731789, -0.126029,
		35.603123, 40.598377, 22.069672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048386, 40.366928, 22.754839>,  <36.071964, 40.086124, 22.157892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048386, 40.366928, 22.754839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705017, 40.478199, 22.582451>,  <35.498997, 40.544960, 22.479019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705017, 40.478199, 22.582451>,  <36.048386, 40.366928, 22.754839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705017, 40.478199, 22.582451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510582, -0.382777, 0.769927,
		0.049211, 0.880965, 0.470615,
		-0.858419, 0.278177, -0.430968,
		35.447491, 40.561653, 22.453161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688671, 40.795662, 23.220543>,  <36.048386, 40.366928, 22.754839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688671, 40.795662, 23.220543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385204, 40.666443, 22.994246>,  <35.203125, 40.588913, 22.858467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385204, 40.666443, 22.994246>,  <35.688671, 40.795662, 23.220543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385204, 40.666443, 22.994246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485936, -0.297805, 0.821692,
		-0.433925, 0.898306, 0.068956,
		-0.758667, -0.323044, -0.565744,
		35.157604, 40.569530, 22.824522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076778, 41.036987, 23.546103>,  <35.688671, 40.795662, 23.220543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076778, 41.036987, 23.546103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961926, 40.732315, 23.313759>,  <34.893013, 40.549511, 23.174353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961926, 40.732315, 23.313759>,  <35.076778, 41.036987, 23.546103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961926, 40.732315, 23.313759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510403, -0.391483, 0.765656,
		-0.810583, 0.516315, -0.276359,
		-0.287130, -0.761682, -0.580858,
		34.875786, 40.503811, 23.139502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379604, 40.893997, 23.744726>,  <35.076778, 41.036987, 23.546103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379604, 40.893997, 23.744726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498444, 40.556797, 23.565353>,  <34.569748, 40.354477, 23.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498444, 40.556797, 23.565353>,  <34.379604, 40.893997, 23.744726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498444, 40.556797, 23.565353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316263, -0.530004, 0.786812,
		-0.900950, -0.091936, -0.424071,
		0.297095, -0.842997, -0.448432,
		34.587574, 40.303898, 23.430824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789997, 40.432644, 23.744864>,  <34.379604, 40.893997, 23.744726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789997, 40.432644, 23.744864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144039, 40.247124, 23.760242>,  <34.356464, 40.135811, 23.769470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144039, 40.247124, 23.760242>,  <33.789997, 40.432644, 23.744864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144039, 40.247124, 23.760242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305462, -0.516624, 0.799871,
		-0.351119, -0.719713, -0.598940,
		0.885104, -0.463803, 0.038448,
		34.409569, 40.107983, 23.771776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597214, 39.855370, 24.019577>,  <33.789997, 40.432644, 23.744864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597214, 39.855370, 24.019577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994160, 39.813278, 24.045328>,  <34.232327, 39.788025, 24.060780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994160, 39.813278, 24.045328>,  <33.597214, 39.855370, 24.019577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994160, 39.813278, 24.045328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109517, -0.511332, 0.852376,
		-0.056772, -0.852917, -0.518951,
		0.992362, -0.105225, 0.064379,
		34.291870, 39.781712, 24.064642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676601, 39.200027, 24.057211>,  <33.597214, 39.855370, 24.019577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676601, 39.200027, 24.057211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999512, 39.379154, 24.210968>,  <34.193260, 39.486629, 24.303223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999512, 39.379154, 24.210968>,  <33.676601, 39.200027, 24.057211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999512, 39.379154, 24.210968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150391, -0.473725, 0.867737,
		0.570685, -0.758316, -0.315081,
		0.807281, 0.447819, 0.384391,
		34.241695, 39.513500, 24.326286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924854, 38.707283, 24.503149>,  <33.676601, 39.200027, 24.057211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924854, 38.707283, 24.503149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138096, 39.022923, 24.625212>,  <34.266041, 39.212307, 24.698448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138096, 39.022923, 24.625212>,  <33.924854, 38.707283, 24.503149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138096, 39.022923, 24.625212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026027, -0.375808, 0.926332,
		0.845650, -0.485888, -0.220883,
		0.533103, 0.789102, 0.305156,
		34.298027, 39.259651, 24.716759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405857, 38.456860, 24.897013>,  <33.924854, 38.707283, 24.503149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405857, 38.456860, 24.897013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359211, 38.825195, 25.045853>,  <34.331223, 39.046196, 25.135157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359211, 38.825195, 25.045853>,  <34.405857, 38.456860, 24.897013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359211, 38.825195, 25.045853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084652, -0.382508, 0.920066,
		0.989563, 0.075798, 0.122558,
		-0.116619, 0.920838, 0.372099,
		34.324226, 39.101448, 25.157482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913765, 38.558506, 25.430685>,  <34.405857, 38.456860, 24.897013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913765, 38.558506, 25.430685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615723, 38.817638, 25.494093>,  <34.436897, 38.973118, 25.532137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615723, 38.817638, 25.494093>,  <34.913765, 38.558506, 25.430685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615723, 38.817638, 25.494093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120731, -0.364770, 0.923237,
		0.655925, 0.668774, 0.350006,
		-0.745108, 0.647831, 0.158520,
		34.392189, 39.011986, 25.541649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986191, 38.627827, 26.064997>,  <34.913765, 38.558506, 25.430685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986191, 38.627827, 26.064997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621857, 38.785366, 26.015583>,  <34.403255, 38.879890, 25.985935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621857, 38.785366, 26.015583>,  <34.986191, 38.627827, 26.064997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621857, 38.785366, 26.015583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247165, -0.280711, 0.927421,
		0.330588, 0.875262, 0.353028,
		-0.910835, 0.393850, -0.123535,
		34.348606, 38.903522, 25.978523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869778, 39.099514, 26.661682>,  <34.986191, 38.627827, 26.064997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869778, 39.099514, 26.661682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524136, 38.959400, 26.517118>,  <34.316750, 38.875332, 26.430380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524136, 38.959400, 26.517118>,  <34.869778, 39.099514, 26.661682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524136, 38.959400, 26.517118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281631, -0.258608, 0.924016,
		-0.417133, 0.900234, 0.124814,
		-0.864109, -0.350286, -0.361407,
		34.264904, 38.854313, 26.408697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348705, 39.237198, 27.228683>,  <34.869778, 39.099514, 26.661682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348705, 39.237198, 27.228683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118942, 39.006145, 26.996681>,  <33.981087, 38.867516, 26.857479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118942, 39.006145, 26.996681>,  <34.348705, 39.237198, 27.228683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118942, 39.006145, 26.996681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364761, -0.453703, 0.813082,
		-0.732809, 0.678601, 0.049913,
		-0.574404, -0.577628, -0.580005,
		33.946621, 38.832859, 26.822680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506668, 39.275928, 27.419077>,  <34.348705, 39.237198, 27.228683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506668, 39.275928, 27.419077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593819, 38.934959, 27.228962>,  <33.646111, 38.730377, 27.114893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593819, 38.934959, 27.228962>,  <33.506668, 39.275928, 27.419077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593819, 38.934959, 27.228962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488331, -0.516859, 0.703129,
		-0.845022, 0.078902, -0.528878,
		0.217877, -0.852427, -0.475288,
		33.659184, 38.679230, 27.086376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008541, 38.830009, 27.549826>,  <33.506668, 39.275928, 27.419077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008541, 38.830009, 27.549826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238010, 38.545216, 27.387854>,  <33.375694, 38.374340, 27.290670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238010, 38.545216, 27.387854>,  <33.008541, 38.830009, 27.549826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238010, 38.545216, 27.387854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278751, -0.634569, 0.720847,
		-0.770191, -0.300657, -0.562504,
		0.573676, -0.711988, -0.404931,
		33.410114, 38.331619, 27.266375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645599, 38.263397, 27.330807>,  <33.008541, 38.830009, 27.549826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645599, 38.263397, 27.330807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010189, 38.135292, 27.434074>,  <33.228943, 38.058430, 27.496035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010189, 38.135292, 27.434074>,  <32.645599, 38.263397, 27.330807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010189, 38.135292, 27.434074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403129, -0.570464, 0.715582,
		-0.081895, -0.756310, -0.649068,
		0.911472, -0.320260, 0.258172,
		33.283630, 38.039215, 27.511526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564259, 37.551075, 27.336151>,  <32.645599, 38.263397, 27.330807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564259, 37.551075, 27.336151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884296, 37.634174, 27.561251>,  <33.076321, 37.684032, 27.696310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884296, 37.634174, 27.561251>,  <32.564259, 37.551075, 27.336151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884296, 37.634174, 27.561251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457313, -0.395870, 0.796336,
		0.388213, -0.894498, -0.221728,
		0.800097, 0.207749, 0.562748,
		33.124325, 37.696499, 27.730076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720570, 36.974171, 27.814518>,  <32.564259, 37.551075, 27.336151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720570, 36.974171, 27.814518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918739, 37.269722, 27.997213>,  <33.037643, 37.447052, 28.106831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918739, 37.269722, 27.997213>,  <32.720570, 36.974171, 27.814518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918739, 37.269722, 27.997213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405659, -0.268143, 0.873808,
		0.768109, -0.618188, 0.166888,
		0.495428, 0.738879, 0.456737,
		33.067368, 37.491386, 28.134235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898594, 36.675343, 28.432657>,  <32.720570, 36.974171, 27.814518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898594, 36.675343, 28.432657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965405, 37.059834, 28.520430>,  <33.005489, 37.290527, 28.573093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965405, 37.059834, 28.520430>,  <32.898594, 36.675343, 28.432657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965405, 37.059834, 28.520430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416357, -0.132977, 0.899424,
		0.893728, -0.241589, 0.378002,
		0.167026, 0.961224, 0.219433,
		33.015511, 37.348202, 28.586260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411240, 36.755688, 29.041136>,  <32.898594, 36.675343, 28.432657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411240, 36.755688, 29.041136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158405, 37.062450, 28.996725>,  <33.006706, 37.246506, 28.970079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158405, 37.062450, 28.996725>,  <33.411240, 36.755688, 29.041136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158405, 37.062450, 28.996725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423169, -0.221589, 0.878536,
		0.649150, 0.602293, 0.464593,
		-0.632085, 0.766903, -0.111027,
		32.968781, 37.292522, 28.963417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268681, 36.964912, 29.656723>,  <33.411240, 36.755688, 29.041136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268681, 36.964912, 29.656723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966248, 37.152458, 29.474073>,  <32.784786, 37.264984, 29.364485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966248, 37.152458, 29.474073>,  <33.268681, 36.964912, 29.656723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966248, 37.152458, 29.474073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535656, -0.042439, 0.843369,
		0.376047, 0.882250, 0.283238,
		-0.756082, 0.468865, -0.456623,
		32.739422, 37.293118, 29.337086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020634, 37.355419, 30.275364>,  <33.268681, 36.964912, 29.656723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020634, 37.355419, 30.275364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741627, 37.340473, 29.989126>,  <32.574223, 37.331505, 29.817385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741627, 37.340473, 29.989126>,  <33.020634, 37.355419, 30.275364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741627, 37.340473, 29.989126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715298, 0.095711, 0.692234,
		0.042626, 0.994708, -0.093486,
		-0.697518, -0.037364, -0.715593,
		32.532372, 37.329266, 29.774448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483879, 37.851372, 30.455488>,  <33.020634, 37.355419, 30.275364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483879, 37.851372, 30.455488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315948, 37.593227, 30.200224>,  <32.215191, 37.438339, 30.047066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315948, 37.593227, 30.200224>,  <32.483879, 37.851372, 30.455488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315948, 37.593227, 30.200224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742394, -0.160294, 0.650505,
		-0.522106, 0.746868, -0.411817,
		-0.419830, -0.645363, -0.638161,
		32.189999, 37.399620, 30.008776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757576, 38.023144, 30.335745>,  <32.483879, 37.851372, 30.455488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757576, 38.023144, 30.335745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746008, 37.639633, 30.222670>,  <31.739067, 37.409527, 30.154823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746008, 37.639633, 30.222670>,  <31.757576, 38.023144, 30.335745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746008, 37.639633, 30.222670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779354, -0.155459, 0.606993,
		-0.625916, 0.237870, -0.742729,
		-0.028922, -0.958775, -0.282689,
		31.737331, 37.352001, 30.137863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069538, 37.837322, 29.957483>,  <31.757576, 38.023144, 30.335745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069538, 37.837322, 29.957483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251394, 37.522717, 30.124672>,  <31.360508, 37.333954, 30.224985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251394, 37.522717, 30.124672>,  <31.069538, 37.837322, 29.957483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251394, 37.522717, 30.124672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795682, -0.147779, 0.587411,
		-0.400238, -0.599634, -0.693000,
		0.454642, -0.786512, 0.417972,
		31.387787, 37.286762, 30.250063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516632, 37.437668, 30.127041>,  <31.069538, 37.837322, 29.957483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516632, 37.437668, 30.127041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812637, 37.268646, 30.336357>,  <30.990240, 37.167233, 30.461946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812637, 37.268646, 30.336357>,  <30.516632, 37.437668, 30.127041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812637, 37.268646, 30.336357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639318, -0.200217, 0.742419,
		-0.208936, -0.883950, -0.418305,
		0.740013, -0.422548, 0.523292,
		31.034641, 37.141880, 30.493345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298199, 36.801094, 30.532513>,  <30.516632, 37.437668, 30.127041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298199, 36.801094, 30.532513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620810, 36.929569, 30.731049>,  <30.814377, 37.006653, 30.850170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620810, 36.929569, 30.731049>,  <30.298199, 36.801094, 30.532513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620810, 36.929569, 30.731049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505345, -0.061177, 0.860746,
		0.306825, -0.945038, 0.112970,
		0.806526, 0.321187, 0.496341,
		30.862768, 37.025925, 30.879951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364853, 36.403873, 31.084457>,  <30.298199, 36.801094, 30.532513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364853, 36.403873, 31.084457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593740, 36.708965, 31.204992>,  <30.731073, 36.892021, 31.277313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593740, 36.708965, 31.204992>,  <30.364853, 36.403873, 31.084457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593740, 36.708965, 31.204992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357771, -0.098459, 0.928604,
		0.737947, -0.639174, 0.216544,
		0.572219, 0.762733, 0.301335,
		30.765406, 36.937786, 31.295393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495434, 36.234341, 31.751480>,  <30.364853, 36.403873, 31.084457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495434, 36.234341, 31.751480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576176, 36.625687, 31.733368>,  <30.624620, 36.860497, 31.722502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576176, 36.625687, 31.733368>,  <30.495434, 36.234341, 31.751480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576176, 36.625687, 31.733368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180215, 0.082543, 0.980158,
		0.962693, -0.189688, 0.192978,
		0.201854, 0.978368, -0.045279,
		30.636732, 36.919197, 31.719784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114899, 36.414436, 32.174801>,  <30.495434, 36.234341, 31.751480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114899, 36.414436, 32.174801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846523, 36.707966, 32.132202>,  <30.685497, 36.884083, 32.106644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846523, 36.707966, 32.132202>,  <31.114899, 36.414436, 32.174801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846523, 36.707966, 32.132202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201484, -0.042205, 0.978582,
		0.713615, 0.678025, 0.176171,
		-0.670938, 0.733827, -0.106492,
		30.645243, 36.928112, 32.100254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161810, 37.085770, 32.477390>,  <31.114899, 36.414436, 32.174801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161810, 37.085770, 32.477390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785896, 36.963875, 32.539276>,  <30.560349, 36.890739, 32.576408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785896, 36.963875, 32.539276>,  <31.161810, 37.085770, 32.477390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785896, 36.963875, 32.539276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208947, -0.154072, 0.965714,
		-0.270450, 0.939892, 0.208468,
		-0.939786, -0.304736, 0.154719,
		30.503960, 36.872456, 32.585693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675179, 37.398746, 33.007755>,  <31.161810, 37.085770, 32.477390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675179, 37.398746, 33.007755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644217, 37.001694, 32.970474>,  <30.625639, 36.763462, 32.948105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644217, 37.001694, 32.970474>,  <30.675179, 37.398746, 33.007755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644217, 37.001694, 32.970474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253147, -0.109988, 0.961155,
		-0.964326, 0.050805, 0.259796,
		-0.077406, -0.992634, -0.093203,
		30.620995, 36.703903, 32.942513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147381, 37.018047, 33.495079>,  <30.675179, 37.398746, 33.007755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147381, 37.018047, 33.495079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489561, 36.846642, 33.378750>,  <30.694870, 36.743797, 33.308952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489561, 36.846642, 33.378750>,  <30.147381, 37.018047, 33.495079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489561, 36.846642, 33.378750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348375, 0.060643, 0.935392,
		-0.383195, -0.901496, 0.201162,
		0.855451, -0.428517, -0.290821,
		30.746197, 36.718086, 33.291504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448816, 36.403152, 33.951324>,  <30.147381, 37.018047, 33.495079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448816, 36.403152, 33.951324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781229, 36.507748, 33.754951>,  <30.980677, 36.570503, 33.637127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781229, 36.507748, 33.754951>,  <30.448816, 36.403152, 33.951324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781229, 36.507748, 33.754951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525592, -0.080287, 0.846940,
		0.182048, -0.961862, -0.204156,
		0.831031, 0.261486, -0.490931,
		31.030539, 36.586193, 33.607674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892590, 35.911118, 33.995998>,  <30.448816, 36.403152, 33.951324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892590, 35.911118, 33.995998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087442, 36.259502, 33.970325>,  <31.204355, 36.468533, 33.954922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087442, 36.259502, 33.970325>,  <30.892590, 35.911118, 33.995998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087442, 36.259502, 33.970325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368684, -0.138467, 0.919184,
		0.791690, -0.471430, -0.388563,
		0.487134, 0.870965, -0.064186,
		31.233583, 36.520790, 33.951069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556578, 35.782310, 34.259926>,  <30.892590, 35.911118, 33.995998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556578, 35.782310, 34.259926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453278, 36.166489, 34.301605>,  <31.391298, 36.396996, 34.326614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453278, 36.166489, 34.301605>,  <31.556578, 35.782310, 34.259926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453278, 36.166489, 34.301605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319001, -0.017029, 0.947601,
		0.911891, 0.277956, -0.301985,
		-0.258249, 0.960443, 0.104197,
		31.375803, 36.454620, 34.332863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231606, 36.161415, 34.481773>,  <31.556578, 35.782310, 34.259926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231606, 36.161415, 34.481773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892458, 36.354313, 34.569912>,  <31.688969, 36.470051, 34.622795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892458, 36.354313, 34.569912>,  <32.231606, 36.161415, 34.481773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892458, 36.354313, 34.569912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297815, 0.089330, 0.950435,
		0.438660, 0.871469, -0.219360,
		-0.847870, 0.482247, 0.220351,
		31.638098, 36.498985, 34.636017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445576, 36.713951, 34.902363>,  <32.231606, 36.161415, 34.481773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445576, 36.713951, 34.902363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086994, 36.545048, 34.956120>,  <31.871845, 36.443707, 34.988373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086994, 36.545048, 34.956120>,  <32.445576, 36.713951, 34.902363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086994, 36.545048, 34.956120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233774, -0.193007, 0.952942,
		-0.376448, 0.885690, 0.271736,
		-0.896458, -0.422258, 0.134394,
		31.818056, 36.418369, 34.996437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081051, 37.090752, 35.486649>,  <32.445576, 36.713951, 34.902363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081051, 37.090752, 35.486649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009182, 36.697517, 35.472427>,  <31.966061, 36.461578, 35.463894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009182, 36.697517, 35.472427>,  <32.081051, 37.090752, 35.486649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009182, 36.697517, 35.472427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435203, -0.111850, 0.893358,
		-0.882222, 0.145039, 0.447937,
		-0.179674, -0.983083, -0.035556,
		31.955280, 36.402592, 35.461761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309372, 37.709389, 35.829151>,  <32.081051, 37.090752, 35.486649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309372, 37.709389, 35.829151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118134, 37.619717, 35.489464>,  <32.003391, 37.565914, 35.285652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118134, 37.619717, 35.489464>,  <32.309372, 37.709389, 35.829151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118134, 37.619717, 35.489464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867164, -0.033057, 0.496925,
		-0.139473, 0.973987, -0.178596,
		-0.478094, -0.224180, -0.849217,
		31.974705, 37.552464, 35.234699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938858, 38.308846, 35.606281>,  <32.309372, 37.709389, 35.829151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938858, 38.308846, 35.606281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805925, 37.935490, 35.552109>,  <31.726166, 37.711475, 35.519604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805925, 37.935490, 35.552109>,  <31.938858, 38.308846, 35.606281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805925, 37.935490, 35.552109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705518, 0.150720, 0.692479,
		-0.625940, 0.325682, -0.708612,
		-0.332330, -0.933389, -0.135433,
		31.706226, 37.655472, 35.511478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341791, 38.346661, 35.191978>,  <31.938858, 38.308846, 35.606281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341791, 38.346661, 35.191978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400059, 38.057121, 35.461739>,  <31.435019, 37.883396, 35.623596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400059, 38.057121, 35.461739>,  <31.341791, 38.346661, 35.191978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400059, 38.057121, 35.461739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707237, 0.400484, 0.582605,
		-0.691808, -0.561830, -0.453597,
		0.145667, -0.723851, 0.674404,
		31.443758, 37.839966, 35.664059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581543, 38.278835, 34.944431>,  <31.341791, 38.346661, 35.191978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581543, 38.278835, 34.944431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351952, 38.074554, 35.200470>,  <30.214197, 37.951984, 35.354095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351952, 38.074554, 35.200470>,  <30.581543, 38.278835, 34.944431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351952, 38.074554, 35.200470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642611, 0.203577, 0.738652,
		-0.507544, 0.835306, 0.211338,
		-0.573977, -0.510706, 0.640101,
		30.179758, 37.921341, 35.392502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485376, 38.742340, 35.499516>,  <30.581543, 38.278835, 34.944431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485376, 38.742340, 35.499516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478548, 38.380863, 35.670654>,  <30.474451, 38.163979, 35.773338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478548, 38.380863, 35.670654>,  <30.485376, 38.742340, 35.499516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478548, 38.380863, 35.670654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412293, 0.383476, 0.826414,
		-0.910891, 0.190506, 0.366039,
		-0.017070, -0.903689, 0.427850,
		30.473427, 38.109756, 35.799007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600794, 39.105999, 36.144836>,  <30.485376, 38.742340, 35.499516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600794, 39.105999, 36.144836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870018, 38.917046, 35.917206>,  <31.031551, 38.803673, 35.780628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870018, 38.917046, 35.917206>,  <30.600794, 39.105999, 36.144836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870018, 38.917046, 35.917206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724455, -0.266232, -0.635834,
		0.148850, 0.840224, -0.521409,
		0.673059, -0.472381, -0.569076,
		31.071936, 38.775330, 35.746483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931875, 38.648613, 36.175335>,  <30.600794, 39.105999, 36.144836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931875, 38.648613, 36.175335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715096, 38.471489, 36.461052>,  <29.585028, 38.365215, 36.632481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715096, 38.471489, 36.461052>,  <29.931875, 38.648613, 36.175335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715096, 38.471489, 36.461052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436869, -0.874508, -0.210668,
		0.717939, 0.197881, 0.667388,
		-0.541949, -0.442808, 0.714291,
		29.552511, 38.338646, 36.675339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313976, 38.460979, 36.767334>,  <29.931875, 38.648613, 36.175335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313976, 38.460979, 36.767334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002897, 38.224277, 36.682472>,  <29.816250, 38.082256, 36.631557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002897, 38.224277, 36.682472>,  <30.313976, 38.460979, 36.767334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002897, 38.224277, 36.682472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627030, -0.754326, -0.194487,
		-0.044943, -0.284278, 0.957688,
		-0.777698, -0.591758, -0.212152,
		29.769588, 38.046749, 36.618828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160900, 37.961792, 37.184189>,  <30.313976, 38.460979, 36.767334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160900, 37.961792, 37.184189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072433, 37.853939, 36.809299>,  <30.019354, 37.789227, 36.584366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072433, 37.853939, 36.809299>,  <30.160900, 37.961792, 37.184189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072433, 37.853939, 36.809299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784803, -0.619706, -0.006915,
		-0.578937, -0.737064, 0.348667,
		-0.221168, -0.269632, -0.937221,
		30.006083, 37.773048, 36.528133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105759, 37.242023, 37.039303>,  <30.160900, 37.961792, 37.184189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105759, 37.242023, 37.039303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219181, 37.296154, 36.659557>,  <30.287235, 37.328632, 36.431709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219181, 37.296154, 36.659557>,  <30.105759, 37.242023, 37.039303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219181, 37.296154, 36.659557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762494, -0.632187, 0.137631,
		-0.581548, -0.762907, -0.282444,
		0.283557, 0.135323, -0.949360,
		30.304249, 37.336750, 36.374748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167727, 36.657154, 36.640476>,  <30.105759, 37.242023, 37.039303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167727, 36.657154, 36.640476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436323, 36.918732, 36.501076>,  <30.597481, 37.075680, 36.417435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436323, 36.918732, 36.501076>,  <30.167727, 36.657154, 36.640476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436323, 36.918732, 36.501076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722556, -0.682145, 0.112207,
		-0.164351, -0.327157, -0.930568,
		0.671492, 0.653947, -0.348501,
		30.637772, 37.114914, 36.396526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637531, 36.245098, 36.300629>,  <30.167727, 36.657154, 36.640476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637531, 36.245098, 36.300629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792953, 36.589657, 36.431488>,  <30.886208, 36.796391, 36.510002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792953, 36.589657, 36.431488>,  <30.637531, 36.245098, 36.300629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792953, 36.589657, 36.431488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814768, -0.487006, 0.314608,
		0.430323, 0.144306, -0.891065,
		0.388555, 0.861395, 0.327146,
		30.909519, 36.848076, 36.529633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325691, 36.267876, 36.063404>,  <30.637531, 36.245098, 36.300629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325691, 36.267876, 36.063404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241386, 36.463646, 36.401882>,  <31.190804, 36.581108, 36.604969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241386, 36.463646, 36.401882>,  <31.325691, 36.267876, 36.063404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241386, 36.463646, 36.401882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765220, -0.456058, 0.454367,
		0.608291, 0.743288, -0.278396,
		-0.210761, 0.489422, 0.846195,
		31.178158, 36.610474, 36.655739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934916, 36.315861, 36.393620>,  <31.325691, 36.267876, 36.063404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934916, 36.315861, 36.393620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739876, 36.407707, 36.730553>,  <31.622852, 36.462814, 36.932713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739876, 36.407707, 36.730553>,  <31.934916, 36.315861, 36.393620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739876, 36.407707, 36.730553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818351, -0.215979, 0.532592,
		0.304221, 0.949014, -0.082600,
		-0.487597, 0.229621, 0.842332,
		31.593597, 36.476593, 36.983253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419262, 36.634892, 36.766758>,  <31.934916, 36.315861, 36.393620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419262, 36.634892, 36.766758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144653, 36.528358, 37.037392>,  <31.979889, 36.464439, 37.199772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144653, 36.528358, 37.037392>,  <32.419262, 36.634892, 36.766758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144653, 36.528358, 37.037392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727096, -0.245174, 0.641265,
		-0.004908, 0.932179, 0.361964,
		-0.686518, -0.266330, 0.676580,
		31.938698, 36.448460, 37.240364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753490, 37.151966, 36.296757>,  <32.419262, 36.634892, 36.766758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753490, 37.151966, 36.296757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045708, 37.107941, 36.027184>,  <33.221039, 37.081524, 35.865440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045708, 37.107941, 36.027184>,  <32.753490, 37.151966, 36.296757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045708, 37.107941, 36.027184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606985, 0.556812, 0.567036,
		0.312846, -0.823315, 0.473582,
		0.730546, -0.110063, -0.673936,
		33.264870, 37.074921, 35.825005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432297, 36.867958, 36.537762>,  <32.753490, 37.151966, 36.296757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432297, 36.867958, 36.537762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571217, 37.115303, 36.255764>,  <33.654568, 37.263710, 36.086567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571217, 37.115303, 36.255764>,  <33.432297, 36.867958, 36.537762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571217, 37.115303, 36.255764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489941, 0.521373, 0.698662,
		0.799589, -0.588049, -0.121889,
		0.347298, 0.618361, -0.704993,
		33.675407, 37.300812, 36.044266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128876, 36.905968, 36.525440>,  <33.432297, 36.867958, 36.537762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128876, 36.905968, 36.525440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023834, 37.264160, 36.381691>,  <33.960808, 37.479076, 36.295441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023834, 37.264160, 36.381691>,  <34.128876, 36.905968, 36.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023834, 37.264160, 36.381691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640276, 0.440351, 0.629394,
		0.721862, -0.064815, -0.688995,
		-0.262606, 0.895483, -0.359373,
		33.945053, 37.532806, 36.273880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639168, 37.383141, 36.699322>,  <34.128876, 36.905968, 36.525440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639168, 37.383141, 36.699322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884617, 37.304497, 37.005215>,  <35.031887, 37.257313, 37.188751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884617, 37.304497, 37.005215>,  <34.639168, 37.383141, 36.699322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884617, 37.304497, 37.005215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205593, -0.974881, -0.085666,
		0.762362, -0.104656, -0.638633,
		0.613625, -0.196607, 0.764728,
		35.068703, 37.245514, 37.234634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036854, 36.867805, 36.539829>,  <34.639168, 37.383141, 36.699322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036854, 36.867805, 36.539829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943970, 36.841278, 36.927990>,  <34.888241, 36.825363, 37.160885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943970, 36.841278, 36.927990>,  <35.036854, 36.867805, 36.539829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943970, 36.841278, 36.927990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328914, -0.933546, -0.142503,
		0.915366, -0.352269, 0.194964,
		-0.232208, -0.066316, 0.970403,
		34.874306, 36.821384, 37.219112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286884, 36.211662, 36.806950>,  <35.036854, 36.867805, 36.539829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286884, 36.211662, 36.806950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979862, 36.326000, 37.036438>,  <34.795650, 36.394604, 37.174129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979862, 36.326000, 37.036438>,  <35.286884, 36.211662, 36.806950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979862, 36.326000, 37.036438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287372, -0.953524, 0.090610,
		0.572957, -0.095323, 0.814023,
		-0.767553, 0.285843, 0.573722,
		34.749596, 36.411755, 37.208553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859692, 36.409607, 36.321091>,  <35.286884, 36.211662, 36.806950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859692, 36.409607, 36.321091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257702, 36.384541, 36.352077>,  <36.496506, 36.369499, 36.370670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257702, 36.384541, 36.352077>,  <35.859692, 36.409607, 36.321091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257702, 36.384541, 36.352077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095136, 0.828667, -0.551598,
		-0.029631, 0.556223, 0.830504,
		0.995023, -0.062666, 0.077471,
		36.556210, 36.365742, 36.375320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319927, 36.742329, 36.783855>,  <35.859692, 36.409607, 36.321091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319927, 36.742329, 36.783855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123699, 36.863464, 37.110691>,  <36.005962, 36.936146, 37.306793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123699, 36.863464, 37.110691>,  <36.319927, 36.742329, 36.783855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123699, 36.863464, 37.110691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473254, -0.694742, 0.541630,
		0.731694, 0.652395, 0.197495,
		-0.490566, 0.302842, 0.817088,
		35.976528, 36.954315, 37.355816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794350, 36.824848, 37.393234>,  <36.319927, 36.742329, 36.783855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794350, 36.824848, 37.393234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425381, 36.757862, 37.532429>,  <36.203999, 36.717670, 37.615944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425381, 36.757862, 37.532429>,  <36.794350, 36.824848, 37.393234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425381, 36.757862, 37.532429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332221, -0.803514, 0.493959,
		0.196892, 0.571247, 0.796813,
		-0.922422, -0.167462, 0.347986,
		36.148655, 36.707623, 37.636826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919373, 36.731354, 38.055332>,  <36.794350, 36.824848, 37.393234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919373, 36.731354, 38.055332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568123, 36.567173, 37.957008>,  <36.357372, 36.468662, 37.898014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568123, 36.567173, 37.957008>,  <36.919373, 36.731354, 38.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568123, 36.567173, 37.957008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202687, -0.784563, 0.585986,
		-0.433375, 0.464746, 0.772138,
		-0.878125, -0.410454, -0.245811,
		36.304684, 36.444038, 37.883266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732632, 36.341770, 38.608997>,  <36.919373, 36.731354, 38.055332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732632, 36.341770, 38.608997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506725, 36.196884, 38.312393>,  <36.371181, 36.109955, 38.134430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506725, 36.196884, 38.312393>,  <36.732632, 36.341770, 38.608997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506725, 36.196884, 38.312393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128376, -0.926153, 0.354627,
		-0.815203, 0.105089, 0.569560,
		-0.564767, -0.362211, -0.741512,
		36.337296, 36.088223, 38.089939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213127, 36.691200, 39.120892>,  <36.732632, 36.341770, 38.608997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213127, 36.691200, 39.120892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995628, 36.360954, 39.181149>,  <35.865131, 36.162804, 39.217304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995628, 36.360954, 39.181149>,  <36.213127, 36.691200, 39.120892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995628, 36.360954, 39.181149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634581, -0.521932, -0.569996,
		0.549226, -0.214335, 0.807720,
		-0.543745, -0.825620, 0.150646,
		35.832504, 36.113270, 39.226341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700489, 36.096336, 39.364685>,  <36.213127, 36.691200, 39.120892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700489, 36.096336, 39.364685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352982, 36.003155, 39.189880>,  <36.144478, 35.947247, 39.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352982, 36.003155, 39.189880>,  <36.700489, 36.096336, 39.364685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352982, 36.003155, 39.189880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473094, -0.651247, -0.593347,
		-0.146378, -0.722226, 0.675991,
		-0.868767, -0.232954, -0.437009,
		36.092350, 35.933270, 39.058777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613724, 35.358665, 39.448410>,  <36.700489, 36.096336, 39.364685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613724, 35.358665, 39.448410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432011, 35.511593, 39.126549>,  <36.322983, 35.603348, 38.933434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432011, 35.511593, 39.126549>,  <36.613724, 35.358665, 39.448410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432011, 35.511593, 39.126549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258315, -0.807896, -0.529696,
		-0.852584, -0.448486, 0.268257,
		-0.454285, 0.382315, -0.804649,
		36.295723, 35.626286, 38.885155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337341, 34.746326, 39.166405>,  <36.613724, 35.358665, 39.448410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337341, 34.746326, 39.166405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381176, 35.025043, 38.882866>,  <36.407475, 35.192276, 38.712742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381176, 35.025043, 38.882866>,  <36.337341, 34.746326, 39.166405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381176, 35.025043, 38.882866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299769, -0.703109, -0.644807,
		-0.947697, -0.141830, -0.285927,
		0.109585, 0.696794, -0.708850,
		36.414051, 35.234081, 38.670212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029110, 34.610897, 38.455524>,  <36.337341, 34.746326, 39.166405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029110, 34.610897, 38.455524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317127, 34.867420, 38.349499>,  <36.489937, 35.021336, 38.285885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317127, 34.867420, 38.349499>,  <36.029110, 34.610897, 38.455524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317127, 34.867420, 38.349499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338475, -0.658033, -0.672627,
		-0.605781, 0.394605, -0.690881,
		0.720044, 0.641311, -0.265060,
		36.533142, 35.059814, 38.269981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100983, 34.580799, 37.714695>,  <36.029110, 34.610897, 38.455524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100983, 34.580799, 37.714695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445137, 34.667507, 37.899193>,  <36.651630, 34.719532, 38.009892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445137, 34.667507, 37.899193>,  <36.100983, 34.580799, 37.714695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445137, 34.667507, 37.899193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472809, -0.677308, -0.563654,
		0.190220, 0.703040, -0.685237,
		0.860388, 0.216768, 0.461242,
		36.703255, 34.732536, 38.037567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556358, 34.785484, 37.181305>,  <36.100983, 34.580799, 37.714695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556358, 34.785484, 37.181305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709946, 34.615032, 37.508957>,  <36.802097, 34.512760, 37.705547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709946, 34.615032, 37.508957>,  <36.556358, 34.785484, 37.181305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709946, 34.615032, 37.508957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542283, -0.613947, -0.573584,
		0.747326, 0.664441, -0.004654,
		0.383971, -0.426130, 0.819133,
		36.825138, 34.487194, 37.754696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305878, 34.732403, 37.085907>,  <36.556358, 34.785484, 37.181305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305878, 34.732403, 37.085907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181725, 34.441708, 37.331024>,  <37.107231, 34.267292, 37.478096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181725, 34.441708, 37.331024>,  <37.305878, 34.732403, 37.085907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181725, 34.441708, 37.331024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568748, -0.658493, -0.492862,
		0.761701, 0.195550, 0.617715,
		-0.310382, -0.726737, 0.612793,
		37.088612, 34.223686, 37.514862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929474, 34.351814, 37.299759>,  <37.305878, 34.732403, 37.085907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929474, 34.351814, 37.299759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601162, 34.127934, 37.345467>,  <37.404175, 33.993607, 37.372890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601162, 34.127934, 37.345467>,  <37.929474, 34.351814, 37.299759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601162, 34.127934, 37.345467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293893, -0.585265, -0.755706,
		0.489844, -0.586686, 0.644866,
		-0.820780, -0.559699, 0.114266,
		37.354927, 33.960022, 37.379745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246540, 34.880898, 36.926140>,  <37.929474, 34.351814, 37.299759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246540, 34.880898, 36.926140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598679, 34.730133, 37.041332>,  <38.809959, 34.639675, 37.110447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598679, 34.730133, 37.041332>,  <38.246540, 34.880898, 36.926140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598679, 34.730133, 37.041332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424659, 0.896755, -0.124477,
		-0.211329, 0.231875, 0.949513,
		0.880344, -0.376913, 0.287978,
		38.862782, 34.617058, 37.127724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653217, 35.206020, 37.479977>,  <38.246540, 34.880898, 36.926140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653217, 35.206020, 37.479977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927818, 35.030796, 37.247833>,  <39.092579, 34.925659, 37.108547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927818, 35.030796, 37.247833>,  <38.653217, 35.206020, 37.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927818, 35.030796, 37.247833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540260, 0.841489, 0.003900,
		0.486655, -0.316221, 0.814353,
		0.686503, -0.438064, -0.580357,
		39.133770, 34.899376, 37.073727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317856, 35.352661, 37.762672>,  <38.653217, 35.206020, 37.479977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317856, 35.352661, 37.762672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377319, 35.294586, 37.371403>,  <39.412998, 35.259743, 37.136642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377319, 35.294586, 37.371403>,  <39.317856, 35.352661, 37.762672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377319, 35.294586, 37.371403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600246, 0.799345, -0.027419,
		0.785878, -0.583067, 0.205981,
		0.148663, -0.145187, -0.978172,
		39.421917, 35.251030, 37.077950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078465, 35.202442, 37.609978>,  <39.317856, 35.352661, 37.762672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078465, 35.202442, 37.609978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860886, 35.398071, 37.337234>,  <39.730339, 35.515450, 37.173588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860886, 35.398071, 37.337234>,  <40.078465, 35.202442, 37.609978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860886, 35.398071, 37.337234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620586, 0.781406, 0.065401,
		0.564794, -0.387577, -0.728555,
		-0.543950, 0.489069, -0.681858,
		39.697701, 35.544792, 37.132675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477333, 35.249653, 37.086292>,  <40.078465, 35.202442, 37.609978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477333, 35.249653, 37.086292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204418, 35.541542, 37.104137>,  <40.040668, 35.716675, 37.114845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204418, 35.541542, 37.104137>,  <40.477333, 35.249653, 37.086292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204418, 35.541542, 37.104137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730816, 0.682418, 0.014633,
		-0.019768, 0.042588, -0.998897,
		-0.682288, 0.729721, 0.044614,
		39.999733, 35.760460, 37.117523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491230, 35.923561, 36.876629>,  <40.477333, 35.249653, 37.086292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491230, 35.923561, 36.876629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881622, 35.899918, 36.960503>,  <41.115856, 35.885731, 37.010826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881622, 35.899918, 36.960503>,  <40.491230, 35.923561, 36.876629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881622, 35.899918, 36.960503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123087, -0.644556, -0.754584,
		0.179754, 0.762269, -0.621799,
		0.975981, -0.059104, 0.209687,
		41.174416, 35.882187, 37.023407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835018, 35.905903, 36.245770>,  <40.491230, 35.923561, 36.876629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835018, 35.905903, 36.245770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071472, 35.737865, 36.521183>,  <41.213345, 35.637043, 36.686432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071472, 35.737865, 36.521183>,  <40.835018, 35.905903, 36.245770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071472, 35.737865, 36.521183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170487, -0.769292, -0.615731,
		0.788347, 0.481368, -0.383137,
		0.591137, -0.420089, 0.688536,
		41.248814, 35.611839, 36.727745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322254, 35.773529, 35.861477>,  <40.835018, 35.905903, 36.245770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322254, 35.773529, 35.861477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339310, 35.512142, 36.163780>,  <41.349541, 35.355312, 36.345161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339310, 35.512142, 36.163780>,  <41.322254, 35.773529, 35.861477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339310, 35.512142, 36.163780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145122, -0.744371, -0.651807,
		0.988495, 0.137466, 0.063096,
		0.042635, -0.653464, 0.755756,
		41.352100, 35.316101, 36.390507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962193, 35.410690, 35.950790>,  <41.322254, 35.773529, 35.861477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962193, 35.410690, 35.950790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644566, 35.183926, 36.038483>,  <41.453991, 35.047867, 36.091099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644566, 35.183926, 36.038483>,  <41.962193, 35.410690, 35.950790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644566, 35.183926, 36.038483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254897, -0.638018, -0.726609,
		0.551801, -0.521095, 0.651134,
		-0.794068, -0.566915, 0.219233,
		41.406345, 35.013851, 36.104252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232929, 34.917648, 36.372429>,  <41.962193, 35.410690, 35.950790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232929, 34.917648, 36.372429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382404, 34.582039, 36.530613>,  <42.472092, 34.380672, 36.625523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382404, 34.582039, 36.530613>,  <42.232929, 34.917648, 36.372429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382404, 34.582039, 36.530613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635307, -0.079120, -0.768197,
		0.675827, 0.538306, 0.503473,
		0.373690, -0.839027, 0.395461,
		42.494511, 34.330330, 36.649250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935310, 34.953938, 36.563816>,  <42.232929, 34.917648, 36.372429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935310, 34.953938, 36.563816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847706, 34.572487, 36.481232>,  <42.795143, 34.343616, 36.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847706, 34.572487, 36.481232>,  <42.935310, 34.953938, 36.563816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847706, 34.572487, 36.481232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742601, -0.025658, -0.669242,
		0.632911, -0.299891, 0.713785,
		-0.219014, -0.953628, -0.206460,
		42.782001, 34.286400, 36.419292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514931, 34.491119, 36.537609>,  <42.935310, 34.953938, 36.563816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514931, 34.491119, 36.537609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269512, 34.247231, 36.336891>,  <43.122261, 34.100895, 36.216461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269512, 34.247231, 36.336891>,  <43.514931, 34.491119, 36.537609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269512, 34.247231, 36.336891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695765, -0.116874, -0.708697,
		0.373464, -0.783948, 0.495933,
		-0.613543, -0.609726, -0.501796,
		43.085449, 34.064312, 36.186352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878708, 33.767937, 36.381519>,  <43.514931, 34.491119, 36.537609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878708, 33.767937, 36.381519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598560, 33.876331, 36.117382>,  <43.430473, 33.941368, 35.958900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598560, 33.876331, 36.117382>,  <43.878708, 33.767937, 36.381519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598560, 33.876331, 36.117382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670634, -0.066968, -0.738760,
		-0.244415, -0.960251, -0.134830,
		-0.700366, 0.270985, -0.660345,
		43.388451, 33.957626, 35.919277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002934, 33.373005, 35.816090>,  <43.878708, 33.767937, 36.381519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002934, 33.373005, 35.816090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841919, 33.709354, 35.671371>,  <43.745308, 33.911163, 35.584541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841919, 33.709354, 35.671371>,  <44.002934, 33.373005, 35.816090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841919, 33.709354, 35.671371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746443, 0.072737, -0.661463,
		-0.529891, -0.536322, -0.656943,
		-0.402541, 0.840874, -0.361791,
		43.721157, 33.961617, 35.562836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044041, 33.334816, 35.099377>,  <44.002934, 33.373005, 35.816090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044041, 33.334816, 35.099377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032089, 33.715187, 35.222565>,  <44.024918, 33.943409, 35.296478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032089, 33.715187, 35.222565>,  <44.044041, 33.334816, 35.099377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032089, 33.715187, 35.222565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886468, 0.167567, -0.431389,
		-0.461825, 0.260113, -0.847973,
		-0.029882, 0.950927, 0.307968,
		44.023125, 34.000465, 35.314957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962891, 33.859566, 34.532394>,  <44.044041, 33.334816, 35.099377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962891, 33.859566, 34.532394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173046, 33.996914, 34.843796>,  <44.299137, 34.079323, 35.030636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173046, 33.996914, 34.843796>,  <43.962891, 33.859566, 34.532394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173046, 33.996914, 34.843796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767074, 0.204788, -0.607996,
		-0.368195, 0.916602, -0.155797,
		0.525385, 0.343369, 0.778504,
		44.330662, 34.099926, 35.077347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295574, 34.523178, 34.220856>,  <43.962891, 33.859566, 34.532394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295574, 34.523178, 34.220856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468819, 34.317547, 34.517002>,  <44.572765, 34.194168, 34.694691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468819, 34.317547, 34.517002>,  <44.295574, 34.523178, 34.220856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468819, 34.317547, 34.517002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848966, -0.043253, -0.526675,
		0.302776, 0.856650, 0.417704,
		0.433109, -0.514081, 0.740363,
		44.598751, 34.163322, 34.739113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999622, 34.756157, 34.568779>,  <44.295574, 34.523178, 34.220856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999622, 34.756157, 34.568779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963509, 34.358570, 34.593658>,  <44.941841, 34.120018, 34.608585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963509, 34.358570, 34.593658>,  <44.999622, 34.756157, 34.568779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963509, 34.358570, 34.593658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874110, -0.109021, -0.473336,
		0.477264, 0.011635, 0.878683,
		-0.090287, -0.993971, 0.062202,
		44.936424, 34.060379, 34.612320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699913, 34.747631, 34.478359>,  <44.999622, 34.756157, 34.568779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699913, 34.747631, 34.478359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063820, 34.660168, 34.337215>,  <46.282166, 34.607689, 34.252529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063820, 34.660168, 34.337215>,  <45.699913, 34.747631, 34.478359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063820, 34.660168, 34.337215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211839, 0.975560, -0.058365,
		0.356999, -0.021651, 0.933854,
		0.909767, -0.218663, -0.352860,
		46.336750, 34.594570, 34.231358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132385, 35.160210, 34.855164>,  <45.699913, 34.747631, 34.478359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132385, 35.160210, 34.855164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331348, 35.063068, 34.522030>,  <46.450726, 35.004784, 34.322151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331348, 35.063068, 34.522030>,  <46.132385, 35.160210, 34.855164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331348, 35.063068, 34.522030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525953, 0.847880, 0.066881,
		0.689901, -0.471299, 0.549467,
		0.497403, -0.242852, -0.832834,
		46.480568, 34.990211, 34.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.846409, 35.313061, 34.923820>,  <46.132385, 35.160210, 34.855164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.846409, 35.313061, 34.923820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773525, 35.322670, 34.530632>,  <46.729797, 35.328434, 34.294720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773525, 35.322670, 34.530632>,  <46.846409, 35.313061, 34.923820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773525, 35.322670, 34.530632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607729, 0.788635, -0.093380,
		0.772960, -0.614392, -0.158289,
		-0.182204, 0.024018, -0.982967,
		46.718864, 35.329876, 34.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.651684, 35.467072, 35.059303>,  <46.846409, 35.313061, 34.923820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.651684, 35.467072, 35.059303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546509, 35.157833, 34.828415>,  <47.483402, 34.972290, 34.689880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546509, 35.157833, 34.828415>,  <47.651684, 35.467072, 35.059303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.546509, 35.157833, 34.828415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234566, -0.529098, 0.815496,
		-0.935865, 0.349821, -0.042223,
		-0.262937, -0.773098, -0.577220,
		47.467628, 34.925903, 34.655251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.874058, 44.471004, 26.679689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269615, 44.474567, 26.739042>,  <35.506950, 44.476704, 26.774654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269615, 44.474567, 26.739042>,  <34.874058, 44.471004, 26.679689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269615, 44.474567, 26.739042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108457, -0.639416, 0.761173,
		0.101655, -0.768810, -0.631346,
		0.988890, 0.008903, 0.148383,
		35.566280, 44.477238, 26.783558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160580, 43.778366, 26.704887>,  <34.874058, 44.471004, 26.679689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160580, 43.778366, 26.704887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376141, 44.029583, 26.929440>,  <35.505478, 44.180313, 27.064171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376141, 44.029583, 26.929440>,  <35.160580, 43.778366, 26.704887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376141, 44.029583, 26.929440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158079, -0.579190, 0.799719,
		0.827402, -0.519714, -0.212847,
		0.538904, 0.628042, 0.561379,
		35.537811, 44.217995, 27.097853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526142, 43.300495, 27.120228>,  <35.160580, 43.778366, 26.704887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526142, 43.300495, 27.120228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490860, 43.669147, 27.271395>,  <35.469692, 43.890339, 27.362095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490860, 43.669147, 27.271395>,  <35.526142, 43.300495, 27.120228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490860, 43.669147, 27.271395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353819, -0.383641, 0.853013,
		0.931146, -0.058476, 0.359928,
		-0.088203, 0.921629, 0.377915,
		35.464397, 43.945637, 27.384769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995350, 43.287991, 27.783430>,  <35.526142, 43.300495, 27.120228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995350, 43.287991, 27.783430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735218, 43.590450, 27.812582>,  <35.579140, 43.771927, 27.830074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735218, 43.590450, 27.812582>,  <35.995350, 43.287991, 27.783430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735218, 43.590450, 27.812582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276100, -0.324652, 0.904638,
		0.707705, 0.568186, 0.419902,
		-0.650325, 0.756152, 0.072882,
		35.540119, 43.817295, 27.834446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082546, 43.498535, 28.465208>,  <35.995350, 43.287991, 27.783430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082546, 43.498535, 28.465208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726696, 43.646397, 28.357931>,  <35.513187, 43.735115, 28.293566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726696, 43.646397, 28.357931>,  <36.082546, 43.498535, 28.465208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726696, 43.646397, 28.357931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375587, -0.258094, 0.890125,
		0.259820, 0.892605, 0.368443,
		-0.889623, 0.369654, -0.268192,
		35.459808, 43.757294, 28.277473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934284, 43.942341, 28.997379>,  <36.082546, 43.498535, 28.465208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934284, 43.942341, 28.997379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584190, 43.874226, 28.816286>,  <35.374134, 43.833355, 28.707630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584190, 43.874226, 28.816286>,  <35.934284, 43.942341, 28.997379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584190, 43.874226, 28.816286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391143, -0.301460, 0.869557,
		-0.284557, 0.938149, 0.197240,
		-0.875234, -0.170289, -0.452733,
		35.321621, 43.823139, 28.680466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490894, 44.246246, 29.389879>,  <35.934284, 43.942341, 28.997379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490894, 44.246246, 29.389879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.253979, 43.995605, 29.187273>,  <35.111828, 43.845219, 29.065710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.253979, 43.995605, 29.187273>,  <35.490894, 44.246246, 29.389879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253979, 43.995605, 29.187273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378785, -0.338299, 0.861438,
		-0.711135, 0.702082, -0.036977,
		-0.592291, -0.626605, -0.506515,
		35.076290, 43.807625, 29.035318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700680, 44.366615, 29.673857>,  <35.490894, 44.246246, 29.389879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700680, 44.366615, 29.673857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706375, 44.006184, 29.500490>,  <34.709793, 43.789925, 29.396469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706375, 44.006184, 29.500490>,  <34.700680, 44.366615, 29.673857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706375, 44.006184, 29.500490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495888, -0.382763, 0.779479,
		-0.868270, 0.203828, -0.452285,
		0.014239, -0.901081, -0.433417,
		34.710648, 43.735859, 29.370464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036964, 44.089466, 29.755838>,  <34.700680, 44.366615, 29.673857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036964, 44.089466, 29.755838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250225, 43.757057, 29.692396>,  <34.378181, 43.557613, 29.654331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250225, 43.757057, 29.692396>,  <34.036964, 44.089466, 29.755838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250225, 43.757057, 29.692396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589038, -0.499188, 0.635489,
		-0.607280, -0.245384, -0.755644,
		0.533147, -0.831023, -0.158606,
		34.410168, 43.507751, 29.644815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478760, 43.598160, 29.819695>,  <34.036964, 44.089466, 29.755838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478760, 43.598160, 29.819695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813908, 43.379910, 29.813095>,  <34.014996, 43.248959, 29.809135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813908, 43.379910, 29.813095>,  <33.478760, 43.598160, 29.819695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813908, 43.379910, 29.813095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368283, -0.587333, 0.720699,
		-0.402920, -0.597775, -0.693052,
		0.837868, -0.545624, -0.016498,
		34.065269, 43.216221, 29.808146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305115, 42.959953, 29.739508>,  <33.478760, 43.598160, 29.819695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305115, 42.959953, 29.739508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.652267, 42.920715, 29.934305>,  <33.860558, 42.897175, 30.051184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.652267, 42.920715, 29.934305>,  <33.305115, 42.959953, 29.739508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652267, 42.920715, 29.934305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410883, -0.692726, 0.592710,
		0.279214, -0.714499, -0.641507,
		0.867879, -0.098091, 0.486995,
		33.912632, 42.891289, 30.080404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436035, 42.260387, 29.817982>,  <33.305115, 42.959953, 29.739508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436035, 42.260387, 29.817982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.685520, 42.415161, 30.089649>,  <33.835209, 42.508026, 30.252649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.685520, 42.415161, 30.089649>,  <33.436035, 42.260387, 29.817982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685520, 42.415161, 30.089649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275965, -0.703928, 0.654469,
		0.731322, -0.595624, -0.332265,
		0.623708, 0.386934, 0.679169,
		33.872631, 42.531242, 30.293400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769665, 41.667225, 30.137272>,  <33.436035, 42.260387, 29.817982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769665, 41.667225, 30.137272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.781948, 41.974556, 30.393002>,  <33.789318, 42.158955, 30.546438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.781948, 41.974556, 30.393002>,  <33.769665, 41.667225, 30.137272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781948, 41.974556, 30.393002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451872, -0.559855, 0.694532,
		0.891554, -0.310222, 0.329991,
		0.030712, 0.768326, 0.639322,
		33.791161, 42.205055, 30.584799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011799, 41.370689, 30.729843>,  <33.769665, 41.667225, 30.137272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011799, 41.370689, 30.729843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.860359, 41.715134, 30.865580>,  <33.769493, 41.921799, 30.947021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.860359, 41.715134, 30.865580>,  <34.011799, 41.370689, 30.729843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860359, 41.715134, 30.865580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366638, -0.476171, 0.799273,
		0.849845, 0.178193, 0.495995,
		-0.378604, 0.861109, 0.339339,
		33.746777, 41.973465, 30.967381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016117, 41.271141, 31.483679>,  <34.011799, 41.370689, 30.729843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016117, 41.271141, 31.483679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.767883, 41.574009, 31.402128>,  <33.618942, 41.755730, 31.353197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.767883, 41.574009, 31.402128>,  <34.016117, 41.271141, 31.483679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767883, 41.574009, 31.402128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533985, -0.217679, 0.816992,
		0.574221, 0.615882, 0.539406,
		-0.620588, 0.757169, -0.203876,
		33.581707, 41.801159, 31.340965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005939, 41.525654, 32.117313>,  <34.016117, 41.271141, 31.483679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005939, 41.525654, 32.117313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.674561, 41.654915, 31.934340>,  <33.475735, 41.732471, 31.824554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.674561, 41.654915, 31.934340>,  <34.005939, 41.525654, 32.117313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674561, 41.654915, 31.934340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540580, -0.247787, 0.803974,
		0.146463, 0.913330, 0.379970,
		-0.828446, 0.323157, -0.457436,
		33.426025, 41.751862, 31.797110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630459, 41.985554, 32.619995>,  <34.005939, 41.525654, 32.117313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630459, 41.985554, 32.619995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378853, 41.869331, 32.331573>,  <33.227890, 41.799599, 32.158520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378853, 41.869331, 32.331573>,  <33.630459, 41.985554, 32.619995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378853, 41.869331, 32.331573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618848, -0.374210, 0.690647,
		-0.470497, 0.880649, 0.055574,
		-0.629015, -0.290556, -0.721053,
		33.190147, 41.782166, 32.115257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007980, 42.259819, 32.739536>,  <33.630459, 41.985554, 32.619995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007980, 42.259819, 32.739536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.904045, 41.959885, 32.496151>,  <32.841682, 41.779922, 32.350121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.904045, 41.959885, 32.496151>,  <33.007980, 42.259819, 32.739536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904045, 41.959885, 32.496151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855241, -0.113879, 0.505563,
		-0.448380, 0.651750, -0.611700,
		-0.259841, -0.749835, -0.608465,
		32.826092, 41.734936, 32.313610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229931, 42.311031, 32.665482>,  <33.007980, 42.259819, 32.739536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229931, 42.311031, 32.665482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.336575, 41.932789, 32.590912>,  <32.400562, 41.705845, 32.546169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.336575, 41.932789, 32.590912>,  <32.229931, 42.311031, 32.665482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336575, 41.932789, 32.590912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815008, -0.324444, 0.480103,
		-0.514471, 0.023938, -0.857173,
		0.266612, -0.945602, -0.186426,
		32.416557, 41.649109, 32.534985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750240, 41.995773, 32.396107>,  <32.229931, 42.311031, 32.665482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750240, 41.995773, 32.396107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.938828, 41.649479, 32.463303>,  <32.051979, 41.441704, 32.503620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.938828, 41.649479, 32.463303>,  <31.750240, 41.995773, 32.396107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938828, 41.649479, 32.463303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880063, -0.449653, 0.152650,
		-0.056617, -0.219811, -0.973898,
		0.471470, -0.865734, 0.167989,
		32.080269, 41.389759, 32.513699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219645, 41.487183, 32.158134>,  <31.750240, 41.995773, 32.396107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219645, 41.487183, 32.158134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.474602, 41.289513, 32.394615>,  <31.627577, 41.170910, 32.536503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.474602, 41.289513, 32.394615>,  <31.219645, 41.487183, 32.158134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474602, 41.289513, 32.394615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763488, -0.508596, 0.398016,
		0.103997, -0.705072, -0.701469,
		0.637394, -0.494170, 0.591206,
		31.665819, 41.141262, 32.571976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037376, 40.871361, 31.993429>,  <31.219645, 41.487183, 32.158134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037376, 40.871361, 31.993429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.209448, 40.861263, 32.354385>,  <31.312691, 40.855206, 32.570961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.209448, 40.861263, 32.354385>,  <31.037376, 40.871361, 31.993429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209448, 40.861263, 32.354385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599138, -0.755702, 0.264476,
		0.675264, -0.654429, -0.340208,
		0.430176, -0.025240, 0.902392,
		31.338501, 40.853691, 32.625103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926092, 40.141682, 32.028782>,  <31.037376, 40.871361, 31.993429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926092, 40.141682, 32.028782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.630764, 39.933002, 31.857803>,  <30.453568, 39.807793, 31.755215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.630764, 39.933002, 31.857803>,  <30.926092, 40.141682, 32.028782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630764, 39.933002, 31.857803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428557, 0.126491, -0.894616,
		0.520790, -0.843699, 0.130188,
		-0.738319, -0.521701, -0.427449,
		30.409267, 39.776493, 31.729568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230324, 39.888348, 31.405321>,  <30.926092, 40.141682, 32.028782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230324, 39.888348, 31.405321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836636, 39.881340, 31.334894>,  <30.600422, 39.877136, 31.292639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836636, 39.881340, 31.334894>,  <31.230324, 39.888348, 31.405321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836636, 39.881340, 31.334894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159456, 0.343439, -0.925539,
		0.076683, -0.939012, -0.335227,
		-0.984223, -0.017519, -0.176067,
		30.541368, 39.876083, 31.282074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208490, 39.539654, 30.796110>,  <31.230324, 39.888348, 31.405321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208490, 39.539654, 30.796110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.859236, 39.733841, 30.813820>,  <30.649683, 39.850353, 30.824446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.859236, 39.733841, 30.813820>,  <31.208490, 39.539654, 30.796110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859236, 39.733841, 30.813820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046506, 0.173360, -0.983760,
		-0.485256, -0.856896, -0.173943,
		-0.873135, 0.485465, 0.044273,
		30.597296, 39.879482, 30.827103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927567, 39.241848, 30.200478>,  <31.208490, 39.539654, 30.796110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927567, 39.241848, 30.200478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.762608, 39.592060, 30.301174>,  <30.663631, 39.802189, 30.361591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.762608, 39.592060, 30.301174>,  <30.927567, 39.241848, 30.200478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762608, 39.592060, 30.301174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128113, 0.329324, -0.935486,
		-0.901951, -0.353541, -0.247979,
		-0.412398, 0.875531, 0.251741,
		30.638887, 39.854721, 30.376696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628641, 39.536964, 29.636244>,  <30.927567, 39.241848, 30.200478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628641, 39.536964, 29.636244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.641899, 39.858585, 29.873699>,  <30.649853, 40.051556, 30.016172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.641899, 39.858585, 29.873699>,  <30.628641, 39.536964, 29.636244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641899, 39.858585, 29.873699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051201, 0.591819, -0.804443,
		-0.998138, 0.057057, -0.021554,
		0.033143, 0.804049, 0.593639,
		30.651842, 40.099800, 30.051790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024952, 39.972115, 29.524517>,  <30.628641, 39.536964, 29.636244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024952, 39.972115, 29.524517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.318634, 40.209946, 29.655617>,  <30.494843, 40.352646, 29.734276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.318634, 40.209946, 29.655617>,  <30.024952, 39.972115, 29.524517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318634, 40.209946, 29.655617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019354, 0.500875, -0.865303,
		-0.678653, 0.628966, 0.379252,
		0.734204, 0.594581, 0.327747,
		30.538895, 40.388321, 29.753941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798288, 40.689865, 29.544308>,  <30.024952, 39.972115, 29.524517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798288, 40.689865, 29.544308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.196764, 40.706490, 29.513647>,  <30.435850, 40.716465, 29.495251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.196764, 40.706490, 29.513647>,  <29.798288, 40.689865, 29.544308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196764, 40.706490, 29.513647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087025, 0.419090, -0.903764,
		-0.005439, 0.906993, 0.421111,
		0.996191, 0.041563, -0.076651,
		30.495621, 40.718960, 29.490652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954868, 41.274143, 29.128849>,  <29.798288, 40.689865, 29.544308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954868, 41.274143, 29.128849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320509, 41.113377, 29.150305>,  <30.539894, 41.016918, 29.163177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320509, 41.113377, 29.150305>,  <29.954868, 41.274143, 29.128849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320509, 41.113377, 29.150305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275557, 0.518705, -0.809329,
		0.297460, 0.754591, 0.584901,
		0.914104, -0.401917, 0.053639,
		30.594740, 40.992802, 29.166397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399469, 41.793331, 29.132072>,  <29.954868, 41.274143, 29.128849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399469, 41.793331, 29.132072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.615015, 41.481319, 29.004835>,  <30.744343, 41.294113, 28.928493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.615015, 41.481319, 29.004835>,  <30.399469, 41.793331, 29.132072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615015, 41.481319, 29.004835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297519, 0.529500, -0.794426,
		0.788103, 0.333450, 0.517402,
		0.538865, -0.780026, -0.318093,
		30.776674, 41.247311, 28.909407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101015, 41.953182, 29.188339>,  <30.399469, 41.793331, 29.132072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101015, 41.953182, 29.188339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.071154, 41.674870, 28.902594>,  <31.053236, 41.507881, 28.731146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.071154, 41.674870, 28.902594>,  <31.101015, 41.953182, 29.188339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071154, 41.674870, 28.902594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642238, 0.514466, -0.568203,
		0.762861, -0.501211, 0.408450,
		-0.074655, -0.695782, -0.714363,
		31.048758, 41.466133, 28.688284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609222, 42.121635, 28.786499>,  <31.101015, 41.953182, 29.188339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609222, 42.121635, 28.786499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.432714, 41.860386, 28.540340>,  <31.326809, 41.703636, 28.392645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.432714, 41.860386, 28.540340>,  <31.609222, 42.121635, 28.786499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432714, 41.860386, 28.540340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587790, 0.307820, -0.748164,
		0.678072, -0.691868, 0.248065,
		-0.441271, -0.653119, -0.615398,
		31.300333, 41.664452, 28.355721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194126, 41.779224, 28.405926>,  <31.609222, 42.121635, 28.786499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194126, 41.779224, 28.405926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.863504, 41.756329, 28.181952>,  <31.665131, 41.742592, 28.047567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.863504, 41.756329, 28.181952>,  <32.194126, 41.779224, 28.405926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863504, 41.756329, 28.181952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493015, 0.406321, -0.769311,
		0.271547, -0.911936, -0.307628,
		-0.826558, -0.057239, -0.559934,
		31.615538, 41.739159, 28.013971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416206, 41.538483, 27.785839>,  <32.194126, 41.779224, 28.405926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416206, 41.538483, 27.785839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.072075, 41.732349, 27.722670>,  <31.865597, 41.848667, 27.684767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.072075, 41.732349, 27.722670>,  <32.416206, 41.538483, 27.785839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072075, 41.732349, 27.722670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413238, 0.481740, -0.772762,
		-0.298449, -0.730088, -0.614735,
		-0.860327, 0.484662, -0.157925,
		31.813976, 41.877747, 27.675291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264668, 41.382397, 27.106453>,  <32.416206, 41.538483, 27.785839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264668, 41.382397, 27.106453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.085629, 41.724991, 27.209284>,  <31.978205, 41.930550, 27.270983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.085629, 41.724991, 27.209284>,  <32.264668, 41.382397, 27.106453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085629, 41.724991, 27.209284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499007, 0.477784, -0.722990,
		-0.742058, -0.195325, -0.641247,
		-0.447596, 0.856487, 0.257076,
		31.951349, 41.981937, 27.286406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074959, 41.714283, 26.501865>,  <32.264668, 41.382397, 27.106453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074959, 41.714283, 26.501865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042603, 42.003513, 26.776270>,  <32.023190, 42.177052, 26.940912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042603, 42.003513, 26.776270>,  <32.074959, 41.714283, 26.501865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042603, 42.003513, 26.776270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320380, 0.670606, -0.669062,
		-0.943829, 0.165661, -0.285909,
		-0.080895, 0.723080, 0.686012,
		32.018333, 42.220436, 26.982073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671160, 42.221413, 26.205372>,  <32.074959, 41.714283, 26.501865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671160, 42.221413, 26.205372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.894798, 42.389622, 26.491190>,  <32.028980, 42.490547, 26.662682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.894798, 42.389622, 26.491190>,  <31.671160, 42.221413, 26.205372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894798, 42.389622, 26.491190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348883, 0.662488, -0.662866,
		-0.752126, 0.619898, 0.223682,
		0.559095, 0.420519, 0.714546,
		32.062527, 42.515778, 26.705553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615492, 42.904343, 25.986416>,  <31.671160, 42.221413, 26.205372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615492, 42.904343, 25.986416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929529, 42.888454, 26.233656>,  <32.117950, 42.878922, 26.382000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929529, 42.888454, 26.233656>,  <31.615492, 42.904343, 25.986416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929529, 42.888454, 26.233656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462959, 0.700573, -0.543016,
		-0.411455, 0.712475, 0.568405,
		0.785094, -0.039722, 0.618101,
		32.165058, 42.876537, 26.419086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910885, 43.630035, 26.058004>,  <31.615492, 42.904343, 25.986416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910885, 43.630035, 26.058004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.216003, 43.402542, 26.181089>,  <32.399075, 43.266045, 26.254940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.216003, 43.402542, 26.181089>,  <31.910885, 43.630035, 26.058004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216003, 43.402542, 26.181089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645160, 0.637194, -0.421607,
		0.043710, 0.520123, 0.852972,
		0.762796, -0.568732, 0.307711,
		32.444843, 43.231922, 26.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.605122, 44.166893, 26.414625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788429, 43.816032, 26.357224>,  <32.898415, 43.605515, 26.322783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788429, 43.816032, 26.357224>,  <32.605122, 44.166893, 26.414625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788429, 43.816032, 26.357224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750001, 0.468267, -0.467145,
		0.476954, 0.106453, 0.872458,
		0.458272, -0.877151, -0.143502,
		32.925911, 43.552887, 26.314173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316196, 44.263195, 26.527256>,  <32.605122, 44.166893, 26.414625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316196, 44.263195, 26.527256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324821, 43.922375, 26.318050>,  <33.329998, 43.717884, 26.192528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324821, 43.922375, 26.318050>,  <33.316196, 44.263195, 26.527256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324821, 43.922375, 26.318050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805074, 0.324977, -0.496232,
		0.592782, -0.410363, 0.692973,
		0.021565, -0.852052, -0.523013,
		33.331291, 43.666759, 26.161146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049591, 44.042328, 26.475382>,  <33.316196, 44.263195, 26.527256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049591, 44.042328, 26.475382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.838982, 43.872734, 26.180626>,  <33.712616, 43.770977, 26.003773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.838982, 43.872734, 26.180626>,  <34.049591, 44.042328, 26.475382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838982, 43.872734, 26.180626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714260, 0.249488, -0.653902,
		0.461093, -0.870626, 0.171477,
		-0.526523, -0.423989, -0.736890,
		33.681026, 43.745537, 25.959558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516960, 43.540134, 26.138041>,  <34.049591, 44.042328, 26.475382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516960, 43.540134, 26.138041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224880, 43.676949, 25.901459>,  <34.049633, 43.759037, 25.759510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224880, 43.676949, 25.901459>,  <34.516960, 43.540134, 26.138041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224880, 43.676949, 25.901459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674295, 0.221192, -0.704557,
		-0.110160, -0.913282, -0.392148,
		-0.730199, 0.342038, -0.591456,
		34.005821, 43.779560, 25.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699379, 43.286476, 25.501379>,  <34.516960, 43.540134, 26.138041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699379, 43.286476, 25.501379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430996, 43.570568, 25.416166>,  <34.269966, 43.741024, 25.365038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430996, 43.570568, 25.416166>,  <34.699379, 43.286476, 25.501379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430996, 43.570568, 25.416166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490659, 0.209861, -0.845702,
		-0.555940, -0.671956, -0.489291,
		-0.670958, 0.710234, -0.213031,
		34.229710, 43.783638, 25.352257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600960, 43.255367, 24.770100>,  <34.699379, 43.286476, 25.501379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600960, 43.255367, 24.770100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470917, 43.623291, 24.857962>,  <34.392891, 43.844048, 24.910679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470917, 43.623291, 24.857962>,  <34.600960, 43.255367, 24.770100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470917, 43.623291, 24.857962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286499, 0.317157, -0.904063,
		-0.901233, -0.230990, -0.366637,
		-0.325111, 0.919813, 0.219654,
		34.373383, 43.899235, 24.923859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367554, 43.477367, 24.166582>,  <34.600960, 43.255367, 24.770100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367554, 43.477367, 24.166582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399830, 43.821983, 24.367079>,  <34.419197, 44.028751, 24.487377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399830, 43.821983, 24.367079>,  <34.367554, 43.477367, 24.166582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399830, 43.821983, 24.367079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235005, 0.472260, -0.849555,
		-0.968639, 0.186344, -0.164359,
		0.080689, 0.861537, 0.501241,
		34.424038, 44.080444, 24.517450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035130, 44.009991, 23.754408>,  <34.367554, 43.477367, 24.166582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035130, 44.009991, 23.754408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280144, 44.195301, 24.010588>,  <34.427151, 44.306488, 24.164295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280144, 44.195301, 24.010588>,  <34.035130, 44.009991, 23.754408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280144, 44.195301, 24.010588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306950, 0.607244, -0.732828,
		-0.728414, 0.645466, 0.229753,
		0.612531, 0.463280, 0.640451,
		34.463902, 44.334286, 24.202723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915073, 44.629066, 23.599213>,  <34.035130, 44.009991, 23.754408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915073, 44.629066, 23.599213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276646, 44.596218, 23.767099>,  <34.493591, 44.576511, 23.867830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276646, 44.596218, 23.767099>,  <33.915073, 44.629066, 23.599213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276646, 44.596218, 23.767099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400841, 0.504810, -0.764521,
		-0.149096, 0.859316, 0.489231,
		0.903934, -0.082117, 0.419714,
		34.547825, 44.571583, 23.893013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217636, 45.150551, 23.280064>,  <33.915073, 44.629066, 23.599213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217636, 45.150551, 23.280064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532642, 45.006763, 23.480301>,  <34.721645, 44.920490, 23.600443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532642, 45.006763, 23.480301>,  <34.217636, 45.150551, 23.280064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532642, 45.006763, 23.480301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615939, 0.486472, -0.619649,
		-0.020778, 0.796320, 0.604518,
		0.787520, -0.359471, 0.500592,
		34.768898, 44.898922, 23.630478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636623, 45.702805, 23.361874>,  <34.217636, 45.150551, 23.280064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636623, 45.702805, 23.361874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856777, 45.369450, 23.382055>,  <34.988869, 45.169437, 23.394165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856777, 45.369450, 23.382055>,  <34.636623, 45.702805, 23.361874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856777, 45.369450, 23.382055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681624, 0.413616, -0.603581,
		0.482148, 0.366591, 0.795704,
		0.550384, -0.833386, 0.050454,
		35.021893, 45.119434, 23.397192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377274, 45.946045, 23.347984>,  <34.636623, 45.702805, 23.361874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377274, 45.946045, 23.347984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362370, 45.562954, 23.233885>,  <35.353428, 45.333099, 23.165424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362370, 45.562954, 23.233885>,  <35.377274, 45.946045, 23.347984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362370, 45.562954, 23.233885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645034, 0.194966, -0.738864,
		0.763245, -0.211527, 0.610503,
		-0.037262, -0.957729, -0.285249,
		35.351192, 45.275635, 23.148310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117451, 45.757198, 23.094513>,  <35.377274, 45.946045, 23.347984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117451, 45.757198, 23.094513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860104, 45.490322, 22.944345>,  <35.705696, 45.330196, 22.854246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860104, 45.490322, 22.944345>,  <36.117451, 45.757198, 23.094513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860104, 45.490322, 22.944345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589571, -0.118988, -0.798904,
		0.488351, -0.735322, 0.469909,
		-0.643365, -0.667190, -0.375417,
		35.667095, 45.290165, 22.831720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496773, 45.138470, 22.943029>,  <36.117451, 45.757198, 23.094513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496773, 45.138470, 22.943029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176277, 45.103687, 22.706234>,  <35.983978, 45.082817, 22.564157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176277, 45.103687, 22.706234>,  <36.496773, 45.138470, 22.943029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176277, 45.103687, 22.706234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594686, -0.006551, -0.803932,
		0.066027, -0.996191, 0.056959,
		-0.801243, -0.086954, -0.591988,
		35.935905, 45.077602, 22.528637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652763, 44.720970, 22.465544>,  <36.496773, 45.138470, 22.943029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652763, 44.720970, 22.465544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347198, 44.911980, 22.291922>,  <36.163860, 45.026585, 22.187748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347198, 44.911980, 22.291922>,  <36.652763, 44.720970, 22.465544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347198, 44.911980, 22.291922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407632, -0.164356, -0.898233,
		-0.500268, -0.863109, -0.069100,
		-0.763916, 0.477525, -0.434053,
		36.118023, 45.055237, 22.161705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530247, 44.333721, 21.900394>,  <36.652763, 44.720970, 22.465544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530247, 44.333721, 21.900394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364250, 44.690662, 21.829418>,  <36.264652, 44.904827, 21.786833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364250, 44.690662, 21.829418>,  <36.530247, 44.333721, 21.900394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364250, 44.690662, 21.829418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585475, 0.112635, -0.802828,
		-0.696422, -0.437053, -0.569194,
		-0.414989, 0.892356, -0.177442,
		36.239754, 44.958370, 21.776186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456547, 44.322971, 21.152800>,  <36.530247, 44.333721, 21.900394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456547, 44.322971, 21.152800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407948, 44.701859, 21.271469>,  <36.378788, 44.929192, 21.342670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407948, 44.701859, 21.271469>,  <36.456547, 44.322971, 21.152800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407948, 44.701859, 21.271469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527168, 0.314829, -0.789289,
		-0.841030, 0.060495, -0.537595,
		-0.121502, 0.947219, 0.296671,
		36.371498, 44.986023, 21.360470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211746, 44.674740, 20.573452>,  <36.456547, 44.322971, 21.152800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211746, 44.674740, 20.573452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373158, 44.953609, 20.810472>,  <36.470005, 45.120930, 20.952684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373158, 44.953609, 20.810472>,  <36.211746, 44.674740, 20.573452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373158, 44.953609, 20.810472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622502, 0.265442, -0.736228,
		-0.670566, 0.665951, -0.326879,
		0.403524, 0.697173, 0.592552,
		36.494213, 45.162762, 20.988237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286598, 45.309933, 20.138626>,  <36.211746, 44.674740, 20.573452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286598, 45.309933, 20.138626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551315, 45.327930, 20.437960>,  <36.710148, 45.338730, 20.617559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551315, 45.327930, 20.437960>,  <36.286598, 45.309933, 20.138626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551315, 45.327930, 20.437960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672839, 0.404574, -0.619360,
		-0.330626, 0.913398, 0.237469,
		0.661796, 0.044998, 0.748332,
		36.749855, 45.341431, 20.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561867, 46.011570, 20.009878>,  <36.286598, 45.309933, 20.138626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561867, 46.011570, 20.009878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842754, 45.856091, 20.248476>,  <37.011288, 45.762802, 20.391634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842754, 45.856091, 20.248476>,  <36.561867, 46.011570, 20.009878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842754, 45.856091, 20.248476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702292, 0.515796, -0.490653,
		-0.116951, 0.763457, 0.635182,
		0.702217, -0.388701, 0.596492,
		37.053421, 45.739479, 20.427423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962421, 46.549316, 20.362915>,  <36.561867, 46.011570, 20.009878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962421, 46.549316, 20.362915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177917, 46.212337, 20.360355>,  <37.307213, 46.010151, 20.358820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177917, 46.212337, 20.360355>,  <36.962421, 46.549316, 20.362915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177917, 46.212337, 20.360355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747311, 0.481376, -0.458042,
		0.388959, 0.241980, 0.888907,
		0.538736, -0.842450, -0.006401,
		37.339539, 45.959602, 20.358435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587208, 46.808105, 20.489721>,  <36.962421, 46.549316, 20.362915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587208, 46.808105, 20.489721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669262, 46.441067, 20.353525>,  <37.718494, 46.220844, 20.271809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669262, 46.441067, 20.353525>,  <37.587208, 46.808105, 20.489721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669262, 46.441067, 20.353525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856221, 0.336776, -0.391749,
		0.474137, -0.211173, 0.854752,
		0.205134, -0.917599, -0.340489,
		37.730801, 46.165787, 20.251379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240299, 46.880592, 20.407976>,  <37.587208, 46.808105, 20.489721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240299, 46.880592, 20.407976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179855, 46.554016, 20.185055>,  <38.143589, 46.358070, 20.051302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179855, 46.554016, 20.185055>,  <38.240299, 46.880592, 20.407976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179855, 46.554016, 20.185055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725737, 0.291159, -0.623323,
		0.671171, -0.498648, 0.548525,
		-0.151111, -0.816441, -0.557305,
		38.134521, 46.309082, 20.017864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809570, 46.435753, 20.276953>,  <38.240299, 46.880592, 20.407976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809570, 46.435753, 20.276953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553364, 46.487385, 19.974146>,  <38.399639, 46.518364, 19.792461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553364, 46.487385, 19.974146>,  <38.809570, 46.435753, 20.276953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553364, 46.487385, 19.974146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656066, 0.604332, -0.452062,
		0.399138, -0.786208, -0.471769,
		-0.640520, 0.129076, -0.757017,
		38.361206, 46.526108, 19.747042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534092, 46.641949, 20.078243>,  <38.809570, 46.435753, 20.276953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534092, 46.641949, 20.078243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861057, 46.659073, 20.308027>,  <40.057236, 46.669346, 20.445898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861057, 46.659073, 20.308027>,  <39.534092, 46.641949, 20.078243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861057, 46.659073, 20.308027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481040, -0.497910, 0.721586,
		0.316921, -0.866171, -0.386404,
		0.817411, 0.042810, 0.574462,
		40.106281, 46.671917, 20.480366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601822, 45.968517, 20.385227>,  <39.534092, 46.641949, 20.078243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601822, 45.968517, 20.385227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795898, 46.227734, 20.620047>,  <39.912346, 46.383263, 20.760939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795898, 46.227734, 20.620047>,  <39.601822, 45.968517, 20.385227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795898, 46.227734, 20.620047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498105, -0.346947, 0.794682,
		0.718664, -0.677987, 0.154457,
		0.485195, 0.648045, 0.587047,
		39.941456, 46.422146, 20.796160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742882, 45.588539, 20.932468>,  <39.601822, 45.968517, 20.385227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742882, 45.588539, 20.932468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740681, 45.975243, 21.034723>,  <39.739361, 46.207264, 21.096077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740681, 45.975243, 21.034723>,  <39.742882, 45.588539, 20.932468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740681, 45.975243, 21.034723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595938, -0.208455, 0.775503,
		0.803012, -0.148081, 0.577273,
		-0.005499, 0.966757, 0.255639,
		39.739033, 46.265270, 21.111416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790207, 45.528450, 21.588099>,  <39.742882, 45.588539, 20.932468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790207, 45.528450, 21.588099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698090, 45.915424, 21.546080>,  <39.642818, 46.147610, 21.520868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698090, 45.915424, 21.546080>,  <39.790207, 45.528450, 21.588099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698090, 45.915424, 21.546080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518521, -0.030646, 0.854516,
		0.823469, 0.251260, 0.508693,
		-0.230295, 0.967434, -0.105047,
		39.629002, 46.205654, 21.514566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937454, 45.824665, 22.226807>,  <39.790207, 45.528450, 21.588099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937454, 45.824665, 22.226807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.663979, 46.040180, 22.029922>,  <39.499893, 46.169491, 21.911793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.663979, 46.040180, 22.029922>,  <39.937454, 45.824665, 22.226807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663979, 46.040180, 22.029922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643837, -0.127796, 0.754415,
		0.343569, 0.832690, 0.434267,
		-0.683691, 0.538791, -0.492210,
		39.458870, 46.201817, 21.882259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723095, 46.322948, 22.703856>,  <39.937454, 45.824665, 22.226807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723095, 46.322948, 22.703856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418991, 46.331577, 22.444153>,  <39.236526, 46.336754, 22.288332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418991, 46.331577, 22.444153>,  <39.723095, 46.322948, 22.703856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418991, 46.331577, 22.444153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649342, 0.003718, 0.760488,
		0.018819, 0.999761, 0.011180,
		-0.760264, 0.021571, -0.649256,
		39.190910, 46.338047, 22.249376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247570, 46.881920, 23.048388>,  <39.723095, 46.322948, 22.703856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247570, 46.881920, 23.048388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039673, 46.660229, 22.788328>,  <38.914932, 46.527214, 22.632294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039673, 46.660229, 22.788328>,  <39.247570, 46.881920, 23.048388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039673, 46.660229, 22.788328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660895, -0.221401, 0.717077,
		-0.541370, 0.802378, -0.251215,
		-0.519748, -0.554230, -0.650147,
		38.883747, 46.493961, 22.593285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525150, 47.105679, 23.106672>,  <39.247570, 46.881920, 23.048388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525150, 47.105679, 23.106672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512985, 46.745152, 22.933836>,  <38.505684, 46.528835, 22.830133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512985, 46.745152, 22.933836>,  <38.525150, 47.105679, 23.106672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512985, 46.745152, 22.933836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683830, -0.296523, 0.666671,
		-0.729007, 0.315755, -0.607329,
		-0.030417, -0.901318, -0.432090,
		38.503860, 46.474758, 22.804209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835861, 46.863201, 23.129841>,  <38.525150, 47.105679, 23.106672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835861, 46.863201, 23.129841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042198, 46.523804, 23.082581>,  <38.166000, 46.320164, 23.054224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042198, 46.523804, 23.082581>,  <37.835861, 46.863201, 23.129841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042198, 46.523804, 23.082581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562628, -0.439548, 0.700177,
		-0.646030, -0.294707, -0.704125,
		0.515844, -0.848496, -0.118151,
		38.196953, 46.269257, 23.047136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341957, 46.330181, 23.010492>,  <37.835861, 46.863201, 23.129841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341957, 46.330181, 23.010492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657898, 46.134029, 23.157825>,  <37.847462, 46.016338, 23.246225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657898, 46.134029, 23.157825>,  <37.341957, 46.330181, 23.010492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657898, 46.134029, 23.157825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579963, -0.401898, 0.708605,
		-0.199450, -0.773311, -0.601839,
		0.789850, -0.490376, 0.368333,
		37.894852, 45.986916, 23.268326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188465, 45.613464, 22.960131>,  <37.341957, 46.330181, 23.010492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188465, 45.613464, 22.960131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488167, 45.640789, 23.223631>,  <37.667988, 45.657185, 23.381731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488167, 45.640789, 23.223631>,  <37.188465, 45.613464, 22.960131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488167, 45.640789, 23.223631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482033, -0.625843, 0.613159,
		0.454163, -0.776951, -0.435985,
		0.749253, 0.068315, 0.658751,
		37.712944, 45.661282, 23.421257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156013, 44.978260, 23.287218>,  <37.188465, 45.613464, 22.960131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156013, 44.978260, 23.287218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365543, 45.214649, 23.532610>,  <37.491261, 45.356483, 23.679844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365543, 45.214649, 23.532610>,  <37.156013, 44.978260, 23.287218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365543, 45.214649, 23.532610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475959, -0.394220, 0.786164,
		0.706446, -0.703805, 0.074775,
		0.523828, 0.590972, 0.613478,
		37.522694, 45.391941, 23.716654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380611, 44.581913, 23.728550>,  <37.156013, 44.978260, 23.287218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380611, 44.581913, 23.728550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.366158, 44.943760, 23.898422>,  <37.357487, 45.160870, 24.000345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.366158, 44.943760, 23.898422>,  <37.380611, 44.581913, 23.728550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366158, 44.943760, 23.898422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339457, -0.410802, 0.846175,
		0.939927, -0.113584, 0.321924,
		-0.036135, 0.904622, 0.424681,
		37.355316, 45.215145, 24.025826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184898, 44.379131, 24.290455>,  <37.380611, 44.581913, 23.728550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184898, 44.379131, 24.290455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.174042, 44.770386, 24.372936>,  <37.167526, 45.005138, 24.422426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.174042, 44.770386, 24.372936>,  <37.184898, 44.379131, 24.290455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174042, 44.770386, 24.372936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420609, -0.198308, 0.885303,
		0.906836, -0.062702, 0.416794,
		-0.027143, 0.978132, 0.206206,
		37.165897, 45.063824, 24.434797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648861, 44.476524, 24.953745>,  <37.184898, 44.379131, 24.290455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648861, 44.476524, 24.953745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364799, 44.750305, 24.887762>,  <37.194363, 44.914574, 24.848171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364799, 44.750305, 24.887762>,  <37.648861, 44.476524, 24.953745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364799, 44.750305, 24.887762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210831, 0.016809, 0.977378,
		0.671743, 0.728863, 0.132367,
		-0.710150, 0.684453, -0.164958,
		37.151756, 44.955643, 24.838274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715054, 44.933128, 25.619743>,  <37.648861, 44.476524, 24.953745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715054, 44.933128, 25.619743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364609, 45.009369, 25.442614>,  <37.154343, 45.055115, 25.336336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364609, 45.009369, 25.442614>,  <37.715054, 44.933128, 25.619743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364609, 45.009369, 25.442614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453829, -0.016140, 0.890943,
		0.162666, 0.981535, 0.100641,
		-0.876116, 0.190600, -0.442824,
		37.101772, 45.066547, 25.309767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458275, 45.558411, 26.018545>,  <37.715054, 44.933128, 25.619743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458275, 45.558411, 26.018545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150818, 45.369236, 25.846256>,  <36.966343, 45.255730, 25.742882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150818, 45.369236, 25.846256>,  <37.458275, 45.558411, 26.018545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150818, 45.369236, 25.846256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506759, 0.039283, 0.861192,
		-0.390372, 0.880218, -0.269861,
		-0.768638, -0.472940, -0.430723,
		36.920227, 45.227352, 25.717039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865440, 45.762268, 26.391079>,  <37.458275, 45.558411, 26.018545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865440, 45.762268, 26.391079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729496, 45.427189, 26.220076>,  <36.647930, 45.226143, 26.117474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729496, 45.427189, 26.220076>,  <36.865440, 45.762268, 26.391079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729496, 45.427189, 26.220076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549167, -0.192258, 0.813298,
		-0.763487, 0.511181, -0.394693,
		-0.339860, -0.837694, -0.427510,
		36.627537, 45.175880, 26.091824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141899, 45.906876, 26.419323>,  <36.865440, 45.762268, 26.391079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141899, 45.906876, 26.419323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.211834, 45.514645, 26.383766>,  <36.253796, 45.279305, 26.362432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.211834, 45.514645, 26.383766>,  <36.141899, 45.906876, 26.419323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211834, 45.514645, 26.383766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519568, -0.168574, 0.837635,
		-0.836349, -0.100269, -0.538950,
		0.174842, -0.980576, -0.088890,
		36.264286, 45.220470, 26.357100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463356, 45.651527, 26.352337>,  <36.141899, 45.906876, 26.419323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463356, 45.651527, 26.352337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733261, 45.388798, 26.486969>,  <35.895203, 45.231159, 26.567749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733261, 45.388798, 26.486969>,  <35.463356, 45.651527, 26.352337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733261, 45.388798, 26.486969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498816, -0.069746, 0.863897,
		-0.543950, -0.750815, -0.374694,
		0.674760, -0.656820, 0.336580,
		35.935688, 45.191753, 26.587942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.530205, 41.616741, 27.290188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.861654, 41.654922, 27.510830>,  <31.060524, 41.677834, 27.643215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.861654, 41.654922, 27.510830>,  <30.530205, 41.616741, 27.290188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861654, 41.654922, 27.510830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387192, -0.613923, 0.687881,
		0.404306, -0.783573, -0.471752,
		0.828625, 0.095456, 0.551606,
		31.110241, 41.683559, 27.676311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690590, 41.003189, 27.458410>,  <30.530205, 41.616741, 27.290188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690590, 41.003189, 27.458410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.875463, 41.219315, 27.739677>,  <30.986387, 41.348991, 27.908438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.875463, 41.219315, 27.739677>,  <30.690590, 41.003189, 27.458410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875463, 41.219315, 27.739677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397189, -0.582824, 0.708913,
		0.792861, -0.606937, -0.054763,
		0.462182, 0.540318, 0.703167,
		31.014118, 41.381409, 27.950628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963457, 40.437698, 27.908394>,  <30.690590, 41.003189, 27.458410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963457, 40.437698, 27.908394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.007921, 40.758659, 28.142927>,  <31.034599, 40.951237, 28.283648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.007921, 40.758659, 28.142927>,  <30.963457, 40.437698, 27.908394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007921, 40.758659, 28.142927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222277, -0.554969, 0.801625,
		0.968626, -0.219436, 0.116666,
		0.111159, 0.802407, 0.586333,
		31.041269, 40.999382, 28.318827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335245, 40.172005, 28.441736>,  <30.963457, 40.437698, 27.908394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335245, 40.172005, 28.441736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.179819, 40.510334, 28.587942>,  <31.086563, 40.713333, 28.675665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.179819, 40.510334, 28.587942>,  <31.335245, 40.172005, 28.441736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179819, 40.510334, 28.587942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033802, -0.409503, 0.911682,
		0.920802, 0.341891, 0.187708,
		-0.388563, 0.845824, 0.365514,
		31.063250, 40.764080, 28.697596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740252, 40.386650, 29.004498>,  <31.335245, 40.172005, 28.441736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740252, 40.386650, 29.004498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.387945, 40.564636, 29.069323>,  <31.176561, 40.671429, 29.108217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.387945, 40.564636, 29.069323>,  <31.740252, 40.386650, 29.004498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387945, 40.564636, 29.069323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041668, -0.413716, 0.909452,
		0.471718, 0.794260, 0.382927,
		-0.880764, 0.444961, 0.162062,
		31.123716, 40.698124, 29.117941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806702, 40.708092, 29.709404>,  <31.740252, 40.386650, 29.004498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806702, 40.708092, 29.709404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.415611, 40.695770, 29.626356>,  <31.180958, 40.688377, 29.576527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.415611, 40.695770, 29.626356>,  <31.806702, 40.708092, 29.709404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415611, 40.695770, 29.626356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186028, -0.330900, 0.925148,
		-0.097202, 0.943163, 0.317798,
		-0.977724, -0.030807, -0.207619,
		31.122293, 40.686527, 29.564070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442959, 41.114960, 30.238607>,  <31.806702, 40.708092, 29.709404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442959, 41.114960, 30.238607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.155155, 40.883373, 30.085194>,  <30.982473, 40.744419, 29.993145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.155155, 40.883373, 30.085194>,  <31.442959, 41.114960, 30.238607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155155, 40.883373, 30.085194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194588, -0.362069, 0.911615,
		-0.666664, 0.730547, 0.147852,
		-0.719510, -0.578970, -0.383534,
		30.939302, 40.709682, 29.970133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793797, 41.178947, 30.669779>,  <31.442959, 41.114960, 30.238607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793797, 41.178947, 30.669779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.713074, 40.837490, 30.477707>,  <30.664640, 40.632618, 30.362463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.713074, 40.837490, 30.477707>,  <30.793797, 41.178947, 30.669779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713074, 40.837490, 30.477707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435345, -0.360992, 0.824718,
		-0.877353, 0.375479, -0.298776,
		-0.201809, -0.853639, -0.480180,
		30.652531, 40.581398, 30.333652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063292, 40.953396, 30.872688>,  <30.793797, 41.178947, 30.669779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063292, 40.953396, 30.872688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.227779, 40.634182, 30.696486>,  <30.326471, 40.442654, 30.590765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.227779, 40.634182, 30.696486>,  <30.063292, 40.953396, 30.872688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227779, 40.634182, 30.696486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442232, -0.597234, 0.669135,
		-0.797076, -0.080355, -0.598509,
		0.411219, -0.798031, -0.440505,
		30.351145, 40.394772, 30.564335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466173, 40.473965, 30.799149>,  <30.063292, 40.953396, 30.872688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466173, 40.473965, 30.799149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.820005, 40.290134, 30.830904>,  <30.032305, 40.179836, 30.849958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.820005, 40.290134, 30.830904>,  <29.466173, 40.473965, 30.799149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820005, 40.290134, 30.830904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338220, -0.514922, 0.787695,
		-0.321128, -0.723632, -0.610929,
		0.884582, -0.459579, 0.079391,
		30.085381, 40.152260, 30.854721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270624, 39.887779, 31.043364>,  <29.466173, 40.473965, 30.799149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270624, 39.887779, 31.043364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.664442, 39.850224, 31.102503>,  <29.900732, 39.827690, 31.137985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.664442, 39.850224, 31.102503>,  <29.270624, 39.887779, 31.043364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664442, 39.850224, 31.102503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174132, -0.615087, 0.768991,
		0.018742, -0.782850, -0.621928,
		0.984544, -0.093885, 0.147847,
		29.959805, 39.822060, 31.146856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362614, 39.228390, 31.006973>,  <29.270624, 39.887779, 31.043364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362614, 39.228390, 31.006973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.614782, 39.417606, 31.253160>,  <29.766083, 39.531136, 31.400873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.614782, 39.417606, 31.253160>,  <29.362614, 39.228390, 31.006973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614782, 39.417606, 31.253160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192788, -0.672614, 0.714439,
		0.751933, -0.569052, -0.332833,
		0.630421, 0.473044, 0.615467,
		29.803909, 39.559521, 31.437801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874331, 38.751556, 31.107182>,  <29.362614, 39.228390, 31.006973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874331, 38.751556, 31.107182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.819462, 39.026756, 31.392235>,  <29.786541, 39.191875, 31.563267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.819462, 39.026756, 31.392235>,  <29.874331, 38.751556, 31.107182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819462, 39.026756, 31.392235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232515, -0.721694, 0.651992,
		0.962871, -0.076263, 0.258965,
		-0.137171, 0.687998, 0.712631,
		29.778311, 39.233154, 31.606024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148886, 38.123356, 31.546148>,  <29.874331, 38.751556, 31.107182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148886, 38.123356, 31.546148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.364275, 37.851257, 31.745070>,  <30.493509, 37.688000, 31.864422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.364275, 37.851257, 31.745070>,  <30.148886, 38.123356, 31.546148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364275, 37.851257, 31.745070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527541, -0.188058, -0.828453,
		0.657074, 0.708449, 0.257593,
		0.538474, -0.680246, 0.497304,
		30.525818, 37.647182, 31.894260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890409, 38.176266, 31.559322>,  <30.148886, 38.123356, 31.546148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890409, 38.176266, 31.559322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.829489, 37.785999, 31.622414>,  <30.792936, 37.551838, 31.660269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.829489, 37.785999, 31.622414>,  <30.890409, 38.176266, 31.559322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829489, 37.785999, 31.622414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539437, -0.215783, -0.813907,
		0.828137, -0.038878, 0.559176,
		-0.152304, -0.975667, 0.157726,
		30.783798, 37.493298, 31.669731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549257, 37.881271, 31.622259>,  <30.890409, 38.176266, 31.559322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549257, 37.881271, 31.622259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.286482, 37.606789, 31.497324>,  <31.128817, 37.442101, 31.422363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.286482, 37.606789, 31.497324>,  <31.549257, 37.881271, 31.622259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286482, 37.606789, 31.497324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560055, -0.166808, -0.811489,
		0.504746, -0.708025, 0.493895,
		-0.656940, -0.686204, -0.312337,
		31.089399, 37.400928, 31.403624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959812, 37.306381, 31.523613>,  <31.549257, 37.881271, 31.622259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959812, 37.306381, 31.523613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.628672, 37.229084, 31.312969>,  <31.429987, 37.182705, 31.186583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.628672, 37.229084, 31.312969>,  <31.959812, 37.306381, 31.523613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628672, 37.229084, 31.312969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559672, -0.347785, -0.752205,
		-0.037786, -0.917443, 0.396069,
		-0.827852, -0.193246, -0.526609,
		31.380316, 37.171112, 31.154987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086525, 36.698578, 31.213398>,  <31.959812, 37.306381, 31.523613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086525, 36.698578, 31.213398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.778351, 36.843204, 31.003368>,  <31.593447, 36.929981, 30.877350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.778351, 36.843204, 31.003368>,  <32.086525, 36.698578, 31.213398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778351, 36.843204, 31.003368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481989, -0.208739, -0.850949,
		-0.417280, -0.908678, -0.013453,
		-0.770431, 0.361568, -0.525076,
		31.547222, 36.951675, 30.845846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005154, 36.226803, 30.673820>,  <32.086525, 36.698578, 31.213398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005154, 36.226803, 30.673820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.825132, 36.557964, 30.539934>,  <31.717119, 36.756660, 30.459602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.825132, 36.557964, 30.539934>,  <32.005154, 36.226803, 30.673820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825132, 36.557964, 30.539934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414758, -0.138151, -0.899383,
		-0.790840, -0.543596, -0.281203,
		-0.450053, 0.827900, -0.334716,
		31.690117, 36.806335, 30.439520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720989, 36.109123, 29.884836>,  <32.005154, 36.226803, 30.673820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720989, 36.109123, 29.884836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.743238, 36.500500, 29.964399>,  <31.756588, 36.735325, 30.012138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.743238, 36.500500, 29.964399>,  <31.720989, 36.109123, 29.884836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743238, 36.500500, 29.964399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488664, 0.147050, -0.859991,
		-0.870697, 0.145036, -0.469948,
		0.055624, 0.978438, 0.198910,
		31.759926, 36.794029, 30.024073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684685, 36.545197, 29.182985>,  <31.720989, 36.109123, 29.884836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684685, 36.545197, 29.182985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848860, 36.797874, 29.446043>,  <31.947365, 36.949482, 29.603878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848860, 36.797874, 29.446043>,  <31.684685, 36.545197, 29.182985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848860, 36.797874, 29.446043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603073, 0.352916, -0.715369,
		-0.683991, 0.690223, -0.236110,
		0.410437, 0.631698, 0.657646,
		31.971991, 36.987385, 29.643337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600029, 37.229542, 28.863838>,  <31.684685, 36.545197, 29.182985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600029, 37.229542, 28.863838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.895485, 37.267651, 29.130772>,  <32.072758, 37.290516, 29.290932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.895485, 37.267651, 29.130772>,  <31.600029, 37.229542, 28.863838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895485, 37.267651, 29.130772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594895, 0.373462, -0.711777,
		-0.317039, 0.922740, 0.219175,
		0.738638, 0.095275, 0.667335,
		32.117077, 37.296234, 29.330973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772966, 37.893860, 28.845533>,  <31.600029, 37.229542, 28.863838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772966, 37.893860, 28.845533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.085323, 37.679985, 28.974728>,  <32.272736, 37.551659, 29.052244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.085323, 37.679985, 28.974728>,  <31.772966, 37.893860, 28.845533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085323, 37.679985, 28.974728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590936, 0.464712, -0.659422,
		0.202490, 0.705800, 0.678855,
		0.780892, -0.534686, 0.322984,
		32.319592, 37.519581, 29.071623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262497, 38.344006, 28.818651>,  <31.772966, 37.893860, 28.845533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262497, 38.344006, 28.818651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.505554, 38.032883, 28.882881>,  <32.651386, 37.846207, 28.921419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.505554, 38.032883, 28.882881>,  <32.262497, 38.344006, 28.818651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505554, 38.032883, 28.882881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561480, 0.277717, -0.779496,
		0.561705, 0.563813, 0.605477,
		0.607641, -0.777810, 0.160574,
		32.687847, 37.799541, 28.931053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987335, 38.652557, 28.837992>,  <32.262497, 38.344006, 28.818651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987335, 38.652557, 28.837992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.991119, 38.260365, 28.759432>,  <32.993389, 38.025051, 28.712296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.991119, 38.260365, 28.759432>,  <32.987335, 38.652557, 28.837992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991119, 38.260365, 28.759432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554048, 0.168646, -0.815223,
		0.832431, -0.101101, 0.544828,
		0.009463, -0.980478, -0.196401,
		32.993958, 37.966221, 28.700512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711731, 38.434055, 28.748737>,  <32.987335, 38.652557, 28.837992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711731, 38.434055, 28.748737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.507484, 38.152302, 28.551512>,  <33.384933, 37.983250, 28.433176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.507484, 38.152302, 28.551512>,  <33.711731, 38.434055, 28.748737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507484, 38.152302, 28.551512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565980, 0.156330, -0.809461,
		0.647250, -0.692393, 0.318840,
		-0.510621, -0.704381, -0.493066,
		33.354298, 37.940987, 28.403591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204208, 38.055954, 28.346275>,  <33.711731, 38.434055, 28.748737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204208, 38.055954, 28.346275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.862930, 37.954147, 28.164162>,  <33.658165, 37.893063, 28.054893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.862930, 37.954147, 28.164162>,  <34.204208, 38.055954, 28.346275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862930, 37.954147, 28.164162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413102, 0.203181, -0.887730,
		0.318450, -0.945483, -0.068209,
		-0.853192, -0.254520, -0.455284,
		33.606972, 37.877792, 28.027576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444168, 37.627201, 27.805420>,  <34.204208, 38.055954, 28.346275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444168, 37.627201, 27.805420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086452, 37.775394, 27.705027>,  <33.871822, 37.864311, 27.644791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086452, 37.775394, 27.705027>,  <34.444168, 37.627201, 27.805420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086452, 37.775394, 27.705027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368861, 0.292722, -0.882188,
		-0.253371, -0.881506, -0.398435,
		-0.894284, 0.370488, -0.250985,
		33.818169, 37.886539, 27.629730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805824, 37.218094, 27.244865>,  <34.444168, 37.627201, 27.805420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805824, 37.218094, 27.244865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.155361, 37.297810, 27.422262>,  <35.365082, 37.345638, 27.528700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.155361, 37.297810, 27.422262>,  <34.805824, 37.218094, 27.244865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155361, 37.297810, 27.422262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312628, -0.468288, 0.826420,
		0.372377, -0.860809, -0.346907,
		0.873842, 0.199287, 0.443493,
		35.417515, 37.357597, 27.555309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903187, 36.616158, 27.677221>,  <34.805824, 37.218094, 27.244865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903187, 36.616158, 27.677221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.155884, 36.872517, 27.851643>,  <35.307503, 37.026333, 27.956295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.155884, 36.872517, 27.851643>,  <34.903187, 36.616158, 27.677221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155884, 36.872517, 27.851643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107653, -0.484537, 0.868121,
		0.767663, -0.595375, -0.237110,
		0.631746, 0.640899, 0.436055,
		35.345409, 37.064785, 27.982460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286312, 36.213749, 28.198872>,  <34.903187, 36.616158, 27.677221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286312, 36.213749, 28.198872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.370842, 36.589626, 28.306437>,  <35.421558, 36.815155, 28.370975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.370842, 36.589626, 28.306437>,  <35.286312, 36.213749, 28.198872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370842, 36.589626, 28.306437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163206, -0.237339, 0.957619,
		0.963694, -0.246255, 0.103209,
		0.211323, 0.939696, 0.268913,
		35.434238, 36.871536, 28.387110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765209, 36.167915, 28.751757>,  <35.286312, 36.213749, 28.198872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765209, 36.167915, 28.751757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.606060, 36.529289, 28.815630>,  <35.510571, 36.746113, 28.853954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.606060, 36.529289, 28.815630>,  <35.765209, 36.167915, 28.751757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606060, 36.529289, 28.815630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205926, -0.257554, 0.944066,
		0.894032, 0.342734, 0.288514,
		-0.397871, 0.903437, 0.159684,
		35.486698, 36.800320, 28.863535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051651, 36.548893, 29.356148>,  <35.765209, 36.167915, 28.751757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051651, 36.548893, 29.356148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.685268, 36.709301, 29.350336>,  <35.465439, 36.805546, 29.346849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.685268, 36.709301, 29.350336>,  <36.051651, 36.548893, 29.356148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685268, 36.709301, 29.350336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062088, -0.105853, 0.992442,
		0.396453, 0.909932, 0.121855,
		-0.915953, 0.401022, -0.014530,
		35.410484, 36.829609, 29.345978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931274, 36.740540, 30.019396>,  <36.051651, 36.548893, 29.356148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931274, 36.740540, 30.019396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.552608, 36.798775, 29.904415>,  <35.325409, 36.833714, 29.835426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.552608, 36.798775, 29.904415>,  <35.931274, 36.740540, 30.019396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552608, 36.798775, 29.904415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294833, -0.031493, 0.955029,
		0.129985, 0.988844, 0.072737,
		-0.946666, 0.145585, -0.287451,
		35.268608, 36.842449, 29.818180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558491, 37.305099, 30.506300>,  <35.931274, 36.740540, 30.019396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558491, 37.305099, 30.506300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.289104, 37.065048, 30.333652>,  <35.127472, 36.921017, 30.230064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.289104, 37.065048, 30.333652>,  <35.558491, 37.305099, 30.506300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289104, 37.065048, 30.333652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388897, -0.208912, 0.897282,
		-0.628653, 0.772142, -0.092692,
		-0.673464, -0.600127, -0.431617,
		35.087067, 36.885010, 30.204168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963882, 37.479801, 30.752323>,  <35.558491, 37.305099, 30.506300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963882, 37.479801, 30.752323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.893120, 37.107510, 30.624292>,  <34.850662, 36.884136, 30.547474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.893120, 37.107510, 30.624292>,  <34.963882, 37.479801, 30.752323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893120, 37.107510, 30.624292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333910, -0.249162, 0.909078,
		-0.925854, 0.267703, -0.266700,
		-0.176911, -0.930727, -0.320076,
		34.840046, 36.828293, 30.528269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449120, 37.208611, 31.192364>,  <34.963882, 37.479801, 30.752323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449120, 37.208611, 31.192364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563744, 36.866859, 31.018963>,  <34.632519, 36.661808, 30.914923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563744, 36.866859, 31.018963>,  <34.449120, 37.208611, 31.192364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563744, 36.866859, 31.018963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193563, -0.494774, 0.847191,
		-0.938306, -0.158860, -0.307157,
		0.286558, -0.854378, -0.433500,
		34.649712, 36.610546, 30.888912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863800, 36.767792, 31.272657>,  <34.449120, 37.208611, 31.192364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863800, 36.767792, 31.272657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.191612, 36.543179, 31.226978>,  <34.388302, 36.408409, 31.199572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.191612, 36.543179, 31.226978>,  <33.863800, 36.767792, 31.272657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191612, 36.543179, 31.226978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272109, -0.556740, 0.784855,
		-0.504301, -0.612143, -0.609066,
		0.819535, -0.561536, -0.114195,
		34.437473, 36.374718, 31.192720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546604, 36.121838, 31.299902>,  <33.863800, 36.767792, 31.272657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546604, 36.121838, 31.299902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.938160, 36.066708, 31.360275>,  <34.173092, 36.033630, 31.396500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.938160, 36.066708, 31.360275>,  <33.546604, 36.121838, 31.299902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938160, 36.066708, 31.360275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204390, -0.655603, 0.726918,
		-0.001236, -0.742421, -0.669932,
		0.978889, -0.137826, 0.150933,
		34.231827, 36.025360, 31.405556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565796, 35.450172, 31.594627>,  <33.546604, 36.121838, 31.299902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565796, 35.450172, 31.594627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931171, 35.582466, 31.689493>,  <34.150394, 35.661842, 31.746412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931171, 35.582466, 31.689493>,  <33.565796, 35.450172, 31.594627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931171, 35.582466, 31.689493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023383, -0.539131, 0.841897,
		0.406309, -0.774565, -0.484728,
		0.913437, 0.330737, 0.237165,
		34.205204, 35.681686, 31.760643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.826347, 38.195606, 24.264563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098457, 38.311417, 24.533901>,  <37.261723, 38.380901, 24.695505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098457, 38.311417, 24.533901>,  <36.826347, 38.195606, 24.264563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098457, 38.311417, 24.533901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447047, -0.564115, 0.694207,
		0.580837, -0.773271, -0.254323,
		0.680278, 0.289527, 0.673347,
		37.302540, 38.398273, 24.735905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142807, 37.573219, 24.487476>,  <36.826347, 38.195606, 24.264563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142807, 37.573219, 24.487476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187313, 37.872410, 24.749210>,  <37.214016, 38.051922, 24.906252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187313, 37.872410, 24.749210>,  <37.142807, 37.573219, 24.487476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187313, 37.872410, 24.749210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535361, -0.509606, 0.673565,
		0.837262, -0.425252, 0.343734,
		0.111266, 0.747973, 0.654337,
		37.220692, 38.096802, 24.945511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252926, 37.237679, 25.131735>,  <37.142807, 37.573219, 24.487476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252926, 37.237679, 25.131735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153770, 37.612560, 25.229872>,  <37.094276, 37.837490, 25.288754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153770, 37.612560, 25.229872>,  <37.252926, 37.237679, 25.131735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153770, 37.612560, 25.229872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638504, -0.348510, 0.686187,
		0.728604, 0.013446, 0.684803,
		-0.247887, 0.937209, 0.245341,
		37.079403, 37.893723, 25.303474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296375, 37.276672, 25.927448>,  <37.252926, 37.237679, 25.131735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296375, 37.276672, 25.927448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075108, 37.596786, 25.834885>,  <36.942345, 37.788853, 25.779346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075108, 37.596786, 25.834885>,  <37.296375, 37.276672, 25.927448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075108, 37.596786, 25.834885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498519, -0.095445, 0.861609,
		0.667443, 0.591978, 0.451753,
		-0.553171, 0.800282, -0.231408,
		36.909157, 37.836872, 25.765463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309879, 37.847942, 26.470617>,  <37.296375, 37.276672, 25.927448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309879, 37.847942, 26.470617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973679, 37.931133, 26.270498>,  <36.771957, 37.981049, 26.150427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973679, 37.931133, 26.270498>,  <37.309879, 37.847942, 26.470617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973679, 37.931133, 26.270498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523723, -0.075302, 0.848554,
		0.138810, 0.975230, 0.172215,
		-0.840503, 0.207981, -0.500298,
		36.721527, 37.993526, 26.120409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946571, 38.374756, 26.829494>,  <37.309879, 37.847942, 26.470617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946571, 38.374756, 26.829494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669842, 38.203960, 26.596582>,  <36.503803, 38.101482, 26.456835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669842, 38.203960, 26.596582>,  <36.946571, 38.374756, 26.829494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669842, 38.203960, 26.596582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601225, -0.105948, 0.792025,
		-0.399881, 0.898026, -0.183422,
		-0.691826, -0.426993, -0.582283,
		36.462296, 38.075863, 26.421898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272793, 38.758553, 27.049530>,  <36.946571, 38.374756, 26.829494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272793, 38.758553, 27.049530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199314, 38.393101, 26.904461>,  <36.155228, 38.173828, 26.817419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199314, 38.393101, 26.904461>,  <36.272793, 38.758553, 27.049530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199314, 38.393101, 26.904461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603618, -0.186355, 0.775188,
		-0.775823, 0.361314, -0.517253,
		-0.183694, -0.913632, -0.362675,
		36.144207, 38.119011, 26.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542583, 38.617989, 27.097643>,  <36.272793, 38.758553, 27.049530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542583, 38.617989, 27.097643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690754, 38.248611, 27.057566>,  <35.779655, 38.026985, 27.033520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690754, 38.248611, 27.057566>,  <35.542583, 38.617989, 27.097643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690754, 38.248611, 27.057566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505573, -0.290936, 0.812251,
		-0.779216, -0.250226, -0.574638,
		0.370430, -0.923441, -0.100195,
		35.801884, 37.971581, 27.027508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988605, 38.125576, 27.154530>,  <35.542583, 38.617989, 27.097643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988605, 38.125576, 27.154530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308262, 37.900078, 27.238014>,  <35.500057, 37.764778, 27.288105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308262, 37.900078, 27.238014>,  <34.988605, 38.125576, 27.154530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308262, 37.900078, 27.238014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499320, -0.429168, 0.752658,
		-0.334733, -0.705698, -0.624455,
		0.799145, -0.563742, 0.208713,
		35.548004, 37.730953, 27.300629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475567, 37.726521, 26.847210>,  <34.988605, 38.125576, 27.154530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475567, 37.726521, 26.847210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129906, 37.876534, 26.981424>,  <33.922508, 37.966541, 27.061953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129906, 37.876534, 26.981424>,  <34.475567, 37.726521, 26.847210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129906, 37.876534, 26.981424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011064, 0.680772, -0.732412,
		-0.503103, -0.629205, -0.592442,
		-0.864155, 0.375034, 0.335537,
		33.870659, 37.989044, 27.082085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915585, 37.562630, 26.390448>,  <34.475567, 37.726521, 26.847210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915585, 37.562630, 26.390448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840401, 37.890965, 26.606188>,  <33.795288, 38.087967, 26.735632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840401, 37.890965, 26.606188>,  <33.915585, 37.562630, 26.390448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840401, 37.890965, 26.606188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131208, 0.565201, -0.814452,
		-0.973373, -0.082320, -0.213936,
		-0.187962, 0.820836, 0.539350,
		33.784012, 38.137215, 26.767992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344322, 37.937840, 26.072916>,  <33.915585, 37.562630, 26.390448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344322, 37.937840, 26.072916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539322, 38.209908, 26.291901>,  <33.656322, 38.373146, 26.423292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539322, 38.209908, 26.291901>,  <33.344322, 37.937840, 26.072916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539322, 38.209908, 26.291901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023138, 0.616733, -0.786832,
		-0.872815, 0.396250, 0.284921,
		0.487503, 0.680166, 0.547462,
		33.685574, 38.413956, 26.456139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044617, 38.607346, 26.002449>,  <33.344322, 37.937840, 26.072916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044617, 38.607346, 26.002449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413200, 38.698593, 26.128225>,  <33.634350, 38.753342, 26.203691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413200, 38.698593, 26.128225>,  <33.044617, 38.607346, 26.002449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413200, 38.698593, 26.128225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143301, 0.552744, -0.820938,
		-0.361078, 0.801521, 0.476642,
		0.921459, 0.228119, 0.314443,
		33.689640, 38.767029, 26.222559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113808, 39.241982, 25.806547>,  <33.044617, 38.607346, 26.002449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113808, 39.241982, 25.806547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495018, 39.139580, 25.871284>,  <33.723743, 39.078136, 25.910128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495018, 39.139580, 25.871284>,  <33.113808, 39.241982, 25.806547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495018, 39.139580, 25.871284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273463, 0.497630, -0.823154,
		0.130196, 0.828749, 0.544265,
		0.953030, -0.256008, 0.161843,
		33.780926, 39.062778, 25.919838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517262, 39.910122, 25.820698>,  <33.113808, 39.241982, 25.806547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517262, 39.910122, 25.820698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783768, 39.628796, 25.721552>,  <33.943672, 39.459999, 25.662064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783768, 39.628796, 25.721552>,  <33.517262, 39.910122, 25.820698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783768, 39.628796, 25.721552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257691, 0.529058, -0.808513,
		0.699774, 0.474812, 0.533732,
		0.666266, -0.703315, -0.247866,
		33.983646, 39.417801, 25.647192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087044, 40.333504, 25.532055>,  <33.517262, 39.910122, 25.820698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087044, 40.333504, 25.532055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157352, 39.955208, 25.422737>,  <34.199535, 39.728230, 25.357147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157352, 39.955208, 25.422737>,  <34.087044, 40.333504, 25.532055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157352, 39.955208, 25.422737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302011, 0.316032, -0.899396,
		0.936960, 0.075549, 0.341172,
		0.175770, -0.945736, -0.273293,
		34.210083, 39.671486, 25.340750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774601, 40.412666, 25.135660>,  <34.087044, 40.333504, 25.532055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774601, 40.412666, 25.135660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616352, 40.070259, 25.002565>,  <34.521404, 39.864815, 24.922709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616352, 40.070259, 25.002565>,  <34.774601, 40.412666, 25.135660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616352, 40.070259, 25.002565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305717, 0.218891, -0.926620,
		0.866039, -0.468312, 0.175102,
		-0.395618, -0.856020, -0.332739,
		34.497665, 39.813454, 24.902744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380585, 40.034637, 24.771051>,  <34.774601, 40.412666, 25.135660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380585, 40.034637, 24.771051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024754, 39.897808, 24.649961>,  <34.811256, 39.815712, 24.577307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024754, 39.897808, 24.649961>,  <35.380585, 40.034637, 24.771051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024754, 39.897808, 24.649961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274350, 0.129773, -0.952833,
		0.365225, -0.930669, -0.021594,
		-0.889574, -0.342074, -0.302725,
		34.757881, 39.795185, 24.559143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608086, 39.676331, 24.122734>,  <35.380585, 40.034637, 24.771051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608086, 39.676331, 24.122734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208771, 39.699558, 24.119625>,  <34.969181, 39.713493, 24.117760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208771, 39.699558, 24.119625>,  <35.608086, 39.676331, 24.122734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208771, 39.699558, 24.119625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018944, 0.194441, -0.980731,
		-0.055438, -0.979194, -0.195207,
		-0.998283, 0.058068, -0.007770,
		34.909286, 39.716980, 24.117294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359245, 39.316639, 23.485312>,  <35.608086, 39.676331, 24.122734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359245, 39.316639, 23.485312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078701, 39.582779, 23.587605>,  <34.910374, 39.742462, 23.648981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078701, 39.582779, 23.587605>,  <35.359245, 39.316639, 23.485312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078701, 39.582779, 23.587605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038199, 0.393341, -0.918599,
		-0.711780, -0.634502, -0.301290,
		-0.701363, 0.665349, 0.255735,
		34.868294, 39.782383, 23.664326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920811, 39.187820, 22.895792>,  <35.359245, 39.316639, 23.485312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920811, 39.187820, 22.895792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845573, 39.544750, 23.059923>,  <34.800430, 39.758907, 23.158401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845573, 39.544750, 23.059923>,  <34.920811, 39.187820, 22.895792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845573, 39.544750, 23.059923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025877, 0.422144, -0.906159,
		-0.981809, -0.159827, -0.102495,
		-0.188097, 0.892328, 0.410329,
		34.789143, 39.812450, 23.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554661, 39.527863, 22.390574>,  <34.920811, 39.187820, 22.895792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554661, 39.527863, 22.390574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671612, 39.827351, 22.628542>,  <34.741783, 40.007046, 22.771322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671612, 39.827351, 22.628542>,  <34.554661, 39.527863, 22.390574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671612, 39.827351, 22.628542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234037, 0.547165, -0.803640,
		-0.927223, 0.374199, -0.015250,
		0.292376, 0.748722, 0.594921,
		34.759323, 40.051968, 22.807018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293224, 40.079712, 22.030666>,  <34.554661, 39.527863, 22.390574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293224, 40.079712, 22.030666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571316, 40.203465, 22.290186>,  <34.738171, 40.277718, 22.445898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571316, 40.203465, 22.290186>,  <34.293224, 40.079712, 22.030666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571316, 40.203465, 22.290186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380510, 0.607366, -0.697366,
		-0.609811, 0.731703, 0.304534,
		0.695228, 0.309383, 0.648799,
		34.779884, 40.296280, 22.484825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.522404, 45.557358, 27.092800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401844, 45.214695, 26.925325>,  <39.329506, 45.009098, 26.824841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401844, 45.214695, 26.925325>,  <39.522404, 45.557358, 27.092800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401844, 45.214695, 26.925325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517809, -0.221658, 0.826282,
		-0.800643, 0.465844, -0.376775,
		-0.301403, -0.856655, -0.418687,
		39.311424, 44.957699, 26.799719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696163, 45.513744, 27.072317>,  <39.522404, 45.557358, 27.092800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696163, 45.513744, 27.072317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826881, 45.135731, 27.068184>,  <38.905312, 44.908920, 27.065704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826881, 45.135731, 27.068184>,  <38.696163, 45.513744, 27.072317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826881, 45.135731, 27.068184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654917, -0.234330, 0.718452,
		-0.681386, -0.228020, -0.695499,
		0.326798, -0.945038, -0.010335,
		38.924919, 44.852219, 27.065084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168182, 45.155327, 27.346760>,  <38.696163, 45.513744, 27.072317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168182, 45.155327, 27.346760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447979, 44.870579, 27.371908>,  <38.615856, 44.699730, 27.386997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447979, 44.870579, 27.371908>,  <38.168182, 45.155327, 27.346760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447979, 44.870579, 27.371908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610656, -0.549688, 0.570037,
		-0.371233, -0.437128, -0.819210,
		0.699489, -0.711872, 0.062872,
		38.657825, 44.657017, 27.390770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857708, 44.643196, 27.097612>,  <38.168182, 45.155327, 27.346760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857708, 44.643196, 27.097612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145649, 44.464268, 27.309917>,  <38.318413, 44.356911, 27.437302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145649, 44.464268, 27.309917>,  <37.857708, 44.643196, 27.097612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145649, 44.464268, 27.309917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694088, -0.456043, 0.557016,
		-0.007114, -0.769368, -0.638766,
		0.719855, -0.447323, 0.530765,
		38.361607, 44.330070, 27.469147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704842, 43.906399, 27.249239>,  <37.857708, 44.643196, 27.097612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704842, 43.906399, 27.249239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973331, 44.018410, 27.523771>,  <38.134426, 44.085617, 27.688490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973331, 44.018410, 27.523771>,  <37.704842, 43.906399, 27.249239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973331, 44.018410, 27.523771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532531, -0.461902, 0.709265,
		0.515629, -0.841565, -0.160916,
		0.671220, 0.280025, 0.686330,
		38.174698, 44.102417, 27.729670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853546, 43.334457, 27.644890>,  <37.704842, 43.906399, 27.249239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853546, 43.334457, 27.644890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011414, 43.602253, 27.896612>,  <38.106136, 43.762928, 28.047646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011414, 43.602253, 27.896612>,  <37.853546, 43.334457, 27.644890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011414, 43.602253, 27.896612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468214, -0.442767, 0.764678,
		0.790576, -0.596445, 0.138715,
		0.394670, 0.669485, 0.629305,
		38.129814, 43.803097, 28.085403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313675, 42.945919, 28.078054>,  <37.853546, 43.334457, 27.644890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313675, 42.945919, 28.078054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174530, 43.274033, 28.259661>,  <38.091042, 43.470901, 28.368624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174530, 43.274033, 28.259661>,  <38.313675, 42.945919, 28.078054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174530, 43.274033, 28.259661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362219, -0.564247, 0.741904,
		0.864746, 0.093631, 0.493404,
		-0.347867, 0.820279, 0.454016,
		38.070171, 43.520115, 28.395866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228294, 42.670620, 28.814894>,  <38.313675, 42.945919, 28.078054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228294, 42.670620, 28.814894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051670, 43.029488, 28.810722>,  <37.945694, 43.244808, 28.808220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051670, 43.029488, 28.810722>,  <38.228294, 42.670620, 28.814894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051670, 43.029488, 28.810722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464682, -0.218728, 0.858038,
		0.767525, 0.383723, 0.513481,
		-0.441561, 0.897171, -0.010430,
		37.919201, 43.298637, 28.807594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402740, 42.966808, 29.433765>,  <38.228294, 42.670620, 28.814894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402740, 42.966808, 29.433765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067818, 43.153931, 29.320578>,  <37.866863, 43.266205, 29.252665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067818, 43.153931, 29.320578>,  <38.402740, 42.966808, 29.433765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067818, 43.153931, 29.320578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392527, -0.154095, 0.906740,
		0.380576, 0.870293, 0.312652,
		-0.837308, 0.467808, -0.282969,
		37.816624, 43.294273, 29.235687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211769, 43.284645, 30.030382>,  <38.402740, 42.966808, 29.433765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211769, 43.284645, 30.030382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877319, 43.232395, 29.817280>,  <37.676651, 43.201046, 29.689419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877319, 43.232395, 29.817280>,  <38.211769, 43.284645, 30.030382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877319, 43.232395, 29.817280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501773, -0.210271, 0.839053,
		-0.221627, 0.968877, 0.110267,
		-0.836125, -0.130628, -0.532758,
		37.626480, 43.193207, 29.657452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682919, 43.674370, 30.353603>,  <38.211769, 43.284645, 30.030382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682919, 43.674370, 30.353603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472740, 43.449905, 30.097790>,  <37.346634, 43.315228, 29.944302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472740, 43.449905, 30.097790>,  <37.682919, 43.674370, 30.353603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472740, 43.449905, 30.097790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512169, -0.391602, 0.764415,
		-0.679402, 0.729211, -0.081641,
		-0.525449, -0.561159, -0.639535,
		37.315105, 43.281559, 29.905930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016922, 43.884739, 30.334293>,  <37.682919, 43.674370, 30.353603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016922, 43.884739, 30.334293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.987549, 43.502003, 30.221825>,  <36.969925, 43.272362, 30.154343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.987549, 43.502003, 30.221825>,  <37.016922, 43.884739, 30.334293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987549, 43.502003, 30.221825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639418, -0.171190, 0.749559,
		-0.765345, 0.234828, -0.599252,
		-0.073432, -0.956844, -0.281173,
		36.965519, 43.214951, 30.137472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313099, 43.649410, 30.424646>,  <37.016922, 43.884739, 30.334293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313099, 43.649410, 30.424646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518681, 43.306461, 30.413643>,  <36.642029, 43.100693, 30.407042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518681, 43.306461, 30.413643>,  <36.313099, 43.649410, 30.424646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518681, 43.306461, 30.413643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562596, -0.361113, 0.743696,
		-0.647560, -0.366752, -0.667952,
		0.513957, -0.857375, -0.027509,
		36.672867, 43.049248, 30.405390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741871, 42.943615, 30.370638>,  <36.313099, 43.649410, 30.424646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741871, 42.943615, 30.370638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090759, 42.797298, 30.500511>,  <36.300095, 42.709507, 30.578436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090759, 42.797298, 30.500511>,  <35.741871, 42.943615, 30.370638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090759, 42.797298, 30.500511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478001, -0.496854, 0.724328,
		-0.103635, -0.786976, -0.608219,
		0.872225, -0.365795, 0.324683,
		36.352428, 42.687561, 30.597916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254108, 42.632523, 29.974705>,  <35.741871, 42.943615, 30.370638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254108, 42.632523, 29.974705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901413, 42.818546, 29.943060>,  <34.689796, 42.930161, 29.924074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901413, 42.818546, 29.943060>,  <35.254108, 42.632523, 29.974705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901413, 42.818546, 29.943060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271218, 0.362548, -0.891627,
		-0.385978, -0.807638, -0.445805,
		-0.881738, 0.465059, -0.079111,
		34.636890, 42.958065, 29.919327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042198, 42.414093, 29.397039>,  <35.254108, 42.632523, 29.974705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042198, 42.414093, 29.397039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.849792, 42.758137, 29.464966>,  <34.734348, 42.964561, 29.505722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.849792, 42.758137, 29.464966>,  <35.042198, 42.414093, 29.397039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849792, 42.758137, 29.464966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353845, 0.367686, -0.860000,
		-0.802131, -0.353587, -0.481208,
		-0.481019, 0.860106, 0.169818,
		34.705486, 43.016171, 29.515911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754208, 42.622959, 28.699863>,  <35.042198, 42.414093, 29.397039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754208, 42.622959, 28.699863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743790, 42.965889, 28.905514>,  <34.737537, 43.171646, 29.028904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743790, 42.965889, 28.905514>,  <34.754208, 42.622959, 28.699863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743790, 42.965889, 28.905514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042817, 0.514783, -0.856250,
		-0.998743, -0.000289, -0.050116,
		-0.026047, 0.857320, 0.514124,
		34.735977, 43.223083, 29.059752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293987, 42.984665, 28.391863>,  <34.754208, 42.622959, 28.699863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293987, 42.984665, 28.391863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.530220, 43.244240, 28.583738>,  <34.671959, 43.399982, 28.698864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.530220, 43.244240, 28.583738>,  <34.293987, 42.984665, 28.391863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530220, 43.244240, 28.583738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238318, 0.427659, -0.871959,
		-0.770987, 0.629279, 0.097914,
		0.590579, 0.648934, 0.479688,
		34.707394, 43.438919, 28.727644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125065, 43.713409, 28.192327>,  <34.293987, 42.984665, 28.391863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125065, 43.713409, 28.192327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.501907, 43.709816, 28.326406>,  <34.728012, 43.707661, 28.406855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.501907, 43.709816, 28.326406>,  <34.125065, 43.713409, 28.192327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501907, 43.709816, 28.326406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292471, 0.510940, -0.808332,
		-0.164008, 0.859569, 0.483985,
		0.942105, -0.008979, 0.335197,
		34.784538, 43.707123, 28.426966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330498, 44.403370, 28.232414>,  <34.125065, 43.713409, 28.192327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330498, 44.403370, 28.232414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673988, 44.198589, 28.223610>,  <34.880085, 44.075722, 28.218327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673988, 44.198589, 28.223610>,  <34.330498, 44.403370, 28.232414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673988, 44.198589, 28.223610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330397, 0.586006, -0.739889,
		0.391688, 0.628092, 0.672369,
		0.858731, -0.511954, -0.022011,
		34.931606, 44.045002, 28.217007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805664, 44.891014, 28.045582>,  <34.330498, 44.403370, 28.232414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805664, 44.891014, 28.045582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.019100, 44.561436, 27.969271>,  <35.147163, 44.363689, 27.923485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.019100, 44.561436, 27.969271>,  <34.805664, 44.891014, 28.045582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019100, 44.561436, 27.969271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518695, 0.496984, -0.695674,
		0.668010, 0.272250, 0.692562,
		0.533589, -0.823946, -0.190776,
		35.179176, 44.314251, 27.912039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465061, 45.134434, 28.011999>,  <34.805664, 44.891014, 28.045582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465061, 45.134434, 28.011999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470055, 44.786003, 27.815605>,  <35.473053, 44.576942, 27.697769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470055, 44.786003, 27.815605>,  <35.465061, 45.134434, 28.011999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470055, 44.786003, 27.815605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599077, 0.399656, -0.693816,
		0.800594, -0.285474, 0.526834,
		0.012486, -0.871079, -0.490983,
		35.473801, 44.524681, 27.668310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149059, 44.868191, 28.018515>,  <35.465061, 45.134434, 28.011999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149059, 44.868191, 28.018515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976334, 44.672077, 27.715685>,  <35.872700, 44.554409, 27.533987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976334, 44.672077, 27.715685>,  <36.149059, 44.868191, 28.018515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976334, 44.672077, 27.715685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721824, 0.315459, -0.616000,
		0.540842, -0.812468, 0.217682,
		-0.431811, -0.490287, -0.757072,
		35.846790, 44.524990, 27.488564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669415, 44.679081, 27.492493>,  <36.149059, 44.868191, 28.018515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669415, 44.679081, 27.492493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338799, 44.641403, 27.270519>,  <36.140427, 44.618797, 27.137335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338799, 44.641403, 27.270519>,  <36.669415, 44.679081, 27.492493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338799, 44.641403, 27.270519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502610, 0.320318, -0.802982,
		0.253392, -0.942616, -0.217413,
		-0.826544, -0.094195, -0.554934,
		36.090836, 44.613144, 27.104038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627522, 44.115349, 26.929781>,  <36.669415, 44.679081, 27.492493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627522, 44.115349, 26.929781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405277, 44.427345, 26.814604>,  <36.271931, 44.614544, 26.745497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405277, 44.427345, 26.814604>,  <36.627522, 44.115349, 26.929781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405277, 44.427345, 26.814604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525659, 0.061211, -0.848490,
		-0.644192, -0.622786, -0.444020,
		-0.555607, 0.779994, -0.287942,
		36.238594, 44.661343, 26.728222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429111, 43.950893, 26.164366>,  <36.627522, 44.115349, 26.929781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429111, 43.950893, 26.164366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385414, 44.341442, 26.238955>,  <36.359196, 44.575771, 26.283709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385414, 44.341442, 26.238955>,  <36.429111, 43.950893, 26.164366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385414, 44.341442, 26.238955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276873, 0.210058, -0.937666,
		-0.954677, -0.050803, -0.293277,
		-0.109242, 0.976368, 0.186471,
		36.352642, 44.634354, 26.294895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188374, 44.121872, 25.595686>,  <36.429111, 43.950893, 26.164366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188374, 44.121872, 25.595686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299316, 44.473236, 25.751364>,  <36.365883, 44.684055, 25.844770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299316, 44.473236, 25.751364>,  <36.188374, 44.121872, 25.595686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299316, 44.473236, 25.751364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413507, 0.256506, -0.873623,
		-0.867227, 0.403242, -0.292083,
		0.277361, 0.878408, 0.389193,
		36.382526, 44.736759, 25.868122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869865, 44.631184, 25.173458>,  <36.188374, 44.121872, 25.595686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869865, 44.631184, 25.173458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192436, 44.791153, 25.347694>,  <36.385979, 44.887135, 25.452236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192436, 44.791153, 25.347694>,  <35.869865, 44.631184, 25.173458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192436, 44.791153, 25.347694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275590, 0.397555, -0.875214,
		-0.523187, 0.825841, 0.210385,
		0.806428, 0.399921, 0.435589,
		36.434364, 44.911129, 25.478371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226379, 44.846207, 25.104988>,  <35.869865, 44.631184, 25.173458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226379, 44.846207, 25.104988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993637, 44.699108, 24.814827>,  <34.853992, 44.610851, 24.640730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993637, 44.699108, 24.814827>,  <35.226379, 44.846207, 25.104988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993637, 44.699108, 24.814827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639219, -0.344674, 0.687458,
		-0.502836, 0.863692, -0.034518,
		-0.581854, -0.367744, -0.725403,
		34.819080, 44.588783, 24.597206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649551, 45.167366, 25.150829>,  <35.226379, 44.846207, 25.104988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649551, 45.167366, 25.150829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566471, 44.822037, 24.966856>,  <34.516621, 44.614841, 24.856472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566471, 44.822037, 24.966856>,  <34.649551, 45.167366, 25.150829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566471, 44.822037, 24.966856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431432, -0.341136, 0.835160,
		-0.877910, 0.371896, -0.301608,
		-0.207703, -0.863319, -0.459934,
		34.504162, 44.563042, 24.828876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972675, 45.084942, 25.214134>,  <34.649551, 45.167366, 25.150829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972675, 45.084942, 25.214134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085144, 44.712814, 25.119947>,  <34.152626, 44.489536, 25.063435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085144, 44.712814, 25.119947>,  <33.972675, 45.084942, 25.214134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085144, 44.712814, 25.119947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744225, -0.366298, 0.558529,
		-0.605862, 0.018197, -0.795362,
		0.281175, -0.930320, -0.235468,
		34.169498, 44.433720, 25.049307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420906, 44.738228, 25.058184>,  <33.972675, 45.084942, 25.214134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420906, 44.738228, 25.058184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666916, 44.433655, 25.140125>,  <33.814522, 44.250912, 25.189289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666916, 44.433655, 25.140125>,  <33.420906, 44.738228, 25.058184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666916, 44.433655, 25.140125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712634, -0.425563, 0.557717,
		-0.337484, -0.488997, -0.804355,
		0.615026, -0.761431, 0.204855,
		33.851425, 44.205223, 25.201582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032051, 44.033249, 24.905066>,  <33.420906, 44.738228, 25.058184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032051, 44.033249, 24.905066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339062, 43.935932, 25.142288>,  <33.523266, 43.877544, 25.284622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339062, 43.935932, 25.142288>,  <33.032051, 44.033249, 24.905066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339062, 43.935932, 25.142288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580703, -0.655688, 0.482553,
		0.271461, -0.714761, -0.644535,
		0.767524, -0.243289, 0.593058,
		33.569321, 43.862946, 25.320206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002850, 43.319721, 24.918264>,  <33.032051, 44.033249, 24.905066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002850, 43.319721, 24.918264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212780, 43.444920, 25.234896>,  <33.338737, 43.520039, 25.424875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212780, 43.444920, 25.234896>,  <33.002850, 43.319721, 24.918264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212780, 43.444920, 25.234896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568892, -0.562777, 0.599703,
		0.633185, -0.765061, -0.117300,
		0.524823, 0.312992, 0.791579,
		33.370228, 43.538818, 25.472370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173878, 42.665085, 25.321239>,  <33.002850, 43.319721, 24.918264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173878, 42.665085, 25.321239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222561, 42.969021, 25.576689>,  <33.251770, 43.151382, 25.729958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222561, 42.969021, 25.576689>,  <33.173878, 42.665085, 25.321239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222561, 42.969021, 25.576689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424590, -0.541712, 0.725446,
		0.897169, -0.359442, 0.256691,
		0.121704, 0.759835, 0.638622,
		33.259071, 43.196972, 25.768276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277443, 42.393738, 26.011391>,  <33.173878, 42.665085, 25.321239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277443, 42.393738, 26.011391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202549, 42.771629, 26.119041>,  <33.157612, 42.998363, 26.183632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202549, 42.771629, 26.119041>,  <33.277443, 42.393738, 26.011391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202549, 42.771629, 26.119041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482434, -0.327093, 0.812569,
		0.855687, 0.022306, 0.517013,
		-0.187236, 0.944729, 0.269128,
		33.146378, 43.055050, 26.199780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511379, 42.550949, 26.724287>,  <33.277443, 42.393738, 26.011391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511379, 42.550949, 26.724287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184822, 42.743568, 26.596783>,  <32.988888, 42.859138, 26.520281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184822, 42.743568, 26.596783>,  <33.511379, 42.550949, 26.724287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184822, 42.743568, 26.596783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530737, -0.408077, 0.742827,
		0.227628, 0.775619, 0.588728,
		-0.816396, 0.481548, -0.318760,
		32.939903, 42.888035, 26.501154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205284, 42.902649, 27.236494>,  <33.511379, 42.550949, 26.724287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205284, 42.902649, 27.236494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.874218, 42.904335, 27.012009>,  <32.675579, 42.905346, 26.877317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.874218, 42.904335, 27.012009>,  <33.205284, 42.902649, 27.236494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874218, 42.904335, 27.012009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499594, -0.461128, 0.733326,
		-0.255702, 0.887324, 0.383761,
		-0.827661, 0.004211, -0.561213,
		32.625919, 42.905598, 26.843645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648384, 43.160007, 27.592352>,  <33.205284, 42.902649, 27.236494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648384, 43.160007, 27.592352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451038, 42.952812, 27.312843>,  <32.332630, 42.828495, 27.145138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451038, 42.952812, 27.312843>,  <32.648384, 43.160007, 27.592352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451038, 42.952812, 27.312843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673052, -0.281548, 0.683909,
		-0.550993, 0.807727, -0.209726,
		-0.493363, -0.517985, -0.698773,
		32.303028, 42.797417, 27.103210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969971, 43.107697, 27.857992>,  <32.648384, 43.160007, 27.592352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969971, 43.107697, 27.857992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.954189, 42.849358, 27.553013>,  <31.944721, 42.694355, 27.370026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.954189, 42.849358, 27.553013>,  <31.969971, 43.107697, 27.857992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954189, 42.849358, 27.553013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731926, -0.500778, 0.462068,
		-0.680241, 0.576285, -0.452954,
		-0.039454, -0.645846, -0.762448,
		31.942352, 42.655605, 27.324278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187567, 42.965923, 27.815500>,  <31.969971, 43.107697, 27.857992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187567, 42.965923, 27.815500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.386354, 42.675522, 27.625368>,  <31.505627, 42.501282, 27.511290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.386354, 42.675522, 27.625368>,  <31.187567, 42.965923, 27.815500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386354, 42.675522, 27.625368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702267, -0.658251, 0.271157,
		-0.509747, 0.199050, -0.836981,
		0.496970, -0.726006, -0.475328,
		31.535446, 42.457722, 27.482769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675781, 42.470573, 27.467682>,  <31.187567, 42.965923, 27.815500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675781, 42.470573, 27.467682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.024925, 42.282562, 27.520126>,  <31.234411, 42.169758, 27.551592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.024925, 42.282562, 27.520126>,  <30.675781, 42.470573, 27.467682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024925, 42.282562, 27.520126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455984, -0.689983, 0.562140,
		-0.173755, -0.550455, -0.816583,
		0.872862, -0.470024, 0.131110,
		31.286783, 42.141556, 27.559460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.295349, 40.824436, 21.937639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656696, 40.723484, 22.076334>,  <34.873505, 40.662914, 22.159552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656696, 40.723484, 22.076334>,  <34.295349, 40.824436, 21.937639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656696, 40.723484, 22.076334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425696, 0.625775, -0.653596,
		-0.052026, 0.738044, 0.672744,
		0.903369, -0.252381, 0.346739,
		34.927708, 40.647770, 22.180355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656376, 41.502632, 21.906729>,  <34.295349, 40.824436, 21.937639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656376, 41.502632, 21.906729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935558, 41.216824, 21.925991>,  <35.103065, 41.045338, 21.937548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935558, 41.216824, 21.925991>,  <34.656376, 41.502632, 21.906729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935558, 41.216824, 21.925991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646269, 0.599455, -0.472217,
		0.308543, 0.360707, 0.880166,
		0.697952, -0.714523, 0.048156,
		35.144943, 41.002468, 21.940437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289848, 41.839008, 22.205061>,  <34.656376, 41.502632, 21.906729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289848, 41.839008, 22.205061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.420300, 41.500736, 22.036077>,  <35.498569, 41.297775, 21.934687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.420300, 41.500736, 22.036077>,  <35.289848, 41.839008, 22.205061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420300, 41.500736, 22.036077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654679, 0.524428, -0.544399,
		0.681935, -0.099031, 0.724678,
		0.326129, -0.845676, -0.422459,
		35.518139, 41.247032, 21.909340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006866, 41.952412, 22.188330>,  <35.289848, 41.839008, 22.205061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006866, 41.952412, 22.188330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938335, 41.655224, 21.929518>,  <35.897217, 41.476913, 21.774231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938335, 41.655224, 21.929518>,  <36.006866, 41.952412, 22.188330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938335, 41.655224, 21.929518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722951, 0.351359, -0.594886,
		0.669320, -0.569693, 0.476930,
		-0.171328, -0.742965, -0.647031,
		35.886936, 41.432335, 21.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569027, 41.749371, 21.981943>,  <36.006866, 41.952412, 22.188330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569027, 41.749371, 21.981943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347179, 41.596348, 21.686363>,  <36.214069, 41.504532, 21.509016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347179, 41.596348, 21.686363>,  <36.569027, 41.749371, 21.981943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347179, 41.596348, 21.686363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618613, 0.404372, -0.673648,
		0.556521, -0.830742, 0.012384,
		-0.554620, -0.382560, -0.738949,
		36.180794, 41.481579, 21.464678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052078, 41.413017, 21.559250>,  <36.569027, 41.749371, 21.981943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052078, 41.413017, 21.559250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.740261, 41.510273, 21.328358>,  <36.553169, 41.568626, 21.189823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.740261, 41.510273, 21.328358>,  <37.052078, 41.413017, 21.559250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740261, 41.510273, 21.328358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620002, 0.430385, -0.656023,
		0.088925, -0.869282, -0.486252,
		-0.779545, 0.243140, -0.577229,
		36.506397, 41.583214, 21.155190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442448, 41.455402, 20.954416>,  <37.052078, 41.413017, 21.559250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442448, 41.455402, 20.954416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.077076, 41.601227, 20.882044>,  <36.857853, 41.688721, 20.838621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.077076, 41.601227, 20.882044>,  <37.442448, 41.455402, 20.954416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077076, 41.601227, 20.882044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349594, 0.475190, -0.807452,
		-0.208391, -0.800805, -0.561502,
		-0.913432, 0.364563, -0.180931,
		36.803047, 41.710594, 20.827765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292416, 41.444641, 20.208744>,  <37.442448, 41.455402, 20.954416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292416, 41.444641, 20.208744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027088, 41.709740, 20.347754>,  <36.867893, 41.868797, 20.431160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027088, 41.709740, 20.347754>,  <37.292416, 41.444641, 20.208744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027088, 41.709740, 20.347754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059192, 0.509409, -0.858486,
		-0.745992, -0.548880, -0.377130,
		-0.663319, 0.662747, 0.347526,
		36.828091, 41.908566, 20.452011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738617, 41.543171, 19.573303>,  <37.292416, 41.444641, 20.208744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738617, 41.543171, 19.573303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775360, 41.842026, 19.836618>,  <36.797405, 42.021339, 19.994608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775360, 41.842026, 19.836618>,  <36.738617, 41.543171, 19.573303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775360, 41.842026, 19.836618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224698, 0.628480, -0.744664,
		-0.970089, 0.216320, -0.110149,
		0.091859, 0.747141, 0.658288,
		36.802917, 42.066170, 20.034105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318630, 42.118217, 19.273067>,  <36.738617, 41.543171, 19.573303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318630, 42.118217, 19.273067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569336, 42.292313, 19.531595>,  <36.719761, 42.396770, 19.686712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569336, 42.292313, 19.531595>,  <36.318630, 42.118217, 19.273067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569336, 42.292313, 19.531595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280271, 0.648023, -0.708177,
		-0.727058, 0.625006, 0.284174,
		0.626766, 0.435240, 0.646321,
		36.757366, 42.422886, 19.725491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207947, 42.788902, 19.176619>,  <36.318630, 42.118217, 19.273067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207947, 42.788902, 19.176619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554050, 42.769650, 19.376223>,  <36.761711, 42.758099, 19.495985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554050, 42.769650, 19.376223>,  <36.207947, 42.788902, 19.176619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554050, 42.769650, 19.376223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402583, 0.659892, -0.634405,
		-0.298754, 0.749817, 0.590356,
		0.865259, -0.048137, 0.499009,
		36.813629, 42.755207, 19.525925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391449, 43.543530, 19.209648>,  <36.207947, 42.788902, 19.176619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391449, 43.543530, 19.209648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.714355, 43.309776, 19.242672>,  <36.908100, 43.169525, 19.262486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.714355, 43.309776, 19.242672>,  <36.391449, 43.543530, 19.209648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714355, 43.309776, 19.242672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546892, 0.688104, -0.476888,
		0.221878, 0.430126, 0.875078,
		0.807266, -0.584384, 0.082557,
		36.956535, 43.134460, 19.267439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966442, 43.841648, 19.680983>,  <36.391449, 43.543530, 19.209648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966442, 43.841648, 19.680983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.102993, 43.600197, 19.392790>,  <37.184925, 43.455326, 19.219875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.102993, 43.600197, 19.392790>,  <36.966442, 43.841648, 19.680983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102993, 43.600197, 19.392790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567139, 0.743552, -0.354238,
		0.749543, -0.287683, 0.596174,
		0.341378, -0.603630, -0.720480,
		37.205406, 43.419109, 19.176645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314575, 44.400013, 19.396231>,  <36.966442, 43.841648, 19.680983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314575, 44.400013, 19.396231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210838, 44.776337, 19.308941>,  <37.148594, 45.002129, 19.256567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210838, 44.776337, 19.308941>,  <37.314575, 44.400013, 19.396231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210838, 44.776337, 19.308941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299825, 0.293222, 0.907814,
		0.918066, 0.170009, -0.358123,
		-0.259346, 0.940807, -0.218225,
		37.133034, 45.058578, 19.243473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830555, 45.022709, 19.681683>,  <37.314575, 44.400013, 19.396231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830555, 45.022709, 19.681683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.799297, 45.377117, 19.864492>,  <37.780544, 45.589760, 19.974178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.799297, 45.377117, 19.864492>,  <37.830555, 45.022709, 19.681683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799297, 45.377117, 19.864492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435507, -0.442707, 0.783801,
		0.896787, -0.137790, 0.420459,
		-0.078140, 0.886016, 0.457022,
		37.775856, 45.642921, 20.001598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115215, 44.942520, 20.413637>,  <37.830555, 45.022709, 19.681683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115215, 44.942520, 20.413637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863552, 45.253273, 20.403717>,  <37.712555, 45.439724, 20.397764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863552, 45.253273, 20.403717>,  <38.115215, 44.942520, 20.413637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863552, 45.253273, 20.403717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562231, -0.432833, 0.704664,
		0.536703, 0.457292, 0.709108,
		-0.629163, 0.776878, -0.024801,
		37.674805, 45.486336, 20.396276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991459, 45.152611, 21.158792>,  <38.115215, 44.942520, 20.413637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991459, 45.152611, 21.158792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697018, 45.317963, 20.944401>,  <37.520355, 45.417175, 20.815765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697018, 45.317963, 20.944401>,  <37.991459, 45.152611, 21.158792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697018, 45.317963, 20.944401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651605, -0.218440, 0.726426,
		0.183212, 0.883968, 0.430155,
		-0.736101, 0.413381, -0.535978,
		37.476189, 45.441978, 20.783607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538418, 45.542904, 21.636232>,  <37.991459, 45.152611, 21.158792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538418, 45.542904, 21.636232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302334, 45.473560, 21.320868>,  <37.160683, 45.431953, 21.131649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302334, 45.473560, 21.320868>,  <37.538418, 45.542904, 21.636232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302334, 45.473560, 21.320868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775894, -0.147722, 0.613325,
		-0.222793, 0.973717, -0.047323,
		-0.590214, -0.173361, -0.788412,
		37.125271, 45.421551, 21.084345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086742, 46.122292, 21.627052>,  <37.538418, 45.542904, 21.636232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086742, 46.122292, 21.627052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912403, 45.811226, 21.445824>,  <36.807800, 45.624584, 21.337086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912403, 45.811226, 21.445824>,  <37.086742, 46.122292, 21.627052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912403, 45.811226, 21.445824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757197, 0.044715, 0.651654,
		-0.486511, 0.627084, -0.608336,
		-0.435844, -0.777668, -0.453071,
		36.781651, 45.577927, 21.309902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385052, 46.268414, 21.673994>,  <37.086742, 46.122292, 21.627052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385052, 46.268414, 21.673994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.382576, 45.879406, 21.580893>,  <36.381092, 45.646004, 21.525032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.382576, 45.879406, 21.580893>,  <36.385052, 46.268414, 21.673994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382576, 45.879406, 21.580893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746673, -0.150330, 0.647981,
		-0.665162, 0.177802, -0.725221,
		-0.006190, -0.972516, -0.232755,
		36.380718, 45.587650, 21.511066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645531, 46.096100, 21.546881>,  <36.385052, 46.268414, 21.673994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645531, 46.096100, 21.546881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.832069, 45.748169, 21.611279>,  <35.943993, 45.539410, 21.649918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.832069, 45.748169, 21.611279>,  <35.645531, 46.096100, 21.546881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832069, 45.748169, 21.611279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607867, -0.182884, 0.772691,
		-0.642666, -0.458203, -0.614028,
		0.466345, -0.869829, 0.160993,
		35.971973, 45.487221, 21.659576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164845, 45.595165, 21.554609>,  <35.645531, 46.096100, 21.546881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164845, 45.595165, 21.554609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.468933, 45.442463, 21.764877>,  <35.651386, 45.350842, 21.891037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.468933, 45.442463, 21.764877>,  <35.164845, 45.595165, 21.554609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468933, 45.442463, 21.764877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646709, -0.367584, 0.668318,
		-0.061906, -0.848024, -0.526329,
		0.760220, -0.381755, 0.525669,
		35.696999, 45.327934, 21.922579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830818, 45.018078, 21.855682>,  <35.164845, 45.595165, 21.554609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830818, 45.018078, 21.855682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174576, 45.057224, 22.056429>,  <35.380829, 45.080711, 22.176876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174576, 45.057224, 22.056429>,  <34.830818, 45.018078, 21.855682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174576, 45.057224, 22.056429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421780, -0.419166, 0.803991,
		0.289049, -0.902619, -0.318949,
		0.859391, 0.097867, 0.501866,
		35.432392, 45.086586, 22.206989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767143, 44.507122, 22.333721>,  <34.830818, 45.018078, 21.855682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767143, 44.507122, 22.333721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054256, 44.740734, 22.485353>,  <35.226524, 44.880901, 22.576332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054256, 44.740734, 22.485353>,  <34.767143, 44.507122, 22.333721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054256, 44.740734, 22.485353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264051, -0.275447, 0.924341,
		0.644259, -0.763570, -0.043497,
		0.717780, 0.584029, 0.379081,
		35.269592, 44.915943, 22.599077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192287, 44.037453, 22.860060>,  <34.767143, 44.507122, 22.333721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192287, 44.037453, 22.860060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261452, 44.416058, 22.969028>,  <35.302952, 44.643219, 23.034410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261452, 44.416058, 22.969028>,  <35.192287, 44.037453, 22.860060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261452, 44.416058, 22.969028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317554, -0.208244, 0.925091,
		0.932341, -0.246471, 0.264560,
		0.172915, 0.946513, 0.272422,
		35.313328, 44.700012, 23.050755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586918, 43.943443, 23.420593>,  <35.192287, 44.037453, 22.860060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586918, 43.943443, 23.420593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425259, 44.308914, 23.403366>,  <35.328262, 44.528198, 23.393030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425259, 44.308914, 23.403366>,  <35.586918, 43.943443, 23.420593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425259, 44.308914, 23.403366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277625, -0.077663, 0.957545,
		0.871546, 0.398943, 0.285048,
		-0.404144, 0.913681, -0.043070,
		35.304016, 44.583019, 23.390446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835117, 44.209984, 23.978630>,  <35.586918, 43.943443, 23.420593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835117, 44.209984, 23.978630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497166, 44.399723, 23.879696>,  <35.294395, 44.513565, 23.820335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497166, 44.399723, 23.879696>,  <35.835117, 44.209984, 23.978630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497166, 44.399723, 23.879696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315604, -0.068655, 0.946404,
		0.431943, 0.877656, 0.207711,
		-0.844878, 0.474347, -0.247337,
		35.243702, 44.542027, 23.805494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668812, 44.788391, 24.487734>,  <35.835117, 44.209984, 23.978630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668812, 44.788391, 24.487734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316330, 44.714733, 24.313576>,  <35.104839, 44.670540, 24.209080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316330, 44.714733, 24.313576>,  <35.668812, 44.788391, 24.487734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316330, 44.714733, 24.313576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408809, -0.165667, 0.897457,
		-0.237390, 0.968838, 0.070708,
		-0.881205, -0.184141, -0.435397,
		35.051968, 44.659492, 24.182957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908237, 45.284248, 24.854824>,  <35.668812, 44.788391, 24.487734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908237, 45.284248, 24.854824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277557, 45.222553, 24.995522>,  <36.499149, 45.185535, 25.079941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277557, 45.222553, 24.995522>,  <35.908237, 45.284248, 24.854824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277557, 45.222553, 24.995522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382154, 0.277512, -0.881445,
		0.038336, 0.948261, 0.315169,
		0.923303, -0.154234, 0.351743,
		36.554550, 45.176285, 25.101044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197018, 45.840782, 24.620867>,  <35.908237, 45.284248, 24.854824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197018, 45.840782, 24.620867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505104, 45.599770, 24.704508>,  <36.689957, 45.455162, 24.754692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505104, 45.599770, 24.704508>,  <36.197018, 45.840782, 24.620867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505104, 45.599770, 24.704508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388304, 0.182921, -0.903194,
		0.505955, 0.776848, 0.374854,
		0.770214, -0.602533, 0.209103,
		36.736168, 45.419010, 24.767239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759384, 46.209129, 24.686073>,  <36.197018, 45.840782, 24.620867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759384, 46.209129, 24.686073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933937, 45.856712, 24.613052>,  <37.038670, 45.645260, 24.569241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933937, 45.856712, 24.613052>,  <36.759384, 46.209129, 24.686073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933937, 45.856712, 24.613052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566658, 0.426710, -0.704852,
		0.698905, 0.204143, 0.685462,
		0.436384, -0.881047, -0.182551,
		37.064854, 45.592400, 24.558287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438625, 46.313629, 24.663553>,  <36.759384, 46.209129, 24.686073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438625, 46.313629, 24.663553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433979, 45.960598, 24.475540>,  <37.431190, 45.748779, 24.362732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433979, 45.960598, 24.475540>,  <37.438625, 46.313629, 24.663553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433979, 45.960598, 24.475540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648451, 0.351173, -0.675417,
		0.761168, -0.312636, 0.568228,
		-0.011613, -0.882574, -0.470031,
		37.430496, 45.695827, 24.334532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197803, 46.155556, 24.526356>,  <37.438625, 46.313629, 24.663553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197803, 46.155556, 24.526356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000633, 45.922211, 24.268143>,  <37.882332, 45.782204, 24.113214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000633, 45.922211, 24.268143>,  <38.197803, 46.155556, 24.526356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000633, 45.922211, 24.268143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613240, 0.293379, -0.733393,
		0.617222, -0.757373, 0.213129,
		-0.492924, -0.583365, -0.645531,
		37.852757, 45.747200, 24.074484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714935, 45.947788, 24.141562>,  <38.197803, 46.155556, 24.526356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714935, 45.947788, 24.141562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404144, 45.827450, 23.920364>,  <38.217670, 45.755249, 23.787647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404144, 45.827450, 23.920364>,  <38.714935, 45.947788, 24.141562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404144, 45.827450, 23.920364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568820, 0.040863, -0.821446,
		0.269723, -0.952798, 0.139377,
		-0.776977, -0.300843, -0.552992,
		38.171051, 45.737198, 23.754467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005901, 45.478100, 23.673128>,  <38.714935, 45.947788, 24.141562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005901, 45.478100, 23.673128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657825, 45.622456, 23.538952>,  <38.448978, 45.709068, 23.458447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657825, 45.622456, 23.538952>,  <39.005901, 45.478100, 23.673128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657825, 45.622456, 23.538952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375214, 0.044140, -0.925887,
		-0.319341, -0.931562, -0.173823,
		-0.870193, 0.360895, -0.335440,
		38.396767, 45.730724, 23.438320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369892, 44.849041, 23.728951>,  <39.005901, 45.478100, 23.673128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369892, 44.849041, 23.728951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.747303, 44.862724, 23.860760>,  <39.973751, 44.870934, 23.939846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.747303, 44.862724, 23.860760>,  <39.369892, 44.849041, 23.728951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747303, 44.862724, 23.860760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323035, -0.125730, 0.937998,
		0.073519, -0.991474, -0.107579,
		0.943527, 0.034209, 0.329524,
		40.030361, 44.872986, 23.959618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283360, 44.225937, 24.161488>,  <39.369892, 44.849041, 23.728951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283360, 44.225937, 24.161488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.595062, 44.448715, 24.276421>,  <39.782085, 44.582382, 24.345381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.595062, 44.448715, 24.276421>,  <39.283360, 44.225937, 24.161488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595062, 44.448715, 24.276421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309900, -0.056049, 0.949116,
		0.544715, -0.828652, 0.128922,
		0.779261, 0.556951, 0.287330,
		39.828842, 44.615799, 24.362619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601238, 43.838394, 24.712595>,  <39.283360, 44.225937, 24.161488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601238, 43.838394, 24.712595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739429, 44.210861, 24.759209>,  <39.822346, 44.434341, 24.787176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739429, 44.210861, 24.759209>,  <39.601238, 43.838394, 24.712595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739429, 44.210861, 24.759209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035080, -0.136908, 0.989962,
		0.937771, -0.337922, -0.079964,
		0.345478, 0.931163, 0.116535,
		39.843071, 44.490211, 24.794168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081127, 43.839931, 25.355587>,  <39.601238, 43.838394, 24.712595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081127, 43.839931, 25.355587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.967861, 44.219254, 25.298267>,  <39.899902, 44.446846, 25.263876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.967861, 44.219254, 25.298267>,  <40.081127, 43.839931, 25.355587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967861, 44.219254, 25.298267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061112, 0.166950, 0.984070,
		0.957122, 0.269899, -0.105227,
		-0.283167, 0.948305, -0.143297,
		39.882912, 44.503746, 25.255278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464035, 44.253635, 25.860064>,  <40.081127, 43.839931, 25.355587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464035, 44.253635, 25.860064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.161709, 44.491211, 25.749804>,  <39.980312, 44.633759, 25.683647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.161709, 44.491211, 25.749804>,  <40.464035, 44.253635, 25.860064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161709, 44.491211, 25.749804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113296, 0.296001, 0.948445,
		0.644913, 0.748075, -0.156430,
		-0.755811, 0.593942, -0.275649,
		39.934967, 44.669392, 25.667109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388554, 44.703796, 26.434301>,  <40.464035, 44.253635, 25.860064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388554, 44.703796, 26.434301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049271, 44.773201, 26.234123>,  <39.845703, 44.814842, 26.114017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049271, 44.773201, 26.234123>,  <40.388554, 44.703796, 26.434301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049271, 44.773201, 26.234123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492863, 0.087508, 0.865695,
		0.193998, 0.980937, 0.011290,
		-0.848204, 0.173507, -0.500444,
		39.794807, 44.825253, 26.083990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079372, 45.281410, 26.705221>,  <40.388554, 44.703796, 26.434301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079372, 45.281410, 26.705221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768562, 45.102097, 26.528461>,  <39.582077, 44.994507, 26.422405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768562, 45.102097, 26.528461>,  <40.079372, 45.281410, 26.705221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768562, 45.102097, 26.528461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462911, -0.068775, 0.883733,
		-0.426559, 0.891239, -0.154078,
		-0.777021, -0.448288, -0.441901,
		39.535458, 44.967609, 26.395891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.416763, 41.941780, 20.242844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.044739, 42.081230, 20.196459>,  <39.821526, 42.164902, 20.168629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.044739, 42.081230, 20.196459>,  <40.416763, 41.941780, 20.242844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044739, 42.081230, 20.196459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225763, -0.293286, 0.928986,
		0.289857, 0.890193, 0.351480,
		-0.930061, 0.348624, -0.115962,
		39.765720, 42.185818, 20.161671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223434, 42.224869, 20.932117>,  <40.416763, 41.941780, 20.242844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223434, 42.224869, 20.932117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887909, 42.110607, 20.746733>,  <39.686596, 42.042049, 20.635502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887909, 42.110607, 20.746733>,  <40.223434, 42.224869, 20.932117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887909, 42.110607, 20.746733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359605, -0.348442, 0.865605,
		-0.408757, 0.892742, 0.189553,
		-0.838810, -0.285658, -0.463463,
		39.636265, 42.024910, 20.607695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650620, 42.565212, 21.352636>,  <40.223434, 42.224869, 20.932117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650620, 42.565212, 21.352636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481178, 42.272663, 21.138849>,  <39.379513, 42.097134, 21.010578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481178, 42.272663, 21.138849>,  <39.650620, 42.565212, 21.352636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481178, 42.272663, 21.138849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418938, -0.364951, 0.831445,
		-0.803151, 0.576110, -0.151806,
		-0.423603, -0.731374, -0.534466,
		39.354099, 42.053249, 20.978510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042545, 42.494839, 21.633150>,  <39.650620, 42.565212, 21.352636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042545, 42.494839, 21.633150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115330, 42.153057, 21.438503>,  <39.159000, 41.947987, 21.321716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115330, 42.153057, 21.438503>,  <39.042545, 42.494839, 21.633150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115330, 42.153057, 21.438503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359542, -0.518424, 0.775864,
		-0.915215, 0.033781, -0.401547,
		0.181962, -0.854456, -0.486615,
		39.169918, 41.896721, 21.292519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425129, 42.177616, 21.627306>,  <39.042545, 42.494839, 21.633150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425129, 42.177616, 21.627306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691067, 41.883205, 21.576340>,  <38.850632, 41.706558, 21.545761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691067, 41.883205, 21.576340>,  <38.425129, 42.177616, 21.627306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691067, 41.883205, 21.576340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457234, -0.535882, 0.709766,
		-0.590689, -0.413628, -0.692818,
		0.664848, -0.736032, -0.127415,
		38.890522, 41.662395, 21.538115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053810, 41.571629, 21.657539>,  <38.425129, 42.177616, 21.627306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053810, 41.571629, 21.657539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.433849, 41.461521, 21.716236>,  <38.661873, 41.395454, 21.751453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.433849, 41.461521, 21.716236>,  <38.053810, 41.571629, 21.657539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433849, 41.461521, 21.716236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271544, -0.498310, 0.823378,
		-0.153530, -0.822139, -0.548193,
		0.950101, -0.275271, 0.146742,
		38.718880, 41.378941, 21.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973923, 40.856987, 21.773607>,  <38.053810, 41.571629, 21.657539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973923, 40.856987, 21.773607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.329594, 40.975227, 21.913313>,  <38.542995, 41.046173, 21.997137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.329594, 40.975227, 21.913313>,  <37.973923, 40.856987, 21.773607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329594, 40.975227, 21.913313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044020, -0.704506, 0.708332,
		0.455447, -0.645205, -0.613416,
		0.889174, 0.295605, 0.349267,
		38.596344, 41.063908, 22.018093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318249, 40.262516, 21.998949>,  <37.973923, 40.856987, 21.773607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318249, 40.262516, 21.998949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.544529, 40.535435, 22.184183>,  <38.680298, 40.699188, 22.295324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.544529, 40.535435, 22.184183>,  <38.318249, 40.262516, 21.998949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544529, 40.535435, 22.184183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012306, -0.554534, 0.832070,
		0.824519, -0.476402, -0.305304,
		0.565701, 0.682300, 0.463086,
		38.714241, 40.740124, 22.323109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856899, 39.964794, 22.414484>,  <38.318249, 40.262516, 21.998949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856899, 39.964794, 22.414484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832729, 40.329941, 22.575991>,  <38.818226, 40.549026, 22.672895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832729, 40.329941, 22.575991>,  <38.856899, 39.964794, 22.414484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832729, 40.329941, 22.575991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016593, -0.405368, 0.914003,
		0.998035, 0.048527, 0.039641,
		-0.060423, 0.912865, 0.403766,
		38.814602, 40.603802, 22.697121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395374, 39.968067, 22.771229>,  <38.856899, 39.964794, 22.414484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395374, 39.968067, 22.771229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146465, 40.247112, 22.913279>,  <38.997120, 40.414539, 22.998508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146465, 40.247112, 22.913279>,  <39.395374, 39.968067, 22.771229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146465, 40.247112, 22.913279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045633, -0.485218, 0.873202,
		0.781469, 0.527165, 0.333772,
		-0.622274, 0.697611, 0.355126,
		38.959782, 40.456394, 23.019817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545216, 39.917267, 23.445091>,  <39.395374, 39.968067, 22.771229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545216, 39.917267, 23.445091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.201286, 40.118710, 23.411440>,  <38.994926, 40.239574, 23.391249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.201286, 40.118710, 23.411440>,  <39.545216, 39.917267, 23.445091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201286, 40.118710, 23.411440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326673, -0.415968, 0.848678,
		0.392405, 0.757200, 0.522175,
		-0.859828, 0.503606, -0.084128,
		38.943336, 40.269791, 23.386202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394669, 40.302914, 23.994282>,  <39.545216, 39.917267, 23.445091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394669, 40.302914, 23.994282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.029175, 40.232674, 23.847717>,  <38.809879, 40.190529, 23.759779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.029175, 40.232674, 23.847717>,  <39.394669, 40.302914, 23.994282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029175, 40.232674, 23.847717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207842, -0.572876, 0.792853,
		-0.349136, 0.800610, 0.486957,
		-0.913732, -0.175604, -0.366412,
		38.755054, 40.179993, 23.737793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580177, 40.836914, 24.449097>,  <39.394669, 40.302914, 23.994282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580177, 40.836914, 24.449097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827026, 41.003010, 24.716452>,  <39.975136, 41.102665, 24.876863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.827026, 41.003010, 24.716452>,  <39.580177, 40.836914, 24.449097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827026, 41.003010, 24.716452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598569, 0.303637, -0.741296,
		-0.510760, 0.857545, -0.061168,
		0.617122, 0.415238, 0.668385,
		40.012161, 41.127583, 24.916967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781445, 41.382191, 24.157604>,  <39.580177, 40.836914, 24.449097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781445, 41.382191, 24.157604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067425, 41.371361, 24.437063>,  <40.239014, 41.364864, 24.604738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067425, 41.371361, 24.437063>,  <39.781445, 41.382191, 24.157604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067425, 41.371361, 24.437063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616424, 0.495966, -0.611588,
		-0.329947, 0.867920, 0.371281,
		0.714952, -0.027075, 0.698649,
		40.281910, 41.363239, 24.646658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080456, 42.067230, 24.247299>,  <39.781445, 41.382191, 24.157604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080456, 42.067230, 24.247299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361870, 41.812283, 24.373030>,  <40.530720, 41.659313, 24.448467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361870, 41.812283, 24.373030>,  <40.080456, 42.067230, 24.247299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361870, 41.812283, 24.373030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607416, 0.309717, -0.731520,
		0.368894, 0.705577, 0.605044,
		0.703536, -0.637366, 0.314326,
		40.572929, 41.621071, 24.467327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783241, 42.392220, 24.212366>,  <40.080456, 42.067230, 24.247299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783241, 42.392220, 24.212366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.860146, 41.999908, 24.199018>,  <40.906288, 41.764523, 24.191010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.860146, 41.999908, 24.199018>,  <40.783241, 42.392220, 24.212366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860146, 41.999908, 24.199018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677048, 0.157181, -0.718958,
		0.710382, 0.115631, 0.694253,
		0.192257, -0.980777, -0.033371,
		40.917824, 41.705677, 24.189007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566845, 42.278503, 24.246693>,  <40.783241, 42.392220, 24.212366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566845, 42.278503, 24.246693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.446602, 41.939362, 24.071983>,  <41.374454, 41.735874, 23.967157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.446602, 41.939362, 24.071983>,  <41.566845, 42.278503, 24.246693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446602, 41.939362, 24.071983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558913, 0.214477, -0.801009,
		0.772820, -0.484910, 0.409405,
		-0.300609, -0.847857, -0.436774,
		41.356419, 41.685005, 23.940950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186226, 42.115803, 23.954506>,  <41.566845, 42.278503, 24.246693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186226, 42.115803, 23.954506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.906864, 41.875839, 23.798386>,  <41.739246, 41.731861, 23.704714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.906864, 41.875839, 23.798386>,  <42.186226, 42.115803, 23.954506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906864, 41.875839, 23.798386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549127, -0.099416, -0.829805,
		0.459005, -0.793867, 0.398859,
		-0.698408, -0.599909, -0.390301,
		41.697342, 41.695866, 23.681295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623207, 41.636261, 23.620743>,  <42.186226, 42.115803, 23.954506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623207, 41.636261, 23.620743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256618, 41.651611, 23.461443>,  <42.036663, 41.660820, 23.365864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256618, 41.651611, 23.461443>,  <42.623207, 41.636261, 23.620743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256618, 41.651611, 23.461443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400052, 0.102108, -0.910787,
		0.005711, -0.994033, -0.108932,
		-0.916475, 0.038377, -0.398248,
		41.981678, 41.663124, 23.341969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788437, 41.234425, 23.043770>,  <42.623207, 41.636261, 23.620743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788437, 41.234425, 23.043770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.456150, 41.438023, 22.953583>,  <42.256779, 41.560181, 22.899469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.456150, 41.438023, 22.953583>,  <42.788437, 41.234425, 23.043770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456150, 41.438023, 22.953583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357022, 0.176345, -0.917299,
		-0.427144, -0.842510, -0.328216,
		-0.830713, 0.508999, -0.225470,
		42.206936, 41.590721, 22.885942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606697, 41.121311, 22.311024>,  <42.788437, 41.234425, 23.043770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606697, 41.121311, 22.311024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.433315, 41.464767, 22.420462>,  <42.329285, 41.670841, 22.486124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.433315, 41.464767, 22.420462>,  <42.606697, 41.121311, 22.311024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433315, 41.464767, 22.420462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275756, 0.415410, -0.866829,
		-0.857947, -0.300288, -0.416838,
		-0.433457, 0.858639, 0.273593,
		42.303276, 41.722359, 22.502539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242779, 41.384727, 21.704264>,  <42.606697, 41.121311, 22.311024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242779, 41.384727, 21.704264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.261311, 41.690559, 21.961411>,  <42.272430, 41.874058, 22.115698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.261311, 41.690559, 21.961411>,  <42.242779, 41.384727, 21.704264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261311, 41.690559, 21.961411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141038, 0.632104, -0.761941,
		-0.988919, 0.125972, -0.078547,
		0.046333, 0.764576, 0.642866,
		42.275211, 41.919933, 22.154270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809307, 41.865673, 21.430248>,  <42.242779, 41.384727, 21.704264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809307, 41.865673, 21.430248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056530, 42.059990, 21.677479>,  <42.204865, 42.176579, 21.825817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056530, 42.059990, 21.677479>,  <41.809307, 41.865673, 21.430248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056530, 42.059990, 21.677479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193677, 0.667893, -0.718615,
		-0.761903, 0.563852, 0.318709,
		0.618056, 0.485788, 0.618075,
		42.241947, 42.205727, 21.862902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673367, 42.615509, 21.268042>,  <41.809307, 41.865673, 21.430248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673367, 42.615509, 21.268042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021427, 42.606861, 21.464962>,  <42.230263, 42.601673, 21.583115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021427, 42.606861, 21.464962>,  <41.673367, 42.615509, 21.268042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021427, 42.606861, 21.464962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375388, 0.676297, -0.633803,
		-0.319239, 0.736312, 0.596600,
		0.870156, -0.021622, 0.492302,
		42.282475, 42.600376, 21.612652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865158, 43.317806, 21.541183>,  <41.673367, 42.615509, 21.268042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865158, 43.317806, 21.541183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.219219, 43.132404, 21.524872>,  <42.431656, 43.021164, 21.515085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.219219, 43.132404, 21.524872>,  <41.865158, 43.317806, 21.541183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219219, 43.132404, 21.524872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298413, 0.632739, -0.714557,
		0.357006, 0.620323, 0.698388,
		0.885153, -0.463509, -0.040779,
		42.484764, 42.993351, 21.512638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398457, 43.868835, 21.399944>,  <41.865158, 43.317806, 21.541183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398457, 43.868835, 21.399944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.594986, 43.529335, 21.321737>,  <42.712902, 43.325634, 21.274813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.594986, 43.529335, 21.321737>,  <42.398457, 43.868835, 21.399944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594986, 43.529335, 21.321737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364932, 0.404430, -0.838606,
		0.790841, 0.340673, 0.508441,
		0.491320, -0.848751, -0.195517,
		42.742382, 43.274712, 21.263083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838696, 44.002567, 21.936832>,  <42.398457, 43.868835, 21.399944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838696, 44.002567, 21.936832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731892, 44.377876, 21.848883>,  <41.667809, 44.603062, 21.796112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731892, 44.377876, 21.848883>,  <41.838696, 44.002567, 21.936832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731892, 44.377876, 21.848883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534747, 0.045560, 0.843783,
		0.801719, 0.342873, 0.489576,
		-0.267005, 0.938276, -0.219877,
		41.651791, 44.659359, 21.782919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851120, 44.243423, 22.538015>,  <41.838696, 44.002567, 21.936832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851120, 44.243423, 22.538015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.651642, 44.511948, 22.318691>,  <41.531956, 44.673061, 22.187096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.651642, 44.511948, 22.318691>,  <41.851120, 44.243423, 22.538015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651642, 44.511948, 22.318691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572439, 0.219929, 0.789902,
		0.650860, 0.707794, 0.274608,
		-0.498693, 0.671312, -0.548312,
		41.502033, 44.713341, 22.154198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904171, 44.914528, 22.917391>,  <41.851120, 44.243423, 22.538015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904171, 44.914528, 22.917391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587910, 44.917110, 22.672499>,  <41.398151, 44.918659, 22.525564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587910, 44.917110, 22.672499>,  <41.904171, 44.914528, 22.917391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587910, 44.917110, 22.672499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578978, 0.317323, 0.751059,
		0.199127, 0.948296, -0.247152,
		-0.790653, 0.006461, -0.612230,
		41.350716, 44.919048, 22.488831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569069, 45.586906, 23.016809>,  <41.904171, 44.914528, 22.917391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569069, 45.586906, 23.016809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335075, 45.291843, 22.881956>,  <41.194679, 45.114807, 22.801044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335075, 45.291843, 22.881956>,  <41.569069, 45.586906, 23.016809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335075, 45.291843, 22.881956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692540, 0.237967, 0.681000,
		-0.422116, 0.631853, -0.650062,
		-0.584985, -0.737654, -0.337134,
		41.159580, 45.070549, 22.780815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971203, 45.883831, 23.056049>,  <41.569069, 45.586906, 23.016809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971203, 45.883831, 23.056049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.871284, 45.498951, 23.012636>,  <40.811333, 45.268024, 22.986588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.871284, 45.498951, 23.012636>,  <40.971203, 45.883831, 23.056049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871284, 45.498951, 23.012636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674887, 0.092632, 0.732084,
		-0.694354, 0.256123, -0.672513,
		-0.249800, -0.962196, -0.108534,
		40.796345, 45.210293, 22.980076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223969, 45.831249, 23.147942>,  <40.971203, 45.883831, 23.056049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223969, 45.831249, 23.147942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.354729, 45.457256, 23.203003>,  <40.433186, 45.232861, 23.236040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.354729, 45.457256, 23.203003>,  <40.223969, 45.831249, 23.147942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354729, 45.457256, 23.203003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624864, -0.104562, 0.773700,
		-0.709002, -0.338933, -0.618417,
		0.326896, -0.934982, 0.137652,
		40.452797, 45.176762, 23.244299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646175, 45.251255, 23.215668>,  <40.223969, 45.831249, 23.147942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646175, 45.251255, 23.215668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966331, 45.134796, 23.425278>,  <40.158424, 45.064919, 23.551043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966331, 45.134796, 23.425278>,  <39.646175, 45.251255, 23.215668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966331, 45.134796, 23.425278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544189, 0.013777, 0.838849,
		-0.251451, -0.956578, -0.147414,
		0.800394, -0.291151, 0.524024,
		40.206451, 45.047451, 23.582485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955643, 45.228283, 22.972589>,  <39.646175, 45.251255, 23.215668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955643, 45.228283, 22.972589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713753, 45.546207, 22.992901>,  <38.568619, 45.736961, 23.005087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713753, 45.546207, 22.992901>,  <38.955643, 45.228283, 22.972589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713753, 45.546207, 22.992901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359605, 0.329377, -0.873038,
		-0.710626, -0.509690, -0.485002,
		-0.604727, 0.794813, 0.050777,
		38.532333, 45.784653, 23.008133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648785, 45.274612, 22.300877>,  <38.955643, 45.228283, 22.972589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648785, 45.274612, 22.300877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.591270, 45.639256, 22.454910>,  <38.556763, 45.858044, 22.547331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.591270, 45.639256, 22.454910>,  <38.648785, 45.274612, 22.300877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591270, 45.639256, 22.454910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388951, 0.409872, -0.825059,
		-0.909969, 0.031149, -0.413505,
		-0.143785, 0.911611, 0.385086,
		38.548134, 45.912739, 22.570436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324261, 45.642933, 21.755173>,  <38.648785, 45.274612, 22.300877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324261, 45.642933, 21.755173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501865, 45.900887, 22.004000>,  <38.608429, 46.055660, 22.153296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501865, 45.900887, 22.004000>,  <38.324261, 45.642933, 21.755173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501865, 45.900887, 22.004000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440412, 0.447530, -0.778302,
		-0.780312, 0.619545, -0.085306,
		0.444016, 0.644888, 0.622068,
		38.635071, 46.094353, 22.190620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160591, 46.388783, 21.493006>,  <38.324261, 45.642933, 21.755173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160591, 46.388783, 21.493006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.490822, 46.378971, 21.718508>,  <38.688961, 46.373085, 21.853809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.490822, 46.378971, 21.718508>,  <38.160591, 46.388783, 21.493006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490822, 46.378971, 21.718508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522150, 0.412016, -0.746728,
		-0.213960, 0.910846, 0.352959,
		0.825579, -0.024528, 0.563753,
		38.738495, 46.371613, 21.887634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493401, 46.951637, 21.268883>,  <38.160591, 46.388783, 21.493006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493401, 46.951637, 21.268883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777161, 46.739330, 21.454369>,  <38.947418, 46.611946, 21.565660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777161, 46.739330, 21.454369>,  <38.493401, 46.951637, 21.268883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777161, 46.739330, 21.454369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675089, 0.322691, -0.663419,
		0.202487, 0.783680, 0.587235,
		0.709404, -0.530770, 0.463713,
		38.989983, 46.580101, 21.593483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082527, 47.397842, 21.291716>,  <38.493401, 46.951637, 21.268883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082527, 47.397842, 21.291716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.255844, 47.049156, 21.383247>,  <39.359833, 46.839943, 21.438168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.255844, 47.049156, 21.383247>,  <39.082527, 47.397842, 21.291716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255844, 47.049156, 21.383247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735100, 0.194933, -0.649330,
		0.521426, 0.449564, 0.725264,
		0.433293, -0.871718, 0.228832,
		39.385834, 46.787640, 21.451897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841164, 47.540577, 21.465492>,  <39.082527, 47.397842, 21.291716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841164, 47.540577, 21.465492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817589, 47.149719, 21.383795>,  <39.803444, 46.915203, 21.334776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817589, 47.149719, 21.383795>,  <39.841164, 47.540577, 21.465492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817589, 47.149719, 21.383795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773995, 0.084483, -0.627530,
		0.630443, -0.195071, 0.751325,
		-0.058939, -0.977144, -0.204246,
		39.799908, 46.856575, 21.322521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535507, 47.214222, 21.619638>,  <39.841164, 47.540577, 21.465492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535507, 47.214222, 21.619638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338814, 47.008842, 21.338335>,  <40.220798, 46.885612, 21.169554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338814, 47.008842, 21.338335>,  <40.535507, 47.214222, 21.619638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338814, 47.008842, 21.338335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823749, -0.012553, -0.566815,
		0.282204, -0.858027, 0.429128,
		-0.491730, -0.513452, -0.703256,
		40.191296, 46.854809, 21.127357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141853, 46.979382, 21.202688>,  <40.535507, 47.214222, 21.619638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141853, 46.979382, 21.202688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.821220, 46.883427, 20.983627>,  <40.628841, 46.825855, 20.852190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.821220, 46.883427, 20.983627>,  <41.141853, 46.979382, 21.202688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821220, 46.883427, 20.983627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579021, -0.083176, -0.811059,
		0.149009, -0.967232, 0.205570,
		-0.801580, -0.239884, -0.547654,
		40.580746, 46.811462, 20.819330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.960167, 40.909866, 33.780178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782251, 40.860531, 33.425339>,  <31.675503, 40.830929, 33.212433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782251, 40.860531, 33.425339>,  <31.960167, 40.909866, 33.780178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782251, 40.860531, 33.425339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710565, 0.554351, -0.433350,
		0.545217, -0.823092, -0.158926,
		-0.444788, -0.123343, -0.887102,
		31.648815, 40.823528, 33.159206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512657, 40.530228, 33.409554>,  <31.960167, 40.909866, 33.780178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512657, 40.530228, 33.409554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256824, 40.702625, 33.154942>,  <32.103325, 40.806065, 33.002174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256824, 40.702625, 33.154942>,  <32.512657, 40.530228, 33.409554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256824, 40.702625, 33.154942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768671, 0.349216, -0.535904,
		-0.008686, -0.832039, -0.554648,
		-0.639585, 0.430997, -0.636531,
		32.064949, 40.831924, 32.963982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647369, 40.294662, 32.795559>,  <32.512657, 40.530228, 33.409554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647369, 40.294662, 32.795559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478210, 40.653866, 32.746983>,  <32.376717, 40.869389, 32.717838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478210, 40.653866, 32.746983>,  <32.647369, 40.294662, 32.795559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478210, 40.653866, 32.746983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832234, 0.331860, -0.444134,
		-0.358533, -0.288891, -0.887692,
		-0.422896, 0.898004, -0.121442,
		32.351341, 40.923267, 32.710548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739376, 40.474556, 32.084343>,  <32.647369, 40.294662, 32.795559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739376, 40.474556, 32.084343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667736, 40.823517, 32.266258>,  <32.624752, 41.032894, 32.375408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667736, 40.823517, 32.266258>,  <32.739376, 40.474556, 32.084343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667736, 40.823517, 32.266258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713727, 0.433375, -0.550254,
		-0.677140, 0.226049, -0.700274,
		-0.179097, 0.872404, 0.454792,
		32.614006, 41.085239, 32.402695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453957, 40.718391, 31.553833>,  <32.739376, 40.474556, 32.084343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453957, 40.718391, 31.553833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.593750, 41.007633, 31.792154>,  <32.677628, 41.181179, 31.935146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.593750, 41.007633, 31.792154>,  <32.453957, 40.718391, 31.553833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593750, 41.007633, 31.792154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388116, 0.467047, -0.794502,
		-0.852775, 0.508907, -0.117422,
		0.349486, 0.723105, 0.595801,
		32.698597, 41.224564, 31.970894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387344, 41.342575, 31.149084>,  <32.453957, 40.718391, 31.553833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387344, 41.342575, 31.149084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638199, 41.480095, 31.428656>,  <32.788712, 41.562607, 31.596399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638199, 41.480095, 31.428656>,  <32.387344, 41.342575, 31.149084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638199, 41.480095, 31.428656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441953, 0.581830, -0.682753,
		-0.641389, 0.737073, 0.212942,
		0.627134, 0.343800, 0.698931,
		32.826340, 41.583237, 31.638334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324165, 42.142818, 31.142277>,  <32.387344, 41.342575, 31.149084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324165, 42.142818, 31.142277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659760, 42.042789, 31.335596>,  <32.861115, 41.982773, 31.451588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659760, 42.042789, 31.335596>,  <32.324165, 42.142818, 31.142277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659760, 42.042789, 31.335596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531184, 0.569169, -0.627607,
		-0.118131, 0.783269, 0.610356,
		0.838981, -0.250071, 0.483296,
		32.911453, 41.967770, 31.480585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698959, 42.804932, 31.112331>,  <32.324165, 42.142818, 31.142277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698959, 42.804932, 31.112331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964619, 42.519840, 31.202595>,  <33.124016, 42.348785, 31.256754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.964619, 42.519840, 31.202595>,  <32.698959, 42.804932, 31.112331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964619, 42.519840, 31.202595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698065, 0.483172, -0.528441,
		0.267602, 0.508489, 0.818430,
		0.664149, -0.712729, 0.225661,
		33.163864, 42.306023, 31.270292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285179, 43.111561, 31.419344>,  <32.698959, 42.804932, 31.112331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285179, 43.111561, 31.419344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439045, 42.760670, 31.304455>,  <33.531364, 42.550133, 31.235521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439045, 42.760670, 31.304455>,  <33.285179, 43.111561, 31.419344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439045, 42.760670, 31.304455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593861, 0.473410, -0.650547,
		0.706655, 0.079672, 0.703058,
		0.384665, -0.877232, -0.287224,
		33.554443, 42.497501, 31.218288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018665, 43.239719, 31.339237>,  <33.285179, 43.111561, 31.419344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018665, 43.239719, 31.339237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931164, 42.918976, 31.116825>,  <33.878662, 42.726528, 30.983377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931164, 42.918976, 31.116825>,  <34.018665, 43.239719, 31.339237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931164, 42.918976, 31.116825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602660, 0.337135, -0.723285,
		0.767429, -0.493319, 0.409498,
		-0.218754, -0.801858, -0.556031,
		33.865536, 42.678417, 30.950016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600193, 42.962223, 31.282604>,  <34.018665, 43.239719, 31.339237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600193, 42.962223, 31.282604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394192, 42.851147, 30.958220>,  <34.270592, 42.784500, 30.763588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394192, 42.851147, 30.958220>,  <34.600193, 42.962223, 31.282604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394192, 42.851147, 30.958220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754019, 0.303232, -0.582671,
		0.407713, -0.911557, 0.053222,
		-0.515000, -0.277693, -0.810963,
		34.239693, 42.767838, 30.714930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006676, 42.694969, 30.693804>,  <34.600193, 42.962223, 31.282604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006676, 42.694969, 30.693804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676357, 42.766556, 30.479874>,  <34.478165, 42.809505, 30.351517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676357, 42.766556, 30.479874>,  <35.006676, 42.694969, 30.693804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676357, 42.766556, 30.479874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557741, 0.399717, -0.727428,
		0.083596, -0.898998, -0.429899,
		-0.825795, 0.178963, -0.534823,
		34.428619, 42.820244, 30.319427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617493, 42.239868, 30.585781>,  <35.006676, 42.694969, 30.693804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617493, 42.239868, 30.585781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962891, 42.304817, 30.776781>,  <36.170132, 42.343788, 30.891380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962891, 42.304817, 30.776781>,  <35.617493, 42.239868, 30.585781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962891, 42.304817, 30.776781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374056, -0.428884, 0.822278,
		0.338309, -0.888647, -0.309603,
		0.863498, 0.162376, 0.477499,
		36.221939, 42.353531, 30.920031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699471, 41.607262, 30.928268>,  <35.617493, 42.239868, 30.585781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699471, 41.607262, 30.928268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949554, 41.854332, 31.119097>,  <36.099606, 42.002575, 31.233593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949554, 41.854332, 31.119097>,  <35.699471, 41.607262, 30.928268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949554, 41.854332, 31.119097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193265, -0.469702, 0.861411,
		0.756152, -0.630760, -0.174285,
		0.625206, 0.617675, 0.477070,
		36.137115, 42.039635, 31.262218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126949, 41.169506, 31.253990>,  <35.699471, 41.607262, 30.928268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126949, 41.169506, 31.253990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160458, 41.519253, 31.445183>,  <36.180561, 41.729099, 31.559898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160458, 41.519253, 31.445183>,  <36.126949, 41.169506, 31.253990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160458, 41.519253, 31.445183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074218, -0.472863, 0.878005,
		0.993717, -0.109027, 0.025281,
		0.083772, 0.874365, 0.477983,
		36.185589, 41.781563, 31.588577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589470, 40.961700, 31.853868>,  <36.126949, 41.169506, 31.253990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589470, 40.961700, 31.853868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404011, 41.294720, 31.975130>,  <36.292736, 41.494530, 32.047886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404011, 41.294720, 31.975130>,  <36.589470, 40.961700, 31.853868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404011, 41.294720, 31.975130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115245, -0.395911, 0.911029,
		0.878494, 0.387456, 0.279509,
		-0.463644, 0.832546, 0.303153,
		36.264919, 41.544483, 32.066074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923157, 41.242950, 32.546398>,  <36.589470, 40.961700, 31.853868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923157, 41.242950, 32.546398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555794, 41.401203, 32.546452>,  <36.335377, 41.496155, 32.546482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555794, 41.401203, 32.546452>,  <36.923157, 41.242950, 32.546398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555794, 41.401203, 32.546452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145348, -0.337725, 0.929955,
		0.367963, 0.854060, 0.367674,
		-0.918410, 0.395629, 0.000135,
		36.280270, 41.519894, 32.546494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793243, 41.605774, 33.210804>,  <36.923157, 41.242950, 32.546398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793243, 41.605774, 33.210804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419033, 41.562946, 33.076149>,  <36.194508, 41.537251, 32.995358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419033, 41.562946, 33.076149>,  <36.793243, 41.605774, 33.210804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419033, 41.562946, 33.076149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301549, -0.254324, 0.918906,
		-0.183998, 0.961175, 0.205641,
		-0.935528, -0.107066, -0.336636,
		36.138374, 41.530827, 32.975159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343006, 41.953465, 33.805283>,  <36.793243, 41.605774, 33.210804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343006, 41.953465, 33.805283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129086, 41.715645, 33.565117>,  <36.000732, 41.572952, 33.421017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129086, 41.715645, 33.565117>,  <36.343006, 41.953465, 33.805283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129086, 41.715645, 33.565117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326651, -0.509853, 0.795832,
		-0.779283, 0.621741, 0.078462,
		-0.534805, -0.594549, -0.600412,
		35.968643, 41.537281, 33.384995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720795, 41.893967, 34.179546>,  <36.343006, 41.953465, 33.805283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720795, 41.893967, 34.179546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759022, 41.607624, 33.902874>,  <35.781956, 41.435818, 33.736870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759022, 41.607624, 33.902874>,  <35.720795, 41.893967, 34.179546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759022, 41.607624, 33.902874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457373, -0.648746, 0.608226,
		-0.884125, 0.258232, -0.389408,
		0.095563, -0.715853, -0.691681,
		35.787689, 41.392868, 33.695370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144306, 41.528133, 34.222603>,  <35.720795, 41.893967, 34.179546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144306, 41.528133, 34.222603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415943, 41.282242, 34.062130>,  <35.578926, 41.134708, 33.965847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415943, 41.282242, 34.062130>,  <35.144306, 41.528133, 34.222603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415943, 41.282242, 34.062130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352006, -0.752299, 0.556899,
		-0.644149, -0.236968, -0.727268,
		0.679091, -0.614729, -0.401179,
		35.619671, 41.097824, 33.941776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729088, 40.932896, 34.084133>,  <35.144306, 41.528133, 34.222603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729088, 40.932896, 34.084133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086319, 40.756477, 34.048622>,  <35.300659, 40.650627, 34.027313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086319, 40.756477, 34.048622>,  <34.729088, 40.932896, 34.084133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086319, 40.756477, 34.048622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406280, -0.875400, 0.261937,
		-0.193245, -0.197862, -0.960993,
		0.893080, -0.441050, -0.088779,
		35.354244, 40.624161, 34.021988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684841, 40.238388, 33.683540>,  <34.729088, 40.932896, 34.084133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684841, 40.238388, 33.683540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.011532, 40.216885, 33.913349>,  <35.207546, 40.203983, 34.051235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.011532, 40.216885, 33.913349>,  <34.684841, 40.238388, 33.683540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011532, 40.216885, 33.913349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235552, -0.939977, 0.246897,
		0.526764, -0.336976, -0.780363,
		0.816722, -0.053759, 0.574521,
		35.256550, 40.200756, 34.085705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895927, 39.658398, 33.498970>,  <34.684841, 40.238388, 33.683540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895927, 39.658398, 33.498970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032722, 39.733250, 33.867325>,  <35.114799, 39.778160, 34.088337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032722, 39.733250, 33.867325>,  <34.895927, 39.658398, 33.498970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032722, 39.733250, 33.867325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358005, -0.880122, 0.311797,
		0.868836, -0.436312, -0.233999,
		0.341988, 0.187128, 0.920884,
		35.135319, 39.789387, 34.143589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208538, 39.007656, 33.670849>,  <34.895927, 39.658398, 33.498970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208538, 39.007656, 33.670849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166573, 39.212921, 34.011589>,  <35.141392, 39.336079, 34.216034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166573, 39.212921, 34.011589>,  <35.208538, 39.007656, 33.670849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166573, 39.212921, 34.011589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343890, -0.822459, 0.453103,
		0.933131, -0.245408, 0.262758,
		-0.104913, 0.513164, 0.851855,
		35.135098, 39.366871, 34.267147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534401, 38.526279, 34.100033>,  <35.208538, 39.007656, 33.670849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534401, 38.526279, 34.100033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289234, 38.768555, 34.302998>,  <35.142136, 38.913921, 34.424778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289234, 38.768555, 34.302998>,  <35.534401, 38.526279, 34.100033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289234, 38.768555, 34.302998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394484, -0.790986, 0.467680,
		0.684627, 0.086482, 0.723745,
		-0.612917, 0.605692, 0.507415,
		35.105358, 38.950264, 34.455223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690022, 38.438389, 34.832596>,  <35.534401, 38.526279, 34.100033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690022, 38.438389, 34.832596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316956, 38.562611, 34.759167>,  <35.093117, 38.637146, 34.715111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316956, 38.562611, 34.759167>,  <35.690022, 38.438389, 34.832596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316956, 38.562611, 34.759167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356651, -0.870285, 0.339711,
		-0.054259, 0.382306, 0.922441,
		-0.932661, 0.310558, -0.183571,
		35.037159, 38.655777, 34.704094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719475, 37.695042, 34.592793>,  <35.690022, 38.438389, 34.832596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719475, 37.695042, 34.592793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690926, 37.718002, 34.991112>,  <35.673798, 37.731777, 35.230103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690926, 37.718002, 34.991112>,  <35.719475, 37.695042, 34.592793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690926, 37.718002, 34.991112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718900, -0.695019, -0.011461,
		0.691440, -0.716697, 0.090867,
		-0.071369, 0.057400, 0.995797,
		35.669514, 37.735222, 35.289852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201355, 37.895988, 33.997288>,  <35.719475, 37.695042, 34.592793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201355, 37.895988, 33.997288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981911, 37.667675, 33.752914>,  <35.850243, 37.530689, 33.606293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981911, 37.667675, 33.752914>,  <36.201355, 37.895988, 33.997288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981911, 37.667675, 33.752914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569260, 0.280167, -0.772949,
		0.612345, -0.771828, 0.171218,
		-0.548613, -0.570779, -0.610929,
		35.817326, 37.496441, 33.569637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685299, 37.634701, 33.626675>,  <36.201355, 37.895988, 33.997288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685299, 37.634701, 33.626675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347115, 37.582886, 33.419437>,  <36.144203, 37.551796, 33.295094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347115, 37.582886, 33.419437>,  <36.685299, 37.634701, 33.626675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347115, 37.582886, 33.419437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467865, 0.288111, -0.835521,
		0.257492, -0.948797, -0.182984,
		-0.845458, -0.129528, -0.518095,
		36.093479, 37.544025, 33.264008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824806, 37.109440, 33.072929>,  <36.685299, 37.634701, 33.626675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824806, 37.109440, 33.072929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529121, 37.351151, 32.953995>,  <36.351711, 37.496178, 32.882633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529121, 37.351151, 32.953995>,  <36.824806, 37.109440, 33.072929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529121, 37.351151, 32.953995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478256, 0.160173, -0.863490,
		-0.474162, -0.780509, -0.407402,
		-0.739217, 0.604277, -0.297335,
		36.307358, 37.532433, 32.864796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756298, 37.029057, 32.314812>,  <36.824806, 37.109440, 33.072929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756298, 37.029057, 32.314812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532810, 37.353691, 32.383114>,  <36.398720, 37.548473, 32.424095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532810, 37.353691, 32.383114>,  <36.756298, 37.029057, 32.314812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532810, 37.353691, 32.383114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369278, 0.427795, -0.825000,
		-0.742609, -0.397886, -0.538719,
		-0.558718, 0.811589, 0.170754,
		36.365196, 37.597168, 32.434341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598457, 37.269203, 31.687849>,  <36.756298, 37.029057, 32.314812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598457, 37.269203, 31.687849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532570, 37.604996, 31.894979>,  <36.493038, 37.806469, 32.019257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532570, 37.604996, 31.894979>,  <36.598457, 37.269203, 31.687849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532570, 37.604996, 31.894979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253489, 0.543392, -0.800293,
		-0.953212, -0.000556, -0.302303,
		-0.164714, 0.839479, 0.517827,
		36.483154, 37.856838, 32.050327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231705, 37.656208, 31.260336>,  <36.598457, 37.269203, 31.687849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231705, 37.656208, 31.260336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387280, 37.924477, 31.512980>,  <36.480625, 38.085438, 31.664566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387280, 37.924477, 31.512980>,  <36.231705, 37.656208, 31.260336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387280, 37.924477, 31.512980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280415, 0.566877, -0.774608,
		-0.877551, 0.478387, 0.032414,
		0.388937, 0.670669, 0.631610,
		36.503960, 38.125679, 31.702463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916027, 38.353062, 31.038898>,  <36.231705, 37.656208, 31.260336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916027, 38.353062, 31.038898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250843, 38.396317, 31.253439>,  <36.451733, 38.422268, 31.382164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250843, 38.396317, 31.253439>,  <35.916027, 38.353062, 31.038898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250843, 38.396317, 31.253439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407250, 0.531517, -0.742722,
		-0.365395, 0.840117, 0.400862,
		0.837039, 0.108135, 0.536351,
		36.501953, 38.428757, 31.414345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016750, 39.026585, 31.117123>,  <35.916027, 38.353062, 31.038898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016750, 39.026585, 31.117123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388515, 38.894840, 31.183708>,  <36.611576, 38.815796, 31.223660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388515, 38.894840, 31.183708>,  <36.016750, 39.026585, 31.117123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388515, 38.894840, 31.183708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350334, 0.645681, -0.678499,
		0.115985, 0.688927, 0.715491,
		0.929416, -0.329357, 0.166465,
		36.667339, 38.796032, 31.233648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474873, 39.724411, 31.204197>,  <36.016750, 39.026585, 31.117123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474873, 39.724411, 31.204197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704536, 39.412464, 31.104471>,  <36.842335, 39.225296, 31.044636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704536, 39.412464, 31.104471>,  <36.474873, 39.724411, 31.204197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704536, 39.412464, 31.104471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470655, 0.563543, -0.678899,
		0.669948, 0.272453, 0.690608,
		0.574155, -0.779865, -0.249313,
		36.876781, 39.178505, 31.029676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091640, 40.145355, 31.041121>,  <36.474873, 39.724411, 31.204197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091640, 40.145355, 31.041121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181805, 39.790482, 30.880079>,  <37.235905, 39.577557, 30.783455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181805, 39.790482, 30.880079>,  <37.091640, 40.145355, 31.041121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181805, 39.790482, 30.880079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386002, 0.460744, -0.799198,
		0.894535, 0.024743, 0.446313,
		0.225411, -0.887188, -0.402601,
		37.249428, 39.524326, 30.759298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858665, 40.167946, 30.812550>,  <37.091640, 40.145355, 31.041121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858665, 40.167946, 30.812550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682716, 39.876961, 30.601906>,  <37.577148, 39.702370, 30.475519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682716, 39.876961, 30.601906>,  <37.858665, 40.167946, 30.812550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682716, 39.876961, 30.601906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435824, 0.339788, -0.833428,
		0.785219, -0.596112, 0.167580,
		-0.439874, -0.727458, -0.526608,
		37.550755, 39.658722, 30.443924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333889, 39.992630, 30.268679>,  <37.858665, 40.167946, 30.812550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333889, 39.992630, 30.268679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986454, 39.845348, 30.136021>,  <37.777992, 39.756981, 30.056425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986454, 39.845348, 30.136021>,  <38.333889, 39.992630, 30.268679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986454, 39.845348, 30.136021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241715, 0.269436, -0.932190,
		0.432590, -0.889850, -0.145029,
		-0.868585, -0.368201, -0.331645,
		37.725880, 39.734890, 30.036528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500282, 39.561077, 29.684578>,  <38.333889, 39.992630, 30.268679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500282, 39.561077, 29.684578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128574, 39.704578, 29.649372>,  <37.905548, 39.790680, 29.628248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128574, 39.704578, 29.649372>,  <38.500282, 39.561077, 29.684578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128574, 39.704578, 29.649372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169697, 0.202974, -0.964367,
		-0.328105, -0.911097, -0.249498,
		-0.929274, 0.358753, -0.088013,
		37.849792, 39.812202, 29.622969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263100, 39.345642, 29.053951>,  <38.500282, 39.561077, 29.684578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263100, 39.345642, 29.053951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000477, 39.641003, 29.115540>,  <37.842903, 39.818218, 29.152493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000477, 39.641003, 29.115540>,  <38.263100, 39.345642, 29.053951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000477, 39.641003, 29.115540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019307, 0.187608, -0.982054,
		-0.754032, -0.647744, -0.108919,
		-0.656553, 0.738398, 0.153969,
		37.803513, 39.862522, 29.161730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987129, 39.436214, 28.417150>,  <38.263100, 39.345642, 29.053951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987129, 39.436214, 28.417150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.870033, 39.776714, 28.591362>,  <37.799774, 39.981014, 28.695889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.870033, 39.776714, 28.591362>,  <37.987129, 39.436214, 28.417150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870033, 39.776714, 28.591362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005263, 0.454041, -0.890965,
		-0.956178, -0.263113, -0.128435,
		-0.292739, 0.851245, 0.435529,
		37.782211, 40.032089, 28.722021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537270, 39.721672, 27.954428>,  <37.987129, 39.436214, 28.417150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537270, 39.721672, 27.954428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714371, 40.011814, 28.165264>,  <37.820633, 40.185902, 28.291765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714371, 40.011814, 28.165264>,  <37.537270, 39.721672, 27.954428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714371, 40.011814, 28.165264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139026, 0.525203, -0.839544,
		-0.885799, 0.444991, 0.131692,
		0.442755, 0.725359, 0.527089,
		37.847198, 40.229424, 28.323391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301456, 40.305923, 27.674042>,  <37.537270, 39.721672, 27.954428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301456, 40.305923, 27.674042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627655, 40.438366, 27.863922>,  <37.823372, 40.517830, 27.977850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627655, 40.438366, 27.863922>,  <37.301456, 40.305923, 27.674042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627655, 40.438366, 27.863922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214640, 0.588690, -0.779342,
		-0.537496, 0.737438, 0.409003,
		0.815492, 0.331105, 0.474702,
		37.872303, 40.537697, 28.006332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280308, 41.016243, 27.565559>,  <37.301456, 40.305923, 27.674042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280308, 41.016243, 27.565559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661922, 40.951256, 27.666288>,  <37.890892, 40.912266, 27.726727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661922, 40.951256, 27.666288>,  <37.280308, 41.016243, 27.565559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661922, 40.951256, 27.666288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299565, 0.540434, -0.786251,
		-0.008354, 0.825552, 0.564265,
		0.954039, -0.162466, 0.251822,
		37.948135, 40.902515, 27.741835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625183, 41.606834, 27.351490>,  <37.280308, 41.016243, 27.565559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625183, 41.606834, 27.351490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905544, 41.328739, 27.415216>,  <38.073761, 41.161884, 27.453451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905544, 41.328739, 27.415216>,  <37.625183, 41.606834, 27.351490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905544, 41.328739, 27.415216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552549, 0.388019, -0.737653,
		0.451025, 0.605053, 0.656115,
		0.700904, -0.695236, 0.159315,
		38.115814, 41.120167, 27.463011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167995, 41.929386, 27.069529>,  <37.625183, 41.606834, 27.351490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167995, 41.929386, 27.069529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.293739, 41.552204, 27.113363>,  <38.369186, 41.325893, 27.139664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.293739, 41.552204, 27.113363>,  <38.167995, 41.929386, 27.069529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293739, 41.552204, 27.113363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678400, 0.142395, -0.720762,
		0.664043, 0.300921, 0.684465,
		0.314357, -0.942958, 0.109589,
		38.388046, 41.269318, 27.146240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943653, 41.905270, 27.065630>,  <38.167995, 41.929386, 27.069529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943653, 41.905270, 27.065630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.797535, 41.549023, 26.957285>,  <38.709866, 41.335274, 26.892279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.797535, 41.549023, 26.957285>,  <38.943653, 41.905270, 27.065630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797535, 41.549023, 26.957285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611292, -0.010058, -0.791341,
		0.702056, -0.454647, 0.548100,
		-0.365294, -0.890615, -0.270861,
		38.687946, 41.281837, 26.876026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495537, 41.474152, 27.139788>,  <38.943653, 41.905270, 27.065630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495537, 41.474152, 27.139788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.258766, 41.280079, 26.882347>,  <39.116703, 41.163635, 26.727882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.258766, 41.280079, 26.882347>,  <39.495537, 41.474152, 27.139788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258766, 41.280079, 26.882347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726968, 0.023435, -0.686272,
		0.348047, -0.874101, 0.338837,
		-0.591930, -0.485178, -0.643600,
		39.081188, 41.134525, 26.689268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935356, 41.175873, 26.834087>,  <39.495537, 41.474152, 27.139788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935356, 41.175873, 26.834087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.613342, 41.155098, 26.597704>,  <39.420135, 41.142632, 26.455875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.613342, 41.155098, 26.597704>,  <39.935356, 41.175873, 26.834087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613342, 41.155098, 26.597704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589244, 0.045343, -0.806682,
		0.068697, -0.997620, -0.005896,
		-0.805030, -0.051943, -0.590956,
		39.371834, 41.139515, 26.420418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075947, 40.630936, 26.379091>,  <39.935356, 41.175873, 26.834087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075947, 40.630936, 26.379091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800583, 40.874237, 26.221045>,  <39.635365, 41.020218, 26.126217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800583, 40.874237, 26.221045>,  <40.075947, 40.630936, 26.379091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800583, 40.874237, 26.221045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564636, 0.107475, -0.818313,
		-0.455278, -0.786431, -0.417430,
		-0.688410, 0.608256, -0.395116,
		39.594059, 41.056713, 26.102510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882343, 40.197865, 25.696924>,  <40.075947, 40.630936, 26.379091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882343, 40.197865, 25.696924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802349, 40.588978, 25.671808>,  <39.754353, 40.823647, 25.656738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802349, 40.588978, 25.671808>,  <39.882343, 40.197865, 25.696924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802349, 40.588978, 25.671808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560113, 0.061508, -0.826130,
		-0.803916, -0.200382, -0.559970,
		-0.199984, 0.977785, -0.062789,
		39.742355, 40.882313, 25.652971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667068, 40.276825, 24.919361>,  <39.882343, 40.197865, 25.696924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667068, 40.276825, 24.919361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768963, 40.617027, 25.103426>,  <39.830101, 40.821148, 25.213865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768963, 40.617027, 25.103426>,  <39.667068, 40.276825, 24.919361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768963, 40.617027, 25.103426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619357, 0.221947, -0.753085,
		-0.742634, 0.476847, -0.470226,
		0.254741, 0.850504, 0.460164,
		39.845387, 40.872177, 25.241476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982357, 40.355301, 24.570450>,  <39.667068, 40.276825, 24.919361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982357, 40.355301, 24.570450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737473, 40.176144, 24.309807>,  <38.590542, 40.068649, 24.153421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737473, 40.176144, 24.309807>,  <38.982357, 40.355301, 24.570450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737473, 40.176144, 24.309807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339814, -0.595069, 0.728299,
		-0.713953, 0.667295, 0.212105,
		-0.612208, -0.447895, -0.651608,
		38.553810, 40.041775, 24.114325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310387, 40.094761, 24.977249>,  <38.982357, 40.355301, 24.570450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310387, 40.094761, 24.977249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326332, 39.896801, 24.630035>,  <38.335899, 39.778023, 24.421707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326332, 39.896801, 24.630035>,  <38.310387, 40.094761, 24.977249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326332, 39.896801, 24.630035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520452, -0.751861, 0.404766,
		-0.852960, 0.435635, -0.287545,
		0.039864, -0.494902, -0.868034,
		38.338291, 39.748329, 24.369625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635708, 40.067226, 24.807203>,  <38.310387, 40.094761, 24.977249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635708, 40.067226, 24.807203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819649, 39.782902, 24.594309>,  <37.930012, 39.612305, 24.466572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819649, 39.782902, 24.594309>,  <37.635708, 40.067226, 24.807203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819649, 39.782902, 24.594309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634578, -0.682319, 0.362976,
		-0.621163, 0.170830, -0.764835,
		0.459855, -0.710815, -0.532236,
		37.957603, 39.569656, 24.434637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191189, 39.659706, 24.581421>,  <37.635708, 40.067226, 24.807203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191189, 39.659706, 24.581421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.501900, 39.407837, 24.576725>,  <37.688324, 39.256718, 24.573908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.501900, 39.407837, 24.576725>,  <37.191189, 39.659706, 24.581421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501900, 39.407837, 24.576725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591959, -0.736364, 0.327647,
		-0.214956, -0.247557, -0.944727,
		0.776774, -0.629670, -0.011742,
		37.734932, 39.218937, 24.573202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862598, 38.995628, 24.438961>,  <37.191189, 39.659706, 24.581421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862598, 38.995628, 24.438961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220402, 38.879490, 24.574930>,  <37.435085, 38.809807, 24.656511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220402, 38.879490, 24.574930>,  <36.862598, 38.995628, 24.438961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220402, 38.879490, 24.574930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444732, -0.655215, 0.610661,
		0.045417, -0.697417, -0.715225,
		0.894511, -0.290349, 0.339922,
		37.488754, 38.792385, 24.676907>
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
